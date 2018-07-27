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

* mwtkg
* agecat
* studyid
* country

## Data Summary

mwtkg       agecat      studyid                     country                        tr          stunted   n_cell       n
----------  ----------  --------------------------  -----------------------------  ---------  --------  -------  ------
>=57.5      24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control           0       20     111
>=57.5      24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control           1        5     111
>=57.5      24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS               0       26     111
>=57.5      24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS               1        6     111
>=57.5      24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other             0       44     111
>=57.5      24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other             1       10     111
<42.5       24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control           0       45     443
<42.5       24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control           1       57     443
<42.5       24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS               0       63     443
<42.5       24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS               1       54     443
<42.5       24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other             0      102     443
<42.5       24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other             1      122     443
[50-57.5)   24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control           0       30     200
[50-57.5)   24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control           1       13     200
[50-57.5)   24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS               0       44     200
[50-57.5)   24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS               1       14     200
[50-57.5)   24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other             0       70     200
[50-57.5)   24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other             1       29     200
[42.5-50)   24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control           0       61     433
[42.5-50)   24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control           1       40     433
[42.5-50)   24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS               0       58     433
[42.5-50)   24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS               1       42     433
[42.5-50)   24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other             0      141     433
[42.5-50)   24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other             1       91     433
<42.5       6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Control           0       47     255
<42.5       6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Control           1       17     255
<42.5       6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     LNS               0       57     255
<42.5       6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     LNS               1       20     255
<42.5       6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Other             0       89     255
<42.5       6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Other             1       25     255
[42.5-50)   6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Control           0       50     252
[42.5-50)   6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Control           1        8     252
[42.5-50)   6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     LNS               0       62     252
[42.5-50)   6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     LNS               1        7     252
[42.5-50)   6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Other             0      113     252
[42.5-50)   6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Other             1       12     252
>=57.5      6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Control           0        7      53
>=57.5      6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Control           1        1      53
>=57.5      6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     LNS               0       12      53
>=57.5      6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     LNS               1        0      53
>=57.5      6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Other             0       32      53
>=57.5      6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Other             1        1      53
[50-57.5)   6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Control           0       28     122
[50-57.5)   6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Control           1        3     122
[50-57.5)   6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     LNS               0       28     122
[50-57.5)   6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     LNS               1        2     122
[50-57.5)   6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Other             0       57     122
[50-57.5)   6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Other             1        4     122
[50-57.5)   6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Control           0       27      64
[50-57.5)   6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Control           1        9      64
[50-57.5)   6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Maternal          0       24      64
[50-57.5)   6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Maternal          1        4      64
[42.5-50)   6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Control           0       20      61
[42.5-50)   6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Control           1        7      61
[42.5-50)   6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Maternal          0       24      61
[42.5-50)   6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Maternal          1       10      61
<42.5       6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Control           0        6      22
<42.5       6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Control           1        5      22
<42.5       6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Maternal          0        7      22
<42.5       6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Maternal          1        4      22
>=57.5      6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Control           0       20      37
>=57.5      6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Control           1        2      37
>=57.5      6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Maternal          0       13      37
>=57.5      6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Maternal          1        2      37
<42.5       Birth       ki1000125-AgaKhanUniv       PAKISTAN                       Control           0        1       1
[42.5-50)   Birth       ki1000125-AgaKhanUniv       PAKISTAN                       Control           0        1       2
[42.5-50)   Birth       ki1000125-AgaKhanUniv       PAKISTAN                       Maternal          0        1       2
[50-57.5)   Birth       ki1000125-AgaKhanUniv       PAKISTAN                       Maternal          0        1       1
<42.5       6 months    ki1000304b-SAS-CompFeed     INDIA                          Control           0       32     123
<42.5       6 months    ki1000304b-SAS-CompFeed     INDIA                          Control           1       24     123
<42.5       6 months    ki1000304b-SAS-CompFeed     INDIA                          Other             0       33     123
<42.5       6 months    ki1000304b-SAS-CompFeed     INDIA                          Other             1       34     123
[42.5-50)   6 months    ki1000304b-SAS-CompFeed     INDIA                          Control           0       93     281
[42.5-50)   6 months    ki1000304b-SAS-CompFeed     INDIA                          Control           1       44     281
[42.5-50)   6 months    ki1000304b-SAS-CompFeed     INDIA                          Other             0      103     281
[42.5-50)   6 months    ki1000304b-SAS-CompFeed     INDIA                          Other             1       41     281
[42.5-50)   Birth       ki1000304b-SAS-CompFeed     INDIA                          Control           0       23      72
[42.5-50)   Birth       ki1000304b-SAS-CompFeed     INDIA                          Control           1        7      72
[42.5-50)   Birth       ki1000304b-SAS-CompFeed     INDIA                          Other             0       32      72
[42.5-50)   Birth       ki1000304b-SAS-CompFeed     INDIA                          Other             1       10      72
>=57.5      6 months    ki1000304b-SAS-CompFeed     INDIA                          Control           0       18      48
>=57.5      6 months    ki1000304b-SAS-CompFeed     INDIA                          Control           1        1      48
>=57.5      6 months    ki1000304b-SAS-CompFeed     INDIA                          Other             0       27      48
>=57.5      6 months    ki1000304b-SAS-CompFeed     INDIA                          Other             1        2      48
[50-57.5)   6 months    ki1000304b-SAS-CompFeed     INDIA                          Control           0       70     164
[50-57.5)   6 months    ki1000304b-SAS-CompFeed     INDIA                          Control           1       12     164
[50-57.5)   6 months    ki1000304b-SAS-CompFeed     INDIA                          Other             0       68     164
[50-57.5)   6 months    ki1000304b-SAS-CompFeed     INDIA                          Other             1       14     164
>=57.5      Birth       ki1000304b-SAS-CompFeed     INDIA                          Control           0        2      10
>=57.5      Birth       ki1000304b-SAS-CompFeed     INDIA                          Control           1        1      10
>=57.5      Birth       ki1000304b-SAS-CompFeed     INDIA                          Other             0        6      10
>=57.5      Birth       ki1000304b-SAS-CompFeed     INDIA                          Other             1        1      10
<42.5       Birth       ki1000304b-SAS-CompFeed     INDIA                          Control           0       12      30
<42.5       Birth       ki1000304b-SAS-CompFeed     INDIA                          Control           1        8      30
<42.5       Birth       ki1000304b-SAS-CompFeed     INDIA                          Other             0        5      30
<42.5       Birth       ki1000304b-SAS-CompFeed     INDIA                          Other             1        5      30
[50-57.5)   Birth       ki1000304b-SAS-CompFeed     INDIA                          Control           0       15      28
[50-57.5)   Birth       ki1000304b-SAS-CompFeed     INDIA                          Control           1        1      28
[50-57.5)   Birth       ki1000304b-SAS-CompFeed     INDIA                          Other             0        9      28
[50-57.5)   Birth       ki1000304b-SAS-CompFeed     INDIA                          Other             1        3      28
[50-57.5)   6 months    ki1017093b-PROVIDE          BANGLADESH                     Control           0        2      14
[50-57.5)   6 months    ki1017093b-PROVIDE          BANGLADESH                     Control           1        1      14
[50-57.5)   6 months    ki1017093b-PROVIDE          BANGLADESH                     Other             0       11      14
[50-57.5)   6 months    ki1017093b-PROVIDE          BANGLADESH                     Other             1        0      14
<42.5       6 months    ki1017093b-PROVIDE          BANGLADESH                     Control           0        1       6
<42.5       6 months    ki1017093b-PROVIDE          BANGLADESH                     Control           1        0       6
<42.5       6 months    ki1017093b-PROVIDE          BANGLADESH                     Other             0        2       6
<42.5       6 months    ki1017093b-PROVIDE          BANGLADESH                     Other             1        3       6
[42.5-50)   6 months    ki1017093b-PROVIDE          BANGLADESH                     Control           0        5      16
[42.5-50)   6 months    ki1017093b-PROVIDE          BANGLADESH                     Control           1        1      16
[42.5-50)   6 months    ki1017093b-PROVIDE          BANGLADESH                     Other             0        8      16
[42.5-50)   6 months    ki1017093b-PROVIDE          BANGLADESH                     Other             1        2      16
[42.5-50)   24 months   ki1017093b-PROVIDE          BANGLADESH                     Other             0        1       1
>=57.5      6 months    ki1017093b-PROVIDE          BANGLADESH                     Other             0        7       9
>=57.5      6 months    ki1017093b-PROVIDE          BANGLADESH                     Other             1        2       9
>=57.5      24 months   ki1017093b-PROVIDE          BANGLADESH                     Other             0        1       1
>=57.5      6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control           0      231    1067
>=57.5      6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control           1       29    1067
>=57.5      6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other             0      228    1067
>=57.5      6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other             1       25    1067
>=57.5      6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc              0      496    1067
>=57.5      6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc              1       58    1067
[50-57.5)   6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control           0       96     441
[50-57.5)   6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control           1       15     441
[50-57.5)   6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other             0      100     441
[50-57.5)   6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other             1        9     441
[50-57.5)   6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc              0      199     441
[50-57.5)   6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc              1       22     441
[42.5-50)   6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control           0       39     144
[42.5-50)   6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control           1        3     144
[42.5-50)   6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other             0       39     144
[42.5-50)   6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other             1        7     144
[42.5-50)   6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc              0       46     144
[42.5-50)   6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc              1       10     144
<42.5       6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control           0        5      18
<42.5       6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control           1        0      18
<42.5       6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other             0        4      18
<42.5       6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other             1        1      18
<42.5       6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc              0        7      18
<42.5       6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc              1        1      18
[50-57.5)   24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other             0        1       1
>=57.5      24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other             0        1       2
>=57.5      24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other             1        0       2
>=57.5      24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc              0        0       2
>=57.5      24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc              1        1       2
[42.5-50)   24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control           0        1       1
[50-57.5)   6 months    ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc              0      181     210
[50-57.5)   6 months    ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc              1       29     210
>=57.5      24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc              0      217     282
>=57.5      24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc              1       65     282
>=57.5      6 months    ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc              0      167     177
>=57.5      6 months    ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc              1       10     177
[50-57.5)   24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc              0      259     391
[50-57.5)   24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc              1      132     391
[42.5-50)   6 months    ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc              0      116     136
[42.5-50)   6 months    ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc              1       20     136
[42.5-50)   24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc              0      140     245
[42.5-50)   24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc              1      105     245
<42.5       24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc              0       10      22
<42.5       24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc              1       12      22
<42.5       6 months    ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc              0        7      10
<42.5       6 months    ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc              1        3      10
>=57.5      Birth       ki1119695-PROBIT            BELARUS                        Control           0     4981   10289
>=57.5      Birth       ki1119695-PROBIT            BELARUS                        Control           1       12   10289
>=57.5      Birth       ki1119695-PROBIT            BELARUS                        Maternal          0     5287   10289
>=57.5      Birth       ki1119695-PROBIT            BELARUS                        Maternal          1        9   10289
>=57.5      6 months    ki1119695-PROBIT            BELARUS                        Control           0     4174    8968
>=57.5      6 months    ki1119695-PROBIT            BELARUS                        Control           1      273    8968
>=57.5      6 months    ki1119695-PROBIT            BELARUS                        Maternal          0     4284    8968
>=57.5      6 months    ki1119695-PROBIT            BELARUS                        Maternal          1      237    8968
[50-57.5)   Birth       ki1119695-PROBIT            BELARUS                        Control           0     1428    2901
[50-57.5)   Birth       ki1119695-PROBIT            BELARUS                        Control           1        8    2901
[50-57.5)   Birth       ki1119695-PROBIT            BELARUS                        Maternal          0     1463    2901
[50-57.5)   Birth       ki1119695-PROBIT            BELARUS                        Maternal          1        2    2901
[50-57.5)   6 months    ki1119695-PROBIT            BELARUS                        Control           0     1187    2553
[50-57.5)   6 months    ki1119695-PROBIT            BELARUS                        Control           1       93    2553
[50-57.5)   6 months    ki1119695-PROBIT            BELARUS                        Maternal          0     1198    2553
[50-57.5)   6 months    ki1119695-PROBIT            BELARUS                        Maternal          1       75    2553
[50-57.5)   24 months   ki1119695-PROBIT            BELARUS                        Control           0       92     208
[50-57.5)   24 months   ki1119695-PROBIT            BELARUS                        Control           1        7     208
[50-57.5)   24 months   ki1119695-PROBIT            BELARUS                        Maternal          0       94     208
[50-57.5)   24 months   ki1119695-PROBIT            BELARUS                        Maternal          1       15     208
[42.5-50)   Birth       ki1119695-PROBIT            BELARUS                        Control           0      265     545
[42.5-50)   Birth       ki1119695-PROBIT            BELARUS                        Control           1        1     545
[42.5-50)   Birth       ki1119695-PROBIT            BELARUS                        Maternal          0      278     545
[42.5-50)   Birth       ki1119695-PROBIT            BELARUS                        Maternal          1        1     545
[42.5-50)   6 months    ki1119695-PROBIT            BELARUS                        Control           0      211     486
[42.5-50)   6 months    ki1119695-PROBIT            BELARUS                        Control           1       31     486
[42.5-50)   6 months    ki1119695-PROBIT            BELARUS                        Maternal          0      222     486
[42.5-50)   6 months    ki1119695-PROBIT            BELARUS                        Maternal          1       22     486
>=57.5      24 months   ki1119695-PROBIT            BELARUS                        Control           0      222     595
>=57.5      24 months   ki1119695-PROBIT            BELARUS                        Control           1       37     595
>=57.5      24 months   ki1119695-PROBIT            BELARUS                        Maternal          0      304     595
>=57.5      24 months   ki1119695-PROBIT            BELARUS                        Maternal          1       32     595
<42.5       Birth       ki1119695-PROBIT            BELARUS                        Control           0       14      32
<42.5       Birth       ki1119695-PROBIT            BELARUS                        Maternal          0       18      32
<42.5       6 months    ki1119695-PROBIT            BELARUS                        Control           0       10      28
<42.5       6 months    ki1119695-PROBIT            BELARUS                        Control           1        2      28
<42.5       6 months    ki1119695-PROBIT            BELARUS                        Maternal          0       12      28
<42.5       6 months    ki1119695-PROBIT            BELARUS                        Maternal          1        4      28
[42.5-50)   24 months   ki1119695-PROBIT            BELARUS                        Control           0       10      31
[42.5-50)   24 months   ki1119695-PROBIT            BELARUS                        Control           1        2      31
[42.5-50)   24 months   ki1119695-PROBIT            BELARUS                        Maternal          0       14      31
[42.5-50)   24 months   ki1119695-PROBIT            BELARUS                        Maternal          1        5      31
<42.5       24 months   ki1119695-PROBIT            BELARUS                        Maternal          1        1       1
[50-57.5)   Birth       ki1126311-ZVITAMBO          ZIMBABWE                       Control           0      751    3497
[50-57.5)   Birth       ki1126311-ZVITAMBO          ZIMBABWE                       Control           1      107    3497
[50-57.5)   Birth       ki1126311-ZVITAMBO          ZIMBABWE                       VitA              0     2327    3497
[50-57.5)   Birth       ki1126311-ZVITAMBO          ZIMBABWE                       VitA              1      312    3497
[50-57.5)   6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control           0      475    2362
[50-57.5)   6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control           1       96    2362
[50-57.5)   6 months    ki1126311-ZVITAMBO          ZIMBABWE                       VitA              0     1439    2362
[50-57.5)   6 months    ki1126311-ZVITAMBO          ZIMBABWE                       VitA              1      352    2362
>=57.5      6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control           0      896    4058
>=57.5      6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control           1      126    4058
>=57.5      6 months    ki1126311-ZVITAMBO          ZIMBABWE                       VitA              0     2640    4058
>=57.5      6 months    ki1126311-ZVITAMBO          ZIMBABWE                       VitA              1      396    4058
>=57.5      Birth       ki1126311-ZVITAMBO          ZIMBABWE                       Control           0     1373    5959
>=57.5      Birth       ki1126311-ZVITAMBO          ZIMBABWE                       Control           1      109    5959
>=57.5      Birth       ki1126311-ZVITAMBO          ZIMBABWE                       VitA              0     4119    5959
>=57.5      Birth       ki1126311-ZVITAMBO          ZIMBABWE                       VitA              1      358    5959
[42.5-50)   Birth       ki1126311-ZVITAMBO          ZIMBABWE                       Control           0      293    1388
[42.5-50)   Birth       ki1126311-ZVITAMBO          ZIMBABWE                       Control           1       49    1388
[42.5-50)   Birth       ki1126311-ZVITAMBO          ZIMBABWE                       VitA              0      900    1388
[42.5-50)   Birth       ki1126311-ZVITAMBO          ZIMBABWE                       VitA              1      146    1388
[42.5-50)   6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control           0      155     907
[42.5-50)   6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control           1       69     907
[42.5-50)   6 months    ki1126311-ZVITAMBO          ZIMBABWE                       VitA              0      523     907
[42.5-50)   6 months    ki1126311-ZVITAMBO          ZIMBABWE                       VitA              1      160     907
<42.5       Birth       ki1126311-ZVITAMBO          ZIMBABWE                       Control           0       24     146
<42.5       Birth       ki1126311-ZVITAMBO          ZIMBABWE                       Control           1        4     146
<42.5       Birth       ki1126311-ZVITAMBO          ZIMBABWE                       VitA              0       90     146
<42.5       Birth       ki1126311-ZVITAMBO          ZIMBABWE                       VitA              1       28     146
<42.5       6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control           0        7      97
<42.5       6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control           1        8      97
<42.5       6 months    ki1126311-ZVITAMBO          ZIMBABWE                       VitA              0       53      97
<42.5       6 months    ki1126311-ZVITAMBO          ZIMBABWE                       VitA              1       29      97
[42.5-50)   24 months   ki1126311-ZVITAMBO          ZIMBABWE                       VitA              0        1       5
[42.5-50)   24 months   ki1126311-ZVITAMBO          ZIMBABWE                       VitA              1        4       5
>=57.5      24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control           0        3       8
>=57.5      24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control           1        1       8
>=57.5      24 months   ki1126311-ZVITAMBO          ZIMBABWE                       VitA              0        0       8
>=57.5      24 months   ki1126311-ZVITAMBO          ZIMBABWE                       VitA              1        4       8
[50-57.5)   24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control           0        2      16
[50-57.5)   24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control           1        4      16
[50-57.5)   24 months   ki1126311-ZVITAMBO          ZIMBABWE                       VitA              0        3      16
[50-57.5)   24 months   ki1126311-ZVITAMBO          ZIMBABWE                       VitA              1        7      16
<42.5       24 months   ki1126311-ZVITAMBO          ZIMBABWE                       VitA              0        1       1
[42.5-50)   6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control           0       57     605
[42.5-50)   6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control           1       38     605
[42.5-50)   6 months    ki1148112-iLiNS-DOSE        MALAWI                         LNS               0      308     605
[42.5-50)   6 months    ki1148112-iLiNS-DOSE        MALAWI                         LNS               1      202     605
>=57.5      6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control           0       58     454
>=57.5      6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control           1       14     454
>=57.5      6 months    ki1148112-iLiNS-DOSE        MALAWI                         LNS               0      308     454
>=57.5      6 months    ki1148112-iLiNS-DOSE        MALAWI                         LNS               1       74     454
[42.5-50)   24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control           0       10     253
[42.5-50)   24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control           1       29     253
[42.5-50)   24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS               0       87     253
[42.5-50)   24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS               1      127     253
[50-57.5)   6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control           0       92     761
[50-57.5)   6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control           1       43     761
[50-57.5)   6 months    ki1148112-iLiNS-DOSE        MALAWI                         LNS               0      461     761
[50-57.5)   6 months    ki1148112-iLiNS-DOSE        MALAWI                         LNS               1      165     761
[50-57.5)   24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control           0       31     316
[50-57.5)   24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control           1       22     316
[50-57.5)   24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS               0      133     316
[50-57.5)   24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS               1      130     316
>=57.5      24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control           0       20     161
>=57.5      24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control           1       11     161
>=57.5      24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS               0       90     161
>=57.5      24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS               1       40     161
<42.5       6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control           0        7     103
<42.5       6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control           1       10     103
<42.5       6 months    ki1148112-iLiNS-DOSE        MALAWI                         LNS               0       51     103
<42.5       6 months    ki1148112-iLiNS-DOSE        MALAWI                         LNS               1       35     103
<42.5       24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control           0        1      41
<42.5       24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control           1        4      41
<42.5       24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS               0       10      41
<42.5       24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS               1       26      41
[50-57.5)   6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Control           0      116     413
[50-57.5)   6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Control           1       29     413
[50-57.5)   6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Maternal          0      209     413
[50-57.5)   6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Maternal          1       59     413
[42.5-50)   6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Control           0       67     274
[42.5-50)   6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Control           1       27     274
[42.5-50)   6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Maternal          0      124     274
[42.5-50)   6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Maternal          1       56     274
>=57.5      6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Control           0       77     289
>=57.5      6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Control           1       19     289
>=57.5      6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Maternal          0      169     289
>=57.5      6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Maternal          1       24     289
<42.5       Birth       ki1148112-iLiNS-DYAD-M      MALAWI                         Maternal          1        1       1
<42.5       6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Control           0        8      49
<42.5       6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Control           1        7      49
<42.5       6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Maternal          0       22      49
<42.5       6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Maternal          1       12      49
[50-57.5)   24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control           0        2      22
[50-57.5)   24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control           1        2      22
[50-57.5)   24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Maternal          0       14      22
[50-57.5)   24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Maternal          1        4      22
>=57.5      24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control           0        2      19
>=57.5      24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control           1        1      19
>=57.5      24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Maternal          0        9      19
>=57.5      24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Maternal          1        7      19
[42.5-50)   24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control           0        1      20
[42.5-50)   24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control           1        4      20
[42.5-50)   24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Maternal          0       10      20
[42.5-50)   24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Maternal          1        5      20
<42.5       24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Maternal          1        4       4
[50-57.5)   6 months    ki1148112-LCNI-5            MALAWI                         Control           0       55     305
[50-57.5)   6 months    ki1148112-LCNI-5            MALAWI                         Control           1       21     305
[50-57.5)   6 months    ki1148112-LCNI-5            MALAWI                         LNS               0      100     305
[50-57.5)   6 months    ki1148112-LCNI-5            MALAWI                         LNS               1       54     305
[50-57.5)   6 months    ki1148112-LCNI-5            MALAWI                         Other             0       47     305
[50-57.5)   6 months    ki1148112-LCNI-5            MALAWI                         Other             1       28     305
[50-57.5)   24 months   ki1148112-LCNI-5            MALAWI                         Control           0       26     150
[50-57.5)   24 months   ki1148112-LCNI-5            MALAWI                         Control           1       12     150
[50-57.5)   24 months   ki1148112-LCNI-5            MALAWI                         LNS               0       40     150
[50-57.5)   24 months   ki1148112-LCNI-5            MALAWI                         LNS               1       30     150
[50-57.5)   24 months   ki1148112-LCNI-5            MALAWI                         Other             0       26     150
[50-57.5)   24 months   ki1148112-LCNI-5            MALAWI                         Other             1       16     150
[42.5-50)   6 months    ki1148112-LCNI-5            MALAWI                         Control           0       48     333
[42.5-50)   6 months    ki1148112-LCNI-5            MALAWI                         Control           1       31     333
[42.5-50)   6 months    ki1148112-LCNI-5            MALAWI                         LNS               0      101     333
[42.5-50)   6 months    ki1148112-LCNI-5            MALAWI                         LNS               1       64     333
[42.5-50)   6 months    ki1148112-LCNI-5            MALAWI                         Other             0       52     333
[42.5-50)   6 months    ki1148112-LCNI-5            MALAWI                         Other             1       37     333
<42.5       6 months    ki1148112-LCNI-5            MALAWI                         Control           0        8      72
<42.5       6 months    ki1148112-LCNI-5            MALAWI                         Control           1       12      72
<42.5       6 months    ki1148112-LCNI-5            MALAWI                         LNS               0       15      72
<42.5       6 months    ki1148112-LCNI-5            MALAWI                         LNS               1       21      72
<42.5       6 months    ki1148112-LCNI-5            MALAWI                         Other             0        5      72
<42.5       6 months    ki1148112-LCNI-5            MALAWI                         Other             1       11      72
[42.5-50)   24 months   ki1148112-LCNI-5            MALAWI                         Control           0       22     146
[42.5-50)   24 months   ki1148112-LCNI-5            MALAWI                         Control           1       24     146
[42.5-50)   24 months   ki1148112-LCNI-5            MALAWI                         LNS               0       43     146
[42.5-50)   24 months   ki1148112-LCNI-5            MALAWI                         LNS               1       26     146
[42.5-50)   24 months   ki1148112-LCNI-5            MALAWI                         Other             0       22     146
[42.5-50)   24 months   ki1148112-LCNI-5            MALAWI                         Other             1        9     146
>=57.5      6 months    ki1148112-LCNI-5            MALAWI                         Control           0       26     127
>=57.5      6 months    ki1148112-LCNI-5            MALAWI                         Control           1        7     127
>=57.5      6 months    ki1148112-LCNI-5            MALAWI                         LNS               0       51     127
>=57.5      6 months    ki1148112-LCNI-5            MALAWI                         LNS               1       15     127
>=57.5      6 months    ki1148112-LCNI-5            MALAWI                         Other             0       21     127
>=57.5      6 months    ki1148112-LCNI-5            MALAWI                         Other             1        7     127
>=57.5      24 months   ki1148112-LCNI-5            MALAWI                         Control           0       18      59
>=57.5      24 months   ki1148112-LCNI-5            MALAWI                         Control           1        2      59
>=57.5      24 months   ki1148112-LCNI-5            MALAWI                         LNS               0       21      59
>=57.5      24 months   ki1148112-LCNI-5            MALAWI                         LNS               1        6      59
>=57.5      24 months   ki1148112-LCNI-5            MALAWI                         Other             0       10      59
>=57.5      24 months   ki1148112-LCNI-5            MALAWI                         Other             1        2      59
<42.5       24 months   ki1148112-LCNI-5            MALAWI                         Control           0        3      30
<42.5       24 months   ki1148112-LCNI-5            MALAWI                         Control           1        4      30
<42.5       24 months   ki1148112-LCNI-5            MALAWI                         LNS               0        5      30
<42.5       24 months   ki1148112-LCNI-5            MALAWI                         LNS               1        8      30
<42.5       24 months   ki1148112-LCNI-5            MALAWI                         Other             0        5      30
<42.5       24 months   ki1148112-LCNI-5            MALAWI                         Other             1        5      30
[50-57.5)   6 months    iLiNS_DYADM_LNS             MALAWI                         Control           0      116     279
[50-57.5)   6 months    iLiNS_DYADM_LNS             MALAWI                         Control           1       29     279
[50-57.5)   6 months    iLiNS_DYADM_LNS             MALAWI                         LNS               0      105     279
[50-57.5)   6 months    iLiNS_DYADM_LNS             MALAWI                         LNS               1       29     279
>=57.5      6 months    iLiNS_DYADM_LNS             MALAWI                         Control           0       77     192
>=57.5      6 months    iLiNS_DYADM_LNS             MALAWI                         Control           1       19     192
>=57.5      6 months    iLiNS_DYADM_LNS             MALAWI                         LNS               0       84     192
>=57.5      6 months    iLiNS_DYADM_LNS             MALAWI                         LNS               1       12     192
<42.5       Birth       iLiNS_DYADM_LNS             MALAWI                         LNS               1        1       1
<42.5       6 months    iLiNS_DYADM_LNS             MALAWI                         Control           0        8      33
<42.5       6 months    iLiNS_DYADM_LNS             MALAWI                         Control           1        7      33
<42.5       6 months    iLiNS_DYADM_LNS             MALAWI                         LNS               0       13      33
<42.5       6 months    iLiNS_DYADM_LNS             MALAWI                         LNS               1        5      33
[42.5-50)   6 months    iLiNS_DYADM_LNS             MALAWI                         Control           0       67     177
[42.5-50)   6 months    iLiNS_DYADM_LNS             MALAWI                         Control           1       27     177
[42.5-50)   6 months    iLiNS_DYADM_LNS             MALAWI                         LNS               0       56     177
[42.5-50)   6 months    iLiNS_DYADM_LNS             MALAWI                         LNS               1       27     177
[50-57.5)   24 months   iLiNS_DYADM_LNS             MALAWI                         Control           0        2      14
[50-57.5)   24 months   iLiNS_DYADM_LNS             MALAWI                         Control           1        2      14
[50-57.5)   24 months   iLiNS_DYADM_LNS             MALAWI                         LNS               0        9      14
[50-57.5)   24 months   iLiNS_DYADM_LNS             MALAWI                         LNS               1        1      14
>=57.5      24 months   iLiNS_DYADM_LNS             MALAWI                         Control           0        2       6
>=57.5      24 months   iLiNS_DYADM_LNS             MALAWI                         Control           1        1       6
>=57.5      24 months   iLiNS_DYADM_LNS             MALAWI                         LNS               0        1       6
>=57.5      24 months   iLiNS_DYADM_LNS             MALAWI                         LNS               1        2       6
[42.5-50)   24 months   iLiNS_DYADM_LNS             MALAWI                         Control           0        1      13
[42.5-50)   24 months   iLiNS_DYADM_LNS             MALAWI                         Control           1        4      13
[42.5-50)   24 months   iLiNS_DYADM_LNS             MALAWI                         LNS               0        5      13
[42.5-50)   24 months   iLiNS_DYADM_LNS             MALAWI                         LNS               1        3      13
<42.5       24 months   iLiNS_DYADM_LNS             MALAWI                         LNS               1        2       2


The following strata were considered:

* mwtkg: [42.5-50), agecat: 24 months, studyid: iLiNS_DYADM_LNS, country: MALAWI
* mwtkg: [42.5-50), agecat: 24 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* mwtkg: [42.5-50), agecat: 24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* mwtkg: [42.5-50), agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* mwtkg: [42.5-50), agecat: 24 months, studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO
* mwtkg: [42.5-50), agecat: 24 months, studyid: ki1119695-PROBIT, country: BELARUS
* mwtkg: [42.5-50), agecat: 24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* mwtkg: [42.5-50), agecat: 24 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* mwtkg: [42.5-50), agecat: 24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* mwtkg: [42.5-50), agecat: 24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* mwtkg: [42.5-50), agecat: 6 months, studyid: iLiNS_DYADM_LNS, country: MALAWI
* mwtkg: [42.5-50), agecat: 6 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* mwtkg: [42.5-50), agecat: 6 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* mwtkg: [42.5-50), agecat: 6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* mwtkg: [42.5-50), agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* mwtkg: [42.5-50), agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* mwtkg: [42.5-50), agecat: 6 months, studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO
* mwtkg: [42.5-50), agecat: 6 months, studyid: ki1119695-PROBIT, country: BELARUS
* mwtkg: [42.5-50), agecat: 6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* mwtkg: [42.5-50), agecat: 6 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* mwtkg: [42.5-50), agecat: 6 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* mwtkg: [42.5-50), agecat: 6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* mwtkg: [42.5-50), agecat: Birth, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* mwtkg: [42.5-50), agecat: Birth, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* mwtkg: [42.5-50), agecat: Birth, studyid: ki1119695-PROBIT, country: BELARUS
* mwtkg: [42.5-50), agecat: Birth, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* mwtkg: [50-57.5), agecat: 24 months, studyid: iLiNS_DYADM_LNS, country: MALAWI
* mwtkg: [50-57.5), agecat: 24 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* mwtkg: [50-57.5), agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* mwtkg: [50-57.5), agecat: 24 months, studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO
* mwtkg: [50-57.5), agecat: 24 months, studyid: ki1119695-PROBIT, country: BELARUS
* mwtkg: [50-57.5), agecat: 24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* mwtkg: [50-57.5), agecat: 24 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* mwtkg: [50-57.5), agecat: 24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* mwtkg: [50-57.5), agecat: 24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* mwtkg: [50-57.5), agecat: 6 months, studyid: iLiNS_DYADM_LNS, country: MALAWI
* mwtkg: [50-57.5), agecat: 6 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* mwtkg: [50-57.5), agecat: 6 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* mwtkg: [50-57.5), agecat: 6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* mwtkg: [50-57.5), agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* mwtkg: [50-57.5), agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* mwtkg: [50-57.5), agecat: 6 months, studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO
* mwtkg: [50-57.5), agecat: 6 months, studyid: ki1119695-PROBIT, country: BELARUS
* mwtkg: [50-57.5), agecat: 6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* mwtkg: [50-57.5), agecat: 6 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* mwtkg: [50-57.5), agecat: 6 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* mwtkg: [50-57.5), agecat: 6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* mwtkg: [50-57.5), agecat: Birth, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* mwtkg: [50-57.5), agecat: Birth, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* mwtkg: [50-57.5), agecat: Birth, studyid: ki1119695-PROBIT, country: BELARUS
* mwtkg: [50-57.5), agecat: Birth, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* mwtkg: <42.5, agecat: 24 months, studyid: iLiNS_DYADM_LNS, country: MALAWI
* mwtkg: <42.5, agecat: 24 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* mwtkg: <42.5, agecat: 24 months, studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO
* mwtkg: <42.5, agecat: 24 months, studyid: ki1119695-PROBIT, country: BELARUS
* mwtkg: <42.5, agecat: 24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* mwtkg: <42.5, agecat: 24 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* mwtkg: <42.5, agecat: 24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* mwtkg: <42.5, agecat: 24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* mwtkg: <42.5, agecat: 6 months, studyid: iLiNS_DYADM_LNS, country: MALAWI
* mwtkg: <42.5, agecat: 6 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* mwtkg: <42.5, agecat: 6 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* mwtkg: <42.5, agecat: 6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* mwtkg: <42.5, agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* mwtkg: <42.5, agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* mwtkg: <42.5, agecat: 6 months, studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO
* mwtkg: <42.5, agecat: 6 months, studyid: ki1119695-PROBIT, country: BELARUS
* mwtkg: <42.5, agecat: 6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* mwtkg: <42.5, agecat: 6 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* mwtkg: <42.5, agecat: 6 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* mwtkg: <42.5, agecat: 6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* mwtkg: <42.5, agecat: Birth, studyid: iLiNS_DYADM_LNS, country: MALAWI
* mwtkg: <42.5, agecat: Birth, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* mwtkg: <42.5, agecat: Birth, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* mwtkg: <42.5, agecat: Birth, studyid: ki1119695-PROBIT, country: BELARUS
* mwtkg: <42.5, agecat: Birth, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* mwtkg: <42.5, agecat: Birth, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* mwtkg: >=57.5, agecat: 24 months, studyid: iLiNS_DYADM_LNS, country: MALAWI
* mwtkg: >=57.5, agecat: 24 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* mwtkg: >=57.5, agecat: 24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* mwtkg: >=57.5, agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* mwtkg: >=57.5, agecat: 24 months, studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO
* mwtkg: >=57.5, agecat: 24 months, studyid: ki1119695-PROBIT, country: BELARUS
* mwtkg: >=57.5, agecat: 24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* mwtkg: >=57.5, agecat: 24 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* mwtkg: >=57.5, agecat: 24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* mwtkg: >=57.5, agecat: 24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* mwtkg: >=57.5, agecat: 6 months, studyid: iLiNS_DYADM_LNS, country: MALAWI
* mwtkg: >=57.5, agecat: 6 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* mwtkg: >=57.5, agecat: 6 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* mwtkg: >=57.5, agecat: 6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* mwtkg: >=57.5, agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* mwtkg: >=57.5, agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* mwtkg: >=57.5, agecat: 6 months, studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO
* mwtkg: >=57.5, agecat: 6 months, studyid: ki1119695-PROBIT, country: BELARUS
* mwtkg: >=57.5, agecat: 6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* mwtkg: >=57.5, agecat: 6 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* mwtkg: >=57.5, agecat: 6 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* mwtkg: >=57.5, agecat: 6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* mwtkg: >=57.5, agecat: Birth, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* mwtkg: >=57.5, agecat: Birth, studyid: ki1119695-PROBIT, country: BELARUS
* mwtkg: >=57.5, agecat: Birth, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE

### Dropped Strata

Some strata were dropped due to rare outcomes:

* mwtkg: >=57.5, agecat: 6 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* mwtkg: [50-57.5), agecat: 6 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* mwtkg: [50-57.5), agecat: 6 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* mwtkg: <42.5, agecat: 6 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* mwtkg: >=57.5, agecat: 6 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* mwtkg: <42.5, agecat: Birth, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* mwtkg: [42.5-50), agecat: Birth, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* mwtkg: [50-57.5), agecat: Birth, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* mwtkg: >=57.5, agecat: 6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* mwtkg: >=57.5, agecat: Birth, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* mwtkg: [50-57.5), agecat: Birth, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* mwtkg: [50-57.5), agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* mwtkg: <42.5, agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* mwtkg: [42.5-50), agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* mwtkg: [42.5-50), agecat: 24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* mwtkg: >=57.5, agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* mwtkg: >=57.5, agecat: 24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* mwtkg: [42.5-50), agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* mwtkg: <42.5, agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* mwtkg: [50-57.5), agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* mwtkg: >=57.5, agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* mwtkg: [42.5-50), agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* mwtkg: <42.5, agecat: 6 months, studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO
* mwtkg: [50-57.5), agecat: Birth, studyid: ki1119695-PROBIT, country: BELARUS
* mwtkg: [42.5-50), agecat: Birth, studyid: ki1119695-PROBIT, country: BELARUS
* mwtkg: <42.5, agecat: 6 months, studyid: ki1119695-PROBIT, country: BELARUS
* mwtkg: [42.5-50), agecat: 24 months, studyid: ki1119695-PROBIT, country: BELARUS
* mwtkg: <42.5, agecat: 24 months, studyid: ki1119695-PROBIT, country: BELARUS
* mwtkg: <42.5, agecat: Birth, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* mwtkg: [42.5-50), agecat: 24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* mwtkg: >=57.5, agecat: 24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* mwtkg: [50-57.5), agecat: 24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* mwtkg: <42.5, agecat: 24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* mwtkg: <42.5, agecat: 24 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* mwtkg: <42.5, agecat: Birth, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* mwtkg: [50-57.5), agecat: 24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* mwtkg: >=57.5, agecat: 24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* mwtkg: [42.5-50), agecat: 24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* mwtkg: <42.5, agecat: 24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* mwtkg: >=57.5, agecat: 24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* mwtkg: <42.5, agecat: 24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* mwtkg: <42.5, agecat: Birth, studyid: iLiNS_DYADM_LNS, country: MALAWI
* mwtkg: [50-57.5), agecat: 24 months, studyid: iLiNS_DYADM_LNS, country: MALAWI
* mwtkg: >=57.5, agecat: 24 months, studyid: iLiNS_DYADM_LNS, country: MALAWI
* mwtkg: [42.5-50), agecat: 24 months, studyid: iLiNS_DYADM_LNS, country: MALAWI
* mwtkg: <42.5, agecat: 24 months, studyid: iLiNS_DYADM_LNS, country: MALAWI

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness



```
##           stunted
## tr          0  1
##   Control   0  0
##   LNS       0  0
##   Maternal  0  0
##   Other     0  0
##   VitA      0  0
##   Zinc     10 12
##           stunted
## tr          0
##   Control  14
##   LNS       0
##   Maternal 18
##   Other     0
##   VitA      0
##   Zinc      0
##           stunted
## tr           0   1
##   Control    0   0
##   LNS        0   0
##   Maternal   0   0
##   Other      0   0
##   VitA       0   0
##   Zinc     217  65
##           stunted
## tr           0   1
##   Control    0   0
##   LNS        0   0
##   Maternal   0   0
##   Other      0   0
##   VitA       0   0
##   Zinc     167  10
##           stunted
## tr           0   1
##   Control    0   0
##   LNS        0   0
##   Maternal   0   0
##   Other      0   0
##   VitA       0   0
##   Zinc     140 105
##           stunted
## tr           0   1
##   Control    0   0
##   LNS        0   0
##   Maternal   0   0
##   Other      0   0
##   VitA       0   0
##   Zinc     116  20
##           stunted
## tr           0   1
##   Control    0   0
##   LNS        0   0
##   Maternal   0   0
##   Other      0   0
##   VitA       0   0
##   Zinc     259 132
##           stunted
## tr           0   1
##   Control    0   0
##   LNS        0   0
##   Maternal   0   0
##   Other      0   0
##   VitA       0   0
##   Zinc     181  29
```




# Results Detail

## Results Plots
![](/tmp/f2219912-b8b8-4272-a336-ab013651877b/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/f2219912-b8b8-4272-a336-ab013651877b/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/f2219912-b8b8-4272-a336-ab013651877b/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/f2219912-b8b8-4272-a336-ab013651877b/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


mwtkg       agecat      studyid                     country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ----------  --------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
>=57.5      Birth       ki1119695-PROBIT            BELARUS                        Control              NA                0.0024034   0.0009180   0.0038887
>=57.5      Birth       ki1119695-PROBIT            BELARUS                        Maternal             NA                0.0016994   0.0009757   0.0024231
>=57.5      Birth       ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                0.0735493   0.0702438   0.0768547
>=57.5      Birth       ki1126311-ZVITAMBO          ZIMBABWE                       VitA                 NA                0.0799643   0.0739945   0.0859340
>=57.5      6 months    iLiNS_DYADM_LNS             MALAWI                         Control              NA                0.1979167   0.1579620   0.2378713
>=57.5      6 months    iLiNS_DYADM_LNS             MALAWI                         LNS                  NA                0.1250000   0.0918353   0.1581647
>=57.5      6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              NA                0.1115385   0.0732563   0.1498206
>=57.5      6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                NA                0.0988142   0.0620260   0.1356024
>=57.5      6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                 NA                0.1046931   0.0791872   0.1301991
>=57.5      6 months    ki1119695-PROBIT            BELARUS                        Control              NA                0.0613897   0.0508106   0.0719688
>=57.5      6 months    ki1119695-PROBIT            BELARUS                        Maternal             NA                0.0524220   0.0447455   0.0600986
>=57.5      6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                0.1232877   0.1182107   0.1283646
>=57.5      6 months    ki1126311-ZVITAMBO          ZIMBABWE                       VitA                 NA                0.1304348   0.1214711   0.1393985
>=57.5      6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                0.1944444   0.1799306   0.2089583
>=57.5      6 months    ki1148112-iLiNS-DOSE        MALAWI                         LNS                  NA                0.1937173   0.1603339   0.2271007
>=57.5      6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Control              NA                0.1979167   0.1713957   0.2244376
>=57.5      6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Maternal             NA                0.1243523   0.0932084   0.1554962
>=57.5      6 months    ki1148112-LCNI-5            MALAWI                         Control              NA                0.2121212   0.0720885   0.3521539
>=57.5      6 months    ki1148112-LCNI-5            MALAWI                         LNS                  NA                0.2272727   0.1257696   0.3287759
>=57.5      6 months    ki1148112-LCNI-5            MALAWI                         Other                NA                0.2500000   0.0889776   0.4110224
>=57.5      24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                0.2000000   0.0424918   0.3575082
>=57.5      24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                  NA                0.1875000   0.0516528   0.3233472
>=57.5      24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                NA                0.1851852   0.0811096   0.2892608
>=57.5      24 months   ki1119695-PROBIT            BELARUS                        Control              NA                0.1428571   0.1059892   0.1797251
>=57.5      24 months   ki1119695-PROBIT            BELARUS                        Maternal             NA                0.0952381   0.0262378   0.1642384
>=57.5      24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                0.3548387   0.3223071   0.3873703
>=57.5      24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS                  NA                0.3076923   0.2434302   0.3719544
<42.5       Birth       ki1000304b-SAS-CompFeed     INDIA                          Control              NA                0.4000000   0.2976738   0.5023262
<42.5       Birth       ki1000304b-SAS-CompFeed     INDIA                          Other                NA                0.5000000   0.2743627   0.7256373
<42.5       6 months    iLiNS_DYADM_LNS             MALAWI                         Control              NA                0.4666667   0.3501295   0.5832038
<42.5       6 months    iLiNS_DYADM_LNS             MALAWI                         LNS                  NA                0.2777778   0.1631641   0.3923915
<42.5       6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                0.2656250   0.1572062   0.3740438
<42.5       6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                  NA                0.2597403   0.1616067   0.3578738
<42.5       6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Other                NA                0.2192982   0.1431940   0.2954025
<42.5       6 months    ki1000304b-SAS-CompFeed     INDIA                          Control              NA                0.4285714   0.3795080   0.4776348
<42.5       6 months    ki1000304b-SAS-CompFeed     INDIA                          Other                NA                0.5074627   0.3822038   0.6327215
<42.5       6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                0.5333333   0.4940892   0.5725775
<42.5       6 months    ki1126311-ZVITAMBO          ZIMBABWE                       VitA                 NA                0.3536585   0.2657246   0.4415925
<42.5       6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                0.5882353   0.5494333   0.6270373
<42.5       6 months    ki1148112-iLiNS-DOSE        MALAWI                         LNS                  NA                0.4069767   0.3198605   0.4940930
<42.5       6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Control              NA                0.4666667   0.3885798   0.5447535
<42.5       6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Maternal             NA                0.3529412   0.2403273   0.4655551
<42.5       6 months    ki1148112-LCNI-5            MALAWI                         Control              NA                0.6000000   0.3837900   0.8162100
<42.5       6 months    ki1148112-LCNI-5            MALAWI                         LNS                  NA                0.5833333   0.4211573   0.7455094
<42.5       6 months    ki1148112-LCNI-5            MALAWI                         Other                NA                0.6875000   0.4587893   0.9162107
<42.5       24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                0.5588235   0.4623558   0.6552913
<42.5       24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                  NA                0.4615385   0.3711054   0.5519715
<42.5       24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                NA                0.5446429   0.4793528   0.6099329
[42.5-50)   Birth       ki1000304b-SAS-CompFeed     INDIA                          Control              NA                0.2333333   0.1715045   0.2951622
[42.5-50)   Birth       ki1000304b-SAS-CompFeed     INDIA                          Other                NA                0.2380952   0.1681767   0.3080137
[42.5-50)   Birth       ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                0.1432749   0.1341225   0.1524272
[42.5-50)   Birth       ki1126311-ZVITAMBO          ZIMBABWE                       VitA                 NA                0.1395793   0.1237469   0.1554118
[42.5-50)   6 months    iLiNS_DYADM_LNS             MALAWI                         Control              NA                0.2872340   0.2385193   0.3359488
[42.5-50)   6 months    iLiNS_DYADM_LNS             MALAWI                         LNS                  NA                0.3253012   0.2779052   0.3726972
[42.5-50)   6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                0.1379310   0.0490110   0.2268510
[42.5-50)   6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                  NA                0.1014493   0.0300683   0.1728303
[42.5-50)   6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Other                NA                0.0960000   0.0442541   0.1477459
[42.5-50)   6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Control              NA                0.2592593   0.1854876   0.3330309
[42.5-50)   6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Maternal             NA                0.2941176   0.2080433   0.3801920
[42.5-50)   6 months    ki1000304b-SAS-CompFeed     INDIA                          Control              NA                0.3211679   0.2756339   0.3667019
[42.5-50)   6 months    ki1000304b-SAS-CompFeed     INDIA                          Other                NA                0.2847222   0.2538927   0.3155518
[42.5-50)   6 months    ki1119695-PROBIT            BELARUS                        Control              NA                0.1280992   0.1017212   0.1544771
[42.5-50)   6 months    ki1119695-PROBIT            BELARUS                        Maternal             NA                0.0901639   0.0690230   0.1113048
[42.5-50)   6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                0.3080357   0.2930958   0.3229756
[42.5-50)   6 months    ki1126311-ZVITAMBO          ZIMBABWE                       VitA                 NA                0.2342606   0.2103285   0.2581927
[42.5-50)   6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                0.4000000   0.3845183   0.4154817
[42.5-50)   6 months    ki1148112-iLiNS-DOSE        MALAWI                         LNS                  NA                0.3960784   0.3602673   0.4318896
[42.5-50)   6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Control              NA                0.2872340   0.2557966   0.3186715
[42.5-50)   6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Maternal             NA                0.3111111   0.2666009   0.3556214
[42.5-50)   6 months    ki1148112-LCNI-5            MALAWI                         Control              NA                0.3924051   0.2845695   0.5002406
[42.5-50)   6 months    ki1148112-LCNI-5            MALAWI                         LNS                  NA                0.3878788   0.3134183   0.4623393
[42.5-50)   6 months    ki1148112-LCNI-5            MALAWI                         Other                NA                0.4157303   0.3131843   0.5182763
[42.5-50)   24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                0.3960396   0.3005485   0.4915307
[42.5-50)   24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                  NA                0.4200000   0.3231524   0.5168476
[42.5-50)   24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                NA                0.3922414   0.3293417   0.4551411
[42.5-50)   24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                0.7435897   0.7224230   0.7647565
[42.5-50)   24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS                  NA                0.5934579   0.5376826   0.6492333
[42.5-50)   24 months   ki1148112-LCNI-5            MALAWI                         Control              NA                0.5217391   0.3768884   0.6665899
[42.5-50)   24 months   ki1148112-LCNI-5            MALAWI                         LNS                  NA                0.3768116   0.2620787   0.4915444
[42.5-50)   24 months   ki1148112-LCNI-5            MALAWI                         Other                NA                0.2903226   0.1299868   0.4506584
[50-57.5)   Birth       ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                0.1247086   0.1192838   0.1301334
[50-57.5)   Birth       ki1126311-ZVITAMBO          ZIMBABWE                       VitA                 NA                0.1182266   0.1089290   0.1275242
[50-57.5)   6 months    iLiNS_DYADM_LNS             MALAWI                         Control              NA                0.2000000   0.1661025   0.2338975
[50-57.5)   6 months    iLiNS_DYADM_LNS             MALAWI                         LNS                  NA                0.2164179   0.1828700   0.2499658
[50-57.5)   6 months    ki1000304b-SAS-CompFeed     INDIA                          Control              NA                0.1463415   0.1379681   0.1547148
[50-57.5)   6 months    ki1000304b-SAS-CompFeed     INDIA                          Other                NA                0.1707317   0.1405383   0.2009251
[50-57.5)   6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              NA                0.1351351   0.0714647   0.1988056
[50-57.5)   6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                NA                0.0825688   0.0308412   0.1342964
[50-57.5)   6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                 NA                0.0995475   0.0600299   0.1390651
[50-57.5)   6 months    ki1119695-PROBIT            BELARUS                        Control              NA                0.0726563   0.0616760   0.0836365
[50-57.5)   6 months    ki1119695-PROBIT            BELARUS                        Maternal             NA                0.0589159   0.0481277   0.0697042
[50-57.5)   6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                0.1681261   0.1607092   0.1755430
[50-57.5)   6 months    ki1126311-ZVITAMBO          ZIMBABWE                       VitA                 NA                0.1965382   0.1825805   0.2104960
[50-57.5)   6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                0.3185185   0.3045674   0.3324697
[50-57.5)   6 months    ki1148112-iLiNS-DOSE        MALAWI                         LNS                  NA                0.2635783   0.2351694   0.2919872
[50-57.5)   6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Control              NA                0.2000000   0.1771141   0.2228859
[50-57.5)   6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Maternal             NA                0.2201493   0.1879196   0.2523789
[50-57.5)   6 months    ki1148112-LCNI-5            MALAWI                         Control              NA                0.2763158   0.1756152   0.3770163
[50-57.5)   6 months    ki1148112-LCNI-5            MALAWI                         LNS                  NA                0.3506494   0.2751615   0.4261372
[50-57.5)   6 months    ki1148112-LCNI-5            MALAWI                         Other                NA                0.3733333   0.2636862   0.4829805
[50-57.5)   24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                0.3023256   0.1647105   0.4399407
[50-57.5)   24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                  NA                0.2413793   0.1309753   0.3517833
[50-57.5)   24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                NA                0.2929293   0.2030558   0.3828028
[50-57.5)   24 months   ki1119695-PROBIT            BELARUS                        Control              NA                0.0707071   0.0012753   0.1401388
[50-57.5)   24 months   ki1119695-PROBIT            BELARUS                        Maternal             NA                0.1376147   0.0950304   0.1801989
[50-57.5)   24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                0.4150943   0.3928098   0.4373789
[50-57.5)   24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS                  NA                0.4942966   0.4439269   0.5446662
[50-57.5)   24 months   ki1148112-LCNI-5            MALAWI                         Control              NA                0.3157895   0.1675027   0.4640763
[50-57.5)   24 months   ki1148112-LCNI-5            MALAWI                         LNS                  NA                0.4285714   0.3122542   0.5448887
[50-57.5)   24 months   ki1148112-LCNI-5            MALAWI                         Other                NA                0.3809524   0.2335945   0.5283102


### Parameter: E(Y)


mwtkg       agecat      studyid                     country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ----------  --------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
>=57.5      Birth       ki1119695-PROBIT            BELARUS                        NA                   NA                0.0020410   0.0003864   0.0036957
>=57.5      Birth       ki1126311-ZVITAMBO          ZIMBABWE                       NA                   NA                0.0783689   0.0715447   0.0851930
>=57.5      6 months    iLiNS_DYADM_LNS             MALAWI                         NA                   NA                0.1614583   0.1092759   0.2136407
>=57.5      6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1049672   0.0865673   0.1233671
>=57.5      6 months    ki1119695-PROBIT            BELARUS                        NA                   NA                0.0568689   0.0433967   0.0703411
>=57.5      6 months    ki1126311-ZVITAMBO          ZIMBABWE                       NA                   NA                0.1286348   0.1183327   0.1389369
>=57.5      6 months    ki1148112-iLiNS-DOSE        MALAWI                         NA                   NA                0.1938326   0.1574306   0.2302346
>=57.5      6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         NA                   NA                0.1487889   0.1076876   0.1898902
>=57.5      6 months    ki1148112-LCNI-5            MALAWI                         NA                   NA                0.2283465   0.1550520   0.3016409
>=57.5      24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     NA                   NA                0.1891892   0.1159979   0.2623805
>=57.5      24 months   ki1119695-PROBIT            BELARUS                        NA                   NA                0.1159664   0.0389195   0.1930133
>=57.5      24 months   ki1148112-iLiNS-DOSE        MALAWI                         NA                   NA                0.3167702   0.2446854   0.3888550
<42.5       Birth       ki1000304b-SAS-CompFeed     INDIA                          NA                   NA                0.4333333   0.1904126   0.6762541
<42.5       6 months    iLiNS_DYADM_LNS             MALAWI                         NA                   NA                0.3636364   0.1969656   0.5303071
<42.5       6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     NA                   NA                0.2431373   0.1903820   0.2958925
<42.5       6 months    ki1000304b-SAS-CompFeed     INDIA                          NA                   NA                0.4715447   0.3331095   0.6099799
<42.5       6 months    ki1126311-ZVITAMBO          ZIMBABWE                       NA                   NA                0.3814433   0.2842766   0.4786099
<42.5       6 months    ki1148112-iLiNS-DOSE        MALAWI                         NA                   NA                0.4368932   0.3406365   0.5331499
<42.5       6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         NA                   NA                0.3877551   0.2499171   0.5255931
<42.5       6 months    ki1148112-LCNI-5            MALAWI                         NA                   NA                0.6111111   0.4977167   0.7245056
<42.5       24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     NA                   NA                0.5259594   0.4794092   0.5725095
[42.5-50)   Birth       ki1000304b-SAS-CompFeed     INDIA                          NA                   NA                0.2361111   0.1428378   0.3293844
[42.5-50)   Birth       ki1126311-ZVITAMBO          ZIMBABWE                       NA                   NA                0.1404899   0.1222023   0.1587776
[42.5-50)   6 months    iLiNS_DYADM_LNS             MALAWI                         NA                   NA                0.3050847   0.2370598   0.3731096
[42.5-50)   6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     NA                   NA                0.1071429   0.0688794   0.1454063
[42.5-50)   6 months    ki1000125-AgaKhanUniv       PAKISTAN                       NA                   NA                0.2786885   0.1652414   0.3921356
[42.5-50)   6 months    ki1000304b-SAS-CompFeed     INDIA                          NA                   NA                0.3024911   0.2458460   0.3591362
[42.5-50)   6 months    ki1119695-PROBIT            BELARUS                        NA                   NA                0.1090535   0.0741104   0.1439966
[42.5-50)   6 months    ki1126311-ZVITAMBO          ZIMBABWE                       NA                   NA                0.2524807   0.2241922   0.2807692
[42.5-50)   6 months    ki1148112-iLiNS-DOSE        MALAWI                         NA                   NA                0.3966942   0.3576797   0.4357087
[42.5-50)   6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         NA                   NA                0.3029197   0.2484102   0.3574292
[42.5-50)   6 months    ki1148112-LCNI-5            MALAWI                         NA                   NA                0.3963964   0.3437802   0.4490126
[42.5-50)   24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     NA                   NA                0.3995381   0.3533502   0.4457260
[42.5-50)   24 months   ki1148112-iLiNS-DOSE        MALAWI                         NA                   NA                0.6166008   0.5565698   0.6766318
[42.5-50)   24 months   ki1148112-LCNI-5            MALAWI                         NA                   NA                0.4041096   0.3242372   0.4839820
[50-57.5)   Birth       ki1126311-ZVITAMBO          ZIMBABWE                       NA                   NA                0.1198170   0.1090521   0.1305818
[50-57.5)   6 months    iLiNS_DYADM_LNS             MALAWI                         NA                   NA                0.2078853   0.1601838   0.2555868
[50-57.5)   6 months    ki1000304b-SAS-CompFeed     INDIA                          NA                   NA                0.1585366   0.1268738   0.1901994
[50-57.5)   6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1043084   0.0757482   0.1328685
[50-57.5)   6 months    ki1119695-PROBIT            BELARUS                        NA                   NA                0.0658049   0.0495959   0.0820139
[50-57.5)   6 months    ki1126311-ZVITAMBO          ZIMBABWE                       NA                   NA                0.1896698   0.1738562   0.2054834
[50-57.5)   6 months    ki1148112-iLiNS-DOSE        MALAWI                         NA                   NA                0.2733246   0.2416398   0.3050094
[50-57.5)   6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         NA                   NA                0.2130751   0.1735354   0.2526147
[50-57.5)   6 months    ki1148112-LCNI-5            MALAWI                         NA                   NA                0.3377049   0.2845424   0.3908675
[50-57.5)   24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     NA                   NA                0.2800000   0.2176169   0.3423831
[50-57.5)   24 months   ki1119695-PROBIT            BELARUS                        NA                   NA                0.1057692   0.0249832   0.1865553
[50-57.5)   24 months   ki1148112-iLiNS-DOSE        MALAWI                         NA                   NA                0.4810127   0.4258368   0.5361886
[50-57.5)   24 months   ki1148112-LCNI-5            MALAWI                         NA                   NA                0.3866667   0.3084730   0.4648603


### Parameter: RR


mwtkg       agecat      studyid                     country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ----------  --------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
>=57.5      Birth       ki1119695-PROBIT            BELARUS                        Control              Control           1.0000000   1.0000000   1.0000000
>=57.5      Birth       ki1119695-PROBIT            BELARUS                        Maternal             Control           0.7070903   0.3336798   1.4983723
>=57.5      Birth       ki1126311-ZVITAMBO          ZIMBABWE                       Control              Control           1.0000000   1.0000000   1.0000000
>=57.5      Birth       ki1126311-ZVITAMBO          ZIMBABWE                       VitA                 Control           1.0872205   0.9964916   1.1862101
>=57.5      6 months    iLiNS_DYADM_LNS             MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
>=57.5      6 months    iLiNS_DYADM_LNS             MALAWI                         LNS                  Control           0.6315789   0.4525216   0.8814871
>=57.5      6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              Control           1.0000000   1.0000000   1.0000000
>=57.5      6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                Control           0.8859207   0.5339294   1.4699611
>=57.5      6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                 Control           0.9386282   0.6161704   1.4298363
>=57.5      6 months    ki1119695-PROBIT            BELARUS                        Control              Control           1.0000000   1.0000000   1.0000000
>=57.5      6 months    ki1119695-PROBIT            BELARUS                        Maternal             Control           0.8539222   0.6819649   1.0692385
>=57.5      6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control              Control           1.0000000   1.0000000   1.0000000
>=57.5      6 months    ki1126311-ZVITAMBO          ZIMBABWE                       VitA                 Control           1.0579710   0.9765177   1.1462185
>=57.5      6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
>=57.5      6 months    ki1148112-iLiNS-DOSE        MALAWI                         LNS                  Control           0.9962603   0.8256799   1.2020815
>=57.5      6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
>=57.5      6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Maternal             Control           0.6283065   0.4729475   0.8346996
>=57.5      6 months    ki1148112-LCNI-5            MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
>=57.5      6 months    ki1148112-LCNI-5            MALAWI                         LNS                  Control           1.0714286   0.4828526   2.3774525
>=57.5      6 months    ki1148112-LCNI-5            MALAWI                         Other                Control           1.1785714   0.4685996   2.9642161
>=57.5      24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
>=57.5      24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                  Control           0.9375000   0.3215333   2.7334845
>=57.5      24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                Control           0.9259259   0.3518781   2.4364651
>=57.5      24 months   ki1119695-PROBIT            BELARUS                        Control              Control           1.0000000   1.0000000   1.0000000
>=57.5      24 months   ki1119695-PROBIT            BELARUS                        Maternal             Control           0.6666667   0.3081533   1.4422836
>=57.5      24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
>=57.5      24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS                  Control           0.8671329   0.6902846   1.0892891
<42.5       Birth       ki1000304b-SAS-CompFeed     INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
<42.5       Birth       ki1000304b-SAS-CompFeed     INDIA                          Other                Control           1.2500000   0.7550854   2.0693025
<42.5       6 months    iLiNS_DYADM_LNS             MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
<42.5       6 months    iLiNS_DYADM_LNS             MALAWI                         LNS                  Control           0.5952381   0.3674794   0.9641586
<42.5       6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
<42.5       6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                  Control           0.9778457   0.5606890   1.7053700
<42.5       6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Other                Control           0.8255934   0.4831603   1.4107213
<42.5       6 months    ki1000304b-SAS-CompFeed     INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
<42.5       6 months    ki1000304b-SAS-CompFeed     INDIA                          Other                Control           1.1840796   0.9020050   1.5543644
<42.5       6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control              Control           1.0000000   1.0000000   1.0000000
<42.5       6 months    ki1126311-ZVITAMBO          ZIMBABWE                       VitA                 Control           0.6631098   0.5116497   0.8594055
<42.5       6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
<42.5       6 months    ki1148112-iLiNS-DOSE        MALAWI                         LNS                  Control           0.6918605   0.5530199   0.8655581
<42.5       6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
<42.5       6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Maternal             Control           0.7563025   0.5275032   1.0843412
<42.5       6 months    ki1148112-LCNI-5            MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
<42.5       6 months    ki1148112-LCNI-5            MALAWI                         LNS                  Control           0.9722222   0.6167430   1.5325930
<42.5       6 months    ki1148112-LCNI-5            MALAWI                         Other                Control           1.1458333   0.7016660   1.8711667
<42.5       24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
<42.5       24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                  Control           0.8259109   0.6360973   1.0723657
<42.5       24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                Control           0.9746241   0.7898826   1.2025737
[42.5-50)   Birth       ki1000304b-SAS-CompFeed     INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
[42.5-50)   Birth       ki1000304b-SAS-CompFeed     INDIA                          Other                Control           1.0204082   0.6872213   1.5151346
[42.5-50)   Birth       ki1126311-ZVITAMBO          ZIMBABWE                       Control              Control           1.0000000   1.0000000   1.0000000
[42.5-50)   Birth       ki1126311-ZVITAMBO          ZIMBABWE                       VitA                 Control           0.9742069   0.8552925   1.1096544
[42.5-50)   6 months    iLiNS_DYADM_LNS             MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
[42.5-50)   6 months    iLiNS_DYADM_LNS             MALAWI                         LNS                  Control           1.1325301   0.9056204   1.4162938
[42.5-50)   6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
[42.5-50)   6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                  Control           0.7355073   0.2832330   1.9099857
[42.5-50)   6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Other                Control           0.6960000   0.3003736   1.6127119
[42.5-50)   6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Control              Control           1.0000000   1.0000000   1.0000000
[42.5-50)   6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Maternal             Control           1.1344538   0.7542500   1.7063115
[42.5-50)   6 months    ki1000304b-SAS-CompFeed     INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
[42.5-50)   6 months    ki1000304b-SAS-CompFeed     INDIA                          Other                Control           0.8865215   0.7416691   1.0596643
[42.5-50)   6 months    ki1119695-PROBIT            BELARUS                        Control              Control           1.0000000   1.0000000   1.0000000
[42.5-50)   6 months    ki1119695-PROBIT            BELARUS                        Maternal             Control           0.7038604   0.5150604   0.9618666
[42.5-50)   6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control              Control           1.0000000   1.0000000   1.0000000
[42.5-50)   6 months    ki1126311-ZVITAMBO          ZIMBABWE                       VitA                 Control           0.7604982   0.6791794   0.8515534
[42.5-50)   6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
[42.5-50)   6 months    ki1148112-iLiNS-DOSE        MALAWI                         LNS                  Control           0.9901961   0.8974459   1.0925319
[42.5-50)   6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
[42.5-50)   6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Maternal             Control           1.0831276   0.9045844   1.2969108
[42.5-50)   6 months    ki1148112-LCNI-5            MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
[42.5-50)   6 months    ki1148112-LCNI-5            MALAWI                         LNS                  Control           0.9884653   0.7069332   1.3821159
[42.5-50)   6 months    ki1148112-LCNI-5            MALAWI                         Other                Control           1.0594418   0.7323254   1.5326753
[42.5-50)   24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
[42.5-50)   24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                  Control           1.0605000   0.7596572   1.4804840
[42.5-50)   24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                Control           0.9904095   0.7414049   1.3230435
[42.5-50)   24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
[42.5-50)   24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS                  Control           0.7980986   0.7234506   0.8804490
[42.5-50)   24 months   ki1148112-LCNI-5            MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
[42.5-50)   24 months   ki1148112-LCNI-5            MALAWI                         LNS                  Control           0.7222222   0.4783193   1.0904953
[42.5-50)   24 months   ki1148112-LCNI-5            MALAWI                         Other                Control           0.5564516   0.2999018   1.0324658
[50-57.5)   Birth       ki1126311-ZVITAMBO          ZIMBABWE                       Control              Control           1.0000000   1.0000000   1.0000000
[50-57.5)   Birth       ki1126311-ZVITAMBO          ZIMBABWE                       VitA                 Control           0.9480227   0.8665392   1.0371683
[50-57.5)   6 months    iLiNS_DYADM_LNS             MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
[50-57.5)   6 months    iLiNS_DYADM_LNS             MALAWI                         LNS                  Control           1.0820896   0.8600270   1.3614896
[50-57.5)   6 months    ki1000304b-SAS-CompFeed     INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
[50-57.5)   6 months    ki1000304b-SAS-CompFeed     INDIA                          Other                Control           1.1666667   0.9683495   1.4055991
[50-57.5)   6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              Control           1.0000000   1.0000000   1.0000000
[50-57.5)   6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                Control           0.6110092   0.2790054   1.3380821
[50-57.5)   6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                 Control           0.7366516   0.3978259   1.3640528
[50-57.5)   6 months    ki1119695-PROBIT            BELARUS                        Control              Control           1.0000000   1.0000000   1.0000000
[50-57.5)   6 months    ki1119695-PROBIT            BELARUS                        Maternal             Control           0.8108861   0.6407166   1.0262514
[50-57.5)   6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control              Control           1.0000000   1.0000000   1.0000000
[50-57.5)   6 months    ki1126311-ZVITAMBO          ZIMBABWE                       VitA                 Control           1.1689931   1.0752342   1.2709277
[50-57.5)   6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
[50-57.5)   6 months    ki1148112-iLiNS-DOSE        MALAWI                         LNS                  Control           0.8275132   0.7366284   0.9296112
[50-57.5)   6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
[50-57.5)   6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Maternal             Control           1.1007463   0.9140904   1.3255169
[50-57.5)   6 months    ki1148112-LCNI-5            MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
[50-57.5)   6 months    ki1148112-LCNI-5            MALAWI                         LNS                  Control           1.2690167   0.8310768   1.9377312
[50-57.5)   6 months    ki1148112-LCNI-5            MALAWI                         Other                Control           1.3511111   0.8460921   2.1575680
[50-57.5)   24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
[50-57.5)   24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                  Control           0.7984085   0.4187732   1.5221991
[50-57.5)   24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                Control           0.9689200   0.5596143   1.6775945
[50-57.5)   24 months   ki1119695-PROBIT            BELARUS                        Control              Control           1.0000000   1.0000000   1.0000000
[50-57.5)   24 months   ki1119695-PROBIT            BELARUS                        Maternal             Control           1.9462647   0.6915788   5.4772448
[50-57.5)   24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
[50-57.5)   24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS                  Control           1.1908054   1.0612542   1.3361714
[50-57.5)   24 months   ki1148112-LCNI-5            MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
[50-57.5)   24 months   ki1148112-LCNI-5            MALAWI                         LNS                  Control           1.3571429   0.7890026   2.3343861
[50-57.5)   24 months   ki1148112-LCNI-5            MALAWI                         Other                Control           1.2063492   0.6565338   2.2166086


### Parameter: PAR


mwtkg       agecat      studyid                     country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ----------  --------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
>=57.5      Birth       ki1119695-PROBIT            BELARUS                        Control              NA                -0.0003624   -0.0010886    0.0003639
>=57.5      Birth       ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                 0.0048196   -0.0011506    0.0107897
>=57.5      6 months    iLiNS_DYADM_LNS             MALAWI                         Control              NA                -0.0364583   -0.0700236   -0.0028931
>=57.5      6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              NA                -0.0065713   -0.0395843    0.0264418
>=57.5      6 months    ki1119695-PROBIT            BELARUS                        Control              NA                -0.0045208   -0.0125375    0.0034959
>=57.5      6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                 0.0053471   -0.0036171    0.0143114
>=57.5      6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                -0.0006118   -0.0339953    0.0327716
>=57.5      6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Control              NA                -0.0491277   -0.0805277   -0.0177278
>=57.5      6 months    ki1148112-LCNI-5            MALAWI                         Control              NA                 0.0162252   -0.1053916    0.1378421
>=57.5      24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                -0.0108108   -0.1486174    0.1269958
>=57.5      24 months   ki1119695-PROBIT            BELARUS                        Control              NA                -0.0268908   -0.0946883    0.0409068
>=57.5      24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                -0.0380685   -0.1023951    0.0262581
<42.5       Birth       ki1000304b-SAS-CompFeed     INDIA                          Control              NA                 0.0333333   -0.1837826    0.2504493
<42.5       6 months    iLiNS_DYADM_LNS             MALAWI                         Control              NA                -0.1030303   -0.2221866    0.0161260
<42.5       6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                -0.0224877   -0.1154253    0.0704498
<42.5       6 months    ki1000304b-SAS-CompFeed     INDIA                          Control              NA                 0.0429733   -0.0856094    0.1715560
<42.5       6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                -0.1518900   -0.2407790   -0.0630010
<42.5       6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                -0.1513421   -0.2394316   -0.0632526
<42.5       6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Control              NA                -0.0789116   -0.1924974    0.0346743
<42.5       6 months    ki1148112-LCNI-5            MALAWI                         Control              NA                 0.0111111   -0.1722864    0.1945086
<42.5       24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                -0.0328642   -0.1176436    0.0519153
[42.5-50)   Birth       ki1000304b-SAS-CompFeed     INDIA                          Control              NA                 0.0027778   -0.0671421    0.0726976
[42.5-50)   Birth       ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                -0.0027849   -0.0186176    0.0130477
[42.5-50)   6 months    iLiNS_DYADM_LNS             MALAWI                         Control              NA                 0.0178507   -0.0296283    0.0653298
[42.5-50)   6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                -0.0307882   -0.1064931    0.0449167
[42.5-50)   6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Control              NA                 0.0194293   -0.0667565    0.1056150
[42.5-50)   6 months    ki1000304b-SAS-CompFeed     INDIA                          Control              NA                -0.0186768   -0.0522188    0.0148652
[42.5-50)   6 months    ki1119695-PROBIT            BELARUS                        Control              NA                -0.0190457   -0.0420915    0.0040002
[42.5-50)   6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                -0.0555550   -0.0795766   -0.0315334
[42.5-50)   6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                -0.0033058   -0.0391171    0.0325055
[42.5-50)   6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Control              NA                 0.0156857   -0.0288449    0.0602162
[42.5-50)   6 months    ki1148112-LCNI-5            MALAWI                         Control              NA                 0.0039913   -0.0902400    0.0982227
[42.5-50)   24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                 0.0034985   -0.0801553    0.0871523
[42.5-50)   24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                -0.1269890   -0.1831645   -0.0708134
[42.5-50)   24 months   ki1148112-LCNI-5            MALAWI                         Control              NA                -0.1176295   -0.2365412    0.0012821
[50-57.5)   Birth       ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                -0.0048916   -0.0141897    0.0044064
[50-57.5)   6 months    iLiNS_DYADM_LNS             MALAWI                         Control              NA                 0.0078853   -0.0256764    0.0414470
[50-57.5)   6 months    ki1000304b-SAS-CompFeed     INDIA                          Control              NA                 0.0121951   -0.0182435    0.0426338
[50-57.5)   6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              NA                -0.0308267   -0.0840137    0.0223602
[50-57.5)   6 months    ki1119695-PROBIT            BELARUS                        Control              NA                -0.0068513   -0.0180856    0.0043829
[50-57.5)   6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                 0.0215437    0.0075773    0.0355100
[50-57.5)   6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                -0.0451939   -0.0736420   -0.0167459
[50-57.5)   6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Control              NA                 0.0130751   -0.0191680    0.0453181
[50-57.5)   6 months    ki1148112-LCNI-5            MALAWI                         Control              NA                 0.0613891   -0.0275669    0.1503452
[50-57.5)   24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                -0.0223256   -0.1435125    0.0988613
[50-57.5)   24 months   ki1119695-PROBIT            BELARUS                        Control              NA                 0.0350622   -0.0105682    0.0806925
[50-57.5)   24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                 0.0659183    0.0154428    0.1163939
[50-57.5)   24 months   ki1148112-LCNI-5            MALAWI                         Control              NA                 0.0708772   -0.0593616    0.2011160


### Parameter: PAF


mwtkg       agecat      studyid                     country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ----------  --------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
>=57.5      Birth       ki1119695-PROBIT            BELARUS                        Control              NA                -0.1775343   -0.7091053    0.1887060
>=57.5      Birth       ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                 0.0614989   -0.0128408    0.1303822
>=57.5      6 months    iLiNS_DYADM_LNS             MALAWI                         Control              NA                -0.2258065   -0.5165322    0.0091859
>=57.5      6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              NA                -0.0626030   -0.4284149    0.2095258
>=57.5      6 months    ki1119695-PROBIT            BELARUS                        Control              NA                -0.0794958   -0.2442749    0.0634617
>=57.5      6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                 0.0415683   -0.0276262    0.1061036
>=57.5      6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                -0.0031566   -0.1916988    0.1555558
>=57.5      6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Control              NA                -0.3301841   -0.6502758   -0.0721782
>=57.5      6 months    ki1148112-LCNI-5            MALAWI                         Control              NA                 0.0710554   -0.6477217    0.4762841
>=57.5      24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                -0.0571429   -1.1052664    0.4691641
>=57.5      24 months   ki1119695-PROBIT            BELARUS                        Control              NA                -0.2318840   -1.2166520    0.3153917
>=57.5      24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                -0.1201771   -0.3728045    0.0859611
<42.5       Birth       ki1000304b-SAS-CompFeed     INDIA                          Control              NA                 0.0769231   -0.5231190    0.4405749
<42.5       6 months    iLiNS_DYADM_LNS             MALAWI                         Control              NA                -0.2833333   -0.7944393    0.0821955
<42.5       6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                -0.0924899   -0.5499121    0.2299342
<42.5       6 months    ki1000304b-SAS-CompFeed     INDIA                          Control              NA                 0.0911330   -0.1938009    0.3080595
<42.5       6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                -0.3981982   -0.7683600   -0.1055205
<42.5       6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                -0.3464052   -0.6493083   -0.0991317
<42.5       6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Control              NA                -0.2035088   -0.6163102    0.1038642
<42.5       6 months    ki1148112-LCNI-5            MALAWI                         Control              NA                 0.0181818   -0.3328955    0.2767873
<42.5       24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                -0.0624842   -0.2366937    0.0871849
[42.5-50)   Birth       ki1000304b-SAS-CompFeed     INDIA                          Control              NA                 0.0117647   -0.3288545    0.2650746
[42.5-50)   Birth       ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                -0.0198231   -0.1414873    0.0888738
[42.5-50)   6 months    iLiNS_DYADM_LNS             MALAWI                         Control              NA                 0.0585106   -0.1003734    0.1944533
[42.5-50)   6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                -0.2873563   -1.2198428    0.2534218
[42.5-50)   6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Control              NA                 0.0697168   -0.2682325    0.3176118
[42.5-50)   6 months    ki1000304b-SAS-CompFeed     INDIA                          Control              NA                -0.0617432   -0.1866953    0.0500521
[42.5-50)   6 months    ki1119695-PROBIT            BELARUS                        Control              NA                -0.1746453   -0.4552222    0.0518345
[42.5-50)   6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                -0.2200367   -0.3426159   -0.1086487
[42.5-50)   6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                -0.0083333   -0.1035957    0.0787060
[42.5-50)   6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Control              NA                 0.0517816   -0.0984975    0.1815018
[42.5-50)   6 months    ki1148112-LCNI-5            MALAWI                         Control              NA                 0.0100690   -0.2586239    0.2214010
[42.5-50)   24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                 0.0087564   -0.2243764    0.1974985
[42.5-50)   24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                -0.2059500   -0.3212275   -0.1007305
[42.5-50)   24 months   ki1148112-LCNI-5            MALAWI                         Control              NA                -0.2910833   -0.6268482   -0.0246168
[50-57.5)   Birth       ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                -0.0408259   -0.1248357    0.0369095
[50-57.5)   6 months    iLiNS_DYADM_LNS             MALAWI                         Control              NA                 0.0379310   -0.1307739    0.1814661
[50-57.5)   6 months    ki1000304b-SAS-CompFeed     INDIA                          Control              NA                 0.0769231   -0.1184617    0.2381760
[50-57.5)   6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              NA                -0.2955347   -0.9136861    0.1229439
[50-57.5)   6 months    ki1119695-PROBIT            BELARUS                        Control              NA                -0.1041155   -0.3119298    0.0707802
[50-57.5)   6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                 0.1135852    0.0456883    0.1766513
[50-57.5)   6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                -0.1653490   -0.2935027   -0.0498921
[50-57.5)   6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Control              NA                 0.0613636   -0.0921610    0.1933074
[50-57.5)   6 months    ki1148112-LCNI-5            MALAWI                         Control              NA                 0.1817833   -0.1286174    0.4068154
[50-57.5)   24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                -0.0797342   -0.6120551    0.2768076
[50-57.5)   24 months   ki1119695-PROBIT            BELARUS                        Control              NA                 0.3314968   -0.1652739    0.6164880
[50-57.5)   24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                 0.1370407    0.0413164    0.2232070
[50-57.5)   24 months   ki1148112-LCNI-5            MALAWI                         Control              NA                 0.1833031   -0.2336903    0.4593507
