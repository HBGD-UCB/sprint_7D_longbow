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

* mhtcm
* agecat
* studyid
* country

## Data Summary

mhtcm       agecat        studyid                     country                        tr.x       ever_stunted   n_cell       n
----------  ------------  --------------------------  -----------------------------  --------  -------------  -------  ------
[145-150)   0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Control               0        9      75
[145-150)   0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Control               1        2      75
[145-150)   0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                   0       28      75
[145-150)   0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                   1        2      75
[145-150)   0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Other                 0       32      75
[145-150)   0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Other                 1        2      75
[150-155)   0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Control               0       16      78
[150-155)   0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Control               1        2      78
[150-155)   0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                   0       13      78
[150-155)   0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                   1        3      78
[150-155)   0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Other                 0       43      78
[150-155)   0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Other                 1        1      78
[155-160)   0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Control               0        8      45
[155-160)   0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Control               1        1      45
[155-160)   0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                   0       14      45
[155-160)   0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                   1        0      45
[155-160)   0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Other                 0       21      45
[155-160)   0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Other                 1        1      45
<145        0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Control               0        4      28
<145        0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Control               1        1      28
<145        0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                   0        6      28
<145        0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                   1        2      28
<145        0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Other                 0        9      28
<145        0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Other                 1        6      28
>=160       0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                   0        1       6
>=160       0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Other                 0        5       6
[150-155)   0-6 months    ki1000111-WASH-Kenya        KENYA                          Control               0        7      15
[150-155)   0-6 months    ki1000111-WASH-Kenya        KENYA                          LNS                   0        3      15
[150-155)   0-6 months    ki1000111-WASH-Kenya        KENYA                          Other                 0        5      15
>=160       0-6 months    ki1000111-WASH-Kenya        KENYA                          Control               0        9      34
>=160       0-6 months    ki1000111-WASH-Kenya        KENYA                          Control               1        0      34
>=160       0-6 months    ki1000111-WASH-Kenya        KENYA                          LNS                   0        7      34
>=160       0-6 months    ki1000111-WASH-Kenya        KENYA                          LNS                   1        0      34
>=160       0-6 months    ki1000111-WASH-Kenya        KENYA                          Other                 0       16      34
>=160       0-6 months    ki1000111-WASH-Kenya        KENYA                          Other                 1        2      34
[145-150)   0-6 months    ki1000111-WASH-Kenya        KENYA                          LNS                   0        1       5
[145-150)   0-6 months    ki1000111-WASH-Kenya        KENYA                          LNS                   1        0       5
[145-150)   0-6 months    ki1000111-WASH-Kenya        KENYA                          Other                 0        3       5
[145-150)   0-6 months    ki1000111-WASH-Kenya        KENYA                          Other                 1        1       5
[155-160)   0-6 months    ki1000111-WASH-Kenya        KENYA                          Control               0        7      35
[155-160)   0-6 months    ki1000111-WASH-Kenya        KENYA                          Control               1        2      35
[155-160)   0-6 months    ki1000111-WASH-Kenya        KENYA                          LNS                   0       11      35
[155-160)   0-6 months    ki1000111-WASH-Kenya        KENYA                          LNS                   1        0      35
[155-160)   0-6 months    ki1000111-WASH-Kenya        KENYA                          Other                 0       13      35
[155-160)   0-6 months    ki1000111-WASH-Kenya        KENYA                          Other                 1        2      35
<145        0-6 months    ki1000111-WASH-Kenya        KENYA                          LNS                   0        1       1
[150-155)   0-6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Control               0        5      26
[150-155)   0-6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Control               1        4      26
[150-155)   0-6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Other                 0       13      26
[150-155)   0-6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Other                 1        4      26
[155-160)   0-6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Control               0       10      26
[155-160)   0-6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Control               1        3      26
[155-160)   0-6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Other                 0       12      26
[155-160)   0-6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Other                 1        1      26
>=160       0-6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Control               0       15      25
>=160       0-6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Control               1        1      25
>=160       0-6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Other                 0        8      25
>=160       0-6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Other                 1        1      25
[145-150)   0-6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Control               0        4      16
[145-150)   0-6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Control               1        3      16
[145-150)   0-6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Other                 0        7      16
[145-150)   0-6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Other                 1        2      16
<145        0-6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Control               0        1       4
<145        0-6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Control               1        1       4
<145        0-6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Other                 0        1       4
<145        0-6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Other                 1        1       4
[145-150)   0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Control               0       34     132
[145-150)   0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Control               1       30     132
[145-150)   0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Other                 0       37     132
[145-150)   0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Other                 1       31     132
[150-155)   0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Control               0       70     209
[150-155)   0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Control               1       24     209
[150-155)   0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Other                 0       79     209
[150-155)   0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Other                 1       36     209
>=160       0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Control               0       38     107
>=160       0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Control               1        9     107
>=160       0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Other                 0       53     107
>=160       0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Other                 1        7     107
[155-160)   0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Control               0       81     217
[155-160)   0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Control               1       22     217
[155-160)   0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Other                 0       89     217
[155-160)   0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Other                 1       25     217
<145        0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Control               0       11      48
<145        0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Control               1        6      48
<145        0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Other                 0       19      48
<145        0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Other                 1       12      48
[145-150)   0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Control               0       20     129
[145-150)   0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Control               1       17     129
[145-150)   0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Other                 0       51     129
[145-150)   0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Other                 1       41     129
[150-155)   0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Control               0       22     140
[150-155)   0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Control               1       11     140
[150-155)   0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Other                 0       77     140
[150-155)   0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Other                 1       30     140
<145        0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Control               0        6      60
<145        0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Control               1        9      60
<145        0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Other                 0       16      60
<145        0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Other                 1       29      60
[155-160)   0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Control               0       14      61
[155-160)   0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Control               1        2      61
[155-160)   0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Other                 0       30      61
[155-160)   0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Other                 1       15      61
>=160       0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Control               0        0      17
>=160       0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Control               1        1      17
>=160       0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Other                 0       15      17
>=160       0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Other                 1        1      17
>=160       0-6 months    ki1017093b-PROVIDE          BANGLADESH                     Control               0        8      33
>=160       0-6 months    ki1017093b-PROVIDE          BANGLADESH                     Control               1        1      33
>=160       0-6 months    ki1017093b-PROVIDE          BANGLADESH                     Other                 0       22      33
>=160       0-6 months    ki1017093b-PROVIDE          BANGLADESH                     Other                 1        2      33
[150-155)   0-6 months    ki1017093b-PROVIDE          BANGLADESH                     Control               0       42     199
[150-155)   0-6 months    ki1017093b-PROVIDE          BANGLADESH                     Control               1        5     199
[150-155)   0-6 months    ki1017093b-PROVIDE          BANGLADESH                     Other                 0      134     199
[150-155)   0-6 months    ki1017093b-PROVIDE          BANGLADESH                     Other                 1       18     199
[145-150)   0-6 months    ki1017093b-PROVIDE          BANGLADESH                     Control               0       47     221
[145-150)   0-6 months    ki1017093b-PROVIDE          BANGLADESH                     Control               1       12     221
[145-150)   0-6 months    ki1017093b-PROVIDE          BANGLADESH                     Other                 0      140     221
[145-150)   0-6 months    ki1017093b-PROVIDE          BANGLADESH                     Other                 1       22     221
<145        0-6 months    ki1017093b-PROVIDE          BANGLADESH                     Control               0       16      81
<145        0-6 months    ki1017093b-PROVIDE          BANGLADESH                     Control               1        6      81
<145        0-6 months    ki1017093b-PROVIDE          BANGLADESH                     Other                 0       42      81
<145        0-6 months    ki1017093b-PROVIDE          BANGLADESH                     Other                 1       17      81
[155-160)   0-6 months    ki1017093b-PROVIDE          BANGLADESH                     Control               0       29     105
[155-160)   0-6 months    ki1017093b-PROVIDE          BANGLADESH                     Control               1        0     105
[155-160)   0-6 months    ki1017093b-PROVIDE          BANGLADESH                     Other                 0       71     105
[155-160)   0-6 months    ki1017093b-PROVIDE          BANGLADESH                     Other                 1        5     105
[150-155)   0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control               0      135     609
[150-155)   0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control               1       14     609
[150-155)   0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                 0      281     609
[150-155)   0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                 1       24     609
[150-155)   0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                  0      136     609
[150-155)   0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                  1       19     609
[155-160)   0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control               0      165     752
[155-160)   0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control               1       13     752
[155-160)   0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                 0      364     752
[155-160)   0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                 1       22     752
[155-160)   0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                  0      178     752
[155-160)   0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                  1       10     752
[145-150)   0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control               0       34     170
[145-150)   0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control               1        7     170
[145-150)   0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                 0       71     170
[145-150)   0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                 1       13     170
[145-150)   0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                  0       39     170
[145-150)   0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                  1        6     170
>=160       0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control               0      170     635
>=160       0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control               1        6     635
>=160       0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                 0      292     635
>=160       0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                 1        9     635
>=160       0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                  0      149     635
>=160       0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                  1        9     635
<145        0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control               0        9      34
<145        0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control               1        0      34
<145        0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                 0       18      34
<145        0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                 1        0      34
<145        0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                  0        5      34
<145        0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                  1        2      34
>=160       0-6 months    ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc                  0       17      18
>=160       0-6 months    ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc                  1        1      18
[155-160)   0-6 months    ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc                  0       12      16
[155-160)   0-6 months    ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc                  1        4      16
<145        0-6 months    ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc                  0        1       1
[150-155)   0-6 months    ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc                  0        3       3
<145        0-6 months    ki1112895-Guatemala BSC     GUATEMALA                      Control               0        8      41
<145        0-6 months    ki1112895-Guatemala BSC     GUATEMALA                      Control               1        5      41
<145        0-6 months    ki1112895-Guatemala BSC     GUATEMALA                      Other                 0       19      41
<145        0-6 months    ki1112895-Guatemala BSC     GUATEMALA                      Other                 1        9      41
[145-150)   0-6 months    ki1112895-Guatemala BSC     GUATEMALA                      Control               0       13      66
[145-150)   0-6 months    ki1112895-Guatemala BSC     GUATEMALA                      Control               1        4      66
[145-150)   0-6 months    ki1112895-Guatemala BSC     GUATEMALA                      Other                 0       37      66
[145-150)   0-6 months    ki1112895-Guatemala BSC     GUATEMALA                      Other                 1       12      66
[150-155)   0-6 months    ki1112895-Guatemala BSC     GUATEMALA                      Control               0       12      60
[150-155)   0-6 months    ki1112895-Guatemala BSC     GUATEMALA                      Control               1        3      60
[150-155)   0-6 months    ki1112895-Guatemala BSC     GUATEMALA                      Other                 0       38      60
[150-155)   0-6 months    ki1112895-Guatemala BSC     GUATEMALA                      Other                 1        7      60
[155-160)   0-6 months    ki1112895-Guatemala BSC     GUATEMALA                      Control               0        4      23
[155-160)   0-6 months    ki1112895-Guatemala BSC     GUATEMALA                      Control               1        1      23
[155-160)   0-6 months    ki1112895-Guatemala BSC     GUATEMALA                      Other                 0       15      23
[155-160)   0-6 months    ki1112895-Guatemala BSC     GUATEMALA                      Other                 1        3      23
>=160       0-6 months    ki1112895-Guatemala BSC     GUATEMALA                      Control               0        2      10
>=160       0-6 months    ki1112895-Guatemala BSC     GUATEMALA                      Control               1        0      10
>=160       0-6 months    ki1112895-Guatemala BSC     GUATEMALA                      Other                 0        6      10
>=160       0-6 months    ki1112895-Guatemala BSC     GUATEMALA                      Other                 1        2      10
>=160       0-6 months    ki1119695-PROBIT            BELARUS                        Control               0     5001   10771
>=160       0-6 months    ki1119695-PROBIT            BELARUS                        Control               1      300   10771
>=160       0-6 months    ki1119695-PROBIT            BELARUS                        Other                 0     5184   10771
>=160       0-6 months    ki1119695-PROBIT            BELARUS                        Other                 1      286   10771
[155-160)   0-6 months    ki1119695-PROBIT            BELARUS                        Control               0      864    2004
[155-160)   0-6 months    ki1119695-PROBIT            BELARUS                        Control               1       96    2004
[155-160)   0-6 months    ki1119695-PROBIT            BELARUS                        Other                 0      962    2004
[155-160)   0-6 months    ki1119695-PROBIT            BELARUS                        Other                 1       82    2004
<145        0-6 months    ki1119695-PROBIT            BELARUS                        Control               0        1       4
<145        0-6 months    ki1119695-PROBIT            BELARUS                        Control               1        0       4
<145        0-6 months    ki1119695-PROBIT            BELARUS                        Other                 0        2       4
<145        0-6 months    ki1119695-PROBIT            BELARUS                        Other                 1        1       4
[150-155)   0-6 months    ki1119695-PROBIT            BELARUS                        Control               0      207     476
[150-155)   0-6 months    ki1119695-PROBIT            BELARUS                        Control               1       24     476
[150-155)   0-6 months    ki1119695-PROBIT            BELARUS                        Other                 0      217     476
[150-155)   0-6 months    ki1119695-PROBIT            BELARUS                        Other                 1       28     476
[145-150)   0-6 months    ki1119695-PROBIT            BELARUS                        Control               0        8      24
[145-150)   0-6 months    ki1119695-PROBIT            BELARUS                        Control               1        1      24
[145-150)   0-6 months    ki1119695-PROBIT            BELARUS                        Other                 0       10      24
[145-150)   0-6 months    ki1119695-PROBIT            BELARUS                        Other                 1        5      24
[155-160)   0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control               0      445    2228
[155-160)   0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control               1      103    2228
[155-160)   0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Other                 0     1360    2228
[155-160)   0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Other                 1      320    2228
>=160       0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control               0      831    3825
>=160       0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control               1      142    3825
>=160       0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Other                 0     2451    3825
>=160       0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Other                 1      401    3825
[150-155)   0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control               0      246    1263
[150-155)   0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control               1       63    1263
[150-155)   0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Other                 0      720    1263
[150-155)   0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Other                 1      234    1263
[145-150)   0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control               0       39     252
[145-150)   0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control               1       25     252
[145-150)   0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Other                 0      127     252
[145-150)   0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Other                 1       61     252
<145        0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control               0        7      46
<145        0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control               1        1      46
<145        0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Other                 0       27      46
<145        0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Other                 1       11      46
[150-155)   0-6 months    ki1135781-COHORTS           GUATEMALA                      Control               0       32      80
[150-155)   0-6 months    ki1135781-COHORTS           GUATEMALA                      Control               1       13      80
[150-155)   0-6 months    ki1135781-COHORTS           GUATEMALA                      Other                 0       26      80
[150-155)   0-6 months    ki1135781-COHORTS           GUATEMALA                      Other                 1        9      80
[155-160)   0-6 months    ki1135781-COHORTS           GUATEMALA                      Control               0       11      39
[155-160)   0-6 months    ki1135781-COHORTS           GUATEMALA                      Control               1        5      39
[155-160)   0-6 months    ki1135781-COHORTS           GUATEMALA                      Other                 0       19      39
[155-160)   0-6 months    ki1135781-COHORTS           GUATEMALA                      Other                 1        4      39
<145        0-6 months    ki1135781-COHORTS           GUATEMALA                      Control               0       12      60
<145        0-6 months    ki1135781-COHORTS           GUATEMALA                      Control               1       17      60
<145        0-6 months    ki1135781-COHORTS           GUATEMALA                      Other                 0       23      60
<145        0-6 months    ki1135781-COHORTS           GUATEMALA                      Other                 1        8      60
[145-150)   0-6 months    ki1135781-COHORTS           GUATEMALA                      Control               0       37     112
[145-150)   0-6 months    ki1135781-COHORTS           GUATEMALA                      Control               1       13     112
[145-150)   0-6 months    ki1135781-COHORTS           GUATEMALA                      Other                 0       39     112
[145-150)   0-6 months    ki1135781-COHORTS           GUATEMALA                      Other                 1       23     112
>=160       0-6 months    ki1135781-COHORTS           GUATEMALA                      Control               0        1       5
>=160       0-6 months    ki1135781-COHORTS           GUATEMALA                      Other                 0        4       5
>=160       0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control               0       32     276
>=160       0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control               1        5     276
>=160       0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         LNS                   0      199     276
>=160       0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         LNS                   1       40     276
[150-155)   0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control               0       37     347
[150-155)   0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control               1       27     347
[150-155)   0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         LNS                   0      194     347
[150-155)   0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         LNS                   1       89     347
[155-160)   0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control               0       41     387
[155-160)   0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control               1       15     387
[155-160)   0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         LNS                   0      239     387
[155-160)   0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         LNS                   1       92     387
[145-150)   0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control               0       16     157
[145-150)   0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control               1       11     157
[145-150)   0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         LNS                   0       72     157
[145-150)   0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         LNS                   1       58     157
<145        0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control               0        2      28
<145        0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control               1        2      28
<145        0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         LNS                   0       16      28
<145        0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         LNS                   1        8      28
[145-150)   0-6 months    ki1148112-LCNI-5            MALAWI                         Control               0        6      27
[145-150)   0-6 months    ki1148112-LCNI-5            MALAWI                         Control               1        6      27
[145-150)   0-6 months    ki1148112-LCNI-5            MALAWI                         LNS                   0        6      27
[145-150)   0-6 months    ki1148112-LCNI-5            MALAWI                         LNS                   1        9      27
[155-160)   0-6 months    ki1148112-LCNI-5            MALAWI                         Control               0       30      87
[155-160)   0-6 months    ki1148112-LCNI-5            MALAWI                         Control               1       11      87
[155-160)   0-6 months    ki1148112-LCNI-5            MALAWI                         LNS                   0       32      87
[155-160)   0-6 months    ki1148112-LCNI-5            MALAWI                         LNS                   1       14      87
>=160       0-6 months    ki1148112-LCNI-5            MALAWI                         Control               0       25      74
>=160       0-6 months    ki1148112-LCNI-5            MALAWI                         Control               1       10      74
>=160       0-6 months    ki1148112-LCNI-5            MALAWI                         LNS                   0       34      74
>=160       0-6 months    ki1148112-LCNI-5            MALAWI                         LNS                   1        5      74
[150-155)   0-6 months    ki1148112-LCNI-5            MALAWI                         Control               0       19      78
[150-155)   0-6 months    ki1148112-LCNI-5            MALAWI                         Control               1       22      78
[150-155)   0-6 months    ki1148112-LCNI-5            MALAWI                         LNS                   0       20      78
[150-155)   0-6 months    ki1148112-LCNI-5            MALAWI                         LNS                   1       17      78
<145        0-6 months    ki1148112-LCNI-5            MALAWI                         Control               0        1       5
<145        0-6 months    ki1148112-LCNI-5            MALAWI                         Control               1        3       5
<145        0-6 months    ki1148112-LCNI-5            MALAWI                         LNS                   0        1       5
<145        0-6 months    ki1148112-LCNI-5            MALAWI                         LNS                   1        0       5
[150-155)   0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control               0     2421    6367
[150-155)   0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control               1      687    6367
[150-155)   0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Other                 0     2689    6367
[150-155)   0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Other                 1      570    6367
[155-160)   0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control               0     1050    2508
[155-160)   0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control               1      176    2508
[155-160)   0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Other                 0     1136    2508
[155-160)   0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Other                 1      146    2508
<145        0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control               0      949    3349
<145        0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control               1      740    3349
<145        0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Other                 0      983    3349
<145        0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Other                 1      677    3349
[145-150)   0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control               0     2259    6555
[145-150)   0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control               1     1028    6555
[145-150)   0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Other                 0     2386    6555
[145-150)   0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Other                 1      882    6555
>=160       0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control               0      232     501
>=160       0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control               1       15     501
>=160       0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Other                 0      240     501
>=160       0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Other                 1       14     501
[155-160)   6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control               0      157     728
[155-160)   6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control               1       24     728
[155-160)   6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                   0      169     728
[155-160)   6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                   1       18     728
[155-160)   6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                 0      309     728
[155-160)   6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                 1       51     728
[150-155)   6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control               0      288    1360
[150-155)   6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control               1       61    1360
[150-155)   6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                   0      305    1360
[150-155)   6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                   1       40    1360
[150-155)   6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                 0      544    1360
[150-155)   6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                 1      122    1360
[145-150)   6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control               0      183    1104
[145-150)   6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control               1       60    1104
[145-150)   6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                   0      251    1104
[145-150)   6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                   1       55    1104
[145-150)   6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                 0      425    1104
[145-150)   6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                 1      130    1104
<145        6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control               0       61     373
<145        6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control               1       28     373
<145        6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                   0       69     373
<145        6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                   1       27     373
<145        6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                 0      123     373
<145        6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                 1       65     373
>=160       6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control               0       30     136
>=160       6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control               1        8     136
>=160       6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                   0       27     136
>=160       6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                   1        2     136
>=160       6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                 0       65     136
>=160       6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                 1        4     136
[155-160)   6-24 months   ki1000111-WASH-Kenya        KENYA                          Control               0      467    1535
[155-160)   6-24 months   ki1000111-WASH-Kenya        KENYA                          Control               1       48    1535
[155-160)   6-24 months   ki1000111-WASH-Kenya        KENYA                          LNS                   0      316    1535
[155-160)   6-24 months   ki1000111-WASH-Kenya        KENYA                          LNS                   1       20    1535
[155-160)   6-24 months   ki1000111-WASH-Kenya        KENYA                          Other                 0      621    1535
[155-160)   6-24 months   ki1000111-WASH-Kenya        KENYA                          Other                 1       63    1535
>=160       6-24 months   ki1000111-WASH-Kenya        KENYA                          Control               0      953    2835
>=160       6-24 months   ki1000111-WASH-Kenya        KENYA                          Control               1       45    2835
>=160       6-24 months   ki1000111-WASH-Kenya        KENYA                          LNS                   0      609    2835
>=160       6-24 months   ki1000111-WASH-Kenya        KENYA                          LNS                   1       33    2835
>=160       6-24 months   ki1000111-WASH-Kenya        KENYA                          Other                 0     1132    2835
>=160       6-24 months   ki1000111-WASH-Kenya        KENYA                          Other                 1       63    2835
[150-155)   6-24 months   ki1000111-WASH-Kenya        KENYA                          Control               0      199     669
[150-155)   6-24 months   ki1000111-WASH-Kenya        KENYA                          Control               1       17     669
[150-155)   6-24 months   ki1000111-WASH-Kenya        KENYA                          LNS                   0      143     669
[150-155)   6-24 months   ki1000111-WASH-Kenya        KENYA                          LNS                   1       12     669
[150-155)   6-24 months   ki1000111-WASH-Kenya        KENYA                          Other                 0      263     669
[150-155)   6-24 months   ki1000111-WASH-Kenya        KENYA                          Other                 1       35     669
[145-150)   6-24 months   ki1000111-WASH-Kenya        KENYA                          Control               0       27     118
[145-150)   6-24 months   ki1000111-WASH-Kenya        KENYA                          Control               1        3     118
[145-150)   6-24 months   ki1000111-WASH-Kenya        KENYA                          LNS                   0       34     118
[145-150)   6-24 months   ki1000111-WASH-Kenya        KENYA                          LNS                   1        1     118
[145-150)   6-24 months   ki1000111-WASH-Kenya        KENYA                          Other                 0       46     118
[145-150)   6-24 months   ki1000111-WASH-Kenya        KENYA                          Other                 1        7     118
<145        6-24 months   ki1000111-WASH-Kenya        KENYA                          Control               0        5      17
<145        6-24 months   ki1000111-WASH-Kenya        KENYA                          Control               1        0      17
<145        6-24 months   ki1000111-WASH-Kenya        KENYA                          LNS                   0        4      17
<145        6-24 months   ki1000111-WASH-Kenya        KENYA                          LNS                   1        0      17
<145        6-24 months   ki1000111-WASH-Kenya        KENYA                          Other                 0        7      17
<145        6-24 months   ki1000111-WASH-Kenya        KENYA                          Other                 1        1      17
[145-150)   6-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Control               0        6       8
[145-150)   6-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Other                 0        2       8
<145        6-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Control               0        4       6
<145        6-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Other                 0        2       6
[155-160)   6-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Control               0       17      27
[155-160)   6-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Other                 0       10      27
[150-155)   6-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Control               0        9      18
[150-155)   6-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Other                 0        9      18
>=160       6-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Control               0        2       8
>=160       6-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Other                 0        6       8
[145-150)   6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control               0       20      78
[145-150)   6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control               1       17      78
[145-150)   6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Other                 0       29      78
[145-150)   6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Other                 1       12      78
[150-155)   6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control               0       50     157
[150-155)   6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control               1       23     157
[150-155)   6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Other                 0       59     157
[150-155)   6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Other                 1       25     157
>=160       6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control               0       36     107
>=160       6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control               1       10     107
>=160       6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Other                 0       47     107
>=160       6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Other                 1       14     107
[155-160)   6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control               0       67     205
[155-160)   6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control               1       26     205
[155-160)   6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Other                 0       84     205
[155-160)   6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Other                 1       28     205
<145        6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control               0        5      31
<145        6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control               1        6      31
<145        6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Other                 0       11      31
<145        6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Other                 1        9      31
[145-150)   6-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Control               0        4      65
[145-150)   6-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Control               1       10      65
[145-150)   6-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Other                 0       19      65
[145-150)   6-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Other                 1       32      65
[150-155)   6-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Control               0        7      87
[150-155)   6-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Control               1       12      87
[150-155)   6-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Other                 0       27      87
[150-155)   6-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Other                 1       41      87
[155-160)   6-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Control               0        7      40
[155-160)   6-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Control               1        4      40
[155-160)   6-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Other                 0       16      40
[155-160)   6-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Other                 1       13      40
>=160       6-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Other                 0       11      14
>=160       6-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Other                 1        3      14
<145        6-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Control               0        1      20
<145        6-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Control               1        3      20
<145        6-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Other                 0        7      20
<145        6-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Other                 1        9      20
>=160       6-24 months   ki1017093b-PROVIDE          BANGLADESH                     Control               0        8      29
>=160       6-24 months   ki1017093b-PROVIDE          BANGLADESH                     Control               1        0      29
>=160       6-24 months   ki1017093b-PROVIDE          BANGLADESH                     Other                 0       20      29
>=160       6-24 months   ki1017093b-PROVIDE          BANGLADESH                     Other                 1        1      29
[150-155)   6-24 months   ki1017093b-PROVIDE          BANGLADESH                     Control               0       32     160
[150-155)   6-24 months   ki1017093b-PROVIDE          BANGLADESH                     Control               1        9     160
[150-155)   6-24 months   ki1017093b-PROVIDE          BANGLADESH                     Other                 0       88     160
[150-155)   6-24 months   ki1017093b-PROVIDE          BANGLADESH                     Other                 1       31     160
<145        6-24 months   ki1017093b-PROVIDE          BANGLADESH                     Control               0        7      51
<145        6-24 months   ki1017093b-PROVIDE          BANGLADESH                     Control               1        3      51
<145        6-24 months   ki1017093b-PROVIDE          BANGLADESH                     Other                 0       22      51
<145        6-24 months   ki1017093b-PROVIDE          BANGLADESH                     Other                 1       19      51
[145-150)   6-24 months   ki1017093b-PROVIDE          BANGLADESH                     Control               0       34     169
[145-150)   6-24 months   ki1017093b-PROVIDE          BANGLADESH                     Control               1        9     169
[145-150)   6-24 months   ki1017093b-PROVIDE          BANGLADESH                     Other                 0       92     169
[145-150)   6-24 months   ki1017093b-PROVIDE          BANGLADESH                     Other                 1       34     169
[155-160)   6-24 months   ki1017093b-PROVIDE          BANGLADESH                     Control               0       20      88
[155-160)   6-24 months   ki1017093b-PROVIDE          BANGLADESH                     Control               1        4      88
[155-160)   6-24 months   ki1017093b-PROVIDE          BANGLADESH                     Other                 0       55      88
[155-160)   6-24 months   ki1017093b-PROVIDE          BANGLADESH                     Other                 1        9      88
[150-155)   6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control               0       92     497
[150-155)   6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control               1       22     497
[150-155)   6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                 0      219     497
[150-155)   6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                 1       37     497
[150-155)   6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                  0      100     497
[150-155)   6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                  1       27     497
[155-160)   6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control               0      138     632
[155-160)   6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control               1       15     632
[155-160)   6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                 0      277     632
[155-160)   6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                 1       43     632
[155-160)   6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                  0      138     632
[155-160)   6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                  1       21     632
>=160       6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control               0      138     538
>=160       6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control               1       11     538
>=160       6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                 0      238     538
>=160       6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                 1       18     538
>=160       6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                  0      122     538
>=160       6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                  1       11     538
<145        6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control               0        5      27
<145        6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control               1        3      27
<145        6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                 0       12      27
<145        6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                 1        3      27
<145        6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                  0        3      27
<145        6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                  1        1      27
[145-150)   6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control               0       24     125
[145-150)   6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control               1       13     125
[145-150)   6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                 0       45     125
[145-150)   6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                 1       13     125
[145-150)   6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                  0       21     125
[145-150)   6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                  1        9     125
>=160       6-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc                  0     2184    2357
>=160       6-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc                  1      173    2357
[155-160)   6-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc                  0     1077    1210
[155-160)   6-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc                  1      133    1210
[145-150)   6-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc                  0       76     105
[145-150)   6-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc                  1       29     105
[150-155)   6-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc                  0      431     525
[150-155)   6-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc                  1       94     525
<145        6-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc                  0        3       6
<145        6-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc                  1        3       6
<145        6-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Control               0        5      25
<145        6-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Control               1        3      25
<145        6-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Other                 0       10      25
<145        6-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Other                 1        7      25
[145-150)   6-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Control               0       11      50
[145-150)   6-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Control               1        3      50
[145-150)   6-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Other                 0       29      50
[145-150)   6-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Other                 1        7      50
[150-155)   6-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Control               0       10      44
[150-155)   6-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Control               1        1      44
[150-155)   6-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Other                 0       23      44
[150-155)   6-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Other                 1       10      44
[155-160)   6-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Control               0        4      18
[155-160)   6-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Control               1        0      18
[155-160)   6-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Other                 0       12      18
[155-160)   6-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Other                 1        2      18
>=160       6-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Control               0        3       9
>=160       6-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Other                 0        6       9
>=160       6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Control               0      378    1832
>=160       6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Control               1       82    1832
>=160       6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   LNS                   0     1227    1832
>=160       6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   LNS                   1      145    1832
[155-160)   6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Control               0       89     592
[155-160)   6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Control               1       32     592
[155-160)   6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   LNS                   0      390     592
[155-160)   6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   LNS                   1       81     592
[150-155)   6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Control               0       25     175
[150-155)   6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Control               1       12     175
[150-155)   6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   LNS                   0      102     175
[150-155)   6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   LNS                   1       36     175
[145-150)   6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Control               0        8      32
[145-150)   6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Control               1        3      32
[145-150)   6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   LNS                   0       12      32
[145-150)   6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   LNS                   1        9      32
>=160       6-24 months   ki1119695-PROBIT            BELARUS                        Control               0     5174   11019
>=160       6-24 months   ki1119695-PROBIT            BELARUS                        Control               1      222   11019
>=160       6-24 months   ki1119695-PROBIT            BELARUS                        Other                 0     5417   11019
>=160       6-24 months   ki1119695-PROBIT            BELARUS                        Other                 1      206   11019
[155-160)   6-24 months   ki1119695-PROBIT            BELARUS                        Control               0      893    1999
[155-160)   6-24 months   ki1119695-PROBIT            BELARUS                        Control               1       49    1999
[155-160)   6-24 months   ki1119695-PROBIT            BELARUS                        Other                 0      996    1999
[155-160)   6-24 months   ki1119695-PROBIT            BELARUS                        Other                 1       61    1999
<145        6-24 months   ki1119695-PROBIT            BELARUS                        Control               0        1       4
<145        6-24 months   ki1119695-PROBIT            BELARUS                        Control               1        0       4
<145        6-24 months   ki1119695-PROBIT            BELARUS                        Other                 0        2       4
<145        6-24 months   ki1119695-PROBIT            BELARUS                        Other                 1        1       4
[150-155)   6-24 months   ki1119695-PROBIT            BELARUS                        Control               0      217     478
[150-155)   6-24 months   ki1119695-PROBIT            BELARUS                        Control               1       14     478
[150-155)   6-24 months   ki1119695-PROBIT            BELARUS                        Other                 0      224     478
[150-155)   6-24 months   ki1119695-PROBIT            BELARUS                        Other                 1       23     478
[145-150)   6-24 months   ki1119695-PROBIT            BELARUS                        Control               0        9      22
[145-150)   6-24 months   ki1119695-PROBIT            BELARUS                        Control               1        0      22
[145-150)   6-24 months   ki1119695-PROBIT            BELARUS                        Other                 0       11      22
[145-150)   6-24 months   ki1119695-PROBIT            BELARUS                        Other                 1        2      22
[155-160)   6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control               0      441    2180
[155-160)   6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control               1       97    2180
[155-160)   6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Other                 0     1388    2180
[155-160)   6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Other                 1      254    2180
[150-155)   6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control               0      226    1174
[150-155)   6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control               1       49    1174
[150-155)   6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Other                 0      761    1174
[150-155)   6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Other                 1      138    1174
>=160       6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control               0      881    3849
>=160       6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control               1      117    3849
>=160       6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Other                 0     2504    3849
>=160       6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Other                 1      347    3849
[145-150)   6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control               0       38     197
[145-150)   6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control               1       11     197
[145-150)   6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Other                 0      113     197
[145-150)   6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Other                 1       35     197
<145        6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control               0        8      40
<145        6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control               1        2      40
<145        6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Other                 0       19      40
<145        6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Other                 1       11      40
[150-155)   6-24 months   ki1135781-COHORTS           GUATEMALA                      Control               0       37     209
[150-155)   6-24 months   ki1135781-COHORTS           GUATEMALA                      Control               1       55     209
[150-155)   6-24 months   ki1135781-COHORTS           GUATEMALA                      Other                 0       54     209
[150-155)   6-24 months   ki1135781-COHORTS           GUATEMALA                      Other                 1       63     209
[145-150)   6-24 months   ki1135781-COHORTS           GUATEMALA                      Control               0       38     206
[145-150)   6-24 months   ki1135781-COHORTS           GUATEMALA                      Control               1       60     206
[145-150)   6-24 months   ki1135781-COHORTS           GUATEMALA                      Other                 0       49     206
[145-150)   6-24 months   ki1135781-COHORTS           GUATEMALA                      Other                 1       59     206
<145        6-24 months   ki1135781-COHORTS           GUATEMALA                      Control               0       10      83
<145        6-24 months   ki1135781-COHORTS           GUATEMALA                      Control               1       28      83
<145        6-24 months   ki1135781-COHORTS           GUATEMALA                      Other                 0       14      83
<145        6-24 months   ki1135781-COHORTS           GUATEMALA                      Other                 1       31      83
[155-160)   6-24 months   ki1135781-COHORTS           GUATEMALA                      Control               0       13      76
[155-160)   6-24 months   ki1135781-COHORTS           GUATEMALA                      Control               1       14      76
[155-160)   6-24 months   ki1135781-COHORTS           GUATEMALA                      Other                 0       31      76
[155-160)   6-24 months   ki1135781-COHORTS           GUATEMALA                      Other                 1       18      76
>=160       6-24 months   ki1135781-COHORTS           GUATEMALA                      Control               0        4      27
>=160       6-24 months   ki1135781-COHORTS           GUATEMALA                      Control               1        8      27
>=160       6-24 months   ki1135781-COHORTS           GUATEMALA                      Other                 0        9      27
>=160       6-24 months   ki1135781-COHORTS           GUATEMALA                      Other                 1        6      27
[155-160)   6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control               0       55     405
[155-160)   6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control               1       11     405
[155-160)   6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS                   0      271     405
[155-160)   6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS                   1       68     405
[145-150)   6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control               0       20     132
[145-150)   6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control               1        5     132
[145-150)   6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS                   0       78     132
[145-150)   6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS                   1       29     132
[150-155)   6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control               0       42     330
[150-155)   6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control               1       14     330
[150-155)   6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS                   0      203     330
[150-155)   6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS                   1       71     330
>=160       6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control               0       50     326
>=160       6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control               1        6     326
>=160       6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS                   0      230     326
>=160       6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS                   1       40     326
<145        6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control               0        0      18
<145        6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control               1        1      18
<145        6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS                   0        9      18
<145        6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS                   1        8      18
[150-155)   6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control               0        1       2
[150-155)   6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         LNS                   0        1       2
[155-160)   6-24 months   ki1148112-LCNI-5            MALAWI                         Control               0       78     220
[155-160)   6-24 months   ki1148112-LCNI-5            MALAWI                         Control               1       29     220
[155-160)   6-24 months   ki1148112-LCNI-5            MALAWI                         LNS                   0       76     220
[155-160)   6-24 months   ki1148112-LCNI-5            MALAWI                         LNS                   1       37     220
>=160       6-24 months   ki1148112-LCNI-5            MALAWI                         Control               0       70     181
>=160       6-24 months   ki1148112-LCNI-5            MALAWI                         Control               1       16     181
>=160       6-24 months   ki1148112-LCNI-5            MALAWI                         LNS                   0       78     181
>=160       6-24 months   ki1148112-LCNI-5            MALAWI                         LNS                   1       17     181
[150-155)   6-24 months   ki1148112-LCNI-5            MALAWI                         Control               0       39     135
[150-155)   6-24 months   ki1148112-LCNI-5            MALAWI                         Control               1       32     135
[150-155)   6-24 months   ki1148112-LCNI-5            MALAWI                         LNS                   0       40     135
[150-155)   6-24 months   ki1148112-LCNI-5            MALAWI                         LNS                   1       24     135
[145-150)   6-24 months   ki1148112-LCNI-5            MALAWI                         Control               0       13      46
[145-150)   6-24 months   ki1148112-LCNI-5            MALAWI                         Control               1        9      46
[145-150)   6-24 months   ki1148112-LCNI-5            MALAWI                         LNS                   0       13      46
[145-150)   6-24 months   ki1148112-LCNI-5            MALAWI                         LNS                   1       11      46
<145        6-24 months   ki1148112-LCNI-5            MALAWI                         Control               0        1       5
<145        6-24 months   ki1148112-LCNI-5            MALAWI                         Control               1        2       5
<145        6-24 months   ki1148112-LCNI-5            MALAWI                         LNS                   0        1       5
<145        6-24 months   ki1148112-LCNI-5            MALAWI                         LNS                   1        1       5
[145-150)   6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control               0     1601    4244
[145-150)   6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control               1      468    4244
[145-150)   6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Other                 0     1669    4244
[145-150)   6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Other                 1      506    4244
[150-155)   6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control               0     1933    4793
[150-155)   6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control               1      368    4793
[150-155)   6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Other                 0     2024    4793
[150-155)   6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Other                 1      468    4793
[155-160)   6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control               0      909    2037
[155-160)   6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control               1       93    2037
[155-160)   6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Other                 0      914    2037
[155-160)   6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Other                 1      121    2037
>=160       6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control               0      208     446
>=160       6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control               1       17     446
>=160       6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Other                 0      203     446
>=160       6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Other                 1       18     446
<145        6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control               0      589    1743
<145        6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control               1      286    1743
<145        6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Other                 0      598    1743
<145        6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Other                 1      270    1743
[155-160)   0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control               0      153     806
[155-160)   0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control               1       52     806
[155-160)   0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                   0      165     806
[155-160)   0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                   1       38     806
[155-160)   0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                 0      303     806
[155-160)   0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                 1       95     806
[150-155)   0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control               0      284    1671
[150-155)   0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control               1      141    1671
[150-155)   0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                   0      300    1671
[150-155)   0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                   1      113    1671
[150-155)   0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                 0      534    1671
[150-155)   0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                 1      299    1671
[145-150)   0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control               0      175    1486
[145-150)   0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control               1      161    1486
[145-150)   0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                   0      249    1486
[145-150)   0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                   1      144    1486
[145-150)   0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                 0      419    1486
[145-150)   0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                 1      338    1486
<145        0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control               0       59     677
<145        0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control               1       96     677
<145        0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                   0       65     677
<145        0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                   1      104     677
<145        0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                 0      120     677
<145        0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                 1      233     677
>=160       0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control               0       30     146
>=160       0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control               1        9     146
>=160       0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                   0       27     146
>=160       0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                   1        4     146
>=160       0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                 0       64     146
>=160       0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                 1       12     146
[145-150)   0-24 months   ki1000111-WASH-Kenya        KENYA                          Control               0       27     204
[145-150)   0-24 months   ki1000111-WASH-Kenya        KENYA                          Control               1       30     204
[145-150)   0-24 months   ki1000111-WASH-Kenya        KENYA                          LNS                   0       33     204
[145-150)   0-24 months   ki1000111-WASH-Kenya        KENYA                          LNS                   1       16     204
[145-150)   0-24 months   ki1000111-WASH-Kenya        KENYA                          Other                 0       48     204
[145-150)   0-24 months   ki1000111-WASH-Kenya        KENYA                          Other                 1       50     204
>=160       0-24 months   ki1000111-WASH-Kenya        KENYA                          Control               0      953    3308
>=160       0-24 months   ki1000111-WASH-Kenya        KENYA                          Control               1      205    3308
>=160       0-24 months   ki1000111-WASH-Kenya        KENYA                          LNS                   0      612    3308
>=160       0-24 months   ki1000111-WASH-Kenya        KENYA                          LNS                   1      111    3308
>=160       0-24 months   ki1000111-WASH-Kenya        KENYA                          Other                 0     1137    3308
>=160       0-24 months   ki1000111-WASH-Kenya        KENYA                          Other                 1      290    3308
[155-160)   0-24 months   ki1000111-WASH-Kenya        KENYA                          Control               0      471    1961
[155-160)   0-24 months   ki1000111-WASH-Kenya        KENYA                          Control               1      185    1961
[155-160)   0-24 months   ki1000111-WASH-Kenya        KENYA                          LNS                   0      321    1961
[155-160)   0-24 months   ki1000111-WASH-Kenya        KENYA                          LNS                   1      100    1961
[155-160)   0-24 months   ki1000111-WASH-Kenya        KENYA                          Other                 0      628    1961
[155-160)   0-24 months   ki1000111-WASH-Kenya        KENYA                          Other                 1      256    1961
[150-155)   0-24 months   ki1000111-WASH-Kenya        KENYA                          Control               0      204     978
[150-155)   0-24 months   ki1000111-WASH-Kenya        KENYA                          Control               1      126     978
[150-155)   0-24 months   ki1000111-WASH-Kenya        KENYA                          LNS                   0      143     978
[150-155)   0-24 months   ki1000111-WASH-Kenya        KENYA                          LNS                   1       74     978
[150-155)   0-24 months   ki1000111-WASH-Kenya        KENYA                          Other                 0      265     978
[150-155)   0-24 months   ki1000111-WASH-Kenya        KENYA                          Other                 1      166     978
<145        0-24 months   ki1000111-WASH-Kenya        KENYA                          Control               0        5      33
<145        0-24 months   ki1000111-WASH-Kenya        KENYA                          Control               1        4      33
<145        0-24 months   ki1000111-WASH-Kenya        KENYA                          LNS                   0        4      33
<145        0-24 months   ki1000111-WASH-Kenya        KENYA                          LNS                   1        5      33
<145        0-24 months   ki1000111-WASH-Kenya        KENYA                          Other                 0        7      33
<145        0-24 months   ki1000111-WASH-Kenya        KENYA                          Other                 1        8      33
<145        0-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Control               0        5      13
<145        0-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Control               1        2      13
<145        0-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Other                 0        3      13
<145        0-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Other                 1        3      13
[145-150)   0-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Control               0       10      30
[145-150)   0-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Control               1        5      30
[145-150)   0-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Other                 0        9      30
[145-150)   0-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Other                 1        6      30
[150-155)   0-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Control               0       14      52
[150-155)   0-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Control               1        7      52
[150-155)   0-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Other                 0       22      52
[150-155)   0-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Other                 1        9      52
[155-160)   0-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Control               0       27      58
[155-160)   0-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Control               1        8      58
[155-160)   0-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Other                 0       22      58
[155-160)   0-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Other                 1        1      58
>=160       0-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Control               0       17      33
>=160       0-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Control               1        1      33
>=160       0-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Other                 0       14      33
>=160       0-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Other                 1        1      33
[145-150)   0-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control               0       15     152
[145-150)   0-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control               1       59     152
[145-150)   0-24 months   ki1000304b-SAS-CompFeed     INDIA                          Other                 0       29     152
[145-150)   0-24 months   ki1000304b-SAS-CompFeed     INDIA                          Other                 1       49     152
[150-155)   0-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control               0       47     252
[150-155)   0-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control               1       70     252
[150-155)   0-24 months   ki1000304b-SAS-CompFeed     INDIA                          Other                 0       52     252
[150-155)   0-24 months   ki1000304b-SAS-CompFeed     INDIA                          Other                 1       83     252
>=160       0-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control               0       32     124
>=160       0-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control               1       23     124
>=160       0-24 months   ki1000304b-SAS-CompFeed     INDIA                          Other                 0       41     124
>=160       0-24 months   ki1000304b-SAS-CompFeed     INDIA                          Other                 1       28     124
[155-160)   0-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control               0       61     262
[155-160)   0-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control               1       59     262
[155-160)   0-24 months   ki1000304b-SAS-CompFeed     INDIA                          Other                 0       75     262
[155-160)   0-24 months   ki1000304b-SAS-CompFeed     INDIA                          Other                 1       67     262
<145        0-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control               0        5      62
<145        0-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control               1       18      62
<145        0-24 months   ki1000304b-SAS-CompFeed     INDIA                          Other                 0       12      62
<145        0-24 months   ki1000304b-SAS-CompFeed     INDIA                          Other                 1       27      62
[145-150)   0-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Control               0        4     129
[145-150)   0-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Control               1       33     129
[145-150)   0-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Other                 0       19     129
[145-150)   0-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Other                 1       73     129
[150-155)   0-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Control               0        8     142
[150-155)   0-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Control               1       26     142
[150-155)   0-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Other                 0       28     142
[150-155)   0-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Other                 1       80     142
<145        0-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Control               0        1      60
<145        0-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Control               1       14      60
<145        0-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Other                 0        6      60
<145        0-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Other                 1       39      60
[155-160)   0-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Control               0        6      61
[155-160)   0-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Control               1       10      61
[155-160)   0-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Other                 0       16      61
[155-160)   0-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Other                 1       29      61
>=160       0-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Control               0        0      17
>=160       0-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Control               1        1      17
>=160       0-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Other                 0       12      17
>=160       0-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Other                 1        4      17
>=160       0-24 months   ki1017093b-PROVIDE          BANGLADESH                     Control               0        8      33
>=160       0-24 months   ki1017093b-PROVIDE          BANGLADESH                     Control               1        1      33
>=160       0-24 months   ki1017093b-PROVIDE          BANGLADESH                     Other                 0       20      33
>=160       0-24 months   ki1017093b-PROVIDE          BANGLADESH                     Other                 1        4      33
[150-155)   0-24 months   ki1017093b-PROVIDE          BANGLADESH                     Control               0       30     200
[150-155)   0-24 months   ki1017093b-PROVIDE          BANGLADESH                     Control               1       17     200
[150-155)   0-24 months   ki1017093b-PROVIDE          BANGLADESH                     Other                 0       86     200
[150-155)   0-24 months   ki1017093b-PROVIDE          BANGLADESH                     Other                 1       67     200
[145-150)   0-24 months   ki1017093b-PROVIDE          BANGLADESH                     Control               0       33     221
[145-150)   0-24 months   ki1017093b-PROVIDE          BANGLADESH                     Control               1       26     221
[145-150)   0-24 months   ki1017093b-PROVIDE          BANGLADESH                     Other                 0       92     221
[145-150)   0-24 months   ki1017093b-PROVIDE          BANGLADESH                     Other                 1       70     221
<145        0-24 months   ki1017093b-PROVIDE          BANGLADESH                     Control               0        9      81
<145        0-24 months   ki1017093b-PROVIDE          BANGLADESH                     Control               1       13      81
<145        0-24 months   ki1017093b-PROVIDE          BANGLADESH                     Other                 0       20      81
<145        0-24 months   ki1017093b-PROVIDE          BANGLADESH                     Other                 1       39      81
[155-160)   0-24 months   ki1017093b-PROVIDE          BANGLADESH                     Control               0       21     105
[155-160)   0-24 months   ki1017093b-PROVIDE          BANGLADESH                     Control               1        8     105
[155-160)   0-24 months   ki1017093b-PROVIDE          BANGLADESH                     Other                 0       60     105
[155-160)   0-24 months   ki1017093b-PROVIDE          BANGLADESH                     Other                 1       16     105
[150-155)   0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control               0      108     613
[150-155)   0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control               1       41     613
[150-155)   0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                 0      224     613
[150-155)   0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                 1       83     613
[150-155)   0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                  0      109     613
[150-155)   0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                  1       48     613
[155-160)   0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control               0      143     760
[155-160)   0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control               1       37     760
[155-160)   0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                 0      303     760
[155-160)   0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                 1       88     760
[155-160)   0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                  0      149     760
[155-160)   0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                  1       40     760
[145-150)   0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control               0       22     172
[145-150)   0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control               1       20     172
[145-150)   0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                 0       47     172
[145-150)   0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                 1       38     172
[145-150)   0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                  0       27     172
[145-150)   0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                  1       18     172
>=160       0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control               0      152     641
>=160       0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control               1       25     641
>=160       0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                 0      268     641
>=160       0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                 1       36     641
>=160       0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                  0      133     641
>=160       0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                  1       27     641
<145        0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control               0        3      34
<145        0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control               1        6      34
<145        0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                 0       13      34
<145        0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                 1        5      34
<145        0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                  0        2      34
<145        0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                  1        5      34
>=160       0-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc                  0     2162    2946
>=160       0-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc                  1      784    2946
[155-160)   0-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc                  0     1045    1717
[155-160)   0-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc                  1      672    1717
[145-150)   0-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc                  0       74     185
[145-150)   0-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc                  1      111     185
[150-155)   0-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc                  0      418     845
[150-155)   0-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc                  1      427     845
<145        0-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc                  0        3      25
<145        0-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc                  1       22      25
<145        0-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Control               0        5      47
<145        0-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Control               1        9      47
<145        0-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Other                 0        9      47
<145        0-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Other                 1       24      47
[145-150)   0-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Control               0       11      71
[145-150)   0-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Control               1        7      71
[145-150)   0-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Other                 0       29      71
[145-150)   0-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Other                 1       24      71
[150-155)   0-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Control               0        9      63
[150-155)   0-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Control               1        6      63
[150-155)   0-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Other                 0       23      63
[150-155)   0-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Other                 1       25      63
[155-160)   0-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Control               0        4      24
[155-160)   0-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Control               1        1      24
[155-160)   0-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Other                 0       10      24
[155-160)   0-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Other                 1        9      24
>=160       0-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Control               0        3      11
>=160       0-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Control               1        0      11
>=160       0-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Other                 0        6      11
>=160       0-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Other                 1        2      11
[150-155)   0-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Control               0       24     257
[150-155)   0-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Control               1       26     257
[150-155)   0-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   LNS                   0       88     257
[150-155)   0-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   LNS                   1      119     257
>=160       0-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Control               0      372    2102
>=160       0-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Control               1      169    2102
>=160       0-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   LNS                   0     1171    2102
>=160       0-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   LNS                   1      390    2102
[155-160)   0-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Control               0       86     761
[155-160)   0-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Control               1       84     761
[155-160)   0-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   LNS                   0      364     761
[155-160)   0-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   LNS                   1      227     761
[145-150)   0-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Control               0        8      54
[145-150)   0-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Control               1        9      54
[145-150)   0-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   LNS                   0       11      54
[145-150)   0-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   LNS                   1       26      54
<145        0-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Control               1        1       3
<145        0-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   LNS                   1        2       3
>=160       0-24 months   ki1119695-PROBIT            BELARUS                        Control               0     4790   11155
>=160       0-24 months   ki1119695-PROBIT            BELARUS                        Control               1      678   11155
>=160       0-24 months   ki1119695-PROBIT            BELARUS                        Other                 0     5087   11155
>=160       0-24 months   ki1119695-PROBIT            BELARUS                        Other                 1      600   11155
[155-160)   0-24 months   ki1119695-PROBIT            BELARUS                        Control               0      798    2051
[155-160)   0-24 months   ki1119695-PROBIT            BELARUS                        Control               1      179    2051
[155-160)   0-24 months   ki1119695-PROBIT            BELARUS                        Other                 0      897    2051
[155-160)   0-24 months   ki1119695-PROBIT            BELARUS                        Other                 1      177    2051
<145        0-24 months   ki1119695-PROBIT            BELARUS                        Control               0        1       4
<145        0-24 months   ki1119695-PROBIT            BELARUS                        Control               1        0       4
<145        0-24 months   ki1119695-PROBIT            BELARUS                        Other                 0        2       4
<145        0-24 months   ki1119695-PROBIT            BELARUS                        Other                 1        1       4
[150-155)   0-24 months   ki1119695-PROBIT            BELARUS                        Control               0      191     494
[150-155)   0-24 months   ki1119695-PROBIT            BELARUS                        Control               1       49     494
[150-155)   0-24 months   ki1119695-PROBIT            BELARUS                        Other                 0      195     494
[150-155)   0-24 months   ki1119695-PROBIT            BELARUS                        Other                 1       59     494
[145-150)   0-24 months   ki1119695-PROBIT            BELARUS                        Control               0        7      25
[145-150)   0-24 months   ki1119695-PROBIT            BELARUS                        Control               1        3      25
[145-150)   0-24 months   ki1119695-PROBIT            BELARUS                        Other                 0        8      25
[145-150)   0-24 months   ki1119695-PROBIT            BELARUS                        Other                 1        7      25
[155-160)   0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control               0      426    2728
[155-160)   0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control               1      239    2728
[155-160)   0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Other                 0     1326    2728
[155-160)   0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Other                 1      737    2728
[150-155)   0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control               0      223    1523
[150-155)   0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control               1      138    1523
[150-155)   0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Other                 0      678    1523
[150-155)   0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Other                 1      484    1523
>=160       0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control               0      849    4621
>=160       0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control               1      338    4621
>=160       0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Other                 0     2500    4621
>=160       0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Other                 1      934    4621
[145-150)   0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control               0       31     304
[145-150)   0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control               1       45     304
[145-150)   0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Other                 0      101     304
[145-150)   0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Other                 1      127     304
<145        0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control               0        6      54
<145        0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control               1        5      54
<145        0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Other                 0       16      54
<145        0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Other                 1       27      54
[150-155)   0-24 months   ki1135781-COHORTS           GUATEMALA                      Control               0       35     350
[150-155)   0-24 months   ki1135781-COHORTS           GUATEMALA                      Control               1      128     350
[150-155)   0-24 months   ki1135781-COHORTS           GUATEMALA                      Other                 0       54     350
[150-155)   0-24 months   ki1135781-COHORTS           GUATEMALA                      Other                 1      133     350
[145-150)   0-24 months   ki1135781-COHORTS           GUATEMALA                      Control               0       41     431
[145-150)   0-24 months   ki1135781-COHORTS           GUATEMALA                      Control               1      176     431
[145-150)   0-24 months   ki1135781-COHORTS           GUATEMALA                      Other                 0       55     431
[145-150)   0-24 months   ki1135781-COHORTS           GUATEMALA                      Other                 1      159     431
[155-160)   0-24 months   ki1135781-COHORTS           GUATEMALA                      Control               0       14     119
[155-160)   0-24 months   ki1135781-COHORTS           GUATEMALA                      Control               1       40     119
[155-160)   0-24 months   ki1135781-COHORTS           GUATEMALA                      Other                 0       33     119
[155-160)   0-24 months   ki1135781-COHORTS           GUATEMALA                      Other                 1       32     119
<145        0-24 months   ki1135781-COHORTS           GUATEMALA                      Control               0       10     250
<145        0-24 months   ki1135781-COHORTS           GUATEMALA                      Control               1      114     250
<145        0-24 months   ki1135781-COHORTS           GUATEMALA                      Other                 0       12     250
<145        0-24 months   ki1135781-COHORTS           GUATEMALA                      Other                 1      114     250
>=160       0-24 months   ki1135781-COHORTS           GUATEMALA                      Control               0        4      34
>=160       0-24 months   ki1135781-COHORTS           GUATEMALA                      Control               1       13      34
>=160       0-24 months   ki1135781-COHORTS           GUATEMALA                      Other                 0        9      34
>=160       0-24 months   ki1135781-COHORTS           GUATEMALA                      Other                 1        8      34
[145-150)   0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control               0       19     257
[145-150)   0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control               1       30     257
[145-150)   0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS                   0       74     257
[145-150)   0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS                   1      134     257
>=160       0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control               0       48     431
>=160       0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control               1       20     431
>=160       0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS                   0      241     431
>=160       0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS                   1      122     431
[155-160)   0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control               0       55     629
[155-160)   0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control               1       39     629
[155-160)   0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS                   0      286     629
[155-160)   0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS                   1      249     629
[150-155)   0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control               0       38     569
[150-155)   0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control               1       65     569
[150-155)   0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS                   0      205     569
[150-155)   0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS                   1      261     569
<145        0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control               0        1      42
<145        0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control               1        4      42
<145        0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS                   0       10      42
<145        0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS                   1       27      42
[150-155)   0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control               0        1       3
[150-155)   0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control               1        0       3
[150-155)   0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         LNS                   0        1       3
[150-155)   0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         LNS                   1        0       3
[150-155)   0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Other                 0        0       3
[150-155)   0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Other                 1        1       3
[145-150)   0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         LNS                   1        1       1
[155-160)   0-24 months   ki1148112-LCNI-5            MALAWI                         Control               0       68     288
[155-160)   0-24 months   ki1148112-LCNI-5            MALAWI                         Control               1       70     288
[155-160)   0-24 months   ki1148112-LCNI-5            MALAWI                         LNS                   0       62     288
[155-160)   0-24 months   ki1148112-LCNI-5            MALAWI                         LNS                   1       88     288
[145-150)   0-24 months   ki1148112-LCNI-5            MALAWI                         Control               0       10      93
[145-150)   0-24 months   ki1148112-LCNI-5            MALAWI                         Control               1       35      93
[145-150)   0-24 months   ki1148112-LCNI-5            MALAWI                         LNS                   0       13      93
[145-150)   0-24 months   ki1148112-LCNI-5            MALAWI                         LNS                   1       35      93
>=160       0-24 months   ki1148112-LCNI-5            MALAWI                         Control               0       67     226
>=160       0-24 months   ki1148112-LCNI-5            MALAWI                         Control               1       49     226
>=160       0-24 months   ki1148112-LCNI-5            MALAWI                         LNS                   0       65     226
>=160       0-24 months   ki1148112-LCNI-5            MALAWI                         LNS                   1       45     226
[150-155)   0-24 months   ki1148112-LCNI-5            MALAWI                         Control               0       35     218
[150-155)   0-24 months   ki1148112-LCNI-5            MALAWI                         Control               1       77     218
[150-155)   0-24 months   ki1148112-LCNI-5            MALAWI                         LNS                   0       38     218
[150-155)   0-24 months   ki1148112-LCNI-5            MALAWI                         LNS                   1       68     218
<145        0-24 months   ki1148112-LCNI-5            MALAWI                         Control               0        0      12
<145        0-24 months   ki1148112-LCNI-5            MALAWI                         Control               1        5      12
<145        0-24 months   ki1148112-LCNI-5            MALAWI                         LNS                   0        1      12
<145        0-24 months   ki1148112-LCNI-5            MALAWI                         LNS                   1        6      12
[145-150)   0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control               0     2067    7751
[145-150)   0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control               1     1794    7751
[145-150)   0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Other                 0     2188    7751
[145-150)   0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Other                 1     1702    7751
[150-155)   0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control               0     2414    7609
[150-155)   0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control               1     1284    7609
[150-155)   0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Other                 0     2656    7609
[150-155)   0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Other                 1     1255    7609
[155-160)   0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control               0     1133    2947
[155-160)   0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control               1      324    2947
[155-160)   0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Other                 0     1171    2947
[155-160)   0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Other                 1      319    2947
>=160       0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control               0      261     594
>=160       0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control               1       34     594
>=160       0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Other                 0      261     594
>=160       0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Other                 1       38     594
<145        0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control               0      747    3942
<145        0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control               1     1241    3942
<145        0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Other                 0      802    3942
<145        0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Other                 1     1152    3942


The following strata were considered:

* mhtcm: [145-150), agecat: 0-24 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* mhtcm: [145-150), agecat: 0-24 months, studyid: ki1000111-WASH-Kenya, country: KENYA
* mhtcm: [145-150), agecat: 0-24 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* mhtcm: [145-150), agecat: 0-24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* mhtcm: [145-150), agecat: 0-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* mhtcm: [145-150), agecat: 0-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* mhtcm: [145-150), agecat: 0-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* mhtcm: [145-150), agecat: 0-24 months, studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO
* mhtcm: [145-150), agecat: 0-24 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* mhtcm: [145-150), agecat: 0-24 months, studyid: ki1112895-iLiNS-Zinc, country: BURKINA FASO
* mhtcm: [145-150), agecat: 0-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* mhtcm: [145-150), agecat: 0-24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* mhtcm: [145-150), agecat: 0-24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* mhtcm: [145-150), agecat: 0-24 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* mhtcm: [145-150), agecat: 0-24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* mhtcm: [145-150), agecat: 0-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* mhtcm: [145-150), agecat: 0-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* mhtcm: [145-150), agecat: 0-6 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* mhtcm: [145-150), agecat: 0-6 months, studyid: ki1000111-WASH-Kenya, country: KENYA
* mhtcm: [145-150), agecat: 0-6 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* mhtcm: [145-150), agecat: 0-6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* mhtcm: [145-150), agecat: 0-6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* mhtcm: [145-150), agecat: 0-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* mhtcm: [145-150), agecat: 0-6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* mhtcm: [145-150), agecat: 0-6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* mhtcm: [145-150), agecat: 0-6 months, studyid: ki1119695-PROBIT, country: BELARUS
* mhtcm: [145-150), agecat: 0-6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* mhtcm: [145-150), agecat: 0-6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* mhtcm: [145-150), agecat: 0-6 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* mhtcm: [145-150), agecat: 0-6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* mhtcm: [145-150), agecat: 0-6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* mhtcm: [145-150), agecat: 6-24 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* mhtcm: [145-150), agecat: 6-24 months, studyid: ki1000111-WASH-Kenya, country: KENYA
* mhtcm: [145-150), agecat: 6-24 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* mhtcm: [145-150), agecat: 6-24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* mhtcm: [145-150), agecat: 6-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* mhtcm: [145-150), agecat: 6-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* mhtcm: [145-150), agecat: 6-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* mhtcm: [145-150), agecat: 6-24 months, studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO
* mhtcm: [145-150), agecat: 6-24 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* mhtcm: [145-150), agecat: 6-24 months, studyid: ki1112895-iLiNS-Zinc, country: BURKINA FASO
* mhtcm: [145-150), agecat: 6-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* mhtcm: [145-150), agecat: 6-24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* mhtcm: [145-150), agecat: 6-24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* mhtcm: [145-150), agecat: 6-24 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* mhtcm: [145-150), agecat: 6-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* mhtcm: [145-150), agecat: 6-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* mhtcm: [150-155), agecat: 0-24 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* mhtcm: [150-155), agecat: 0-24 months, studyid: ki1000111-WASH-Kenya, country: KENYA
* mhtcm: [150-155), agecat: 0-24 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* mhtcm: [150-155), agecat: 0-24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* mhtcm: [150-155), agecat: 0-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* mhtcm: [150-155), agecat: 0-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* mhtcm: [150-155), agecat: 0-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* mhtcm: [150-155), agecat: 0-24 months, studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO
* mhtcm: [150-155), agecat: 0-24 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* mhtcm: [150-155), agecat: 0-24 months, studyid: ki1112895-iLiNS-Zinc, country: BURKINA FASO
* mhtcm: [150-155), agecat: 0-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* mhtcm: [150-155), agecat: 0-24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* mhtcm: [150-155), agecat: 0-24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* mhtcm: [150-155), agecat: 0-24 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* mhtcm: [150-155), agecat: 0-24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* mhtcm: [150-155), agecat: 0-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* mhtcm: [150-155), agecat: 0-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* mhtcm: [150-155), agecat: 0-6 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* mhtcm: [150-155), agecat: 0-6 months, studyid: ki1000111-WASH-Kenya, country: KENYA
* mhtcm: [150-155), agecat: 0-6 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* mhtcm: [150-155), agecat: 0-6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* mhtcm: [150-155), agecat: 0-6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* mhtcm: [150-155), agecat: 0-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* mhtcm: [150-155), agecat: 0-6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* mhtcm: [150-155), agecat: 0-6 months, studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO
* mhtcm: [150-155), agecat: 0-6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* mhtcm: [150-155), agecat: 0-6 months, studyid: ki1119695-PROBIT, country: BELARUS
* mhtcm: [150-155), agecat: 0-6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* mhtcm: [150-155), agecat: 0-6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* mhtcm: [150-155), agecat: 0-6 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* mhtcm: [150-155), agecat: 0-6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* mhtcm: [150-155), agecat: 0-6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* mhtcm: [150-155), agecat: 6-24 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* mhtcm: [150-155), agecat: 6-24 months, studyid: ki1000111-WASH-Kenya, country: KENYA
* mhtcm: [150-155), agecat: 6-24 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* mhtcm: [150-155), agecat: 6-24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* mhtcm: [150-155), agecat: 6-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* mhtcm: [150-155), agecat: 6-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* mhtcm: [150-155), agecat: 6-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* mhtcm: [150-155), agecat: 6-24 months, studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO
* mhtcm: [150-155), agecat: 6-24 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* mhtcm: [150-155), agecat: 6-24 months, studyid: ki1112895-iLiNS-Zinc, country: BURKINA FASO
* mhtcm: [150-155), agecat: 6-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* mhtcm: [150-155), agecat: 6-24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* mhtcm: [150-155), agecat: 6-24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* mhtcm: [150-155), agecat: 6-24 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* mhtcm: [150-155), agecat: 6-24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* mhtcm: [150-155), agecat: 6-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* mhtcm: [150-155), agecat: 6-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* mhtcm: [155-160), agecat: 0-24 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* mhtcm: [155-160), agecat: 0-24 months, studyid: ki1000111-WASH-Kenya, country: KENYA
* mhtcm: [155-160), agecat: 0-24 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* mhtcm: [155-160), agecat: 0-24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* mhtcm: [155-160), agecat: 0-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* mhtcm: [155-160), agecat: 0-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* mhtcm: [155-160), agecat: 0-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* mhtcm: [155-160), agecat: 0-24 months, studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO
* mhtcm: [155-160), agecat: 0-24 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* mhtcm: [155-160), agecat: 0-24 months, studyid: ki1112895-iLiNS-Zinc, country: BURKINA FASO
* mhtcm: [155-160), agecat: 0-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* mhtcm: [155-160), agecat: 0-24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* mhtcm: [155-160), agecat: 0-24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* mhtcm: [155-160), agecat: 0-24 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* mhtcm: [155-160), agecat: 0-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* mhtcm: [155-160), agecat: 0-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* mhtcm: [155-160), agecat: 0-6 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* mhtcm: [155-160), agecat: 0-6 months, studyid: ki1000111-WASH-Kenya, country: KENYA
* mhtcm: [155-160), agecat: 0-6 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* mhtcm: [155-160), agecat: 0-6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* mhtcm: [155-160), agecat: 0-6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* mhtcm: [155-160), agecat: 0-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* mhtcm: [155-160), agecat: 0-6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* mhtcm: [155-160), agecat: 0-6 months, studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO
* mhtcm: [155-160), agecat: 0-6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* mhtcm: [155-160), agecat: 0-6 months, studyid: ki1119695-PROBIT, country: BELARUS
* mhtcm: [155-160), agecat: 0-6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* mhtcm: [155-160), agecat: 0-6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* mhtcm: [155-160), agecat: 0-6 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* mhtcm: [155-160), agecat: 0-6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* mhtcm: [155-160), agecat: 0-6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* mhtcm: [155-160), agecat: 6-24 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* mhtcm: [155-160), agecat: 6-24 months, studyid: ki1000111-WASH-Kenya, country: KENYA
* mhtcm: [155-160), agecat: 6-24 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* mhtcm: [155-160), agecat: 6-24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* mhtcm: [155-160), agecat: 6-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* mhtcm: [155-160), agecat: 6-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* mhtcm: [155-160), agecat: 6-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* mhtcm: [155-160), agecat: 6-24 months, studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO
* mhtcm: [155-160), agecat: 6-24 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* mhtcm: [155-160), agecat: 6-24 months, studyid: ki1112895-iLiNS-Zinc, country: BURKINA FASO
* mhtcm: [155-160), agecat: 6-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* mhtcm: [155-160), agecat: 6-24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* mhtcm: [155-160), agecat: 6-24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* mhtcm: [155-160), agecat: 6-24 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* mhtcm: [155-160), agecat: 6-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* mhtcm: [155-160), agecat: 6-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* mhtcm: <145, agecat: 0-24 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* mhtcm: <145, agecat: 0-24 months, studyid: ki1000111-WASH-Kenya, country: KENYA
* mhtcm: <145, agecat: 0-24 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* mhtcm: <145, agecat: 0-24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* mhtcm: <145, agecat: 0-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* mhtcm: <145, agecat: 0-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* mhtcm: <145, agecat: 0-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* mhtcm: <145, agecat: 0-24 months, studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO
* mhtcm: <145, agecat: 0-24 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* mhtcm: <145, agecat: 0-24 months, studyid: ki1112895-iLiNS-Zinc, country: BURKINA FASO
* mhtcm: <145, agecat: 0-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* mhtcm: <145, agecat: 0-24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* mhtcm: <145, agecat: 0-24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* mhtcm: <145, agecat: 0-24 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* mhtcm: <145, agecat: 0-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* mhtcm: <145, agecat: 0-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* mhtcm: <145, agecat: 0-6 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* mhtcm: <145, agecat: 0-6 months, studyid: ki1000111-WASH-Kenya, country: KENYA
* mhtcm: <145, agecat: 0-6 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* mhtcm: <145, agecat: 0-6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* mhtcm: <145, agecat: 0-6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* mhtcm: <145, agecat: 0-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* mhtcm: <145, agecat: 0-6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* mhtcm: <145, agecat: 0-6 months, studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO
* mhtcm: <145, agecat: 0-6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* mhtcm: <145, agecat: 0-6 months, studyid: ki1119695-PROBIT, country: BELARUS
* mhtcm: <145, agecat: 0-6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* mhtcm: <145, agecat: 0-6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* mhtcm: <145, agecat: 0-6 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* mhtcm: <145, agecat: 0-6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* mhtcm: <145, agecat: 0-6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* mhtcm: <145, agecat: 6-24 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* mhtcm: <145, agecat: 6-24 months, studyid: ki1000111-WASH-Kenya, country: KENYA
* mhtcm: <145, agecat: 6-24 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* mhtcm: <145, agecat: 6-24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* mhtcm: <145, agecat: 6-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* mhtcm: <145, agecat: 6-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* mhtcm: <145, agecat: 6-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* mhtcm: <145, agecat: 6-24 months, studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO
* mhtcm: <145, agecat: 6-24 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* mhtcm: <145, agecat: 6-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* mhtcm: <145, agecat: 6-24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* mhtcm: <145, agecat: 6-24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* mhtcm: <145, agecat: 6-24 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* mhtcm: <145, agecat: 6-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* mhtcm: <145, agecat: 6-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* mhtcm: >=160, agecat: 0-24 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* mhtcm: >=160, agecat: 0-24 months, studyid: ki1000111-WASH-Kenya, country: KENYA
* mhtcm: >=160, agecat: 0-24 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* mhtcm: >=160, agecat: 0-24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* mhtcm: >=160, agecat: 0-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* mhtcm: >=160, agecat: 0-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* mhtcm: >=160, agecat: 0-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* mhtcm: >=160, agecat: 0-24 months, studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO
* mhtcm: >=160, agecat: 0-24 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* mhtcm: >=160, agecat: 0-24 months, studyid: ki1112895-iLiNS-Zinc, country: BURKINA FASO
* mhtcm: >=160, agecat: 0-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* mhtcm: >=160, agecat: 0-24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* mhtcm: >=160, agecat: 0-24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* mhtcm: >=160, agecat: 0-24 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* mhtcm: >=160, agecat: 0-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* mhtcm: >=160, agecat: 0-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* mhtcm: >=160, agecat: 0-6 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* mhtcm: >=160, agecat: 0-6 months, studyid: ki1000111-WASH-Kenya, country: KENYA
* mhtcm: >=160, agecat: 0-6 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* mhtcm: >=160, agecat: 0-6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* mhtcm: >=160, agecat: 0-6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* mhtcm: >=160, agecat: 0-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* mhtcm: >=160, agecat: 0-6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* mhtcm: >=160, agecat: 0-6 months, studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO
* mhtcm: >=160, agecat: 0-6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* mhtcm: >=160, agecat: 0-6 months, studyid: ki1119695-PROBIT, country: BELARUS
* mhtcm: >=160, agecat: 0-6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* mhtcm: >=160, agecat: 0-6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* mhtcm: >=160, agecat: 0-6 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* mhtcm: >=160, agecat: 0-6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* mhtcm: >=160, agecat: 0-6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* mhtcm: >=160, agecat: 6-24 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* mhtcm: >=160, agecat: 6-24 months, studyid: ki1000111-WASH-Kenya, country: KENYA
* mhtcm: >=160, agecat: 6-24 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* mhtcm: >=160, agecat: 6-24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* mhtcm: >=160, agecat: 6-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* mhtcm: >=160, agecat: 6-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* mhtcm: >=160, agecat: 6-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* mhtcm: >=160, agecat: 6-24 months, studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO
* mhtcm: >=160, agecat: 6-24 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* mhtcm: >=160, agecat: 6-24 months, studyid: ki1112895-iLiNS-Zinc, country: BURKINA FASO
* mhtcm: >=160, agecat: 6-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* mhtcm: >=160, agecat: 6-24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* mhtcm: >=160, agecat: 6-24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* mhtcm: >=160, agecat: 6-24 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* mhtcm: >=160, agecat: 6-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* mhtcm: >=160, agecat: 6-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* mhtcm: [145-150), agecat: 0-6 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* mhtcm: [150-155), agecat: 0-6 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* mhtcm: [155-160), agecat: 0-6 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* mhtcm: <145, agecat: 0-6 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* mhtcm: >=160, agecat: 0-6 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* mhtcm: [150-155), agecat: 0-6 months, studyid: ki1000111-WASH-Kenya, country: KENYA
* mhtcm: >=160, agecat: 0-6 months, studyid: ki1000111-WASH-Kenya, country: KENYA
* mhtcm: [145-150), agecat: 0-6 months, studyid: ki1000111-WASH-Kenya, country: KENYA
* mhtcm: [155-160), agecat: 0-6 months, studyid: ki1000111-WASH-Kenya, country: KENYA
* mhtcm: <145, agecat: 0-6 months, studyid: ki1000111-WASH-Kenya, country: KENYA
* mhtcm: [150-155), agecat: 0-6 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* mhtcm: [155-160), agecat: 0-6 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* mhtcm: >=160, agecat: 0-6 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* mhtcm: [145-150), agecat: 0-6 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* mhtcm: <145, agecat: 0-6 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* mhtcm: [155-160), agecat: 0-6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* mhtcm: >=160, agecat: 0-6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* mhtcm: >=160, agecat: 0-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* mhtcm: [155-160), agecat: 0-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* mhtcm: <145, agecat: 0-6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* mhtcm: >=160, agecat: 0-6 months, studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO
* mhtcm: [155-160), agecat: 0-6 months, studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO
* mhtcm: <145, agecat: 0-6 months, studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO
* mhtcm: [150-155), agecat: 0-6 months, studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO
* mhtcm: [145-150), agecat: 0-6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* mhtcm: [150-155), agecat: 0-6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* mhtcm: [155-160), agecat: 0-6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* mhtcm: >=160, agecat: 0-6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* mhtcm: <145, agecat: 0-6 months, studyid: ki1119695-PROBIT, country: BELARUS
* mhtcm: [145-150), agecat: 0-6 months, studyid: ki1119695-PROBIT, country: BELARUS
* mhtcm: <145, agecat: 0-6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* mhtcm: [155-160), agecat: 0-6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* mhtcm: >=160, agecat: 0-6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* mhtcm: <145, agecat: 0-6 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* mhtcm: <145, agecat: 0-6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* mhtcm: >=160, agecat: 6-24 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* mhtcm: [145-150), agecat: 6-24 months, studyid: ki1000111-WASH-Kenya, country: KENYA
* mhtcm: <145, agecat: 6-24 months, studyid: ki1000111-WASH-Kenya, country: KENYA
* mhtcm: [145-150), agecat: 6-24 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* mhtcm: <145, agecat: 6-24 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* mhtcm: >=160, agecat: 6-24 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* mhtcm: [145-150), agecat: 6-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* mhtcm: [155-160), agecat: 6-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* mhtcm: >=160, agecat: 6-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* mhtcm: <145, agecat: 6-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* mhtcm: >=160, agecat: 6-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* mhtcm: <145, agecat: 6-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* mhtcm: [155-160), agecat: 6-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* mhtcm: <145, agecat: 6-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* mhtcm: <145, agecat: 6-24 months, studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO
* mhtcm: <145, agecat: 6-24 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* mhtcm: [145-150), agecat: 6-24 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* mhtcm: [150-155), agecat: 6-24 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* mhtcm: [155-160), agecat: 6-24 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* mhtcm: >=160, agecat: 6-24 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* mhtcm: [145-150), agecat: 6-24 months, studyid: ki1112895-iLiNS-Zinc, country: BURKINA FASO
* mhtcm: <145, agecat: 6-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* mhtcm: [145-150), agecat: 6-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* mhtcm: <145, agecat: 6-24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* mhtcm: >=160, agecat: 6-24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* mhtcm: <145, agecat: 6-24 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* mhtcm: [150-155), agecat: 6-24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* mhtcm: <145, agecat: 6-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* mhtcm: >=160, agecat: 0-24 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* mhtcm: <145, agecat: 0-24 months, studyid: ki1000111-WASH-Kenya, country: KENYA
* mhtcm: <145, agecat: 0-24 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* mhtcm: [155-160), agecat: 0-24 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* mhtcm: >=160, agecat: 0-24 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* mhtcm: [145-150), agecat: 0-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* mhtcm: <145, agecat: 0-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* mhtcm: >=160, agecat: 0-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* mhtcm: >=160, agecat: 0-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* mhtcm: <145, agecat: 0-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* mhtcm: <145, agecat: 0-24 months, studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO
* mhtcm: [155-160), agecat: 0-24 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* mhtcm: >=160, agecat: 0-24 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* mhtcm: <145, agecat: 0-24 months, studyid: ki1112895-iLiNS-Zinc, country: BURKINA FASO
* mhtcm: <145, agecat: 0-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* mhtcm: [145-150), agecat: 0-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* mhtcm: >=160, agecat: 0-24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* mhtcm: <145, agecat: 0-24 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* mhtcm: [150-155), agecat: 0-24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* mhtcm: [145-150), agecat: 0-24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* mhtcm: <145, agecat: 0-24 months, studyid: ki1148112-LCNI-5, country: MALAWI

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness



```
##          ever_stunted
## tr.x         0    1
##   Control    0    0
##   LNS        0    0
##   Other      0    0
##   Zinc    2162  784
##          ever_stunted
## tr.x         0    1
##   Control    0    0
##   LNS        0    0
##   Other      0    0
##   Zinc    2184  173
##          ever_stunted
## tr.x        0   1
##   Control   0   0
##   LNS       0   0
##   Other     0   0
##   Zinc     74 111
##          ever_stunted
## tr.x       0  1
##   Control  0  0
##   LNS      0  0
##   Other    0  0
##   Zinc    76 29
##          ever_stunted
## tr.x        0   1
##   Control   0   0
##   LNS       0   0
##   Other     0   0
##   Zinc    418 427
##          ever_stunted
## tr.x      0
##   Control 9
##   LNS     0
##   Other   9
##   Zinc    0
##          ever_stunted
## tr.x        0   1
##   Control   0   0
##   LNS       0   0
##   Other     0   0
##   Zinc    431  94
##          ever_stunted
## tr.x         0    1
##   Control    0    0
##   LNS        0    0
##   Other      0    0
##   Zinc    1045  672
##          ever_stunted
## tr.x       0
##   Control 17
##   LNS      0
##   Other   10
##   Zinc     0
##          ever_stunted
## tr.x         0    1
##   Control    0    0
##   LNS        0    0
##   Other      0    0
##   Zinc    1077  133
```




# Results Detail

## Results Plots
![](/tmp/ef360522-de50-413b-96a7-106958a8c705/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->


```
## Warning: Removed 142 rows containing missing values (geom_errorbar).
```

![](/tmp/ef360522-de50-413b-96a7-106958a8c705/REPORT_files/figure-html/plot_rr-1.png)<!-- -->

![](/tmp/ef360522-de50-413b-96a7-106958a8c705/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/ef360522-de50-413b-96a7-106958a8c705/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


mhtcm       agecat        studyid                     country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ------------  --------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
>=160       0-24 months   ki1000111-WASH-Kenya        KENYA                          Control              NA                0.1770294   0.1550419   0.1990168
>=160       0-24 months   ki1000111-WASH-Kenya        KENYA                          LNS                  NA                0.1535270   0.1272459   0.1798081
>=160       0-24 months   ki1000111-WASH-Kenya        KENYA                          Other                NA                0.2032235   0.1823423   0.2241048
>=160       0-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control              NA                0.4181818   0.3585972   0.4777664
>=160       0-24 months   ki1000304b-SAS-CompFeed     INDIA                          Other                NA                0.4057971   0.2831919   0.5284023
>=160       0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              NA                0.1412429   0.0898955   0.1925904
>=160       0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                NA                0.1184211   0.0820718   0.1547703
>=160       0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                 NA                0.1687500   0.1106716   0.2268284
>=160       0-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Control              NA                0.3123845   0.2998805   0.3248885
>=160       0-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   LNS                  NA                0.2498398   0.2175663   0.2821134
>=160       0-24 months   ki1119695-PROBIT            BELARUS                        Control              NA                0.1239941   0.1112233   0.1367650
>=160       0-24 months   ki1119695-PROBIT            BELARUS                        Other                NA                0.1055038   0.0955298   0.1154777
>=160       0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                0.2847515   0.2781560   0.2913469
>=160       0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Other                NA                0.2719860   0.2609248   0.2830472
>=160       0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                0.2941176   0.2770113   0.3112240
>=160       0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS                  NA                0.3360882   0.2951140   0.3770623
>=160       0-24 months   ki1148112-LCNI-5            MALAWI                         Control              NA                0.4224138   0.3761747   0.4686529
>=160       0-24 months   ki1148112-LCNI-5            MALAWI                         LNS                  NA                0.4090909   0.3642712   0.4539106
>=160       0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                0.1152542   0.0953794   0.1351291
>=160       0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Other                NA                0.1270903   0.1050507   0.1491299
>=160       0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Control              NA                0.1914894   0.1377602   0.2452185
>=160       0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Other                NA                0.1166667   0.0677577   0.1655756
>=160       0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              NA                0.0340909   0.0072609   0.0609210
>=160       0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                NA                0.0299003   0.0106449   0.0491558
>=160       0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                 NA                0.0569620   0.0207945   0.0931296
>=160       0-6 months    ki1119695-PROBIT            BELARUS                        Control              NA                0.0565931   0.0482038   0.0649824
>=160       0-6 months    ki1119695-PROBIT            BELARUS                        Other                NA                0.0522852   0.0452711   0.0592993
>=160       0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                0.1459404   0.1402967   0.1515841
>=160       0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Other                NA                0.1406031   0.1310895   0.1501166
>=160       0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                0.1351351   0.1203411   0.1499292
>=160       0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         LNS                  NA                0.1673640   0.1263072   0.2084208
>=160       0-6 months    ki1148112-LCNI-5            MALAWI                         Control              NA                0.2857143   0.2144443   0.3569843
>=160       0-6 months    ki1148112-LCNI-5            MALAWI                         LNS                  NA                0.1282051   0.0725298   0.1838805
>=160       0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                0.0607287   0.0430933   0.0783642
>=160       0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Other                NA                0.0551181   0.0387446   0.0714916
>=160       6-24 months   ki1000111-WASH-Kenya        KENYA                          Control              NA                0.0450902   0.0322142   0.0579662
>=160       6-24 months   ki1000111-WASH-Kenya        KENYA                          LNS                  NA                0.0514019   0.0343179   0.0684858
>=160       6-24 months   ki1000111-WASH-Kenya        KENYA                          Other                NA                0.0527197   0.0400470   0.0653923
>=160       6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control              NA                0.2173913   0.1535743   0.2812083
>=160       6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Other                NA                0.2295082   0.1378312   0.3211852
>=160       6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              NA                0.0738255   0.0318004   0.1158506
>=160       6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                NA                0.0703125   0.0389640   0.1016610
>=160       6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                 NA                0.0827068   0.0358523   0.1295612
>=160       6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Control              NA                0.1782609   0.1667553   0.1897664
>=160       6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   LNS                  NA                0.1056851   0.0870901   0.1242802
>=160       6-24 months   ki1119695-PROBIT            BELARUS                        Control              NA                0.0411416   0.0332394   0.0490438
>=160       6-24 months   ki1119695-PROBIT            BELARUS                        Other                NA                0.0366352   0.0320932   0.0411773
>=160       6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                0.1172345   0.1120587   0.1224102
>=160       6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Other                NA                0.1217117   0.1128209   0.1306025
>=160       6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                0.1071429   0.0932060   0.1210797
>=160       6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS                  NA                0.1481481   0.1129994   0.1832969
>=160       6-24 months   ki1148112-LCNI-5            MALAWI                         Control              NA                0.1860465   0.1468604   0.2252326
>=160       6-24 months   ki1148112-LCNI-5            MALAWI                         LNS                  NA                0.1789474   0.1383795   0.2195153
>=160       6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                0.0755556   0.0590538   0.0920573
>=160       6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Other                NA                0.0814480   0.0611556   0.1017403
<145        0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                0.6193548   0.5428598   0.6958499
<145        0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                  NA                0.6153846   0.5419819   0.6887874
<145        0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                NA                0.6600567   0.6106056   0.7095077
<145        0-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control              NA                0.7826087   0.7159349   0.8492825
<145        0-24 months   ki1000304b-SAS-CompFeed     INDIA                          Other                NA                0.6923077   0.6009869   0.7836285
<145        0-24 months   ki1017093b-PROVIDE          BANGLADESH                     Control              NA                0.5909091   0.5347601   0.6470581
<145        0-24 months   ki1017093b-PROVIDE          BANGLADESH                     Other                NA                0.6610169   0.5724887   0.7495452
<145        0-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Control              NA                0.6428571   0.5672849   0.7184294
<145        0-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Other                NA                0.7272727   0.6194302   0.8351153
<145        0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                0.4545455   0.3940424   0.5150485
<145        0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Other                NA                0.6279070   0.5117833   0.7440307
<145        0-24 months   ki1135781-COHORTS           GUATEMALA                      Control              NA                0.9193548   0.8955360   0.9431736
<145        0-24 months   ki1135781-COHORTS           GUATEMALA                      Other                NA                0.9047619   0.8788776   0.9306462
<145        0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                0.6242455   0.6119301   0.6365608
<145        0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Other                NA                0.5895599   0.5749348   0.6041850
<145        0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Control              NA                0.3529412   0.2290671   0.4768153
<145        0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Other                NA                0.3870968   0.3214284   0.4527651
<145        0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Control              NA                0.6000000   0.5374975   0.6625025
<145        0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Other                NA                0.6444444   0.5386655   0.7502234
<145        0-6 months    ki1017093b-PROVIDE          BANGLADESH                     Control              NA                0.2727273   0.2218663   0.3235883
<145        0-6 months    ki1017093b-PROVIDE          BANGLADESH                     Other                NA                0.2881356   0.2034355   0.3728356
<145        0-6 months    ki1112895-Guatemala BSC     GUATEMALA                      Control              NA                0.3846154   0.2997199   0.4695108
<145        0-6 months    ki1112895-Guatemala BSC     GUATEMALA                      Other                NA                0.3214286   0.2018247   0.4410324
<145        0-6 months    ki1135781-COHORTS           GUATEMALA                      Control              NA                0.5862069   0.4988369   0.6735769
<145        0-6 months    ki1135781-COHORTS           GUATEMALA                      Other                NA                0.2580645   0.1778091   0.3383200
<145        0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                0.4381291   0.4231054   0.4531527
<145        0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Other                NA                0.4078313   0.3927166   0.4229461
<145        6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                0.3146067   0.2180039   0.4112096
<145        6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                  NA                0.2812500   0.1911903   0.3713097
<145        6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                NA                0.3457447   0.2776672   0.4138222
<145        6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control              NA                0.5454545   0.4209396   0.6699694
<145        6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Other                NA                0.4500000   0.3074108   0.5925892
<145        6-24 months   ki1135781-COHORTS           GUATEMALA                      Control              NA                0.7368421   0.6723526   0.8013317
<145        6-24 months   ki1135781-COHORTS           GUATEMALA                      Other                NA                0.6888889   0.6151085   0.7626692
<145        6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                0.3268571   0.3088844   0.3448299
<145        6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Other                NA                0.3110599   0.2932485   0.3288713
[145-150)   0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                0.4791667   0.4257327   0.5326006
[145-150)   0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                  NA                0.3664122   0.3187596   0.4140648
[145-150)   0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                NA                0.4464993   0.4110739   0.4819248
[145-150)   0-24 months   ki1000111-WASH-Kenya        KENYA                          Control              NA                0.5263158   0.3963750   0.6562565
[145-150)   0-24 months   ki1000111-WASH-Kenya        KENYA                          LNS                  NA                0.3265306   0.1949057   0.4581555
[145-150)   0-24 months   ki1000111-WASH-Kenya        KENYA                          Other                NA                0.5102041   0.4109881   0.6094201
[145-150)   0-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Control              NA                0.3333333   0.2120146   0.4546521
[145-150)   0-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Other                NA                0.4000000   0.2739219   0.5260781
[145-150)   0-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control              NA                0.7972973   0.7359013   0.8586933
[145-150)   0-24 months   ki1000304b-SAS-CompFeed     INDIA                          Other                NA                0.6282051   0.5847740   0.6716363
[145-150)   0-24 months   ki1017093b-PROVIDE          BANGLADESH                     Control              NA                0.4406780   0.4067812   0.4745747
[145-150)   0-24 months   ki1017093b-PROVIDE          BANGLADESH                     Other                NA                0.4320988   0.3760552   0.4881424
[145-150)   0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              NA                0.4761905   0.3247065   0.6276744
[145-150)   0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                NA                0.4470588   0.3410538   0.5530639
[145-150)   0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                 NA                0.4000000   0.2564466   0.5435534
[145-150)   0-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Control              NA                0.3888889   0.3313874   0.4463904
[145-150)   0-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Other                NA                0.4528302   0.3520822   0.5535782
[145-150)   0-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Control              NA                0.5294118   0.4315494   0.6272741
[145-150)   0-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   LNS                  NA                0.7027027   0.5868845   0.8185209
[145-150)   0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                0.5921053   0.5644377   0.6197728
[145-150)   0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Other                NA                0.5570175   0.5085797   0.6054554
[145-150)   0-24 months   ki1135781-COHORTS           GUATEMALA                      Control              NA                0.8110599   0.7848060   0.8373138
[145-150)   0-24 months   ki1135781-COHORTS           GUATEMALA                      Other                NA                0.7429907   0.7138870   0.7720944
[145-150)   0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                0.6122449   0.5861833   0.6383065
[145-150)   0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS                  NA                0.6442308   0.5914716   0.6969900
[145-150)   0-24 months   ki1148112-LCNI-5            MALAWI                         Control              NA                0.7777778   0.7186842   0.8368714
[145-150)   0-24 months   ki1148112-LCNI-5            MALAWI                         LNS                  NA                0.7291667   0.6639291   0.7944042
[145-150)   0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                0.4646465   0.4546278   0.4746651
[145-150)   0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Other                NA                0.4375321   0.4282451   0.4468191
[145-150)   0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Control              NA                0.4687500   0.3556026   0.5818974
[145-150)   0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Other                NA                0.4558824   0.4371854   0.4745793
[145-150)   0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Control              NA                0.4594595   0.4132228   0.5056962
[145-150)   0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Other                NA                0.4456522   0.3729359   0.5183684
[145-150)   0-6 months    ki1017093b-PROVIDE          BANGLADESH                     Control              NA                0.2033898   0.1759075   0.2308722
[145-150)   0-6 months    ki1017093b-PROVIDE          BANGLADESH                     Other                NA                0.1358025   0.0970447   0.1745602
[145-150)   0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              NA                0.1707317   0.0552158   0.2862476
[145-150)   0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                NA                0.1547619   0.0771888   0.2323350
[145-150)   0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                 NA                0.1333333   0.0337198   0.2329469
[145-150)   0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                0.3906250   0.3602075   0.4210425
[145-150)   0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Other                NA                0.3244681   0.2744417   0.3744944
[145-150)   0-6 months    ki1135781-COHORTS           GUATEMALA                      Control              NA                0.2600000   0.2054788   0.3145212
[145-150)   0-6 months    ki1135781-COHORTS           GUATEMALA                      Other                NA                0.3709677   0.3041060   0.4378295
[145-150)   0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                0.4074074   0.3754324   0.4393824
[145-150)   0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         LNS                  NA                0.4461538   0.3751725   0.5171352
[145-150)   0-6 months    ki1148112-LCNI-5            MALAWI                         Control              NA                0.5000000   0.3718731   0.6281269
[145-150)   0-6 months    ki1148112-LCNI-5            MALAWI                         LNS                  NA                0.6000000   0.4596441   0.7403559
[145-150)   0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                0.3127472   0.3032642   0.3222302
[145-150)   0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Other                NA                0.2698898   0.2607575   0.2790221
[145-150)   6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                0.2469136   0.1926715   0.3011557
[145-150)   6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                  NA                0.1797386   0.1366977   0.2227794
[145-150)   6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                NA                0.2342342   0.1989832   0.2694852
[145-150)   6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control              NA                0.4594595   0.3774000   0.5415189
[145-150)   6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Other                NA                0.2926829   0.2127085   0.3726573
[145-150)   6-24 months   ki1017093b-PROVIDE          BANGLADESH                     Control              NA                0.2093023   0.1782727   0.2403320
[145-150)   6-24 months   ki1017093b-PROVIDE          BANGLADESH                     Other                NA                0.2698413   0.2118853   0.3277972
[145-150)   6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              NA                0.3513514   0.1969088   0.5057939
[145-150)   6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                NA                0.2241379   0.1163852   0.3318906
[145-150)   6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                 NA                0.3000000   0.1353578   0.4646422
[145-150)   6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                0.2244898   0.1953573   0.2536222
[145-150)   6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Other                NA                0.2364865   0.1849245   0.2880484
[145-150)   6-24 months   ki1135781-COHORTS           GUATEMALA                      Control              NA                0.6122449   0.5662413   0.6582485
[145-150)   6-24 months   ki1135781-COHORTS           GUATEMALA                      Other                NA                0.5462963   0.4969506   0.5956420
[145-150)   6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                0.2000000   0.1701904   0.2298096
[145-150)   6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS                  NA                0.2710280   0.2024982   0.3395579
[145-150)   6-24 months   ki1148112-LCNI-5            MALAWI                         Control              NA                0.4090909   0.3097463   0.5084356
[145-150)   6-24 months   ki1148112-LCNI-5            MALAWI                         LNS                  NA                0.4583333   0.3531794   0.5634872
[145-150)   6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                0.2261962   0.2159884   0.2364041
[145-150)   6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Other                NA                0.2326437   0.2217370   0.2435503
[150-155)   0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                0.3317647   0.2869868   0.3765426
[150-155)   0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                  NA                0.2736077   0.2305994   0.3166161
[150-155)   0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                NA                0.3589436   0.3263586   0.3915285
[150-155)   0-24 months   ki1000111-WASH-Kenya        KENYA                          Control              NA                0.3818182   0.3293737   0.4342626
[150-155)   0-24 months   ki1000111-WASH-Kenya        KENYA                          LNS                  NA                0.3410138   0.2779087   0.4041189
[150-155)   0-24 months   ki1000111-WASH-Kenya        KENYA                          Other                NA                0.3851508   0.3391854   0.4311162
[150-155)   0-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Control              NA                0.3333333   0.2511157   0.4155509
[150-155)   0-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Other                NA                0.2903226   0.1941363   0.3865088
[150-155)   0-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control              NA                0.5982906   0.5345708   0.6620104
[150-155)   0-24 months   ki1000304b-SAS-CompFeed     INDIA                          Other                NA                0.6148148   0.5544004   0.6752293
[150-155)   0-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Control              NA                0.7647059   0.7304459   0.7989658
[150-155)   0-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Other                NA                0.7407407   0.6776586   0.8038229
[150-155)   0-24 months   ki1017093b-PROVIDE          BANGLADESH                     Control              NA                0.3617021   0.3293396   0.3940647
[150-155)   0-24 months   ki1017093b-PROVIDE          BANGLADESH                     Other                NA                0.4379085   0.3776182   0.4981988
[150-155)   0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              NA                0.2751678   0.2034004   0.3469352
[150-155)   0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                NA                0.2703583   0.2206352   0.3200814
[150-155)   0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                 NA                0.3057325   0.2336073   0.3778577
[150-155)   0-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Control              NA                0.4000000   0.3404978   0.4595022
[150-155)   0-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Other                NA                0.5208333   0.4122920   0.6293747
[150-155)   0-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Control              NA                0.5200000   0.4655834   0.5744166
[150-155)   0-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   LNS                  NA                0.5748792   0.4866149   0.6631435
[150-155)   0-24 months   ki1119695-PROBIT            BELARUS                        Control              NA                0.2041667   0.1720628   0.2362705
[150-155)   0-24 months   ki1119695-PROBIT            BELARUS                        Other                NA                0.2322835   0.2031021   0.2614649
[150-155)   0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                0.3822715   0.3703856   0.3941573
[150-155)   0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Other                NA                0.4165232   0.3948898   0.4381567
[150-155)   0-24 months   ki1135781-COHORTS           GUATEMALA                      Control              NA                0.7852761   0.7558761   0.8146760
[150-155)   0-24 months   ki1135781-COHORTS           GUATEMALA                      Other                NA                0.7112299   0.6764761   0.7459838
[150-155)   0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                0.6310680   0.6141850   0.6479509
[150-155)   0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS                  NA                0.5600858   0.5231437   0.5970280
[150-155)   0-24 months   ki1148112-LCNI-5            MALAWI                         Control              NA                0.6875000   0.6432961   0.7317039
[150-155)   0-24 months   ki1148112-LCNI-5            MALAWI                         LNS                  NA                0.6415094   0.5970173   0.6860016
[150-155)   0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                0.3472147   0.3385847   0.3558447
[150-155)   0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Other                NA                0.3208898   0.3130226   0.3287570
[150-155)   0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Control              NA                0.2553191   0.1979378   0.3127005
[150-155)   0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Other                NA                0.3130435   0.2687017   0.3573852
[150-155)   0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Control              NA                0.3333333   0.2952857   0.3713809
[150-155)   0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Other                NA                0.2803738   0.2150922   0.3456554
[150-155)   0-6 months    ki1017093b-PROVIDE          BANGLADESH                     Control              NA                0.1063830   0.0855117   0.1272543
[150-155)   0-6 months    ki1017093b-PROVIDE          BANGLADESH                     Other                NA                0.1184211   0.0790882   0.1577539
[150-155)   0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              NA                0.0939597   0.0470723   0.1408472
[150-155)   0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                NA                0.0786885   0.0484463   0.1089308
[150-155)   0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                 NA                0.1225806   0.0709088   0.1742525
[150-155)   0-6 months    ki1119695-PROBIT            BELARUS                        Control              NA                0.1038961   0.0811074   0.1266848
[150-155)   0-6 months    ki1119695-PROBIT            BELARUS                        Other                NA                0.1142857   0.0963664   0.1322051
[150-155)   0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                0.2038835   0.1928890   0.2148780
[150-155)   0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Other                NA                0.2452830   0.2246522   0.2659139
[150-155)   0-6 months    ki1135781-COHORTS           GUATEMALA                      Control              NA                0.2888889   0.2139288   0.3638490
[150-155)   0-6 months    ki1135781-COHORTS           GUATEMALA                      Other                NA                0.2571429   0.1933953   0.3208904
[150-155)   0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                0.4218750   0.3995270   0.4442230
[150-155)   0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         LNS                  NA                0.3144876   0.2703054   0.3586699
[150-155)   0-6 months    ki1148112-LCNI-5            MALAWI                         Control              NA                0.5365854   0.4558337   0.6173371
[150-155)   0-6 months    ki1148112-LCNI-5            MALAWI                         LNS                  NA                0.4594595   0.3827950   0.5361239
[150-155)   0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                0.2210425   0.2125390   0.2295459
[150-155)   0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Other                NA                0.1749003   0.1675104   0.1822902
[150-155)   6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                0.1747851   0.1349257   0.2146445
[150-155)   6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                  NA                0.1159420   0.0821465   0.1497375
[150-155)   6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                NA                0.1831832   0.1537948   0.2125716
[150-155)   6-24 months   ki1000111-WASH-Kenya        KENYA                          Control              NA                0.0787037   0.0427666   0.1146408
[150-155)   6-24 months   ki1000111-WASH-Kenya        KENYA                          LNS                  NA                0.0774194   0.0353143   0.1195244
[150-155)   6-24 months   ki1000111-WASH-Kenya        KENYA                          Other                NA                0.1174497   0.0808683   0.1540311
[150-155)   6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control              NA                0.3150685   0.2556951   0.3744419
[150-155)   6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Other                NA                0.2976190   0.2660113   0.3292268
[150-155)   6-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Control              NA                0.6315789   0.5839356   0.6792223
[150-155)   6-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Other                NA                0.6029412   0.5115175   0.6943648
[150-155)   6-24 months   ki1017093b-PROVIDE          BANGLADESH                     Control              NA                0.2195122   0.1869440   0.2520804
[150-155)   6-24 months   ki1017093b-PROVIDE          BANGLADESH                     Other                NA                0.2605042   0.2016689   0.3193395
[150-155)   6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              NA                0.1929825   0.1204665   0.2654984
[150-155)   6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                NA                0.1445313   0.1014143   0.1876482
[150-155)   6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                 NA                0.2125984   0.1413686   0.2838282
[150-155)   6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Control              NA                0.3243243   0.2681098   0.3805388
[150-155)   6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   LNS                  NA                0.2608696   0.1742062   0.3475330
[150-155)   6-24 months   ki1119695-PROBIT            BELARUS                        Control              NA                0.0606061   0.0284589   0.0927532
[150-155)   6-24 months   ki1119695-PROBIT            BELARUS                        Other                NA                0.0931174   0.0741923   0.1120425
[150-155)   6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                0.1781818   0.1675832   0.1887805
[150-155)   6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Other                NA                0.1535039   0.1354522   0.1715555
[150-155)   6-24 months   ki1135781-COHORTS           GUATEMALA                      Control              NA                0.5978261   0.5536150   0.6420372
[150-155)   6-24 months   ki1135781-COHORTS           GUATEMALA                      Other                NA                0.5384615   0.4877721   0.5891510
[150-155)   6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                0.2500000   0.2307253   0.2692747
[150-155)   6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS                  NA                0.2591241   0.2159826   0.3022656
[150-155)   6-24 months   ki1148112-LCNI-5            MALAWI                         Control              NA                0.4507042   0.3896090   0.5117994
[150-155)   6-24 months   ki1148112-LCNI-5            MALAWI                         LNS                  NA                0.3750000   0.3185616   0.4314384
[150-155)   6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                0.1599305   0.1509167   0.1689443
[150-155)   6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Other                NA                0.1878010   0.1787911   0.1968108
[155-160)   0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                0.2536585   0.1940602   0.3132569
[155-160)   0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                  NA                0.1871921   0.1335004   0.2408838
[155-160)   0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                NA                0.2386935   0.1967875   0.2805995
[155-160)   0-24 months   ki1000111-WASH-Kenya        KENYA                          Control              NA                0.2820122   0.2475693   0.3164551
[155-160)   0-24 months   ki1000111-WASH-Kenya        KENYA                          LNS                  NA                0.2375297   0.1968677   0.2781916
[155-160)   0-24 months   ki1000111-WASH-Kenya        KENYA                          Other                NA                0.2895928   0.2596853   0.3195003
[155-160)   0-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control              NA                0.4916667   0.4404560   0.5428774
[155-160)   0-24 months   ki1000304b-SAS-CompFeed     INDIA                          Other                NA                0.4718310   0.4271074   0.5165545
[155-160)   0-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Control              NA                0.6250000   0.5622631   0.6877369
[155-160)   0-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Other                NA                0.6444444   0.5404140   0.7484748
[155-160)   0-24 months   ki1017093b-PROVIDE          BANGLADESH                     Control              NA                0.2758621   0.2307189   0.3210053
[155-160)   0-24 months   ki1017093b-PROVIDE          BANGLADESH                     Other                NA                0.2105263   0.1438663   0.2771864
[155-160)   0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              NA                0.2055556   0.1464819   0.2646292
[155-160)   0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                NA                0.2250639   0.1836419   0.2664860
[155-160)   0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                 NA                0.2116402   0.1533676   0.2699128
[155-160)   0-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Control              NA                0.4941176   0.4691555   0.5190798
[155-160)   0-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   LNS                  NA                0.3840948   0.3297916   0.4383979
[155-160)   0-24 months   ki1119695-PROBIT            BELARUS                        Control              NA                0.1832139   0.1643046   0.2021232
[155-160)   0-24 months   ki1119695-PROBIT            BELARUS                        Other                NA                0.1648045   0.1476279   0.1819810
[155-160)   0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                0.3593985   0.3505070   0.3682900
[155-160)   0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Other                NA                0.3572467   0.3416066   0.3728868
[155-160)   0-24 months   ki1135781-COHORTS           GUATEMALA                      Control              NA                0.7407407   0.6874771   0.7940044
[155-160)   0-24 months   ki1135781-COHORTS           GUATEMALA                      Other                NA                0.4923077   0.4256410   0.5589744
[155-160)   0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                0.4148936   0.3999968   0.4297904
[155-160)   0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS                  NA                0.4654206   0.4294416   0.5013995
[155-160)   0-24 months   ki1148112-LCNI-5            MALAWI                         Control              NA                0.5072464   0.4672082   0.5472846
[155-160)   0-24 months   ki1148112-LCNI-5            MALAWI                         LNS                  NA                0.5866667   0.5455515   0.6277819
[155-160)   0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                0.2223747   0.2101097   0.2346398
[155-160)   0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Other                NA                0.2140940   0.2004887   0.2276992
[155-160)   0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Control              NA                0.2135922   0.1799272   0.2472573
[155-160)   0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Other                NA                0.2192982   0.1698472   0.2687493
[155-160)   0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              NA                0.0730337   0.0347847   0.1112828
[155-160)   0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                NA                0.0569948   0.0338519   0.0801377
[155-160)   0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                 NA                0.0531915   0.0210911   0.0852919
[155-160)   0-6 months    ki1119695-PROBIT            BELARUS                        Control              NA                0.1000000   0.0863324   0.1136676
[155-160)   0-6 months    ki1119695-PROBIT            BELARUS                        Other                NA                0.0785441   0.0645559   0.0925322
[155-160)   0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                0.1879562   0.1799091   0.1960033
[155-160)   0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Other                NA                0.1904762   0.1763143   0.2046380
[155-160)   0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                0.2678571   0.2510520   0.2846623
[155-160)   0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         LNS                  NA                0.2779456   0.2366144   0.3192768
[155-160)   0-6 months    ki1148112-LCNI-5            MALAWI                         Control              NA                0.2682927   0.2040085   0.3325769
[155-160)   0-6 months    ki1148112-LCNI-5            MALAWI                         LNS                  NA                0.3043478   0.2336348   0.3750608
[155-160)   0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                0.1435563   0.1322679   0.1548447
[155-160)   0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Other                NA                0.1138846   0.1027212   0.1250479
[155-160)   6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                0.1325967   0.0831560   0.1820373
[155-160)   6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                  NA                0.0962567   0.0539544   0.1385590
[155-160)   6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                NA                0.1416667   0.1056207   0.1777127
[155-160)   6-24 months   ki1000111-WASH-Kenya        KENYA                          Control              NA                0.0932039   0.0680875   0.1183203
[155-160)   6-24 months   ki1000111-WASH-Kenya        KENYA                          LNS                  NA                0.0595238   0.0342169   0.0848307
[155-160)   6-24 months   ki1000111-WASH-Kenya        KENYA                          Other                NA                0.0921053   0.0704271   0.1137834
[155-160)   6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control              NA                0.2795699   0.2214511   0.3376887
[155-160)   6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Other                NA                0.2500000   0.2150009   0.2849991
[155-160)   6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              NA                0.0980392   0.0508829   0.1451955
[155-160)   6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                NA                0.1343750   0.0969776   0.1717724
[155-160)   6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                 NA                0.1320755   0.0794076   0.1847433
[155-160)   6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Control              NA                0.2644628   0.2353646   0.2935610
[155-160)   6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   LNS                  NA                0.1719745   0.1322107   0.2117383
[155-160)   6-24 months   ki1119695-PROBIT            BELARUS                        Control              NA                0.0520170   0.0351234   0.0689105
[155-160)   6-24 months   ki1119695-PROBIT            BELARUS                        Other                NA                0.0577105   0.0483338   0.0670872
[155-160)   6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                0.1802974   0.1722787   0.1883161
[155-160)   6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Other                NA                0.1546894   0.1415124   0.1678664
[155-160)   6-24 months   ki1135781-COHORTS           GUATEMALA                      Control              NA                0.5185185   0.4511178   0.5859192
[155-160)   6-24 months   ki1135781-COHORTS           GUATEMALA                      Other                NA                0.3673469   0.2797418   0.4549521
[155-160)   6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                0.1666667   0.1519965   0.1813369
[155-160)   6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS                  NA                0.2005900   0.1648652   0.2363147
[155-160)   6-24 months   ki1148112-LCNI-5            MALAWI                         Control              NA                0.2710280   0.2299727   0.3120833
[155-160)   6-24 months   ki1148112-LCNI-5            MALAWI                         LNS                  NA                0.3274336   0.2828903   0.3719770
[155-160)   6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                0.0928144   0.0817662   0.1038626
[155-160)   6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Other                NA                0.1169082   0.1047085   0.1291079


### Parameter: E(Y)


mhtcm       agecat        studyid                     country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ------------  --------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
>=160       0-24 months   ki1000111-WASH-Kenya        KENYA                          NA                   NA                0.1831923   0.1700083   0.1963762
>=160       0-24 months   ki1000304b-SAS-CompFeed     INDIA                          NA                   NA                0.4112903   0.2717943   0.5507863
>=160       0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1372855   0.1106228   0.1639482
>=160       0-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   NA                   NA                0.2659372   0.2309935   0.3008809
>=160       0-24 months   ki1119695-PROBIT            BELARUS                        NA                   NA                0.1145675   0.0971001   0.1320348
>=160       0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       NA                   NA                0.2752651   0.2623858   0.2881444
>=160       0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         NA                   NA                0.3294664   0.2850411   0.3738916
>=160       0-24 months   ki1148112-LCNI-5            MALAWI                         NA                   NA                0.4159292   0.3515272   0.4803312
>=160       0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     NA                   NA                0.1212121   0.0915253   0.1508990
>=160       0-6 months    ki1000304b-SAS-CompFeed     INDIA                          NA                   NA                0.1495327   0.0711277   0.2279377
>=160       0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0377953   0.0229511   0.0526394
>=160       0-6 months    ki1119695-PROBIT            BELARUS                        NA                   NA                0.0544053   0.0432387   0.0655720
>=160       0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       NA                   NA                0.1419608   0.1308990   0.1530226
>=160       0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         NA                   NA                0.1630435   0.1193834   0.2067036
>=160       0-6 months    ki1148112-LCNI-5            MALAWI                         NA                   NA                0.2027027   0.1104824   0.2949230
>=160       0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     NA                   NA                0.0578842   0.0338138   0.0819546
>=160       6-24 months   ki1000111-WASH-Kenya        KENYA                          NA                   NA                0.0497355   0.0417315   0.0577394
>=160       6-24 months   ki1000304b-SAS-CompFeed     INDIA                          NA                   NA                0.2242991   0.1136077   0.3349904
>=160       6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0743494   0.0521612   0.0965377
>=160       6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   NA                   NA                0.1239083   0.0999266   0.1478900
>=160       6-24 months   ki1119695-PROBIT            BELARUS                        NA                   NA                0.0388420   0.0295666   0.0481174
>=160       6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       NA                   NA                0.1205508   0.1102630   0.1308386
>=160       6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         NA                   NA                0.1411043   0.1032560   0.1789526
>=160       6-24 months   ki1148112-LCNI-5            MALAWI                         NA                   NA                0.1823204   0.1259150   0.2387259
>=160       6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     NA                   NA                0.0784753   0.0523091   0.1046416
<145        0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     NA                   NA                0.6395864   0.6033934   0.6757794
<145        0-24 months   ki1000304b-SAS-CompFeed     INDIA                          NA                   NA                0.7258065   0.6178827   0.8337302
<145        0-24 months   ki1017093b-PROVIDE          BANGLADESH                     NA                   NA                0.6419753   0.5369198   0.7470308
<145        0-24 months   ki1112895-Guatemala BSC     GUATEMALA                      NA                   NA                0.7021277   0.5699700   0.8342853
<145        0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       NA                   NA                0.5925926   0.4603100   0.7248752
<145        0-24 months   ki1135781-COHORTS           GUATEMALA                      NA                   NA                0.9120000   0.8768126   0.9471874
<145        0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     NA                   NA                0.6070523   0.5878434   0.6262611
<145        0-6 months    ki1000304b-SAS-CompFeed     INDIA                          NA                   NA                0.3750000   0.2317008   0.5182992
<145        0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          NA                   NA                0.6333333   0.5103705   0.7562962
<145        0-6 months    ki1017093b-PROVIDE          BANGLADESH                     NA                   NA                0.2839506   0.1851417   0.3827595
<145        0-6 months    ki1112895-Guatemala BSC     GUATEMALA                      NA                   NA                0.3414634   0.1945098   0.4884170
<145        0-6 months    ki1135781-COHORTS           GUATEMALA                      NA                   NA                0.4166667   0.2908683   0.5424650
<145        0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     NA                   NA                0.4231114   0.4017301   0.4444927
<145        6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     NA                   NA                0.3217158   0.2742459   0.3691858
<145        6-24 months   ki1000304b-SAS-CompFeed     INDIA                          NA                   NA                0.4838710   0.2844592   0.6832827
<145        6-24 months   ki1135781-COHORTS           GUATEMALA                      NA                   NA                0.7108434   0.6127150   0.8089718
<145        6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     NA                   NA                0.3189902   0.2937039   0.3442765
[145-150)   0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     NA                   NA                0.4327052   0.4075061   0.4579044
[145-150)   0-24 months   ki1000111-WASH-Kenya        KENYA                          NA                   NA                0.4705882   0.4019261   0.5392504
[145-150)   0-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       NA                   NA                0.3666667   0.1912782   0.5420551
[145-150)   0-24 months   ki1000304b-SAS-CompFeed     INDIA                          NA                   NA                0.7105263   0.6203909   0.8006618
[145-150)   0-24 months   ki1017093b-PROVIDE          BANGLADESH                     NA                   NA                0.4343891   0.3688901   0.4998882
[145-150)   0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.4418605   0.3674277   0.5162932
[145-150)   0-24 months   ki1112895-Guatemala BSC     GUATEMALA                      NA                   NA                0.4366197   0.3204343   0.5528051
[145-150)   0-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   NA                   NA                0.6481481   0.5032966   0.7929997
[145-150)   0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       NA                   NA                0.5657895   0.5099805   0.6215985
[145-150)   0-24 months   ki1135781-COHORTS           GUATEMALA                      NA                   NA                0.7772622   0.7379348   0.8165895
[145-150)   0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         NA                   NA                0.6381323   0.5792671   0.6969975
[145-150)   0-24 months   ki1148112-LCNI-5            MALAWI                         NA                   NA                0.7526882   0.6645256   0.8408507
[145-150)   0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     NA                   NA                0.4510386   0.4373153   0.4647619
[145-150)   0-6 months    ki1000304b-SAS-CompFeed     INDIA                          NA                   NA                0.4621212   0.3473454   0.5768970
[145-150)   0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          NA                   NA                0.4496124   0.3634344   0.5357904
[145-150)   0-6 months    ki1017093b-PROVIDE          BANGLADESH                     NA                   NA                0.1538462   0.1061696   0.2015227
[145-150)   0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1529412   0.0986757   0.2072067
[145-150)   0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       NA                   NA                0.3412698   0.2826136   0.3999260
[145-150)   0-6 months    ki1135781-COHORTS           GUATEMALA                      NA                   NA                0.3214286   0.2345472   0.4083099
[145-150)   0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         NA                   NA                0.4394904   0.3616058   0.5173751
[145-150)   0-6 months    ki1148112-LCNI-5            MALAWI                         NA                   NA                0.5555556   0.3645553   0.7465558
[145-150)   0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     NA                   NA                0.2913806   0.2781285   0.3046327
[145-150)   6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     NA                   NA                0.2219203   0.1973974   0.2464431
[145-150)   6-24 months   ki1000304b-SAS-CompFeed     INDIA                          NA                   NA                0.3717949   0.2422839   0.5013058
[145-150)   6-24 months   ki1017093b-PROVIDE          BANGLADESH                     NA                   NA                0.2544379   0.1885772   0.3202986
[145-150)   6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.2800000   0.2009717   0.3590283
[145-150)   6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       NA                   NA                0.2335025   0.1742753   0.2927297
[145-150)   6-24 months   ki1135781-COHORTS           GUATEMALA                      NA                   NA                0.5776699   0.5100558   0.6452840
[145-150)   6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         NA                   NA                0.2575758   0.1826914   0.3324601
[145-150)   6-24 months   ki1148112-LCNI-5            MALAWI                         NA                   NA                0.4347826   0.2899436   0.5796217
[145-150)   6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     NA                   NA                0.2295005   0.2145585   0.2444424
[150-155)   0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     NA                   NA                0.3309396   0.3083714   0.3535078
[150-155)   0-24 months   ki1000111-WASH-Kenya        KENYA                          NA                   NA                0.3742331   0.3438888   0.4045775
[150-155)   0-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       NA                   NA                0.3076923   0.1810231   0.4343615
[150-155)   0-24 months   ki1000304b-SAS-CompFeed     INDIA                          NA                   NA                0.6071429   0.5191888   0.6950970
[150-155)   0-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          NA                   NA                0.7464789   0.6746739   0.8182838
[150-155)   0-24 months   ki1017093b-PROVIDE          BANGLADESH                     NA                   NA                0.4200000   0.3514259   0.4885741
[150-155)   0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.2805873   0.2449917   0.3161828
[150-155)   0-24 months   ki1112895-Guatemala BSC     GUATEMALA                      NA                   NA                0.4920635   0.3676213   0.6165056
[150-155)   0-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   NA                   NA                0.5642023   0.4608337   0.6675710
[150-155)   0-24 months   ki1119695-PROBIT            BELARUS                        NA                   NA                0.2186235   0.1755320   0.2617150
[150-155)   0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       NA                   NA                0.4084045   0.3837101   0.4330989
[150-155)   0-24 months   ki1135781-COHORTS           GUATEMALA                      NA                   NA                0.7457143   0.7000283   0.7914002
[150-155)   0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         NA                   NA                0.5729350   0.5322557   0.6136143
[150-155)   0-24 months   ki1148112-LCNI-5            MALAWI                         NA                   NA                0.6651376   0.6023452   0.7279300
[150-155)   0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     NA                   NA                0.3336838   0.3219291   0.3454385
[150-155)   0-6 months    ki1000304b-SAS-CompFeed     INDIA                          NA                   NA                0.2870813   0.2113683   0.3627943
[150-155)   0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          NA                   NA                0.2928571   0.2172048   0.3685095
[150-155)   0-6 months    ki1017093b-PROVIDE          BANGLADESH                     NA                   NA                0.1155779   0.0710448   0.1601110
[150-155)   0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0935961   0.0704442   0.1167479
[150-155)   0-6 months    ki1119695-PROBIT            BELARUS                        NA                   NA                0.1092437   0.0803179   0.1381694
[150-155)   0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       NA                   NA                0.2351544   0.2117562   0.2585526
[150-155)   0-6 months    ki1135781-COHORTS           GUATEMALA                      NA                   NA                0.2750000   0.1765377   0.3734623
[150-155)   0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         NA                   NA                0.3342939   0.2845872   0.3840007
[150-155)   0-6 months    ki1148112-LCNI-5            MALAWI                         NA                   NA                0.5000000   0.3883207   0.6116793
[150-155)   0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     NA                   NA                0.1974242   0.1859894   0.2088590
[150-155)   6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     NA                   NA                0.1639706   0.1442857   0.1836554
[150-155)   6-24 months   ki1000111-WASH-Kenya        KENYA                          NA                   NA                0.0956652   0.0733602   0.1179701
[150-155)   6-24 months   ki1000304b-SAS-CompFeed     INDIA                          NA                   NA                0.3057325   0.2381958   0.3732692
[150-155)   6-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          NA                   NA                0.6091954   0.5060721   0.7123188
[150-155)   6-24 months   ki1017093b-PROVIDE          BANGLADESH                     NA                   NA                0.2500000   0.1826946   0.3173054
[150-155)   6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1730382   0.1397477   0.2063288
[150-155)   6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   NA                   NA                0.2742857   0.1695048   0.3790667
[150-155)   6-24 months   ki1119695-PROBIT            BELARUS                        NA                   NA                0.0774059   0.0405755   0.1142362
[150-155)   6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       NA                   NA                0.1592845   0.1383429   0.1802261
[150-155)   6-24 months   ki1135781-COHORTS           GUATEMALA                      NA                   NA                0.5645933   0.4972132   0.6319734
[150-155)   6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         NA                   NA                0.2575758   0.2103228   0.3048287
[150-155)   6-24 months   ki1148112-LCNI-5            MALAWI                         NA                   NA                0.4148148   0.3313949   0.4982347
[150-155)   6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     NA                   NA                0.1744210   0.1616678   0.1871742
[155-160)   0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     NA                   NA                0.2295285   0.2004785   0.2585786
[155-160)   0-24 months   ki1000111-WASH-Kenya        KENYA                          NA                   NA                0.2758797   0.2560924   0.2956669
[155-160)   0-24 months   ki1000304b-SAS-CompFeed     INDIA                          NA                   NA                0.4809160   0.4116833   0.5501488
[155-160)   0-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          NA                   NA                0.6393443   0.5178415   0.7608471
[155-160)   0-24 months   ki1017093b-PROVIDE          BANGLADESH                     NA                   NA                0.2285714   0.1478683   0.3092745
[155-160)   0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.2171053   0.1877751   0.2464354
[155-160)   0-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   NA                   NA                0.4086728   0.3485073   0.4688383
[155-160)   0-24 months   ki1119695-PROBIT            BELARUS                        NA                   NA                0.1735739   0.1478517   0.1992960
[155-160)   0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       NA                   NA                0.3577713   0.3397804   0.3757622
[155-160)   0-24 months   ki1135781-COHORTS           GUATEMALA                      NA                   NA                0.6050420   0.5168407   0.6932434
[155-160)   0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         NA                   NA                0.4578696   0.4189032   0.4968361
[155-160)   0-24 months   ki1148112-LCNI-5            MALAWI                         NA                   NA                0.5486111   0.4910386   0.6061836
[155-160)   0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     NA                   NA                0.2181880   0.1998733   0.2365027
[155-160)   0-6 months    ki1000304b-SAS-CompFeed     INDIA                          NA                   NA                0.2165899   0.1569129   0.2762669
[155-160)   0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0598404   0.0428765   0.0768043
[155-160)   0-6 months    ki1119695-PROBIT            BELARUS                        NA                   NA                0.0888224   0.0689657   0.1086790
[155-160)   0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       NA                   NA                0.1898564   0.1735679   0.2061449
[155-160)   0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         NA                   NA                0.2764858   0.2318673   0.3211042
[155-160)   0-6 months    ki1148112-LCNI-5            MALAWI                         NA                   NA                0.2873563   0.1917150   0.3829976
[155-160)   0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     NA                   NA                0.1283892   0.1125033   0.1442750
[155-160)   6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     NA                   NA                0.1277473   0.1034824   0.1520121
[155-160)   6-24 months   ki1000111-WASH-Kenya        KENYA                          NA                   NA                0.0853420   0.0713608   0.0993233
[155-160)   6-24 months   ki1000304b-SAS-CompFeed     INDIA                          NA                   NA                0.2634146   0.1926256   0.3342037
[155-160)   6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1250000   0.0991957   0.1508043
[155-160)   6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   NA                   NA                0.1908784   0.1387004   0.2430564
[155-160)   6-24 months   ki1119695-PROBIT            BELARUS                        NA                   NA                0.0550275   0.0357791   0.0742759
[155-160)   6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       NA                   NA                0.1610092   0.1455771   0.1764412
[155-160)   6-24 months   ki1135781-COHORTS           GUATEMALA                      NA                   NA                0.4210526   0.3093135   0.5327917
[155-160)   6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         NA                   NA                0.1950617   0.1564228   0.2337006
[155-160)   6-24 months   ki1148112-LCNI-5            MALAWI                         NA                   NA                0.3000000   0.2393074   0.3606926
[155-160)   6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     NA                   NA                0.1050565   0.0885632   0.1215497


### Parameter: RR


mhtcm       agecat        studyid                     country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ------------  --------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
>=160       0-24 months   ki1000111-WASH-Kenya        KENYA                          Control              Control           1.0000000   1.0000000   1.0000000
>=160       0-24 months   ki1000111-WASH-Kenya        KENYA                          LNS                  Control           0.8672402   0.7019220   1.0714943
>=160       0-24 months   ki1000111-WASH-Kenya        KENYA                          Other                Control           1.1479652   0.9770633   1.3487603
>=160       0-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
>=160       0-24 months   ki1000304b-SAS-CompFeed     INDIA                          Other                Control           0.9703844   0.6981648   1.3487443
>=160       0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              Control           1.0000000   1.0000000   1.0000000
>=160       0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                Control           0.8384211   0.5209881   1.3492628
>=160       0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                 Control           1.1947500   0.7242085   1.9710175
>=160       0-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Control              Control           1.0000000   1.0000000   1.0000000
>=160       0-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   LNS                  Control           0.7997832   0.6985160   0.9157315
>=160       0-24 months   ki1119695-PROBIT            BELARUS                        Control              Control           1.0000000   1.0000000   1.0000000
>=160       0-24 months   ki1119695-PROBIT            BELARUS                        Other                Control           0.8508771   0.7412449   0.9767242
>=160       0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control              Control           1.0000000   1.0000000   1.0000000
>=160       0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Other                Control           0.9551698   0.9114963   1.0009360
>=160       0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
>=160       0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS                  Control           1.1426997   0.9983172   1.3079637
>=160       0-24 months   ki1148112-LCNI-5            MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
>=160       0-24 months   ki1148112-LCNI-5            MALAWI                         LNS                  Control           0.9684601   0.8295094   1.1306864
>=160       0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
>=160       0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Other                Control           1.1026953   0.8634621   1.4082110
>=160       0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
>=160       0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Other                Control           0.6092593   0.3660640   1.0140217
>=160       0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              Control           1.0000000   1.0000000   1.0000000
>=160       0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                Control           0.8770764   0.3172472   2.4248063
>=160       0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                 Control           1.6708861   0.6078334   4.5931341
>=160       0-6 months    ki1119695-PROBIT            BELARUS                        Control              Control           1.0000000   1.0000000   1.0000000
>=160       0-6 months    ki1119695-PROBIT            BELARUS                        Other                Control           0.9238793   0.7575027   1.1267986
>=160       0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control              Control           1.0000000   1.0000000   1.0000000
>=160       0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Other                Control           0.9634282   0.8911959   1.0415150
>=160       0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
>=160       0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         LNS                  Control           1.2384937   0.9467335   1.6201674
>=160       0-6 months    ki1148112-LCNI-5            MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
>=160       0-6 months    ki1148112-LCNI-5            MALAWI                         LNS                  Control           0.4487179   0.2719407   0.7404108
>=160       0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
>=160       0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Other                Control           0.9076115   0.5990675   1.3750682
>=160       6-24 months   ki1000111-WASH-Kenya        KENYA                          Control              Control           1.0000000   1.0000000   1.0000000
>=160       6-24 months   ki1000111-WASH-Kenya        KENYA                          LNS                  Control           1.1399792   0.7355198   1.7668492
>=160       6-24 months   ki1000111-WASH-Kenya        KENYA                          Other                Control           1.1692050   0.8049776   1.6982340
>=160       6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
>=160       6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Other                Control           1.0557377   0.6416533   1.7370473
>=160       6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              Control           1.0000000   1.0000000   1.0000000
>=160       6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                Control           0.9524148   0.4621715   1.9626781
>=160       6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                 Control           1.1203008   0.5018219   2.5010343
>=160       6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Control              Control           1.0000000   1.0000000   1.0000000
>=160       6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   LNS                  Control           0.5928678   0.4906197   0.7164251
>=160       6-24 months   ki1119695-PROBIT            BELARUS                        Control              Control           1.0000000   1.0000000   1.0000000
>=160       6-24 months   ki1119695-PROBIT            BELARUS                        Other                Control           0.8904676   0.7090709   1.1182696
>=160       6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control              Control           1.0000000   1.0000000   1.0000000
>=160       6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Other                Control           1.0381902   0.9532542   1.1306942
>=160       6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
>=160       6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS                  Control           1.3827160   1.0549329   1.8123462
>=160       6-24 months   ki1148112-LCNI-5            MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
>=160       6-24 months   ki1148112-LCNI-5            MALAWI                         LNS                  Control           0.9618421   0.7058506   1.3106744
>=160       6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
>=160       6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Other                Control           1.0779878   0.7739893   1.5013872
<145        0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
<145        0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                  Control           0.9935897   0.8368309   1.1797134
<145        0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                Control           1.0657165   0.9223717   1.2313383
<145        0-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
<145        0-24 months   ki1000304b-SAS-CompFeed     INDIA                          Other                Control           0.8846154   0.7556893   1.0355372
<145        0-24 months   ki1017093b-PROVIDE          BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
<145        0-24 months   ki1017093b-PROVIDE          BANGLADESH                     Other                Control           1.1186441   0.9492389   1.3182820
<145        0-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Control              Control           1.0000000   1.0000000   1.0000000
<145        0-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Other                Control           1.1313131   0.9362713   1.3669856
<145        0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control              Control           1.0000000   1.0000000   1.0000000
<145        0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Other                Control           1.3813953   1.0999182   1.7349045
<145        0-24 months   ki1135781-COHORTS           GUATEMALA                      Control              Control           1.0000000   1.0000000   1.0000000
<145        0-24 months   ki1135781-COHORTS           GUATEMALA                      Other                Control           0.9841270   0.9468666   1.0228536
<145        0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
<145        0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Other                Control           0.9444360   0.9149607   0.9748607
<145        0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
<145        0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Other                Control           1.0967742   0.7436441   1.6175932
<145        0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
<145        0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Other                Control           1.0740741   0.8843111   1.3045580
<145        0-6 months    ki1017093b-PROVIDE          BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
<145        0-6 months    ki1017093b-PROVIDE          BANGLADESH                     Other                Control           1.0564972   0.7458987   1.4964314
<145        0-6 months    ki1112895-Guatemala BSC     GUATEMALA                      Control              Control           1.0000000   1.0000000   1.0000000
<145        0-6 months    ki1112895-Guatemala BSC     GUATEMALA                      Other                Control           0.8357143   0.5422048   1.2881081
<145        0-6 months    ki1135781-COHORTS           GUATEMALA                      Control              Control           1.0000000   1.0000000   1.0000000
<145        0-6 months    ki1135781-COHORTS           GUATEMALA                      Other                Control           0.4402277   0.3118218   0.6215101
<145        0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
<145        0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Other                Control           0.9308474   0.8850190   0.9790490
<145        6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
<145        6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                  Control           0.8939732   0.5736563   1.3931480
<145        6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                Control           1.0989742   0.7630816   1.5827196
<145        6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
<145        6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Other                Control           0.8250000   0.5585089   1.2186466
<145        6-24 months   ki1135781-COHORTS           GUATEMALA                      Control              Control           1.0000000   1.0000000   1.0000000
<145        6-24 months   ki1135781-COHORTS           GUATEMALA                      Other                Control           0.9349206   0.8141531   1.0736022
<145        6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
<145        6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Other                Control           0.9516693   0.8789404   1.0304162
[145-150)   0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
[145-150)   0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                  Control           0.7646864   0.6442910   0.9075794
[145-150)   0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                Control           0.9318247   0.8126380   1.0684921
[145-150)   0-24 months   ki1000111-WASH-Kenya        KENYA                          Control              Control           1.0000000   1.0000000   1.0000000
[145-150)   0-24 months   ki1000111-WASH-Kenya        KENYA                          LNS                  Control           0.6204082   0.3867115   0.9953319
[145-150)   0-24 months   ki1000111-WASH-Kenya        KENYA                          Other                Control           0.9693878   0.7079608   1.3273512
[145-150)   0-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Control              Control           1.0000000   1.0000000   1.0000000
[145-150)   0-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Other                Control           1.2000000   0.7414503   1.9421397
[145-150)   0-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
[145-150)   0-24 months   ki1000304b-SAS-CompFeed     INDIA                          Other                Control           0.7879183   0.7109573   0.8732103
[145-150)   0-24 months   ki1017093b-PROVIDE          BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
[145-150)   0-24 months   ki1017093b-PROVIDE          BANGLADESH                     Other                Control           0.9805318   0.8432814   1.1401208
[145-150)   0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              Control           1.0000000   1.0000000   1.0000000
[145-150)   0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                Control           0.9388235   0.6313515   1.3960363
[145-150)   0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                 Control           0.8400000   0.5199972   1.3569303
[145-150)   0-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Control              Control           1.0000000   1.0000000   1.0000000
[145-150)   0-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Other                Control           1.1644205   0.8914427   1.5209897
[145-150)   0-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Control              Control           1.0000000   1.0000000   1.0000000
[145-150)   0-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   LNS                  Control           1.3273273   1.0398135   1.6943403
[145-150)   0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control              Control           1.0000000   1.0000000   1.0000000
[145-150)   0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Other                Control           0.9407407   0.8523088   1.0383480
[145-150)   0-24 months   ki1135781-COHORTS           GUATEMALA                      Control              Control           1.0000000   1.0000000   1.0000000
[145-150)   0-24 months   ki1135781-COHORTS           GUATEMALA                      Other                Control           0.9160737   0.8706863   0.9638271
[145-150)   0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
[145-150)   0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS                  Control           1.0522436   0.9594718   1.1539856
[145-150)   0-24 months   ki1148112-LCNI-5            MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
[145-150)   0-24 months   ki1148112-LCNI-5            MALAWI                         LNS                  Control           0.9375000   0.8336723   1.0542587
[145-150)   0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
[145-150)   0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Other                Control           0.9416452   0.9135799   0.9705728
[145-150)   0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
[145-150)   0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Other                Control           0.9725490   0.7613329   1.2423627
[145-150)   0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
[145-150)   0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Other                Control           0.9699488   0.8007416   1.1749118
[145-150)   0-6 months    ki1017093b-PROVIDE          BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
[145-150)   0-6 months    ki1017093b-PROVIDE          BANGLADESH                     Other                Control           0.6676955   0.4869023   0.9156194
[145-150)   0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              Control           1.0000000   1.0000000   1.0000000
[145-150)   0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                Control           0.9064626   0.3905342   2.1039756
[145-150)   0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                 Control           0.7809524   0.2850248   2.1397671
[145-150)   0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control              Control           1.0000000   1.0000000   1.0000000
[145-150)   0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Other                Control           0.8306383   0.6988713   0.9872489
[145-150)   0-6 months    ki1135781-COHORTS           GUATEMALA                      Control              Control           1.0000000   1.0000000   1.0000000
[145-150)   0-6 months    ki1135781-COHORTS           GUATEMALA                      Other                Control           1.4267990   1.0821215   1.8812633
[145-150)   0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
[145-150)   0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         LNS                  Control           1.0951049   0.9170883   1.3076764
[145-150)   0-6 months    ki1148112-LCNI-5            MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
[145-150)   0-6 months    ki1148112-LCNI-5            MALAWI                         LNS                  Control           1.2000000   0.8481926   1.6977277
[145-150)   0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
[145-150)   0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Other                Control           0.8629649   0.8246356   0.9030757
[145-150)   6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
[145-150)   6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                  Control           0.7279412   0.5259757   1.0074579
[145-150)   6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                Control           0.9486486   0.7268736   1.2380891
[145-150)   6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
[145-150)   6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Other                Control           0.6370158   0.4593889   0.8833237
[145-150)   6-24 months   ki1017093b-PROVIDE          BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
[145-150)   6-24 months   ki1017093b-PROVIDE          BANGLADESH                     Other                Control           1.2892416   0.9931021   1.6736889
[145-150)   6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              Control           1.0000000   1.0000000   1.0000000
[145-150)   6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                Control           0.6379310   0.3325605   1.2237054
[145-150)   6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                 Control           0.8538462   0.4226772   1.7248464
[145-150)   6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control              Control           1.0000000   1.0000000   1.0000000
[145-150)   6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Other                Control           1.0534398   0.8173647   1.3576993
[145-150)   6-24 months   ki1135781-COHORTS           GUATEMALA                      Control              Control           1.0000000   1.0000000   1.0000000
[145-150)   6-24 months   ki1135781-COHORTS           GUATEMALA                      Other                Control           0.8922840   0.7933700   1.0035301
[145-150)   6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
[145-150)   6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS                  Control           1.3551402   1.0104473   1.8174178
[145-150)   6-24 months   ki1148112-LCNI-5            MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
[145-150)   6-24 months   ki1148112-LCNI-5            MALAWI                         LNS                  Control           1.1203704   0.8021817   1.5647698
[145-150)   6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
[145-150)   6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Other                Control           1.0285038   0.9637029   1.0976620
[150-155)   0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
[150-155)   0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                  Control           0.8247042   0.6703774   1.0145585
[150-155)   0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                Control           1.0819221   0.9195060   1.2730265
[150-155)   0-24 months   ki1000111-WASH-Kenya        KENYA                          Control              Control           1.0000000   1.0000000   1.0000000
[150-155)   0-24 months   ki1000111-WASH-Kenya        KENYA                          LNS                  Control           0.8931314   0.7092989   1.1246088
[150-155)   0-24 months   ki1000111-WASH-Kenya        KENYA                          Other                Control           1.0087283   0.8409113   1.2100358
[150-155)   0-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Control              Control           1.0000000   1.0000000   1.0000000
[150-155)   0-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Other                Control           0.8709677   0.5762630   1.3163865
[150-155)   0-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
[150-155)   0-24 months   ki1000304b-SAS-CompFeed     INDIA                          Other                Control           1.0276190   0.8885121   1.1885048
[150-155)   0-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
[150-155)   0-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Other                Control           0.9686610   0.8797943   1.0665039
[150-155)   0-24 months   ki1017093b-PROVIDE          BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
[150-155)   0-24 months   ki1017093b-PROVIDE          BANGLADESH                     Other                Control           1.2106882   1.0273597   1.4267310
[150-155)   0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              Control           1.0000000   1.0000000   1.0000000
[150-155)   0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                Control           0.9825216   0.7140732   1.3518906
[150-155)   0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                 Control           1.1110766   0.7816504   1.5793392
[150-155)   0-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Control              Control           1.0000000   1.0000000   1.0000000
[150-155)   0-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Other                Control           1.3020833   1.0079530   1.6820437
[150-155)   0-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Control              Control           1.0000000   1.0000000   1.0000000
[150-155)   0-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   LNS                  Control           1.1055370   0.9188110   1.3302104
[150-155)   0-24 months   ki1119695-PROBIT            BELARUS                        Control              Control           1.0000000   1.0000000   1.0000000
[150-155)   0-24 months   ki1119695-PROBIT            BELARUS                        Other                Control           1.1377149   0.9334021   1.3867498
[150-155)   0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control              Control           1.0000000   1.0000000   1.0000000
[150-155)   0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Other                Control           1.0896006   1.0255998   1.1575953
[150-155)   0-24 months   ki1135781-COHORTS           GUATEMALA                      Control              Control           1.0000000   1.0000000   1.0000000
[150-155)   0-24 months   ki1135781-COHORTS           GUATEMALA                      Other                Control           0.9057069   0.8516345   0.9632124
[150-155)   0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
[150-155)   0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS                  Control           0.8875206   0.8265453   0.9529942
[150-155)   0-24 months   ki1148112-LCNI-5            MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
[150-155)   0-24 months   ki1148112-LCNI-5            MALAWI                         LNS                  Control           0.9331046   0.8489018   1.0256596
[150-155)   0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
[150-155)   0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Other                Control           0.9241826   0.8924776   0.9570139
[150-155)   0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
[150-155)   0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Other                Control           1.2260870   0.9400028   1.5992391
[150-155)   0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
[150-155)   0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Other                Control           0.8411215   0.6489953   1.0901240
[150-155)   0-6 months    ki1017093b-PROVIDE          BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
[150-155)   0-6 months    ki1017093b-PROVIDE          BANGLADESH                     Other                Control           1.1131579   0.7568738   1.6371560
[150-155)   0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              Control           1.0000000   1.0000000   1.0000000
[150-155)   0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                Control           0.8374707   0.4460918   1.5722262
[150-155)   0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                 Control           1.3046083   0.6788700   2.5071115
[150-155)   0-6 months    ki1119695-PROBIT            BELARUS                        Control              Control           1.0000000   1.0000000   1.0000000
[150-155)   0-6 months    ki1119695-PROBIT            BELARUS                        Other                Control           1.1000000   0.8403100   1.4399448
[150-155)   0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control              Control           1.0000000   1.0000000   1.0000000
[150-155)   0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Other                Control           1.2030548   1.0886643   1.3294647
[150-155)   0-6 months    ki1135781-COHORTS           GUATEMALA                      Control              Control           1.0000000   1.0000000   1.0000000
[150-155)   0-6 months    ki1135781-COHORTS           GUATEMALA                      Other                Control           0.8901099   0.6217119   1.2743774
[150-155)   0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
[150-155)   0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         LNS                  Control           0.7454522   0.6415237   0.8662173
[150-155)   0-6 months    ki1148112-LCNI-5            MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
[150-155)   0-6 months    ki1148112-LCNI-5            MALAWI                         LNS                  Control           0.8562654   0.6839481   1.0719971
[150-155)   0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
[150-155)   0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Other                Control           0.7912519   0.7473061   0.8377820
[150-155)   6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
[150-155)   6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                  Control           0.6633405   0.4581486   0.9604321
[150-155)   6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                Control           1.0480480   0.7930277   1.3850774
[150-155)   6-24 months   ki1000111-WASH-Kenya        KENYA                          Control              Control           1.0000000   1.0000000   1.0000000
[150-155)   6-24 months   ki1000111-WASH-Kenya        KENYA                          LNS                  Control           0.9836812   0.4835614   2.0010461
[150-155)   6-24 months   ki1000111-WASH-Kenya        KENYA                          Other                Control           1.4923016   0.8586397   2.5935955
[150-155)   6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
[150-155)   6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Other                Control           0.9446170   0.7608498   1.1727692
[150-155)   6-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
[150-155)   6-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Other                Control           0.9546569   0.8059280   1.1308327
[150-155)   6-24 months   ki1017093b-PROVIDE          BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
[150-155)   6-24 months   ki1017093b-PROVIDE          BANGLADESH                     Other                Control           1.1867414   0.9057302   1.5549389
[150-155)   6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              Control           1.0000000   1.0000000   1.0000000
[150-155)   6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                Control           0.7489347   0.4635271   1.2100762
[150-155)   6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                 Control           1.1016464   0.6658868   1.8225693
[150-155)   6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Control              Control           1.0000000   1.0000000   1.0000000
[150-155)   6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   LNS                  Control           0.8043478   0.5532361   1.1694382
[150-155)   6-24 months   ki1119695-PROBIT            BELARUS                        Control              Control           1.0000000   1.0000000   1.0000000
[150-155)   6-24 months   ki1119695-PROBIT            BELARUS                        Other                Control           1.5364372   0.8743300   2.6999411
[150-155)   6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control              Control           1.0000000   1.0000000   1.0000000
[150-155)   6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Other                Control           0.8615014   0.7551314   0.9828551
[150-155)   6-24 months   ki1135781-COHORTS           GUATEMALA                      Control              Control           1.0000000   1.0000000   1.0000000
[150-155)   6-24 months   ki1135781-COHORTS           GUATEMALA                      Other                Control           0.9006993   0.7990788   1.0152431
[150-155)   6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
[150-155)   6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS                  Control           1.0364964   0.8627513   1.2452310
[150-155)   6-24 months   ki1148112-LCNI-5            MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
[150-155)   6-24 months   ki1148112-LCNI-5            MALAWI                         LNS                  Control           0.8320313   0.6794754   1.0188389
[150-155)   6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
[150-155)   6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Other                Control           1.1742663   1.0905217   1.2644420
[155-160)   0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
[155-160)   0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                  Control           0.7379689   0.5093460   1.0692107
[155-160)   0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                Control           0.9410031   0.7017965   1.2617430
[155-160)   0-24 months   ki1000111-WASH-Kenya        KENYA                          Control              Control           1.0000000   1.0000000   1.0000000
[155-160)   0-24 months   ki1000111-WASH-Kenya        KENYA                          LNS                  Control           0.8422674   0.6825317   1.0393868
[155-160)   0-24 months   ki1000111-WASH-Kenya        KENYA                          Other                Control           1.0268803   0.8750990   1.2049872
[155-160)   0-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
[155-160)   0-24 months   ki1000304b-SAS-CompFeed     INDIA                          Other                Control           0.9596562   0.8335430   1.1048501
[155-160)   0-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
[155-160)   0-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Other                Control           1.0311111   0.8526094   1.2469838
[155-160)   0-24 months   ki1017093b-PROVIDE          BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
[155-160)   0-24 months   ki1017093b-PROVIDE          BANGLADESH                     Other                Control           0.7631579   0.5343452   1.0899508
[155-160)   0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              Control           1.0000000   1.0000000   1.0000000
[155-160)   0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                Control           1.0949056   0.7783345   1.5402355
[155-160)   0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                 Control           1.0296010   0.6915461   1.5329105
[155-160)   0-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Control              Control           1.0000000   1.0000000   1.0000000
[155-160)   0-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   LNS                  Control           0.7773346   0.6683812   0.9040486
[155-160)   0-24 months   ki1119695-PROBIT            BELARUS                        Control              Control           1.0000000   1.0000000   1.0000000
[155-160)   0-24 months   ki1119695-PROBIT            BELARUS                        Other                Control           0.8995194   0.7759099   1.0428210
[155-160)   0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control              Control           1.0000000   1.0000000   1.0000000
[155-160)   0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Other                Control           0.9940129   0.9452636   1.0452762
[155-160)   0-24 months   ki1135781-COHORTS           GUATEMALA                      Control              Control           1.0000000   1.0000000   1.0000000
[155-160)   0-24 months   ki1135781-COHORTS           GUATEMALA                      Other                Control           0.6646154   0.5701417   0.7747436
[155-160)   0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
[155-160)   0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS                  Control           1.1217829   1.0301286   1.2215920
[155-160)   0-24 months   ki1148112-LCNI-5            MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
[155-160)   0-24 months   ki1148112-LCNI-5            MALAWI                         LNS                  Control           1.1565714   1.0407115   1.2853298
[155-160)   0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
[155-160)   0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Other                Control           0.9627620   0.8850769   1.0472658
[155-160)   0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
[155-160)   0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Other                Control           1.0267145   0.7786194   1.3538613
[155-160)   0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              Control           1.0000000   1.0000000   1.0000000
[155-160)   0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                Control           0.7803906   0.4022620   1.5139624
[155-160)   0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                 Control           0.7283142   0.3275645   1.6193503
[155-160)   0-6 months    ki1119695-PROBIT            BELARUS                        Control              Control           1.0000000   1.0000000   1.0000000
[155-160)   0-6 months    ki1119695-PROBIT            BELARUS                        Other                Control           0.7854406   0.6272759   0.9834859
[155-160)   0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control              Control           1.0000000   1.0000000   1.0000000
[155-160)   0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Other                Control           1.0134073   0.9300867   1.1041920
[155-160)   0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
[155-160)   0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         LNS                  Control           1.0376636   0.8830052   1.2194105
[155-160)   0-6 months    ki1148112-LCNI-5            MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
[155-160)   0-6 months    ki1148112-LCNI-5            MALAWI                         LNS                  Control           1.1343874   0.8124799   1.5838356
[155-160)   0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
[155-160)   0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Other                Control           0.7933095   0.6996372   0.8995232
[155-160)   6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
[155-160)   6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                  Control           0.7259359   0.4079415   1.2918099
[155-160)   6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                Control           1.0684028   0.6802852   1.6779499
[155-160)   6-24 months   ki1000111-WASH-Kenya        KENYA                          Control              Control           1.0000000   1.0000000   1.0000000
[155-160)   6-24 months   ki1000111-WASH-Kenya        KENYA                          LNS                  Control           0.6386409   0.3860540   1.0564899
[155-160)   6-24 months   ki1000111-WASH-Kenya        KENYA                          Other                Control           0.9882127   0.6909777   1.4133081
[155-160)   6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
[155-160)   6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Other                Control           0.8942308   0.6970651   1.1471650
[155-160)   6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              Control           1.0000000   1.0000000   1.0000000
[155-160)   6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                Control           1.3706250   0.7862819   2.3892358
[155-160)   6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                 Control           1.3471698   0.7212329   2.5163388
[155-160)   6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Control              Control           1.0000000   1.0000000   1.0000000
[155-160)   6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   LNS                  Control           0.6502787   0.5034607   0.8399114
[155-160)   6-24 months   ki1119695-PROBIT            BELARUS                        Control              Control           1.0000000   1.0000000   1.0000000
[155-160)   6-24 months   ki1119695-PROBIT            BELARUS                        Other                Control           1.1094549   0.7710764   1.5963273
[155-160)   6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control              Control           1.0000000   1.0000000   1.0000000
[155-160)   6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Other                Control           0.8579680   0.7793590   0.9445059
[155-160)   6-24 months   ki1135781-COHORTS           GUATEMALA                      Control              Control           1.0000000   1.0000000   1.0000000
[155-160)   6-24 months   ki1135781-COHORTS           GUATEMALA                      Other                Control           0.7084548   0.5399521   0.9295421
[155-160)   6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
[155-160)   6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS                  Control           1.2035398   0.9866940   1.4680419
[155-160)   6-24 months   ki1148112-LCNI-5            MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
[155-160)   6-24 months   ki1148112-LCNI-5            MALAWI                         LNS                  Control           1.2081172   0.9855695   1.4809175
[155-160)   6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
[155-160)   6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Other                Control           1.2595917   1.0751784   1.4756354


### Parameter: PAR


mhtcm       agecat        studyid                     country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ------------  --------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
>=160       0-24 months   ki1000111-WASH-Kenya        KENYA                          Control              NA                 0.0061629   -0.0116918    0.0240176
>=160       0-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control              NA                -0.0068915   -0.1303994    0.1166164
>=160       0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              NA                -0.0039574   -0.0474475    0.0395326
>=160       0-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Control              NA                -0.0464473   -0.0802472   -0.0126474
>=160       0-24 months   ki1119695-PROBIT            BELARUS                        Control              NA                -0.0094267   -0.0204025    0.0015491
>=160       0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                -0.0094864   -0.0205488    0.0015760
>=160       0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                 0.0353487   -0.0056510    0.0763484
>=160       0-24 months   ki1148112-LCNI-5            MALAWI                         Control              NA                -0.0064846   -0.0513128    0.0383436
>=160       0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                 0.0059579   -0.0160952    0.0280110
>=160       0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Control              NA                -0.0419567   -0.1027559    0.0188426
>=160       0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              NA                 0.0037044   -0.0195586    0.0269673
>=160       0-6 months    ki1119695-PROBIT            BELARUS                        Control              NA                -0.0021877   -0.0093162    0.0049407
>=160       0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                -0.0039796   -0.0134934    0.0055342
>=160       0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                 0.0279083   -0.0131689    0.0689856
>=160       0-6 months    ki1148112-LCNI-5            MALAWI                         Control              NA                -0.0830116   -0.1415366   -0.0244866
>=160       0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                -0.0028445   -0.0192197    0.0135307
>=160       6-24 months   ki1000111-WASH-Kenya        KENYA                          Control              NA                 0.0046453   -0.0059909    0.0152814
>=160       6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control              NA                 0.0069078   -0.0850287    0.0988443
>=160       6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              NA                 0.0005239   -0.0352556    0.0363035
>=160       6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Control              NA                -0.0543526   -0.0772034   -0.0315018
>=160       6-24 months   ki1119695-PROBIT            BELARUS                        Control              NA                -0.0022996   -0.0070241    0.0024249
>=160       6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                 0.0033163   -0.0055747    0.0122073
>=160       6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                 0.0339614   -0.0012275    0.0691504
>=160       6-24 months   ki1148112-LCNI-5            MALAWI                         Control              NA                -0.0037261   -0.0442973    0.0368451
>=160       6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                 0.0029198   -0.0173774    0.0232170
<145        0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                 0.0202316   -0.0467163    0.0871794
<145        0-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control              NA                -0.0568022   -0.1416716    0.0280671
<145        0-24 months   ki1017093b-PROVIDE          BANGLADESH                     Control              NA                 0.0510662   -0.0377254    0.1398578
<145        0-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Control              NA                 0.0592705   -0.0491475    0.1676886
<145        0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                 0.1380471    0.0204118    0.2556824
<145        0-24 months   ki1135781-COHORTS           GUATEMALA                      Control              NA                -0.0073548   -0.0332550    0.0185453
<145        0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                -0.0171932   -0.0319601   -0.0024263
<145        0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Control              NA                 0.0220588   -0.0484384    0.0925561
<145        0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Control              NA                 0.0333333   -0.0725595    0.1392262
<145        0-6 months    ki1017093b-PROVIDE          BANGLADESH                     Control              NA                 0.0112233   -0.0734900    0.0959367
<145        0-6 months    ki1112895-Guatemala BSC     GUATEMALA                      Control              NA                -0.0431520   -0.1631024    0.0767985
<145        0-6 months    ki1135781-COHORTS           GUATEMALA                      Control              NA                -0.1695402   -0.2600482   -0.0790322
<145        0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                -0.0150177   -0.0301904    0.0001550
<145        6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                 0.0071091   -0.0773428    0.0915609
<145        6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control              NA                -0.0615836   -0.2087607    0.0855936
<145        6-24 months   ki1135781-COHORTS           GUATEMALA                      Control              NA                -0.0259987   -0.0999601    0.0479626
<145        6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                -0.0078669   -0.0257343    0.0100005
[145-150)   0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                -0.0464614   -0.0933550    0.0004322
[145-150)   0-24 months   ki1000111-WASH-Kenya        KENYA                          Control              NA                -0.0557276   -0.1660162    0.0545611
[145-150)   0-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Control              NA                 0.0333333   -0.0933271    0.1599938
[145-150)   0-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control              NA                -0.0867710   -0.1570380   -0.0165039
[145-150)   0-24 months   ki1017093b-PROVIDE          BANGLADESH                     Control              NA                -0.0062888   -0.0623347    0.0497570
[145-150)   0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              NA                -0.0343300   -0.1657863    0.0971263
[145-150)   0-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Control              NA                 0.0477308   -0.0532277    0.1486894
[145-150)   0-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Control              NA                 0.1187364   -0.0004640    0.2379368
[145-150)   0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                -0.0263158   -0.0747839    0.0221523
[145-150)   0-24 months   ki1135781-COHORTS           GUATEMALA                      Control              NA                -0.0337977   -0.0630787   -0.0045168
[145-150)   0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                 0.0258874   -0.0268942    0.0786690
[145-150)   0-24 months   ki1148112-LCNI-5            MALAWI                         Control              NA                -0.0250896   -0.0905158    0.0403366
[145-150)   0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                -0.0136079   -0.0229906   -0.0042252
[145-150)   0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Control              NA                -0.0066288   -0.0260932    0.0128357
[145-150)   0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Control              NA                -0.0098471   -0.0825713    0.0628772
[145-150)   0-6 months    ki1017093b-PROVIDE          BANGLADESH                     Control              NA                -0.0495437   -0.0885023   -0.0105851
[145-150)   0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              NA                -0.0177905   -0.1170487    0.0814677
[145-150)   0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                -0.0493552   -0.0995082    0.0007979
[145-150)   0-6 months    ki1135781-COHORTS           GUATEMALA                      Control              NA                 0.0614286   -0.0062162    0.1290733
[145-150)   0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                 0.0320830   -0.0389354    0.1031015
[145-150)   0-6 months    ki1148112-LCNI-5            MALAWI                         Control              NA                 0.0555556   -0.0860940    0.1972051
[145-150)   0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                -0.0213666   -0.0306411   -0.0120920
[145-150)   6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                -0.0249933   -0.0724102    0.0224237
[145-150)   6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control              NA                -0.0876646   -0.1855753    0.0102461
[145-150)   6-24 months   ki1017093b-PROVIDE          BANGLADESH                     Control              NA                 0.0451355   -0.0129574    0.1032285
[145-150)   6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              NA                -0.0713514   -0.1977527    0.0550500
[145-150)   6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                 0.0090127   -0.0425543    0.0605798
[145-150)   6-24 months   ki1135781-COHORTS           GUATEMALA                      Control              NA                -0.0345750   -0.0841263    0.0149763
[145-150)   6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                 0.0575758   -0.0111196    0.1262711
[145-150)   6-24 months   ki1148112-LCNI-5            MALAWI                         Control              NA                 0.0256917   -0.0797075    0.1310909
[145-150)   6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                 0.0033042   -0.0076037    0.0142121
[150-155)   0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                -0.0008251   -0.0394833    0.0378330
[150-155)   0-24 months   ki1000111-WASH-Kenya        KENYA                          Control              NA                -0.0075851   -0.0501889    0.0350188
[150-155)   0-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Control              NA                -0.0256410   -0.1220015    0.0707195
[150-155)   0-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control              NA                 0.0088523   -0.0514859    0.0691904
[150-155)   0-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Control              NA                -0.0182270   -0.0813317    0.0448777
[150-155)   0-24 months   ki1017093b-PROVIDE          BANGLADESH                     Control              NA                 0.0582979   -0.0021593    0.1187551
[150-155)   0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              NA                 0.0054195   -0.0571404    0.0679794
[150-155)   0-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Control              NA                 0.0920635   -0.0172312    0.2013582
[150-155)   0-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Control              NA                 0.0442023   -0.0438982    0.1323029
[150-155)   0-24 months   ki1119695-PROBIT            BELARUS                        Control              NA                 0.0144568   -0.0140671    0.0429807
[150-155)   0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                 0.0261330    0.0044872    0.0477788
[150-155)   0-24 months   ki1135781-COHORTS           GUATEMALA                      Control              NA                -0.0395618   -0.0745310   -0.0045925
[150-155)   0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                -0.0581330   -0.0951434   -0.0211225
[150-155)   0-24 months   ki1148112-LCNI-5            MALAWI                         Control              NA                -0.0223624   -0.0669595    0.0222347
[150-155)   0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                -0.0135309   -0.0215025   -0.0055594
[150-155)   0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Control              NA                 0.0317622   -0.0171305    0.0806549
[150-155)   0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Control              NA                -0.0404762   -0.1058647    0.0249123
[150-155)   0-6 months    ki1017093b-PROVIDE          BANGLADESH                     Control              NA                 0.0091949   -0.0301444    0.0485342
[150-155)   0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              NA                -0.0003637   -0.0410907    0.0403633
[150-155)   0-6 months    ki1119695-PROBIT            BELARUS                        Control              NA                 0.0053476   -0.0124643    0.0231595
[150-155)   0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                 0.0312709    0.0106167    0.0519251
[150-155)   0-6 months    ki1135781-COHORTS           GUATEMALA                      Control              NA                -0.0138889   -0.0777310    0.0499532
[150-155)   0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                -0.0875811   -0.1319807   -0.0431814
[150-155)   0-6 months    ki1148112-LCNI-5            MALAWI                         Control              NA                -0.0365854   -0.1137309    0.0405602
[150-155)   0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                -0.0236183   -0.0312632   -0.0159733
[150-155)   6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                -0.0108145   -0.0448858    0.0232568
[150-155)   6-24 months   ki1000111-WASH-Kenya        KENYA                          Control              NA                 0.0169615   -0.0139421    0.0478650
[150-155)   6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control              NA                -0.0093360   -0.0417335    0.0230615
[150-155)   6-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Control              NA                -0.0223835   -0.1138414    0.0690743
[150-155)   6-24 months   ki1017093b-PROVIDE          BANGLADESH                     Control              NA                 0.0304878   -0.0284132    0.0893889
[150-155)   6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              NA                -0.0199442   -0.0828286    0.0429401
[150-155)   6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Control              NA                -0.0500386   -0.1375324    0.0374552
[150-155)   6-24 months   ki1119695-PROBIT            BELARUS                        Control              NA                 0.0167998   -0.0023194    0.0359190
[150-155)   6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                -0.0188973   -0.0369589   -0.0008358
[150-155)   6-24 months   ki1135781-COHORTS           GUATEMALA                      Control              NA                -0.0332328   -0.0840802    0.0176146
[150-155)   6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                 0.0075758   -0.0355673    0.0507188
[150-155)   6-24 months   ki1148112-LCNI-5            MALAWI                         Control              NA                -0.0358894   -0.0926895    0.0209107
[150-155)   6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                 0.0144906    0.0054527    0.0235285
[155-160)   0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                -0.0241300   -0.0750126    0.0267526
[155-160)   0-24 months   ki1000111-WASH-Kenya        KENYA                          Control              NA                -0.0061325   -0.0341352    0.0218701
[155-160)   0-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control              NA                -0.0107506   -0.0560366    0.0345353
[155-160)   0-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Control              NA                 0.0143443   -0.0897087    0.1183972
[155-160)   0-24 months   ki1017093b-PROVIDE          BANGLADESH                     Control              NA                -0.0472906   -0.1141867    0.0196054
[155-160)   0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              NA                 0.0115497   -0.0403824    0.0634818
[155-160)   0-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Control              NA                -0.0854448   -0.1397327   -0.0311570
[155-160)   0-24 months   ki1119695-PROBIT            BELARUS                        Control              NA                -0.0096401   -0.0268047    0.0075246
[155-160)   0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                -0.0016272   -0.0172674    0.0140129
[155-160)   0-24 months   ki1135781-COHORTS           GUATEMALA                      Control              NA                -0.1356987   -0.2060014   -0.0653960
[155-160)   0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                 0.0429760    0.0069695    0.0789826
[155-160)   0-24 months   ki1148112-LCNI-5            MALAWI                         Control              NA                 0.0413647   -0.0000059    0.0827354
[155-160)   0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                -0.0041868   -0.0177920    0.0094184
[155-160)   0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Control              NA                 0.0029976   -0.0467840    0.0527793
[155-160)   0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              NA                -0.0131933   -0.0457229    0.0193364
[155-160)   0-6 months    ki1119695-PROBIT            BELARUS                        Control              NA                -0.0111776   -0.0254386    0.0030833
[155-160)   0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                 0.0019002   -0.0122618    0.0160621
[155-160)   0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                 0.0086286   -0.0327041    0.0499613
[155-160)   0-6 months    ki1148112-LCNI-5            MALAWI                         Control              NA                 0.0190636   -0.0517516    0.0898789
[155-160)   0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                -0.0151671   -0.0263876   -0.0039466
[155-160)   6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                -0.0048494   -0.0474838    0.0377849
[155-160)   6-24 months   ki1000111-WASH-Kenya        KENYA                          Control              NA                -0.0078619   -0.0279371    0.0122133
[155-160)   6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control              NA                -0.0161553   -0.0540245    0.0217140
[155-160)   6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              NA                 0.0269608   -0.0156175    0.0695390
[155-160)   6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Control              NA                -0.0735844   -0.1165476   -0.0306213
[155-160)   6-24 months   ki1119695-PROBIT            BELARUS                        Control              NA                 0.0030105   -0.0064715    0.0124926
[155-160)   6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                -0.0192882   -0.0324734   -0.0061031
[155-160)   6-24 months   ki1135781-COHORTS           GUATEMALA                      Control              NA                -0.0974659   -0.1865881   -0.0083437
[155-160)   6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                 0.0283951   -0.0073506    0.0641407
[155-160)   6-24 months   ki1148112-LCNI-5            MALAWI                         Control              NA                 0.0289720   -0.0157276    0.0736716
[155-160)   6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                 0.0122421   -0.0000052    0.0244893


### Parameter: PAF


mhtcm       agecat        studyid                     country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ------------  --------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
>=160       0-24 months   ki1000111-WASH-Kenya        KENYA                          Control              NA                 0.0336417   -0.0688884    0.1263369
>=160       0-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control              NA                -0.0167558   -0.3730387    0.2470770
>=160       0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              NA                -0.0288264   -0.3997536    0.2438071
>=160       0-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Control              NA                -0.1746550   -0.3332512   -0.0349245
>=160       0-24 months   ki1119695-PROBIT            BELARUS                        Control              NA                -0.0822807   -0.1923105    0.0175953
>=160       0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                -0.0344627   -0.0768910    0.0062939
>=160       0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                 0.1072908   -0.0111666    0.2118710
>=160       0-24 months   ki1148112-LCNI-5            MALAWI                         Control              NA                -0.0155906   -0.1311810    0.0881881
>=160       0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                 0.0491525   -0.1408050    0.2074799
>=160       0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Control              NA                -0.2805851   -0.9275948    0.1492516
>=160       0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              NA                 0.0980114   -0.7824442    0.5435574
>=160       0-6 months    ki1119695-PROBIT            BELARUS                        Control              NA                -0.0402120   -0.1862042    0.0878122
>=160       0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                -0.0280331   -0.0992999    0.0386134
>=160       0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                 0.1711712   -0.0670469    0.3562071
>=160       0-6 months    ki1148112-LCNI-5            MALAWI                         Control              NA                -0.4095238   -0.9146101   -0.0376825
>=160       0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                -0.0491414   -0.3926840    0.2096572
>=160       6-24 months   ki1000111-WASH-Kenya        KENYA                          Control              NA                 0.0933995   -0.1471781    0.2835250
>=160       6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control              NA                 0.0307971   -0.4606940    0.3569124
>=160       6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              NA                 0.0070470   -0.6121585    0.3884251
>=160       6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Control              NA                -0.4386516   -0.7263484   -0.1988996
>=160       6-24 months   ki1119695-PROBIT            BELARUS                        Control              NA                -0.0592036   -0.1970658    0.0627815
>=160       6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                 0.0275098   -0.0469361    0.0966619
>=160       6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                 0.2406832    0.0237107    0.4094353
>=160       6-24 months   ki1148112-LCNI-5            MALAWI                         Control              NA                -0.0204369   -0.2748129    0.1831809
>=160       6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                 0.0372063   -0.2471373    0.2567205
<145        0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                 0.0316323   -0.0789496    0.1308806
<145        0-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control              NA                -0.0782609   -0.2122402    0.0409108
<145        0-24 months   ki1017093b-PROVIDE          BANGLADESH                     Control              NA                 0.0795455   -0.0572050    0.1986071
<145        0-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Control              NA                 0.0844156   -0.0688031    0.2156696
<145        0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                 0.2329545    0.0622693    0.3725717
<145        0-24 months   ki1135781-COHORTS           GUATEMALA                      Control              NA                -0.0080645   -0.0371040    0.0201619
<145        0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                -0.0283225   -0.0536493   -0.0036045
<145        0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Control              NA                 0.0588235   -0.1368255    0.2208011
<145        0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Control              NA                 0.0526316   -0.1198804    0.1985690
<145        0-6 months    ki1017093b-PROVIDE          BANGLADESH                     Control              NA                 0.0395257   -0.2944700    0.2873447
<145        0-6 months    ki1112895-Guatemala BSC     GUATEMALA                      Control              NA                -0.1263736   -0.6022238    0.2081521
<145        0-6 months    ki1135781-COHORTS           GUATEMALA                      Control              NA                -0.4068966   -0.7628155   -0.1228389
<145        0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                -0.0354935   -0.0733256    0.0010051
<145        6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                 0.0220974   -0.2790141    0.2523198
<145        6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control              NA                -0.1272727   -0.5332606    0.1712147
<145        6-24 months   ki1135781-COHORTS           GUATEMALA                      Control              NA                -0.0365745   -0.1502946    0.0659030
<145        6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                -0.0246619   -0.0837046    0.0311641
[145-150)   0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                -0.1073743   -0.2213647   -0.0040227
[145-150)   0-24 months   ki1000111-WASH-Kenya        KENYA                          Control              NA                -0.1184211   -0.3799239    0.0935256
[145-150)   0-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Control              NA                 0.0909091   -0.2862209    0.3574617
[145-150)   0-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control              NA                -0.1221221   -0.2385335   -0.0166524
[145-150)   0-24 months   ki1017093b-PROVIDE          BANGLADESH                     Control              NA                -0.0144774   -0.1541921    0.1083249
[145-150)   0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              NA                -0.0776942   -0.4205877    0.1824335
[145-150)   0-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Control              NA                 0.1093190   -0.1230217    0.2935910
[145-150)   0-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Control              NA                 0.1831933    0.0113268    0.3251833
[145-150)   0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                -0.0465116   -0.1401439    0.0394312
[145-150)   0-24 months   ki1135781-COHORTS           GUATEMALA                      Control              NA                -0.0434830   -0.0835713   -0.0048779
[145-150)   0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                 0.0405674   -0.0421829    0.1167473
[145-150)   0-24 months   ki1148112-LCNI-5            MALAWI                         Control              NA                -0.0333333   -0.1272151    0.0527293
[145-150)   0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                -0.0301701   -0.0518350   -0.0089515
[145-150)   0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Control              NA                -0.0143443   -0.0581247    0.0276247
[145-150)   0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Control              NA                -0.0219012   -0.2013293    0.1307278
[145-150)   0-6 months    ki1017093b-PROVIDE          BANGLADESH                     Control              NA                -0.3220339   -0.7093507   -0.0224781
[145-150)   0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              NA                -0.1163227   -0.9951262    0.3753897
[145-150)   0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                -0.1446221   -0.3263959    0.0122408
[145-150)   0-6 months    ki1135781-COHORTS           GUATEMALA                      Control              NA                 0.1911111   -0.0021407    0.3470964
[145-150)   0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                 0.0730005   -0.0896886    0.2114004
[145-150)   0-6 months    ki1148112-LCNI-5            MALAWI                         Control              NA                 0.1000000   -0.1628724    0.3034490
[145-150)   0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                -0.0733287   -0.1081233   -0.0396266
[145-150)   6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                -0.1126228   -0.3480239    0.0816709
[145-150)   6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control              NA                -0.2357875   -0.6153790    0.0546053
[145-150)   6-24 months   ki1017093b-PROVIDE          BANGLADESH                     Control              NA                 0.1773932   -0.0351554    0.3462991
[145-150)   6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              NA                -0.2548263   -0.7979461    0.1242291
[145-150)   6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                 0.0385980   -0.1990573    0.2291497
[145-150)   6-24 months   ki1135781-COHORTS           GUATEMALA                      Control              NA                -0.0598525   -0.1549135    0.0273840
[145-150)   6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                 0.2235294   -0.0159012    0.4065303
[145-150)   6-24 months   ki1148112-LCNI-5            MALAWI                         Control              NA                 0.0590909   -0.1995347    0.2619556
[145-150)   6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                 0.0143975   -0.0335825    0.0601503
[150-155)   0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                -0.0024934   -0.1263846    0.1077711
[150-155)   0-24 months   ki1000111-WASH-Kenya        KENYA                          Control              NA                -0.0202683   -0.1407087    0.0874556
[150-155)   0-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Control              NA                -0.0833333   -0.4827347    0.2084820
[150-155)   0-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control              NA                 0.0145802   -0.0883883    0.1078072
[150-155)   0-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Control              NA                -0.0244173   -0.1147917    0.0586306
[150-155)   0-24 months   ki1017093b-PROVIDE          BANGLADESH                     Control              NA                 0.1388045    0.0049409    0.2546596
[150-155)   0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              NA                 0.0193148   -0.2310220    0.2187439
[150-155)   0-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Control              NA                 0.1870968   -0.0168491    0.3501380
[150-155)   0-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Control              NA                 0.0783448   -0.0776835    0.2117832
[150-155)   0-24 months   ki1119695-PROBIT            BELARUS                        Control              NA                 0.0661265   -0.0643862    0.1806361
[150-155)   0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                 0.0639880    0.0130035    0.1123389
[150-155)   0-24 months   ki1135781-COHORTS           GUATEMALA                      Control              NA                -0.0530522   -0.1036562   -0.0047685
[150-155)   0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                -0.1014652   -0.1750331   -0.0325034
[150-155)   0-24 months   ki1148112-LCNI-5            MALAWI                         Control              NA                -0.0336207   -0.1053391    0.0334444
[150-155)   0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                -0.0405501   -0.0657315   -0.0159637
[150-155)   0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Control              NA                 0.1106383   -0.0561680    0.2511000
[150-155)   0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Control              NA                -0.1382114   -0.4237474    0.0900597
[150-155)   0-6 months    ki1017093b-PROVIDE          BANGLADESH                     Control              NA                 0.0795560   -0.2941180    0.3453323
[150-155)   0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              NA                -0.0038856   -0.5485653    0.3492130
[150-155)   0-6 months    ki1119695-PROBIT            BELARUS                        Control              NA                 0.0489510   -0.1198666    0.1923198
[150-155)   0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                 0.1329803    0.0531067    0.2061163
[150-155)   0-6 months    ki1135781-COHORTS           GUATEMALA                      Control              NA                -0.0505051   -0.3255051    0.1674413
[150-155)   0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                -0.2619881   -0.4422837   -0.1042308
[150-155)   0-6 months    ki1148112-LCNI-5            MALAWI                         Control              NA                -0.0731707   -0.2526998    0.0806294
[150-155)   0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                -0.1196320   -0.1641557   -0.0768111
[150-155)   6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                -0.0659540   -0.2952713    0.1227646
[150-155)   6-24 months   ki1000111-WASH-Kenya        KENYA                          Control              NA                 0.1773003   -0.2151024    0.4429814
[150-155)   6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control              NA                -0.0305365   -0.1458908    0.0732053
[150-155)   6-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Control              NA                -0.0367428   -0.2047094    0.1078051
[150-155)   6-24 months   ki1017093b-PROVIDE          BANGLADESH                     Control              NA                 0.1219512   -0.1120941    0.3067406
[150-155)   6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              NA                -0.1152591   -0.5443737    0.1946231
[150-155)   6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Control              NA                -0.1824324   -0.6301117    0.1423002
[150-155)   6-24 months   ki1119695-PROBIT            BELARUS                        Control              NA                 0.2170352   -0.0319267    0.4059328
[150-155)   6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                -0.1186388   -0.2532295    0.0014975
[150-155)   6-24 months   ki1135781-COHORTS           GUATEMALA                      Control              NA                -0.0588615   -0.1587706    0.0324335
[150-155)   6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                 0.0294118   -0.1475842    0.1791090
[150-155)   6-24 months   ki1148112-LCNI-5            MALAWI                         Control              NA                -0.0865191   -0.2465869    0.0529952
[150-155)   6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                 0.0830781    0.0341021    0.1295708
[155-160)   0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                -0.1051285   -0.3504435    0.0956237
[155-160)   0-24 months   ki1000111-WASH-Kenya        KENYA                          Control              NA                -0.0222290   -0.1289396    0.0743949
[155-160)   0-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control              NA                -0.0223545   -0.1234039    0.0696055
[155-160)   0-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Control              NA                 0.0224359   -0.1503585    0.1692750
[155-160)   0-24 months   ki1017093b-PROVIDE          BANGLADESH                     Control              NA                -0.2068966   -0.6204021    0.1010878
[155-160)   0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              NA                 0.0531987   -0.2188679    0.2645365
[155-160)   0-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Control              NA                -0.2090789   -0.3816938   -0.0580287
[155-160)   0-24 months   ki1119695-PROBIT            BELARUS                        Control              NA                -0.0555386   -0.1655462    0.0440861
[155-160)   0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                -0.0045483   -0.0494367    0.0384201
[155-160)   0-24 months   ki1135781-COHORTS           GUATEMALA                      Control              NA                -0.2242798   -0.3766614   -0.0887652
[155-160)   0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                 0.0938608    0.0196551    0.1624496
[155-160)   0-24 months   ki1148112-LCNI-5            MALAWI                         Control              NA                 0.0753990    0.0027450    0.1427599
[155-160)   0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                -0.0191888   -0.0847733    0.0424306
[155-160)   0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Control              NA                 0.0138401   -0.2410392    0.2163734
[155-160)   0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              NA                -0.2204744   -0.9005669    0.2162561
[155-160)   0-6 months    ki1119695-PROBIT            BELARUS                        Control              NA                -0.1258427   -0.3233762    0.0422060
[155-160)   0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                 0.0100085   -0.0666631    0.0811689
[155-160)   0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                 0.0312083   -0.1250193    0.1657411
[155-160)   0-6 months    ki1148112-LCNI-5            MALAWI                         Control              NA                 0.0663415   -0.1951894    0.2706443
[155-160)   0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                -0.1181340   -0.2208077   -0.0240955
[155-160)   6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                -0.0379611   -0.4315248    0.2474016
[155-160)   6-24 months   ki1000111-WASH-Kenya        KENYA                          Control              NA                -0.0921218   -0.3541304    0.1191911
[155-160)   6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control              NA                -0.0613301   -0.2268181    0.0818348
[155-160)   6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              NA                 0.2156863   -0.2073931    0.4905155
[155-160)   6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Control              NA                -0.3855043   -0.7429985   -0.1013332
[155-160)   6-24 months   ki1119695-PROBIT            BELARUS                        Control              NA                 0.0547095   -0.1243780    0.2052725
[155-160)   6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                -0.1197958   -0.2155664   -0.0315707
[155-160)   6-24 months   ki1135781-COHORTS           GUATEMALA                      Control              NA                -0.2314815   -0.5250256    0.0055599
[155-160)   6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                 0.1455696   -0.0267311    0.2889557
[155-160)   6-24 months   ki1148112-LCNI-5            MALAWI                         Control              NA                 0.0965732   -0.0493332    0.2221918
[155-160)   6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                 0.1165286    0.0064736    0.2143927
