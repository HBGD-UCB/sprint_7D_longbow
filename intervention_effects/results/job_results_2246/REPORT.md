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

* mage
* agecat
* studyid
* country

## Data Summary

mage      agecat        studyid                     country                        tr          ever_stunted   n_cell       n
--------  ------------  --------------------------  -----------------------------  ---------  -------------  -------  ------
[20-25)   0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Control                0       15      87
[20-25)   0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Control                1        4      87
[20-25)   0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                    0       28      87
[20-25)   0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                    1        3      87
[20-25)   0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Other                  0       36      87
[20-25)   0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Other                  1        1      87
[25-30)   0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Control                0       11      61
[25-30)   0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Control                1        1      61
[25-30)   0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                    0       16      61
[25-30)   0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                    1        1      61
[25-30)   0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Other                  0       29      61
[25-30)   0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Other                  1        3      61
<20       0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Control                0        7      59
<20       0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Control                1        1      59
<20       0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                    0       14      59
<20       0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                    1        3      59
<20       0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Other                  0       29      59
<20       0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Other                  1        5      59
>=30      0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Control                0        4      25
>=30      0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Control                1        0      25
>=30      0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                    0        4      25
>=30      0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                    1        0      25
>=30      0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Other                  0       16      25
>=30      0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Other                  1        1      25
<20       0-6 months    ki1000111-WASH-Kenya        KENYA                          Control                0       10      31
<20       0-6 months    ki1000111-WASH-Kenya        KENYA                          Control                1        1      31
<20       0-6 months    ki1000111-WASH-Kenya        KENYA                          LNS                    0        7      31
<20       0-6 months    ki1000111-WASH-Kenya        KENYA                          LNS                    1        0      31
<20       0-6 months    ki1000111-WASH-Kenya        KENYA                          Other                  0       11      31
<20       0-6 months    ki1000111-WASH-Kenya        KENYA                          Other                  1        2      31
[20-25)   0-6 months    ki1000111-WASH-Kenya        KENYA                          Control                0        4      24
[20-25)   0-6 months    ki1000111-WASH-Kenya        KENYA                          Control                1        0      24
[20-25)   0-6 months    ki1000111-WASH-Kenya        KENYA                          LNS                    0        8      24
[20-25)   0-6 months    ki1000111-WASH-Kenya        KENYA                          LNS                    1        0      24
[20-25)   0-6 months    ki1000111-WASH-Kenya        KENYA                          Other                  0       11      24
[20-25)   0-6 months    ki1000111-WASH-Kenya        KENYA                          Other                  1        1      24
[25-30)   0-6 months    ki1000111-WASH-Kenya        KENYA                          Control                0        5      18
[25-30)   0-6 months    ki1000111-WASH-Kenya        KENYA                          Control                1        1      18
[25-30)   0-6 months    ki1000111-WASH-Kenya        KENYA                          LNS                    0        7      18
[25-30)   0-6 months    ki1000111-WASH-Kenya        KENYA                          LNS                    1        0      18
[25-30)   0-6 months    ki1000111-WASH-Kenya        KENYA                          Other                  0        5      18
[25-30)   0-6 months    ki1000111-WASH-Kenya        KENYA                          Other                  1        0      18
>=30      0-6 months    ki1000111-WASH-Kenya        KENYA                          Control                0        6      19
>=30      0-6 months    ki1000111-WASH-Kenya        KENYA                          Control                1        0      19
>=30      0-6 months    ki1000111-WASH-Kenya        KENYA                          LNS                    0        1      19
>=30      0-6 months    ki1000111-WASH-Kenya        KENYA                          LNS                    1        0      19
>=30      0-6 months    ki1000111-WASH-Kenya        KENYA                          Other                  0       10      19
>=30      0-6 months    ki1000111-WASH-Kenya        KENYA                          Other                  1        2      19
>=30      0-6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Control                0       11      40
>=30      0-6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Control                1        9      40
>=30      0-6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Maternal               0       15      40
>=30      0-6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Maternal               1        5      40
[25-30)   0-6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Control                0       14      29
[25-30)   0-6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Control                1        0      29
[25-30)   0-6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Maternal               0       14      29
[25-30)   0-6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Maternal               1        1      29
<20       0-6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Control                1        1       1
[20-25)   0-6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Control                0        8      24
[20-25)   0-6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Control                1        1      24
[20-25)   0-6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Maternal               0       12      24
[20-25)   0-6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Maternal               1        3      24
[20-25)   0-6 months    ki1000304-EU                INDIA                          Control                0        0       6
[20-25)   0-6 months    ki1000304-EU                INDIA                          Control                1        2       6
[20-25)   0-6 months    ki1000304-EU                INDIA                          Zinc                   0        3       6
[20-25)   0-6 months    ki1000304-EU                INDIA                          Zinc                   1        1       6
<20       0-6 months    ki1000304-EU                INDIA                          Zinc                   0        1       2
<20       0-6 months    ki1000304-EU                INDIA                          Zinc                   1        1       2
[25-30)   0-6 months    ki1000304-EU                INDIA                          Control                0        2       6
[25-30)   0-6 months    ki1000304-EU                INDIA                          Control                1        2       6
[25-30)   0-6 months    ki1000304-EU                INDIA                          Zinc                   0        1       6
[25-30)   0-6 months    ki1000304-EU                INDIA                          Zinc                   1        1       6
[20-25)   0-6 months    ki1000304-VITAMIN-A         INDIA                          Control                0       50     144
[20-25)   0-6 months    ki1000304-VITAMIN-A         INDIA                          Control                1       29     144
[20-25)   0-6 months    ki1000304-VITAMIN-A         INDIA                          VitA                   0       40     144
[20-25)   0-6 months    ki1000304-VITAMIN-A         INDIA                          VitA                   1       25     144
[25-30)   0-6 months    ki1000304-VITAMIN-A         INDIA                          Control                0       39     113
[25-30)   0-6 months    ki1000304-VITAMIN-A         INDIA                          Control                1       15     113
[25-30)   0-6 months    ki1000304-VITAMIN-A         INDIA                          VitA                   0       46     113
[25-30)   0-6 months    ki1000304-VITAMIN-A         INDIA                          VitA                   1       13     113
>=30      0-6 months    ki1000304-VITAMIN-A         INDIA                          Control                0       19      53
>=30      0-6 months    ki1000304-VITAMIN-A         INDIA                          Control                1        4      53
>=30      0-6 months    ki1000304-VITAMIN-A         INDIA                          VitA                   0       17      53
>=30      0-6 months    ki1000304-VITAMIN-A         INDIA                          VitA                   1       13      53
<20       0-6 months    ki1000304-VITAMIN-A         INDIA                          Control                0       10      23
<20       0-6 months    ki1000304-VITAMIN-A         INDIA                          Control                1        5      23
<20       0-6 months    ki1000304-VITAMIN-A         INDIA                          VitA                   0        5      23
<20       0-6 months    ki1000304-VITAMIN-A         INDIA                          VitA                   1        3      23
>=30      0-6 months    ki1000304-Vitamin-B12       INDIA                          Other                  0        1       1
[25-30)   0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Control                0       61     213
[25-30)   0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Control                1       36     213
[25-30)   0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Other                  0       81     213
[25-30)   0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Other                  1       35     213
<20       0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Control                0       39     106
<20       0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Control                1       14     106
<20       0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Other                  0       38     106
<20       0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Other                  1       15     106
>=30      0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Control                0       30      94
>=30      0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Control                1       15      94
>=30      0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Other                  0       34      94
>=30      0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Other                  1       15      94
[20-25)   0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Control                0      134     379
[20-25)   0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Control                1       38     379
[20-25)   0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Other                  0      152     379
[20-25)   0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Other                  1       55     379
[25-30)   0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Control                0       18     142
[25-30)   0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Control                1       19     142
[25-30)   0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Other                  0       63     142
[25-30)   0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Other                  1       42     142
>=30      0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Control                0       14      91
>=30      0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Control                1        6      91
>=30      0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Other                  0       49      91
>=30      0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Other                  1       22      91
[20-25)   0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Control                0       26     147
[20-25)   0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Control                1       14     147
[20-25)   0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Other                  0       67     147
[20-25)   0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Other                  1       40     147
<20       0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Control                0        5      36
<20       0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Control                1        3      36
<20       0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Other                  0       15      36
<20       0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Other                  1       13      36
>=30      0-6 months    ki1017093b-PROVIDE          BANGLADESH                     Control                0       26     118
>=30      0-6 months    ki1017093b-PROVIDE          BANGLADESH                     Control                1        7     118
>=30      0-6 months    ki1017093b-PROVIDE          BANGLADESH                     Other                  0       74     118
>=30      0-6 months    ki1017093b-PROVIDE          BANGLADESH                     Other                  1       11     118
[25-30)   0-6 months    ki1017093b-PROVIDE          BANGLADESH                     Control                0       37     193
[25-30)   0-6 months    ki1017093b-PROVIDE          BANGLADESH                     Control                1        6     193
[25-30)   0-6 months    ki1017093b-PROVIDE          BANGLADESH                     Other                  0      131     193
[25-30)   0-6 months    ki1017093b-PROVIDE          BANGLADESH                     Other                  1       19     193
[20-25)   0-6 months    ki1017093b-PROVIDE          BANGLADESH                     Control                0       67     255
[20-25)   0-6 months    ki1017093b-PROVIDE          BANGLADESH                     Control                1        8     255
[20-25)   0-6 months    ki1017093b-PROVIDE          BANGLADESH                     Other                  0      158     255
[20-25)   0-6 months    ki1017093b-PROVIDE          BANGLADESH                     Other                  1       22     255
<20       0-6 months    ki1017093b-PROVIDE          BANGLADESH                     Control                0       12      74
<20       0-6 months    ki1017093b-PROVIDE          BANGLADESH                     Control                1        3      74
<20       0-6 months    ki1017093b-PROVIDE          BANGLADESH                     Other                  0       46      74
<20       0-6 months    ki1017093b-PROVIDE          BANGLADESH                     Other                  1       13      74
>=30      0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control                0      158     607
>=30      0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control                1        6     607
>=30      0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                  0      144     607
>=30      0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                  1       10     607
>=30      0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                   0      269     607
>=30      0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                   1       20     607
[20-25)   0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control                0      155     694
[20-25)   0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control                1       16     694
[20-25)   0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                  0      174     694
[20-25)   0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                  1       12     694
[20-25)   0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                   0      311     694
[20-25)   0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                   1       26     694
<20       0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control                0       32     153
<20       0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control                1        5     153
<20       0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                  0       32     153
<20       0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                  1        1     153
<20       0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                   0       78     153
<20       0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                   1        5     153
[25-30)   0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control                0      171     762
[25-30)   0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control                1       12     762
[25-30)   0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                  0      164     762
[25-30)   0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                  1       12     762
[25-30)   0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                   0      372     762
[25-30)   0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                   1       31     762
[25-30)   0-6 months    ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc                   0       16      19
[25-30)   0-6 months    ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc                   1        3      19
[20-25)   0-6 months    ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc                   0        9      11
[20-25)   0-6 months    ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc                   1        2      11
>=30      0-6 months    ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc                   0        8       8
[20-25)   0-6 months    ki1112895-Guatemala BSC     GUATEMALA                      Control                0       37      91
[20-25)   0-6 months    ki1112895-Guatemala BSC     GUATEMALA                      Control                1       12      91
[20-25)   0-6 months    ki1112895-Guatemala BSC     GUATEMALA                      Other                  0       33      91
[20-25)   0-6 months    ki1112895-Guatemala BSC     GUATEMALA                      Other                  1        9      91
[25-30)   0-6 months    ki1112895-Guatemala BSC     GUATEMALA                      Control                0       20      57
[25-30)   0-6 months    ki1112895-Guatemala BSC     GUATEMALA                      Control                1        5      57
[25-30)   0-6 months    ki1112895-Guatemala BSC     GUATEMALA                      Other                  0       27      57
[25-30)   0-6 months    ki1112895-Guatemala BSC     GUATEMALA                      Other                  1        5      57
<20       0-6 months    ki1112895-Guatemala BSC     GUATEMALA                      Control                0       12      39
<20       0-6 months    ki1112895-Guatemala BSC     GUATEMALA                      Control                1        7      39
<20       0-6 months    ki1112895-Guatemala BSC     GUATEMALA                      Other                  0       13      39
<20       0-6 months    ki1112895-Guatemala BSC     GUATEMALA                      Other                  1        7      39
>=30      0-6 months    ki1112895-Guatemala BSC     GUATEMALA                      Control                0       16      48
>=30      0-6 months    ki1112895-Guatemala BSC     GUATEMALA                      Control                1        6      48
>=30      0-6 months    ki1112895-Guatemala BSC     GUATEMALA                      Other                  0       22      48
>=30      0-6 months    ki1112895-Guatemala BSC     GUATEMALA                      Other                  1        4      48
[20-25)   0-6 months    ki1119695-PROBIT            BELARUS                        Control                0     3199    7071
[20-25)   0-6 months    ki1119695-PROBIT            BELARUS                        Control                1      233    7071
[20-25)   0-6 months    ki1119695-PROBIT            BELARUS                        Maternal               0     3399    7071
[20-25)   0-6 months    ki1119695-PROBIT            BELARUS                        Maternal               1      240    7071
[25-30)   0-6 months    ki1119695-PROBIT            BELARUS                        Control                0     2067    4548
[25-30)   0-6 months    ki1119695-PROBIT            BELARUS                        Control                1      138    4548
[25-30)   0-6 months    ki1119695-PROBIT            BELARUS                        Maternal               0     2219    4548
[25-30)   0-6 months    ki1119695-PROBIT            BELARUS                        Maternal               1      124    4548
>=30      0-6 months    ki1119695-PROBIT            BELARUS                        Control                0     1300    2904
>=30      0-6 months    ki1119695-PROBIT            BELARUS                        Control                1       96    2904
>=30      0-6 months    ki1119695-PROBIT            BELARUS                        Maternal               0     1428    2904
>=30      0-6 months    ki1119695-PROBIT            BELARUS                        Maternal               1       80    2904
<20       0-6 months    ki1119695-PROBIT            BELARUS                        Control                0      708    1662
<20       0-6 months    ki1119695-PROBIT            BELARUS                        Control                1       66    1662
<20       0-6 months    ki1119695-PROBIT            BELARUS                        Maternal               0      813    1662
<20       0-6 months    ki1119695-PROBIT            BELARUS                        Maternal               1       75    1662
>=30      0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control                0      333    1636
>=30      0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control                1       62    1636
>=30      0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       VitA                   0     1017    1636
>=30      0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       VitA                   1      224    1636
<20       0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control                0      266    1394
<20       0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control                1       77    1394
<20       0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       VitA                   0      845    1394
<20       0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       VitA                   1      206    1394
[20-25)   0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control                0      782    3723
[20-25)   0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control                1      154    3723
[20-25)   0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       VitA                   0     2310    3723
[20-25)   0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       VitA                   1      477    3723
[25-30)   0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control                0      511    2327
[25-30)   0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control                1       95    2327
[25-30)   0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       VitA                   0     1423    2327
[25-30)   0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       VitA                   1      298    2327
>=30      0-6 months    ki1135781-COHORTS           GUATEMALA                      Control                0       31     117
>=30      0-6 months    ki1135781-COHORTS           GUATEMALA                      Control                1       22     117
>=30      0-6 months    ki1135781-COHORTS           GUATEMALA                      Other                  0       44     117
>=30      0-6 months    ki1135781-COHORTS           GUATEMALA                      Other                  1       20     117
[25-30)   0-6 months    ki1135781-COHORTS           GUATEMALA                      Control                0       19      69
[25-30)   0-6 months    ki1135781-COHORTS           GUATEMALA                      Control                1       10      69
[25-30)   0-6 months    ki1135781-COHORTS           GUATEMALA                      Other                  0       31      69
[25-30)   0-6 months    ki1135781-COHORTS           GUATEMALA                      Other                  1        9      69
<20       0-6 months    ki1135781-COHORTS           GUATEMALA                      Control                0       13      34
<20       0-6 months    ki1135781-COHORTS           GUATEMALA                      Control                1        8      34
<20       0-6 months    ki1135781-COHORTS           GUATEMALA                      Other                  0       10      34
<20       0-6 months    ki1135781-COHORTS           GUATEMALA                      Other                  1        3      34
[20-25)   0-6 months    ki1135781-COHORTS           GUATEMALA                      Control                0       30      78
[20-25)   0-6 months    ki1135781-COHORTS           GUATEMALA                      Control                1        8      78
[20-25)   0-6 months    ki1135781-COHORTS           GUATEMALA                      Other                  0       27      78
[20-25)   0-6 months    ki1135781-COHORTS           GUATEMALA                      Other                  1       13      78
[25-30)   0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control                0       22     282
[25-30)   0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control                1       12     282
[25-30)   0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         LNS                    0      184     282
[25-30)   0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         LNS                    1       64     282
<20       0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control                0       19     188
<20       0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control                1       10     188
<20       0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         LNS                    0      100     188
<20       0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         LNS                    1       59     188
[20-25)   0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control                0       45     403
[20-25)   0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control                1       20     403
[20-25)   0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         LNS                    0      258     403
[20-25)   0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         LNS                    1       80     403
>=30      0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control                0       36     282
>=30      0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control                1       16     282
>=30      0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         LNS                    0      154     282
>=30      0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         LNS                    1       76     282
[25-30)   0-6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Control                0        4      18
[25-30)   0-6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Control                1        2      18
[25-30)   0-6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Maternal               0        9      18
[25-30)   0-6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Maternal               1        3      18
>=30      0-6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Control                0        4      16
>=30      0-6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Control                1        2      16
>=30      0-6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Maternal               0        9      16
>=30      0-6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Maternal               1        1      16
[20-25)   0-6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Control                0        6      18
[20-25)   0-6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Control                1        0      18
[20-25)   0-6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Maternal               0       11      18
[20-25)   0-6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Maternal               1        1      18
<20       0-6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Control                0        4      18
<20       0-6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Control                1        1      18
<20       0-6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Maternal               0        7      18
<20       0-6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Maternal               1        6      18
>=30      0-6 months    ki1148112-LCNI-5            MALAWI                         Control                0        8      65
>=30      0-6 months    ki1148112-LCNI-5            MALAWI                         Control                1        5      65
>=30      0-6 months    ki1148112-LCNI-5            MALAWI                         LNS                    0       27      65
>=30      0-6 months    ki1148112-LCNI-5            MALAWI                         LNS                    1        8      65
>=30      0-6 months    ki1148112-LCNI-5            MALAWI                         Other                  0        7      65
>=30      0-6 months    ki1148112-LCNI-5            MALAWI                         Other                  1       10      65
<20       0-6 months    ki1148112-LCNI-5            MALAWI                         Control                0        6      39
<20       0-6 months    ki1148112-LCNI-5            MALAWI                         Control                1        4      39
<20       0-6 months    ki1148112-LCNI-5            MALAWI                         LNS                    0       12      39
<20       0-6 months    ki1148112-LCNI-5            MALAWI                         LNS                    1        5      39
<20       0-6 months    ki1148112-LCNI-5            MALAWI                         Other                  0       11      39
<20       0-6 months    ki1148112-LCNI-5            MALAWI                         Other                  1        1      39
[20-25)   0-6 months    ki1148112-LCNI-5            MALAWI                         Control                0       14      62
[20-25)   0-6 months    ki1148112-LCNI-5            MALAWI                         Control                1        7      62
[20-25)   0-6 months    ki1148112-LCNI-5            MALAWI                         LNS                    0       17      62
[20-25)   0-6 months    ki1148112-LCNI-5            MALAWI                         LNS                    1        7      62
[20-25)   0-6 months    ki1148112-LCNI-5            MALAWI                         Other                  0       12      62
[20-25)   0-6 months    ki1148112-LCNI-5            MALAWI                         Other                  1        5      62
[25-30)   0-6 months    ki1148112-LCNI-5            MALAWI                         Control                0        5      54
[25-30)   0-6 months    ki1148112-LCNI-5            MALAWI                         Control                1        5      54
[25-30)   0-6 months    ki1148112-LCNI-5            MALAWI                         LNS                    0       20      54
[25-30)   0-6 months    ki1148112-LCNI-5            MALAWI                         LNS                    1       14      54
[25-30)   0-6 months    ki1148112-LCNI-5            MALAWI                         Other                  0        3      54
[25-30)   0-6 months    ki1148112-LCNI-5            MALAWI                         Other                  1        7      54
[20-25)   0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control                0     2211    5855
[20-25)   0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control                1      706    5855
[20-25)   0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Maternal               0     2346    5855
[20-25)   0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Maternal               1      592    5855
[25-30)   0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control                0     1126    3109
[25-30)   0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control                1      373    3109
[25-30)   0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Maternal               0     1282    3109
[25-30)   0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Maternal               1      328    3109
<20       0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control                0     3046    8828
<20       0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control                1     1368    8828
<20       0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Maternal               0     3211    8828
<20       0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Maternal               1     1203    8828
>=30      0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control                0      555    1558
>=30      0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control                1      212    1558
>=30      0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Maternal               0      621    1558
>=30      0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Maternal               1      170    1558
[20-25)   6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control                0      277    1245
[20-25)   6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control                1       64    1245
[20-25)   6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                    0      283    1245
[20-25)   6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                    1       35    1245
[20-25)   6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                  0      463    1245
[20-25)   6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                  1      123    1245
[25-30)   6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control                0      178    1042
[25-30)   6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control                1       58    1042
[25-30)   6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                    0      207    1042
[25-30)   6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                    1       51    1042
[25-30)   6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                  0      452    1042
[25-30)   6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                  1       96    1042
<20       6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control                0      168     844
<20       6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control                1       28     844
<20       6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                    0      205     844
<20       6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                    1       34     844
<20       6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                  0      339     844
<20       6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                  1       70     844
>=30      6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control                0      104     581
>=30      6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control                1       31     581
>=30      6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                    0      125     581
>=30      6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                    1       22     581
>=30      6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                  0      218     581
>=30      6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                  1       81     581
[25-30)   6-24 months   ki1000111-WASH-Kenya        KENYA                          Control                0      475    1479
[25-30)   6-24 months   ki1000111-WASH-Kenya        KENYA                          Control                1       30    1479
[25-30)   6-24 months   ki1000111-WASH-Kenya        KENYA                          LNS                    0      337    1479
[25-30)   6-24 months   ki1000111-WASH-Kenya        KENYA                          LNS                    1       24    1479
[25-30)   6-24 months   ki1000111-WASH-Kenya        KENYA                          Other                  0      572    1479
[25-30)   6-24 months   ki1000111-WASH-Kenya        KENYA                          Other                  1       41    1479
>=30      6-24 months   ki1000111-WASH-Kenya        KENYA                          Control                0      463    1473
>=30      6-24 months   ki1000111-WASH-Kenya        KENYA                          Control                1       24    1473
>=30      6-24 months   ki1000111-WASH-Kenya        KENYA                          LNS                    0      320    1473
>=30      6-24 months   ki1000111-WASH-Kenya        KENYA                          LNS                    1       18    1473
>=30      6-24 months   ki1000111-WASH-Kenya        KENYA                          Other                  0      609    1473
>=30      6-24 months   ki1000111-WASH-Kenya        KENYA                          Other                  1       39    1473
[20-25)   6-24 months   ki1000111-WASH-Kenya        KENYA                          Control                0      521    1638
[20-25)   6-24 months   ki1000111-WASH-Kenya        KENYA                          Control                1       45    1638
[20-25)   6-24 months   ki1000111-WASH-Kenya        KENYA                          LNS                    0      340    1638
[20-25)   6-24 months   ki1000111-WASH-Kenya        KENYA                          LNS                    1       16    1638
[20-25)   6-24 months   ki1000111-WASH-Kenya        KENYA                          Other                  0      653    1638
[20-25)   6-24 months   ki1000111-WASH-Kenya        KENYA                          Other                  1       63    1638
<20       6-24 months   ki1000111-WASH-Kenya        KENYA                          Control                0      236     707
<20       6-24 months   ki1000111-WASH-Kenya        KENYA                          Control                1       14     707
<20       6-24 months   ki1000111-WASH-Kenya        KENYA                          LNS                    0      144     707
<20       6-24 months   ki1000111-WASH-Kenya        KENYA                          LNS                    1        8     707
<20       6-24 months   ki1000111-WASH-Kenya        KENYA                          Other                  0      275     707
<20       6-24 months   ki1000111-WASH-Kenya        KENYA                          Other                  1       30     707
[25-30)   6-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Control                0       11      20
[25-30)   6-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Maternal               0        9      20
[20-25)   6-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Control                0       10      18
[20-25)   6-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Maternal               0        8      18
>=30      6-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Control                0       17      27
>=30      6-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Maternal               0       10      27
<20       6-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Maternal               0        2       2
[20-25)   6-24 months   ki1000304-EU                INDIA                          Control                0      256     564
[20-25)   6-24 months   ki1000304-EU                INDIA                          Control                1       13     564
[20-25)   6-24 months   ki1000304-EU                INDIA                          Zinc                   0      279     564
[20-25)   6-24 months   ki1000304-EU                INDIA                          Zinc                   1       16     564
[25-30)   6-24 months   ki1000304-EU                INDIA                          Control                0      183     375
[25-30)   6-24 months   ki1000304-EU                INDIA                          Control                1        8     375
[25-30)   6-24 months   ki1000304-EU                INDIA                          Zinc                   0      177     375
[25-30)   6-24 months   ki1000304-EU                INDIA                          Zinc                   1        7     375
>=30      6-24 months   ki1000304-EU                INDIA                          Control                0       72     156
>=30      6-24 months   ki1000304-EU                INDIA                          Control                1        3     156
>=30      6-24 months   ki1000304-EU                INDIA                          Zinc                   0       77     156
>=30      6-24 months   ki1000304-EU                INDIA                          Zinc                   1        4     156
<20       6-24 months   ki1000304-EU                INDIA                          Control                0       32      55
<20       6-24 months   ki1000304-EU                INDIA                          Control                1        1      55
<20       6-24 months   ki1000304-EU                INDIA                          Zinc                   0       20      55
<20       6-24 months   ki1000304-EU                INDIA                          Zinc                   1        2      55
[20-25)   6-24 months   ki1000304-VITAMIN-A         INDIA                          Control                0      477    1035
[20-25)   6-24 months   ki1000304-VITAMIN-A         INDIA                          Control                1       34    1035
[20-25)   6-24 months   ki1000304-VITAMIN-A         INDIA                          VitA                   0      497    1035
[20-25)   6-24 months   ki1000304-VITAMIN-A         INDIA                          VitA                   1       27    1035
[25-30)   6-24 months   ki1000304-VITAMIN-A         INDIA                          Control                0      332     744
[25-30)   6-24 months   ki1000304-VITAMIN-A         INDIA                          Control                1       26     744
[25-30)   6-24 months   ki1000304-VITAMIN-A         INDIA                          VitA                   0      353     744
[25-30)   6-24 months   ki1000304-VITAMIN-A         INDIA                          VitA                   1       33     744
>=30      6-24 months   ki1000304-VITAMIN-A         INDIA                          Control                0      128     271
>=30      6-24 months   ki1000304-VITAMIN-A         INDIA                          Control                1       16     271
>=30      6-24 months   ki1000304-VITAMIN-A         INDIA                          VitA                   0      109     271
>=30      6-24 months   ki1000304-VITAMIN-A         INDIA                          VitA                   1       18     271
<20       6-24 months   ki1000304-VITAMIN-A         INDIA                          Control                0       57     115
<20       6-24 months   ki1000304-VITAMIN-A         INDIA                          Control                1        8     115
<20       6-24 months   ki1000304-VITAMIN-A         INDIA                          VitA                   0       45     115
<20       6-24 months   ki1000304-VITAMIN-A         INDIA                          VitA                   1        5     115
[20-25)   6-24 months   ki1000304-Vitamin-B12       INDIA                          Control                0       47     219
[20-25)   6-24 months   ki1000304-Vitamin-B12       INDIA                          Control                1        6     219
[20-25)   6-24 months   ki1000304-Vitamin-B12       INDIA                          Other                  0      146     219
[20-25)   6-24 months   ki1000304-Vitamin-B12       INDIA                          Other                  1       20     219
[25-30)   6-24 months   ki1000304-Vitamin-B12       INDIA                          Control                0       38     185
[25-30)   6-24 months   ki1000304-Vitamin-B12       INDIA                          Control                1        2     185
[25-30)   6-24 months   ki1000304-Vitamin-B12       INDIA                          Other                  0      131     185
[25-30)   6-24 months   ki1000304-Vitamin-B12       INDIA                          Other                  1       14     185
>=30      6-24 months   ki1000304-Vitamin-B12       INDIA                          Control                0       15      87
>=30      6-24 months   ki1000304-Vitamin-B12       INDIA                          Control                1        2      87
>=30      6-24 months   ki1000304-Vitamin-B12       INDIA                          Other                  0       65      87
>=30      6-24 months   ki1000304-Vitamin-B12       INDIA                          Other                  1        5      87
<20       6-24 months   ki1000304-Vitamin-B12       INDIA                          Control                0        4      12
<20       6-24 months   ki1000304-Vitamin-B12       INDIA                          Control                1        0      12
<20       6-24 months   ki1000304-Vitamin-B12       INDIA                          Other                  0        7      12
<20       6-24 months   ki1000304-Vitamin-B12       INDIA                          Other                  1        1      12
[25-30)   6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control                0       42     162
[25-30)   6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control                1       28     162
[25-30)   6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Other                  0       63     162
[25-30)   6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Other                  1       29     162
>=30      6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control                0       20      70
>=30      6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control                1       13      70
>=30      6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Other                  0       20      70
>=30      6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Other                  1       17      70
[20-25)   6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control                0      104     330
[20-25)   6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control                1       45     330
[20-25)   6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Other                  0      137     330
[20-25)   6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Other                  1       44     330
<20       6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control                0       32      85
<20       6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control                1       12      85
<20       6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Other                  0       29      85
<20       6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Other                  1       12      85
[25-30)   6-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Control                0        6      70
[25-30)   6-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Control                1        6      70
[25-30)   6-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Other                  0       26      70
[25-30)   6-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Other                  1       32      70
[20-25)   6-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Control                0        8      85
[20-25)   6-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Control                1       12      85
[20-25)   6-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Other                  0       30      85
[20-25)   6-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Other                  1       35      85
>=30      6-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Control                0        2      51
>=30      6-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Control                1        9      51
>=30      6-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Other                  0       15      51
>=30      6-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Other                  1       25      51
<20       6-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Control                0        3      20
<20       6-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Control                1        2      20
<20       6-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Other                  0        9      20
<20       6-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Other                  1        6      20
>=30      6-24 months   ki1017093b-PROVIDE          BANGLADESH                     Control                0       16      88
>=30      6-24 months   ki1017093b-PROVIDE          BANGLADESH                     Control                1        8      88
>=30      6-24 months   ki1017093b-PROVIDE          BANGLADESH                     Other                  0       48      88
>=30      6-24 months   ki1017093b-PROVIDE          BANGLADESH                     Other                  1       16      88
[25-30)   6-24 months   ki1017093b-PROVIDE          BANGLADESH                     Control                0       29     149
[25-30)   6-24 months   ki1017093b-PROVIDE          BANGLADESH                     Control                1        5     149
[25-30)   6-24 months   ki1017093b-PROVIDE          BANGLADESH                     Other                  0       91     149
[25-30)   6-24 months   ki1017093b-PROVIDE          BANGLADESH                     Other                  1       24     149
[20-25)   6-24 months   ki1017093b-PROVIDE          BANGLADESH                     Control                0       49     208
[20-25)   6-24 months   ki1017093b-PROVIDE          BANGLADESH                     Control                1       10     208
[20-25)   6-24 months   ki1017093b-PROVIDE          BANGLADESH                     Other                  0      109     208
[20-25)   6-24 months   ki1017093b-PROVIDE          BANGLADESH                     Other                  1       40     208
<20       6-24 months   ki1017093b-PROVIDE          BANGLADESH                     Control                0        7      52
<20       6-24 months   ki1017093b-PROVIDE          BANGLADESH                     Control                1        2      52
<20       6-24 months   ki1017093b-PROVIDE          BANGLADESH                     Other                  0       29      52
<20       6-24 months   ki1017093b-PROVIDE          BANGLADESH                     Other                  1       14      52
>=30      6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control                0      122     514
>=30      6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control                1       18     514
>=30      6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                  0      114     514
>=30      6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                  1       15     514
>=30      6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                   0      206     514
>=30      6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                   1       39     514
<20       6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control                0       26     129
<20       6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control                1        4     129
<20       6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                  0       28     129
<20       6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                  1        3     129
<20       6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                   0       60     129
<20       6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                   1        8     129
[25-30)   6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control                0      130     622
[25-30)   6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control                1       21     622
[25-30)   6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                  0      127     622
[25-30)   6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                  1       18     622
[25-30)   6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                   0      282     622
[25-30)   6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                   1       44     622
[20-25)   6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control                0      122     569
[20-25)   6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control                1       21     569
[20-25)   6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                  0      134     569
[20-25)   6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                  1       15     569
[20-25)   6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                   0      238     569
[20-25)   6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                   1       39     569
>=30      6-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc                   0     1436    1580
>=30      6-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc                   1      144    1580
[25-30)   6-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc                   0     1890    2109
[25-30)   6-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc                   1      219    2109
[20-25)   6-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc                   0      489     558
[20-25)   6-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc                   1       69     558
[20-25)   6-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Control                0       27      66
[20-25)   6-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Control                1       11      66
[20-25)   6-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Other                  0       22      66
[20-25)   6-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Other                  1        6      66
[25-30)   6-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Control                0       19      48
[25-30)   6-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Control                1        1      48
[25-30)   6-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Other                  0       21      48
[25-30)   6-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Other                  1        7      48
<20       6-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Control                0        8      21
<20       6-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Control                1        3      21
<20       6-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Other                  0        9      21
<20       6-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Other                  1        1      21
>=30      6-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Control                0       15      36
>=30      6-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Control                1        0      36
>=30      6-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Other                  0       12      36
>=30      6-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Other                  1        9      36
[20-25)   6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Control                0      154     783
[20-25)   6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Control                1       37     783
[20-25)   6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   LNS                    0      505     783
[20-25)   6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   LNS                    1       87     783
>=30      6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Control                0      155     857
>=30      6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Control                1       38     857
>=30      6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   LNS                    0      581     857
>=30      6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   LNS                    1       83     857
[25-30)   6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Control                0      141     678
[25-30)   6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Control                1       37     678
[25-30)   6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   LNS                    0      441     678
[25-30)   6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   LNS                    1       59     678
<20       6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Control                0       50     313
<20       6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Control                1       17     313
<20       6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   LNS                    0      204     313
<20       6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   LNS                    1       42     313
[20-25)   6-24 months   ki1119695-PROBIT            BELARUS                        Control                0     3288    7124
[20-25)   6-24 months   ki1119695-PROBIT            BELARUS                        Control                1      135    7124
[20-25)   6-24 months   ki1119695-PROBIT            BELARUS                        Maternal               0     3562    7124
[20-25)   6-24 months   ki1119695-PROBIT            BELARUS                        Maternal               1      139    7124
[25-30)   6-24 months   ki1119695-PROBIT            BELARUS                        Control                0     2116    4571
[25-30)   6-24 months   ki1119695-PROBIT            BELARUS                        Control                1       90    4571
[25-30)   6-24 months   ki1119695-PROBIT            BELARUS                        Maternal               0     2283    4571
[25-30)   6-24 months   ki1119695-PROBIT            BELARUS                        Maternal               1       82    4571
>=30      6-24 months   ki1119695-PROBIT            BELARUS                        Control                0     1355    2934
>=30      6-24 months   ki1119695-PROBIT            BELARUS                        Control                1       47    2934
>=30      6-24 months   ki1119695-PROBIT            BELARUS                        Maternal               0     1481    2934
>=30      6-24 months   ki1119695-PROBIT            BELARUS                        Maternal               1       51    2934
<20       6-24 months   ki1119695-PROBIT            BELARUS                        Control                0      736    1674
<20       6-24 months   ki1119695-PROBIT            BELARUS                        Control                1       37    1674
<20       6-24 months   ki1119695-PROBIT            BELARUS                        Maternal               0      862    1674
<20       6-24 months   ki1119695-PROBIT            BELARUS                        Maternal               1       39    1674
>=30      6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control                0      337    1628
>=30      6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control                1       58    1628
>=30      6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       VitA                   0     1076    1628
>=30      6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       VitA                   1      157    1628
<20       6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control                0      303    1417
<20       6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control                1       55    1417
<20       6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       VitA                   0      894    1417
<20       6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       VitA                   1      165    1417
[20-25)   6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control                0      852    3890
[20-25)   6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control                1      129    3890
[20-25)   6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       VitA                   0     2555    3890
[20-25)   6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       VitA                   1      354    3890
[25-30)   6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control                0      532    2361
[25-30)   6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control                1       79    2361
[25-30)   6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       VitA                   0     1483    2361
[25-30)   6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       VitA                   1      267    2361
>=30      6-24 months   ki1135781-COHORTS           GUATEMALA                      Control                0       38     227
>=30      6-24 months   ki1135781-COHORTS           GUATEMALA                      Control                1       53     227
>=30      6-24 months   ki1135781-COHORTS           GUATEMALA                      Other                  0       71     227
>=30      6-24 months   ki1135781-COHORTS           GUATEMALA                      Other                  1       65     227
[20-25)   6-24 months   ki1135781-COHORTS           GUATEMALA                      Control                0       32     178
[20-25)   6-24 months   ki1135781-COHORTS           GUATEMALA                      Control                1       56     178
[20-25)   6-24 months   ki1135781-COHORTS           GUATEMALA                      Other                  0       44     178
[20-25)   6-24 months   ki1135781-COHORTS           GUATEMALA                      Other                  1       46     178
[25-30)   6-24 months   ki1135781-COHORTS           GUATEMALA                      Control                0       22     135
[25-30)   6-24 months   ki1135781-COHORTS           GUATEMALA                      Control                1       32     135
[25-30)   6-24 months   ki1135781-COHORTS           GUATEMALA                      Other                  0       30     135
[25-30)   6-24 months   ki1135781-COHORTS           GUATEMALA                      Other                  1       51     135
<20       6-24 months   ki1135781-COHORTS           GUATEMALA                      Control                0       18      84
<20       6-24 months   ki1135781-COHORTS           GUATEMALA                      Control                1       29      84
<20       6-24 months   ki1135781-COHORTS           GUATEMALA                      Other                  0       18      84
<20       6-24 months   ki1135781-COHORTS           GUATEMALA                      Other                  1       19      84
[25-30)   6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control                0       36     294
[25-30)   6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control                1        9     294
[25-30)   6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS                    0      209     294
[25-30)   6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS                    1       40     294
>=30      6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control                0       44     300
>=30      6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control                1       10     300
>=30      6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS                    0      180     300
>=30      6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS                    1       66     300
[20-25)   6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control                0       60     407
[20-25)   6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control                1       10     407
[20-25)   6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS                    0      266     407
[20-25)   6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS                    1       71     407
<20       6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control                0       20     174
<20       6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control                1        6     174
<20       6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS                    0      112     174
<20       6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS                    1       36     174
[25-30)   6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control                0       53     245
[25-30)   6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control                1       16     245
[25-30)   6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Maternal               0      125     245
[25-30)   6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Maternal               1       51     245
<20       6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control                0       62     217
<20       6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control                1       17     217
<20       6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Maternal               0      100     217
<20       6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Maternal               1       38     217
[20-25)   6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control                0       78     276
[20-25)   6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control                1       21     276
[20-25)   6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Maternal               0      126     276
[20-25)   6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Maternal               1       51     276
>=30      6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control                0       45     193
>=30      6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control                1       20     193
>=30      6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Maternal               0       93     193
>=30      6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Maternal               1       35     193
>=30      6-24 months   ki1148112-LCNI-5            MALAWI                         Control                0       23     133
>=30      6-24 months   ki1148112-LCNI-5            MALAWI                         Control                1       10     133
>=30      6-24 months   ki1148112-LCNI-5            MALAWI                         LNS                    0       48     133
>=30      6-24 months   ki1148112-LCNI-5            MALAWI                         LNS                    1       22     133
>=30      6-24 months   ki1148112-LCNI-5            MALAWI                         Other                  0       20     133
>=30      6-24 months   ki1148112-LCNI-5            MALAWI                         Other                  1       10     133
<20       6-24 months   ki1148112-LCNI-5            MALAWI                         Control                0       13      83
<20       6-24 months   ki1148112-LCNI-5            MALAWI                         Control                1        7      83
<20       6-24 months   ki1148112-LCNI-5            MALAWI                         LNS                    0       24      83
<20       6-24 months   ki1148112-LCNI-5            MALAWI                         LNS                    1       10      83
<20       6-24 months   ki1148112-LCNI-5            MALAWI                         Other                  0       21      83
<20       6-24 months   ki1148112-LCNI-5            MALAWI                         Other                  1        8      83
[25-30)   6-24 months   ki1148112-LCNI-5            MALAWI                         Control                0       22     125
[25-30)   6-24 months   ki1148112-LCNI-5            MALAWI                         Control                1        9     125
[25-30)   6-24 months   ki1148112-LCNI-5            MALAWI                         LNS                    0       45     125
[25-30)   6-24 months   ki1148112-LCNI-5            MALAWI                         LNS                    1       19     125
[25-30)   6-24 months   ki1148112-LCNI-5            MALAWI                         Other                  0       19     125
[25-30)   6-24 months   ki1148112-LCNI-5            MALAWI                         Other                  1       11     125
[20-25)   6-24 months   ki1148112-LCNI-5            MALAWI                         Control                0       19     130
[20-25)   6-24 months   ki1148112-LCNI-5            MALAWI                         Control                1       11     130
[20-25)   6-24 months   ki1148112-LCNI-5            MALAWI                         LNS                    0       44     130
[20-25)   6-24 months   ki1148112-LCNI-5            MALAWI                         LNS                    1       20     130
[20-25)   6-24 months   ki1148112-LCNI-5            MALAWI                         Other                  0       26     130
[20-25)   6-24 months   ki1148112-LCNI-5            MALAWI                         Other                  1       10     130
[20-25)   6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control                0     1629    4108
[20-25)   6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control                1      371    4108
[20-25)   6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Maternal               0     1660    4108
[20-25)   6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Maternal               1      448    4108
[25-30)   6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control                0      816    2110
[25-30)   6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control                1      186    2110
[25-30)   6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Maternal               0      882    2110
[25-30)   6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Maternal               1      226    2110
<20       6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control                0     2448    6105
<20       6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control                1      591    6105
<20       6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Maternal               0     2469    6105
<20       6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Maternal               1      597    6105
>=30      6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control                0      363     976
>=30      6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control                1       88     976
>=30      6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Maternal               0      411     976
>=30      6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Maternal               1      114     976
[20-25)   0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control                0      271    1584
[20-25)   0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control                1      170    1584
[20-25)   0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                    0      280    1584
[20-25)   0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                    1      114    1584
[20-25)   0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                  0      454    1584
[20-25)   0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                  1      295    1584
[25-30)   0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control                0      173    1325
[25-30)   0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control                1      128    1325
[25-30)   0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                    0      201    1325
[25-30)   0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                    1      116    1325
[25-30)   0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                  0      446    1325
[25-30)   0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                  1      261    1325
<20       0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control                0      164    1132
<20       0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control                1       93    1132
<20       0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                    0      200    1132
<20       0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                    1      104    1132
<20       0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                  0      334    1132
<20       0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                  1      237    1132
>=30      0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control                0      101     756
>=30      0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control                1       73     756
>=30      0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                    0      124     756
>=30      0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                    1       67     756
>=30      0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                  0      212     756
>=30      0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                  1      179     756
[20-25)   0-24 months   ki1000111-WASH-Kenya        KENYA                          Control                0      522    2027
[20-25)   0-24 months   ki1000111-WASH-Kenya        KENYA                          Control                1      178    2027
[20-25)   0-24 months   ki1000111-WASH-Kenya        KENYA                          LNS                    0      344    2027
[20-25)   0-24 months   ki1000111-WASH-Kenya        KENYA                          LNS                    1       83    2027
[20-25)   0-24 months   ki1000111-WASH-Kenya        KENYA                          Other                  0      659    2027
[20-25)   0-24 months   ki1000111-WASH-Kenya        KENYA                          Other                  1      241    2027
[25-30)   0-24 months   ki1000111-WASH-Kenya        KENYA                          Control                0      475    1824
[25-30)   0-24 months   ki1000111-WASH-Kenya        KENYA                          Control                1      143    1824
[25-30)   0-24 months   ki1000111-WASH-Kenya        KENYA                          LNS                    0      338    1824
[25-30)   0-24 months   ki1000111-WASH-Kenya        KENYA                          LNS                    1       93    1824
[25-30)   0-24 months   ki1000111-WASH-Kenya        KENYA                          Other                  0      571    1824
[25-30)   0-24 months   ki1000111-WASH-Kenya        KENYA                          Other                  1      204    1824
>=30      0-24 months   ki1000111-WASH-Kenya        KENYA                          Control                0      462    1855
>=30      0-24 months   ki1000111-WASH-Kenya        KENYA                          Control                1      150    1855
>=30      0-24 months   ki1000111-WASH-Kenya        KENYA                          LNS                    0      317    1855
>=30      0-24 months   ki1000111-WASH-Kenya        KENYA                          LNS                    1       96    1855
>=30      0-24 months   ki1000111-WASH-Kenya        KENYA                          Other                  0      611    1855
>=30      0-24 months   ki1000111-WASH-Kenya        KENYA                          Other                  1      219    1855
<20       0-24 months   ki1000111-WASH-Kenya        KENYA                          Control                0      245     945
<20       0-24 months   ki1000111-WASH-Kenya        KENYA                          Control                1      101     945
<20       0-24 months   ki1000111-WASH-Kenya        KENYA                          LNS                    0      149     945
<20       0-24 months   ki1000111-WASH-Kenya        KENYA                          LNS                    1       38     945
<20       0-24 months   ki1000111-WASH-Kenya        KENYA                          Other                  0      284     945
<20       0-24 months   ki1000111-WASH-Kenya        KENYA                          Other                  1      128     945
[25-30)   0-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Control                0       25      58
[25-30)   0-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Control                1        6      58
[25-30)   0-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Maternal               0       23      58
[25-30)   0-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Maternal               1        4      58
>=30      0-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Control                0       28      73
>=30      0-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Control                1       11      73
>=30      0-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Maternal               0       25      73
>=30      0-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Maternal               1        9      73
[20-25)   0-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Control                0       18      49
[20-25)   0-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Control                1        4      49
[20-25)   0-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Maternal               0       20      49
[20-25)   0-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Maternal               1        7      49
<20       0-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Control                0        0       3
<20       0-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Control                1        1       3
<20       0-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Maternal               0        2       3
<20       0-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Maternal               1        0       3
[20-25)   0-24 months   ki1000304-EU                INDIA                          Control                0      243     968
[20-25)   0-24 months   ki1000304-EU                INDIA                          Control                1      246     968
[20-25)   0-24 months   ki1000304-EU                INDIA                          Zinc                   0      276     968
[20-25)   0-24 months   ki1000304-EU                INDIA                          Zinc                   1      203     968
[25-30)   0-24 months   ki1000304-EU                INDIA                          Control                0      182     678
[25-30)   0-24 months   ki1000304-EU                INDIA                          Control                1      173     678
[25-30)   0-24 months   ki1000304-EU                INDIA                          Zinc                   0      174     678
[25-30)   0-24 months   ki1000304-EU                INDIA                          Zinc                   1      149     678
>=30      0-24 months   ki1000304-EU                INDIA                          Control                0       69     269
>=30      0-24 months   ki1000304-EU                INDIA                          Control                1       59     269
>=30      0-24 months   ki1000304-EU                INDIA                          Zinc                   0       74     269
>=30      0-24 months   ki1000304-EU                INDIA                          Zinc                   1       67     269
<20       0-24 months   ki1000304-EU                INDIA                          Control                0       32      93
<20       0-24 months   ki1000304-EU                INDIA                          Control                1       23      93
<20       0-24 months   ki1000304-EU                INDIA                          Zinc                   0       19      93
<20       0-24 months   ki1000304-EU                INDIA                          Zinc                   1       19      93
[20-25)   0-24 months   ki1000304-VITAMIN-A         INDIA                          Control                0      469    1638
[20-25)   0-24 months   ki1000304-VITAMIN-A         INDIA                          Control                1      344    1638
[20-25)   0-24 months   ki1000304-VITAMIN-A         INDIA                          VitA                   0      493    1638
[20-25)   0-24 months   ki1000304-VITAMIN-A         INDIA                          VitA                   1      332    1638
[25-30)   0-24 months   ki1000304-VITAMIN-A         INDIA                          Control                0      329    1217
[25-30)   0-24 months   ki1000304-VITAMIN-A         INDIA                          Control                1      288    1217
[25-30)   0-24 months   ki1000304-VITAMIN-A         INDIA                          VitA                   0      347    1217
[25-30)   0-24 months   ki1000304-VITAMIN-A         INDIA                          VitA                   1      253    1217
>=30      0-24 months   ki1000304-VITAMIN-A         INDIA                          Control                0      123     465
>=30      0-24 months   ki1000304-VITAMIN-A         INDIA                          Control                1      116     465
>=30      0-24 months   ki1000304-VITAMIN-A         INDIA                          VitA                   0      107     465
>=30      0-24 months   ki1000304-VITAMIN-A         INDIA                          VitA                   1      119     465
<20       0-24 months   ki1000304-VITAMIN-A         INDIA                          Control                0       56     218
<20       0-24 months   ki1000304-VITAMIN-A         INDIA                          Control                1       62     218
<20       0-24 months   ki1000304-VITAMIN-A         INDIA                          VitA                   0       44     218
<20       0-24 months   ki1000304-VITAMIN-A         INDIA                          VitA                   1       56     218
[25-30)   0-24 months   ki1000304-Vitamin-B12       INDIA                          Control                0       35     290
[25-30)   0-24 months   ki1000304-Vitamin-B12       INDIA                          Control                1       36     290
[25-30)   0-24 months   ki1000304-Vitamin-B12       INDIA                          Other                  0      123     290
[25-30)   0-24 months   ki1000304-Vitamin-B12       INDIA                          Other                  1       96     290
[20-25)   0-24 months   ki1000304-Vitamin-B12       INDIA                          Control                0       46     351
[20-25)   0-24 months   ki1000304-Vitamin-B12       INDIA                          Control                1       42     351
[20-25)   0-24 months   ki1000304-Vitamin-B12       INDIA                          Other                  0      135     351
[20-25)   0-24 months   ki1000304-Vitamin-B12       INDIA                          Other                  1      128     351
>=30      0-24 months   ki1000304-Vitamin-B12       INDIA                          Control                0       14     148
>=30      0-24 months   ki1000304-Vitamin-B12       INDIA                          Control                1       21     148
>=30      0-24 months   ki1000304-Vitamin-B12       INDIA                          Other                  0       61     148
>=30      0-24 months   ki1000304-Vitamin-B12       INDIA                          Other                  1       52     148
<20       0-24 months   ki1000304-Vitamin-B12       INDIA                          Control                0        4      14
<20       0-24 months   ki1000304-Vitamin-B12       INDIA                          Control                1        0      14
<20       0-24 months   ki1000304-Vitamin-B12       INDIA                          Other                  0        5      14
<20       0-24 months   ki1000304-Vitamin-B12       INDIA                          Other                  1        5      14
[25-30)   0-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control                0       40     259
[25-30)   0-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control                1       78     259
[25-30)   0-24 months   ki1000304b-SAS-CompFeed     INDIA                          Other                  0       60     259
[25-30)   0-24 months   ki1000304b-SAS-CompFeed     INDIA                          Other                  1       81     259
<20       0-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control                0       28     126
<20       0-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control                1       37     126
<20       0-24 months   ki1000304b-SAS-CompFeed     INDIA                          Other                  0       22     126
<20       0-24 months   ki1000304b-SAS-CompFeed     INDIA                          Other                  1       39     126
>=30      0-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control                0       18     104
>=30      0-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control                1       30     104
>=30      0-24 months   ki1000304b-SAS-CompFeed     INDIA                          Other                  0       21     104
>=30      0-24 months   ki1000304b-SAS-CompFeed     INDIA                          Other                  1       35     104
[20-25)   0-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control                0       90     460
[20-25)   0-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control                1      118     460
[20-25)   0-24 months   ki1000304b-SAS-CompFeed     INDIA                          Other                  0      122     460
[20-25)   0-24 months   ki1000304b-SAS-CompFeed     INDIA                          Other                  1      130     460
[25-30)   0-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Control                0        6     142
[25-30)   0-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Control                1       31     142
[25-30)   0-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Other                  0       29     142
[25-30)   0-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Other                  1       76     142
>=30      0-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Control                0        2      92
>=30      0-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Control                1       18      92
>=30      0-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Other                  0       19      92
>=30      0-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Other                  1       53      92
[20-25)   0-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Control                0        9     148
[20-25)   0-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Control                1       32     148
[20-25)   0-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Other                  0       30     148
[20-25)   0-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Other                  1       77     148
<20       0-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Control                0        3      36
<20       0-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Control                1        5      36
<20       0-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Other                  0        8      36
<20       0-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Other                  1       20      36
>=30      0-24 months   ki1017093b-PROVIDE          BANGLADESH                     Control                0       15     118
>=30      0-24 months   ki1017093b-PROVIDE          BANGLADESH                     Control                1       18     118
>=30      0-24 months   ki1017093b-PROVIDE          BANGLADESH                     Other                  0       50     118
>=30      0-24 months   ki1017093b-PROVIDE          BANGLADESH                     Other                  1       35     118
[25-30)   0-24 months   ki1017093b-PROVIDE          BANGLADESH                     Control                0       30     193
[25-30)   0-24 months   ki1017093b-PROVIDE          BANGLADESH                     Control                1       13     193
[25-30)   0-24 months   ki1017093b-PROVIDE          BANGLADESH                     Other                  0       88     193
[25-30)   0-24 months   ki1017093b-PROVIDE          BANGLADESH                     Other                  1       62     193
[20-25)   0-24 months   ki1017093b-PROVIDE          BANGLADESH                     Control                0       50     256
[20-25)   0-24 months   ki1017093b-PROVIDE          BANGLADESH                     Control                1       25     256
[20-25)   0-24 months   ki1017093b-PROVIDE          BANGLADESH                     Other                  0      108     256
[20-25)   0-24 months   ki1017093b-PROVIDE          BANGLADESH                     Other                  1       73     256
<20       0-24 months   ki1017093b-PROVIDE          BANGLADESH                     Control                0        6      74
<20       0-24 months   ki1017093b-PROVIDE          BANGLADESH                     Control                1        9      74
<20       0-24 months   ki1017093b-PROVIDE          BANGLADESH                     Other                  0       32      74
<20       0-24 months   ki1017093b-PROVIDE          BANGLADESH                     Other                  1       27      74
>=30      0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control                0      131     613
>=30      0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control                1       34     613
>=30      0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                  0      125     613
>=30      0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                  1       29     613
>=30      0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                   0      224     613
>=30      0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                   1       70     613
[20-25)   0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control                0      133     699
[20-25)   0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control                1       40     699
[20-25)   0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                  0      144     699
[20-25)   0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                  1       42     699
[20-25)   0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                   0      257     699
[20-25)   0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                   1       83     699
<20       0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control                0       28     158
<20       0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control                1       10     158
<20       0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                  0       29     158
<20       0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                  1        7     158
<20       0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                   0       67     158
<20       0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                   1       17     158
[25-30)   0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control                0      140     767
[25-30)   0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control                1       44     767
[25-30)   0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                  0      136     767
[25-30)   0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                  1       41     767
[25-30)   0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                   0      305     767
[25-30)   0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                   1      101     767
>=30      0-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc                   0     1412    2146
>=30      0-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc                   1      734    2146
[25-30)   0-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc                   0     1858    2842
[25-30)   0-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc                   1      984    2842
[20-25)   0-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc                   0      476     802
[20-25)   0-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc                   1      326     802
[20-25)   0-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Control                0       26      98
[20-25)   0-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Control                1       27      98
[20-25)   0-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Other                  0       22      98
[20-25)   0-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Other                  1       23      98
[25-30)   0-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Control                0       19      61
[25-30)   0-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Control                1        8      61
[25-30)   0-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Other                  0       19      61
[25-30)   0-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Other                  1       15      61
<20       0-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Control                0        8      40
<20       0-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Control                1       12      40
<20       0-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Other                  0        8      40
<20       0-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Other                  1       12      40
>=30      0-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Control                0       15      53
>=30      0-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Control                1        9      53
>=30      0-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Other                  0       11      53
>=30      0-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Other                  1       18      53
[25-30)   0-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Control                0      138     804
[25-30)   0-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Control                1       82     804
[25-30)   0-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   LNS                    0      414     804
[25-30)   0-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   LNS                    1      170     804
[20-25)   0-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Control                0      150     938
[20-25)   0-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Control                1       75     938
[20-25)   0-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   LNS                    0      480     938
[20-25)   0-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   LNS                    1      233     938
>=30      0-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Control                0      153    1032
>=30      0-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Control                1       87    1032
>=30      0-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   LNS                    0      548    1032
>=30      0-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   LNS                    1      244    1032
<20       0-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Control                0       49     403
<20       0-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Control                1       45     403
<20       0-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   LNS                    0      192     403
<20       0-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   LNS                    1      117     403
[20-25)   0-24 months   ki1119695-PROBIT            BELARUS                        Control                0     3030    7321
[20-25)   0-24 months   ki1119695-PROBIT            BELARUS                        Control                1      502    7321
[20-25)   0-24 months   ki1119695-PROBIT            BELARUS                        Maternal               0     3317    7321
[20-25)   0-24 months   ki1119695-PROBIT            BELARUS                        Maternal               1      472    7321
[25-30)   0-24 months   ki1119695-PROBIT            BELARUS                        Control                0     1973    4681
[25-30)   0-24 months   ki1119695-PROBIT            BELARUS                        Control                1      290    4681
[25-30)   0-24 months   ki1119695-PROBIT            BELARUS                        Maternal               0     2167    4681
[25-30)   0-24 months   ki1119695-PROBIT            BELARUS                        Maternal               1      251    4681
>=30      0-24 months   ki1119695-PROBIT            BELARUS                        Control                0     1257    3006
>=30      0-24 months   ki1119695-PROBIT            BELARUS                        Control                1      187    3006
>=30      0-24 months   ki1119695-PROBIT            BELARUS                        Maternal               0     1396    3006
>=30      0-24 months   ki1119695-PROBIT            BELARUS                        Maternal               1      166    3006
<20       0-24 months   ki1119695-PROBIT            BELARUS                        Control                0      670    1727
<20       0-24 months   ki1119695-PROBIT            BELARUS                        Control                1      134    1727
<20       0-24 months   ki1119695-PROBIT            BELARUS                        Maternal               0      790    1727
<20       0-24 months   ki1119695-PROBIT            BELARUS                        Maternal               1      133    1727
>=30      0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control                0      337    2036
>=30      0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control                1      149    2036
>=30      0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       VitA                   0     1035    2036
>=30      0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       VitA                   1      515    2036
<20       0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control                0      289    1851
<20       0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control                1      174    1851
<20       0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       VitA                   0      884    1851
<20       0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       VitA                   1      504    1851
[20-25)   0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control                0      856    4907
[20-25)   0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control                1      388    4907
[20-25)   0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       VitA                   0     2554    4907
[20-25)   0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       VitA                   1     1109    4907
[25-30)   0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control                0      526    2986
[25-30)   0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control                1      244    2986
[25-30)   0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       VitA                   0     1470    2986
[25-30)   0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       VitA                   1      746    2986
>=30      0-24 months   ki1135781-COHORTS           GUATEMALA                      Control                0       37     461
>=30      0-24 months   ki1135781-COHORTS           GUATEMALA                      Control                1      188     461
>=30      0-24 months   ki1135781-COHORTS           GUATEMALA                      Other                  0       73     461
>=30      0-24 months   ki1135781-COHORTS           GUATEMALA                      Other                  1      163     461
[25-30)   0-24 months   ki1135781-COHORTS           GUATEMALA                      Control                0       24     269
[25-30)   0-24 months   ki1135781-COHORTS           GUATEMALA                      Control                1      106     269
[25-30)   0-24 months   ki1135781-COHORTS           GUATEMALA                      Other                  0       30     269
[25-30)   0-24 months   ki1135781-COHORTS           GUATEMALA                      Other                  1      109     269
[20-25)   0-24 months   ki1135781-COHORTS           GUATEMALA                      Control                0       32     338
[20-25)   0-24 months   ki1135781-COHORTS           GUATEMALA                      Control                1      126     338
[20-25)   0-24 months   ki1135781-COHORTS           GUATEMALA                      Other                  0       49     338
[20-25)   0-24 months   ki1135781-COHORTS           GUATEMALA                      Other                  1      131     338
<20       0-24 months   ki1135781-COHORTS           GUATEMALA                      Control                0       17     175
<20       0-24 months   ki1135781-COHORTS           GUATEMALA                      Control                1       78     175
<20       0-24 months   ki1135781-COHORTS           GUATEMALA                      Other                  0       18     175
<20       0-24 months   ki1135781-COHORTS           GUATEMALA                      Other                  1       62     175
[25-30)   0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control                0       34     448
[25-30)   0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control                1       27     448
[25-30)   0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS                    0      210     448
[25-30)   0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS                    1      177     448
>=30      0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control                0       38     469
>=30      0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control                1       44     469
>=30      0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS                    0      177     469
>=30      0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS                    1      210     469
[20-25)   0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control                0       60     631
[20-25)   0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control                1       52     631
[20-25)   0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS                    0      281     631
[20-25)   0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS                    1      238     631
<20       0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control                0       20     301
<20       0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control                1       29     301
<20       0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS                    0      108     301
<20       0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS                    1      144     301
[25-30)   0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control                0       50     310
[25-30)   0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control                1       38     310
[25-30)   0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Maternal               0      118     310
[25-30)   0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Maternal               1      104     310
<20       0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control                0       61     264
<20       0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control                1       34     264
<20       0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Maternal               0       92     264
<20       0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Maternal               1       77     264
>=30      0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control                0       42     248
>=30      0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control                1       46     248
>=30      0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Maternal               0       89     248
>=30      0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Maternal               1       71     248
[20-25)   0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control                0       75     334
[20-25)   0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control                1       44     334
[20-25)   0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Maternal               0      122     334
[20-25)   0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Maternal               1       93     334
>=30      0-24 months   ki1148112-LCNI-5            MALAWI                         Control                0       19     198
>=30      0-24 months   ki1148112-LCNI-5            MALAWI                         Control                1       25     198
>=30      0-24 months   ki1148112-LCNI-5            MALAWI                         LNS                    0       41     198
>=30      0-24 months   ki1148112-LCNI-5            MALAWI                         LNS                    1       66     198
>=30      0-24 months   ki1148112-LCNI-5            MALAWI                         Other                  0       16     198
>=30      0-24 months   ki1148112-LCNI-5            MALAWI                         Other                  1       31     198
<20       0-24 months   ki1148112-LCNI-5            MALAWI                         Control                0       15     108
<20       0-24 months   ki1148112-LCNI-5            MALAWI                         Control                1       17     108
<20       0-24 months   ki1148112-LCNI-5            MALAWI                         LNS                    0       21     108
<20       0-24 months   ki1148112-LCNI-5            MALAWI                         LNS                    1       23     108
<20       0-24 months   ki1148112-LCNI-5            MALAWI                         Other                  0       17     108
<20       0-24 months   ki1148112-LCNI-5            MALAWI                         Other                  1       15     108
[20-25)   0-24 months   ki1148112-LCNI-5            MALAWI                         Control                0       18     193
[20-25)   0-24 months   ki1148112-LCNI-5            MALAWI                         Control                1       31     193
[20-25)   0-24 months   ki1148112-LCNI-5            MALAWI                         LNS                    0       39     193
[20-25)   0-24 months   ki1148112-LCNI-5            MALAWI                         LNS                    1       52     193
[20-25)   0-24 months   ki1148112-LCNI-5            MALAWI                         Other                  0       25     193
[20-25)   0-24 months   ki1148112-LCNI-5            MALAWI                         Other                  1       28     193
[25-30)   0-24 months   ki1148112-LCNI-5            MALAWI                         Control                0       21     171
[25-30)   0-24 months   ki1148112-LCNI-5            MALAWI                         Control                1       23     171
[25-30)   0-24 months   ki1148112-LCNI-5            MALAWI                         LNS                    0       34     171
[25-30)   0-24 months   ki1148112-LCNI-5            MALAWI                         LNS                    1       50     171
[25-30)   0-24 months   ki1148112-LCNI-5            MALAWI                         Other                  0       14     171
[25-30)   0-24 months   ki1148112-LCNI-5            MALAWI                         Other                  1       29     171
[20-25)   0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control                0     2139    6957
[20-25)   0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control                1     1327    6957
[20-25)   0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Maternal               0     2205    6957
[20-25)   0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Maternal               1     1286    6957
[25-30)   0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control                0     1091    3647
[25-30)   0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control                1      662    3647
[25-30)   0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Maternal               0     1219    3647
[25-30)   0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Maternal               1      675    3647
<20       0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control                0     2885   10495
<20       0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control                1     2357   10495
<20       0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Maternal               0     3091   10495
<20       0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Maternal               1     2162   10495
>=30      0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control                0      533    1825
>=30      0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control                1      351    1825
>=30      0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Maternal               0      590    1825
>=30      0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Maternal               1      351    1825
[25-30)   0-6 months    iLiNS_DYADM_LNS             MALAWI                         Control                0        4      11
[25-30)   0-6 months    iLiNS_DYADM_LNS             MALAWI                         Control                1        2      11
[25-30)   0-6 months    iLiNS_DYADM_LNS             MALAWI                         LNS                    0        4      11
[25-30)   0-6 months    iLiNS_DYADM_LNS             MALAWI                         LNS                    1        1      11
[20-25)   0-6 months    iLiNS_DYADM_LNS             MALAWI                         Control                0        6      11
[20-25)   0-6 months    iLiNS_DYADM_LNS             MALAWI                         LNS                    0        5      11
<20       0-6 months    iLiNS_DYADM_LNS             MALAWI                         Control                0        4      12
<20       0-6 months    iLiNS_DYADM_LNS             MALAWI                         Control                1        1      12
<20       0-6 months    iLiNS_DYADM_LNS             MALAWI                         LNS                    0        3      12
<20       0-6 months    iLiNS_DYADM_LNS             MALAWI                         LNS                    1        4      12
>=30      0-6 months    iLiNS_DYADM_LNS             MALAWI                         Control                0        4       9
>=30      0-6 months    iLiNS_DYADM_LNS             MALAWI                         Control                1        2       9
>=30      0-6 months    iLiNS_DYADM_LNS             MALAWI                         LNS                    0        3       9
>=30      0-6 months    iLiNS_DYADM_LNS             MALAWI                         LNS                    1        0       9
[20-25)   6-24 months   iLiNS-Zinc_ZvLNS            BURKINA FASO                   Control                0      129     592
[20-25)   6-24 months   iLiNS-Zinc_ZvLNS            BURKINA FASO                   Control                1       23     592
[20-25)   6-24 months   iLiNS-Zinc_ZvLNS            BURKINA FASO                   Zinc                   0      376     592
[20-25)   6-24 months   iLiNS-Zinc_ZvLNS            BURKINA FASO                   Zinc                   1       64     592
>=30      6-24 months   iLiNS-Zinc_ZvLNS            BURKINA FASO                   Control                0      128     664
>=30      6-24 months   iLiNS-Zinc_ZvLNS            BURKINA FASO                   Control                1       16     664
>=30      6-24 months   iLiNS-Zinc_ZvLNS            BURKINA FASO                   Zinc                   0      453     664
>=30      6-24 months   iLiNS-Zinc_ZvLNS            BURKINA FASO                   Zinc                   1       67     664
[25-30)   6-24 months   iLiNS-Zinc_ZvLNS            BURKINA FASO                   Control                0      118     500
[25-30)   6-24 months   iLiNS-Zinc_ZvLNS            BURKINA FASO                   Control                1       16     500
[25-30)   6-24 months   iLiNS-Zinc_ZvLNS            BURKINA FASO                   Zinc                   0      323     500
[25-30)   6-24 months   iLiNS-Zinc_ZvLNS            BURKINA FASO                   Zinc                   1       43     500
<20       6-24 months   iLiNS-Zinc_ZvLNS            BURKINA FASO                   Control                0       46     246
<20       6-24 months   iLiNS-Zinc_ZvLNS            BURKINA FASO                   Control                1       12     246
<20       6-24 months   iLiNS-Zinc_ZvLNS            BURKINA FASO                   Zinc                   0      158     246
<20       6-24 months   iLiNS-Zinc_ZvLNS            BURKINA FASO                   Zinc                   1       30     246
[25-30)   6-24 months   iLiNS_DYADM_LNS             MALAWI                         Control                0       53     149
[25-30)   6-24 months   iLiNS_DYADM_LNS             MALAWI                         Control                1       16     149
[25-30)   6-24 months   iLiNS_DYADM_LNS             MALAWI                         LNS                    0       57     149
[25-30)   6-24 months   iLiNS_DYADM_LNS             MALAWI                         LNS                    1       23     149
<20       6-24 months   iLiNS_DYADM_LNS             MALAWI                         Control                0       62     144
<20       6-24 months   iLiNS_DYADM_LNS             MALAWI                         Control                1       17     144
<20       6-24 months   iLiNS_DYADM_LNS             MALAWI                         LNS                    0       46     144
<20       6-24 months   iLiNS_DYADM_LNS             MALAWI                         LNS                    1       19     144
[20-25)   6-24 months   iLiNS_DYADM_LNS             MALAWI                         Control                0       78     195
[20-25)   6-24 months   iLiNS_DYADM_LNS             MALAWI                         Control                1       21     195
[20-25)   6-24 months   iLiNS_DYADM_LNS             MALAWI                         LNS                    0       64     195
[20-25)   6-24 months   iLiNS_DYADM_LNS             MALAWI                         LNS                    1       32     195
>=30      6-24 months   iLiNS_DYADM_LNS             MALAWI                         Control                0       45     128
>=30      6-24 months   iLiNS_DYADM_LNS             MALAWI                         Control                1       20     128
>=30      6-24 months   iLiNS_DYADM_LNS             MALAWI                         LNS                    0       48     128
>=30      6-24 months   iLiNS_DYADM_LNS             MALAWI                         LNS                    1       15     128
[20-25)   0-24 months   iLiNS-Zinc_ZvLNS            BURKINA FASO                   Control                0      126     713
[20-25)   0-24 months   iLiNS-Zinc_ZvLNS            BURKINA FASO                   Control                1       55     713
[20-25)   0-24 months   iLiNS-Zinc_ZvLNS            BURKINA FASO                   Zinc                   0      354     713
[20-25)   0-24 months   iLiNS-Zinc_ZvLNS            BURKINA FASO                   Zinc                   1      178     713
>=30      0-24 months   iLiNS-Zinc_ZvLNS            BURKINA FASO                   Control                0      122     792
>=30      0-24 months   iLiNS-Zinc_ZvLNS            BURKINA FASO                   Control                1       54     792
>=30      0-24 months   iLiNS-Zinc_ZvLNS            BURKINA FASO                   Zinc                   0      426     792
>=30      0-24 months   iLiNS-Zinc_ZvLNS            BURKINA FASO                   Zinc                   1      190     792
[25-30)   0-24 months   iLiNS-Zinc_ZvLNS            BURKINA FASO                   Control                0      112     584
[25-30)   0-24 months   iLiNS-Zinc_ZvLNS            BURKINA FASO                   Control                1       46     584
[25-30)   0-24 months   iLiNS-Zinc_ZvLNS            BURKINA FASO                   Zinc                   0      302     584
[25-30)   0-24 months   iLiNS-Zinc_ZvLNS            BURKINA FASO                   Zinc                   1      124     584
<20       0-24 months   iLiNS-Zinc_ZvLNS            BURKINA FASO                   Control                0       41     309
<20       0-24 months   iLiNS-Zinc_ZvLNS            BURKINA FASO                   Control                1       33     309
<20       0-24 months   iLiNS-Zinc_ZvLNS            BURKINA FASO                   Zinc                   0      151     309
<20       0-24 months   iLiNS-Zinc_ZvLNS            BURKINA FASO                   Zinc                   1       84     309
[25-30)   0-24 months   iLiNS_DYADM_LNS             MALAWI                         Control                0       50     189
[25-30)   0-24 months   iLiNS_DYADM_LNS             MALAWI                         Control                1       38     189
[25-30)   0-24 months   iLiNS_DYADM_LNS             MALAWI                         LNS                    0       54     189
[25-30)   0-24 months   iLiNS_DYADM_LNS             MALAWI                         LNS                    1       47     189
<20       0-24 months   iLiNS_DYADM_LNS             MALAWI                         Control                0       61     177
<20       0-24 months   iLiNS_DYADM_LNS             MALAWI                         Control                1       34     177
<20       0-24 months   iLiNS_DYADM_LNS             MALAWI                         LNS                    0       43     177
<20       0-24 months   iLiNS_DYADM_LNS             MALAWI                         LNS                    1       39     177
>=30      0-24 months   iLiNS_DYADM_LNS             MALAWI                         Control                0       42     168
>=30      0-24 months   iLiNS_DYADM_LNS             MALAWI                         Control                1       46     168
>=30      0-24 months   iLiNS_DYADM_LNS             MALAWI                         LNS                    0       47     168
>=30      0-24 months   iLiNS_DYADM_LNS             MALAWI                         LNS                    1       33     168
[20-25)   0-24 months   iLiNS_DYADM_LNS             MALAWI                         Control                0       75     237
[20-25)   0-24 months   iLiNS_DYADM_LNS             MALAWI                         Control                1       44     237
[20-25)   0-24 months   iLiNS_DYADM_LNS             MALAWI                         LNS                    0       62     237
[20-25)   0-24 months   iLiNS_DYADM_LNS             MALAWI                         LNS                    1       56     237


The following strata were considered:

* mage: [20-25), agecat: 0-24 months, studyid: iLiNS_DYADM_LNS, country: MALAWI
* mage: [20-25), agecat: 0-24 months, studyid: iLiNS-Zinc_ZvLNS, country: BURKINA FASO
* mage: [20-25), agecat: 0-24 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* mage: [20-25), agecat: 0-24 months, studyid: ki1000111-WASH-Kenya, country: KENYA
* mage: [20-25), agecat: 0-24 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* mage: [20-25), agecat: 0-24 months, studyid: ki1000304-EU, country: INDIA
* mage: [20-25), agecat: 0-24 months, studyid: ki1000304-VITAMIN-A, country: INDIA
* mage: [20-25), agecat: 0-24 months, studyid: ki1000304-Vitamin-B12, country: INDIA
* mage: [20-25), agecat: 0-24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* mage: [20-25), agecat: 0-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* mage: [20-25), agecat: 0-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* mage: [20-25), agecat: 0-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* mage: [20-25), agecat: 0-24 months, studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO
* mage: [20-25), agecat: 0-24 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* mage: [20-25), agecat: 0-24 months, studyid: ki1112895-iLiNS-Zinc, country: BURKINA FASO
* mage: [20-25), agecat: 0-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* mage: [20-25), agecat: 0-24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* mage: [20-25), agecat: 0-24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* mage: [20-25), agecat: 0-24 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* mage: [20-25), agecat: 0-24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* mage: [20-25), agecat: 0-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* mage: [20-25), agecat: 0-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* mage: [20-25), agecat: 0-6 months, studyid: iLiNS_DYADM_LNS, country: MALAWI
* mage: [20-25), agecat: 0-6 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* mage: [20-25), agecat: 0-6 months, studyid: ki1000111-WASH-Kenya, country: KENYA
* mage: [20-25), agecat: 0-6 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* mage: [20-25), agecat: 0-6 months, studyid: ki1000304-EU, country: INDIA
* mage: [20-25), agecat: 0-6 months, studyid: ki1000304-VITAMIN-A, country: INDIA
* mage: [20-25), agecat: 0-6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* mage: [20-25), agecat: 0-6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* mage: [20-25), agecat: 0-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* mage: [20-25), agecat: 0-6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* mage: [20-25), agecat: 0-6 months, studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO
* mage: [20-25), agecat: 0-6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* mage: [20-25), agecat: 0-6 months, studyid: ki1119695-PROBIT, country: BELARUS
* mage: [20-25), agecat: 0-6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* mage: [20-25), agecat: 0-6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* mage: [20-25), agecat: 0-6 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* mage: [20-25), agecat: 0-6 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* mage: [20-25), agecat: 0-6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* mage: [20-25), agecat: 0-6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* mage: [20-25), agecat: 6-24 months, studyid: iLiNS_DYADM_LNS, country: MALAWI
* mage: [20-25), agecat: 6-24 months, studyid: iLiNS-Zinc_ZvLNS, country: BURKINA FASO
* mage: [20-25), agecat: 6-24 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* mage: [20-25), agecat: 6-24 months, studyid: ki1000111-WASH-Kenya, country: KENYA
* mage: [20-25), agecat: 6-24 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* mage: [20-25), agecat: 6-24 months, studyid: ki1000304-EU, country: INDIA
* mage: [20-25), agecat: 6-24 months, studyid: ki1000304-VITAMIN-A, country: INDIA
* mage: [20-25), agecat: 6-24 months, studyid: ki1000304-Vitamin-B12, country: INDIA
* mage: [20-25), agecat: 6-24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* mage: [20-25), agecat: 6-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* mage: [20-25), agecat: 6-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* mage: [20-25), agecat: 6-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* mage: [20-25), agecat: 6-24 months, studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO
* mage: [20-25), agecat: 6-24 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* mage: [20-25), agecat: 6-24 months, studyid: ki1112895-iLiNS-Zinc, country: BURKINA FASO
* mage: [20-25), agecat: 6-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* mage: [20-25), agecat: 6-24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* mage: [20-25), agecat: 6-24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* mage: [20-25), agecat: 6-24 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* mage: [20-25), agecat: 6-24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* mage: [20-25), agecat: 6-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* mage: [20-25), agecat: 6-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* mage: [25-30), agecat: 0-24 months, studyid: iLiNS_DYADM_LNS, country: MALAWI
* mage: [25-30), agecat: 0-24 months, studyid: iLiNS-Zinc_ZvLNS, country: BURKINA FASO
* mage: [25-30), agecat: 0-24 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* mage: [25-30), agecat: 0-24 months, studyid: ki1000111-WASH-Kenya, country: KENYA
* mage: [25-30), agecat: 0-24 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* mage: [25-30), agecat: 0-24 months, studyid: ki1000304-EU, country: INDIA
* mage: [25-30), agecat: 0-24 months, studyid: ki1000304-VITAMIN-A, country: INDIA
* mage: [25-30), agecat: 0-24 months, studyid: ki1000304-Vitamin-B12, country: INDIA
* mage: [25-30), agecat: 0-24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* mage: [25-30), agecat: 0-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* mage: [25-30), agecat: 0-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* mage: [25-30), agecat: 0-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* mage: [25-30), agecat: 0-24 months, studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO
* mage: [25-30), agecat: 0-24 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* mage: [25-30), agecat: 0-24 months, studyid: ki1112895-iLiNS-Zinc, country: BURKINA FASO
* mage: [25-30), agecat: 0-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* mage: [25-30), agecat: 0-24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* mage: [25-30), agecat: 0-24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* mage: [25-30), agecat: 0-24 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* mage: [25-30), agecat: 0-24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* mage: [25-30), agecat: 0-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* mage: [25-30), agecat: 0-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* mage: [25-30), agecat: 0-6 months, studyid: iLiNS_DYADM_LNS, country: MALAWI
* mage: [25-30), agecat: 0-6 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* mage: [25-30), agecat: 0-6 months, studyid: ki1000111-WASH-Kenya, country: KENYA
* mage: [25-30), agecat: 0-6 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* mage: [25-30), agecat: 0-6 months, studyid: ki1000304-EU, country: INDIA
* mage: [25-30), agecat: 0-6 months, studyid: ki1000304-VITAMIN-A, country: INDIA
* mage: [25-30), agecat: 0-6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* mage: [25-30), agecat: 0-6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* mage: [25-30), agecat: 0-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* mage: [25-30), agecat: 0-6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* mage: [25-30), agecat: 0-6 months, studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO
* mage: [25-30), agecat: 0-6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* mage: [25-30), agecat: 0-6 months, studyid: ki1119695-PROBIT, country: BELARUS
* mage: [25-30), agecat: 0-6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* mage: [25-30), agecat: 0-6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* mage: [25-30), agecat: 0-6 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* mage: [25-30), agecat: 0-6 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* mage: [25-30), agecat: 0-6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* mage: [25-30), agecat: 0-6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* mage: [25-30), agecat: 6-24 months, studyid: iLiNS_DYADM_LNS, country: MALAWI
* mage: [25-30), agecat: 6-24 months, studyid: iLiNS-Zinc_ZvLNS, country: BURKINA FASO
* mage: [25-30), agecat: 6-24 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* mage: [25-30), agecat: 6-24 months, studyid: ki1000111-WASH-Kenya, country: KENYA
* mage: [25-30), agecat: 6-24 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* mage: [25-30), agecat: 6-24 months, studyid: ki1000304-EU, country: INDIA
* mage: [25-30), agecat: 6-24 months, studyid: ki1000304-VITAMIN-A, country: INDIA
* mage: [25-30), agecat: 6-24 months, studyid: ki1000304-Vitamin-B12, country: INDIA
* mage: [25-30), agecat: 6-24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* mage: [25-30), agecat: 6-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* mage: [25-30), agecat: 6-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* mage: [25-30), agecat: 6-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* mage: [25-30), agecat: 6-24 months, studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO
* mage: [25-30), agecat: 6-24 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* mage: [25-30), agecat: 6-24 months, studyid: ki1112895-iLiNS-Zinc, country: BURKINA FASO
* mage: [25-30), agecat: 6-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* mage: [25-30), agecat: 6-24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* mage: [25-30), agecat: 6-24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* mage: [25-30), agecat: 6-24 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* mage: [25-30), agecat: 6-24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* mage: [25-30), agecat: 6-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* mage: [25-30), agecat: 6-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* mage: <20, agecat: 0-24 months, studyid: iLiNS_DYADM_LNS, country: MALAWI
* mage: <20, agecat: 0-24 months, studyid: iLiNS-Zinc_ZvLNS, country: BURKINA FASO
* mage: <20, agecat: 0-24 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* mage: <20, agecat: 0-24 months, studyid: ki1000111-WASH-Kenya, country: KENYA
* mage: <20, agecat: 0-24 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* mage: <20, agecat: 0-24 months, studyid: ki1000304-EU, country: INDIA
* mage: <20, agecat: 0-24 months, studyid: ki1000304-VITAMIN-A, country: INDIA
* mage: <20, agecat: 0-24 months, studyid: ki1000304-Vitamin-B12, country: INDIA
* mage: <20, agecat: 0-24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* mage: <20, agecat: 0-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* mage: <20, agecat: 0-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* mage: <20, agecat: 0-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* mage: <20, agecat: 0-24 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* mage: <20, agecat: 0-24 months, studyid: ki1112895-iLiNS-Zinc, country: BURKINA FASO
* mage: <20, agecat: 0-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* mage: <20, agecat: 0-24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* mage: <20, agecat: 0-24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* mage: <20, agecat: 0-24 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* mage: <20, agecat: 0-24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* mage: <20, agecat: 0-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* mage: <20, agecat: 0-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* mage: <20, agecat: 0-6 months, studyid: iLiNS_DYADM_LNS, country: MALAWI
* mage: <20, agecat: 0-6 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* mage: <20, agecat: 0-6 months, studyid: ki1000111-WASH-Kenya, country: KENYA
* mage: <20, agecat: 0-6 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* mage: <20, agecat: 0-6 months, studyid: ki1000304-EU, country: INDIA
* mage: <20, agecat: 0-6 months, studyid: ki1000304-VITAMIN-A, country: INDIA
* mage: <20, agecat: 0-6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* mage: <20, agecat: 0-6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* mage: <20, agecat: 0-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* mage: <20, agecat: 0-6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* mage: <20, agecat: 0-6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* mage: <20, agecat: 0-6 months, studyid: ki1119695-PROBIT, country: BELARUS
* mage: <20, agecat: 0-6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* mage: <20, agecat: 0-6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* mage: <20, agecat: 0-6 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* mage: <20, agecat: 0-6 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* mage: <20, agecat: 0-6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* mage: <20, agecat: 0-6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* mage: <20, agecat: 6-24 months, studyid: iLiNS_DYADM_LNS, country: MALAWI
* mage: <20, agecat: 6-24 months, studyid: iLiNS-Zinc_ZvLNS, country: BURKINA FASO
* mage: <20, agecat: 6-24 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* mage: <20, agecat: 6-24 months, studyid: ki1000111-WASH-Kenya, country: KENYA
* mage: <20, agecat: 6-24 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* mage: <20, agecat: 6-24 months, studyid: ki1000304-EU, country: INDIA
* mage: <20, agecat: 6-24 months, studyid: ki1000304-VITAMIN-A, country: INDIA
* mage: <20, agecat: 6-24 months, studyid: ki1000304-Vitamin-B12, country: INDIA
* mage: <20, agecat: 6-24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* mage: <20, agecat: 6-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* mage: <20, agecat: 6-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* mage: <20, agecat: 6-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* mage: <20, agecat: 6-24 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* mage: <20, agecat: 6-24 months, studyid: ki1112895-iLiNS-Zinc, country: BURKINA FASO
* mage: <20, agecat: 6-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* mage: <20, agecat: 6-24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* mage: <20, agecat: 6-24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* mage: <20, agecat: 6-24 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* mage: <20, agecat: 6-24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* mage: <20, agecat: 6-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* mage: <20, agecat: 6-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* mage: >=30, agecat: 0-24 months, studyid: iLiNS_DYADM_LNS, country: MALAWI
* mage: >=30, agecat: 0-24 months, studyid: iLiNS-Zinc_ZvLNS, country: BURKINA FASO
* mage: >=30, agecat: 0-24 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* mage: >=30, agecat: 0-24 months, studyid: ki1000111-WASH-Kenya, country: KENYA
* mage: >=30, agecat: 0-24 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* mage: >=30, agecat: 0-24 months, studyid: ki1000304-EU, country: INDIA
* mage: >=30, agecat: 0-24 months, studyid: ki1000304-VITAMIN-A, country: INDIA
* mage: >=30, agecat: 0-24 months, studyid: ki1000304-Vitamin-B12, country: INDIA
* mage: >=30, agecat: 0-24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* mage: >=30, agecat: 0-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* mage: >=30, agecat: 0-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* mage: >=30, agecat: 0-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* mage: >=30, agecat: 0-24 months, studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO
* mage: >=30, agecat: 0-24 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* mage: >=30, agecat: 0-24 months, studyid: ki1112895-iLiNS-Zinc, country: BURKINA FASO
* mage: >=30, agecat: 0-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* mage: >=30, agecat: 0-24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* mage: >=30, agecat: 0-24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* mage: >=30, agecat: 0-24 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* mage: >=30, agecat: 0-24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* mage: >=30, agecat: 0-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* mage: >=30, agecat: 0-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* mage: >=30, agecat: 0-6 months, studyid: iLiNS_DYADM_LNS, country: MALAWI
* mage: >=30, agecat: 0-6 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* mage: >=30, agecat: 0-6 months, studyid: ki1000111-WASH-Kenya, country: KENYA
* mage: >=30, agecat: 0-6 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* mage: >=30, agecat: 0-6 months, studyid: ki1000304-VITAMIN-A, country: INDIA
* mage: >=30, agecat: 0-6 months, studyid: ki1000304-Vitamin-B12, country: INDIA
* mage: >=30, agecat: 0-6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* mage: >=30, agecat: 0-6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* mage: >=30, agecat: 0-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* mage: >=30, agecat: 0-6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* mage: >=30, agecat: 0-6 months, studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO
* mage: >=30, agecat: 0-6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* mage: >=30, agecat: 0-6 months, studyid: ki1119695-PROBIT, country: BELARUS
* mage: >=30, agecat: 0-6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* mage: >=30, agecat: 0-6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* mage: >=30, agecat: 0-6 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* mage: >=30, agecat: 0-6 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* mage: >=30, agecat: 0-6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* mage: >=30, agecat: 0-6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* mage: >=30, agecat: 6-24 months, studyid: iLiNS_DYADM_LNS, country: MALAWI
* mage: >=30, agecat: 6-24 months, studyid: iLiNS-Zinc_ZvLNS, country: BURKINA FASO
* mage: >=30, agecat: 6-24 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* mage: >=30, agecat: 6-24 months, studyid: ki1000111-WASH-Kenya, country: KENYA
* mage: >=30, agecat: 6-24 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* mage: >=30, agecat: 6-24 months, studyid: ki1000304-EU, country: INDIA
* mage: >=30, agecat: 6-24 months, studyid: ki1000304-VITAMIN-A, country: INDIA
* mage: >=30, agecat: 6-24 months, studyid: ki1000304-Vitamin-B12, country: INDIA
* mage: >=30, agecat: 6-24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* mage: >=30, agecat: 6-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* mage: >=30, agecat: 6-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* mage: >=30, agecat: 6-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* mage: >=30, agecat: 6-24 months, studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO
* mage: >=30, agecat: 6-24 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* mage: >=30, agecat: 6-24 months, studyid: ki1112895-iLiNS-Zinc, country: BURKINA FASO
* mage: >=30, agecat: 6-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* mage: >=30, agecat: 6-24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* mage: >=30, agecat: 6-24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* mage: >=30, agecat: 6-24 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* mage: >=30, agecat: 6-24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* mage: >=30, agecat: 6-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* mage: >=30, agecat: 6-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* mage: [20-25), agecat: 0-6 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* mage: [25-30), agecat: 0-6 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* mage: <20, agecat: 0-6 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* mage: >=30, agecat: 0-6 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* mage: <20, agecat: 0-6 months, studyid: ki1000111-WASH-Kenya, country: KENYA
* mage: [20-25), agecat: 0-6 months, studyid: ki1000111-WASH-Kenya, country: KENYA
* mage: [25-30), agecat: 0-6 months, studyid: ki1000111-WASH-Kenya, country: KENYA
* mage: >=30, agecat: 0-6 months, studyid: ki1000111-WASH-Kenya, country: KENYA
* mage: [25-30), agecat: 0-6 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* mage: <20, agecat: 0-6 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* mage: [20-25), agecat: 0-6 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* mage: [20-25), agecat: 0-6 months, studyid: ki1000304-EU, country: INDIA
* mage: <20, agecat: 0-6 months, studyid: ki1000304-EU, country: INDIA
* mage: [25-30), agecat: 0-6 months, studyid: ki1000304-EU, country: INDIA
* mage: >=30, agecat: 0-6 months, studyid: ki1000304-VITAMIN-A, country: INDIA
* mage: <20, agecat: 0-6 months, studyid: ki1000304-VITAMIN-A, country: INDIA
* mage: >=30, agecat: 0-6 months, studyid: ki1000304-Vitamin-B12, country: INDIA
* mage: <20, agecat: 0-6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* mage: <20, agecat: 0-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* mage: <20, agecat: 0-6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* mage: [25-30), agecat: 0-6 months, studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO
* mage: [20-25), agecat: 0-6 months, studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO
* mage: >=30, agecat: 0-6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* mage: <20, agecat: 0-6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* mage: [25-30), agecat: 0-6 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* mage: >=30, agecat: 0-6 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* mage: [20-25), agecat: 0-6 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* mage: <20, agecat: 0-6 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* mage: <20, agecat: 0-6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* mage: [25-30), agecat: 0-6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* mage: <20, agecat: 6-24 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* mage: >=30, agecat: 6-24 months, studyid: ki1000304-EU, country: INDIA
* mage: <20, agecat: 6-24 months, studyid: ki1000304-EU, country: INDIA
* mage: [25-30), agecat: 6-24 months, studyid: ki1000304-Vitamin-B12, country: INDIA
* mage: >=30, agecat: 6-24 months, studyid: ki1000304-Vitamin-B12, country: INDIA
* mage: <20, agecat: 6-24 months, studyid: ki1000304-Vitamin-B12, country: INDIA
* mage: >=30, agecat: 6-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* mage: <20, agecat: 6-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* mage: <20, agecat: 6-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* mage: <20, agecat: 6-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* mage: [25-30), agecat: 6-24 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* mage: <20, agecat: 6-24 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* mage: >=30, agecat: 6-24 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* mage: [25-30), agecat: 0-24 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* mage: [20-25), agecat: 0-24 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* mage: <20, agecat: 0-24 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* mage: <20, agecat: 0-24 months, studyid: ki1000304-Vitamin-B12, country: INDIA
* mage: >=30, agecat: 0-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* mage: <20, agecat: 0-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* mage: [25-30), agecat: 0-6 months, studyid: iLiNS_DYADM_LNS, country: MALAWI
* mage: <20, agecat: 0-6 months, studyid: iLiNS_DYADM_LNS, country: MALAWI
* mage: >=30, agecat: 0-6 months, studyid: iLiNS_DYADM_LNS, country: MALAWI

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
##   Zinc     1412  734
##           ever_stunted
## tr         0
##   Control  0
##   LNS      0
##   Maternal 0
##   Other    0
##   VitA     0
##   Zinc     8
##           ever_stunted
## tr          0
##   Control  17
##   LNS       0
##   Maternal 10
##   Other     0
##   VitA      0
##   Zinc      0
##           ever_stunted
## tr            0    1
##   Control     0    0
##   LNS         0    0
##   Maternal    0    0
##   Other       0    0
##   VitA        0    0
##   Zinc     1436  144
##           ever_stunted
## tr           0   1
##   Control    0   0
##   LNS        0   0
##   Maternal   0   0
##   Other      0   0
##   VitA       0   0
##   Zinc     476 326
##           ever_stunted
## tr         0
##   Control  6
##   LNS      5
##   Maternal 0
##   Other    0
##   VitA     0
##   Zinc     0
##           ever_stunted
## tr          0
##   Control  10
##   LNS       0
##   Maternal  8
##   Other     0
##   VitA      0
##   Zinc      0
##           ever_stunted
## tr           0   1
##   Control    0   0
##   LNS        0   0
##   Maternal   0   0
##   Other      0   0
##   VitA       0   0
##   Zinc     489  69
##           ever_stunted
## tr            0    1
##   Control     0    0
##   LNS         0    0
##   Maternal    0    0
##   Other       0    0
##   VitA        0    0
##   Zinc     1858  984
##           ever_stunted
## tr          0
##   Control  11
##   LNS       0
##   Maternal  9
##   Other     0
##   VitA      0
##   Zinc      0
##           ever_stunted
## tr            0    1
##   Control     0    0
##   LNS         0    0
##   Maternal    0    0
##   Other       0    0
##   VitA        0    0
##   Zinc     1890  219
```




# Results Detail

## Results Plots
![](/tmp/92694ec1-1dd6-40c2-b1b6-e90a3017ef9d/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/92694ec1-1dd6-40c2-b1b6-e90a3017ef9d/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/92694ec1-1dd6-40c2-b1b6-e90a3017ef9d/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/92694ec1-1dd6-40c2-b1b6-e90a3017ef9d/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


mage      agecat        studyid                     country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
--------  ------------  --------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
<20       0-24 months   iLiNS_DYADM_LNS             MALAWI                         Control              NA                0.3578947   0.3060090   0.4097804
<20       0-24 months   iLiNS_DYADM_LNS             MALAWI                         LNS                  NA                0.4756098   0.4253911   0.5258284
<20       0-24 months   iLiNS-Zinc_ZvLNS            BURKINA FASO                   Control              NA                0.4459459   0.2515843   0.6403076
<20       0-24 months   iLiNS-Zinc_ZvLNS            BURKINA FASO                   Zinc                 NA                0.3574468   0.2635808   0.4513128
<20       0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                0.3618677   0.3030912   0.4206442
<20       0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                  NA                0.3421053   0.2887520   0.3954586
<20       0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                NA                0.4150613   0.3746285   0.4554940
<20       0-24 months   ki1000111-WASH-Kenya        KENYA                          Control              NA                0.2919075   0.2439775   0.3398375
<20       0-24 months   ki1000111-WASH-Kenya        KENYA                          LNS                  NA                0.2032086   0.1455053   0.2609118
<20       0-24 months   ki1000111-WASH-Kenya        KENYA                          Other                NA                0.3106796   0.2659705   0.3553888
<20       0-24 months   ki1000304-EU                INDIA                          Control              NA                0.4181818   0.2871157   0.5492480
<20       0-24 months   ki1000304-EU                INDIA                          Zinc                 NA                0.5000000   0.3401643   0.6598357
<20       0-24 months   ki1000304-VITAMIN-A         INDIA                          Control              NA                0.5254237   0.4765429   0.5743046
<20       0-24 months   ki1000304-VITAMIN-A         INDIA                          VitA                 NA                0.5600000   0.5152688   0.6047312
<20       0-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control              NA                0.5692308   0.5434798   0.5949817
<20       0-24 months   ki1000304b-SAS-CompFeed     INDIA                          Other                NA                0.6393443   0.5779732   0.7007153
<20       0-24 months   ki1017093b-PROVIDE          BANGLADESH                     Control              NA                0.6000000   0.5494033   0.6505967
<20       0-24 months   ki1017093b-PROVIDE          BANGLADESH                     Other                NA                0.4576271   0.3555798   0.5596745
<20       0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              NA                0.2631579   0.1227051   0.4036107
<20       0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                NA                0.1944444   0.0647501   0.3241388
<20       0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                 NA                0.2023810   0.1161884   0.2885735
<20       0-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Control              NA                0.6000000   0.4912808   0.7087192
<20       0-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Other                NA                0.6000000   0.4912808   0.7087192
<20       0-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Control              NA                0.4787234   0.4552423   0.5022045
<20       0-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   LNS                  NA                0.3786408   0.3193490   0.4379325
<20       0-24 months   ki1119695-PROBIT            BELARUS                        Control              NA                0.1666667   0.1426393   0.1906940
<20       0-24 months   ki1119695-PROBIT            BELARUS                        Maternal             NA                0.1440953   0.1282437   0.1599470
<20       0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                0.3758099   0.3647719   0.3868480
<20       0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       VitA                 NA                0.3631124   0.3441363   0.3820884
<20       0-24 months   ki1135781-COHORTS           GUATEMALA                      Control              NA                0.8210526   0.7790898   0.8630154
<20       0-24 months   ki1135781-COHORTS           GUATEMALA                      Other                NA                0.7750000   0.7330491   0.8169509
<20       0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                0.5918367   0.5693969   0.6142766
<20       0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS                  NA                0.5714286   0.5201900   0.6226671
<20       0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control              NA                0.3578947   0.3231403   0.3926492
<20       0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Maternal             NA                0.4556213   0.4074638   0.5037788
<20       0-24 months   ki1148112-LCNI-5            MALAWI                         Control              NA                0.5312500   0.3575446   0.7049554
<20       0-24 months   ki1148112-LCNI-5            MALAWI                         LNS                  NA                0.5227273   0.3744541   0.6710005
<20       0-24 months   ki1148112-LCNI-5            MALAWI                         Other                NA                0.4687500   0.2950446   0.6424554
<20       0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                0.4496375   0.4412772   0.4579979
<20       0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Maternal             NA                0.4115743   0.4041009   0.4190478
<20       0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Control              NA                0.2641509   0.2015993   0.3267026
<20       0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Other                NA                0.2830189   0.2222042   0.3438335
<20       0-6 months    ki1112895-Guatemala BSC     GUATEMALA                      Control              NA                0.3684211   0.2613710   0.4754711
<20       0-6 months    ki1112895-Guatemala BSC     GUATEMALA                      Other                NA                0.3500000   0.2414000   0.4586000
<20       0-6 months    ki1119695-PROBIT            BELARUS                        Control              NA                0.0852713   0.0686940   0.1018487
<20       0-6 months    ki1119695-PROBIT            BELARUS                        Maternal             NA                0.0844595   0.0713369   0.0975821
<20       0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                0.2244898   0.2136210   0.2353586
<20       0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       VitA                 NA                0.1960038   0.1779028   0.2141048
<20       0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                0.3448276   0.3180713   0.3715839
<20       0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         LNS                  NA                0.3710692   0.3073932   0.4347452
<20       0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                0.3099230   0.3017201   0.3181258
<20       0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Maternal             NA                0.2725419   0.2654360   0.2796478
<20       6-24 months   iLiNS_DYADM_LNS             MALAWI                         Control              NA                0.2151899   0.1653008   0.2650790
<20       6-24 months   iLiNS_DYADM_LNS             MALAWI                         LNS                  NA                0.2923077   0.2422238   0.3423916
<20       6-24 months   iLiNS-Zinc_ZvLNS            BURKINA FASO                   Control              NA                0.2068966   0.1044377   0.3093555
<20       6-24 months   iLiNS-Zinc_ZvLNS            BURKINA FASO                   Zinc                 NA                0.1595745   0.1011951   0.2179539
<20       6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                0.1428571   0.0938392   0.1918751
<20       6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                  NA                0.1422594   0.0979470   0.1865718
<20       6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                NA                0.1711491   0.1346259   0.2076724
<20       6-24 months   ki1000111-WASH-Kenya        KENYA                          Control              NA                0.0560000   0.0274790   0.0845210
<20       6-24 months   ki1000111-WASH-Kenya        KENYA                          LNS                  NA                0.0526316   0.0171080   0.0881551
<20       6-24 months   ki1000111-WASH-Kenya        KENYA                          Other                NA                0.0983607   0.0649155   0.1318058
<20       6-24 months   ki1000304-VITAMIN-A         INDIA                          Control              NA                0.1230769   0.0777379   0.1684160
<20       6-24 months   ki1000304-VITAMIN-A         INDIA                          VitA                 NA                0.1000000   0.0636878   0.1363122
<20       6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control              NA                0.2727273   0.2108396   0.3346150
<20       6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Other                NA                0.2926829   0.2130322   0.3723336
<20       6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Control              NA                0.2537313   0.2331009   0.2743618
<20       6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   LNS                  NA                0.1707317   0.1333968   0.2080666
<20       6-24 months   ki1119695-PROBIT            BELARUS                        Control              NA                0.0478655   0.0338372   0.0618937
<20       6-24 months   ki1119695-PROBIT            BELARUS                        Maternal             NA                0.0432852   0.0353232   0.0512472
<20       6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                0.1536313   0.1441908   0.1630717
<20       6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       VitA                 NA                0.1558074   0.1394771   0.1721377
<20       6-24 months   ki1135781-COHORTS           GUATEMALA                      Control              NA                0.6170213   0.5387944   0.6952481
<20       6-24 months   ki1135781-COHORTS           GUATEMALA                      Other                NA                0.5135135   0.4421491   0.5848779
<20       6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                0.2307692   0.2065001   0.2550384
<20       6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS                  NA                0.2432432   0.1842802   0.3022063
<20       6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control              NA                0.2151899   0.1821226   0.2482571
<20       6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Maternal             NA                0.2753623   0.2278569   0.3228678
<20       6-24 months   ki1148112-LCNI-5            MALAWI                         Control              NA                0.3500000   0.1396919   0.5603081
<20       6-24 months   ki1148112-LCNI-5            MALAWI                         LNS                  NA                0.2941176   0.1400301   0.4482052
<20       6-24 months   ki1148112-LCNI-5            MALAWI                         Other                NA                0.2758621   0.1122038   0.4395203
<20       6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                0.1944719   0.1862636   0.2026801
<20       6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Maternal             NA                0.1947162   0.1867308   0.2027017
[20-25)   0-24 months   iLiNS_DYADM_LNS             MALAWI                         Control              NA                0.3697479   0.3261062   0.4133896
[20-25)   0-24 months   iLiNS_DYADM_LNS             MALAWI                         LNS                  NA                0.4745763   0.4296224   0.5195301
[20-25)   0-24 months   iLiNS-Zinc_ZvLNS            BURKINA FASO                   Control              NA                0.3038674   0.2083771   0.3993577
[20-25)   0-24 months   iLiNS-Zinc_ZvLNS            BURKINA FASO                   Zinc                 NA                0.3345865   0.2347265   0.4344464
[20-25)   0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                0.3854875   0.3400477   0.4309273
[20-25)   0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                  NA                0.2893401   0.2445510   0.3341292
[20-25)   0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                NA                0.3938585   0.3588558   0.4288612
[20-25)   0-24 months   ki1000111-WASH-Kenya        KENYA                          Control              NA                0.2542857   0.2220191   0.2865523
[20-25)   0-24 months   ki1000111-WASH-Kenya        KENYA                          LNS                  NA                0.1943794   0.1568362   0.2319226
[20-25)   0-24 months   ki1000111-WASH-Kenya        KENYA                          Other                NA                0.2677778   0.2388415   0.2967141
[20-25)   0-24 months   ki1000304-EU                INDIA                          Control              NA                0.5030675   0.4587291   0.5474059
[20-25)   0-24 months   ki1000304-EU                INDIA                          Zinc                 NA                0.4237996   0.3795232   0.4680759
[20-25)   0-24 months   ki1000304-VITAMIN-A         INDIA                          Control              NA                0.4231242   0.4062631   0.4399854
[20-25)   0-24 months   ki1000304-VITAMIN-A         INDIA                          VitA                 NA                0.4024242   0.3855652   0.4192833
[20-25)   0-24 months   ki1000304-Vitamin-B12       INDIA                          Control              NA                0.4772727   0.4510714   0.5034740
[20-25)   0-24 months   ki1000304-Vitamin-B12       INDIA                          Other                NA                0.4866920   0.4413653   0.5320188
[20-25)   0-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control              NA                0.5673077   0.5254862   0.6091292
[20-25)   0-24 months   ki1000304b-SAS-CompFeed     INDIA                          Other                NA                0.5158730   0.4769704   0.5547757
[20-25)   0-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Control              NA                0.7804878   0.7452700   0.8157057
[20-25)   0-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Other                NA                0.7196262   0.6578853   0.7813670
[20-25)   0-24 months   ki1017093b-PROVIDE          BANGLADESH                     Control              NA                0.3333333   0.3020162   0.3646505
[20-25)   0-24 months   ki1017093b-PROVIDE          BANGLADESH                     Other                NA                0.4033149   0.3526868   0.4539431
[20-25)   0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              NA                0.2312139   0.1683436   0.2940842
[20-25)   0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                NA                0.2258065   0.1656759   0.2859370
[20-25)   0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                 NA                0.2441176   0.1984250   0.2898103
[20-25)   0-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Control              NA                0.5094340   0.4362729   0.5825950
[20-25)   0-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Other                NA                0.5111111   0.4437021   0.5785202
[20-25)   0-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Control              NA                0.3333333   0.3176427   0.3490240
[20-25)   0-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   LNS                  NA                0.3267882   0.2674553   0.3861212
[20-25)   0-24 months   ki1119695-PROBIT            BELARUS                        Control              NA                0.1421291   0.1252013   0.1590569
[20-25)   0-24 months   ki1119695-PROBIT            BELARUS                        Maternal             NA                0.1245711   0.1130199   0.1361223
[20-25)   0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                0.3118971   0.3053700   0.3184242
[20-25)   0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       VitA                 NA                0.3027573   0.2916493   0.3138653
[20-25)   0-24 months   ki1135781-COHORTS           GUATEMALA                      Control              NA                0.7974684   0.7681320   0.8268047
[20-25)   0-24 months   ki1135781-COHORTS           GUATEMALA                      Other                NA                0.7277778   0.6930983   0.7624572
[20-25)   0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                0.4642857   0.4478786   0.4806928
[20-25)   0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS                  NA                0.4585742   0.4232867   0.4938617
[20-25)   0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control              NA                0.3697479   0.3387996   0.4006962
[20-25)   0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Maternal             NA                0.4325581   0.3898653   0.4752510
[20-25)   0-24 months   ki1148112-LCNI-5            MALAWI                         Control              NA                0.6326531   0.4973215   0.7679846
[20-25)   0-24 months   ki1148112-LCNI-5            MALAWI                         LNS                  NA                0.5714286   0.4694878   0.6733694
[20-25)   0-24 months   ki1148112-LCNI-5            MALAWI                         Other                NA                0.5283019   0.3935573   0.6630465
[20-25)   0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                0.3828621   0.3731955   0.3925287
[20-25)   0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Maternal             NA                0.3683758   0.3591733   0.3775784
[20-25)   0-6 months    ki1000304-VITAMIN-A         INDIA                          Control              NA                0.3670886   0.3085733   0.4256039
[20-25)   0-6 months    ki1000304-VITAMIN-A         INDIA                          VitA                 NA                0.3846154   0.3310429   0.4381879
[20-25)   0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Control              NA                0.2209302   0.1891220   0.2527385
[20-25)   0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Other                NA                0.2657005   0.2451848   0.2862162
[20-25)   0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Control              NA                0.3500000   0.3096416   0.3903584
[20-25)   0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Other                NA                0.3738318   0.3068759   0.4407876
[20-25)   0-6 months    ki1017093b-PROVIDE          BANGLADESH                     Control              NA                0.1066667   0.0860787   0.1272546
[20-25)   0-6 months    ki1017093b-PROVIDE          BANGLADESH                     Other                NA                0.1222222   0.0883795   0.1560649
[20-25)   0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              NA                0.0935673   0.0498862   0.1372483
[20-25)   0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                NA                0.0645161   0.0291850   0.0998472
[20-25)   0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                 NA                0.0771513   0.0486423   0.1056604
[20-25)   0-6 months    ki1112895-Guatemala BSC     GUATEMALA                      Control              NA                0.2448980   0.1797052   0.3100908
[20-25)   0-6 months    ki1112895-Guatemala BSC     GUATEMALA                      Other                NA                0.2142857   0.1566940   0.2718774
[20-25)   0-6 months    ki1119695-PROBIT            BELARUS                        Control              NA                0.0678904   0.0573938   0.0783871
[20-25)   0-6 months    ki1119695-PROBIT            BELARUS                        Maternal             NA                0.0659522   0.0585830   0.0733214
[20-25)   0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                0.1645299   0.1585576   0.1705022
[20-25)   0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       VitA                 NA                0.1711518   0.1606827   0.1816209
[20-25)   0-6 months    ki1135781-COHORTS           GUATEMALA                      Control              NA                0.2105263   0.1469685   0.2740842
[20-25)   0-6 months    ki1135781-COHORTS           GUATEMALA                      Other                NA                0.3250000   0.2500832   0.3999168
[20-25)   0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                0.3076923   0.2895728   0.3258118
[20-25)   0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         LNS                  NA                0.2366864   0.1986343   0.2747385
[20-25)   0-6 months    ki1148112-LCNI-5            MALAWI                         Control              NA                0.3333333   0.1300681   0.5365986
[20-25)   0-6 months    ki1148112-LCNI-5            MALAWI                         LNS                  NA                0.2916667   0.1083358   0.4749976
[20-25)   0-6 months    ki1148112-LCNI-5            MALAWI                         Other                NA                0.2941176   0.0757535   0.5124818
[20-25)   0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                0.2420295   0.2331700   0.2508889
[20-25)   0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Maternal             NA                0.2014976   0.1935442   0.2094510
[20-25)   6-24 months   iLiNS_DYADM_LNS             MALAWI                         Control              NA                0.2121212   0.1711320   0.2531104
[20-25)   6-24 months   iLiNS_DYADM_LNS             MALAWI                         LNS                  NA                0.3333333   0.2867898   0.3798769
[20-25)   6-24 months   iLiNS-Zinc_ZvLNS            BURKINA FASO                   Control              NA                0.1513158   0.0589422   0.2436893
[20-25)   6-24 months   iLiNS-Zinc_ZvLNS            BURKINA FASO                   Zinc                 NA                0.1454545   0.0836214   0.2072877
[20-25)   6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                0.1876833   0.1462241   0.2291425
[20-25)   6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                  NA                0.1100629   0.0756510   0.1444748
[20-25)   6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                NA                0.2098976   0.1769124   0.2428828
[20-25)   6-24 months   ki1000111-WASH-Kenya        KENYA                          Control              NA                0.0795053   0.0572117   0.1017990
[20-25)   6-24 months   ki1000111-WASH-Kenya        KENYA                          LNS                  NA                0.0449438   0.0234157   0.0664719
[20-25)   6-24 months   ki1000111-WASH-Kenya        KENYA                          Other                NA                0.0879888   0.0672331   0.1087446
[20-25)   6-24 months   ki1000304-EU                INDIA                          Control              NA                0.0483271   0.0226766   0.0739777
[20-25)   6-24 months   ki1000304-EU                INDIA                          Zinc                 NA                0.0542373   0.0283693   0.0801053
[20-25)   6-24 months   ki1000304-VITAMIN-A         INDIA                          Control              NA                0.0665362   0.0558627   0.0772097
[20-25)   6-24 months   ki1000304-VITAMIN-A         INDIA                          VitA                 NA                0.0515267   0.0419391   0.0611144
[20-25)   6-24 months   ki1000304-Vitamin-B12       INDIA                          Control              NA                0.1132075   0.0925164   0.1338987
[20-25)   6-24 months   ki1000304-Vitamin-B12       INDIA                          Other                NA                0.1204819   0.0828605   0.1581033
[20-25)   6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control              NA                0.3020134   0.2564495   0.3475773
[20-25)   6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Other                NA                0.2430939   0.2229136   0.2632742
[20-25)   6-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Control              NA                0.6000000   0.5491818   0.6508182
[20-25)   6-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Other                NA                0.5384615   0.4452356   0.6316875
[20-25)   6-24 months   ki1017093b-PROVIDE          BANGLADESH                     Control              NA                0.1694915   0.1422706   0.1967125
[20-25)   6-24 months   ki1017093b-PROVIDE          BANGLADESH                     Other                NA                0.2684564   0.2173610   0.3195517
[20-25)   6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              NA                0.1468531   0.0887880   0.2049183
[20-25)   6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                NA                0.1006711   0.0523153   0.1490270
[20-25)   6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                 NA                0.1407942   0.0997992   0.1817893
[20-25)   6-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Control              NA                0.2894737   0.2058160   0.3731314
[20-25)   6-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Other                NA                0.2142857   0.1493135   0.2792579
[20-25)   6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Control              NA                0.1937173   0.1757796   0.2116549
[20-25)   6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   LNS                  NA                0.1469595   0.1039787   0.1899402
[20-25)   6-24 months   ki1119695-PROBIT            BELARUS                        Control              NA                0.0394391   0.0297303   0.0491479
[20-25)   6-24 months   ki1119695-PROBIT            BELARUS                        Maternal             NA                0.0375574   0.0332024   0.0419124
[20-25)   6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                0.1314985   0.1261647   0.1368322
[20-25)   6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       VitA                 NA                0.1216913   0.1128059   0.1305768
[20-25)   6-24 months   ki1135781-COHORTS           GUATEMALA                      Control              NA                0.6363636   0.5865350   0.6861923
[20-25)   6-24 months   ki1135781-COHORTS           GUATEMALA                      Other                NA                0.5111111   0.4587468   0.5634754
[20-25)   6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                0.1428571   0.1287411   0.1569732
[20-25)   6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS                  NA                0.2106825   0.1745878   0.2467771
[20-25)   6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control              NA                0.2121212   0.1831833   0.2410591
[20-25)   6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Maternal             NA                0.2881356   0.2452698   0.3310014
[20-25)   6-24 months   ki1148112-LCNI-5            MALAWI                         Control              NA                0.3666667   0.1935591   0.5397743
[20-25)   6-24 months   ki1148112-LCNI-5            MALAWI                         LNS                  NA                0.3125000   0.1985022   0.4264978
[20-25)   6-24 months   ki1148112-LCNI-5            MALAWI                         Other                NA                0.2777778   0.1308994   0.4246561
[20-25)   6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                0.1855000   0.1757129   0.1952871
[20-25)   6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Maternal             NA                0.2125237   0.2017957   0.2232518
[25-30)   0-24 months   iLiNS_DYADM_LNS             MALAWI                         Control              NA                0.4318182   0.3835041   0.4801323
[25-30)   0-24 months   iLiNS_DYADM_LNS             MALAWI                         LNS                  NA                0.4653465   0.4132243   0.5174688
[25-30)   0-24 months   iLiNS-Zinc_ZvLNS            BURKINA FASO                   Control              NA                0.2911392   0.1979593   0.3843192
[25-30)   0-24 months   iLiNS-Zinc_ZvLNS            BURKINA FASO                   Zinc                 NA                0.2910798   0.2133087   0.3688509
[25-30)   0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                0.4252492   0.3693777   0.4811207
[25-30)   0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                  NA                0.3659306   0.3128849   0.4189763
[25-30)   0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                NA                0.3691655   0.3335802   0.4047508
[25-30)   0-24 months   ki1000111-WASH-Kenya        KENYA                          Control              NA                0.2313916   0.1981333   0.2646498
[25-30)   0-24 months   ki1000111-WASH-Kenya        KENYA                          LNS                  NA                0.2157773   0.1769308   0.2546237
[25-30)   0-24 months   ki1000111-WASH-Kenya        KENYA                          Other                NA                0.2632258   0.2322125   0.2942391
[25-30)   0-24 months   ki1000304-EU                INDIA                          Control              NA                0.4873239   0.4352902   0.5393577
[25-30)   0-24 months   ki1000304-EU                INDIA                          Zinc                 NA                0.4613003   0.4068961   0.5157045
[25-30)   0-24 months   ki1000304-VITAMIN-A         INDIA                          Control              NA                0.4667747   0.4468089   0.4867406
[25-30)   0-24 months   ki1000304-VITAMIN-A         INDIA                          VitA                 NA                0.4216667   0.4021779   0.4411555
[25-30)   0-24 months   ki1000304-Vitamin-B12       INDIA                          Control              NA                0.5070423   0.4785218   0.5355627
[25-30)   0-24 months   ki1000304-Vitamin-B12       INDIA                          Other                NA                0.4383562   0.3886436   0.4880687
[25-30)   0-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control              NA                0.6610169   0.5981385   0.7238954
[25-30)   0-24 months   ki1000304b-SAS-CompFeed     INDIA                          Other                NA                0.5744681   0.5158113   0.6331249
[25-30)   0-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Control              NA                0.8378378   0.8067815   0.8688942
[25-30)   0-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Other                NA                0.7238095   0.6603487   0.7872703
[25-30)   0-24 months   ki1017093b-PROVIDE          BANGLADESH                     Control              NA                0.3023256   0.2716624   0.3329887
[25-30)   0-24 months   ki1017093b-PROVIDE          BANGLADESH                     Other                NA                0.4133333   0.3519274   0.4747393
[25-30)   0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              NA                0.2391304   0.1774574   0.3008034
[25-30)   0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                NA                0.2316384   0.1694467   0.2938302
[25-30)   0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                 NA                0.2487685   0.2066907   0.2908463
[25-30)   0-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Control              NA                0.2962963   0.2194280   0.3731646
[25-30)   0-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Other                NA                0.4411765   0.3473791   0.5349738
[25-30)   0-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Control              NA                0.3727273   0.3510674   0.3943872
[25-30)   0-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   LNS                  NA                0.2910959   0.2476784   0.3345133
[25-30)   0-24 months   ki1119695-PROBIT            BELARUS                        Control              NA                0.1281485   0.1175114   0.1387855
[25-30)   0-24 months   ki1119695-PROBIT            BELARUS                        Maternal             NA                0.1038048   0.0954332   0.1121764
[25-30)   0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                0.3168831   0.3084075   0.3253588
[25-30)   0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       VitA                 NA                0.3366426   0.3220385   0.3512467
[25-30)   0-24 months   ki1135781-COHORTS           GUATEMALA                      Control              NA                0.8153846   0.7830929   0.8476764
[25-30)   0-24 months   ki1135781-COHORTS           GUATEMALA                      Other                NA                0.7841727   0.7487671   0.8195782
[25-30)   0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                0.4426230   0.4256322   0.4596137
[25-30)   0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS                  NA                0.4573643   0.4144407   0.5002879
[25-30)   0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control              NA                0.4318182   0.4023927   0.4612437
[25-30)   0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Maternal             NA                0.4684685   0.4213849   0.5155520
[25-30)   0-24 months   ki1148112-LCNI-5            MALAWI                         Control              NA                0.5227273   0.3747087   0.6707459
[25-30)   0-24 months   ki1148112-LCNI-5            MALAWI                         LNS                  NA                0.5952381   0.4899626   0.7005136
[25-30)   0-24 months   ki1148112-LCNI-5            MALAWI                         Other                NA                0.6744186   0.5339491   0.8148881
[25-30)   0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                0.3776383   0.3650156   0.3902611
[25-30)   0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Maternal             NA                0.3563886   0.3433026   0.3694746
[25-30)   0-6 months    ki1000304-VITAMIN-A         INDIA                          Control              NA                0.2777778   0.2204347   0.3351208
[25-30)   0-6 months    ki1000304-VITAMIN-A         INDIA                          VitA                 NA                0.2203390   0.1648733   0.2758047
[25-30)   0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Control              NA                0.3711340   0.3089115   0.4333566
[25-30)   0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Other                NA                0.3017241   0.2806164   0.3228319
[25-30)   0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Control              NA                0.5135135   0.4714014   0.5556256
[25-30)   0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Other                NA                0.4000000   0.3304664   0.4695336
[25-30)   0-6 months    ki1017093b-PROVIDE          BANGLADESH                     Control              NA                0.1395349   0.1164003   0.1626694
[25-30)   0-6 months    ki1017093b-PROVIDE          BANGLADESH                     Other                NA                0.1266667   0.0851917   0.1681416
[25-30)   0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              NA                0.0655738   0.0296861   0.1014614
[25-30)   0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                NA                0.0681818   0.0309189   0.1054447
[25-30)   0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                 NA                0.0769231   0.0508899   0.1029563
[25-30)   0-6 months    ki1112895-Guatemala BSC     GUATEMALA                      Control              NA                0.2000000   0.1306180   0.2693820
[25-30)   0-6 months    ki1112895-Guatemala BSC     GUATEMALA                      Other                NA                0.1562500   0.0849961   0.2275039
[25-30)   0-6 months    ki1119695-PROBIT            BELARUS                        Control              NA                0.0625850   0.0538647   0.0713054
[25-30)   0-6 months    ki1119695-PROBIT            BELARUS                        Maternal             NA                0.0529236   0.0454160   0.0604313
[25-30)   0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                0.1567657   0.1492255   0.1643058
[25-30)   0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       VitA                 NA                0.1731551   0.1599311   0.1863792
[25-30)   0-6 months    ki1135781-COHORTS           GUATEMALA                      Control              NA                0.3448276   0.2715878   0.4180673
[25-30)   0-6 months    ki1135781-COHORTS           GUATEMALA                      Other                NA                0.2250000   0.1494314   0.3005686
[25-30)   0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                0.3529412   0.3335398   0.3723426
[25-30)   0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         LNS                  NA                0.2580645   0.2100864   0.3060427
[25-30)   0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                0.2488326   0.2359154   0.2617497
[25-30)   0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Maternal             NA                0.2037267   0.1922977   0.2151557
[25-30)   6-24 months   iLiNS_DYADM_LNS             MALAWI                         Control              NA                0.2318841   0.1856143   0.2781538
[25-30)   6-24 months   iLiNS_DYADM_LNS             MALAWI                         LNS                  NA                0.2875000   0.2340706   0.3409294
[25-30)   6-24 months   iLiNS-Zinc_ZvLNS            BURKINA FASO                   Control              NA                0.1194030   0.0121842   0.2266218
[25-30)   6-24 months   iLiNS-Zinc_ZvLNS            BURKINA FASO                   Zinc                 NA                0.1174863   0.0779743   0.1569984
[25-30)   6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                0.2457627   0.1908070   0.3007184
[25-30)   6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                  NA                0.1976744   0.1490564   0.2462924
[25-30)   6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                NA                0.1751825   0.1433412   0.2070238
[25-30)   6-24 months   ki1000111-WASH-Kenya        KENYA                          Control              NA                0.0594059   0.0387823   0.0800296
[25-30)   6-24 months   ki1000111-WASH-Kenya        KENYA                          LNS                  NA                0.0664820   0.0407748   0.0921892
[25-30)   6-24 months   ki1000111-WASH-Kenya        KENYA                          Other                NA                0.0668842   0.0471011   0.0866673
[25-30)   6-24 months   ki1000304-EU                INDIA                          Control              NA                0.0418848   0.0134370   0.0703326
[25-30)   6-24 months   ki1000304-EU                INDIA                          Zinc                 NA                0.0380435   0.0103653   0.0657216
[25-30)   6-24 months   ki1000304-VITAMIN-A         INDIA                          Control              NA                0.0726257   0.0596813   0.0855701
[25-30)   6-24 months   ki1000304-VITAMIN-A         INDIA                          VitA                 NA                0.0854922   0.0710106   0.0999739
[25-30)   6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control              NA                0.4000000   0.3105945   0.4894055
[25-30)   6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Other                NA                0.3152174   0.2556952   0.3747395
[25-30)   6-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Control              NA                0.5000000   0.4511533   0.5488467
[25-30)   6-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Other                NA                0.5517241   0.4449116   0.6585367
[25-30)   6-24 months   ki1017093b-PROVIDE          BANGLADESH                     Control              NA                0.1470588   0.1198024   0.1743152
[25-30)   6-24 months   ki1017093b-PROVIDE          BANGLADESH                     Other                NA                0.2086957   0.1511780   0.2662134
[25-30)   6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              NA                0.1390728   0.0838380   0.1943077
[25-30)   6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                NA                0.1241379   0.0704244   0.1778514
[25-30)   6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                 NA                0.1349693   0.0978481   0.1720905
[25-30)   6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Control              NA                0.2078652   0.1933186   0.2224117
[25-30)   6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   LNS                  NA                0.1180000   0.0878666   0.1481334
[25-30)   6-24 months   ki1119695-PROBIT            BELARUS                        Control              NA                0.0407978   0.0312169   0.0503788
[25-30)   6-24 months   ki1119695-PROBIT            BELARUS                        Maternal             NA                0.0346723   0.0300572   0.0392874
[25-30)   6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                0.1292962   0.1224098   0.1361826
[25-30)   6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       VitA                 NA                0.1525714   0.1400817   0.1650611
[25-30)   6-24 months   ki1135781-COHORTS           GUATEMALA                      Control              NA                0.5925926   0.5399765   0.6452086
[25-30)   6-24 months   ki1135781-COHORTS           GUATEMALA                      Other                NA                0.6296296   0.5662963   0.6929629
[25-30)   6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                0.2000000   0.1820813   0.2179187
[25-30)   6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS                  NA                0.1606426   0.1219485   0.1993366
[25-30)   6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control              NA                0.2318841   0.2037817   0.2599865
[25-30)   6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Maternal             NA                0.2897727   0.2415276   0.3380179
[25-30)   6-24 months   ki1148112-LCNI-5            MALAWI                         Control              NA                0.2903226   0.1298938   0.4507514
[25-30)   6-24 months   ki1148112-LCNI-5            MALAWI                         LNS                  NA                0.2968750   0.1844908   0.4092592
[25-30)   6-24 months   ki1148112-LCNI-5            MALAWI                         Other                NA                0.3666667   0.1935322   0.5398011
[25-30)   6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                0.1856287   0.1708666   0.2003908
[25-30)   6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Maternal             NA                0.2039711   0.1907450   0.2171972
>=30      0-24 months   iLiNS_DYADM_LNS             MALAWI                         Control              NA                0.5227273   0.4675706   0.5778839
>=30      0-24 months   iLiNS_DYADM_LNS             MALAWI                         LNS                  NA                0.4125000   0.3608975   0.4641025
>=30      0-24 months   iLiNS-Zinc_ZvLNS            BURKINA FASO                   Control              NA                0.3068182   0.1803440   0.4332923
>=30      0-24 months   iLiNS-Zinc_ZvLNS            BURKINA FASO                   Zinc                 NA                0.3084416   0.2393448   0.3775383
>=30      0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                0.4195402   0.3461677   0.4929128
>=30      0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                  NA                0.3507853   0.2830627   0.4185080
>=30      0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                NA                0.4578005   0.4083848   0.5072162
>=30      0-24 months   ki1000111-WASH-Kenya        KENYA                          Control              NA                0.2450980   0.2110098   0.2791863
>=30      0-24 months   ki1000111-WASH-Kenya        KENYA                          LNS                  NA                0.2324455   0.1916976   0.2731934
>=30      0-24 months   ki1000111-WASH-Kenya        KENYA                          Other                NA                0.2638554   0.2338644   0.2938464
>=30      0-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Control              NA                0.2820513   0.2060775   0.3580250
>=30      0-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Maternal             NA                0.2647059   0.1951599   0.3342519
>=30      0-24 months   ki1000304-EU                INDIA                          Control              NA                0.4609375   0.3744223   0.5474527
>=30      0-24 months   ki1000304-EU                INDIA                          Zinc                 NA                0.4751773   0.3925961   0.5577586
>=30      0-24 months   ki1000304-VITAMIN-A         INDIA                          Control              NA                0.4853556   0.4527536   0.5179577
>=30      0-24 months   ki1000304-VITAMIN-A         INDIA                          VitA                 NA                0.5265487   0.4948768   0.5582205
>=30      0-24 months   ki1000304-Vitamin-B12       INDIA                          Control              NA                0.6000000   0.5614878   0.6385122
>=30      0-24 months   ki1000304-Vitamin-B12       INDIA                          Other                NA                0.4601770   0.3897748   0.5305791
>=30      0-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control              NA                0.6250000   0.5669108   0.6830892
>=30      0-24 months   ki1000304b-SAS-CompFeed     INDIA                          Other                NA                0.6250000   0.6078163   0.6421837
>=30      0-24 months   ki1017093b-PROVIDE          BANGLADESH                     Control              NA                0.5454545   0.4977413   0.5931678
>=30      0-24 months   ki1017093b-PROVIDE          BANGLADESH                     Other                NA                0.4117647   0.3360773   0.4874521
>=30      0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              NA                0.2060606   0.1442943   0.2678269
>=30      0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                NA                0.1883117   0.1265135   0.2501098
>=30      0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                 NA                0.2380952   0.1893699   0.2868206
>=30      0-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Control              NA                0.3750000   0.2864538   0.4635462
>=30      0-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Other                NA                0.6206897   0.5231363   0.7182430
>=30      0-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Control              NA                0.3625000   0.3505904   0.3744096
>=30      0-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   LNS                  NA                0.3080808   0.2629779   0.3531837
>=30      0-24 months   ki1119695-PROBIT            BELARUS                        Control              NA                0.1295014   0.1147681   0.1442347
>=30      0-24 months   ki1119695-PROBIT            BELARUS                        Maternal             NA                0.1062740   0.0924084   0.1201396
>=30      0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                0.3065844   0.2967970   0.3163718
>=30      0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       VitA                 NA                0.3322581   0.3144020   0.3501141
>=30      0-24 months   ki1135781-COHORTS           GUATEMALA                      Control              NA                0.8355556   0.8118905   0.8592206
>=30      0-24 months   ki1135781-COHORTS           GUATEMALA                      Other                NA                0.6906780   0.6604563   0.7208996
>=30      0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                0.5365854   0.5176946   0.5554761
>=30      0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS                  NA                0.5426357   0.5016361   0.5836353
>=30      0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control              NA                0.5227273   0.4854714   0.5599831
>=30      0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Maternal             NA                0.4437500   0.3939067   0.4935933
>=30      0-24 months   ki1148112-LCNI-5            MALAWI                         Control              NA                0.5681818   0.4214530   0.7149106
>=30      0-24 months   ki1148112-LCNI-5            MALAWI                         LNS                  NA                0.6168224   0.5244727   0.7091722
>=30      0-24 months   ki1148112-LCNI-5            MALAWI                         Other                NA                0.6595745   0.5237614   0.7953876
>=30      0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                0.3970588   0.3767289   0.4173888
>=30      0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Maternal             NA                0.3730074   0.3541503   0.3918646
>=30      0-6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Control              NA                0.4500000   0.3395951   0.5604049
>=30      0-6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Maternal             NA                0.2500000   0.1539049   0.3460951
>=30      0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Control              NA                0.3333333   0.2554267   0.4112400
>=30      0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Other                NA                0.3061224   0.2511368   0.3611081
>=30      0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Control              NA                0.3000000   0.2556156   0.3443844
>=30      0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Other                NA                0.3098592   0.2254701   0.3942483
>=30      0-6 months    ki1017093b-PROVIDE          BANGLADESH                     Control              NA                0.2121212   0.1729477   0.2512948
>=30      0-6 months    ki1017093b-PROVIDE          BANGLADESH                     Other                NA                0.1294118   0.0777919   0.1810316
>=30      0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              NA                0.0365854   0.0078283   0.0653424
>=30      0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                NA                0.0649351   0.0259852   0.1038850
>=30      0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                 NA                0.0692042   0.0399188   0.0984895
>=30      0-6 months    ki1119695-PROBIT            BELARUS                        Control              NA                0.0687679   0.0589423   0.0785935
>=30      0-6 months    ki1119695-PROBIT            BELARUS                        Maternal             NA                0.0530504   0.0422369   0.0638639
>=30      0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                0.1569620   0.1482981   0.1656260
>=30      0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       VitA                 NA                0.1804996   0.1642630   0.1967362
>=30      0-6 months    ki1135781-COHORTS           GUATEMALA                      Control              NA                0.4150943   0.3547439   0.4754448
>=30      0-6 months    ki1135781-COHORTS           GUATEMALA                      Other                NA                0.3125000   0.2501154   0.3748846
>=30      0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                0.3076923   0.2845194   0.3308652
>=30      0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         LNS                  NA                0.3304348   0.2807671   0.3801024
>=30      0-6 months    ki1148112-LCNI-5            MALAWI                         Control              NA                0.3846154   0.1180954   0.6511354
>=30      0-6 months    ki1148112-LCNI-5            MALAWI                         LNS                  NA                0.2285714   0.0883741   0.3687687
>=30      0-6 months    ki1148112-LCNI-5            MALAWI                         Other                NA                0.5882353   0.3524643   0.8240063
>=30      0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                0.2764016   0.2559692   0.2968339
>=30      0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Maternal             NA                0.2149178   0.1978974   0.2319383
>=30      6-24 months   iLiNS_DYADM_LNS             MALAWI                         Control              NA                0.3076923   0.2500388   0.3653458
>=30      6-24 months   iLiNS_DYADM_LNS             MALAWI                         LNS                  NA                0.2380952   0.1858474   0.2903431
>=30      6-24 months   iLiNS-Zinc_ZvLNS            BURKINA FASO                   Control              NA                0.1111111   0.0098701   0.2123521
>=30      6-24 months   iLiNS-Zinc_ZvLNS            BURKINA FASO                   Zinc                 NA                0.1288462   0.0885247   0.1691676
>=30      6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                0.2296296   0.1586197   0.3006395
>=30      6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                  NA                0.1496599   0.0919417   0.2073780
>=30      6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                NA                0.2709030   0.2204849   0.3213211
>=30      6-24 months   ki1000111-WASH-Kenya        KENYA                          Control              NA                0.0492813   0.0300505   0.0685122
>=30      6-24 months   ki1000111-WASH-Kenya        KENYA                          LNS                  NA                0.0532544   0.0293085   0.0772004
>=30      6-24 months   ki1000111-WASH-Kenya        KENYA                          Other                NA                0.0601852   0.0418674   0.0785030
>=30      6-24 months   ki1000304-VITAMIN-A         INDIA                          Control              NA                0.1111111   0.0837858   0.1384364
>=30      6-24 months   ki1000304-VITAMIN-A         INDIA                          VitA                 NA                0.1417323   0.1132530   0.1702116
>=30      6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control              NA                0.3939394   0.3454500   0.4424288
>=30      6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Other                NA                0.4594595   0.4394226   0.4794963
>=30      6-24 months   ki1017093b-PROVIDE          BANGLADESH                     Control              NA                0.3333333   0.2816029   0.3850638
>=30      6-24 months   ki1017093b-PROVIDE          BANGLADESH                     Other                NA                0.2500000   0.1724043   0.3275957
>=30      6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              NA                0.1285714   0.0730712   0.1840717
>=30      6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                NA                0.1162791   0.0609078   0.1716503
>=30      6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                 NA                0.1591837   0.1133286   0.2050388
>=30      6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Control              NA                0.1968912   0.1826338   0.2111485
>=30      6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   LNS                  NA                0.1250000   0.1018519   0.1481481
>=30      6-24 months   ki1119695-PROBIT            BELARUS                        Control              NA                0.0335235   0.0278546   0.0391925
>=30      6-24 months   ki1119695-PROBIT            BELARUS                        Maternal             NA                0.0332898   0.0249415   0.0416382
>=30      6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                0.1468354   0.1383640   0.1553069
>=30      6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       VitA                 NA                0.1273317   0.1132355   0.1414279
>=30      6-24 months   ki1135781-COHORTS           GUATEMALA                      Control              NA                0.5824176   0.5417086   0.6231265
>=30      6-24 months   ki1135781-COHORTS           GUATEMALA                      Other                NA                0.4779412   0.4275334   0.5283489
>=30      6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                0.1851852   0.1665050   0.2038654
>=30      6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS                  NA                0.2682927   0.2228156   0.3137698
>=30      6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control              NA                0.3076923   0.2696081   0.3457766
>=30      6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Maternal             NA                0.2734375   0.2219018   0.3249732
>=30      6-24 months   ki1148112-LCNI-5            MALAWI                         Control              NA                0.3030303   0.1456393   0.4604213
>=30      6-24 months   ki1148112-LCNI-5            MALAWI                         LNS                  NA                0.3142857   0.2051236   0.4234478
>=30      6-24 months   ki1148112-LCNI-5            MALAWI                         Other                NA                0.3333333   0.1640087   0.5026579
>=30      6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                0.1951220   0.1738496   0.2163943
>=30      6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Maternal             NA                0.2171429   0.1961795   0.2381062


### Parameter: E(Y)


mage      agecat        studyid                     country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
--------  ------------  --------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
<20       0-24 months   iLiNS_DYADM_LNS             MALAWI                         NA                   NA                0.4124294   0.3397022   0.4851565
<20       0-24 months   iLiNS-Zinc_ZvLNS            BURKINA FASO                   NA                   NA                0.3786408   0.2963441   0.4609374
<20       0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     NA                   NA                0.3833922   0.3550559   0.4117285
<20       0-24 months   ki1000111-WASH-Kenya        KENYA                          NA                   NA                0.2825397   0.2538186   0.3112608
<20       0-24 months   ki1000304-EU                INDIA                          NA                   NA                0.4516129   0.3499223   0.5533035
<20       0-24 months   ki1000304-VITAMIN-A         INDIA                          NA                   NA                0.5412844   0.4749861   0.6075828
<20       0-24 months   ki1000304b-SAS-CompFeed     INDIA                          NA                   NA                0.6031746   0.5301453   0.6762039
<20       0-24 months   ki1017093b-PROVIDE          BANGLADESH                     NA                   NA                0.4864865   0.3718302   0.6011428
<20       0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.2151899   0.1509076   0.2794722
<20       0-24 months   ki1112895-Guatemala BSC     GUATEMALA                      NA                   NA                0.6000000   0.4462478   0.7537522
<20       0-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   NA                   NA                0.4019851   0.3349018   0.4690684
<20       0-24 months   ki1119695-PROBIT            BELARUS                        NA                   NA                0.1546034   0.1252639   0.1839428
<20       0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       NA                   NA                0.3662885   0.3443342   0.3882428
<20       0-24 months   ki1135781-COHORTS           GUATEMALA                      NA                   NA                0.8000000   0.7405662   0.8594338
<20       0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         NA                   NA                0.5747508   0.5188074   0.6306942
<20       0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         NA                   NA                0.4204545   0.3607959   0.4801132
<20       0-24 months   ki1148112-LCNI-5            MALAWI                         NA                   NA                0.5092593   0.4145371   0.6039814
<20       0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     NA                   NA                0.4305860   0.4192696   0.4419024
<20       0-6 months    ki1000304b-SAS-CompFeed     INDIA                          NA                   NA                0.2735849   0.1854162   0.3617536
<20       0-6 months    ki1112895-Guatemala BSC     GUATEMALA                      NA                   NA                0.3589744   0.2064547   0.5114940
<20       0-6 months    ki1119695-PROBIT            BELARUS                        NA                   NA                0.0848375   0.0636681   0.1060070
<20       0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       NA                   NA                0.2030129   0.1818897   0.2241361
<20       0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         NA                   NA                0.3670213   0.2979389   0.4361037
<20       0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     NA                   NA                0.2912324   0.2803074   0.3021575
<20       6-24 months   iLiNS_DYADM_LNS             MALAWI                         NA                   NA                0.2500000   0.1790290   0.3209710
<20       6-24 months   iLiNS-Zinc_ZvLNS            BURKINA FASO                   NA                   NA                0.1707317   0.1200512   0.2214122
<20       6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     NA                   NA                0.1563981   0.1318782   0.1809180
<20       6-24 months   ki1000111-WASH-Kenya        KENYA                          NA                   NA                0.0735502   0.0542950   0.0928054
<20       6-24 months   ki1000304-VITAMIN-A         INDIA                          NA                   NA                0.1130435   0.0549176   0.1711694
<20       6-24 months   ki1000304b-SAS-CompFeed     INDIA                          NA                   NA                0.2823529   0.1837038   0.3810021
<20       6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   NA                   NA                0.1884984   0.1427054   0.2342914
<20       6-24 months   ki1119695-PROBIT            BELARUS                        NA                   NA                0.0454002   0.0290796   0.0617209
<20       6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       NA                   NA                0.1552576   0.1363948   0.1741203
<20       6-24 months   ki1135781-COHORTS           GUATEMALA                      NA                   NA                0.5714286   0.4649649   0.6778923
<20       6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         NA                   NA                0.2413793   0.1776136   0.3051451
<20       6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         NA                   NA                0.2534562   0.1954466   0.3114659
<20       6-24 months   ki1148112-LCNI-5            MALAWI                         NA                   NA                0.3012048   0.2019053   0.4005043
<20       6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     NA                   NA                0.1945946   0.1831394   0.2060498
[20-25)   0-24 months   iLiNS_DYADM_LNS             MALAWI                         NA                   NA                0.4219409   0.3589317   0.4849501
[20-25)   0-24 months   iLiNS-Zinc_ZvLNS            BURKINA FASO                   NA                   NA                0.3267882   0.2460691   0.4075074
[20-25)   0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     NA                   NA                0.3655303   0.3418070   0.3892536
[20-25)   0-24 months   ki1000111-WASH-Kenya        KENYA                          NA                   NA                0.2476566   0.2288608   0.2664525
[20-25)   0-24 months   ki1000304-EU                INDIA                          NA                   NA                0.4638430   0.4324114   0.4952746
[20-25)   0-24 months   ki1000304-VITAMIN-A         INDIA                          NA                   NA                0.4126984   0.3888494   0.4365474
[20-25)   0-24 months   ki1000304-Vitamin-B12       INDIA                          NA                   NA                0.4843305   0.4319740   0.5366870
[20-25)   0-24 months   ki1000304b-SAS-CompFeed     INDIA                          NA                   NA                0.5391304   0.4781630   0.6000978
[20-25)   0-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          NA                   NA                0.7364865   0.6652712   0.8077018
[20-25)   0-24 months   ki1017093b-PROVIDE          BANGLADESH                     NA                   NA                0.3828125   0.3231530   0.4424720
[20-25)   0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.2360515   0.2045482   0.2675548
[20-25)   0-24 months   ki1112895-Guatemala BSC     GUATEMALA                      NA                   NA                0.5102041   0.4107227   0.6096855
[20-25)   0-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   NA                   NA                0.3283582   0.2669725   0.3897439
[20-25)   0-24 months   ki1119695-PROBIT            BELARUS                        NA                   NA                0.1330419   0.1116142   0.1544696
[20-25)   0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       NA                   NA                0.3050744   0.2921902   0.3179586
[20-25)   0-24 months   ki1135781-COHORTS           GUATEMALA                      NA                   NA                0.7603550   0.7147802   0.8059299
[20-25)   0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         NA                   NA                0.4595880   0.4206723   0.4985036
[20-25)   0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         NA                   NA                0.4101796   0.3573506   0.4630087
[20-25)   0-24 months   ki1148112-LCNI-5            MALAWI                         NA                   NA                0.5751295   0.5052084   0.6450507
[20-25)   0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     NA                   NA                0.3755929   0.3622218   0.3889640
[20-25)   0-6 months    ki1000304-VITAMIN-A         INDIA                          NA                   NA                0.3750000   0.2956520   0.4543480
[20-25)   0-6 months    ki1000304b-SAS-CompFeed     INDIA                          NA                   NA                0.2453826   0.2032449   0.2875203
[20-25)   0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          NA                   NA                0.3673469   0.2891495   0.4455444
[20-25)   0-6 months    ki1017093b-PROVIDE          BANGLADESH                     NA                   NA                0.1176471   0.0780245   0.1572697
[20-25)   0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0778098   0.0578660   0.0977536
[20-25)   0-6 months    ki1112895-Guatemala BSC     GUATEMALA                      NA                   NA                0.2307692   0.1437242   0.3178143
[20-25)   0-6 months    ki1119695-PROBIT            BELARUS                        NA                   NA                0.0668929   0.0540227   0.0797632
[20-25)   0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       NA                   NA                0.1694870   0.1574338   0.1815401
[20-25)   0-6 months    ki1135781-COHORTS           GUATEMALA                      NA                   NA                0.2692308   0.1701578   0.3683037
[20-25)   0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         NA                   NA                0.2481390   0.2059157   0.2903622
[20-25)   0-6 months    ki1148112-LCNI-5            MALAWI                         NA                   NA                0.3064516   0.1907598   0.4221434
[20-25)   0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     NA                   NA                0.2216909   0.2096741   0.2337076
[20-25)   6-24 months   iLiNS_DYADM_LNS             MALAWI                         NA                   NA                0.2717949   0.2091919   0.3343978
[20-25)   6-24 months   iLiNS-Zinc_ZvLNS            BURKINA FASO                   NA                   NA                0.1469595   0.0881856   0.2057333
[20-25)   6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     NA                   NA                0.1783133   0.1570425   0.1995840
[20-25)   6-24 months   ki1000111-WASH-Kenya        KENYA                          NA                   NA                0.0757021   0.0628881   0.0885160
[20-25)   6-24 months   ki1000304-EU                INDIA                          NA                   NA                0.0514184   0.0331757   0.0696612
[20-25)   6-24 months   ki1000304-VITAMIN-A         INDIA                          NA                   NA                0.0589372   0.0445826   0.0732918
[20-25)   6-24 months   ki1000304-Vitamin-B12       INDIA                          NA                   NA                0.1187215   0.0757835   0.1616594
[20-25)   6-24 months   ki1000304b-SAS-CompFeed     INDIA                          NA                   NA                0.2696970   0.2127631   0.3266308
[20-25)   6-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          NA                   NA                0.5529412   0.4466174   0.6592649
[20-25)   6-24 months   ki1017093b-PROVIDE          BANGLADESH                     NA                   NA                0.2403846   0.1821725   0.2985967
[20-25)   6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1318102   0.1039903   0.1596301
[20-25)   6-24 months   ki1112895-Guatemala BSC     GUATEMALA                      NA                   NA                0.2575758   0.1512668   0.3638847
[20-25)   6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   NA                   NA                0.1583653   0.1117969   0.2049336
[20-25)   6-24 months   ki1119695-PROBIT            BELARUS                        NA                   NA                0.0384615   0.0277197   0.0492034
[20-25)   6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       NA                   NA                0.1241645   0.1138002   0.1345288
[20-25)   6-24 months   ki1135781-COHORTS           GUATEMALA                      NA                   NA                0.5730337   0.5001638   0.6459036
[20-25)   6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         NA                   NA                0.1990172   0.1601805   0.2378539
[20-25)   6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         NA                   NA                0.2608696   0.2089712   0.3127680
[20-25)   6-24 months   ki1148112-LCNI-5            MALAWI                         NA                   NA                0.3153846   0.2351989   0.3955703
[20-25)   6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     NA                   NA                0.1993671   0.1848215   0.2139127
[25-30)   0-24 months   iLiNS_DYADM_LNS             MALAWI                         NA                   NA                0.4497355   0.3786250   0.5208459
[25-30)   0-24 months   iLiNS-Zinc_ZvLNS            BURKINA FASO                   NA                   NA                0.2910959   0.2310451   0.3511466
[25-30)   0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     NA                   NA                0.3811321   0.3549719   0.4072923
[25-30)   0-24 months   ki1000111-WASH-Kenya        KENYA                          NA                   NA                0.2412281   0.2215888   0.2608673
[25-30)   0-24 months   ki1000304-EU                INDIA                          NA                   NA                0.4749263   0.4373099   0.5125426
[25-30)   0-24 months   ki1000304-VITAMIN-A         INDIA                          NA                   NA                0.4445357   0.4166063   0.4724652
[25-30)   0-24 months   ki1000304-Vitamin-B12       INDIA                          NA                   NA                0.4551724   0.3977586   0.5125863
[25-30)   0-24 months   ki1000304b-SAS-CompFeed     INDIA                          NA                   NA                0.6138996   0.5235093   0.7042899
[25-30)   0-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          NA                   NA                0.7535211   0.6823873   0.8246549
[25-30)   0-24 months   ki1017093b-PROVIDE          BANGLADESH                     NA                   NA                0.3886010   0.3196546   0.4575475
[25-30)   0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.2425033   0.2121516   0.2728549
[25-30)   0-24 months   ki1112895-Guatemala BSC     GUATEMALA                      NA                   NA                0.3770492   0.2544187   0.4996796
[25-30)   0-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   NA                   NA                0.3134328   0.2647850   0.3620807
[25-30)   0-24 months   ki1119695-PROBIT            BELARUS                        NA                   NA                0.1155736   0.1006967   0.1304505
[25-30)   0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       NA                   NA                0.3315472   0.3146590   0.3484354
[25-30)   0-24 months   ki1135781-COHORTS           GUATEMALA                      NA                   NA                0.7992565   0.7513003   0.8472127
[25-30)   0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         NA                   NA                0.4553571   0.4091907   0.5015236
[25-30)   0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         NA                   NA                0.4580645   0.4025117   0.5136173
[25-30)   0-24 months   ki1148112-LCNI-5            MALAWI                         NA                   NA                0.5964912   0.5227429   0.6702396
[25-30)   0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     NA                   NA                0.3666027   0.3483852   0.3848202
[25-30)   0-6 months    ki1000304-VITAMIN-A         INDIA                          NA                   NA                0.2477876   0.1678320   0.3277433
[25-30)   0-6 months    ki1000304b-SAS-CompFeed     INDIA                          NA                   NA                0.3333333   0.2666933   0.3999734
[25-30)   0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          NA                   NA                0.4295775   0.3478708   0.5112842
[25-30)   0-6 months    ki1017093b-PROVIDE          BANGLADESH                     NA                   NA                0.1295337   0.0820368   0.1770305
[25-30)   0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0721785   0.0537923   0.0905647
[25-30)   0-6 months    ki1112895-Guatemala BSC     GUATEMALA                      NA                   NA                0.1754386   0.0758228   0.2750544
[25-30)   0-6 months    ki1119695-PROBIT            BELARUS                        NA                   NA                0.0576077   0.0457795   0.0694360
[25-30)   0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       NA                   NA                0.1688870   0.1536615   0.1841125
[25-30)   0-6 months    ki1135781-COHORTS           GUATEMALA                      NA                   NA                0.2753623   0.1691912   0.3815334
[25-30)   0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         NA                   NA                0.2695035   0.2176252   0.3213819
[25-30)   0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     NA                   NA                0.2254744   0.2080758   0.2428731
[25-30)   6-24 months   iLiNS_DYADM_LNS             MALAWI                         NA                   NA                0.2617450   0.1909244   0.3325656
[25-30)   6-24 months   iLiNS-Zinc_ZvLNS            BURKINA FASO                   NA                   NA                0.1180000   0.0763268   0.1596732
[25-30)   6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     NA                   NA                0.1967370   0.1725883   0.2208858
[25-30)   6-24 months   ki1000111-WASH-Kenya        KENYA                          NA                   NA                0.0642326   0.0517337   0.0767315
[25-30)   6-24 months   ki1000304-EU                INDIA                          NA                   NA                0.0400000   0.0201401   0.0598599
[25-30)   6-24 months   ki1000304-VITAMIN-A         INDIA                          NA                   NA                0.0793011   0.0598720   0.0987301
[25-30)   6-24 months   ki1000304b-SAS-CompFeed     INDIA                          NA                   NA                0.3518519   0.2402296   0.4634741
[25-30)   6-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          NA                   NA                0.5428571   0.4253154   0.6603989
[25-30)   6-24 months   ki1017093b-PROVIDE          BANGLADESH                     NA                   NA                0.1946309   0.1308456   0.2584162
[25-30)   6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1334405   0.1066953   0.1601857
[25-30)   6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   NA                   NA                0.1415929   0.1065148   0.1766710
[25-30)   6-24 months   ki1119695-PROBIT            BELARUS                        NA                   NA                0.0376285   0.0268522   0.0484049
[25-30)   6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       NA                   NA                0.1465481   0.1322798   0.1608164
[25-30)   6-24 months   ki1135781-COHORTS           GUATEMALA                      NA                   NA                0.6148148   0.5324195   0.6972102
[25-30)   6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         NA                   NA                0.1666667   0.1239942   0.2093392
[25-30)   6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         NA                   NA                0.2734694   0.2175407   0.3293981
[25-30)   6-24 months   ki1148112-LCNI-5            MALAWI                         NA                   NA                0.3120000   0.2304529   0.3935471
[25-30)   6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     NA                   NA                0.1952607   0.1754486   0.2150727
>=30      0-24 months   iLiNS_DYADM_LNS             MALAWI                         NA                   NA                0.4702381   0.3942873   0.5461889
>=30      0-24 months   iLiNS-Zinc_ZvLNS            BURKINA FASO                   NA                   NA                0.3080808   0.2457177   0.3704439
>=30      0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     NA                   NA                0.4219577   0.3867296   0.4571857
>=30      0-24 months   ki1000111-WASH-Kenya        KENYA                          NA                   NA                0.2506739   0.2309458   0.2704019
>=30      0-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       NA                   NA                0.2739726   0.1709549   0.3769903
>=30      0-24 months   ki1000304-EU                INDIA                          NA                   NA                0.4684015   0.4086592   0.5281438
>=30      0-24 months   ki1000304-VITAMIN-A         INDIA                          NA                   NA                0.5053763   0.4598845   0.5508682
>=30      0-24 months   ki1000304-Vitamin-B12       INDIA                          NA                   NA                0.4932432   0.4124231   0.5740634
>=30      0-24 months   ki1000304b-SAS-CompFeed     INDIA                          NA                   NA                0.6250000   0.5643895   0.6856105
>=30      0-24 months   ki1017093b-PROVIDE          BANGLADESH                     NA                   NA                0.4491525   0.3590229   0.5392822
>=30      0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.2169657   0.1843101   0.2496214
>=30      0-24 months   ki1112895-Guatemala BSC     GUATEMALA                      NA                   NA                0.5094340   0.3735591   0.6453088
>=30      0-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   NA                   NA                0.3207364   0.2732714   0.3682014
>=30      0-24 months   ki1119695-PROBIT            BELARUS                        NA                   NA                0.1174318   0.0966005   0.1382631
>=30      0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       NA                   NA                0.3261297   0.3057616   0.3464977
>=30      0-24 months   ki1135781-COHORTS           GUATEMALA                      NA                   NA                0.7613883   0.7224373   0.8003392
>=30      0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         NA                   NA                0.5415778   0.4964350   0.5867206
>=30      0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         NA                   NA                0.4717742   0.4093794   0.5341690
>=30      0-24 months   ki1148112-LCNI-5            MALAWI                         NA                   NA                0.6161616   0.5482512   0.6840720
>=30      0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     NA                   NA                0.3846575   0.3568824   0.4124327
>=30      0-6 months    ki1000125-AgaKhanUniv       PAKISTAN                       NA                   NA                0.3500000   0.2003053   0.4996947
>=30      0-6 months    ki1000304b-SAS-CompFeed     INDIA                          NA                   NA                0.3191489   0.2222439   0.4160540
>=30      0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          NA                   NA                0.3076923   0.2123392   0.4030454
>=30      0-6 months    ki1017093b-PROVIDE          BANGLADESH                     NA                   NA                0.1525424   0.0873931   0.2176916
>=30      0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0593081   0.0405022   0.0781139
>=30      0-6 months    ki1119695-PROBIT            BELARUS                        NA                   NA                0.0606061   0.0456143   0.0755979
>=30      0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       NA                   NA                0.1748166   0.1564065   0.1932267
>=30      0-6 months    ki1135781-COHORTS           GUATEMALA                      NA                   NA                0.3589744   0.2716795   0.4462692
>=30      0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         NA                   NA                0.3262411   0.2714240   0.3810583
>=30      0-6 months    ki1148112-LCNI-5            MALAWI                         NA                   NA                0.3538462   0.2366986   0.4709937
>=30      0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     NA                   NA                0.2451861   0.2183997   0.2719725
>=30      6-24 months   iLiNS_DYADM_LNS             MALAWI                         NA                   NA                0.2734375   0.1954209   0.3514541
>=30      6-24 months   iLiNS-Zinc_ZvLNS            BURKINA FASO                   NA                   NA                0.1250000   0.0932750   0.1567250
>=30      6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     NA                   NA                0.2306368   0.1963550   0.2649187
>=30      6-24 months   ki1000111-WASH-Kenya        KENYA                          NA                   NA                0.0549898   0.0433444   0.0666352
>=30      6-24 months   ki1000304-VITAMIN-A         INDIA                          NA                   NA                0.1254613   0.0859509   0.1649716
>=30      6-24 months   ki1000304b-SAS-CompFeed     INDIA                          NA                   NA                0.4285714   0.3689158   0.4882271
>=30      6-24 months   ki1017093b-PROVIDE          BANGLADESH                     NA                   NA                0.2727273   0.1791433   0.3663112
>=30      6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1400778   0.1100445   0.1701112
>=30      6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   NA                   NA                0.1411902   0.1113322   0.1710481
>=30      6-24 months   ki1119695-PROBIT            BELARUS                        NA                   NA                0.0334015   0.0233006   0.0435024
>=30      6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       NA                   NA                0.1320639   0.1156130   0.1485148
>=30      6-24 months   ki1135781-COHORTS           GUATEMALA                      NA                   NA                0.5198238   0.4546876   0.5849600
>=30      6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         NA                   NA                0.2533333   0.2040362   0.3026305
>=30      6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         NA                   NA                0.2849741   0.2208573   0.3490909
>=30      6-24 months   ki1148112-LCNI-5            MALAWI                         NA                   NA                0.3157895   0.2364928   0.3950861
>=30      6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     NA                   NA                0.2069672   0.1771083   0.2368262


### Parameter: RR


mage      agecat        studyid                     country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
--------  ------------  --------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
<20       0-24 months   iLiNS_DYADM_LNS             MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
<20       0-24 months   iLiNS_DYADM_LNS             MALAWI                         LNS                  Control           1.3289096   1.1107202   1.5899601
<20       0-24 months   iLiNS-Zinc_ZvLNS            BURKINA FASO                   Control              Control           1.0000000   1.0000000   1.0000000
<20       0-24 months   iLiNS-Zinc_ZvLNS            BURKINA FASO                   Zinc                 Control           0.8015474   0.4784085   1.3429489
<20       0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
<20       0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                  Control           0.9453877   0.7547746   1.1841388
<20       0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                Control           1.1469973   0.9490914   1.3861709
<20       0-24 months   ki1000111-WASH-Kenya        KENYA                          Control              Control           1.0000000   1.0000000   1.0000000
<20       0-24 months   ki1000111-WASH-Kenya        KENYA                          LNS                  Control           0.6961402   0.5014660   0.9663890
<20       0-24 months   ki1000111-WASH-Kenya        KENYA                          Other                Control           1.0643084   0.8555518   1.3240021
<20       0-24 months   ki1000304-EU                INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
<20       0-24 months   ki1000304-EU                INDIA                          Zinc                 Control           1.1956522   0.7641489   1.8708188
<20       0-24 months   ki1000304-VITAMIN-A         INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
<20       0-24 months   ki1000304-VITAMIN-A         INDIA                          VitA                 Control           1.0658065   0.9428140   1.2048436
<20       0-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
<20       0-24 months   ki1000304b-SAS-CompFeed     INDIA                          Other                Control           1.1231724   1.0096024   1.2495178
<20       0-24 months   ki1017093b-PROVIDE          BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
<20       0-24 months   ki1017093b-PROVIDE          BANGLADESH                     Other                Control           0.7627119   0.6009284   0.9680512
<20       0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              Control           1.0000000   1.0000000   1.0000000
<20       0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                Control           0.7388889   0.3144722   1.7361050
<20       0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                 Control           0.7690476   0.3885157   1.5222918
<20       0-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Control              Control           1.0000000   1.0000000   1.0000000
<20       0-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Other                Control           1.0000000   0.7739456   1.2920805
<20       0-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Control              Control           1.0000000   1.0000000   1.0000000
<20       0-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   LNS                  Control           0.7909385   0.6709992   0.9323167
<20       0-24 months   ki1119695-PROBIT            BELARUS                        Control              Control           1.0000000   1.0000000   1.0000000
<20       0-24 months   ki1119695-PROBIT            BELARUS                        Maternal             Control           0.8645720   0.7212913   1.0363147
<20       0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control              Control           1.0000000   1.0000000   1.0000000
<20       0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       VitA                 Control           0.9662129   0.9099926   1.0259064
<20       0-24 months   ki1135781-COHORTS           GUATEMALA                      Control              Control           1.0000000   1.0000000   1.0000000
<20       0-24 months   ki1135781-COHORTS           GUATEMALA                      Other                Control           0.9439103   0.8761921   1.0168621
<20       0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
<20       0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS                  Control           0.9655172   0.8759506   1.0642422
<20       0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
<20       0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Maternal             Control           1.2730595   1.1028416   1.4695497
<20       0-24 months   ki1148112-LCNI-5            MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
<20       0-24 months   ki1148112-LCNI-5            MALAWI                         LNS                  Control           0.9839572   0.6382423   1.5169345
<20       0-24 months   ki1148112-LCNI-5            MALAWI                         Other                Control           0.8823529   0.5382860   1.4463439
<20       0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
<20       0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Maternal             Control           0.9153469   0.8918505   0.9394624
<20       0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
<20       0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Other                Control           1.0714286   0.7771387   1.4771612
<20       0-6 months    ki1112895-Guatemala BSC     GUATEMALA                      Control              Control           1.0000000   1.0000000   1.0000000
<20       0-6 months    ki1112895-Guatemala BSC     GUATEMALA                      Other                Control           0.9500000   0.6210230   1.4532474
<20       0-6 months    ki1119695-PROBIT            BELARUS                        Control              Control           1.0000000   1.0000000   1.0000000
<20       0-6 months    ki1119695-PROBIT            BELARUS                        Maternal             Control           0.9904791   0.7724174   1.2701019
<20       0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control              Control           1.0000000   1.0000000   1.0000000
<20       0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       VitA                 Control           0.8731079   0.7866531   0.9690641
<20       0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
<20       0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         LNS                  Control           1.0761006   0.8913796   1.2991015
<20       0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
<20       0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Maternal             Control           0.8793860   0.8472912   0.9126965
<20       6-24 months   iLiNS_DYADM_LNS             MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
<20       6-24 months   iLiNS_DYADM_LNS             MALAWI                         LNS                  Control           1.3583710   1.0181684   1.8122463
<20       6-24 months   iLiNS-Zinc_ZvLNS            BURKINA FASO                   Control              Control           1.0000000   1.0000000   1.0000000
<20       6-24 months   iLiNS-Zinc_ZvLNS            BURKINA FASO                   Zinc                 Control           0.7712766   0.4186401   1.4209523
<20       6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
<20       6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                  Control           0.9958159   0.6264939   1.5828554
<20       6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                Control           1.1980440   0.7998088   1.7945656
<20       6-24 months   ki1000111-WASH-Kenya        KENYA                          Control              Control           1.0000000   1.0000000   1.0000000
<20       6-24 months   ki1000111-WASH-Kenya        KENYA                          LNS                  Control           0.9398496   0.4034997   2.1891400
<20       6-24 months   ki1000111-WASH-Kenya        KENYA                          Other                Control           1.7564403   0.9520955   3.2403077
<20       6-24 months   ki1000304-VITAMIN-A         INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
<20       6-24 months   ki1000304-VITAMIN-A         INDIA                          VitA                 Control           0.8125000   0.4843716   1.3629128
<20       6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
<20       6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Other                Control           1.0731707   0.7504992   1.5345724
<20       6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Control              Control           1.0000000   1.0000000   1.0000000
<20       6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   LNS                  Control           0.6728838   0.5314097   0.8520217
<20       6-24 months   ki1119695-PROBIT            BELARUS                        Control              Control           1.0000000   1.0000000   1.0000000
<20       6-24 months   ki1119695-PROBIT            BELARUS                        Maternal             Control           0.9043106   0.6405957   1.2765893
<20       6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control              Control           1.0000000   1.0000000   1.0000000
<20       6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       VitA                 Control           1.0141643   0.8981385   1.1451789
<20       6-24 months   ki1135781-COHORTS           GUATEMALA                      Control              Control           1.0000000   1.0000000   1.0000000
<20       6-24 months   ki1135781-COHORTS           GUATEMALA                      Other                Control           0.8322460   0.6895325   1.0044971
<20       6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
<20       6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS                  Control           1.0540541   0.8092965   1.3728343
<20       6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
<20       6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Maternal             Control           1.2796249   1.0156554   1.6122002
<20       6-24 months   ki1148112-LCNI-5            MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
<20       6-24 months   ki1148112-LCNI-5            MALAWI                         LNS                  Control           0.8403361   0.3786466   1.8649706
<20       6-24 months   ki1148112-LCNI-5            MALAWI                         Other                Control           0.7881773   0.3387697   1.8337635
<20       6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
<20       6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Maternal             Control           1.0012566   0.9440505   1.0619292
[20-25)   0-24 months   iLiNS_DYADM_LNS             MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
[20-25)   0-24 months   iLiNS_DYADM_LNS             MALAWI                         LNS                  Control           1.2835131   1.1032500   1.4932299
[20-25)   0-24 months   iLiNS-Zinc_ZvLNS            BURKINA FASO                   Control              Control           1.0000000   1.0000000   1.0000000
[20-25)   0-24 months   iLiNS-Zinc_ZvLNS            BURKINA FASO                   Zinc                 Control           1.1010936   0.7288436   1.6634669
[20-25)   0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
[20-25)   0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                  Control           0.7505823   0.6178714   0.9117977
[20-25)   0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                Control           1.0217152   0.8814902   1.1842468
[20-25)   0-24 months   ki1000111-WASH-Kenya        KENYA                          Control              Control           1.0000000   1.0000000   1.0000000
[20-25)   0-24 months   ki1000111-WASH-Kenya        KENYA                          LNS                  Control           0.7644133   0.6066859   0.9631470
[20-25)   0-24 months   ki1000111-WASH-Kenya        KENYA                          Other                Control           1.0530587   0.8913930   1.2440446
[20-25)   0-24 months   ki1000304-EU                INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
[20-25)   0-24 months   ki1000304-EU                INDIA                          Zinc                 Control           0.8424309   0.7348057   0.9658197
[20-25)   0-24 months   ki1000304-VITAMIN-A         INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
[20-25)   0-24 months   ki1000304-VITAMIN-A         INDIA                          VitA                 Control           0.9510782   0.8976474   1.0076894
[20-25)   0-24 months   ki1000304-Vitamin-B12       INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
[20-25)   0-24 months   ki1000304-Vitamin-B12       INDIA                          Other                Control           1.0197357   0.9152437   1.1361573
[20-25)   0-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
[20-25)   0-24 months   ki1000304b-SAS-CompFeed     INDIA                          Other                Control           0.9093355   0.8183489   1.0104383
[20-25)   0-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
[20-25)   0-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Other                Control           0.9220210   0.8368376   1.0158755
[20-25)   0-24 months   ki1017093b-PROVIDE          BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
[20-25)   0-24 months   ki1017093b-PROVIDE          BANGLADESH                     Other                Control           1.2099448   1.0343567   1.4153399
[20-25)   0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              Control           1.0000000   1.0000000   1.0000000
[20-25)   0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                Control           0.9766129   0.6674737   1.4289293
[20-25)   0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                 Control           1.0558088   0.7589637   1.4687558
[20-25)   0-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Control              Control           1.0000000   1.0000000   1.0000000
[20-25)   0-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Other                Control           1.0032922   0.8255568   1.2192925
[20-25)   0-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Control              Control           1.0000000   1.0000000   1.0000000
[20-25)   0-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   LNS                  Control           0.9803647   0.8129941   1.1821916
[20-25)   0-24 months   ki1119695-PROBIT            BELARUS                        Control              Control           1.0000000   1.0000000   1.0000000
[20-25)   0-24 months   ki1119695-PROBIT            BELARUS                        Maternal             Control           0.8764646   0.7544248   1.0182462
[20-25)   0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control              Control           1.0000000   1.0000000   1.0000000
[20-25)   0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       VitA                 Control           0.9706961   0.9305497   1.0125745
[20-25)   0-24 months   ki1135781-COHORTS           GUATEMALA                      Control              Control           1.0000000   1.0000000   1.0000000
[20-25)   0-24 months   ki1135781-COHORTS           GUATEMALA                      Other                Control           0.9126102   0.8592930   0.9692357
[20-25)   0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
[20-25)   0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS                  Control           0.9876982   0.9075061   1.0749766
[20-25)   0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
[20-25)   0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Maternal             Control           1.1698732   1.0278654   1.3315004
[20-25)   0-24 months   ki1148112-LCNI-5            MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
[20-25)   0-24 months   ki1148112-LCNI-5            MALAWI                         LNS                  Control           0.9032258   0.6836423   1.1933387
[20-25)   0-24 months   ki1148112-LCNI-5            MALAWI                         Other                Control           0.8350578   0.5986159   1.1648898
[20-25)   0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
[20-25)   0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Maternal             Control           0.9621632   0.9285836   0.9969571
[20-25)   0-6 months    ki1000304-VITAMIN-A         INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
[20-25)   0-6 months    ki1000304-VITAMIN-A         INDIA                          VitA                 Control           1.0477454   0.8478554   1.2947612
[20-25)   0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
[20-25)   0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Other                Control           1.2026443   1.0214781   1.4159415
[20-25)   0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
[20-25)   0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Other                Control           1.0680908   0.8631708   1.3216596
[20-25)   0-6 months    ki1017093b-PROVIDE          BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
[20-25)   0-6 months    ki1017093b-PROVIDE          BANGLADESH                     Other                Control           1.1458333   0.8175898   1.6058591
[20-25)   0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              Control           1.0000000   1.0000000   1.0000000
[20-25)   0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                Control           0.6895161   0.3357538   1.4160151
[20-25)   0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                 Control           0.8245549   0.4546172   1.4955235
[20-25)   0-6 months    ki1112895-Guatemala BSC     GUATEMALA                      Control              Control           1.0000000   1.0000000   1.0000000
[20-25)   0-6 months    ki1112895-Guatemala BSC     GUATEMALA                      Other                Control           0.8750000   0.5994078   1.2773024
[20-25)   0-6 months    ki1119695-PROBIT            BELARUS                        Control              Control           1.0000000   1.0000000   1.0000000
[20-25)   0-6 months    ki1119695-PROBIT            BELARUS                        Maternal             Control           0.9714502   0.8027555   1.1755951
[20-25)   0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control              Control           1.0000000   1.0000000   1.0000000
[20-25)   0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       VitA                 Control           1.0402472   0.9688264   1.1169330
[20-25)   0-6 months    ki1135781-COHORTS           GUATEMALA                      Control              Control           1.0000000   1.0000000   1.0000000
[20-25)   0-6 months    ki1135781-COHORTS           GUATEMALA                      Other                Control           1.5437500   1.0558781   2.2570448
[20-25)   0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
[20-25)   0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         LNS                  Control           0.7692308   0.6481842   0.9128824
[20-25)   0-6 months    ki1148112-LCNI-5            MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
[20-25)   0-6 months    ki1148112-LCNI-5            MALAWI                         LNS                  Control           0.8750000   0.3644799   2.1005958
[20-25)   0-6 months    ki1148112-LCNI-5            MALAWI                         Other                Control           0.8823529   0.3375891   2.3061963
[20-25)   0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
[20-25)   0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Maternal             Control           0.8325334   0.7888981   0.8785822
[20-25)   6-24 months   iLiNS_DYADM_LNS             MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
[20-25)   6-24 months   iLiNS_DYADM_LNS             MALAWI                         LNS                  Control           1.5714286   1.2381042   1.9944910
[20-25)   6-24 months   iLiNS-Zinc_ZvLNS            BURKINA FASO                   Control              Control           1.0000000   1.0000000   1.0000000
[20-25)   6-24 months   iLiNS-Zinc_ZvLNS            BURKINA FASO                   Zinc                 Control           0.9612648   0.5238773   1.7638292
[20-25)   6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
[20-25)   6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                  Control           0.5864289   0.3999067   0.8599475
[20-25)   6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                Control           1.1183607   0.8527993   1.4666179
[20-25)   6-24 months   ki1000111-WASH-Kenya        KENYA                          Control              Control           1.0000000   1.0000000   1.0000000
[20-25)   6-24 months   ki1000111-WASH-Kenya        KENYA                          LNS                  Control           0.5652934   0.3245069   0.9847453
[20-25)   6-24 months   ki1000111-WASH-Kenya        KENYA                          Other                Control           1.1067039   0.7671722   1.5965041
[20-25)   6-24 months   ki1000304-EU                INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
[20-25)   6-24 months   ki1000304-EU                INDIA                          Zinc                 Control           1.1222946   0.5498009   2.2909115
[20-25)   6-24 months   ki1000304-VITAMIN-A         INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
[20-25)   6-24 months   ki1000304-VITAMIN-A         INDIA                          VitA                 Control           0.7744163   0.6057305   0.9900781
[20-25)   6-24 months   ki1000304-Vitamin-B12       INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
[20-25)   6-24 months   ki1000304-Vitamin-B12       INDIA                          Other                Control           1.0642570   0.7411602   1.5282028
[20-25)   6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
[20-25)   6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Other                Control           0.8049110   0.6777095   0.9559874
[20-25)   6-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
[20-25)   6-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Other                Control           0.8974359   0.7401116   1.0882023
[20-25)   6-24 months   ki1017093b-PROVIDE          BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
[20-25)   6-24 months   ki1017093b-PROVIDE          BANGLADESH                     Other                Control           1.5838926   1.2347261   2.0317994
[20-25)   6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              Control           1.0000000   1.0000000   1.0000000
[20-25)   6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                Control           0.6855225   0.3679844   1.2770681
[20-25)   6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                 Control           0.9587416   0.5867413   1.5665941
[20-25)   6-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Control              Control           1.0000000   1.0000000   1.0000000
[20-25)   6-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Other                Control           0.7402597   0.4869347   1.1253756
[20-25)   6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Control              Control           1.0000000   1.0000000   1.0000000
[20-25)   6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   LNS                  Control           0.7586286   0.5582764   1.0308824
[20-25)   6-24 months   ki1119695-PROBIT            BELARUS                        Control              Control           1.0000000   1.0000000   1.0000000
[20-25)   6-24 months   ki1119695-PROBIT            BELARUS                        Maternal             Control           0.9522892   0.7263817   1.2484547
[20-25)   6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control              Control           1.0000000   1.0000000   1.0000000
[20-25)   6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       VitA                 Control           0.9254199   0.8512633   1.0060366
[20-25)   6-24 months   ki1135781-COHORTS           GUATEMALA                      Control              Control           1.0000000   1.0000000   1.0000000
[20-25)   6-24 months   ki1135781-COHORTS           GUATEMALA                      Other                Control           0.8031746   0.7060062   0.9137164
[20-25)   6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
[20-25)   6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS                  Control           1.4747774   1.2101340   1.7972956
[20-25)   6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
[20-25)   6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Maternal             Control           1.3583535   1.1100710   1.6621679
[20-25)   6-24 months   ki1148112-LCNI-5            MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
[20-25)   6-24 months   ki1148112-LCNI-5            MALAWI                         LNS                  Control           0.8522727   0.4693177   1.5477122
[20-25)   6-24 months   ki1148112-LCNI-5            MALAWI                         Other                Control           0.7575758   0.3728835   1.5391428
[20-25)   6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
[20-25)   6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Maternal             Control           1.1456804   1.0649992   1.2324738
[25-30)   0-24 months   iLiNS_DYADM_LNS             MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
[25-30)   0-24 months   iLiNS_DYADM_LNS             MALAWI                         LNS                  Control           1.0776446   0.9198558   1.2624999
[25-30)   0-24 months   iLiNS-Zinc_ZvLNS            BURKINA FASO                   Control              Control           1.0000000   1.0000000   1.0000000
[25-30)   0-24 months   iLiNS-Zinc_ZvLNS            BURKINA FASO                   Zinc                 Control           0.9997959   0.6475657   1.5436144
[25-30)   0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
[25-30)   0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                  Control           0.8605087   0.7076019   1.0464573
[25-30)   0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                Control           0.8681157   0.7375777   1.0217567
[25-30)   0-24 months   ki1000111-WASH-Kenya        KENYA                          Control              Control           1.0000000   1.0000000   1.0000000
[25-30)   0-24 months   ki1000111-WASH-Kenya        KENYA                          LNS                  Control           0.9325199   0.7406455   1.1741020
[25-30)   0-24 months   ki1000111-WASH-Kenya        KENYA                          Other                Control           1.1375773   0.9446419   1.3699181
[25-30)   0-24 months   ki1000304-EU                INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
[25-30)   0-24 months   ki1000304-EU                INDIA                          Zinc                 Control           0.9465989   0.8073722   1.1098344
[25-30)   0-24 months   ki1000304-VITAMIN-A         INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
[25-30)   0-24 months   ki1000304-VITAMIN-A         INDIA                          VitA                 Control           0.9033623   0.8482278   0.9620804
[25-30)   0-24 months   ki1000304-Vitamin-B12       INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
[25-30)   0-24 months   ki1000304-Vitamin-B12       INDIA                          Other                Control           0.8645358   0.7617380   0.9812062
[25-30)   0-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
[25-30)   0-24 months   ki1000304b-SAS-CompFeed     INDIA                          Other                Control           0.8690671   0.7556966   0.9994456
[25-30)   0-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
[25-30)   0-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Other                Control           0.8639017   0.7854598   0.9501774
[25-30)   0-24 months   ki1017093b-PROVIDE          BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
[25-30)   0-24 months   ki1017093b-PROVIDE          BANGLADESH                     Other                Control           1.3671795   1.1420983   1.6366190
[25-30)   0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              Control           1.0000000   1.0000000   1.0000000
[25-30)   0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                Control           0.9686697   0.6675628   1.4055922
[25-30)   0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                 Control           1.0403045   0.7642122   1.4161427
[25-30)   0-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Control              Control           1.0000000   1.0000000   1.0000000
[25-30)   0-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Other                Control           1.4889706   1.0646709   2.0823651
[25-30)   0-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Control              Control           1.0000000   1.0000000   1.0000000
[25-30)   0-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   LNS                  Control           0.7809890   0.6655248   0.9164854
[25-30)   0-24 months   ki1119695-PROBIT            BELARUS                        Control              Control           1.0000000   1.0000000   1.0000000
[25-30)   0-24 months   ki1119695-PROBIT            BELARUS                        Maternal             Control           0.8100354   0.7217425   0.9091293
[25-30)   0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control              Control           1.0000000   1.0000000   1.0000000
[25-30)   0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       VitA                 Control           1.0623557   1.0095701   1.1179014
[25-30)   0-24 months   ki1135781-COHORTS           GUATEMALA                      Control              Control           1.0000000   1.0000000   1.0000000
[25-30)   0-24 months   ki1135781-COHORTS           GUATEMALA                      Other                Control           0.9617212   0.9056625   1.0212497
[25-30)   0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
[25-30)   0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS                  Control           1.0333046   0.9336676   1.1435745
[25-30)   0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
[25-30)   0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Maternal             Control           1.0848743   0.9608240   1.2249406
[25-30)   0-24 months   ki1148112-LCNI-5            MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
[25-30)   0-24 months   ki1148112-LCNI-5            MALAWI                         LNS                  Control           1.1387164   0.8154952   1.5900461
[25-30)   0-24 months   ki1148112-LCNI-5            MALAWI                         Other                Control           1.2901921   0.9078044   1.8336501
[25-30)   0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
[25-30)   0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Maternal             Control           0.9437299   0.8980004   0.9917882
[25-30)   0-6 months    ki1000304-VITAMIN-A         INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
[25-30)   0-6 months    ki1000304-VITAMIN-A         INDIA                          VitA                 Control           0.7932203   0.5728082   1.0984454
[25-30)   0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
[25-30)   0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Other                Control           0.8129789   0.6786157   0.9739456
[25-30)   0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
[25-30)   0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Other                Control           0.7789474   0.6427376   0.9440229
[25-30)   0-6 months    ki1017093b-PROVIDE          BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
[25-30)   0-6 months    ki1017093b-PROVIDE          BANGLADESH                     Other                Control           0.9077778   0.6289064   1.3103071
[25-30)   0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              Control           1.0000000   1.0000000   1.0000000
[25-30)   0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                Control           1.0397727   0.4797749   2.2534055
[25-30)   0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                 Control           1.1730769   0.6164092   2.2324609
[25-30)   0-6 months    ki1112895-Guatemala BSC     GUATEMALA                      Control              Control           1.0000000   1.0000000   1.0000000
[25-30)   0-6 months    ki1112895-Guatemala BSC     GUATEMALA                      Other                Control           0.7812500   0.4405025   1.3855804
[25-30)   0-6 months    ki1119695-PROBIT            BELARUS                        Control              Control           1.0000000   1.0000000   1.0000000
[25-30)   0-6 months    ki1119695-PROBIT            BELARUS                        Maternal             Control           0.8456271   0.6932457   1.0315033
[25-30)   0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control              Control           1.0000000   1.0000000   1.0000000
[25-30)   0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       VitA                 Control           1.1045476   1.0092228   1.2088761
[25-30)   0-6 months    ki1135781-COHORTS           GUATEMALA                      Control              Control           1.0000000   1.0000000   1.0000000
[25-30)   0-6 months    ki1135781-COHORTS           GUATEMALA                      Other                Control           0.6525000   0.4385296   0.9708723
[25-30)   0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
[25-30)   0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         LNS                  Control           0.7311828   0.6023217   0.8876125
[25-30)   0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
[25-30)   0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Maternal             Control           0.8187301   0.7584886   0.8837562
[25-30)   6-24 months   iLiNS_DYADM_LNS             MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
[25-30)   6-24 months   iLiNS_DYADM_LNS             MALAWI                         LNS                  Control           1.2398437   0.9439412   1.6285046
[25-30)   6-24 months   iLiNS-Zinc_ZvLNS            BURKINA FASO                   Control              Control           1.0000000   1.0000000   1.0000000
[25-30)   6-24 months   iLiNS-Zinc_ZvLNS            BURKINA FASO                   Zinc                 Control           0.9839481   0.3820295   2.5342384
[25-30)   6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
[25-30)   6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                  Control           0.8043304   0.5768623   1.1214935
[25-30)   6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                Control           0.7128115   0.5343500   0.9508753
[25-30)   6-24 months   ki1000111-WASH-Kenya        KENYA                          Control              Control           1.0000000   1.0000000   1.0000000
[25-30)   6-24 months   ki1000111-WASH-Kenya        KENYA                          LNS                  Control           1.1191136   0.6655639   1.8817355
[25-30)   6-24 months   ki1000111-WASH-Kenya        KENYA                          Other                Control           1.1258836   0.7135428   1.7765072
[25-30)   6-24 months   ki1000304-EU                INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
[25-30)   6-24 months   ki1000304-EU                INDIA                          Zinc                 Control           0.9082880   0.3357160   2.4573959
[25-30)   6-24 months   ki1000304-VITAMIN-A         INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
[25-30)   6-24 months   ki1000304-VITAMIN-A         INDIA                          VitA                 Control           1.1771622   0.9205525   1.5053035
[25-30)   6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
[25-30)   6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Other                Control           0.7880435   0.5877967   1.0565091
[25-30)   6-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
[25-30)   6-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Other                Control           1.1034483   0.8883315   1.3706573
[25-30)   6-24 months   ki1017093b-PROVIDE          BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
[25-30)   6-24 months   ki1017093b-PROVIDE          BANGLADESH                     Other                Control           1.4191304   1.0180752   1.9781753
[25-30)   6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              Control           1.0000000   1.0000000   1.0000000
[25-30)   6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                Control           0.8926108   0.4961188   1.6059743
[25-30)   6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                 Control           0.9704937   0.5986677   1.5732569
[25-30)   6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Control              Control           1.0000000   1.0000000   1.0000000
[25-30)   6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   LNS                  Control           0.5676757   0.4355131   0.7399448
[25-30)   6-24 months   ki1119695-PROBIT            BELARUS                        Control              Control           1.0000000   1.0000000   1.0000000
[25-30)   6-24 months   ki1119695-PROBIT            BELARUS                        Maternal             Control           0.8498567   0.6489643   1.1129371
[25-30)   6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control              Control           1.0000000   1.0000000   1.0000000
[25-30)   6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       VitA                 Control           1.1800145   1.0702200   1.3010728
[25-30)   6-24 months   ki1135781-COHORTS           GUATEMALA                      Control              Control           1.0000000   1.0000000   1.0000000
[25-30)   6-24 months   ki1135781-COHORTS           GUATEMALA                      Other                Control           1.0625000   0.9290941   1.2150613
[25-30)   6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
[25-30)   6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS                  Control           0.8032129   0.6211834   1.0385835
[25-30)   6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
[25-30)   6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Maternal             Control           1.2496449   1.0170730   1.5353985
[25-30)   6-24 months   ki1148112-LCNI-5            MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
[25-30)   6-24 months   ki1148112-LCNI-5            MALAWI                         LNS                  Control           1.0225694   0.5233516   1.9979843
[25-30)   6-24 months   ki1148112-LCNI-5            MALAWI                         Other                Control           1.2629630   0.6105529   2.6125097
[25-30)   6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
[25-30)   6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Maternal             Control           1.0988122   0.9916956   1.2174987
>=30      0-24 months   iLiNS_DYADM_LNS             MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
>=30      0-24 months   iLiNS_DYADM_LNS             MALAWI                         LNS                  Control           0.7891304   0.6699989   0.9294445
>=30      0-24 months   iLiNS-Zinc_ZvLNS            BURKINA FASO                   Control              Control           1.0000000   1.0000000   1.0000000
>=30      0-24 months   iLiNS-Zinc_ZvLNS            BURKINA FASO                   Zinc                 Control           1.0052910   0.6378124   1.5844940
>=30      0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
>=30      0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                  Control           0.8361185   0.6443710   1.0849248
>=30      0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                Control           1.0911957   0.8884803   1.3401627
>=30      0-24 months   ki1000111-WASH-Kenya        KENYA                          Control              Control           1.0000000   1.0000000   1.0000000
>=30      0-24 months   ki1000111-WASH-Kenya        KENYA                          LNS                  Control           0.9483777   0.7582259   1.1862168
>=30      0-24 months   ki1000111-WASH-Kenya        KENYA                          Other                Control           1.0765301   0.8995365   1.2883492
>=30      0-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Control              Control           1.0000000   1.0000000   1.0000000
>=30      0-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Maternal             Control           0.9385027   0.6442014   1.3672544
>=30      0-24 months   ki1000304-EU                INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
>=30      0-24 months   ki1000304-EU                INDIA                          Zinc                 Control           1.0308931   0.7982196   1.3313888
>=30      0-24 months   ki1000304-VITAMIN-A         INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
>=30      0-24 months   ki1000304-VITAMIN-A         INDIA                          VitA                 Control           1.0848718   0.9913330   1.1872367
>=30      0-24 months   ki1000304-Vitamin-B12       INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
>=30      0-24 months   ki1000304-Vitamin-B12       INDIA                          Other                Control           0.7669617   0.6497113   0.9053716
>=30      0-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
>=30      0-24 months   ki1000304b-SAS-CompFeed     INDIA                          Other                Control           1.0000000   0.9076729   1.1017184
>=30      0-24 months   ki1017093b-PROVIDE          BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
>=30      0-24 months   ki1017093b-PROVIDE          BANGLADESH                     Other                Control           0.7549020   0.6158620   0.9253323
>=30      0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              Control           1.0000000   1.0000000   1.0000000
>=30      0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                Control           0.9138655   0.5859438   1.4253078
>=30      0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                 Control           1.1554622   0.8037679   1.6610428
>=30      0-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Control              Control           1.0000000   1.0000000   1.0000000
>=30      0-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Other                Control           1.6551724   1.2463970   2.1980121
>=30      0-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Control              Control           1.0000000   1.0000000   1.0000000
>=30      0-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   LNS                  Control           0.8498781   0.7314334   0.9875031
>=30      0-24 months   ki1119695-PROBIT            BELARUS                        Control              Control           1.0000000   1.0000000   1.0000000
>=30      0-24 months   ki1119695-PROBIT            BELARUS                        Maternal             Control           0.8206399   0.6902241   0.9756975
>=30      0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control              Control           1.0000000   1.0000000   1.0000000
>=30      0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       VitA                 Control           1.0837411   1.0180721   1.1536459
>=30      0-24 months   ki1135781-COHORTS           GUATEMALA                      Control              Control           1.0000000   1.0000000   1.0000000
>=30      0-24 months   ki1135781-COHORTS           GUATEMALA                      Other                Control           0.8266093   0.7846276   0.8708372
>=30      0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
>=30      0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS                  Control           1.0112755   0.9303975   1.0991842
>=30      0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
>=30      0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Maternal             Control           0.8489130   0.7431738   0.9696969
>=30      0-24 months   ki1148112-LCNI-5            MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
>=30      0-24 months   ki1148112-LCNI-5            MALAWI                         LNS                  Control           1.0856075   0.8054414   1.4632269
>=30      0-24 months   ki1148112-LCNI-5            MALAWI                         Other                Control           1.1608511   0.8343254   1.6151673
>=30      0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
>=30      0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Maternal             Control           0.9394261   0.8742021   1.0095165
>=30      0-6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Control              Control           1.0000000   1.0000000   1.0000000
>=30      0-6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Maternal             Control           0.5555556   0.3521164   0.8765339
>=30      0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
>=30      0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Other                Control           0.9183673   0.6842830   1.2325290
>=30      0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
>=30      0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Other                Control           1.0328638   0.7575981   1.4081447
>=30      0-6 months    ki1017093b-PROVIDE          BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
>=30      0-6 months    ki1017093b-PROVIDE          BANGLADESH                     Other                Control           0.6100840   0.3930902   0.9468629
>=30      0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              Control           1.0000000   1.0000000   1.0000000
>=30      0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                Control           1.7748918   0.6603316   4.7706949
>=30      0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                 Control           1.8915802   0.7746938   4.6186963
>=30      0-6 months    ki1119695-PROBIT            BELARUS                        Control              Control           1.0000000   1.0000000   1.0000000
>=30      0-6 months    ki1119695-PROBIT            BELARUS                        Maternal             Control           0.7714412   0.6014320   0.9895075
>=30      0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control              Control           1.0000000   1.0000000   1.0000000
>=30      0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       VitA                 Control           1.1499571   1.0347766   1.2779584
>=30      0-6 months    ki1135781-COHORTS           GUATEMALA                      Control              Control           1.0000000   1.0000000   1.0000000
>=30      0-6 months    ki1135781-COHORTS           GUATEMALA                      Other                Control           0.7528409   0.5880966   0.9637353
>=30      0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
>=30      0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         LNS                  Control           1.0739130   0.9077259   1.2705259
>=30      0-6 months    ki1148112-LCNI-5            MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
>=30      0-6 months    ki1148112-LCNI-5            MALAWI                         LNS                  Control           0.5942857   0.2355547   1.4993354
>=30      0-6 months    ki1148112-LCNI-5            MALAWI                         Other                Control           1.5294118   0.6868520   3.4055375
>=30      0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
>=30      0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Maternal             Control           0.7775565   0.6977336   0.8665113
>=30      6-24 months   iLiNS_DYADM_LNS             MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
>=30      6-24 months   iLiNS_DYADM_LNS             MALAWI                         LNS                  Control           0.7738095   0.5798514   1.0326459
>=30      6-24 months   iLiNS-Zinc_ZvLNS            BURKINA FASO                   Control              Control           1.0000000   1.0000000   1.0000000
>=30      6-24 months   iLiNS-Zinc_ZvLNS            BURKINA FASO                   Zinc                 Control           1.1596154   0.4034948   3.3326520
>=30      6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
>=30      6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                  Control           0.6517446   0.3975506   1.0684704
>=30      6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                Control           1.1797389   0.8223174   1.6925143
>=30      6-24 months   ki1000111-WASH-Kenya        KENYA                          Control              Control           1.0000000   1.0000000   1.0000000
>=30      6-24 months   ki1000111-WASH-Kenya        KENYA                          LNS                  Control           1.0806213   0.5958112   1.9599201
>=30      6-24 months   ki1000111-WASH-Kenya        KENYA                          Other                Control           1.2212577   0.7445298   2.0032380
>=30      6-24 months   ki1000304-VITAMIN-A         INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
>=30      6-24 months   ki1000304-VITAMIN-A         INDIA                          VitA                 Control           1.2755905   0.9285142   1.7524031
>=30      6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
>=30      6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Other                Control           1.1663202   1.0214779   1.3317005
>=30      6-24 months   ki1017093b-PROVIDE          BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
>=30      6-24 months   ki1017093b-PROVIDE          BANGLADESH                     Other                Control           0.7500000   0.5300941   1.0611323
>=30      6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              Control           1.0000000   1.0000000   1.0000000
>=30      6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                Control           0.9043928   0.4755809   1.7198467
>=30      6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                 Control           1.2380952   0.7368394   2.0803445
>=30      6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Control              Control           1.0000000   1.0000000   1.0000000
>=30      6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   LNS                  Control           0.6348684   0.5199261   0.7752215
>=30      6-24 months   ki1119695-PROBIT            BELARUS                        Control              Control           1.0000000   1.0000000   1.0000000
>=30      6-24 months   ki1119695-PROBIT            BELARUS                        Maternal             Control           0.9930282   0.7341297   1.3432299
>=30      6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control              Control           1.0000000   1.0000000   1.0000000
>=30      6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       VitA                 Control           0.8671729   0.7654029   0.9824744
>=30      6-24 months   ki1135781-COHORTS           GUATEMALA                      Control              Control           1.0000000   1.0000000   1.0000000
>=30      6-24 months   ki1135781-COHORTS           GUATEMALA                      Other                Control           0.8206160   0.7230859   0.9313009
>=30      6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
>=30      6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS                  Control           1.4487805   1.1894278   1.7646845
>=30      6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
>=30      6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Maternal             Control           0.8886719   0.7092768   1.1134408
>=30      6-24 months   ki1148112-LCNI-5            MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
>=30      6-24 months   ki1148112-LCNI-5            MALAWI                         LNS                  Control           1.0371429   0.5552393   1.9373003
>=30      6-24 months   ki1148112-LCNI-5            MALAWI                         Other                Control           1.1000000   0.5319579   2.2746159
>=30      6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
>=30      6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Maternal             Control           1.1128571   0.9620768   1.2872683


### Parameter: PAR


mage      agecat        studyid                     country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
--------  ------------  --------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
<20       0-24 months   iLiNS_DYADM_LNS             MALAWI                         Control              NA                 0.0545346    0.0035728    0.1054965
<20       0-24 months   iLiNS-Zinc_ZvLNS            BURKINA FASO                   Control              NA                -0.0673052   -0.2388193    0.1042090
<20       0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                 0.0215245   -0.0303308    0.0733799
<20       0-24 months   ki1000111-WASH-Kenya        KENYA                          Control              NA                -0.0093678   -0.0473144    0.0285787
<20       0-24 months   ki1000304-EU                INDIA                          Control              NA                 0.0334311   -0.0514268    0.1182890
<20       0-24 months   ki1000304-VITAMIN-A         INDIA                          Control              NA                 0.0158607   -0.0289292    0.0606506
<20       0-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control              NA                 0.0339438   -0.0355953    0.1034830
<20       0-24 months   ki1017093b-PROVIDE          BANGLADESH                     Control              NA                -0.1135135   -0.2164020   -0.0106250
<20       0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              NA                -0.0479680   -0.1678441    0.0719081
<20       0-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Control              NA                 0.0000000   -0.1087192    0.1087192
<20       0-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Control              NA                -0.0767383   -0.1400912   -0.0133854
<20       0-24 months   ki1119695-PROBIT            BELARUS                        Control              NA                -0.0120633   -0.0287406    0.0046140
<20       0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                -0.0095214   -0.0284991    0.0094563
<20       0-24 months   ki1135781-COHORTS           GUATEMALA                      Control              NA                -0.0210526   -0.0631418    0.0210366
<20       0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                -0.0170859   -0.0683316    0.0341598
<20       0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control              NA                 0.0625598    0.0140698    0.1110498
<20       0-24 months   ki1148112-LCNI-5            MALAWI                         Control              NA                -0.0219907   -0.1678167    0.1238353
<20       0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                -0.0190515   -0.0267382   -0.0113649
<20       0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Control              NA                 0.0094340   -0.0534706    0.0723386
<20       0-6 months    ki1112895-Guatemala BSC     GUATEMALA                      Control              NA                -0.0094467   -0.1180861    0.0991927
<20       0-6 months    ki1119695-PROBIT            BELARUS                        Control              NA                -0.0004338   -0.0135614    0.0126939
<20       0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                -0.0214769   -0.0395893   -0.0033645
<20       0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                 0.0221937   -0.0414968    0.0858842
<20       0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                -0.0186905   -0.0259985   -0.0113826
<20       6-24 months   iLiNS_DYADM_LNS             MALAWI                         Control              NA                 0.0348101   -0.0156672    0.0852874
<20       6-24 months   iLiNS-Zinc_ZvLNS            BURKINA FASO                   Control              NA                -0.0361648   -0.1288281    0.0564984
<20       6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                 0.0135410   -0.0299103    0.0569922
<20       6-24 months   ki1000111-WASH-Kenya        KENYA                          Control              NA                 0.0175502   -0.0071263    0.0422267
<20       6-24 months   ki1000304-VITAMIN-A         INDIA                          Control              NA                -0.0100334   -0.0464064    0.0263395
<20       6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control              NA                 0.0096257   -0.0680470    0.0872984
<20       6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Control              NA                -0.0652329   -0.1077405   -0.0227253
<20       6-24 months   ki1119695-PROBIT            BELARUS                        Control              NA                -0.0024652   -0.0106487    0.0057183
<20       6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                 0.0016263   -0.0147041    0.0179567
<20       6-24 months   ki1135781-COHORTS           GUATEMALA                      Control              NA                -0.0455927   -0.1178083    0.0266229
<20       6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                 0.0106101   -0.0483567    0.0695768
<20       6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control              NA                 0.0382663   -0.0093958    0.0859285
<20       6-24 months   ki1148112-LCNI-5            MALAWI                         Control              NA                -0.0487952   -0.2298324    0.1322420
<20       6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                 0.0001227   -0.0078625    0.0081080
[20-25)   0-24 months   iLiNS_DYADM_LNS             MALAWI                         Control              NA                 0.0521930    0.0067445    0.0976415
[20-25)   0-24 months   iLiNS-Zinc_ZvLNS            BURKINA FASO                   Control              NA                 0.0229208   -0.0754917    0.1213333
[20-25)   0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                -0.0199572   -0.0584002    0.0184858
[20-25)   0-24 months   ki1000111-WASH-Kenya        KENYA                          Control              NA                -0.0066291   -0.0326162    0.0193581
[20-25)   0-24 months   ki1000304-EU                INDIA                          Control              NA                -0.0392245   -0.0703314   -0.0081177
[20-25)   0-24 months   ki1000304-VITAMIN-A         INDIA                          Control              NA                -0.0104258   -0.0272923    0.0064407
[20-25)   0-24 months   ki1000304-Vitamin-B12       INDIA                          Control              NA                 0.0070578   -0.0382710    0.0523865
[20-25)   0-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control              NA                -0.0281773   -0.0717418    0.0153872
[20-25)   0-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Control              NA                -0.0440013   -0.1058990    0.0178963
[20-25)   0-24 months   ki1017093b-PROVIDE          BANGLADESH                     Control              NA                 0.0494792   -0.0012997    0.1002580
[20-25)   0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              NA                 0.0048376   -0.0498303    0.0595056
[20-25)   0-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Control              NA                 0.0007701   -0.0666391    0.0681794
[20-25)   0-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Control              NA                -0.0049751   -0.0642164    0.0542661
[20-25)   0-24 months   ki1119695-PROBIT            BELARUS                        Control              NA                -0.0090872   -0.0212967    0.0031224
[20-25)   0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                -0.0068227   -0.0179312    0.0042858
[20-25)   0-24 months   ki1135781-COHORTS           GUATEMALA                      Control              NA                -0.0371133   -0.0719909   -0.0022357
[20-25)   0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                -0.0046978   -0.0399857    0.0305902
[20-25)   0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control              NA                 0.0404317   -0.0023832    0.0832466
[20-25)   0-24 months   ki1148112-LCNI-5            MALAWI                         Control              NA                -0.0575235   -0.1754385    0.0603915
[20-25)   0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                -0.0072692   -0.0165147    0.0019764
[20-25)   0-6 months    ki1000304-VITAMIN-A         INDIA                          Control              NA                 0.0079114   -0.0456802    0.0615030
[20-25)   0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Control              NA                 0.0244524   -0.0024431    0.0513478
[20-25)   0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Control              NA                 0.0173469   -0.0496310    0.0843249
[20-25)   0-6 months    ki1017093b-PROVIDE          BANGLADESH                     Control              NA                 0.0109804   -0.0228735    0.0448343
[20-25)   0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              NA                -0.0157575   -0.0527104    0.0211955
[20-25)   0-6 months    ki1112895-Guatemala BSC     GUATEMALA                      Control              NA                -0.0141287   -0.0718066    0.0435492
[20-25)   0-6 months    ki1119695-PROBIT            BELARUS                        Control              NA                -0.0009975   -0.0083754    0.0063804
[20-25)   0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                 0.0049571   -0.0055125    0.0154266
[20-25)   0-6 months    ki1135781-COHORTS           GUATEMALA                      Control              NA                 0.0587045   -0.0172946    0.1347035
[20-25)   0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                -0.0595533   -0.0976910   -0.0214157
[20-25)   0-6 months    ki1148112-LCNI-5            MALAWI                         Control              NA                -0.0268817   -0.1903215    0.1365581
[20-25)   0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                -0.0203386   -0.0284780   -0.0121993
[20-25)   6-24 months   iLiNS_DYADM_LNS             MALAWI                         Control              NA                 0.0596737    0.0123554    0.1069919
[20-25)   6-24 months   iLiNS-Zinc_ZvLNS            BURKINA FASO                   Control              NA                -0.0043563   -0.0719461    0.0632334
[20-25)   6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                -0.0093700   -0.0444375    0.0256975
[20-25)   6-24 months   ki1000111-WASH-Kenya        KENYA                          Control              NA                -0.0038032   -0.0216282    0.0140218
[20-25)   6-24 months   ki1000304-EU                INDIA                          Control              NA                 0.0030913   -0.0159647    0.0221473
[20-25)   6-24 months   ki1000304-VITAMIN-A         INDIA                          Control              NA                -0.0075990   -0.0171976    0.0019995
[20-25)   6-24 months   ki1000304-Vitamin-B12       INDIA                          Control              NA                 0.0055139   -0.0321098    0.0431376
[20-25)   6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control              NA                -0.0323165   -0.0623279   -0.0023050
[20-25)   6-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Control              NA                -0.0470588   -0.1404518    0.0463341
[20-25)   6-24 months   ki1017093b-PROVIDE          BANGLADESH                     Control              NA                 0.0708931    0.0194376    0.1223486
[20-25)   6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              NA                -0.0150430   -0.0645489    0.0344630
[20-25)   6-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Control              NA                -0.0318979   -0.0974951    0.0336993
[20-25)   6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Control              NA                -0.0353520   -0.0788566    0.0081525
[20-25)   6-24 months   ki1119695-PROBIT            BELARUS                        Control              NA                -0.0009776   -0.0053964    0.0034413
[20-25)   6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                -0.0073339   -0.0162204    0.0015525
[20-25)   6-24 months   ki1135781-COHORTS           GUATEMALA                      Control              NA                -0.0633299   -0.1165007   -0.0101591
[20-25)   6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                 0.0561601    0.0199796    0.0923405
[20-25)   6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control              NA                 0.0487484    0.0056665    0.0918302
[20-25)   6-24 months   ki1148112-LCNI-5            MALAWI                         Control              NA                -0.0512821   -0.2014999    0.0989358
[20-25)   6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                 0.0138671    0.0031109    0.0246232
[25-30)   0-24 months   iLiNS_DYADM_LNS             MALAWI                         Control              NA                 0.0179173   -0.0342598    0.0700943
[25-30)   0-24 months   iLiNS-Zinc_ZvLNS            BURKINA FASO                   Control              NA                -0.0000434   -0.0922768    0.0921901
[25-30)   0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                -0.0441171   -0.0929812    0.0047470
[25-30)   0-24 months   ki1000111-WASH-Kenya        KENYA                          Control              NA                 0.0098365   -0.0174082    0.0370812
[25-30)   0-24 months   ki1000304-EU                INDIA                          Control              NA                -0.0123977   -0.0482753    0.0234799
[25-30)   0-24 months   ki1000304-VITAMIN-A         INDIA                          Control              NA                -0.0222390   -0.0417690   -0.0027090
[25-30)   0-24 months   ki1000304-Vitamin-B12       INDIA                          Control              NA                -0.0518698   -0.1016989   -0.0020408
[25-30)   0-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control              NA                -0.0471173   -0.1149845    0.0207498
[25-30)   0-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Control              NA                -0.0843167   -0.1483130   -0.0203204
[25-30)   0-24 months   ki1017093b-PROVIDE          BANGLADESH                     Control              NA                 0.0862755    0.0245229    0.1480280
[25-30)   0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              NA                 0.0033728   -0.0504776    0.0572233
[25-30)   0-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Control              NA                 0.0807529   -0.0147955    0.1763012
[25-30)   0-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Control              NA                -0.0592944   -0.1044273   -0.0141615
[25-30)   0-24 months   ki1119695-PROBIT            BELARUS                        Control              NA                -0.0125749   -0.0221366   -0.0030132
[25-30)   0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                 0.0146641    0.0000567    0.0292715
[25-30)   0-24 months   ki1135781-COHORTS           GUATEMALA                      Control              NA                -0.0161281   -0.0515828    0.0193266
[25-30)   0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                 0.0127342   -0.0301920    0.0556603
[25-30)   0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control              NA                 0.0262463   -0.0208733    0.0733659
[25-30)   0-24 months   ki1148112-LCNI-5            MALAWI                         Control              NA                 0.0737640   -0.0530164    0.2005443
[25-30)   0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                -0.0110356   -0.0241904    0.0021191
[25-30)   0-6 months    ki1000304-VITAMIN-A         INDIA                          Control              NA                -0.0299902   -0.0857098    0.0257295
[25-30)   0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Control              NA                -0.0378007   -0.0692364   -0.0063650
[25-30)   0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Control              NA                -0.0839360   -0.1539543   -0.0139178
[25-30)   0-6 months    ki1017093b-PROVIDE          BANGLADESH                     Control              NA                -0.0100012   -0.0514830    0.0314806
[25-30)   0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              NA                 0.0066047   -0.0251343    0.0383438
[25-30)   0-6 months    ki1112895-Guatemala BSC     GUATEMALA                      Control              NA                -0.0245614   -0.0960418    0.0469190
[25-30)   0-6 months    ki1119695-PROBIT            BELARUS                        Control              NA                -0.0049773   -0.0126999    0.0027453
[25-30)   0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                 0.0121213   -0.0011060    0.0253486
[25-30)   0-6 months    ki1135781-COHORTS           GUATEMALA                      Control              NA                -0.0694653   -0.1463304    0.0073998
[25-30)   0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                -0.0834376   -0.1315516   -0.0353237
[25-30)   0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                -0.0233581   -0.0350044   -0.0117119
[25-30)   6-24 months   iLiNS_DYADM_LNS             MALAWI                         Control              NA                 0.0298609   -0.0237550    0.0834768
[25-30)   6-24 months   iLiNS-Zinc_ZvLNS            BURKINA FASO                   Control              NA                -0.0014030   -0.0839065    0.0811005
[25-30)   6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                -0.0490257   -0.0963041   -0.0017473
[25-30)   6-24 months   ki1000111-WASH-Kenya        KENYA                          Control              NA                 0.0048266   -0.0122350    0.0218883
[25-30)   6-24 months   ki1000304-EU                INDIA                          Control              NA                -0.0018848   -0.0213607    0.0175911
[25-30)   6-24 months   ki1000304-VITAMIN-A         INDIA                          Control              NA                 0.0066754   -0.0078136    0.0211644
[25-30)   6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control              NA                -0.0481481   -0.1174855    0.0211893
[25-30)   6-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Control              NA                 0.0428571   -0.0640544    0.1497687
[25-30)   6-24 months   ki1017093b-PROVIDE          BANGLADESH                     Control              NA                 0.0475720   -0.0100964    0.1052405
[25-30)   6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              NA                -0.0056323   -0.0534329    0.0421682
[25-30)   6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Control              NA                -0.0662722   -0.0996420   -0.0329025
[25-30)   6-24 months   ki1119695-PROBIT            BELARUS                        Control              NA                -0.0031693   -0.0079494    0.0016108
[25-30)   6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                 0.0172518    0.0047554    0.0297483
[25-30)   6-24 months   ki1135781-COHORTS           GUATEMALA                      Control              NA                 0.0222222   -0.0411855    0.0856300
[25-30)   6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                -0.0333333   -0.0720614    0.0053947
[25-30)   6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control              NA                 0.0415853   -0.0067703    0.0899410
[25-30)   6-24 months   ki1148112-LCNI-5            MALAWI                         Control              NA                 0.0216774   -0.1183996    0.1617545
[25-30)   6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                 0.0096319   -0.0035890    0.0228529
>=30      0-24 months   iLiNS_DYADM_LNS             MALAWI                         Control              NA                -0.0524892   -0.1047029   -0.0002755
>=30      0-24 months   iLiNS-Zinc_ZvLNS            BURKINA FASO                   Control              NA                 0.0012626   -0.1074228    0.1099481
>=30      0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                 0.0024174   -0.0619752    0.0668101
>=30      0-24 months   ki1000111-WASH-Kenya        KENYA                          Control              NA                 0.0055758   -0.0224325    0.0335841
>=30      0-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Control              NA                -0.0080787   -0.0776534    0.0614960
>=30      0-24 months   ki1000304-EU                INDIA                          Control              NA                 0.0074640   -0.0552326    0.0701606
>=30      0-24 months   ki1000304-VITAMIN-A         INDIA                          Control              NA                 0.0200207   -0.0117065    0.0517479
>=30      0-24 months   ki1000304-Vitamin-B12       INDIA                          Control              NA                -0.1067568   -0.1778110   -0.0357025
>=30      0-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control              NA                 0.0000000   -0.0171837    0.0171837
>=30      0-24 months   ki1017093b-PROVIDE          BANGLADESH                     Control              NA                -0.0963020   -0.1727664   -0.0198376
>=30      0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              NA                 0.0109051   -0.0422708    0.0640810
>=30      0-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Control              NA                 0.1344340    0.0313730    0.2374949
>=30      0-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Control              NA                -0.0417636   -0.0878500    0.0043228
>=30      0-24 months   ki1119695-PROBIT            BELARUS                        Control              NA                -0.0120696   -0.0267546    0.0026154
>=30      0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                 0.0195453    0.0016829    0.0374077
>=30      0-24 months   ki1135781-COHORTS           GUATEMALA                      Control              NA                -0.0741673   -0.1051050   -0.0432295
>=30      0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                 0.0049925   -0.0360077    0.0459926
>=30      0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control              NA                -0.0509531   -0.1010042   -0.0009020
>=30      0-24 months   ki1148112-LCNI-5            MALAWI                         Control              NA                 0.0479798   -0.0807547    0.1767143
>=30      0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                -0.0124013   -0.0313310    0.0065284
>=30      0-6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Control              NA                -0.1000000   -0.2010904    0.0010904
>=30      0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Control              NA                -0.0141844   -0.0708856    0.0425168
>=30      0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Control              NA                 0.0076923   -0.0767010    0.0920856
>=30      0-6 months    ki1017093b-PROVIDE          BANGLADESH                     Control              NA                -0.0595788   -0.1116351   -0.0075225
>=30      0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              NA                 0.0227227   -0.0043654    0.0498108
>=30      0-6 months    ki1119695-PROBIT            BELARUS                        Control              NA                -0.0081618   -0.0194947    0.0031710
>=30      0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                 0.0178546    0.0016106    0.0340986
>=30      0-6 months    ki1135781-COHORTS           GUATEMALA                      Control              NA                -0.0561200   -0.1191930    0.0069531
>=30      0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                 0.0185488   -0.0311295    0.0682272
>=30      0-6 months    ki1148112-LCNI-5            MALAWI                         Control              NA                -0.0307692   -0.2681366    0.2065982
>=30      0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                -0.0312154   -0.0484746   -0.0139563
>=30      6-24 months   iLiNS_DYADM_LNS             MALAWI                         Control              NA                -0.0342548   -0.0868159    0.0183063
>=30      6-24 months   iLiNS-Zinc_ZvLNS            BURKINA FASO                   Control              NA                 0.0138889   -0.0803926    0.1081704
>=30      6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                 0.0010072   -0.0612372    0.0632516
>=30      6-24 months   ki1000111-WASH-Kenya        KENYA                          Control              NA                 0.0057085   -0.0104438    0.0218609
>=30      6-24 months   ki1000304-VITAMIN-A         INDIA                          Control              NA                 0.0143501   -0.0141874    0.0428877
>=30      6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control              NA                 0.0346320    0.0067767    0.0624874
>=30      6-24 months   ki1017093b-PROVIDE          BANGLADESH                     Control              NA                -0.0606061   -0.1385927    0.0173806
>=30      6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              NA                 0.0115064   -0.0364968    0.0595096
>=30      6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Control              NA                -0.0557010   -0.0826841   -0.0287179
>=30      6-24 months   ki1119695-PROBIT            BELARUS                        Control              NA                -0.0001220   -0.0084694    0.0082253
>=30      6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                -0.0147716   -0.0288736   -0.0006695
>=30      6-24 months   ki1135781-COHORTS           GUATEMALA                      Control              NA                -0.0625938   -0.1134416   -0.0117460
>=30      6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                 0.0681481    0.0225273    0.1137690
>=30      6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control              NA                -0.0227182   -0.0742988    0.0288623
>=30      6-24 months   ki1148112-LCNI-5            MALAWI                         Control              NA                 0.0127592   -0.1242337    0.1497521
>=30      6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                 0.0118453   -0.0091152    0.0328057


### Parameter: PAF


mage      agecat        studyid                     country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
--------  ------------  --------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
<20       0-24 months   iLiNS_DYADM_LNS             MALAWI                         Control              NA                 0.1322278    0.0166428    0.2342269
<20       0-24 months   iLiNS-Zinc_ZvLNS            BURKINA FASO                   Control              NA                -0.1777547   -0.7293962    0.1979247
<20       0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                 0.0561423   -0.0892954    0.1821618
<20       0-24 months   ki1000111-WASH-Kenya        KENYA                          Control              NA                -0.0331558   -0.1765725    0.0927793
<20       0-24 months   ki1000304-EU                INDIA                          Control              NA                 0.0740260   -0.1347709    0.2444044
<20       0-24 months   ki1000304-VITAMIN-A         INDIA                          Control              NA                 0.0293019   -0.0544850    0.1064313
<20       0-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control              NA                 0.0562753   -0.0591995    0.1591610
<20       0-24 months   ki1017093b-PROVIDE          BANGLADESH                     Control              NA                -0.2333333   -0.5252021    0.0026823
<20       0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              NA                -0.2229102   -0.9264701    0.2237049
<20       0-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Control              NA                 0.0000000   -0.1986534    0.1657305
<20       0-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Control              NA                -0.1908983   -0.3942859   -0.0171794
<20       0-24 months   ki1119695-PROBIT            BELARUS                        Control              NA                -0.0780275   -0.2016124    0.0328469
<20       0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                -0.0259944   -0.0805592    0.0258151
<20       0-24 months   ki1135781-COHORTS           GUATEMALA                      Control              NA                -0.0263158   -0.0817760    0.0263011
<20       0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                -0.0297275   -0.1257651    0.0581172
<20       0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control              NA                 0.1487909    0.0438766    0.2421931
<20       0-24 months   ki1148112-LCNI-5            MALAWI                         Control              NA                -0.0431818   -0.3728615    0.2073284
<20       0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                -0.0442456   -0.0630685   -0.0257561
<20       0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Control              NA                 0.0344828   -0.2154086    0.2329957
<20       0-6 months    ki1112895-Guatemala BSC     GUATEMALA                      Control              NA                -0.0263158   -0.3891756    0.2417631
<20       0-6 months    ki1119695-PROBIT            BELARUS                        Control              NA                -0.0051130   -0.1733278    0.1389856
<20       0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                -0.1057907   -0.2091597   -0.0112586
<20       0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                 0.0604698   -0.1176426    0.2101974
<20       0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                -0.0641774   -0.0912609   -0.0377660
<20       6-24 months   iLiNS_DYADM_LNS             MALAWI                         Control              NA                 0.1392405   -0.0560476    0.2984152
<20       6-24 months   iLiNS-Zinc_ZvLNS            BURKINA FASO                   Control              NA                -0.2118227   -0.9090113    0.2307462
<20       6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                 0.0865801   -0.2378290    0.3259683
<20       6-24 months   ki1000111-WASH-Kenya        KENYA                          Control              NA                 0.2386154   -0.1750008    0.5066331
<20       6-24 months   ki1000304-VITAMIN-A         INDIA                          Control              NA                -0.0887574   -0.5044906    0.2120970
<20       6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control              NA                 0.0340909   -0.2720373    0.2665464
<20       6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Control              NA                -0.3460663   -0.6858569   -0.0747617
<20       6-24 months   ki1119695-PROBIT            BELARUS                        Control              NA                -0.0542997   -0.2636576    0.1203726
<20       6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                 0.0104749   -0.0992788    0.1092706
<20       6-24 months   ki1135781-COHORTS           GUATEMALA                      Control              NA                -0.0797872   -0.2257408    0.0487871
<20       6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                 0.0439560   -0.2206496    0.2512020
<20       6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control              NA                 0.1509781   -0.0261399    0.2975245
<20       6-24 months   ki1148112-LCNI-5            MALAWI                         Control              NA                -0.1620000   -0.9491536    0.3072665
<20       6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                 0.0006307   -0.0412316    0.0408100
[20-25)   0-24 months   iLiNS_DYADM_LNS             MALAWI                         Control              NA                 0.1236975    0.0230756    0.2139554
[20-25)   0-24 months   iLiNS-Zinc_ZvLNS            BURKINA FASO                   Control              NA                 0.0701397   -0.2754266    0.3220776
[20-25)   0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                -0.0545980   -0.1652056    0.0455101
[20-25)   0-24 months   ki1000111-WASH-Kenya        KENYA                          Control              NA                -0.0267672   -0.1372415    0.0729754
[20-25)   0-24 months   ki1000304-EU                INDIA                          Control              NA                -0.0845642   -0.1539723   -0.0193308
[20-25)   0-24 months   ki1000304-VITAMIN-A         INDIA                          Control              NA                -0.0252626   -0.0680450    0.0158062
[20-25)   0-24 months   ki1000304-Vitamin-B12       INDIA                          Control              NA                 0.0145722   -0.0821119    0.1026178
[20-25)   0-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control              NA                -0.0522643   -0.1410116    0.0295803
[20-25)   0-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Control              NA                -0.0597449   -0.1527103    0.0257229
[20-25)   0-24 months   ki1017093b-PROVIDE          BANGLADESH                     Control              NA                 0.1292517    0.0051873    0.2378438
[20-25)   0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              NA                 0.0204940   -0.2407618    0.2267395
[20-25)   0-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Control              NA                 0.0015094   -0.1395253    0.1250888
[20-25)   0-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Control              NA                -0.0151515   -0.2158709    0.1524325
[20-25)   0-24 months   ki1119695-PROBIT            BELARUS                        Control              NA                -0.0683031   -0.1719433    0.0261718
[20-25)   0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                -0.0223641   -0.0602802    0.0141960
[20-25)   0-24 months   ki1135781-COHORTS           GUATEMALA                      Control              NA                -0.0488105   -0.0980786   -0.0017529
[20-25)   0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                -0.0102217   -0.0908446    0.0644426
[20-25)   0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control              NA                 0.0985708   -0.0009330    0.1881829
[20-25)   0-24 months   ki1148112-LCNI-5            MALAWI                         Control              NA                -0.1000184   -0.3262507    0.0876231
[20-25)   0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                -0.0193538   -0.0447622    0.0054366
[20-25)   0-6 months    ki1000304-VITAMIN-A         INDIA                          Control              NA                 0.0210970   -0.1293336    0.1514899
[20-25)   0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Control              NA                 0.0996499   -0.0052463    0.1936003
[20-25)   0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Control              NA                 0.0472222   -0.1434346    0.2060889
[20-25)   0-6 months    ki1017093b-PROVIDE          BANGLADESH                     Control              NA                 0.0933333   -0.2096622    0.3204347
[20-25)   0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              NA                -0.2025125   -0.7815128    0.1883099
[20-25)   0-6 months    ki1112895-Guatemala BSC     GUATEMALA                      Control              NA                -0.0612245   -0.3632777    0.1739046
[20-25)   0-6 months    ki1119695-PROBIT            BELARUS                        Control              NA                -0.0149119   -0.1333021    0.0911107
[20-25)   0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                 0.0292474   -0.0326180    0.0874064
[20-25)   0-6 months    ki1135781-COHORTS           GUATEMALA                      Control              NA                 0.2180451   -0.0448755    0.4148074
[20-25)   0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                -0.2400000   -0.4469453   -0.0626524
[20-25)   0-6 months    ki1148112-LCNI-5            MALAWI                         Control              NA                -0.0877193   -0.7760041    0.3338229
[20-25)   0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                -0.0917432   -0.1327360   -0.0522338
[20-25)   6-24 months   iLiNS_DYADM_LNS             MALAWI                         Control              NA                 0.2195540    0.0663929    0.3475886
[20-25)   6-24 months   iLiNS-Zinc_ZvLNS            BURKINA FASO                   Control              NA                -0.0296431   -0.6084986    0.3408979
[20-25)   6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                -0.0525481   -0.2687176    0.1267894
[20-25)   6-24 months   ki1000111-WASH-Kenya        KENYA                          Control              NA                -0.0502394   -0.3140259    0.1605928
[20-25)   6-24 months   ki1000304-EU                INDIA                          Control              NA                 0.0601205   -0.3933643    0.3660140
[20-25)   6-24 months   ki1000304-VITAMIN-A         INDIA                          Control              NA                -0.1289339   -0.3303507    0.0419880
[20-25)   6-24 months   ki1000304-Vitamin-B12       INDIA                          Control              NA                 0.0464441   -0.3092621    0.3055105
[20-25)   6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control              NA                -0.1198251   -0.2556129    0.0012780
[20-25)   6-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Control              NA                -0.0851064   -0.2849682    0.0836692
[20-25)   6-24 months   ki1017093b-PROVIDE          BANGLADESH                     Control              NA                 0.2949153    0.1220845    0.4337217
[20-25)   6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              NA                -0.1141259   -0.5600582    0.2043396
[20-25)   6-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Control              NA                -0.1238390   -0.4534273    0.1310098
[20-25)   6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Control              NA                -0.2232309   -0.6102299    0.0707577
[20-25)   6-24 months   ki1119695-PROBIT            BELARUS                        Control              NA                -0.0254163   -0.1505897    0.0861394
[20-25)   6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                -0.0590664   -0.1376877    0.0141217
[20-25)   6-24 months   ki1135781-COHORTS           GUATEMALA                      Control              NA                -0.1105169   -0.2189825   -0.0117027
[20-25)   6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                 0.2821869    0.1372452    0.4027787
[20-25)   6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control              NA                 0.1868687    0.0389796    0.3119995
[20-25)   6-24 months   ki1148112-LCNI-5            MALAWI                         Control              NA                -0.1626016   -0.7514696    0.2282809
[20-25)   6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                 0.0695556    0.0178570    0.1185328
[25-30)   0-24 months   iLiNS_DYADM_LNS             MALAWI                         Control              NA                 0.0398396   -0.0783671    0.1450889
[25-30)   0-24 months   iLiNS-Zinc_ZvLNS            BURKINA FASO                   Control              NA                -0.0001489   -0.3729480    0.2714233
[25-30)   0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                -0.1157528   -0.2517204    0.0054454
[25-30)   0-24 months   ki1000111-WASH-Kenya        KENYA                          Control              NA                 0.0407767   -0.0790615    0.1473059
[25-30)   0-24 months   ki1000304-EU                INDIA                          Control              NA                -0.0261045   -0.1045244    0.0467478
[25-30)   0-24 months   ki1000304-VITAMIN-A         INDIA                          Control              NA                -0.0500274   -0.0972442   -0.0048424
[25-30)   0-24 months   ki1000304-Vitamin-B12       INDIA                          Control              NA                -0.1139565   -0.2430630    0.0017408
[25-30)   0-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control              NA                -0.0767509   -0.2025051    0.0358524
[25-30)   0-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Control              NA                -0.1118969   -0.2105786   -0.0212595
[25-30)   0-24 months   ki1017093b-PROVIDE          BANGLADESH                     Control              NA                 0.2220155    0.0865725    0.3373750
[25-30)   0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              NA                 0.0139084   -0.2351398    0.2127395
[25-30)   0-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Control              NA                 0.2141707   -0.0185855    0.3937400
[25-30)   0-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Control              NA                -0.1891775   -0.3728543   -0.0300751
[25-30)   0-24 months   ki1119695-PROBIT            BELARUS                        Control              NA                -0.1088041   -0.2059191   -0.0195100
[25-30)   0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                 0.0442293    0.0011625    0.0854392
[25-30)   0-24 months   ki1135781-COHORTS           GUATEMALA                      Control              NA                -0.0201789   -0.0664601    0.0240938
[25-30)   0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                 0.0279653   -0.0681322    0.1154171
[25-30)   0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control              NA                 0.0572983   -0.0449148    0.1495130
[25-30)   0-24 months   ki1148112-LCNI-5            MALAWI                         Control              NA                 0.1236631   -0.1179849    0.3130799
[25-30)   0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                -0.0301025   -0.0677502    0.0062178
[25-30)   0-6 months    ki1000304-VITAMIN-A         INDIA                          Control              NA                -0.1210317   -0.4056527    0.1059583
[25-30)   0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Control              NA                -0.1134021   -0.2233679   -0.0133208
[25-30)   0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Control              NA                -0.1953921   -0.4081170   -0.0148037
[25-30)   0-6 months    ki1017093b-PROVIDE          BANGLADESH                     Control              NA                -0.0772093   -0.4841902    0.2181731
[25-30)   0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              NA                 0.0915052   -0.4732490    0.4397670
[25-30)   0-6 months    ki1112895-Guatemala BSC     GUATEMALA                      Control              NA                -0.1400000   -0.7183266    0.2436828
[25-30)   0-6 months    ki1119695-PROBIT            BELARUS                        Control              NA                -0.0863997   -0.2433876    0.0507671
[25-30)   0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                 0.0717717   -0.0039266    0.1417622
[25-30)   0-6 months    ki1135781-COHORTS           GUATEMALA                      Control              NA                -0.2522686   -0.6639500    0.0575578
[25-30)   0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                -0.3095975   -0.5668343   -0.0945929
[25-30)   0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                -0.1035955   -0.1624255   -0.0477428
[25-30)   6-24 months   iLiNS_DYADM_LNS             MALAWI                         Control              NA                 0.1140840   -0.0886824    0.2790852
[25-30)   6-24 months   iLiNS-Zinc_ZvLNS            BURKINA FASO                   Control              NA                -0.0118897   -1.0157972    0.4920517
[25-30)   6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                -0.2491939   -0.5132610   -0.0312070
[25-30)   6-24 months   ki1000111-WASH-Kenya        KENYA                          Control              NA                 0.0751433   -0.2320845    0.3057620
[25-30)   6-24 months   ki1000304-EU                INDIA                          Control              NA                -0.0471204   -0.6661921    0.3419359
[25-30)   6-24 months   ki1000304-VITAMIN-A         INDIA                          Control              NA                 0.0841776   -0.1000890    0.2375793
[25-30)   6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control              NA                -0.1368421   -0.3865849    0.0679186
[25-30)   6-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Control              NA                 0.0789474   -0.1217109    0.2437107
[25-30)   6-24 months   ki1017093b-PROVIDE          BANGLADESH                     Control              NA                 0.2444219   -0.0196584    0.4401083
[25-30)   6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              NA                -0.0422086   -0.4695935    0.2608850
[25-30)   6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Control              NA                -0.4680478   -0.8564897   -0.1608813
[25-30)   6-24 months   ki1119695-PROBIT            BELARUS                        Control              NA                -0.0842259   -0.2333674    0.0468811
[25-30)   6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                 0.1177214    0.0389657    0.1900231
[25-30)   6-24 months   ki1135781-COHORTS           GUATEMALA                      Control              NA                 0.0361446   -0.0686210    0.1306391
[25-30)   6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                -0.2000000   -0.5149458    0.0494710
[25-30)   6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control              NA                 0.1520658   -0.0129112    0.2901723
[25-30)   6-24 months   ki1148112-LCNI-5            MALAWI                         Control              NA                 0.0694789   -0.5074441    0.4256042
[25-30)   6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                 0.0493285   -0.0173875    0.1116696
>=30      0-24 months   iLiNS_DYADM_LNS             MALAWI                         Control              NA                -0.1116226   -0.2429410    0.0058219
>=30      0-24 months   iLiNS-Zinc_ZvLNS            BURKINA FASO                   Control              NA                 0.0040984   -0.4192752    0.3011785
>=30      0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                 0.0057291   -0.1592099    0.1471997
>=30      0-24 months   ki1000111-WASH-Kenya        KENYA                          Control              NA                 0.0222433   -0.0961177    0.1278235
>=30      0-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Control              NA                -0.0294872   -0.3272813    0.2014927
>=30      0-24 months   ki1000304-EU                INDIA                          Control              NA                 0.0159350   -0.1274606    0.1410929
>=30      0-24 months   ki1000304-VITAMIN-A         INDIA                          Control              NA                 0.0396154   -0.0226674    0.0981051
>=30      0-24 months   ki1000304-Vitamin-B12       INDIA                          Control              NA                -0.2164384   -0.4058622   -0.0525372
>=30      0-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control              NA                 0.0000000   -0.0278753    0.0271193
>=30      0-24 months   ki1017093b-PROVIDE          BANGLADESH                     Control              NA                -0.2144082   -0.4412753   -0.0232517
>=30      0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              NA                 0.0502620   -0.2292843    0.2662379
>=30      0-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Control              NA                 0.2638889    0.0903460    0.4043234
>=30      0-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Control              NA                -0.1302115   -0.3048755    0.0210729
>=30      0-24 months   ki1119695-PROBIT            BELARUS                        Control              NA                -0.1027795   -0.2503998    0.0274130
>=30      0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                 0.0599311    0.0069735    0.1100644
>=30      0-24 months   ki1135781-COHORTS           GUATEMALA                      Control              NA                -0.0974106   -0.1430273   -0.0536144
>=30      0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                 0.0092184   -0.0687017    0.0814572
>=30      0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control              NA                -0.1080031   -0.2323581    0.0038034
>=30      0-24 months   ki1148112-LCNI-5            MALAWI                         Control              NA                 0.0778689   -0.1570566    0.2650957
>=30      0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                -0.0322398   -0.0843385    0.0173557
>=30      0-6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Control              NA                -0.2857143   -0.7307048    0.0448624
>=30      0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Control              NA                -0.0444444   -0.2480431    0.1259403
>=30      0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Control              NA                 0.0250000   -0.2827233    0.2589010
>=30      0-6 months    ki1017093b-PROVIDE          BANGLADESH                     Control              NA                -0.3905724   -0.9709443    0.0189010
>=30      0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              NA                 0.3831301   -0.2620649    0.6984874
>=30      0-6 months    ki1119695-PROBIT            BELARUS                        Control              NA                -0.1346705   -0.3693037    0.0597578
>=30      0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                 0.1021333    0.0145360    0.1819441
>=30      0-6 months    ki1135781-COHORTS           GUATEMALA                      Control              NA                -0.1563342   -0.3804678    0.0314089
>=30      0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                 0.0568562   -0.0983386    0.1901220
>=30      0-6 months    ki1148112-LCNI-5            MALAWI                         Control              NA                -0.0869565   -1.0150523    0.4136755
>=30      0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                -0.1273132   -0.2103191   -0.0500000
>=30      6-24 months   iLiNS_DYADM_LNS             MALAWI                         Control              NA                -0.1252747   -0.3657155    0.0728353
>=30      6-24 months   iLiNS-Zinc_ZvLNS            BURKINA FASO                   Control              NA                 0.1111111   -1.0817709    0.6204561
>=30      6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                 0.0043671   -0.3056322    0.2407625
>=30      6-24 months   ki1000111-WASH-Kenya        KENYA                          Control              NA                 0.1038102   -0.2427564    0.3537300
>=30      6-24 months   ki1000304-VITAMIN-A         INDIA                          Control              NA                 0.1143791   -0.1137442    0.2957769
>=30      6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control              NA                 0.0808081    0.0198975    0.1379333
>=30      6-24 months   ki1017093b-PROVIDE          BANGLADESH                     Control              NA                -0.2222222   -0.6301855    0.0836459
>=30      6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              NA                 0.0821429   -0.3328227    0.3679116
>=30      6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Control              NA                -0.3945103   -0.6892909   -0.1511689
>=30      6-24 months   ki1119695-PROBIT            BELARUS                        Control              NA                -0.0036537   -0.2886032    0.2182848
>=30      6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                -0.1118516   -0.2373890    0.0009495
>=30      6-24 months   ki1135781-COHORTS           GUATEMALA                      Control              NA                -0.1204135   -0.2359954   -0.0156400
>=30      6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                 0.2690058    0.1229880    0.3907125
>=30      6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control              NA                -0.0797203   -0.2943021    0.0992861
>=30      6-24 months   ki1148112-LCNI-5            MALAWI                         Control              NA                 0.0404040   -0.5080531    0.3893952
>=30      6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                 0.0572326   -0.0434503    0.1482004
