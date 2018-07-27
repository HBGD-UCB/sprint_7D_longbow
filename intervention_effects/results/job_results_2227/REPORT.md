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

**Outcome Variable:** stunted

## Predictor Variables

**Intervention Variable:** tr

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* enwast
* agecat
* studyid
* country

## Data Summary

enwast   agecat      studyid                     country                        tr          stunted   n_cell       n
-------  ----------  --------------------------  -----------------------------  ---------  --------  -------  ------
0        24 months   ki1000107-Serrinha-VitA     BRAZIL                         Control           0       39     128
0        24 months   ki1000107-Serrinha-VitA     BRAZIL                         Control           1       29     128
0        24 months   ki1000107-Serrinha-VitA     BRAZIL                         VitA              0       34     128
0        24 months   ki1000107-Serrinha-VitA     BRAZIL                         VitA              1       26     128
0        6 months    ki1000107-Serrinha-VitA     BRAZIL                         Control           0       10      34
0        6 months    ki1000107-Serrinha-VitA     BRAZIL                         Control           1        5      34
0        6 months    ki1000107-Serrinha-VitA     BRAZIL                         VitA              0       16      34
0        6 months    ki1000107-Serrinha-VitA     BRAZIL                         VitA              1        3      34
1        24 months   ki1000107-Serrinha-VitA     BRAZIL                         Control           0        1       3
1        24 months   ki1000107-Serrinha-VitA     BRAZIL                         Control           1        2       3
1        6 months    ki1000107-Serrinha-VitA     BRAZIL                         Control           1        1       1
0        24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control           0      144    1016
0        24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control           1       92    1016
0        24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS               0      170    1016
0        24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS               1       94    1016
0        24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other             0      317    1016
0        24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other             1      199    1016
1        24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control           0        4     114
1        24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control           1       15     114
1        24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS               0       15     114
1        24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS               1       18     114
1        24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other             0       20     114
1        24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other             1       42     114
0        6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Control           0      120     635
0        6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Control           1       29     635
0        6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     LNS               0      151     635
0        6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     LNS               1       26     635
0        6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Other             0      270     635
0        6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Other             1       39     635
1        6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Control           0        6      30
1        6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Control           1        0      30
1        6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     LNS               0        5      30
1        6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     LNS               1        3      30
1        6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Other             0       14      30
1        6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Other             1        2      30
0        24 months   ki1000111-WASH-Kenya        KENYA                          Control           0      506    2160
0        24 months   ki1000111-WASH-Kenya        KENYA                          Control           1      216    2160
0        24 months   ki1000111-WASH-Kenya        KENYA                          LNS               0      340    2160
0        24 months   ki1000111-WASH-Kenya        KENYA                          LNS               1      141    2160
0        24 months   ki1000111-WASH-Kenya        KENYA                          Other             0      661    2160
0        24 months   ki1000111-WASH-Kenya        KENYA                          Other             1      296    2160
0        6 months    ki1000111-WASH-Kenya        KENYA                          Control           0       22      72
0        6 months    ki1000111-WASH-Kenya        KENYA                          Control           1        2      72
0        6 months    ki1000111-WASH-Kenya        KENYA                          LNS               0       12      72
0        6 months    ki1000111-WASH-Kenya        KENYA                          LNS               1        3      72
0        6 months    ki1000111-WASH-Kenya        KENYA                          Other             0       28      72
0        6 months    ki1000111-WASH-Kenya        KENYA                          Other             1        5      72
1        24 months   ki1000111-WASH-Kenya        KENYA                          Control           0        8      51
1        24 months   ki1000111-WASH-Kenya        KENYA                          Control           1       13      51
1        24 months   ki1000111-WASH-Kenya        KENYA                          LNS               0        4      51
1        24 months   ki1000111-WASH-Kenya        KENYA                          LNS               1        3      51
1        24 months   ki1000111-WASH-Kenya        KENYA                          Other             0        5      51
1        24 months   ki1000111-WASH-Kenya        KENYA                          Other             1       18      51
1        6 months    ki1000111-WASH-Kenya        KENYA                          Control           0        1       2
1        6 months    ki1000111-WASH-Kenya        KENYA                          Control           1        0       2
1        6 months    ki1000111-WASH-Kenya        KENYA                          Other             0        0       2
1        6 months    ki1000111-WASH-Kenya        KENYA                          Other             1        1       2
0        6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Control           0      195     485
0        6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Control           1       87     485
0        6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Maternal          0      154     485
0        6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Maternal          1       49     485
1        6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Control           0       45     149
1        6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Control           1       30     149
1        6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Maternal          0       53     149
1        6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Maternal          1       21     149
0        24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Control           0        0       3
0        24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Control           1        1       3
0        24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Maternal          0        1       3
0        24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Maternal          1        1       3
0        Birth       ki1000125-AgaKhanUniv       PAKISTAN                       Control           0        4       7
0        Birth       ki1000125-AgaKhanUniv       PAKISTAN                       Maternal          0        3       7
1        Birth       ki1000125-AgaKhanUniv       PAKISTAN                       Control           0        3       4
1        Birth       ki1000125-AgaKhanUniv       PAKISTAN                       Maternal          0        1       4
0        6 months    ki1000304-EU                INDIA                          Control           0        2      11
0        6 months    ki1000304-EU                INDIA                          Control           1        2      11
0        6 months    ki1000304-EU                INDIA                          Zinc              0        4      11
0        6 months    ki1000304-EU                INDIA                          Zinc              1        3      11
1        6 months    ki1000304-EU                INDIA                          Control           0        0       3
1        6 months    ki1000304-EU                INDIA                          Control           1        2       3
1        6 months    ki1000304-EU                INDIA                          Zinc              0        1       3
1        6 months    ki1000304-EU                INDIA                          Zinc              1        0       3
0        6 months    ki1000304-Vitamin-B12       INDIA                          Control           0        9      76
0        6 months    ki1000304-Vitamin-B12       INDIA                          Control           1        6      76
0        6 months    ki1000304-Vitamin-B12       INDIA                          Other             0       45      76
0        6 months    ki1000304-Vitamin-B12       INDIA                          Other             1       16      76
0        24 months   ki1000304-Vitamin-B12       INDIA                          Control           0       23     119
0        24 months   ki1000304-Vitamin-B12       INDIA                          Control           1       12     119
0        24 months   ki1000304-Vitamin-B12       INDIA                          Other             0       47     119
0        24 months   ki1000304-Vitamin-B12       INDIA                          Other             1       37     119
1        24 months   ki1000304-Vitamin-B12       INDIA                          Control           0        1      14
1        24 months   ki1000304-Vitamin-B12       INDIA                          Control           1        2      14
1        24 months   ki1000304-Vitamin-B12       INDIA                          Other             0        3      14
1        24 months   ki1000304-Vitamin-B12       INDIA                          Other             1        8      14
1        6 months    ki1000304-Vitamin-B12       INDIA                          Control           0        2       5
1        6 months    ki1000304-Vitamin-B12       INDIA                          Control           1        0       5
1        6 months    ki1000304-Vitamin-B12       INDIA                          Other             0        2       5
1        6 months    ki1000304-Vitamin-B12       INDIA                          Other             1        1       5
0        24 months   ki1000304-ZnMort            INDIA                          Control           0       11      44
0        24 months   ki1000304-ZnMort            INDIA                          Control           1       11      44
0        24 months   ki1000304-ZnMort            INDIA                          Zinc              0       11      44
0        24 months   ki1000304-ZnMort            INDIA                          Zinc              1       11      44
0        6 months    ki1000304-ZnMort            INDIA                          Control           0       36      94
0        6 months    ki1000304-ZnMort            INDIA                          Control           1       18      94
0        6 months    ki1000304-ZnMort            INDIA                          Zinc              0       27      94
0        6 months    ki1000304-ZnMort            INDIA                          Zinc              1       13      94
1        24 months   ki1000304-ZnMort            INDIA                          Control           1        5       7
1        24 months   ki1000304-ZnMort            INDIA                          Zinc              1        2       7
1        6 months    ki1000304-ZnMort            INDIA                          Control           0        7      16
1        6 months    ki1000304-ZnMort            INDIA                          Control           1        3      16
1        6 months    ki1000304-ZnMort            INDIA                          Zinc              0        3      16
1        6 months    ki1000304-ZnMort            INDIA                          Zinc              1        3      16
0        6 months    ki1000304b-SAS-CompFeed     INDIA                          Control           0      188     493
0        6 months    ki1000304b-SAS-CompFeed     INDIA                          Control           1       55     493
0        6 months    ki1000304b-SAS-CompFeed     INDIA                          Other             0      199     493
0        6 months    ki1000304b-SAS-CompFeed     INDIA                          Other             1       51     493
0        Birth       ki1000304b-SAS-CompFeed     INDIA                          Control           0       50     116
0        Birth       ki1000304b-SAS-CompFeed     INDIA                          Control           1        8     116
0        Birth       ki1000304b-SAS-CompFeed     INDIA                          Other             0       48     116
0        Birth       ki1000304b-SAS-CompFeed     INDIA                          Other             1       10     116
1        6 months    ki1000304b-SAS-CompFeed     INDIA                          Control           0       17      58
1        6 months    ki1000304b-SAS-CompFeed     INDIA                          Control           1        8      58
1        6 months    ki1000304b-SAS-CompFeed     INDIA                          Other             0       23      58
1        6 months    ki1000304b-SAS-CompFeed     INDIA                          Other             1       10      58
1        Birth       ki1000304b-SAS-CompFeed     INDIA                          Control           0        3       9
1        Birth       ki1000304b-SAS-CompFeed     INDIA                          Control           1        0       9
1        Birth       ki1000304b-SAS-CompFeed     INDIA                          Other             0        5       9
1        Birth       ki1000304b-SAS-CompFeed     INDIA                          Other             1        1       9
0        6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Control           0       37     282
0        6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Control           1       36     282
0        6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Other             0      127     282
0        6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Other             1       82     282
1        6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Control           0        5      60
1        6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Control           1       10      60
1        6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Other             0       28      60
1        6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Other             1       17      60
0        6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control           0        3      13
0        6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control           1        2      13
0        6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other             0        3      13
0        6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other             1        1      13
0        6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc              0        4      13
0        6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc              1        0      13
0        6 months    ki1112895-Burkina Faso Zn   BURKINA FASO                   Control           0       66     548
0        6 months    ki1112895-Burkina Faso Zn   BURKINA FASO                   Control           1        5     548
0        6 months    ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc              0      430     548
0        6 months    ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc              1       47     548
0        24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Control           0       70    1019
0        24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Control           1       28    1019
0        24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc              0      634    1019
0        24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc              1      287    1019
1        6 months    ki1112895-Burkina Faso Zn   BURKINA FASO                   Control           0        6      75
1        6 months    ki1112895-Burkina Faso Zn   BURKINA FASO                   Control           1        4      75
1        6 months    ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc              0       48      75
1        6 months    ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc              1       17      75
1        24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Control           0        7     147
1        24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Control           1       16     147
1        24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc              0       40     147
1        24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc              1       84     147
0        6 months    ki1112895-Guatemala BSC     GUATEMALA                      Control           0       70     209
0        6 months    ki1112895-Guatemala BSC     GUATEMALA                      Control           1       33     209
0        6 months    ki1112895-Guatemala BSC     GUATEMALA                      Other             0       77     209
0        6 months    ki1112895-Guatemala BSC     GUATEMALA                      Other             1       29     209
1        6 months    ki1112895-Guatemala BSC     GUATEMALA                      Control           0        0       4
1        6 months    ki1112895-Guatemala BSC     GUATEMALA                      Control           1        2       4
1        6 months    ki1112895-Guatemala BSC     GUATEMALA                      Other             0        1       4
1        6 months    ki1112895-Guatemala BSC     GUATEMALA                      Other             1        1       4
0        Birth       ki1119695-PROBIT            BELARUS                        Control           0     5203   10936
0        Birth       ki1119695-PROBIT            BELARUS                        Control           1       14   10936
0        Birth       ki1119695-PROBIT            BELARUS                        Maternal          0     5707   10936
0        Birth       ki1119695-PROBIT            BELARUS                        Maternal          1       12   10936
0        6 months    ki1119695-PROBIT            BELARUS                        Control           0     4334    9530
0        6 months    ki1119695-PROBIT            BELARUS                        Control           1      309    9530
0        6 months    ki1119695-PROBIT            BELARUS                        Maternal          0     4605    9530
0        6 months    ki1119695-PROBIT            BELARUS                        Maternal          1      282    9530
1        Birth       ki1119695-PROBIT            BELARUS                        Control           0     1555    2941
1        Birth       ki1119695-PROBIT            BELARUS                        Maternal          0     1386    2941
1        6 months    ki1119695-PROBIT            BELARUS                        Control           0     1284    2590
1        6 months    ki1119695-PROBIT            BELARUS                        Control           1      101    2590
1        6 months    ki1119695-PROBIT            BELARUS                        Maternal          0     1144    2590
1        6 months    ki1119695-PROBIT            BELARUS                        Maternal          1       61    2590
0        24 months   ki1119695-PROBIT            BELARUS                        Control           0      242     621
0        24 months   ki1119695-PROBIT            BELARUS                        Control           1       29     621
0        24 months   ki1119695-PROBIT            BELARUS                        Maternal          0      308     621
0        24 months   ki1119695-PROBIT            BELARUS                        Maternal          1       42     621
1        24 months   ki1119695-PROBIT            BELARUS                        Control           0       85     219
1        24 months   ki1119695-PROBIT            BELARUS                        Control           1       17     219
1        24 months   ki1119695-PROBIT            BELARUS                        Maternal          0      106     219
1        24 months   ki1119695-PROBIT            BELARUS                        Maternal          1       11     219
0        Birth       ki1126311-ZVITAMBO          ZIMBABWE                       Control           0     2532   10856
0        Birth       ki1126311-ZVITAMBO          ZIMBABWE                       Control           1      153   10856
0        Birth       ki1126311-ZVITAMBO          ZIMBABWE                       VitA              0     7720   10856
0        Birth       ki1126311-ZVITAMBO          ZIMBABWE                       VitA              1      451   10856
0        6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control           0     1297    6115
0        6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control           1      206    6115
0        6 months    ki1126311-ZVITAMBO          ZIMBABWE                       VitA              0     4007    6115
0        6 months    ki1126311-ZVITAMBO          ZIMBABWE                       VitA              1      605    6115
1        Birth       ki1126311-ZVITAMBO          ZIMBABWE                       Control           0      557    2236
1        Birth       ki1126311-ZVITAMBO          ZIMBABWE                       Control           1       22    2236
1        Birth       ki1126311-ZVITAMBO          ZIMBABWE                       VitA              0     1589    2236
1        Birth       ki1126311-ZVITAMBO          ZIMBABWE                       VitA              1       68    2236
1        6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control           0      232    1136
1        6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control           1       57    1136
1        6 months    ki1126311-ZVITAMBO          ZIMBABWE                       VitA              0      641    1136
1        6 months    ki1126311-ZVITAMBO          ZIMBABWE                       VitA              1      206    1136
0        24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control           0        3      25
0        24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control           1        2      25
0        24 months   ki1126311-ZVITAMBO          ZIMBABWE                       VitA              0        7      25
0        24 months   ki1126311-ZVITAMBO          ZIMBABWE                       VitA              1       13      25
1        24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control           0        2       3
1        24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control           1        1       3
0        24 months   ki1135781-COHORTS           GUATEMALA                      Control           0       31     292
0        24 months   ki1135781-COHORTS           GUATEMALA                      Control           1      115     292
0        24 months   ki1135781-COHORTS           GUATEMALA                      Other             0       31     292
0        24 months   ki1135781-COHORTS           GUATEMALA                      Other             1      115     292
0        6 months    ki1135781-COHORTS           GUATEMALA                      Control           0      145     581
0        6 months    ki1135781-COHORTS           GUATEMALA                      Control           1      133     581
0        6 months    ki1135781-COHORTS           GUATEMALA                      Other             0      190     581
0        6 months    ki1135781-COHORTS           GUATEMALA                      Other             1      113     581
0        Birth       ki1135781-COHORTS           GUATEMALA                      Control           0      251     564
0        Birth       ki1135781-COHORTS           GUATEMALA                      Control           1       13     564
0        Birth       ki1135781-COHORTS           GUATEMALA                      Other             0      289     564
0        Birth       ki1135781-COHORTS           GUATEMALA                      Other             1       11     564
1        Birth       ki1135781-COHORTS           GUATEMALA                      Control           0      115     198
1        Birth       ki1135781-COHORTS           GUATEMALA                      Other             0       83     198
1        6 months    ki1135781-COHORTS           GUATEMALA                      Control           0       57     168
1        6 months    ki1135781-COHORTS           GUATEMALA                      Control           1       40     168
1        6 months    ki1135781-COHORTS           GUATEMALA                      Other             0       52     168
1        6 months    ki1135781-COHORTS           GUATEMALA                      Other             1       19     168
1        24 months   ki1135781-COHORTS           GUATEMALA                      Control           0        0      12
1        24 months   ki1135781-COHORTS           GUATEMALA                      Control           1        9      12
1        24 months   ki1135781-COHORTS           GUATEMALA                      Other             0        2      12
1        24 months   ki1135781-COHORTS           GUATEMALA                      Other             1        1      12
0        6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control           0      206    1822
0        6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control           1       90    1822
0        6 months    ki1148112-iLiNS-DOSE        MALAWI                         LNS               0     1084    1822
0        6 months    ki1148112-iLiNS-DOSE        MALAWI                         LNS               1      442    1822
0        24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control           0       57     725
0        24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control           1       61     725
0        24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS               0      305     725
0        24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS               1      302     725
1        6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control           0        3      27
1        6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control           1        2      27
1        6 months    ki1148112-iLiNS-DOSE        MALAWI                         LNS               0       10      27
1        6 months    ki1148112-iLiNS-DOSE        MALAWI                         LNS               1       12      27
1        24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control           0        1      12
1        24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control           1        1      12
1        24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS               0        4      12
1        24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS               1        6      12
0        6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Control           0       11      51
0        6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Control           1        4      51
0        6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Maternal          0       26      51
0        6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Maternal          1       10      51
0        24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control           0        0       3
0        24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control           1        1       3
0        24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Maternal          0        1       3
0        24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Maternal          1        1       3
1        6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Control           0        2       6
1        6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Control           1        0       6
1        6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Maternal          0        3       6
1        6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Maternal          1        1       6
0        6 months    ki1148112-LCNI-5            MALAWI                         Control           0      132     812
0        6 months    ki1148112-LCNI-5            MALAWI                         Control           1       69     812
0        6 months    ki1148112-LCNI-5            MALAWI                         LNS               0      260     812
0        6 months    ki1148112-LCNI-5            MALAWI                         LNS               1      148     812
0        6 months    ki1148112-LCNI-5            MALAWI                         Other             0      123     812
0        6 months    ki1148112-LCNI-5            MALAWI                         Other             1       80     812
0        24 months   ki1148112-LCNI-5            MALAWI                         Control           0       65     372
0        24 months   ki1148112-LCNI-5            MALAWI                         Control           1       42     372
0        24 months   ki1148112-LCNI-5            MALAWI                         LNS               0      105     372
0        24 months   ki1148112-LCNI-5            MALAWI                         LNS               1       67     372
0        24 months   ki1148112-LCNI-5            MALAWI                         Other             0       63     372
0        24 months   ki1148112-LCNI-5            MALAWI                         Other             1       30     372
1        6 months    ki1148112-LCNI-5            MALAWI                         Control           0        2      14
1        6 months    ki1148112-LCNI-5            MALAWI                         Control           1        2      14
1        6 months    ki1148112-LCNI-5            MALAWI                         LNS               0        5      14
1        6 months    ki1148112-LCNI-5            MALAWI                         LNS               1        2      14
1        6 months    ki1148112-LCNI-5            MALAWI                         Other             0        1      14
1        6 months    ki1148112-LCNI-5            MALAWI                         Other             1        2      14
1        24 months   ki1148112-LCNI-5            MALAWI                         Control           0        1       8
1        24 months   ki1148112-LCNI-5            MALAWI                         Control           1        0       8
1        24 months   ki1148112-LCNI-5            MALAWI                         LNS               0        3       8
1        24 months   ki1148112-LCNI-5            MALAWI                         LNS               1        2       8
1        24 months   ki1148112-LCNI-5            MALAWI                         Other             0        0       8
1        24 months   ki1148112-LCNI-5            MALAWI                         Other             1        2       8
0        Birth       kiGH5241-JiVitA-3           BANGLADESH                     Control           0     5755   14203
0        Birth       kiGH5241-JiVitA-3           BANGLADESH                     Control           1     1169   14203
0        Birth       kiGH5241-JiVitA-3           BANGLADESH                     Maternal          0     6201   14203
0        Birth       kiGH5241-JiVitA-3           BANGLADESH                     Maternal          1     1078   14203
0        6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control           0     4972   12436
0        6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control           1     1110   12436
0        6 months    kiGH5241-JiVitA-3           BANGLADESH                     Maternal          0     5251   12436
0        6 months    kiGH5241-JiVitA-3           BANGLADESH                     Maternal          1     1103   12436
1        6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control           0      620    1487
1        6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control           1      146    1487
1        6 months    kiGH5241-JiVitA-3           BANGLADESH                     Maternal          0      587    1487
1        6 months    kiGH5241-JiVitA-3           BANGLADESH                     Maternal          1      134    1487
1        Birth       kiGH5241-JiVitA-3           BANGLADESH                     Control           0      665    1542
1        Birth       kiGH5241-JiVitA-3           BANGLADESH                     Control           1      119    1542
1        Birth       kiGH5241-JiVitA-3           BANGLADESH                     Maternal          0      654    1542
1        Birth       kiGH5241-JiVitA-3           BANGLADESH                     Maternal          1      104    1542
0        24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control           0       15      51
0        24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control           1        9      51
0        24 months   kiGH5241-JiVitA-3           BANGLADESH                     Maternal          0       14      51
0        24 months   kiGH5241-JiVitA-3           BANGLADESH                     Maternal          1       13      51
1        24 months   kiGH5241-JiVitA-3           BANGLADESH                     Maternal          0        1       2
1        24 months   kiGH5241-JiVitA-3           BANGLADESH                     Maternal          1        1       2
0        6 months    kiGH5241-JiVitA-4           BANGLADESH                     Control           0      795    3764
0        6 months    kiGH5241-JiVitA-4           BANGLADESH                     Control           1      185    3764
0        6 months    kiGH5241-JiVitA-4           BANGLADESH                     LNS               0      827    3764
0        6 months    kiGH5241-JiVitA-4           BANGLADESH                     LNS               1      215    3764
0        6 months    kiGH5241-JiVitA-4           BANGLADESH                     Other             0     1351    3764
0        6 months    kiGH5241-JiVitA-4           BANGLADESH                     Other             1      391    3764
0        Birth       kiGH5241-JiVitA-4           BANGLADESH                     Control           0      148     647
0        Birth       kiGH5241-JiVitA-4           BANGLADESH                     Control           1       28     647
0        Birth       kiGH5241-JiVitA-4           BANGLADESH                     LNS               0      145     647
0        Birth       kiGH5241-JiVitA-4           BANGLADESH                     LNS               1       35     647
0        Birth       kiGH5241-JiVitA-4           BANGLADESH                     Other             0      254     647
0        Birth       kiGH5241-JiVitA-4           BANGLADESH                     Other             1       37     647
1        6 months    kiGH5241-JiVitA-4           BANGLADESH                     Control           0       73     373
1        6 months    kiGH5241-JiVitA-4           BANGLADESH                     Control           1       24     373
1        6 months    kiGH5241-JiVitA-4           BANGLADESH                     LNS               0       76     373
1        6 months    kiGH5241-JiVitA-4           BANGLADESH                     LNS               1       17     373
1        6 months    kiGH5241-JiVitA-4           BANGLADESH                     Other             0      125     373
1        6 months    kiGH5241-JiVitA-4           BANGLADESH                     Other             1       58     373
0        24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control           0      118     785
0        24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control           1       82     785
0        24 months   kiGH5241-JiVitA-4           BANGLADESH                     LNS               0      128     785
0        24 months   kiGH5241-JiVitA-4           BANGLADESH                     LNS               1       88     785
0        24 months   kiGH5241-JiVitA-4           BANGLADESH                     Other             0      223     785
0        24 months   kiGH5241-JiVitA-4           BANGLADESH                     Other             1      146     785
1        Birth       kiGH5241-JiVitA-4           BANGLADESH                     Control           0        7      36
1        Birth       kiGH5241-JiVitA-4           BANGLADESH                     Control           1        2      36
1        Birth       kiGH5241-JiVitA-4           BANGLADESH                     LNS               0        8      36
1        Birth       kiGH5241-JiVitA-4           BANGLADESH                     LNS               1        2      36
1        Birth       kiGH5241-JiVitA-4           BANGLADESH                     Other             0       13      36
1        Birth       kiGH5241-JiVitA-4           BANGLADESH                     Other             1        4      36
1        24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control           0        7      52
1        24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control           1        7      52
1        24 months   kiGH5241-JiVitA-4           BANGLADESH                     LNS               0        9      52
1        24 months   kiGH5241-JiVitA-4           BANGLADESH                     LNS               1        8      52
1        24 months   kiGH5241-JiVitA-4           BANGLADESH                     Other             0        7      52
1        24 months   kiGH5241-JiVitA-4           BANGLADESH                     Other             1       14      52
0        6 months    iLiNS_DYADM_LNS             MALAWI                         Control           0       11      27
0        6 months    iLiNS_DYADM_LNS             MALAWI                         Control           1        4      27
0        6 months    iLiNS_DYADM_LNS             MALAWI                         LNS               0       10      27
0        6 months    iLiNS_DYADM_LNS             MALAWI                         LNS               1        2      27
1        6 months    iLiNS_DYADM_LNS             MALAWI                         Control           0        2       4
1        6 months    iLiNS_DYADM_LNS             MALAWI                         Control           1        0       4
1        6 months    iLiNS_DYADM_LNS             MALAWI                         LNS               0        1       4
1        6 months    iLiNS_DYADM_LNS             MALAWI                         LNS               1        1       4
0        24 months   iLiNS_DYADM_LNS             MALAWI                         Control           1        1       1


The following strata were considered:

* enwast: 0, agecat: 24 months, studyid: iLiNS_DYADM_LNS, country: MALAWI
* enwast: 0, agecat: 24 months, studyid: ki1000107-Serrinha-VitA, country: BRAZIL
* enwast: 0, agecat: 24 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* enwast: 0, agecat: 24 months, studyid: ki1000111-WASH-Kenya, country: KENYA
* enwast: 0, agecat: 24 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* enwast: 0, agecat: 24 months, studyid: ki1000304-Vitamin-B12, country: INDIA
* enwast: 0, agecat: 24 months, studyid: ki1000304-ZnMort, country: INDIA
* enwast: 0, agecat: 24 months, studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO
* enwast: 0, agecat: 24 months, studyid: ki1119695-PROBIT, country: BELARUS
* enwast: 0, agecat: 24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* enwast: 0, agecat: 24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* enwast: 0, agecat: 24 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* enwast: 0, agecat: 24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* enwast: 0, agecat: 24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* enwast: 0, agecat: 24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* enwast: 0, agecat: 24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* enwast: 0, agecat: 6 months, studyid: iLiNS_DYADM_LNS, country: MALAWI
* enwast: 0, agecat: 6 months, studyid: ki1000107-Serrinha-VitA, country: BRAZIL
* enwast: 0, agecat: 6 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* enwast: 0, agecat: 6 months, studyid: ki1000111-WASH-Kenya, country: KENYA
* enwast: 0, agecat: 6 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* enwast: 0, agecat: 6 months, studyid: ki1000304-EU, country: INDIA
* enwast: 0, agecat: 6 months, studyid: ki1000304-Vitamin-B12, country: INDIA
* enwast: 0, agecat: 6 months, studyid: ki1000304-ZnMort, country: INDIA
* enwast: 0, agecat: 6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* enwast: 0, agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* enwast: 0, agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* enwast: 0, agecat: 6 months, studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO
* enwast: 0, agecat: 6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* enwast: 0, agecat: 6 months, studyid: ki1119695-PROBIT, country: BELARUS
* enwast: 0, agecat: 6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* enwast: 0, agecat: 6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* enwast: 0, agecat: 6 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* enwast: 0, agecat: 6 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* enwast: 0, agecat: 6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* enwast: 0, agecat: 6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* enwast: 0, agecat: 6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* enwast: 0, agecat: Birth, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* enwast: 0, agecat: Birth, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* enwast: 0, agecat: Birth, studyid: ki1119695-PROBIT, country: BELARUS
* enwast: 0, agecat: Birth, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* enwast: 0, agecat: Birth, studyid: ki1135781-COHORTS, country: GUATEMALA
* enwast: 0, agecat: Birth, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* enwast: 0, agecat: Birth, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* enwast: 1, agecat: 24 months, studyid: ki1000107-Serrinha-VitA, country: BRAZIL
* enwast: 1, agecat: 24 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* enwast: 1, agecat: 24 months, studyid: ki1000111-WASH-Kenya, country: KENYA
* enwast: 1, agecat: 24 months, studyid: ki1000304-Vitamin-B12, country: INDIA
* enwast: 1, agecat: 24 months, studyid: ki1000304-ZnMort, country: INDIA
* enwast: 1, agecat: 24 months, studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO
* enwast: 1, agecat: 24 months, studyid: ki1119695-PROBIT, country: BELARUS
* enwast: 1, agecat: 24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* enwast: 1, agecat: 24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* enwast: 1, agecat: 24 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* enwast: 1, agecat: 24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* enwast: 1, agecat: 24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* enwast: 1, agecat: 24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* enwast: 1, agecat: 6 months, studyid: iLiNS_DYADM_LNS, country: MALAWI
* enwast: 1, agecat: 6 months, studyid: ki1000107-Serrinha-VitA, country: BRAZIL
* enwast: 1, agecat: 6 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* enwast: 1, agecat: 6 months, studyid: ki1000111-WASH-Kenya, country: KENYA
* enwast: 1, agecat: 6 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* enwast: 1, agecat: 6 months, studyid: ki1000304-EU, country: INDIA
* enwast: 1, agecat: 6 months, studyid: ki1000304-Vitamin-B12, country: INDIA
* enwast: 1, agecat: 6 months, studyid: ki1000304-ZnMort, country: INDIA
* enwast: 1, agecat: 6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* enwast: 1, agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* enwast: 1, agecat: 6 months, studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO
* enwast: 1, agecat: 6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* enwast: 1, agecat: 6 months, studyid: ki1119695-PROBIT, country: BELARUS
* enwast: 1, agecat: 6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* enwast: 1, agecat: 6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* enwast: 1, agecat: 6 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* enwast: 1, agecat: 6 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* enwast: 1, agecat: 6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* enwast: 1, agecat: 6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* enwast: 1, agecat: 6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* enwast: 1, agecat: Birth, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* enwast: 1, agecat: Birth, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* enwast: 1, agecat: Birth, studyid: ki1119695-PROBIT, country: BELARUS
* enwast: 1, agecat: Birth, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* enwast: 1, agecat: Birth, studyid: ki1135781-COHORTS, country: GUATEMALA
* enwast: 1, agecat: Birth, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* enwast: 1, agecat: Birth, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* enwast: 0, agecat: 6 months, studyid: ki1000107-Serrinha-VitA, country: BRAZIL
* enwast: 1, agecat: 24 months, studyid: ki1000107-Serrinha-VitA, country: BRAZIL
* enwast: 1, agecat: 6 months, studyid: ki1000107-Serrinha-VitA, country: BRAZIL
* enwast: 1, agecat: 24 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* enwast: 1, agecat: 6 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* enwast: 0, agecat: 6 months, studyid: ki1000111-WASH-Kenya, country: KENYA
* enwast: 1, agecat: 24 months, studyid: ki1000111-WASH-Kenya, country: KENYA
* enwast: 1, agecat: 6 months, studyid: ki1000111-WASH-Kenya, country: KENYA
* enwast: 0, agecat: 24 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* enwast: 0, agecat: Birth, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* enwast: 1, agecat: Birth, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* enwast: 0, agecat: 6 months, studyid: ki1000304-EU, country: INDIA
* enwast: 1, agecat: 6 months, studyid: ki1000304-EU, country: INDIA
* enwast: 1, agecat: 24 months, studyid: ki1000304-Vitamin-B12, country: INDIA
* enwast: 1, agecat: 6 months, studyid: ki1000304-Vitamin-B12, country: INDIA
* enwast: 1, agecat: 24 months, studyid: ki1000304-ZnMort, country: INDIA
* enwast: 1, agecat: 6 months, studyid: ki1000304-ZnMort, country: INDIA
* enwast: 1, agecat: Birth, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* enwast: 0, agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* enwast: 1, agecat: 6 months, studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO
* enwast: 1, agecat: 6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* enwast: 0, agecat: 24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* enwast: 1, agecat: 24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* enwast: 1, agecat: 24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* enwast: 1, agecat: 6 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* enwast: 1, agecat: 24 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* enwast: 0, agecat: 6 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* enwast: 0, agecat: 24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* enwast: 1, agecat: 6 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* enwast: 1, agecat: 6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* enwast: 1, agecat: 24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* enwast: 1, agecat: 24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* enwast: 1, agecat: Birth, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* enwast: 0, agecat: 6 months, studyid: iLiNS_DYADM_LNS, country: MALAWI
* enwast: 1, agecat: 6 months, studyid: iLiNS_DYADM_LNS, country: MALAWI
* enwast: 0, agecat: 24 months, studyid: iLiNS_DYADM_LNS, country: MALAWI

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness



```
##           stunted
## tr            0
##   Control  1555
##   LNS         0
##   Maternal 1386
##   Other       0
##   VitA        0
##   Zinc        0
##           stunted
## tr           0
##   Control  115
##   LNS        0
##   Maternal   0
##   Other     83
##   VitA       0
##   Zinc       0
```




# Results Detail

## Results Plots
![](/tmp/de708d9d-8e4c-4c1c-b9b0-44388744fe5f/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/de708d9d-8e4c-4c1c-b9b0-44388744fe5f/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/de708d9d-8e4c-4c1c-b9b0-44388744fe5f/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/de708d9d-8e4c-4c1c-b9b0-44388744fe5f/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


enwast   agecat      studyid                     country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------  ----------  --------------------------  -------------  -------------------  ---------------  ----------  ----------  ----------
0        Birth       ki1000304b-SAS-CompFeed     INDIA          Control              NA                0.1379310   0.1280315   0.1478305
0        Birth       ki1000304b-SAS-CompFeed     INDIA          Other                NA                0.1724138   0.0990749   0.2457527
0        Birth       ki1119695-PROBIT            BELARUS        Control              NA                0.0026835   0.0015283   0.0038388
0        Birth       ki1119695-PROBIT            BELARUS        Maternal             NA                0.0020983   0.0014177   0.0027789
0        Birth       ki1126311-ZVITAMBO          ZIMBABWE       Control              NA                0.0569832   0.0548145   0.0591520
0        Birth       ki1126311-ZVITAMBO          ZIMBABWE       VitA                 NA                0.0551952   0.0514682   0.0589222
0        Birth       ki1135781-COHORTS           GUATEMALA      Control              NA                0.0492424   0.0370143   0.0614706
0        Birth       ki1135781-COHORTS           GUATEMALA      Other                NA                0.0366667   0.0253443   0.0479891
0        Birth       kiGH5241-JiVitA-3           BANGLADESH     Control              NA                0.1688330   0.1639372   0.1737289
0        Birth       kiGH5241-JiVitA-3           BANGLADESH     Maternal             NA                0.1480973   0.1437177   0.1524768
0        Birth       kiGH5241-JiVitA-4           BANGLADESH     Control              NA                0.1590909   0.1033526   0.2148292
0        Birth       kiGH5241-JiVitA-4           BANGLADESH     LNS                  NA                0.1944444   0.1276620   0.2612269
0        Birth       kiGH5241-JiVitA-4           BANGLADESH     Other                NA                0.1271478   0.0858390   0.1684565
0        6 months    ki1000110-WASH-Bangladesh   BANGLADESH     Control              NA                0.1946309   0.1310099   0.2582519
0        6 months    ki1000110-WASH-Bangladesh   BANGLADESH     LNS                  NA                0.1468927   0.0947005   0.1990849
0        6 months    ki1000110-WASH-Bangladesh   BANGLADESH     Other                NA                0.1262136   0.0891569   0.1632703
0        6 months    ki1000125-AgaKhanUniv       PAKISTAN       Control              NA                0.3085106   0.2771340   0.3398873
0        6 months    ki1000125-AgaKhanUniv       PAKISTAN       Maternal             NA                0.2413793   0.2167152   0.2660434
0        6 months    ki1000304-Vitamin-B12       INDIA          Control              NA                0.4000000   0.3507437   0.4492563
0        6 months    ki1000304-Vitamin-B12       INDIA          Other                NA                0.2622951   0.1731059   0.3514842
0        6 months    ki1000304-ZnMort            INDIA          Control              NA                0.3333333   0.2069274   0.4597393
0        6 months    ki1000304-ZnMort            INDIA          Zinc                 NA                0.3250000   0.1790735   0.4709265
0        6 months    ki1000304b-SAS-CompFeed     INDIA          Control              NA                0.2263374   0.2004475   0.2522274
0        6 months    ki1000304b-SAS-CompFeed     INDIA          Other                NA                0.2040000   0.1772619   0.2307381
0        6 months    ki1000304b-SAS-FoodSuppl    INDIA          Control              NA                0.4931507   0.4634093   0.5228921
0        6 months    ki1000304b-SAS-FoodSuppl    INDIA          Other                NA                0.3923445   0.3431965   0.4414925
0        6 months    ki1112895-Burkina Faso Zn   BURKINA FASO   Control              NA                0.0704225   0.0108544   0.1299907
0        6 months    ki1112895-Burkina Faso Zn   BURKINA FASO   Zinc                 NA                0.0985325   0.0717624   0.1253026
0        6 months    ki1112895-Guatemala BSC     GUATEMALA      Control              NA                0.3203883   0.2758709   0.3649058
0        6 months    ki1112895-Guatemala BSC     GUATEMALA      Other                NA                0.2735849   0.2304395   0.3167303
0        6 months    ki1119695-PROBIT            BELARUS        Control              NA                0.0665518   0.0530087   0.0800949
0        6 months    ki1119695-PROBIT            BELARUS        Maternal             NA                0.0577041   0.0489362   0.0664720
0        6 months    ki1126311-ZVITAMBO          ZIMBABWE       Control              NA                0.1370592   0.1327854   0.1413330
0        6 months    ki1126311-ZVITAMBO          ZIMBABWE       VitA                 NA                0.1311795   0.1238305   0.1385286
0        6 months    ki1135781-COHORTS           GUATEMALA      Control              NA                0.4784173   0.4502961   0.5065384
0        6 months    ki1135781-COHORTS           GUATEMALA      Other                NA                0.3729373   0.3445162   0.4013584
0        6 months    ki1148112-iLiNS-DOSE        MALAWI         Control              NA                0.3040541   0.2955382   0.3125699
0        6 months    ki1148112-iLiNS-DOSE        MALAWI         LNS                  NA                0.2896461   0.2705798   0.3087125
0        6 months    ki1148112-LCNI-5            MALAWI         Control              NA                0.3432836   0.2776036   0.4089636
0        6 months    ki1148112-LCNI-5            MALAWI         LNS                  NA                0.3627451   0.3160638   0.4094264
0        6 months    ki1148112-LCNI-5            MALAWI         Other                NA                0.3940887   0.3268268   0.4613506
0        6 months    kiGH5241-JiVitA-3           BANGLADESH     Control              NA                0.1825058   0.1767505   0.1882610
0        6 months    kiGH5241-JiVitA-3           BANGLADESH     Maternal             NA                0.1735914   0.1683060   0.1788769
0        6 months    kiGH5241-JiVitA-4           BANGLADESH     Control              NA                0.1887755   0.1598859   0.2176651
0        6 months    kiGH5241-JiVitA-4           BANGLADESH     LNS                  NA                0.2063340   0.1811950   0.2314729
0        6 months    kiGH5241-JiVitA-4           BANGLADESH     Other                NA                0.2244546   0.2008944   0.2480149
0        24 months   ki1000107-Serrinha-VitA     BRAZIL         Control              NA                0.4264706   0.3637777   0.4891634
0        24 months   ki1000107-Serrinha-VitA     BRAZIL         VitA                 NA                0.4333333   0.3743279   0.4923387
0        24 months   ki1000110-WASH-Bangladesh   BANGLADESH     Control              NA                0.3898305   0.3275762   0.4520848
0        24 months   ki1000110-WASH-Bangladesh   BANGLADESH     LNS                  NA                0.3560606   0.2982717   0.4138495
0        24 months   ki1000110-WASH-Bangladesh   BANGLADESH     Other                NA                0.3856589   0.3436401   0.4276777
0        24 months   ki1000111-WASH-Kenya        KENYA          Control              NA                0.2991690   0.2657614   0.3325766
0        24 months   ki1000111-WASH-Kenya        KENYA          LNS                  NA                0.2931393   0.2524500   0.3338286
0        24 months   ki1000111-WASH-Kenya        KENYA          Other                NA                0.3092999   0.2800094   0.3385904
0        24 months   ki1000304-Vitamin-B12       INDIA          Control              NA                0.3428571   0.2964105   0.3893038
0        24 months   ki1000304-Vitamin-B12       INDIA          Other                NA                0.4404762   0.3652197   0.5157326
0        24 months   ki1000304-ZnMort            INDIA          Control              NA                0.5000000   0.2886516   0.7113484
0        24 months   ki1000304-ZnMort            INDIA          Zinc                 NA                0.5000000   0.2886516   0.7113484
0        24 months   ki1112895-Burkina Faso Zn   BURKINA FASO   Control              NA                0.2857143   0.1962293   0.3751993
0        24 months   ki1112895-Burkina Faso Zn   BURKINA FASO   Zinc                 NA                0.3116178   0.2816912   0.3415444
0        24 months   ki1119695-PROBIT            BELARUS        Control              NA                0.1070111   0.0772314   0.1367907
0        24 months   ki1119695-PROBIT            BELARUS        Maternal             NA                0.1200000   0.0897588   0.1502412
0        24 months   ki1135781-COHORTS           GUATEMALA      Control              NA                0.7876712   0.7544463   0.8208961
0        24 months   ki1135781-COHORTS           GUATEMALA      Other                NA                0.7876712   0.7544463   0.8208961
0        24 months   ki1148112-iLiNS-DOSE        MALAWI         Control              NA                0.5169492   0.5022642   0.5316341
0        24 months   ki1148112-iLiNS-DOSE        MALAWI         LNS                  NA                0.4975288   0.4642039   0.5308537
0        24 months   ki1148112-LCNI-5            MALAWI         Control              NA                0.3925234   0.2998749   0.4851718
0        24 months   ki1148112-LCNI-5            MALAWI         LNS                  NA                0.3895349   0.3165602   0.4625095
0        24 months   ki1148112-LCNI-5            MALAWI         Other                NA                0.3225806   0.2274459   0.4177154
0        24 months   kiGH5241-JiVitA-3           BANGLADESH     Control              NA                0.3750000   0.2817286   0.4682714
0        24 months   kiGH5241-JiVitA-3           BANGLADESH     Maternal             NA                0.4814815   0.3826181   0.5803449
0        24 months   kiGH5241-JiVitA-4           BANGLADESH     Control              NA                0.4100000   0.3317276   0.4882724
0        24 months   kiGH5241-JiVitA-4           BANGLADESH     LNS                  NA                0.4074074   0.3306521   0.4841627
0        24 months   kiGH5241-JiVitA-4           BANGLADESH     Other                NA                0.3956640   0.3390372   0.4522908
1        Birth       ki1126311-ZVITAMBO          ZIMBABWE       Control              NA                0.0379965   0.0339631   0.0420300
1        Birth       ki1126311-ZVITAMBO          ZIMBABWE       VitA                 NA                0.0410380   0.0339581   0.0481179
1        Birth       kiGH5241-JiVitA-3           BANGLADESH     Control              NA                0.1517857   0.1370263   0.1665451
1        Birth       kiGH5241-JiVitA-3           BANGLADESH     Maternal             NA                0.1372032   0.1222823   0.1521240
1        6 months    ki1000125-AgaKhanUniv       PAKISTAN       Control              NA                0.4000000   0.3440036   0.4559964
1        6 months    ki1000125-AgaKhanUniv       PAKISTAN       Maternal             NA                0.2837838   0.2325972   0.3349703
1        6 months    ki1000304b-SAS-CompFeed     INDIA          Control              NA                0.3200000   0.1905175   0.4494825
1        6 months    ki1000304b-SAS-CompFeed     INDIA          Other                NA                0.3030303   0.2380140   0.3680466
1        6 months    ki1000304b-SAS-FoodSuppl    INDIA          Control              NA                0.6666667   0.6065236   0.7268098
1        6 months    ki1000304b-SAS-FoodSuppl    INDIA          Other                NA                0.3777778   0.2706397   0.4849158
1        6 months    ki1119695-PROBIT            BELARUS        Control              NA                0.0729242   0.0552889   0.0905595
1        6 months    ki1119695-PROBIT            BELARUS        Maternal             NA                0.0506224   0.0399401   0.0613048
1        6 months    ki1126311-ZVITAMBO          ZIMBABWE       Control              NA                0.1972318   0.1855558   0.2089078
1        6 months    ki1126311-ZVITAMBO          ZIMBABWE       VitA                 NA                0.2432113   0.2216596   0.2647631
1        6 months    ki1135781-COHORTS           GUATEMALA      Control              NA                0.4123711   0.3556406   0.4691017
1        6 months    ki1135781-COHORTS           GUATEMALA      Other                NA                0.2676056   0.2239556   0.3112557
1        6 months    kiGH5241-JiVitA-3           BANGLADESH     Control              NA                0.1906005   0.1726182   0.2085828
1        6 months    kiGH5241-JiVitA-3           BANGLADESH     Maternal             NA                0.1858530   0.1681263   0.2035796
1        6 months    kiGH5241-JiVitA-4           BANGLADESH     Control              NA                0.2474227   0.1595380   0.3353074
1        6 months    kiGH5241-JiVitA-4           BANGLADESH     LNS                  NA                0.1827957   0.0913585   0.2742329
1        6 months    kiGH5241-JiVitA-4           BANGLADESH     Other                NA                0.3169399   0.2450539   0.3888259
1        24 months   ki1112895-Burkina Faso Zn   BURKINA FASO   Control              NA                0.6956522   0.5069627   0.8843416
1        24 months   ki1112895-Burkina Faso Zn   BURKINA FASO   Zinc                 NA                0.6774194   0.5948598   0.7599789
1        24 months   ki1119695-PROBIT            BELARUS        Control              NA                0.1666667   0.1023170   0.2310164
1        24 months   ki1119695-PROBIT            BELARUS        Maternal             NA                0.0940171   0.0641913   0.1238429
1        24 months   kiGH5241-JiVitA-4           BANGLADESH     Control              NA                0.5000000   0.2350599   0.7649401
1        24 months   kiGH5241-JiVitA-4           BANGLADESH     LNS                  NA                0.4705882   0.2298829   0.7112935
1        24 months   kiGH5241-JiVitA-4           BANGLADESH     Other                NA                0.6666667   0.4548537   0.8784796


### Parameter: E(Y)


enwast   agecat      studyid                     country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------  ----------  --------------------------  -------------  -------------------  ---------------  ----------  ----------  ----------
0        Birth       ki1000304b-SAS-CompFeed     INDIA          NA                   NA                0.1551724   0.0811316   0.2292133
0        Birth       ki1119695-PROBIT            BELARUS        NA                   NA                0.0023775   0.0010265   0.0037285
0        Birth       ki1126311-ZVITAMBO          ZIMBABWE       NA                   NA                0.0556374   0.0513254   0.0599495
0        Birth       ki1135781-COHORTS           GUATEMALA      NA                   NA                0.0425532   0.0258801   0.0592263
0        Birth       kiGH5241-JiVitA-3           BANGLADESH     NA                   NA                0.1582060   0.1515770   0.1648351
0        Birth       kiGH5241-JiVitA-4           BANGLADESH     NA                   NA                0.1545595   0.1240892   0.1850299
0        6 months    ki1000110-WASH-Bangladesh   BANGLADESH     NA                   NA                0.1480315   0.1203880   0.1756749
0        6 months    ki1000125-AgaKhanUniv       PAKISTAN       NA                   NA                0.2804124   0.2403934   0.3204313
0        6 months    ki1000304-Vitamin-B12       INDIA          NA                   NA                0.2894737   0.1868348   0.3921126
0        6 months    ki1000304-ZnMort            INDIA          NA                   NA                0.3297872   0.2342374   0.4253371
0        6 months    ki1000304b-SAS-CompFeed     INDIA          NA                   NA                0.2150101   0.1761196   0.2539007
0        6 months    ki1000304b-SAS-FoodSuppl    INDIA          NA                   NA                0.4184397   0.3607619   0.4761175
0        6 months    ki1112895-Burkina Faso Zn   BURKINA FASO   NA                   NA                0.0948905   0.0703312   0.1194498
0        6 months    ki1112895-Guatemala BSC     GUATEMALA      NA                   NA                0.2966507   0.2345746   0.3587268
0        6 months    ki1119695-PROBIT            BELARUS        NA                   NA                0.0620147   0.0454111   0.0786183
0        6 months    ki1126311-ZVITAMBO          ZIMBABWE       NA                   NA                0.1326247   0.1241231   0.1411263
0        6 months    ki1135781-COHORTS           GUATEMALA      NA                   NA                0.4234079   0.3831966   0.4636192
0        6 months    ki1148112-iLiNS-DOSE        MALAWI         NA                   NA                0.2919868   0.2711037   0.3128699
0        6 months    ki1148112-LCNI-5            MALAWI         NA                   NA                0.3657635   0.3326151   0.3989120
0        6 months    kiGH5241-JiVitA-3           BANGLADESH     NA                   NA                0.1779511   0.1701238   0.1857784
0        6 months    kiGH5241-JiVitA-4           BANGLADESH     NA                   NA                0.2101488   0.1951229   0.2251747
0        24 months   ki1000107-Serrinha-VitA     BRAZIL         NA                   NA                0.4296875   0.3435923   0.5157827
0        24 months   ki1000110-WASH-Bangladesh   BANGLADESH     NA                   NA                0.3789370   0.3490924   0.4087817
0        24 months   ki1000111-WASH-Kenya        KENYA          NA                   NA                0.3023148   0.2829425   0.3216871
0        24 months   ki1000304-Vitamin-B12       INDIA          NA                   NA                0.4117647   0.3229659   0.5005635
0        24 months   ki1000304-ZnMort            INDIA          NA                   NA                0.5000000   0.3505541   0.6494459
0        24 months   ki1112895-Burkina Faso Zn   BURKINA FASO   NA                   NA                0.3091266   0.2807381   0.3375150
0        24 months   ki1119695-PROBIT            BELARUS        NA                   NA                0.1143317   0.0717136   0.1569498
0        24 months   ki1135781-COHORTS           GUATEMALA      NA                   NA                0.7876712   0.7406841   0.8346583
0        24 months   ki1148112-iLiNS-DOSE        MALAWI         NA                   NA                0.5006897   0.4642689   0.5371104
0        24 months   ki1148112-LCNI-5            MALAWI         NA                   NA                0.3736559   0.3244289   0.4228829
0        24 months   kiGH5241-JiVitA-3           BANGLADESH     NA                   NA                0.4313725   0.2945455   0.5681996
0        24 months   kiGH5241-JiVitA-4           BANGLADESH     NA                   NA                0.4025478   0.3631810   0.4419145
1        Birth       ki1126311-ZVITAMBO          ZIMBABWE       NA                   NA                0.0402504   0.0321020   0.0483989
1        Birth       kiGH5241-JiVitA-3           BANGLADESH     NA                   NA                0.1446174   0.1236010   0.1656338
1        6 months    ki1000125-AgaKhanUniv       PAKISTAN       NA                   NA                0.3422819   0.2658404   0.4187234
1        6 months    ki1000304b-SAS-CompFeed     INDIA          NA                   NA                0.3103448   0.1653334   0.4553562
1        6 months    ki1000304b-SAS-FoodSuppl    INDIA          NA                   NA                0.4500000   0.3230567   0.5769433
1        6 months    ki1119695-PROBIT            BELARUS        NA                   NA                0.0625483   0.0409961   0.0841004
1        6 months    ki1126311-ZVITAMBO          ZIMBABWE       NA                   NA                0.2315141   0.2069751   0.2560531
1        6 months    ki1135781-COHORTS           GUATEMALA      NA                   NA                0.3511905   0.2787936   0.4235874
1        6 months    kiGH5241-JiVitA-3           BANGLADESH     NA                   NA                0.1882986   0.1630446   0.2135526
1        6 months    kiGH5241-JiVitA-4           BANGLADESH     NA                   NA                0.2654155   0.2173146   0.3135165
1        24 months   ki1112895-Burkina Faso Zn   BURKINA FASO   NA                   NA                0.6802721   0.6046231   0.7559211
1        24 months   ki1119695-PROBIT            BELARUS        NA                   NA                0.1278539   0.0556743   0.2000335
1        24 months   kiGH5241-JiVitA-4           BANGLADESH     NA                   NA                0.5576923   0.4187065   0.6966781


### Parameter: RR


enwast   agecat      studyid                     country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------  ----------  --------------------------  -------------  -------------------  ---------------  ----------  ----------  ----------
0        Birth       ki1000304b-SAS-CompFeed     INDIA          Control              Control           1.0000000   1.0000000   1.0000000
0        Birth       ki1000304b-SAS-CompFeed     INDIA          Other                Control           1.2500000   0.8120365   1.9241745
0        Birth       ki1119695-PROBIT            BELARUS        Control              Control           1.0000000   1.0000000   1.0000000
0        Birth       ki1119695-PROBIT            BELARUS        Maternal             Control           0.7819049   0.4562380   1.3400359
0        Birth       ki1126311-ZVITAMBO          ZIMBABWE       Control              Control           1.0000000   1.0000000   1.0000000
0        Birth       ki1126311-ZVITAMBO          ZIMBABWE       VitA                 Control           0.9686217   0.8963790   1.0466867
0        Birth       ki1135781-COHORTS           GUATEMALA      Control              Control           1.0000000   1.0000000   1.0000000
0        Birth       ki1135781-COHORTS           GUATEMALA      Other                Control           0.7446154   0.5010029   1.1066844
0        Birth       kiGH5241-JiVitA-3           BANGLADESH     Control              Control           1.0000000   1.0000000   1.0000000
0        Birth       kiGH5241-JiVitA-3           BANGLADESH     Maternal             Control           0.8771818   0.8415914   0.9142771
0        Birth       kiGH5241-JiVitA-4           BANGLADESH     Control              Control           1.0000000   1.0000000   1.0000000
0        Birth       kiGH5241-JiVitA-4           BANGLADESH     LNS                  Control           1.2222222   0.7482884   1.9963255
0        Birth       kiGH5241-JiVitA-4           BANGLADESH     Other                Control           0.7992145   0.4956085   1.2888073
0        6 months    ki1000110-WASH-Bangladesh   BANGLADESH     Control              Control           1.0000000   1.0000000   1.0000000
0        6 months    ki1000110-WASH-Bangladesh   BANGLADESH     LNS                  Control           0.7547243   0.4657056   1.2231093
0        6 months    ki1000110-WASH-Bangladesh   BANGLADESH     Other                Control           0.6484767   0.4179022   1.0062690
0        6 months    ki1000125-AgaKhanUniv       PAKISTAN       Control              Control           1.0000000   1.0000000   1.0000000
0        6 months    ki1000125-AgaKhanUniv       PAKISTAN       Maternal             Control           0.7824019   0.6773586   0.9037351
0        6 months    ki1000304-Vitamin-B12       INDIA          Control              Control           1.0000000   1.0000000   1.0000000
0        6 months    ki1000304-Vitamin-B12       INDIA          Other                Control           0.6557377   0.4567411   0.9414348
0        6 months    ki1000304-ZnMort            INDIA          Control              Control           1.0000000   1.0000000   1.0000000
0        6 months    ki1000304-ZnMort            INDIA          Zinc                 Control           0.9750000   0.5417044   1.7548776
0        6 months    ki1000304b-SAS-CompFeed     INDIA          Control              Control           1.0000000   1.0000000   1.0000000
0        6 months    ki1000304b-SAS-CompFeed     INDIA          Other                Control           0.9013091   0.7575162   1.0723969
0        6 months    ki1000304b-SAS-FoodSuppl    INDIA          Control              Control           1.0000000   1.0000000   1.0000000
0        6 months    ki1000304b-SAS-FoodSuppl    INDIA          Other                Control           0.7955875   0.6923223   0.9142554
0        6 months    ki1112895-Burkina Faso Zn   BURKINA FASO   Control              Control           1.0000000   1.0000000   1.0000000
0        6 months    ki1112895-Burkina Faso Zn   BURKINA FASO   Zinc                 Control           1.3991614   0.5754768   3.4017925
0        6 months    ki1112895-Guatemala BSC     GUATEMALA      Control              Control           1.0000000   1.0000000   1.0000000
0        6 months    ki1112895-Guatemala BSC     GUATEMALA      Other                Control           0.8539165   0.6920441   1.0536517
0        6 months    ki1119695-PROBIT            BELARUS        Control              Control           1.0000000   1.0000000   1.0000000
0        6 months    ki1119695-PROBIT            BELARUS        Maternal             Control           0.8670557   0.6734699   1.1162867
0        6 months    ki1126311-ZVITAMBO          ZIMBABWE       Control              Control           1.0000000   1.0000000   1.0000000
0        6 months    ki1126311-ZVITAMBO          ZIMBABWE       VitA                 Control           0.9571011   0.8976616   1.0204765
0        6 months    ki1135781-COHORTS           GUATEMALA      Control              Control           1.0000000   1.0000000   1.0000000
0        6 months    ki1135781-COHORTS           GUATEMALA      Other                Control           0.7795231   0.7079962   0.8582761
0        6 months    ki1148112-iLiNS-DOSE        MALAWI         Control              Control           1.0000000   1.0000000   1.0000000
0        6 months    ki1148112-iLiNS-DOSE        MALAWI         LNS                  Control           0.9526140   0.8868473   1.0232578
0        6 months    ki1148112-LCNI-5            MALAWI         Control              Control           1.0000000   1.0000000   1.0000000
0        6 months    ki1148112-LCNI-5            MALAWI         LNS                  Control           1.0566922   0.8390900   1.3307256
0        6 months    ki1148112-LCNI-5            MALAWI         Other                Control           1.1479974   0.8883639   1.4835116
0        6 months    kiGH5241-JiVitA-3           BANGLADESH     Control              Control           1.0000000   1.0000000   1.0000000
0        6 months    kiGH5241-JiVitA-3           BANGLADESH     Maternal             Control           0.9511560   0.9103626   0.9937773
0        6 months    kiGH5241-JiVitA-4           BANGLADESH     Control              Control           1.0000000   1.0000000   1.0000000
0        6 months    kiGH5241-JiVitA-4           BANGLADESH     LNS                  Control           1.0930124   0.8987827   1.3292157
0        6 months    kiGH5241-JiVitA-4           BANGLADESH     Other                Control           1.1890030   0.9876168   1.4314541
0        24 months   ki1000107-Serrinha-VitA     BRAZIL         Control              Control           1.0000000   1.0000000   1.0000000
0        24 months   ki1000107-Serrinha-VitA     BRAZIL         VitA                 Control           1.0160920   0.8315912   1.2415270
0        24 months   ki1000110-WASH-Bangladesh   BANGLADESH     Control              Control           1.0000000   1.0000000   1.0000000
0        24 months   ki1000110-WASH-Bangladesh   BANGLADESH     LNS                  Control           0.9133729   0.7273813   1.1469225
0        24 months   ki1000110-WASH-Bangladesh   BANGLADESH     Other                Control           0.9892990   0.8153963   1.2002905
0        24 months   ki1000111-WASH-Kenya        KENYA          Control              Control           1.0000000   1.0000000   1.0000000
0        24 months   ki1000111-WASH-Kenya        KENYA          LNS                  Control           0.9798452   0.8199529   1.1709169
0        24 months   ki1000111-WASH-Kenya        KENYA          Other                Control           1.0338635   0.8930493   1.1968810
0        24 months   ki1000304-Vitamin-B12       INDIA          Control              Control           1.0000000   1.0000000   1.0000000
0        24 months   ki1000304-Vitamin-B12       INDIA          Other                Control           1.2847222   1.0330340   1.5977318
0        24 months   ki1000304-ZnMort            INDIA          Control              Control           1.0000000   1.0000000   1.0000000
0        24 months   ki1000304-ZnMort            INDIA          Zinc                 Control           1.0000000   0.5500295   1.8180844
0        24 months   ki1112895-Burkina Faso Zn   BURKINA FASO   Control              Control           1.0000000   1.0000000   1.0000000
0        24 months   ki1112895-Burkina Faso Zn   BURKINA FASO   Zinc                 Control           1.0906623   0.7859945   1.5134257
0        24 months   ki1119695-PROBIT            BELARUS        Control              Control           1.0000000   1.0000000   1.0000000
0        24 months   ki1119695-PROBIT            BELARUS        Maternal             Control           1.1213793   0.7702663   1.6325414
0        24 months   ki1135781-COHORTS           GUATEMALA      Control              Control           1.0000000   1.0000000   1.0000000
0        24 months   ki1135781-COHORTS           GUATEMALA      Other                Control           1.0000000   0.9420912   1.0614683
0        24 months   ki1148112-iLiNS-DOSE        MALAWI         Control              Control           1.0000000   1.0000000   1.0000000
0        24 months   ki1148112-iLiNS-DOSE        MALAWI         LNS                  Control           0.9624328   0.8948970   1.0350654
0        24 months   ki1148112-LCNI-5            MALAWI         Control              Control           1.0000000   1.0000000   1.0000000
0        24 months   ki1148112-LCNI-5            MALAWI         LNS                  Control           0.9923865   0.7341920   1.3413807
0        24 months   ki1148112-LCNI-5            MALAWI         Other                Control           0.8218126   0.5632771   1.1990119
0        24 months   kiGH5241-JiVitA-3           BANGLADESH     Control              Control           1.0000000   1.0000000   1.0000000
0        24 months   kiGH5241-JiVitA-3           BANGLADESH     Maternal             Control           1.2839506   0.9299825   1.7726454
0        24 months   kiGH5241-JiVitA-4           BANGLADESH     Control              Control           1.0000000   1.0000000   1.0000000
0        24 months   kiGH5241-JiVitA-4           BANGLADESH     LNS                  Control           0.9936766   0.7597796   1.2995784
0        24 months   kiGH5241-JiVitA-4           BANGLADESH     Other                Control           0.9650340   0.7601817   1.2250896
1        Birth       ki1126311-ZVITAMBO          ZIMBABWE       Control              Control           1.0000000   1.0000000   1.0000000
1        Birth       ki1126311-ZVITAMBO          ZIMBABWE       VitA                 Control           1.0800461   0.8820034   1.3225568
1        Birth       kiGH5241-JiVitA-3           BANGLADESH     Control              Control           1.0000000   1.0000000   1.0000000
1        Birth       kiGH5241-JiVitA-3           BANGLADESH     Maternal             Control           0.9039267   0.7812446   1.0458742
1        6 months    ki1000125-AgaKhanUniv       PAKISTAN       Control              Control           1.0000000   1.0000000   1.0000000
1        6 months    ki1000125-AgaKhanUniv       PAKISTAN       Maternal             Control           0.7094595   0.5646354   0.8914296
1        6 months    ki1000304b-SAS-CompFeed     INDIA          Control              Control           1.0000000   1.0000000   1.0000000
1        6 months    ki1000304b-SAS-CompFeed     INDIA          Other                Control           0.9469697   0.5986860   1.4978664
1        6 months    ki1000304b-SAS-FoodSuppl    INDIA          Control              Control           1.0000000   1.0000000   1.0000000
1        6 months    ki1000304b-SAS-FoodSuppl    INDIA          Other                Control           0.5666667   0.4208041   0.7630893
1        6 months    ki1119695-PROBIT            BELARUS        Control              Control           1.0000000   1.0000000   1.0000000
1        6 months    ki1119695-PROBIT            BELARUS        Maternal             Control           0.6941785   0.5039554   0.9562035
1        6 months    ki1126311-ZVITAMBO          ZIMBABWE       Control              Control           1.0000000   1.0000000   1.0000000
1        6 months    ki1126311-ZVITAMBO          ZIMBABWE       VitA                 Control           1.2331241   1.1084719   1.3717940
1        6 months    ki1135781-COHORTS           GUATEMALA      Control              Control           1.0000000   1.0000000   1.0000000
1        6 months    ki1135781-COHORTS           GUATEMALA      Other                Control           0.6489437   0.5242475   0.8032997
1        6 months    kiGH5241-JiVitA-3           BANGLADESH     Control              Control           1.0000000   1.0000000   1.0000000
1        6 months    kiGH5241-JiVitA-3           BANGLADESH     Maternal             Control           0.9750917   0.8526633   1.1150987
1        6 months    kiGH5241-JiVitA-4           BANGLADESH     Control              Control           1.0000000   1.0000000   1.0000000
1        6 months    kiGH5241-JiVitA-4           BANGLADESH     LNS                  Control           0.7387993   0.4000086   1.3645315
1        6 months    kiGH5241-JiVitA-4           BANGLADESH     Other                Control           1.2809654   0.8404694   1.9523285
1        24 months   ki1112895-Burkina Faso Zn   BURKINA FASO   Control              Control           1.0000000   1.0000000   1.0000000
1        24 months   ki1112895-Burkina Faso Zn   BURKINA FASO   Zinc                 Control           0.9737903   0.7233063   1.3110181
1        24 months   ki1119695-PROBIT            BELARUS        Control              Control           1.0000000   1.0000000   1.0000000
1        24 months   ki1119695-PROBIT            BELARUS        Maternal             Control           0.5641026   0.3414958   0.9318174
1        24 months   kiGH5241-JiVitA-4           BANGLADESH     Control              Control           1.0000000   1.0000000   1.0000000
1        24 months   kiGH5241-JiVitA-4           BANGLADESH     LNS                  Control           0.9411765   0.4508768   1.9646455
1        24 months   kiGH5241-JiVitA-4           BANGLADESH     Other                Control           1.3333333   0.7188146   2.4732076


### Parameter: PAR


enwast   agecat      studyid                     country        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------  ----------  --------------------------  -------------  -------------------  ---------------  -----------  -----------  -----------
0        Birth       ki1000304b-SAS-CompFeed     INDIA          Control              NA                 0.0172414   -0.0561384    0.0906212
0        Birth       ki1119695-PROBIT            BELARUS        Control              NA                -0.0003061   -0.0009974    0.0003853
0        Birth       ki1126311-ZVITAMBO          ZIMBABWE       Control              NA                -0.0013458   -0.0050728    0.0023812
0        Birth       ki1135781-COHORTS           GUATEMALA      Control              NA                -0.0066892   -0.0180235    0.0046450
0        Birth       kiGH5241-JiVitA-3           BANGLADESH     Control              NA                -0.0106270   -0.0151014   -0.0061527
0        Birth       kiGH5241-JiVitA-4           BANGLADESH     Control              NA                -0.0045314   -0.0529708    0.0439080
0        6 months    ki1000110-WASH-Bangladesh   BANGLADESH     Control              NA                -0.0465994   -0.1005649    0.0073661
0        6 months    ki1000125-AgaKhanUniv       PAKISTAN       Control              NA                -0.0280983   -0.0529382   -0.0032583
0        6 months    ki1000304-Vitamin-B12       INDIA          Control              NA                -0.1105263   -0.2005739   -0.0204788
0        6 months    ki1000304-ZnMort            INDIA          Control              NA                -0.0035461   -0.0857045    0.0786123
0        6 months    ki1000304b-SAS-CompFeed     INDIA          Control              NA                -0.0113273   -0.0394443    0.0167896
0        6 months    ki1000304b-SAS-FoodSuppl    INDIA          Control              NA                -0.0747110   -0.1241294   -0.0252925
0        6 months    ki1112895-Burkina Faso Zn   BURKINA FASO   Control              NA                 0.0244680   -0.0323832    0.0813192
0        6 months    ki1112895-Guatemala BSC     GUATEMALA      Control              NA                -0.0237376   -0.0670001    0.0195248
0        6 months    ki1119695-PROBIT            BELARUS        Control              NA                -0.0045371   -0.0135264    0.0044522
0        6 months    ki1126311-ZVITAMBO          ZIMBABWE       Control              NA                -0.0044345   -0.0117838    0.0029148
0        6 months    ki1135781-COHORTS           GUATEMALA      Control              NA                -0.0550093   -0.0837521   -0.0262666
0        6 months    ki1148112-iLiNS-DOSE        MALAWI         Control              NA                -0.0120672   -0.0311351    0.0070007
0        6 months    ki1148112-LCNI-5            MALAWI         Control              NA                 0.0224800   -0.0347651    0.0797251
0        6 months    kiGH5241-JiVitA-3           BANGLADESH     Control              NA                -0.0045546   -0.0098599    0.0007506
0        6 months    kiGH5241-JiVitA-4           BANGLADESH     Control              NA                 0.0213733   -0.0036200    0.0463665
0        24 months   ki1000107-Serrinha-VitA     BRAZIL         Control              NA                 0.0032169   -0.0557915    0.0622253
0        24 months   ki1000110-WASH-Bangladesh   BANGLADESH     Control              NA                -0.0108935   -0.0653529    0.0435659
0        24 months   ki1000111-WASH-Kenya        KENYA          Control              NA                 0.0031458   -0.0241533    0.0304449
0        24 months   ki1000304-Vitamin-B12       INDIA          Control              NA                 0.0689076   -0.0067756    0.1445907
0        24 months   ki1000304-ZnMort            INDIA          Control              NA                 0.0000000   -0.1494459    0.1494459
0        24 months   ki1112895-Burkina Faso Zn   BURKINA FASO   Control              NA                 0.0234123   -0.0618710    0.1086957
0        24 months   ki1119695-PROBIT            BELARUS        Control              NA                 0.0073207   -0.0232120    0.0378534
0        24 months   ki1135781-COHORTS           GUATEMALA      Control              NA                 0.0000000   -0.0332249    0.0332249
0        24 months   ki1148112-iLiNS-DOSE        MALAWI         Control              NA                -0.0162595   -0.0495885    0.0170695
0        24 months   ki1148112-LCNI-5            MALAWI         Control              NA                -0.0188675   -0.0967718    0.0590369
0        24 months   kiGH5241-JiVitA-3           BANGLADESH     Control              NA                 0.0563725   -0.0436215    0.1563666
0        24 months   kiGH5241-JiVitA-4           BANGLADESH     Control              NA                -0.0074522   -0.0750089    0.0601045
1        Birth       ki1126311-ZVITAMBO          ZIMBABWE       Control              NA                 0.0022539   -0.0048262    0.0093340
1        Birth       kiGH5241-JiVitA-3           BANGLADESH     Control              NA                -0.0071683   -0.0221171    0.0077804
1        6 months    ki1000125-AgaKhanUniv       PAKISTAN       Control              NA                -0.0577181   -0.1097537   -0.0056826
1        6 months    ki1000304b-SAS-CompFeed     INDIA          Control              NA                -0.0096552   -0.0756341    0.0563238
1        6 months    ki1000304b-SAS-FoodSuppl    INDIA          Control              NA                -0.2166667   -0.3284584   -0.1048749
1        6 months    ki1119695-PROBIT            BELARUS        Control              NA                -0.0103759   -0.0219019    0.0011501
1        6 months    ki1126311-ZVITAMBO          ZIMBABWE       Control              NA                 0.0342823    0.0126991    0.0558654
1        6 months    ki1135781-COHORTS           GUATEMALA      Control              NA                -0.0611807   -0.1061579   -0.0162034
1        6 months    kiGH5241-JiVitA-3           BANGLADESH     Control              NA                -0.0023019   -0.0200290    0.0154251
1        6 months    kiGH5241-JiVitA-4           BANGLADESH     Control              NA                 0.0179929   -0.0596129    0.0955986
1        24 months   ki1112895-Burkina Faso Zn   BURKINA FASO   Control              NA                -0.0153801   -0.1891189    0.1583588
1        24 months   ki1119695-PROBIT            BELARUS        Control              NA                -0.0388128   -0.0737439   -0.0038817
1        24 months   kiGH5241-JiVitA-4           BANGLADESH     Control              NA                 0.0576923   -0.1703540    0.2857386


### Parameter: PAF


enwast   agecat      studyid                     country        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------  ----------  --------------------------  -------------  -------------------  ---------------  -----------  -----------  -----------
0        Birth       ki1000304b-SAS-CompFeed     INDIA          Control              NA                 0.1111111   -0.4264364    0.4460858
0        Birth       ki1119695-PROBIT            BELARUS        Control              NA                -0.1287359   -0.5182518    0.1608475
0        Birth       ki1126311-ZVITAMBO          ZIMBABWE       Control              NA                -0.0241888   -0.0951537    0.0421776
0        Birth       ki1135781-COHORTS           GUATEMALA      Control              NA                -0.1571970   -0.5146757    0.1159132
0        Birth       kiGH5241-JiVitA-3           BANGLADESH     Control              NA                -0.0671721   -0.0978560   -0.0373458
0        Birth       kiGH5241-JiVitA-4           BANGLADESH     Control              NA                -0.0293182   -0.3961861    0.2411500
0        6 months    ki1000110-WASH-Bangladesh   BANGLADESH     Control              NA                -0.3147937   -0.7314964    0.0016252
0        6 months    ki1000125-AgaKhanUniv       PAKISTAN       Control              NA                -0.1002034   -0.2028129   -0.0063473
0        6 months    ki1000304-Vitamin-B12       INDIA          Control              NA                -0.3818182   -0.8927045   -0.0088324
0        6 months    ki1000304-ZnMort            INDIA          Control              NA                -0.0107527   -0.2932654    0.2100453
0        6 months    ki1000304b-SAS-CompFeed     INDIA          Control              NA                -0.0526827   -0.2001712    0.0766811
0        6 months    ki1000304b-SAS-FoodSuppl    INDIA          Control              NA                -0.1785466   -0.3269372   -0.0467503
0        6 months    ki1112895-Burkina Faso Zn   BURKINA FASO   Control              NA                 0.2578548   -0.6567145    0.6675471
0        6 months    ki1112895-Guatemala BSC     GUATEMALA      Control              NA                -0.0800188   -0.2501180    0.0669356
0        6 months    ki1119695-PROBIT            BELARUS        Control              NA                -0.0731618   -0.2423705    0.0730009
0        6 months    ki1126311-ZVITAMBO          ZIMBABWE       Control              NA                -0.0334366   -0.0923309    0.0222823
0        6 months    ki1135781-COHORTS           GUATEMALA      Control              NA                -0.1299205   -0.2098057   -0.0553101
0        6 months    ki1148112-iLiNS-DOSE        MALAWI         Control              NA                -0.0413280   -0.1116118    0.0245120
0        6 months    ki1148112-LCNI-5            MALAWI         Control              NA                 0.0614604   -0.1088639    0.2056224
0        6 months    kiGH5241-JiVitA-3           BANGLADESH     Control              NA                -0.0255949   -0.0566426    0.0045404
0        6 months    kiGH5241-JiVitA-4           BANGLADESH     Control              NA                 0.1017054   -0.0255370    0.2131603
0        24 months   ki1000107-Serrinha-VitA     BRAZIL         Control              NA                 0.0074866   -0.1386214    0.1348461
0        24 months   ki1000110-WASH-Bangladesh   BANGLADESH     Control              NA                -0.0287475   -0.1829918    0.1053856
0        24 months   ki1000111-WASH-Kenya        KENYA          Control              NA                 0.0104058   -0.0841422    0.0967084
0        24 months   ki1000304-Vitamin-B12       INDIA          Control              NA                 0.1673469   -0.0020587    0.3081133
0        24 months   ki1000304-ZnMort            INDIA          Control              NA                 0.0000000   -0.3483636    0.2583603
0        24 months   ki1112895-Burkina Faso Zn   BURKINA FASO   Control              NA                 0.0757370   -0.2457238    0.3142443
0        24 months   ki1119695-PROBIT            BELARUS        Control              NA                 0.0640299   -0.2232396    0.2838362
0        24 months   ki1135781-COHORTS           GUATEMALA      Control              NA                 0.0000000   -0.0430834    0.0413039
0        24 months   ki1148112-iLiNS-DOSE        MALAWI         Control              NA                -0.0324742   -0.1035482    0.0340223
0        24 months   ki1148112-LCNI-5            MALAWI         Control              NA                -0.0504942   -0.2811483    0.1386337
0        24 months   kiGH5241-JiVitA-3           BANGLADESH     Control              NA                 0.1306818   -0.0985442    0.3120768
0        24 months   kiGH5241-JiVitA-4           BANGLADESH     Control              NA                -0.0185127   -0.2009598    0.1362175
1        Birth       ki1126311-ZVITAMBO          ZIMBABWE       Control              NA                 0.0559969   -0.1256680    0.2083441
1        Birth       kiGH5241-JiVitA-3           BANGLADESH     Control              NA                -0.0495676   -0.1640002    0.0536152
1        6 months    ki1000125-AgaKhanUniv       PAKISTAN       Control              NA                -0.1686275   -0.3629852   -0.0019846
1        6 months    ki1000304b-SAS-CompFeed     INDIA          Control              NA                -0.0311111   -0.2757593    0.1666217
1        6 months    ki1000304b-SAS-FoodSuppl    INDIA          Control              NA                -0.4814815   -0.9064399   -0.1512492
1        6 months    ki1119695-PROBIT            BELARUS        Control              NA                -0.1658867   -0.4106518    0.0364087
1        6 months    ki1126311-ZVITAMBO          ZIMBABWE       Control              NA                 0.1480785    0.0644525    0.2242293
1        6 months    ki1135781-COHORTS           GUATEMALA      Control              NA                -0.1742093   -0.3376162   -0.0307647
1        6 months    kiGH5241-JiVitA-3           BANGLADESH     Control              NA                -0.0122249   -0.1121569    0.0787277
1        6 months    kiGH5241-JiVitA-4           BANGLADESH     Control              NA                 0.0677913   -0.2746253    0.3182208
1        24 months   ki1112895-Burkina Faso Zn   BURKINA FASO   Control              NA                -0.0226087   -0.3127800    0.2034244
1        24 months   ki1119695-PROBIT            BELARUS        Control              NA                -0.3035714   -0.7484935    0.0281357
1        24 months   kiGH5241-JiVitA-4           BANGLADESH     Control              NA                 0.1034483   -0.4152237    0.4320297
