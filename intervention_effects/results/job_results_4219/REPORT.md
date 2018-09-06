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
* intXmhtcm

## Data Summary

agecat      studyid                     country                        intXmhtcm                 stunted   n_cell       n
----------  --------------------------  -----------------------------  -----------------------  --------  -------  ------
Birth       iLiNS_DYADM_LNS             MALAWI                         <151 cm_Birth                   0        0       1
Birth       iLiNS_DYADM_LNS             MALAWI                         <151 cm_Birth                   1        1       1
Birth       ki1000125-AgaKhanUniv       PAKISTAN                       >=155 cm_Birth                  0        3       3
Birth       ki1000125-AgaKhanUniv       PAKISTAN                       >=155 cm_Birth                  1        0       3
Birth       ki1000125-AgaKhanUniv       PAKISTAN                       <151 cm_Birth                   0        1       1
Birth       ki1000125-AgaKhanUniv       PAKISTAN                       <151 cm_Birth                   1        0       1
Birth       ki1000304b-SAS-CompFeed     INDIA                          >=155 cm_Birth                  0       33      43
Birth       ki1000304b-SAS-CompFeed     INDIA                          >=155 cm_Birth                  1       10      43
Birth       ki1000304b-SAS-CompFeed     INDIA                          <151 cm_Birth                   0       12      21
Birth       ki1000304b-SAS-CompFeed     INDIA                          <151 cm_Birth                   1        9      21
Birth       ki1000304b-SAS-CompFeed     INDIA                          [151-155) cm_Birth              0       16      25
Birth       ki1000304b-SAS-CompFeed     INDIA                          [151-155) cm_Birth              1        9      25
Birth       ki1119695-PROBIT            BELARUS                        >=155 cm_Birth                  0    13174   13206
Birth       ki1119695-PROBIT            BELARUS                        >=155 cm_Birth                  1       32   13206
Birth       ki1119695-PROBIT            BELARUS                        <151 cm_Birth                   0      125     125
Birth       ki1119695-PROBIT            BELARUS                        <151 cm_Birth                   1        0     125
Birth       ki1119695-PROBIT            BELARUS                        [151-155) cm_Birth              0      397     398
Birth       ki1119695-PROBIT            BELARUS                        [151-155) cm_Birth              1        1     398
Birth       ki1126311-ZVITAMBO          ZIMBABWE                       >=155 cm_Birth                  0     6977    7704
Birth       ki1126311-ZVITAMBO          ZIMBABWE                       >=155 cm_Birth                  1      727    7704
Birth       ki1126311-ZVITAMBO          ZIMBABWE                       <151 cm_Birth                   0      480     558
Birth       ki1126311-ZVITAMBO          ZIMBABWE                       <151 cm_Birth                   1       78     558
Birth       ki1126311-ZVITAMBO          ZIMBABWE                       [151-155) cm_Birth              0     1252    1405
Birth       ki1126311-ZVITAMBO          ZIMBABWE                       [151-155) cm_Birth              1      153    1405
Birth       ki1135781-COHORTS           GUATEMALA                      >=155 cm_Birth                  0      104     110
Birth       ki1135781-COHORTS           GUATEMALA                      >=155 cm_Birth                  1        6     110
Birth       ki1135781-COHORTS           GUATEMALA                      <151 cm_Birth                   0      513     545
Birth       ki1135781-COHORTS           GUATEMALA                      <151 cm_Birth                   1       32     545
Birth       ki1135781-COHORTS           GUATEMALA                      [151-155) cm_Birth              0      174     185
Birth       ki1135781-COHORTS           GUATEMALA                      [151-155) cm_Birth              1       11     185
Birth       ki1148112-iLiNS-DYAD-M      MALAWI                         <151 cm_Birth                   0        0       1
Birth       ki1148112-iLiNS-DYAD-M      MALAWI                         <151 cm_Birth                   1        1       1
Birth       kiGH5241-JiVitA-3           BANGLADESH                     >=155 cm_Birth                  0     4690    5800
Birth       kiGH5241-JiVitA-3           BANGLADESH                     >=155 cm_Birth                  1     1110    5800
Birth       kiGH5241-JiVitA-3           BANGLADESH                     <151 cm_Birth                   0    14578   23470
Birth       kiGH5241-JiVitA-3           BANGLADESH                     <151 cm_Birth                   1     8892   23470
Birth       kiGH5241-JiVitA-3           BANGLADESH                     [151-155) cm_Birth              0     7180    9802
Birth       kiGH5241-JiVitA-3           BANGLADESH                     [151-155) cm_Birth              1     2622    9802
6 months    iLiNS_DYADM_LNS             MALAWI                         <151 cm_6 months                0        0       1
6 months    iLiNS_DYADM_LNS             MALAWI                         <151 cm_6 months                1        1       1
6 months    iLiNS_DYADM_LNS             MALAWI                         [151-155) cm_6 months           0        2       2
6 months    iLiNS_DYADM_LNS             MALAWI                         [151-155) cm_6 months           1        0       2
6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     >=155 cm_6 months               0      126     133
6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     >=155 cm_6 months               1        7     133
6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     <151 cm_6 months                0      273     351
6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     <151 cm_6 months                1       78     351
6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     [151-155) cm_6 months           0      183     198
6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     [151-155) cm_6 months           1       15     198
6 months    ki1000111-WASH-Kenya        KENYA                          >=155 cm_6 months               0       50      59
6 months    ki1000111-WASH-Kenya        KENYA                          >=155 cm_6 months               1        9      59
6 months    ki1000111-WASH-Kenya        KENYA                          <151 cm_6 months                0        4       4
6 months    ki1000111-WASH-Kenya        KENYA                          <151 cm_6 months                1        0       4
6 months    ki1000111-WASH-Kenya        KENYA                          [151-155) cm_6 months           0        8      10
6 months    ki1000111-WASH-Kenya        KENYA                          [151-155) cm_6 months           1        2      10
6 months    ki1000125-AgaKhanUniv       PAKISTAN                       >=155 cm_6 months               0       78      89
6 months    ki1000125-AgaKhanUniv       PAKISTAN                       >=155 cm_6 months               1       11      89
6 months    ki1000125-AgaKhanUniv       PAKISTAN                       <151 cm_6 months                0       32      50
6 months    ki1000125-AgaKhanUniv       PAKISTAN                       <151 cm_6 months                1       18      50
6 months    ki1000125-AgaKhanUniv       PAKISTAN                       [151-155) cm_6 months           0       31      45
6 months    ki1000125-AgaKhanUniv       PAKISTAN                       [151-155) cm_6 months           1       14      45
6 months    ki1000304b-SAS-CompFeed     INDIA                          >=155 cm_6 months               0      203     243
6 months    ki1000304b-SAS-CompFeed     INDIA                          >=155 cm_6 months               1       40     243
6 months    ki1000304b-SAS-CompFeed     INDIA                          <151 cm_6 months                0       96     180
6 months    ki1000304b-SAS-CompFeed     INDIA                          <151 cm_6 months                1       84     180
6 months    ki1000304b-SAS-CompFeed     INDIA                          [151-155) cm_6 months           0       97     134
6 months    ki1000304b-SAS-CompFeed     INDIA                          [151-155) cm_6 months           1       37     134
6 months    ki1000304b-SAS-FoodSuppl    INDIA                          >=155 cm_6 months               0       50      66
6 months    ki1000304b-SAS-FoodSuppl    INDIA                          >=155 cm_6 months               1       16      66
6 months    ki1000304b-SAS-FoodSuppl    INDIA                          <151 cm_6 months                0       91     192
6 months    ki1000304b-SAS-FoodSuppl    INDIA                          <151 cm_6 months                1      101     192
6 months    ki1000304b-SAS-FoodSuppl    INDIA                          [151-155) cm_6 months           0       63      96
6 months    ki1000304b-SAS-FoodSuppl    INDIA                          [151-155) cm_6 months           1       33      96
6 months    ki1017093b-PROVIDE          BANGLADESH                     >=155 cm_6 months               0       12      13
6 months    ki1017093b-PROVIDE          BANGLADESH                     >=155 cm_6 months               1        1      13
6 months    ki1017093b-PROVIDE          BANGLADESH                     <151 cm_6 months                0       18      22
6 months    ki1017093b-PROVIDE          BANGLADESH                     <151 cm_6 months                1        4      22
6 months    ki1017093b-PROVIDE          BANGLADESH                     [151-155) cm_6 months           0        6      10
6 months    ki1017093b-PROVIDE          BANGLADESH                     [151-155) cm_6 months           1        4      10
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   >=155 cm_6 months               0      956    1043
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   >=155 cm_6 months               1       87    1043
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   <151 cm_6 months                0      218     263
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   <151 cm_6 months                1       45     263
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   [151-155) cm_6 months           0      323     371
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   [151-155) cm_6 months           1       48     371
6 months    ki1112895-Burkina Faso Zn   BURKINA FASO                   >=155 cm_6 months               0      394     439
6 months    ki1112895-Burkina Faso Zn   BURKINA FASO                   >=155 cm_6 months               1       45     439
6 months    ki1112895-Burkina Faso Zn   BURKINA FASO                   <151 cm_6 months                0       21      26
6 months    ki1112895-Burkina Faso Zn   BURKINA FASO                   <151 cm_6 months                1        5      26
6 months    ki1112895-Burkina Faso Zn   BURKINA FASO                   [151-155) cm_6 months           0       57      69
6 months    ki1112895-Burkina Faso Zn   BURKINA FASO                   [151-155) cm_6 months           1       12      69
6 months    ki1112895-Guatemala BSC     GUATEMALA                      >=155 cm_6 months               0       25      30
6 months    ki1112895-Guatemala BSC     GUATEMALA                      >=155 cm_6 months               1        5      30
6 months    ki1112895-Guatemala BSC     GUATEMALA                      <151 cm_6 months                0       69     109
6 months    ki1112895-Guatemala BSC     GUATEMALA                      <151 cm_6 months                1       40     109
6 months    ki1112895-Guatemala BSC     GUATEMALA                      [151-155) cm_6 months           0       32      41
6 months    ki1112895-Guatemala BSC     GUATEMALA                      [151-155) cm_6 months           1        9      41
6 months    ki1119695-PROBIT            BELARUS                        >=155 cm_6 months               0    10863   11545
6 months    ki1119695-PROBIT            BELARUS                        >=155 cm_6 months               1      682   11545
6 months    ki1119695-PROBIT            BELARUS                        <151 cm_6 months                0       89     108
6 months    ki1119695-PROBIT            BELARUS                        <151 cm_6 months                1       19     108
6 months    ki1119695-PROBIT            BELARUS                        [151-155) cm_6 months           0      315     349
6 months    ki1119695-PROBIT            BELARUS                        [151-155) cm_6 months           1       34     349
6 months    ki1126311-ZVITAMBO          ZIMBABWE                       >=155 cm_6 months               0     4528    5300
6 months    ki1126311-ZVITAMBO          ZIMBABWE                       >=155 cm_6 months               1      772    5300
6 months    ki1126311-ZVITAMBO          ZIMBABWE                       <151 cm_6 months                0      262     402
6 months    ki1126311-ZVITAMBO          ZIMBABWE                       <151 cm_6 months                1      140     402
6 months    ki1126311-ZVITAMBO          ZIMBABWE                       [151-155) cm_6 months           0      766     956
6 months    ki1126311-ZVITAMBO          ZIMBABWE                       [151-155) cm_6 months           1      190     956
6 months    ki1135781-COHORTS           GUATEMALA                      >=155 cm_6 months               0       87     110
6 months    ki1135781-COHORTS           GUATEMALA                      >=155 cm_6 months               1       23     110
6 months    ki1135781-COHORTS           GUATEMALA                      <151 cm_6 months                0      317     611
6 months    ki1135781-COHORTS           GUATEMALA                      <151 cm_6 months                1      294     611
6 months    ki1135781-COHORTS           GUATEMALA                      [151-155) cm_6 months           0      129     193
6 months    ki1135781-COHORTS           GUATEMALA                      [151-155) cm_6 months           1       64     193
6 months    ki1148112-iLiNS-DOSE        MALAWI                         >=155 cm_6 months               0      807    1060
6 months    ki1148112-iLiNS-DOSE        MALAWI                         >=155 cm_6 months               1      253    1060
6 months    ki1148112-iLiNS-DOSE        MALAWI                         <151 cm_6 months                0      240     398
6 months    ki1148112-iLiNS-DOSE        MALAWI                         <151 cm_6 months                1      158     398
6 months    ki1148112-iLiNS-DOSE        MALAWI                         [151-155) cm_6 months           0      299     469
6 months    ki1148112-iLiNS-DOSE        MALAWI                         [151-155) cm_6 months           1      170     469
6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         <151 cm_6 months                0        0       1
6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         <151 cm_6 months                1        1       1
6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         [151-155) cm_6 months           0        2       3
6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         [151-155) cm_6 months           1        1       3
6 months    ki1148112-LCNI-5            MALAWI                         >=155 cm_6 months               0      358     513
6 months    ki1148112-LCNI-5            MALAWI                         >=155 cm_6 months               1      155     513
6 months    ki1148112-LCNI-5            MALAWI                         <151 cm_6 months                0       58     131
6 months    ki1148112-LCNI-5            MALAWI                         <151 cm_6 months                1       73     131
6 months    ki1148112-LCNI-5            MALAWI                         [151-155) cm_6 months           0      113     192
6 months    ki1148112-LCNI-5            MALAWI                         [151-155) cm_6 months           1       79     192
6 months    kiGH5241-JiVitA-3           BANGLADESH                     >=155 cm_6 months               0     4755    5297
6 months    kiGH5241-JiVitA-3           BANGLADESH                     >=155 cm_6 months               1      542    5297
6 months    kiGH5241-JiVitA-3           BANGLADESH                     <151 cm_6 months                0    13210   19510
6 months    kiGH5241-JiVitA-3           BANGLADESH                     <151 cm_6 months                1     6300   19510
6 months    kiGH5241-JiVitA-3           BANGLADESH                     [151-155) cm_6 months           0     7020    8576
6 months    kiGH5241-JiVitA-3           BANGLADESH                     [151-155) cm_6 months           1     1556    8576
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     >=155 cm_24 months              0      194     250
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     >=155 cm_24 months              1       56     250
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     <151 cm_24 months               0      304     626
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     <151 cm_24 months               1      322     626
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     [151-155) cm_24 months          0      205     310
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     [151-155) cm_24 months          1      105     310
24 months   ki1000111-WASH-Kenya        KENYA                          >=155 cm_24 months              0     1325    1809
24 months   ki1000111-WASH-Kenya        KENYA                          >=155 cm_24 months              1      484    1809
24 months   ki1000111-WASH-Kenya        KENYA                          <151 cm_24 months               0       45     105
24 months   ki1000111-WASH-Kenya        KENYA                          <151 cm_24 months               1       60     105
24 months   ki1000111-WASH-Kenya        KENYA                          [151-155) cm_24 months          0      138     255
24 months   ki1000111-WASH-Kenya        KENYA                          [151-155) cm_24 months          1      117     255
24 months   ki1017093b-PROVIDE          BANGLADESH                     [151-155) cm_24 months          0        2       2
24 months   ki1017093b-PROVIDE          BANGLADESH                     [151-155) cm_24 months          1        0       2
24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   >=155 cm_24 months              0        2       2
24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   >=155 cm_24 months              1        0       2
24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   <151 cm_24 months               0        0       1
24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   <151 cm_24 months               1        1       1
24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   [151-155) cm_24 months          0        1       1
24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   [151-155) cm_24 months          1        0       1
24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   >=155 cm_24 months              0      589     856
24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   >=155 cm_24 months              1      267     856
24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   <151 cm_24 months               0       14      48
24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   <151 cm_24 months               1       34      48
24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   [151-155) cm_24 months          0       56     111
24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   [151-155) cm_24 months          1       55     111
24 months   ki1119695-PROBIT            BELARUS                        >=155 cm_24 months              0      708     796
24 months   ki1119695-PROBIT            BELARUS                        >=155 cm_24 months              1       88     796
24 months   ki1119695-PROBIT            BELARUS                        <151 cm_24 months               0        6      13
24 months   ki1119695-PROBIT            BELARUS                        <151 cm_24 months               1        7      13
24 months   ki1119695-PROBIT            BELARUS                        [151-155) cm_24 months          0       20      24
24 months   ki1119695-PROBIT            BELARUS                        [151-155) cm_24 months          1        4      24
24 months   ki1126311-ZVITAMBO          ZIMBABWE                       >=155 cm_24 months              0        6      12
24 months   ki1126311-ZVITAMBO          ZIMBABWE                       >=155 cm_24 months              1        6      12
24 months   ki1126311-ZVITAMBO          ZIMBABWE                       <151 cm_24 months               0        0       4
24 months   ki1126311-ZVITAMBO          ZIMBABWE                       <151 cm_24 months               1        4       4
24 months   ki1126311-ZVITAMBO          ZIMBABWE                       [151-155) cm_24 months          0        1       6
24 months   ki1126311-ZVITAMBO          ZIMBABWE                       [151-155) cm_24 months          1        5       6
24 months   ki1135781-COHORTS           GUATEMALA                      >=155 cm_24 months              0       13      31
24 months   ki1135781-COHORTS           GUATEMALA                      >=155 cm_24 months              1       18      31
24 months   ki1135781-COHORTS           GUATEMALA                      <151 cm_24 months               0       30     180
24 months   ki1135781-COHORTS           GUATEMALA                      <151 cm_24 months               1      150     180
24 months   ki1135781-COHORTS           GUATEMALA                      [151-155) cm_24 months          0       14      54
24 months   ki1135781-COHORTS           GUATEMALA                      [151-155) cm_24 months          1       40      54
24 months   ki1148112-iLiNS-DOSE        MALAWI                         >=155 cm_24 months              0      250     414
24 months   ki1148112-iLiNS-DOSE        MALAWI                         >=155 cm_24 months              1      164     414
24 months   ki1148112-iLiNS-DOSE        MALAWI                         <151 cm_24 months               0       51     152
24 months   ki1148112-iLiNS-DOSE        MALAWI                         <151 cm_24 months               1      101     152
24 months   ki1148112-iLiNS-DOSE        MALAWI                         [151-155) cm_24 months          0       84     209
24 months   ki1148112-iLiNS-DOSE        MALAWI                         [151-155) cm_24 months          1      125     209
24 months   ki1148112-LCNI-5            MALAWI                         >=155 cm_24 months              0      168     243
24 months   ki1148112-LCNI-5            MALAWI                         >=155 cm_24 months              1       75     243
24 months   ki1148112-LCNI-5            MALAWI                         <151 cm_24 months               0       32      65
24 months   ki1148112-LCNI-5            MALAWI                         <151 cm_24 months               1       33      65
24 months   ki1148112-LCNI-5            MALAWI                         [151-155) cm_24 months          0       41      76
24 months   ki1148112-LCNI-5            MALAWI                         [151-155) cm_24 months          1       35      76
24 months   kiGH5241-JiVitA-3           BANGLADESH                     >=155 cm_24 months              0       20      25
24 months   kiGH5241-JiVitA-3           BANGLADESH                     >=155 cm_24 months              1        5      25
24 months   kiGH5241-JiVitA-3           BANGLADESH                     <151 cm_24 months               0       27      91
24 months   kiGH5241-JiVitA-3           BANGLADESH                     <151 cm_24 months               1       64      91
24 months   kiGH5241-JiVitA-3           BANGLADESH                     [151-155) cm_24 months          0       28      42
24 months   kiGH5241-JiVitA-3           BANGLADESH                     [151-155) cm_24 months          1       14      42


The following strata were considered:

* agecat: 24 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH, intXmhtcm: [151-155) cm_24 months
* agecat: 24 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH, intXmhtcm: <151 cm_24 months
* agecat: 24 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH, intXmhtcm: >=155 cm_24 months
* agecat: 24 months, studyid: ki1000111-WASH-Kenya, country: KENYA, intXmhtcm: [151-155) cm_24 months
* agecat: 24 months, studyid: ki1000111-WASH-Kenya, country: KENYA, intXmhtcm: <151 cm_24 months
* agecat: 24 months, studyid: ki1000111-WASH-Kenya, country: KENYA, intXmhtcm: >=155 cm_24 months
* agecat: 24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH, intXmhtcm: [151-155) cm_24 months
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF, intXmhtcm: [151-155) cm_24 months
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF, intXmhtcm: <151 cm_24 months
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF, intXmhtcm: >=155 cm_24 months
* agecat: 24 months, studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO, intXmhtcm: [151-155) cm_24 months
* agecat: 24 months, studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO, intXmhtcm: <151 cm_24 months
* agecat: 24 months, studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO, intXmhtcm: >=155 cm_24 months
* agecat: 24 months, studyid: ki1119695-PROBIT, country: BELARUS, intXmhtcm: [151-155) cm_24 months
* agecat: 24 months, studyid: ki1119695-PROBIT, country: BELARUS, intXmhtcm: <151 cm_24 months
* agecat: 24 months, studyid: ki1119695-PROBIT, country: BELARUS, intXmhtcm: >=155 cm_24 months
* agecat: 24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE, intXmhtcm: [151-155) cm_24 months
* agecat: 24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE, intXmhtcm: <151 cm_24 months
* agecat: 24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE, intXmhtcm: >=155 cm_24 months
* agecat: 24 months, studyid: ki1135781-COHORTS, country: GUATEMALA, intXmhtcm: [151-155) cm_24 months
* agecat: 24 months, studyid: ki1135781-COHORTS, country: GUATEMALA, intXmhtcm: <151 cm_24 months
* agecat: 24 months, studyid: ki1135781-COHORTS, country: GUATEMALA, intXmhtcm: >=155 cm_24 months
* agecat: 24 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI, intXmhtcm: [151-155) cm_24 months
* agecat: 24 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI, intXmhtcm: <151 cm_24 months
* agecat: 24 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI, intXmhtcm: >=155 cm_24 months
* agecat: 24 months, studyid: ki1148112-LCNI-5, country: MALAWI, intXmhtcm: [151-155) cm_24 months
* agecat: 24 months, studyid: ki1148112-LCNI-5, country: MALAWI, intXmhtcm: <151 cm_24 months
* agecat: 24 months, studyid: ki1148112-LCNI-5, country: MALAWI, intXmhtcm: >=155 cm_24 months
* agecat: 24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH, intXmhtcm: [151-155) cm_24 months
* agecat: 24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH, intXmhtcm: <151 cm_24 months
* agecat: 24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH, intXmhtcm: >=155 cm_24 months
* agecat: 6 months, studyid: iLiNS_DYADM_LNS, country: MALAWI, intXmhtcm: [151-155) cm_6 months
* agecat: 6 months, studyid: iLiNS_DYADM_LNS, country: MALAWI, intXmhtcm: <151 cm_6 months
* agecat: 6 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH, intXmhtcm: [151-155) cm_6 months
* agecat: 6 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH, intXmhtcm: <151 cm_6 months
* agecat: 6 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH, intXmhtcm: >=155 cm_6 months
* agecat: 6 months, studyid: ki1000111-WASH-Kenya, country: KENYA, intXmhtcm: [151-155) cm_6 months
* agecat: 6 months, studyid: ki1000111-WASH-Kenya, country: KENYA, intXmhtcm: <151 cm_6 months
* agecat: 6 months, studyid: ki1000111-WASH-Kenya, country: KENYA, intXmhtcm: >=155 cm_6 months
* agecat: 6 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN, intXmhtcm: [151-155) cm_6 months
* agecat: 6 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN, intXmhtcm: <151 cm_6 months
* agecat: 6 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN, intXmhtcm: >=155 cm_6 months
* agecat: 6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA, intXmhtcm: [151-155) cm_6 months
* agecat: 6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA, intXmhtcm: <151 cm_6 months
* agecat: 6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA, intXmhtcm: >=155 cm_6 months
* agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA, intXmhtcm: [151-155) cm_6 months
* agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA, intXmhtcm: <151 cm_6 months
* agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA, intXmhtcm: >=155 cm_6 months
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH, intXmhtcm: [151-155) cm_6 months
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH, intXmhtcm: <151 cm_6 months
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH, intXmhtcm: >=155 cm_6 months
* agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF, intXmhtcm: [151-155) cm_6 months
* agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF, intXmhtcm: <151 cm_6 months
* agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF, intXmhtcm: >=155 cm_6 months
* agecat: 6 months, studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO, intXmhtcm: [151-155) cm_6 months
* agecat: 6 months, studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO, intXmhtcm: <151 cm_6 months
* agecat: 6 months, studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO, intXmhtcm: >=155 cm_6 months
* agecat: 6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA, intXmhtcm: [151-155) cm_6 months
* agecat: 6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA, intXmhtcm: <151 cm_6 months
* agecat: 6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA, intXmhtcm: >=155 cm_6 months
* agecat: 6 months, studyid: ki1119695-PROBIT, country: BELARUS, intXmhtcm: [151-155) cm_6 months
* agecat: 6 months, studyid: ki1119695-PROBIT, country: BELARUS, intXmhtcm: <151 cm_6 months
* agecat: 6 months, studyid: ki1119695-PROBIT, country: BELARUS, intXmhtcm: >=155 cm_6 months
* agecat: 6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE, intXmhtcm: [151-155) cm_6 months
* agecat: 6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE, intXmhtcm: <151 cm_6 months
* agecat: 6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE, intXmhtcm: >=155 cm_6 months
* agecat: 6 months, studyid: ki1135781-COHORTS, country: GUATEMALA, intXmhtcm: [151-155) cm_6 months
* agecat: 6 months, studyid: ki1135781-COHORTS, country: GUATEMALA, intXmhtcm: <151 cm_6 months
* agecat: 6 months, studyid: ki1135781-COHORTS, country: GUATEMALA, intXmhtcm: >=155 cm_6 months
* agecat: 6 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI, intXmhtcm: [151-155) cm_6 months
* agecat: 6 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI, intXmhtcm: <151 cm_6 months
* agecat: 6 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI, intXmhtcm: >=155 cm_6 months
* agecat: 6 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI, intXmhtcm: [151-155) cm_6 months
* agecat: 6 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI, intXmhtcm: <151 cm_6 months
* agecat: 6 months, studyid: ki1148112-LCNI-5, country: MALAWI, intXmhtcm: [151-155) cm_6 months
* agecat: 6 months, studyid: ki1148112-LCNI-5, country: MALAWI, intXmhtcm: <151 cm_6 months
* agecat: 6 months, studyid: ki1148112-LCNI-5, country: MALAWI, intXmhtcm: >=155 cm_6 months
* agecat: 6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH, intXmhtcm: [151-155) cm_6 months
* agecat: 6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH, intXmhtcm: <151 cm_6 months
* agecat: 6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH, intXmhtcm: >=155 cm_6 months
* agecat: Birth, studyid: iLiNS_DYADM_LNS, country: MALAWI, intXmhtcm: <151 cm_Birth
* agecat: Birth, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN, intXmhtcm: <151 cm_Birth
* agecat: Birth, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN, intXmhtcm: >=155 cm_Birth
* agecat: Birth, studyid: ki1000304b-SAS-CompFeed, country: INDIA, intXmhtcm: [151-155) cm_Birth
* agecat: Birth, studyid: ki1000304b-SAS-CompFeed, country: INDIA, intXmhtcm: <151 cm_Birth
* agecat: Birth, studyid: ki1000304b-SAS-CompFeed, country: INDIA, intXmhtcm: >=155 cm_Birth
* agecat: Birth, studyid: ki1119695-PROBIT, country: BELARUS, intXmhtcm: [151-155) cm_Birth
* agecat: Birth, studyid: ki1119695-PROBIT, country: BELARUS, intXmhtcm: <151 cm_Birth
* agecat: Birth, studyid: ki1119695-PROBIT, country: BELARUS, intXmhtcm: >=155 cm_Birth
* agecat: Birth, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE, intXmhtcm: [151-155) cm_Birth
* agecat: Birth, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE, intXmhtcm: <151 cm_Birth
* agecat: Birth, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE, intXmhtcm: >=155 cm_Birth
* agecat: Birth, studyid: ki1135781-COHORTS, country: GUATEMALA, intXmhtcm: [151-155) cm_Birth
* agecat: Birth, studyid: ki1135781-COHORTS, country: GUATEMALA, intXmhtcm: <151 cm_Birth
* agecat: Birth, studyid: ki1135781-COHORTS, country: GUATEMALA, intXmhtcm: >=155 cm_Birth
* agecat: Birth, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI, intXmhtcm: <151 cm_Birth
* agecat: Birth, studyid: kiGH5241-JiVitA-3, country: BANGLADESH, intXmhtcm: [151-155) cm_Birth
* agecat: Birth, studyid: kiGH5241-JiVitA-3, country: BANGLADESH, intXmhtcm: <151 cm_Birth
* agecat: Birth, studyid: kiGH5241-JiVitA-3, country: BANGLADESH, intXmhtcm: >=155 cm_Birth

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: iLiNS_DYADM_LNS, country: MALAWI, intXmhtcm: <151 cm_Birth
* agecat: Birth, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN, intXmhtcm: >=155 cm_Birth
* agecat: Birth, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN, intXmhtcm: <151 cm_Birth
* agecat: Birth, studyid: ki1119695-PROBIT, country: BELARUS, intXmhtcm: <151 cm_Birth
* agecat: Birth, studyid: ki1119695-PROBIT, country: BELARUS, intXmhtcm: [151-155) cm_Birth
* agecat: Birth, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI, intXmhtcm: <151 cm_Birth
* agecat: 6 months, studyid: iLiNS_DYADM_LNS, country: MALAWI, intXmhtcm: <151 cm_6 months
* agecat: 6 months, studyid: iLiNS_DYADM_LNS, country: MALAWI, intXmhtcm: [151-155) cm_6 months
* agecat: 6 months, studyid: ki1000111-WASH-Kenya, country: KENYA, intXmhtcm: <151 cm_6 months
* agecat: 6 months, studyid: ki1000111-WASH-Kenya, country: KENYA, intXmhtcm: [151-155) cm_6 months
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH, intXmhtcm: >=155 cm_6 months
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH, intXmhtcm: <151 cm_6 months
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH, intXmhtcm: [151-155) cm_6 months
* agecat: 6 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI, intXmhtcm: <151 cm_6 months
* agecat: 6 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI, intXmhtcm: [151-155) cm_6 months
* agecat: 24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH, intXmhtcm: [151-155) cm_24 months
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF, intXmhtcm: >=155 cm_24 months
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF, intXmhtcm: <151 cm_24 months
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF, intXmhtcm: [151-155) cm_24 months
* agecat: 24 months, studyid: ki1119695-PROBIT, country: BELARUS, intXmhtcm: [151-155) cm_24 months
* agecat: 24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE, intXmhtcm: <151 cm_24 months
* agecat: 24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE, intXmhtcm: [151-155) cm_24 months

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

## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV

## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```

```
##           stunted
## tr           0   1
##   Control    0   0
##   LNS        0   0
##   Maternal   0   0
##   Other      0   0
##   VitA       0   0
##   Zinc     394  45
##           stunted
## tr          0  1
##   Control   0  0
##   LNS       0  0
##   Maternal  0  0
##   Other     0  0
##   VitA      0  0
##   Zinc     21  5
##           stunted
## tr          0  1
##   Control   0  0
##   LNS       0  0
##   Maternal  0  0
##   Other     0  0
##   VitA      0  0
##   Zinc     57 12
##           stunted
## tr           0   1
##   Control    0   0
##   LNS        0   0
##   Maternal   0   0
##   Other      0   0
##   VitA       0   0
##   Zinc     589 267
##           stunted
## tr          0  1
##   Control   0  0
##   LNS       0  0
##   Maternal  0  0
##   Other     0  0
##   VitA      0  0
##   Zinc     14 34
##           stunted
## tr          0  1
##   Control   0  0
##   LNS       0  0
##   Maternal  0  0
##   Other     0  0
##   VitA      0  0
##   Zinc     56 55
```

```
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```




# Results Detail

## Results Plots
![](/tmp/4ebe7465-b8ff-47e4-b41b-2f14d56e4e17/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/4ebe7465-b8ff-47e4-b41b-2f14d56e4e17/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/4ebe7465-b8ff-47e4-b41b-2f14d56e4e17/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/4ebe7465-b8ff-47e4-b41b-2f14d56e4e17/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                     country                        intXmhtcm                intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------  --------------------------  -----------------------------  -----------------------  -------------------  ---------------  ----------  -----------  ----------
Birth       ki1000304b-SAS-CompFeed     INDIA                          >=155 cm_Birth           Control              NA                0.2352941    0.0109003   0.4596880
Birth       ki1000304b-SAS-CompFeed     INDIA                          >=155 cm_Birth           Other                NA                0.2307692    0.0918127   0.3697258
Birth       ki1000304b-SAS-CompFeed     INDIA                          <151 cm_Birth            Control              NA                0.4166667    0.0271487   0.8061847
Birth       ki1000304b-SAS-CompFeed     INDIA                          <151 cm_Birth            Other                NA                0.4444444   -0.0298354   0.9187243
Birth       ki1000304b-SAS-CompFeed     INDIA                          [151-155) cm_Birth       Control              NA                0.3076923    0.1928643   0.4225203
Birth       ki1000304b-SAS-CompFeed     INDIA                          [151-155) cm_Birth       Other                NA                0.4166667   -0.0347545   0.8680879
Birth       ki1119695-PROBIT            BELARUS                        >=155 cm_Birth           Control              NA                0.0032594    0.0009324   0.0055863
Birth       ki1119695-PROBIT            BELARUS                        >=155 cm_Birth           Maternal             NA                0.0016265    0.0004597   0.0027933
Birth       ki1126311-ZVITAMBO          ZIMBABWE                       >=155 cm_Birth           Control              NA                0.0926119    0.0796511   0.1055726
Birth       ki1126311-ZVITAMBO          ZIMBABWE                       >=155 cm_Birth           VitA                 NA                0.0949498    0.0873933   0.1025063
Birth       ki1126311-ZVITAMBO          ZIMBABWE                       <151 cm_Birth            Control              NA                0.1304348    0.0741947   0.1866749
Birth       ki1126311-ZVITAMBO          ZIMBABWE                       <151 cm_Birth            VitA                 NA                0.1428571    0.1093613   0.1763530
Birth       ki1126311-ZVITAMBO          ZIMBABWE                       [151-155) cm_Birth       Control              NA                0.1171171    0.0825676   0.1516667
Birth       ki1126311-ZVITAMBO          ZIMBABWE                       [151-155) cm_Birth       VitA                 NA                0.1063433    0.0878827   0.1248039
Birth       ki1135781-COHORTS           GUATEMALA                      >=155 cm_Birth           Control              NA                0.1041667    0.0173529   0.1909804
Birth       ki1135781-COHORTS           GUATEMALA                      >=155 cm_Birth           Other                NA                0.0161290   -0.0153708   0.0476289
Birth       ki1135781-COHORTS           GUATEMALA                      <151 cm_Birth            Control              NA                0.0411985    0.0173371   0.0650599
Birth       ki1135781-COHORTS           GUATEMALA                      <151 cm_Birth            Other                NA                0.0755396    0.0444470   0.1066321
Birth       ki1135781-COHORTS           GUATEMALA                      [151-155) cm_Birth       Control              NA                0.0365854   -0.0041600   0.0773308
Birth       ki1135781-COHORTS           GUATEMALA                      [151-155) cm_Birth       Other                NA                0.0776699    0.0258405   0.1294993
Birth       kiGH5241-JiVitA-3           BANGLADESH                     >=155 cm_Birth           Control              NA                0.2040250    0.1778554   0.2301945
Birth       kiGH5241-JiVitA-3           BANGLADESH                     >=155 cm_Birth           Maternal             NA                0.1788897    0.1549208   0.2028585
Birth       kiGH5241-JiVitA-3           BANGLADESH                     <151 cm_Birth            Control              NA                0.3988716    0.3849794   0.4127638
Birth       kiGH5241-JiVitA-3           BANGLADESH                     <151 cm_Birth            Maternal             NA                0.3589874    0.3441440   0.3738309
Birth       kiGH5241-JiVitA-3           BANGLADESH                     [151-155) cm_Birth       Control              NA                0.2819767    0.2617701   0.3021834
Birth       kiGH5241-JiVitA-3           BANGLADESH                     [151-155) cm_Birth       Maternal             NA                0.2535098    0.2340763   0.2729434
6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     >=155 cm_6 months        Control              NA                0.0666667   -0.0229315   0.1562648
6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     >=155 cm_6 months        LNS                  NA                0.0294118   -0.0275949   0.0864184
6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     >=155 cm_6 months        Other                NA                0.0579710    0.0026233   0.1133188
6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     <151 cm_6 months         Control              NA                0.2692308    0.1706544   0.3678071
6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     <151 cm_6 months         LNS                  NA                0.2385321    0.1584098   0.3186544
6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     <151 cm_6 months         Other                NA                0.1890244    0.1290165   0.2490323
6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     [151-155) cm_6 months    Control              NA                0.1132075    0.0276894   0.1987257
6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     [151-155) cm_6 months    LNS                  NA                0.0444444   -0.0159196   0.1048084
6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     [151-155) cm_6 months    Other                NA                0.0700000    0.0198653   0.1201347
6 months    ki1000111-WASH-Kenya        KENYA                          >=155 cm_6 months        Control              NA                0.1111111   -0.0353176   0.2575399
6 months    ki1000111-WASH-Kenya        KENYA                          >=155 cm_6 months        LNS                  NA                0.1538462   -0.0439676   0.3516599
6 months    ki1000111-WASH-Kenya        KENYA                          >=155 cm_6 months        Other                NA                0.1785714    0.0354937   0.3216491
6 months    ki1000125-AgaKhanUniv       PAKISTAN                       >=155 cm_6 months        Control              NA                0.1698113    0.0681547   0.2714679
6 months    ki1000125-AgaKhanUniv       PAKISTAN                       >=155 cm_6 months        Maternal             NA                0.0555556   -0.0196937   0.1308049
6 months    ki1000125-AgaKhanUniv       PAKISTAN                       <151 cm_6 months         Control              NA                0.3200000    0.1352883   0.5047117
6 months    ki1000125-AgaKhanUniv       PAKISTAN                       <151 cm_6 months         Maternal             NA                0.4000000    0.2060139   0.5939861
6 months    ki1000125-AgaKhanUniv       PAKISTAN                       [151-155) cm_6 months    Control              NA                0.3333333    0.1130988   0.5535679
6 months    ki1000125-AgaKhanUniv       PAKISTAN                       [151-155) cm_6 months    Maternal             NA                0.2962963    0.1221139   0.4704787
6 months    ki1000304b-SAS-CompFeed     INDIA                          >=155 cm_6 months        Control              NA                0.1623932    0.0818047   0.2429817
6 months    ki1000304b-SAS-CompFeed     INDIA                          >=155 cm_6 months        Other                NA                0.1666667    0.1463681   0.1869653
6 months    ki1000304b-SAS-CompFeed     INDIA                          <151 cm_6 months         Control              NA                0.4588235    0.3177835   0.5998635
6 months    ki1000304b-SAS-CompFeed     INDIA                          <151 cm_6 months         Other                NA                0.4736842    0.3514053   0.5959632
6 months    ki1000304b-SAS-CompFeed     INDIA                          [151-155) cm_6 months    Control              NA                0.2711864    0.1140523   0.4283206
6 months    ki1000304b-SAS-CompFeed     INDIA                          [151-155) cm_6 months    Other                NA                0.2800000    0.1198162   0.4401838
6 months    ki1000304b-SAS-FoodSuppl    INDIA                          >=155 cm_6 months        Control              NA                0.3333333    0.0929460   0.5737206
6 months    ki1000304b-SAS-FoodSuppl    INDIA                          >=155 cm_6 months        Other                NA                0.2156863    0.1019407   0.3294318
6 months    ki1000304b-SAS-FoodSuppl    INDIA                          <151 cm_6 months         Control              NA                0.6734694    0.5418242   0.8051145
6 months    ki1000304b-SAS-FoodSuppl    INDIA                          <151 cm_6 months         Other                NA                0.4755245    0.3934585   0.5575904
6 months    ki1000304b-SAS-FoodSuppl    INDIA                          [151-155) cm_6 months    Control              NA                0.3200000    0.1361848   0.5038152
6 months    ki1000304b-SAS-FoodSuppl    INDIA                          [151-155) cm_6 months    Other                NA                0.3521127    0.2404306   0.4637947
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   >=155 cm_6 months        Control              NA                0.0984848    0.0625244   0.1344453
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   >=155 cm_6 months        Other                NA                0.0595238    0.0302974   0.0887502
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   >=155 cm_6 months        Zinc                 NA                0.0872865    0.0631768   0.1113962
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   <151 cm_6 months         Control              NA                0.1562500    0.0671244   0.2453756
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   <151 cm_6 months         Other                NA                0.2343750    0.1303952   0.3383548
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   <151 cm_6 months         Zinc                 NA                0.1481481    0.0881084   0.2081879
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   [151-155) cm_6 months    Control              NA                0.1170213    0.0519517   0.1820908
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   [151-155) cm_6 months    Other                NA                0.1354167    0.0668776   0.2039557
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   [151-155) cm_6 months    Zinc                 NA                0.1325967    0.0831233   0.1820701
6 months    ki1112895-Guatemala BSC     GUATEMALA                      >=155 cm_6 months        Control              NA                0.0588235   -0.0549382   0.1725853
6 months    ki1112895-Guatemala BSC     GUATEMALA                      >=155 cm_6 months        Other                NA                0.3076923    0.0525127   0.5628719
6 months    ki1112895-Guatemala BSC     GUATEMALA                      <151 cm_6 months         Control              NA                0.4074074    0.2757500   0.5390648
6 months    ki1112895-Guatemala BSC     GUATEMALA                      <151 cm_6 months         Other                NA                0.3272727    0.2026944   0.4518511
6 months    ki1112895-Guatemala BSC     GUATEMALA                      [151-155) cm_6 months    Control              NA                0.2666667    0.0400982   0.4932351
6 months    ki1112895-Guatemala BSC     GUATEMALA                      [151-155) cm_6 months    Other                NA                0.1923077    0.0389362   0.3456792
6 months    ki1119695-PROBIT            BELARUS                        >=155 cm_6 months        Control              NA                0.0648696    0.0449511   0.0847880
6 months    ki1119695-PROBIT            BELARUS                        >=155 cm_6 months        Maternal             NA                0.0533218    0.0377280   0.0689156
6 months    ki1119695-PROBIT            BELARUS                        <151 cm_6 months         Control              NA                0.1800000    0.0225627   0.3374373
6 months    ki1119695-PROBIT            BELARUS                        <151 cm_6 months         Maternal             NA                0.1724138    0.0457328   0.2990948
6 months    ki1119695-PROBIT            BELARUS                        [151-155) cm_6 months    Control              NA                0.0963855    0.0364459   0.1563252
6 months    ki1119695-PROBIT            BELARUS                        [151-155) cm_6 months    Maternal             NA                0.0983607    0.0563870   0.1403343
6 months    ki1126311-ZVITAMBO          ZIMBABWE                       >=155 cm_6 months        Control              NA                0.1507463    0.1315870   0.1699055
6 months    ki1126311-ZVITAMBO          ZIMBABWE                       >=155 cm_6 months        VitA                 NA                0.1439394    0.1330053   0.1548735
6 months    ki1126311-ZVITAMBO          ZIMBABWE                       <151 cm_6 months         Control              NA                0.3571429    0.2621581   0.4521277
6 months    ki1126311-ZVITAMBO          ZIMBABWE                       <151 cm_6 months         VitA                 NA                0.3453947    0.2918768   0.3989127
6 months    ki1126311-ZVITAMBO          ZIMBABWE                       [151-155) cm_6 months    Control              NA                0.1490385    0.1006159   0.1974610
6 months    ki1126311-ZVITAMBO          ZIMBABWE                       [151-155) cm_6 months    VitA                 NA                0.2125668    0.1832323   0.2419014
6 months    ki1135781-COHORTS           GUATEMALA                      >=155 cm_6 months        Control              NA                0.3018868    0.1777278   0.4260458
6 months    ki1135781-COHORTS           GUATEMALA                      >=155 cm_6 months        Other                NA                0.1228070    0.0372111   0.2084029
6 months    ki1135781-COHORTS           GUATEMALA                      <151 cm_6 months         Control              NA                0.5165563    0.4601494   0.5729632
6 months    ki1135781-COHORTS           GUATEMALA                      <151 cm_6 months         Other                NA                0.4466019    0.3911261   0.5020778
6 months    ki1135781-COHORTS           GUATEMALA                      [151-155) cm_6 months    Control              NA                0.3720930    0.2696694   0.4745167
6 months    ki1135781-COHORTS           GUATEMALA                      [151-155) cm_6 months    Other                NA                0.2990654    0.2120881   0.3860428
6 months    ki1148112-iLiNS-DOSE        MALAWI                         >=155 cm_6 months        Control              NA                0.2222222    0.1581725   0.2862719
6 months    ki1148112-iLiNS-DOSE        MALAWI                         >=155 cm_6 months        LNS                  NA                0.2416481    0.2136362   0.2696600
6 months    ki1148112-iLiNS-DOSE        MALAWI                         <151 cm_6 months         Control              NA                0.4428571    0.3263479   0.5593664
6 months    ki1148112-iLiNS-DOSE        MALAWI                         <151 cm_6 months         LNS                  NA                0.3871951    0.3344134   0.4399768
6 months    ki1148112-iLiNS-DOSE        MALAWI                         [151-155) cm_6 months    Control              NA                0.4252874    0.3212909   0.5292838
6 months    ki1148112-iLiNS-DOSE        MALAWI                         [151-155) cm_6 months    LNS                  NA                0.3481675    0.3003440   0.3959911
6 months    ki1148112-LCNI-5            MALAWI                         >=155 cm_6 months        Control              NA                0.2611940    0.1867438   0.3356443
6 months    ki1148112-LCNI-5            MALAWI                         >=155 cm_6 months        LNS                  NA                0.3038462    0.2478878   0.3598045
6 months    ki1148112-LCNI-5            MALAWI                         >=155 cm_6 months        Other                NA                0.3445378    0.2590724   0.4300033
6 months    ki1148112-LCNI-5            MALAWI                         <151 cm_6 months         Control              NA                0.5172414    0.3346734   0.6998094
6 months    ki1148112-LCNI-5            MALAWI                         <151 cm_6 months         LNS                  NA                0.5606061    0.4404084   0.6808037
6 months    ki1148112-LCNI-5            MALAWI                         <151 cm_6 months         Other                NA                0.5833333    0.4216692   0.7449974
6 months    ki1148112-LCNI-5            MALAWI                         [151-155) cm_6 months    Control              NA                0.4666667    0.3205235   0.6128098
6 months    ki1148112-LCNI-5            MALAWI                         [151-155) cm_6 months    LNS                  NA                0.4000000    0.3012298   0.4987702
6 months    ki1148112-LCNI-5            MALAWI                         [151-155) cm_6 months    Other                NA                0.3846154    0.2520387   0.5171920
6 months    kiGH5241-JiVitA-3           BANGLADESH                     >=155 cm_6 months        Control              NA                0.1046644    0.0860684   0.1232604
6 months    kiGH5241-JiVitA-3           BANGLADESH                     >=155 cm_6 months        Maternal             NA                0.1000000    0.0774196   0.1225804
6 months    kiGH5241-JiVitA-3           BANGLADESH                     <151 cm_6 months         Control              NA                0.3355753    0.3182197   0.3529310
6 months    kiGH5241-JiVitA-3           BANGLADESH                     <151 cm_6 months         Maternal             NA                0.3104814    0.2950976   0.3258653
6 months    kiGH5241-JiVitA-3           BANGLADESH                     [151-155) cm_6 months    Control              NA                0.1935179    0.1744810   0.2125547
6 months    kiGH5241-JiVitA-3           BANGLADESH                     [151-155) cm_6 months    Maternal             NA                0.1696942    0.1508266   0.1885617
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     >=155 cm_24 months       Control              NA                0.2909091    0.1706365   0.4111817
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     >=155 cm_24 months       LNS                  NA                0.1967213    0.0967645   0.2966781
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     >=155 cm_24 months       Other                NA                0.2089552    0.1399800   0.2779305
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     <151 cm_24 months        Control              NA                0.5390071    0.4566635   0.6213507
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     <151 cm_24 months        LNS                  NA                0.4567901    0.3800222   0.5335581
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     <151 cm_24 months        Other                NA                0.5325077    0.4780519   0.5869635
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     [151-155) cm_24 months   Control              NA                0.3108108    0.2051896   0.4164320
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     [151-155) cm_24 months   LNS                  NA                0.3571429    0.2545096   0.4597762
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     [151-155) cm_24 months   Other                NA                0.3421053    0.2665637   0.4176468
24 months   ki1000111-WASH-Kenya        KENYA                          >=155 cm_24 months       Control              NA                0.2590164    0.2242411   0.2937917
24 months   ki1000111-WASH-Kenya        KENYA                          >=155 cm_24 months       LNS                  NA                0.2614213    0.2180214   0.3048212
24 months   ki1000111-WASH-Kenya        KENYA                          >=155 cm_24 months       Other                NA                0.2770186    0.2460952   0.3079421
24 months   ki1000111-WASH-Kenya        KENYA                          <151 cm_24 months        Control              NA                0.5161290    0.3393669   0.6928911
24 months   ki1000111-WASH-Kenya        KENYA                          <151 cm_24 months        LNS                  NA                0.5909091    0.3844733   0.7973449
24 months   ki1000111-WASH-Kenya        KENYA                          <151 cm_24 months        Other                NA                0.5961538    0.4621518   0.7301559
24 months   ki1000111-WASH-Kenya        KENYA                          [151-155) cm_24 months   Control              NA                0.5125000    0.4027535   0.6222465
24 months   ki1000111-WASH-Kenya        KENYA                          [151-155) cm_24 months   LNS                  NA                0.3934426    0.2706102   0.5162751
24 months   ki1000111-WASH-Kenya        KENYA                          [151-155) cm_24 months   Other                NA                0.4561404    0.3645306   0.5477501
24 months   ki1119695-PROBIT            BELARUS                        >=155 cm_24 months       Control              NA                0.1239437    0.0481333   0.1997541
24 months   ki1119695-PROBIT            BELARUS                        >=155 cm_24 months       Maternal             NA                0.0997732    0.0505451   0.1490014
24 months   ki1119695-PROBIT            BELARUS                        <151 cm_24 months        Control              NA                0.0000000    0.0000000   0.0000000
24 months   ki1119695-PROBIT            BELARUS                        <151 cm_24 months        Maternal             NA                0.8750000    0.7584298   0.9915702
24 months   ki1126311-ZVITAMBO          ZIMBABWE                       >=155 cm_24 months       Control              NA                0.3333333   -0.0606343   0.7273009
24 months   ki1126311-ZVITAMBO          ZIMBABWE                       >=155 cm_24 months       VitA                 NA                0.6666667    0.2726991   1.0606343
24 months   ki1135781-COHORTS           GUATEMALA                      >=155 cm_24 months       Control              NA                0.5333333    0.2766927   0.7899740
24 months   ki1135781-COHORTS           GUATEMALA                      >=155 cm_24 months       Other                NA                0.6250000    0.3838629   0.8661371
24 months   ki1135781-COHORTS           GUATEMALA                      <151 cm_24 months        Control              NA                0.8876404    0.8218464   0.9534345
24 months   ki1135781-COHORTS           GUATEMALA                      <151 cm_24 months        Other                NA                0.7802198    0.6949019   0.8655376
24 months   ki1135781-COHORTS           GUATEMALA                      [151-155) cm_24 months   Control              NA                0.8076923    0.6547803   0.9606043
24 months   ki1135781-COHORTS           GUATEMALA                      [151-155) cm_24 months   Other                NA                0.6785714    0.5039619   0.8531810
24 months   ki1148112-iLiNS-DOSE        MALAWI                         >=155 cm_24 months       Control              NA                0.3835616    0.2718819   0.4952413
24 months   ki1148112-iLiNS-DOSE        MALAWI                         >=155 cm_24 months       LNS                  NA                0.3988270    0.3467929   0.4508611
24 months   ki1148112-iLiNS-DOSE        MALAWI                         <151 cm_24 months        Control              NA                0.8000000    0.6426845   0.9573155
24 months   ki1148112-iLiNS-DOSE        MALAWI                         <151 cm_24 months        LNS                  NA                0.6377953    0.5539271   0.7216635
24 months   ki1148112-iLiNS-DOSE        MALAWI                         [151-155) cm_24 months   Control              NA                0.5806452    0.4065226   0.7547677
24 months   ki1148112-iLiNS-DOSE        MALAWI                         [151-155) cm_24 months   LNS                  NA                0.6011236    0.5290161   0.6732311
24 months   ki1148112-LCNI-5            MALAWI                         >=155 cm_24 months       Control              NA                0.3066667    0.2020942   0.4112391
24 months   ki1148112-LCNI-5            MALAWI                         >=155 cm_24 months       LNS                  NA                0.3214286    0.2347574   0.4080997
24 months   ki1148112-LCNI-5            MALAWI                         >=155 cm_24 months       Other                NA                0.2857143    0.1671507   0.4042779
24 months   ki1148112-LCNI-5            MALAWI                         <151 cm_24 months        Control              NA                0.6470588    0.4181232   0.8759944
24 months   ki1148112-LCNI-5            MALAWI                         <151 cm_24 months        LNS                  NA                0.5151515    0.3433099   0.6869931
24 months   ki1148112-LCNI-5            MALAWI                         <151 cm_24 months        Other                NA                0.3333333    0.0929176   0.5737491
24 months   ki1148112-LCNI-5            MALAWI                         [151-155) cm_24 months   Control              NA                0.4210526    0.1975744   0.6445308
24 months   ki1148112-LCNI-5            MALAWI                         [151-155) cm_24 months   LNS                  NA                0.5000000    0.3308177   0.6691823
24 months   ki1148112-LCNI-5            MALAWI                         [151-155) cm_24 months   Other                NA                0.4347826    0.2308418   0.6387234
24 months   kiGH5241-JiVitA-3           BANGLADESH                     >=155 cm_24 months       Control              NA                0.0000000    0.0000000   0.0000000
24 months   kiGH5241-JiVitA-3           BANGLADESH                     >=155 cm_24 months       Maternal             NA                0.3846154    0.0284303   0.7408005
24 months   kiGH5241-JiVitA-3           BANGLADESH                     <151 cm_24 months        Control              NA                0.7000000    0.5125522   0.8874478
24 months   kiGH5241-JiVitA-3           BANGLADESH                     <151 cm_24 months        Maternal             NA                0.7058824    0.5519027   0.8598620
24 months   kiGH5241-JiVitA-3           BANGLADESH                     [151-155) cm_24 months   Control              NA                0.3157895    0.0491469   0.5824321
24 months   kiGH5241-JiVitA-3           BANGLADESH                     [151-155) cm_24 months   Maternal             NA                0.3478261    0.1144309   0.5812213


### Parameter: E(Y)


agecat      studyid                     country                        intXmhtcm                intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------  --------------------------  -----------------------------  -----------------------  -------------------  ---------------  ----------  -----------  ----------
Birth       ki1000304b-SAS-CompFeed     INDIA                          >=155 cm_Birth           NA                   NA                0.2325581    0.1123549   0.3527613
Birth       ki1000304b-SAS-CompFeed     INDIA                          <151 cm_Birth            NA                   NA                0.4285714    0.1288548   0.7282880
Birth       ki1000304b-SAS-CompFeed     INDIA                          [151-155) cm_Birth       NA                   NA                0.3600000    0.1310850   0.5889150
Birth       ki1119695-PROBIT            BELARUS                        >=155 cm_Birth           NA                   NA                0.0024231    0.0011035   0.0037428
Birth       ki1126311-ZVITAMBO          ZIMBABWE                       >=155 cm_Birth           NA                   NA                0.0943666    0.0878382   0.1008949
Birth       ki1126311-ZVITAMBO          ZIMBABWE                       <151 cm_Birth            NA                   NA                0.1397849    0.1109875   0.1685824
Birth       ki1126311-ZVITAMBO          ZIMBABWE                       [151-155) cm_Birth       NA                   NA                0.1088968    0.0926025   0.1251911
Birth       ki1135781-COHORTS           GUATEMALA                      >=155 cm_Birth           NA                   NA                0.0545455    0.0119136   0.0971773
Birth       ki1135781-COHORTS           GUATEMALA                      <151 cm_Birth            NA                   NA                0.0587156    0.0389602   0.0784710
Birth       ki1135781-COHORTS           GUATEMALA                      [151-155) cm_Birth       NA                   NA                0.0594595    0.0252900   0.0936289
Birth       kiGH5241-JiVitA-3           BANGLADESH                     >=155 cm_Birth           NA                   NA                0.1913793    0.1736235   0.2091351
Birth       kiGH5241-JiVitA-3           BANGLADESH                     <151 cm_Birth            NA                   NA                0.3788666    0.3685657   0.3891676
Birth       kiGH5241-JiVitA-3           BANGLADESH                     [151-155) cm_Birth       NA                   NA                0.2674964    0.2533902   0.2816026
6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     >=155 cm_6 months        NA                   NA                0.0526316    0.0145387   0.0907245
6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     <151 cm_6 months         NA                   NA                0.2222222    0.1786675   0.2657770
6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     [151-155) cm_6 months    NA                   NA                0.0757576    0.0388070   0.1127081
6 months    ki1000111-WASH-Kenya        KENYA                          >=155 cm_6 months        NA                   NA                0.1525424    0.0600111   0.2450736
6 months    ki1000125-AgaKhanUniv       PAKISTAN                       >=155 cm_6 months        NA                   NA                0.1235955    0.0548316   0.1923594
6 months    ki1000125-AgaKhanUniv       PAKISTAN                       <151 cm_6 months         NA                   NA                0.3600000    0.2256025   0.4943975
6 months    ki1000125-AgaKhanUniv       PAKISTAN                       [151-155) cm_6 months    NA                   NA                0.3111111    0.1743212   0.4479010
6 months    ki1000304b-SAS-CompFeed     INDIA                          >=155 cm_6 months        NA                   NA                0.1646091    0.1243923   0.2048258
6 months    ki1000304b-SAS-CompFeed     INDIA                          <151 cm_6 months         NA                   NA                0.4666667    0.3737399   0.5595934
6 months    ki1000304b-SAS-CompFeed     INDIA                          [151-155) cm_6 months    NA                   NA                0.2761194    0.1630772   0.3891616
6 months    ki1000304b-SAS-FoodSuppl    INDIA                          >=155 cm_6 months        NA                   NA                0.2424242    0.1382423   0.3466062
6 months    ki1000304b-SAS-FoodSuppl    INDIA                          <151 cm_6 months         NA                   NA                0.5260417    0.4552289   0.5968544
6 months    ki1000304b-SAS-FoodSuppl    INDIA                          [151-155) cm_6 months    NA                   NA                0.3437500    0.2482414   0.4392586
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   >=155 cm_6 months        NA                   NA                0.0834132    0.0666245   0.1002020
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   <151 cm_6 months         NA                   NA                0.1711027    0.1255015   0.2167039
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   [151-155) cm_6 months    NA                   NA                0.1293801    0.0951825   0.1635776
6 months    ki1112895-Guatemala BSC     GUATEMALA                      >=155 cm_6 months        NA                   NA                0.1666667    0.0310282   0.3023051
6 months    ki1112895-Guatemala BSC     GUATEMALA                      <151 cm_6 months         NA                   NA                0.3669725    0.2760724   0.4578726
6 months    ki1112895-Guatemala BSC     GUATEMALA                      [151-155) cm_6 months    NA                   NA                0.2195122    0.0912406   0.3477838
6 months    ki1119695-PROBIT            BELARUS                        >=155 cm_6 months        NA                   NA                0.0590732    0.0458079   0.0723385
6 months    ki1119695-PROBIT            BELARUS                        <151 cm_6 months         NA                   NA                0.1759259    0.0762628   0.2755890
6 months    ki1119695-PROBIT            BELARUS                        [151-155) cm_6 months    NA                   NA                0.0974212    0.0614666   0.1333758
6 months    ki1126311-ZVITAMBO          ZIMBABWE                       >=155 cm_6 months        NA                   NA                0.1456604    0.1361623   0.1551585
6 months    ki1126311-ZVITAMBO          ZIMBABWE                       <151 cm_6 months         NA                   NA                0.3482587    0.3016288   0.3948886
6 months    ki1126311-ZVITAMBO          ZIMBABWE                       [151-155) cm_6 months    NA                   NA                0.1987448    0.1734355   0.2240540
6 months    ki1135781-COHORTS           GUATEMALA                      >=155 cm_6 months        NA                   NA                0.2090909    0.1327485   0.2854333
6 months    ki1135781-COHORTS           GUATEMALA                      <151 cm_6 months         NA                   NA                0.4811784    0.4415282   0.5208286
6 months    ki1135781-COHORTS           GUATEMALA                      [151-155) cm_6 months    NA                   NA                0.3316062    0.2650138   0.3981987
6 months    ki1148112-iLiNS-DOSE        MALAWI                         >=155 cm_6 months        NA                   NA                0.2386792    0.2130054   0.2643531
6 months    ki1148112-iLiNS-DOSE        MALAWI                         <151 cm_6 months         NA                   NA                0.3969849    0.3488562   0.4451136
6 months    ki1148112-iLiNS-DOSE        MALAWI                         [151-155) cm_6 months    NA                   NA                0.3624733    0.3189209   0.4060258
6 months    ki1148112-LCNI-5            MALAWI                         >=155 cm_6 months        NA                   NA                0.3021442    0.2623699   0.3419186
6 months    ki1148112-LCNI-5            MALAWI                         <151 cm_6 months         NA                   NA                0.5572519    0.4718671   0.6426367
6 months    ki1148112-LCNI-5            MALAWI                         [151-155) cm_6 months    NA                   NA                0.4114583    0.3416700   0.4812467
6 months    kiGH5241-JiVitA-3           BANGLADESH                     >=155 cm_6 months        NA                   NA                0.1023221    0.0876856   0.1169586
6 months    kiGH5241-JiVitA-3           BANGLADESH                     <151 cm_6 months         NA                   NA                0.3229113    0.3112696   0.3345530
6 months    kiGH5241-JiVitA-3           BANGLADESH                     [151-155) cm_6 months    NA                   NA                0.1814366    0.1680294   0.1948438
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     >=155 cm_24 months       NA                   NA                0.2240000    0.1722151   0.2757849
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     <151 cm_24 months        NA                   NA                0.5143770    0.4751939   0.5535601
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     [151-155) cm_24 months   NA                   NA                0.3387097    0.2859407   0.3914787
24 months   ki1000111-WASH-Kenya        KENYA                          >=155 cm_24 months       NA                   NA                0.2675511    0.2471459   0.2879563
24 months   ki1000111-WASH-Kenya        KENYA                          <151 cm_24 months        NA                   NA                0.5714286    0.4763190   0.6665381
24 months   ki1000111-WASH-Kenya        KENYA                          [151-155) cm_24 months   NA                   NA                0.4588235    0.3975429   0.5201042
24 months   ki1119695-PROBIT            BELARUS                        >=155 cm_24 months       NA                   NA                0.1105528    0.0672815   0.1538240
24 months   ki1119695-PROBIT            BELARUS                        <151 cm_24 months        NA                   NA                0.5384615    0.2097906   0.8671324
24 months   ki1126311-ZVITAMBO          ZIMBABWE                       >=155 cm_24 months       NA                   NA                0.5000000    0.2045243   0.7954757
24 months   ki1135781-COHORTS           GUATEMALA                      >=155 cm_24 months       NA                   NA                0.5806452    0.4040683   0.7572220
24 months   ki1135781-COHORTS           GUATEMALA                      <151 cm_24 months        NA                   NA                0.8333333    0.7787380   0.8879286
24 months   ki1135781-COHORTS           GUATEMALA                      [151-155) cm_24 months   NA                   NA                0.7407407    0.6227602   0.8587213
24 months   ki1148112-iLiNS-DOSE        MALAWI                         >=155 cm_24 months       NA                   NA                0.3961353    0.3489654   0.4433051
24 months   ki1148112-iLiNS-DOSE        MALAWI                         <151 cm_24 months        NA                   NA                0.6644737    0.5891621   0.7397853
24 months   ki1148112-iLiNS-DOSE        MALAWI                         [151-155) cm_24 months   NA                   NA                0.5980861    0.5314569   0.6647154
24 months   ki1148112-LCNI-5            MALAWI                         >=155 cm_24 months       NA                   NA                0.3086420    0.2504425   0.3668415
24 months   ki1148112-LCNI-5            MALAWI                         <151 cm_24 months        NA                   NA                0.5076923    0.3852091   0.6301756
24 months   ki1148112-LCNI-5            MALAWI                         [151-155) cm_24 months   NA                   NA                0.4605263    0.3477209   0.5733317
24 months   kiGH5241-JiVitA-3           BANGLADESH                     >=155 cm_24 months       NA                   NA                0.2000000   -0.0095290   0.4095290
24 months   kiGH5241-JiVitA-3           BANGLADESH                     <151 cm_24 months        NA                   NA                0.7032967    0.5839782   0.8226153
24 months   kiGH5241-JiVitA-3           BANGLADESH                     [151-155) cm_24 months   NA                   NA                0.3333333    0.1571738   0.5094929


### Parameter: RR


agecat      studyid                     country                        intXmhtcm                intervention_level   baseline_level             estimate            ci_lower            ci_upper
----------  --------------------------  -----------------------------  -----------------------  -------------------  ---------------  ------------------  ------------------  ------------------
Birth       ki1000304b-SAS-CompFeed     INDIA                          >=155 cm_Birth           Control              Control                   1.0000000           1.0000000           1.0000000
Birth       ki1000304b-SAS-CompFeed     INDIA                          >=155 cm_Birth           Other                Control                   0.9807692           0.3133317           3.0699359
Birth       ki1000304b-SAS-CompFeed     INDIA                          <151 cm_Birth            Control              Control                   1.0000000           1.0000000           1.0000000
Birth       ki1000304b-SAS-CompFeed     INDIA                          <151 cm_Birth            Other                Control                   1.0666667           0.2581648           4.4071767
Birth       ki1000304b-SAS-CompFeed     INDIA                          [151-155) cm_Birth       Control              Control                   1.0000000           1.0000000           1.0000000
Birth       ki1000304b-SAS-CompFeed     INDIA                          [151-155) cm_Birth       Other                Control                   1.3541667           0.4265502           4.2990657
Birth       ki1119695-PROBIT            BELARUS                        >=155 cm_Birth           Control              Control                   1.0000000           1.0000000           1.0000000
Birth       ki1119695-PROBIT            BELARUS                        >=155 cm_Birth           Maternal             Control                   0.4990248           0.1811963           1.3743423
Birth       ki1126311-ZVITAMBO          ZIMBABWE                       >=155 cm_Birth           Control              Control                   1.0000000           1.0000000           1.0000000
Birth       ki1126311-ZVITAMBO          ZIMBABWE                       >=155 cm_Birth           VitA                 Control                   1.0252449           0.8727891           1.2043313
Birth       ki1126311-ZVITAMBO          ZIMBABWE                       <151 cm_Birth            Control              Control                   1.0000000           1.0000000           1.0000000
Birth       ki1126311-ZVITAMBO          ZIMBABWE                       <151 cm_Birth            VitA                 Control                   1.0952381           0.6704333           1.7892107
Birth       ki1126311-ZVITAMBO          ZIMBABWE                       [151-155) cm_Birth       Control              Control                   1.0000000           1.0000000           1.0000000
Birth       ki1126311-ZVITAMBO          ZIMBABWE                       [151-155) cm_Birth       VitA                 Control                   0.9080080           0.6448172           1.2786238
Birth       ki1135781-COHORTS           GUATEMALA                      >=155 cm_Birth           Control              Control                   1.0000000           1.0000000           1.0000000
Birth       ki1135781-COHORTS           GUATEMALA                      >=155 cm_Birth           Other                Control                   0.1548387           0.0185228           1.2943522
Birth       ki1135781-COHORTS           GUATEMALA                      <151 cm_Birth            Control              Control                   1.0000000           1.0000000           1.0000000
Birth       ki1135781-COHORTS           GUATEMALA                      <151 cm_Birth            Other                Control                   1.8335512           0.9009658           3.7314511
Birth       ki1135781-COHORTS           GUATEMALA                      [151-155) cm_Birth       Control              Control                   1.0000000           1.0000000           1.0000000
Birth       ki1135781-COHORTS           GUATEMALA                      [151-155) cm_Birth       Other                Control                   2.1229773           0.5795511           7.7767655
Birth       kiGH5241-JiVitA-3           BANGLADESH                     >=155 cm_Birth           Control              Control                   1.0000000           1.0000000           1.0000000
Birth       kiGH5241-JiVitA-3           BANGLADESH                     >=155 cm_Birth           Maternal             Control                   0.8768027           0.7283460           1.0555189
Birth       kiGH5241-JiVitA-3           BANGLADESH                     <151 cm_Birth            Control              Control                   1.0000000           1.0000000           1.0000000
Birth       kiGH5241-JiVitA-3           BANGLADESH                     <151 cm_Birth            Maternal             Control                   0.9000075           0.8526418           0.9500044
Birth       kiGH5241-JiVitA-3           BANGLADESH                     [151-155) cm_Birth       Control              Control                   1.0000000           1.0000000           1.0000000
Birth       kiGH5241-JiVitA-3           BANGLADESH                     [151-155) cm_Birth       Maternal             Control                   0.8990452           0.8094970           0.9984994
6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     >=155 cm_6 months        Control              Control                   1.0000000           1.0000000           1.0000000
6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     >=155 cm_6 months        LNS                  Control                   0.4411765           0.0417144           4.6659303
6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     >=155 cm_6 months        Other                Control                   0.8695652           0.1672377           4.5213710
6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     <151 cm_6 months         Control              Control                   1.0000000           1.0000000           1.0000000
6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     <151 cm_6 months         LNS                  Control                   0.8859764           0.5390530           1.4561726
6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     <151 cm_6 months         Other                Control                   0.7020906           0.4324466           1.1398661
6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     [151-155) cm_6 months    Control              Control                   1.0000000           1.0000000           1.0000000
6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     [151-155) cm_6 months    LNS                  Control                   0.3925926           0.0829834           1.8573463
6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     [151-155) cm_6 months    Other                Control                   0.6183333           0.2183428           1.7510820
6 months    ki1000111-WASH-Kenya        KENYA                          >=155 cm_6 months        Control              Control                   1.0000000           1.0000000           1.0000000
6 months    ki1000111-WASH-Kenya        KENYA                          >=155 cm_6 months        LNS                  Control                   1.3846154           0.2196381           8.7287232
6 months    ki1000111-WASH-Kenya        KENYA                          >=155 cm_6 months        Other                Control                   1.6071429           0.3437451           7.5140225
6 months    ki1000125-AgaKhanUniv       PAKISTAN                       >=155 cm_6 months        Control              Control                   1.0000000           1.0000000           1.0000000
6 months    ki1000125-AgaKhanUniv       PAKISTAN                       >=155 cm_6 months        Maternal             Control                   0.3271605           0.0744084           1.4384663
6 months    ki1000125-AgaKhanUniv       PAKISTAN                       <151 cm_6 months         Control              Control                   1.0000000           1.0000000           1.0000000
6 months    ki1000125-AgaKhanUniv       PAKISTAN                       <151 cm_6 months         Maternal             Control                   1.2500000           0.5881545           2.6566150
6 months    ki1000125-AgaKhanUniv       PAKISTAN                       [151-155) cm_6 months    Control              Control                   1.0000000           1.0000000           1.0000000
6 months    ki1000125-AgaKhanUniv       PAKISTAN                       [151-155) cm_6 months    Maternal             Control                   0.8888889           0.3670872           2.1524134
6 months    ki1000304b-SAS-CompFeed     INDIA                          >=155 cm_6 months        Control              Control                   1.0000000           1.0000000           1.0000000
6 months    ki1000304b-SAS-CompFeed     INDIA                          >=155 cm_6 months        Other                Control                   1.0263158           0.6153445           1.7117632
6 months    ki1000304b-SAS-CompFeed     INDIA                          <151 cm_6 months         Control              Control                   1.0000000           1.0000000           1.0000000
6 months    ki1000304b-SAS-CompFeed     INDIA                          <151 cm_6 months         Other                Control                   1.0323887           0.6902723           1.5440666
6 months    ki1000304b-SAS-CompFeed     INDIA                          [151-155) cm_6 months    Control              Control                   1.0000000           1.0000000           1.0000000
6 months    ki1000304b-SAS-CompFeed     INDIA                          [151-155) cm_6 months    Other                Control                   1.0325000           0.4569073           2.3332002
6 months    ki1000304b-SAS-FoodSuppl    INDIA                          >=155 cm_6 months        Control              Control                   1.0000000           1.0000000           1.0000000
6 months    ki1000304b-SAS-FoodSuppl    INDIA                          >=155 cm_6 months        Other                Control                   0.6470588           0.2648127           1.5810611
6 months    ki1000304b-SAS-FoodSuppl    INDIA                          <151 cm_6 months         Control              Control                   1.0000000           1.0000000           1.0000000
6 months    ki1000304b-SAS-FoodSuppl    INDIA                          <151 cm_6 months         Other                Control                   0.7060818           0.5440142           0.9164310
6 months    ki1000304b-SAS-FoodSuppl    INDIA                          [151-155) cm_6 months    Control              Control                   1.0000000           1.0000000           1.0000000
6 months    ki1000304b-SAS-FoodSuppl    INDIA                          [151-155) cm_6 months    Other                Control                   1.1003521           0.5708994           2.1208198
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   >=155 cm_6 months        Control              Control                   1.0000000           1.0000000           1.0000000
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   >=155 cm_6 months        Other                Control                   0.6043956           0.3277787           1.1144533
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   >=155 cm_6 months        Zinc                 Control                   0.8862940           0.5607117           1.4009284
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   <151 cm_6 months         Control              Control                   1.0000000           1.0000000           1.0000000
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   <151 cm_6 months         Other                Control                   1.5000000           0.7282163           3.0897415
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   <151 cm_6 months         Zinc                 Control                   0.9481481           0.4709702           1.9087936
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   [151-155) cm_6 months    Control              Control                   1.0000000           1.0000000           1.0000000
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   [151-155) cm_6 months    Other                Control                   1.1571970           0.5455803           2.4544595
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   [151-155) cm_6 months    Zinc                 Control                   1.1330989           0.5800317           2.2135226
6 months    ki1112895-Guatemala BSC     GUATEMALA                      >=155 cm_6 months        Control              Control                   1.0000000           1.0000000           1.0000000
6 months    ki1112895-Guatemala BSC     GUATEMALA                      >=155 cm_6 months        Other                Control                   5.2307692           0.6378113          42.8981844
6 months    ki1112895-Guatemala BSC     GUATEMALA                      <151 cm_6 months         Control              Control                   1.0000000           1.0000000           1.0000000
6 months    ki1112895-Guatemala BSC     GUATEMALA                      <151 cm_6 months         Other                Control                   0.8033058           0.4875560           1.3235407
6 months    ki1112895-Guatemala BSC     GUATEMALA                      [151-155) cm_6 months    Control              Control                   1.0000000           1.0000000           1.0000000
6 months    ki1112895-Guatemala BSC     GUATEMALA                      [151-155) cm_6 months    Other                Control                   0.7211538           0.2248761           2.3126642
6 months    ki1119695-PROBIT            BELARUS                        >=155 cm_6 months        Control              Control                   1.0000000           1.0000000           1.0000000
6 months    ki1119695-PROBIT            BELARUS                        >=155 cm_6 months        Maternal             Control                   0.8219853           0.5397861           1.2517177
6 months    ki1119695-PROBIT            BELARUS                        <151 cm_6 months         Control              Control                   1.0000000           1.0000000           1.0000000
6 months    ki1119695-PROBIT            BELARUS                        <151 cm_6 months         Maternal             Control                   0.9578544           0.3053929           3.0042777
6 months    ki1119695-PROBIT            BELARUS                        [151-155) cm_6 months    Control              Control                   1.0000000           1.0000000           1.0000000
6 months    ki1119695-PROBIT            BELARUS                        [151-155) cm_6 months    Maternal             Control                   1.0204918           0.4797153           2.1708784
6 months    ki1126311-ZVITAMBO          ZIMBABWE                       >=155 cm_6 months        Control              Control                   1.0000000           1.0000000           1.0000000
6 months    ki1126311-ZVITAMBO          ZIMBABWE                       >=155 cm_6 months        VitA                 Control                   0.9548455           0.8234333           1.1072298
6 months    ki1126311-ZVITAMBO          ZIMBABWE                       <151 cm_6 months         Control              Control                   1.0000000           1.0000000           1.0000000
6 months    ki1126311-ZVITAMBO          ZIMBABWE                       <151 cm_6 months         VitA                 Control                   0.9671053           0.7108813           1.3156805
6 months    ki1126311-ZVITAMBO          ZIMBABWE                       [151-155) cm_6 months    Control              Control                   1.0000000           1.0000000           1.0000000
6 months    ki1126311-ZVITAMBO          ZIMBABWE                       [151-155) cm_6 months    VitA                 Control                   1.4262550           1.0020609           2.0300196
6 months    ki1135781-COHORTS           GUATEMALA                      >=155 cm_6 months        Control              Control                   1.0000000           1.0000000           1.0000000
6 months    ki1135781-COHORTS           GUATEMALA                      >=155 cm_6 months        Other                Control                   0.4067982           0.1810960           0.9137962
6 months    ki1135781-COHORTS           GUATEMALA                      <151 cm_6 months         Control              Control                   1.0000000           1.0000000           1.0000000
6 months    ki1135781-COHORTS           GUATEMALA                      <151 cm_6 months         Other                Control                   0.8645756           0.7327816           1.0200733
6 months    ki1135781-COHORTS           GUATEMALA                      [151-155) cm_6 months    Control              Control                   1.0000000           1.0000000           1.0000000
6 months    ki1135781-COHORTS           GUATEMALA                      [151-155) cm_6 months    Other                Control                   0.8037383           0.5385248           1.1995647
6 months    ki1148112-iLiNS-DOSE        MALAWI                         >=155 cm_6 months        Control              Control                   1.0000000           1.0000000           1.0000000
6 months    ki1148112-iLiNS-DOSE        MALAWI                         >=155 cm_6 months        LNS                  Control                   1.0874165           0.7970352           1.4835914
6 months    ki1148112-iLiNS-DOSE        MALAWI                         <151 cm_6 months         Control              Control                   1.0000000           1.0000000           1.0000000
6 months    ki1148112-iLiNS-DOSE        MALAWI                         <151 cm_6 months         LNS                  Control                   0.8743116           0.6501037           1.1758442
6 months    ki1148112-iLiNS-DOSE        MALAWI                         [151-155) cm_6 months    Control              Control                   1.0000000           1.0000000           1.0000000
6 months    ki1148112-iLiNS-DOSE        MALAWI                         [151-155) cm_6 months    LNS                  Control                   0.8186642           0.6184426           1.0837078
6 months    ki1148112-LCNI-5            MALAWI                         >=155 cm_6 months        Control              Control                   1.0000000           1.0000000           1.0000000
6 months    ki1148112-LCNI-5            MALAWI                         >=155 cm_6 months        LNS                  Control                   1.1632967           0.8285315           1.6333225
6 months    ki1148112-LCNI-5            MALAWI                         >=155 cm_6 months        Other                Control                   1.3190876           0.9040039           1.9247618
6 months    ki1148112-LCNI-5            MALAWI                         <151 cm_6 months         Control              Control                   1.0000000           1.0000000           1.0000000
6 months    ki1148112-LCNI-5            MALAWI                         <151 cm_6 months         LNS                  Control                   1.0838384           0.7171477           1.6380248
6 months    ki1148112-LCNI-5            MALAWI                         <151 cm_6 months         Other                Control                   1.1277778           0.7199916           1.7665244
6 months    ki1148112-LCNI-5            MALAWI                         [151-155) cm_6 months    Control              Control                   1.0000000           1.0000000           1.0000000
6 months    ki1148112-LCNI-5            MALAWI                         [151-155) cm_6 months    LNS                  Control                   0.8571429           0.5752482           1.2771772
6 months    ki1148112-LCNI-5            MALAWI                         [151-155) cm_6 months    Other                Control                   0.8241758           0.5173244           1.3130363
6 months    kiGH5241-JiVitA-3           BANGLADESH                     >=155 cm_6 months        Control              Control                   1.0000000           1.0000000           1.0000000
6 months    kiGH5241-JiVitA-3           BANGLADESH                     >=155 cm_6 months        Maternal             Control                   0.9554348           0.7168874           1.2733599
6 months    kiGH5241-JiVitA-3           BANGLADESH                     <151 cm_6 months         Control              Control                   1.0000000           1.0000000           1.0000000
6 months    kiGH5241-JiVitA-3           BANGLADESH                     <151 cm_6 months         Maternal             Control                   0.9252212           0.8612634           0.9939285
6 months    kiGH5241-JiVitA-3           BANGLADESH                     [151-155) cm_6 months    Control              Control                   1.0000000           1.0000000           1.0000000
6 months    kiGH5241-JiVitA-3           BANGLADESH                     [151-155) cm_6 months    Maternal             Control                   0.8768916           0.7559368           1.0171998
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     >=155 cm_24 months       Control              Control                   1.0000000           1.0000000           1.0000000
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     >=155 cm_24 months       LNS                  Control                   0.6762295           0.3512393           1.3019224
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     >=155 cm_24 months       Other                Control                   0.7182836           0.4231873           1.2191559
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     <151 cm_24 months        Control              Control                   1.0000000           1.0000000           1.0000000
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     <151 cm_24 months        LNS                  Control                   0.8474659           0.6752837           1.0635506
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     <151 cm_24 months        Other                Control                   0.9879420           0.8220381           1.1873286
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     [151-155) cm_24 months   Control              Control                   1.0000000           1.0000000           1.0000000
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     [151-155) cm_24 months   LNS                  Control                   1.1490683           0.7363184           1.7931889
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     [151-155) cm_24 months   Other                Control                   1.1006865           0.7339380           1.6506992
24 months   ki1000111-WASH-Kenya        KENYA                          >=155 cm_24 months       Control              Control                   1.0000000           1.0000000           1.0000000
24 months   ki1000111-WASH-Kenya        KENYA                          >=155 cm_24 months       LNS                  Control                   1.0092848           0.8152437           1.2495108
24 months   ki1000111-WASH-Kenya        KENYA                          >=155 cm_24 months       Other                Control                   1.0695023           0.8981565           1.2735366
24 months   ki1000111-WASH-Kenya        KENYA                          <151 cm_24 months        Control              Control                   1.0000000           1.0000000           1.0000000
24 months   ki1000111-WASH-Kenya        KENYA                          <151 cm_24 months        LNS                  Control                   1.1448864           0.7019339           1.8673622
24 months   ki1000111-WASH-Kenya        KENYA                          <151 cm_24 months        Other                Control                   1.1550481           0.7668143           1.7398424
24 months   ki1000111-WASH-Kenya        KENYA                          [151-155) cm_24 months   Control              Control                   1.0000000           1.0000000           1.0000000
24 months   ki1000111-WASH-Kenya        KENYA                          [151-155) cm_24 months   LNS                  Control                   0.7676929           0.5257408           1.1209943
24 months   ki1000111-WASH-Kenya        KENYA                          [151-155) cm_24 months   Other                Control                   0.8900300           0.6635949           1.1937302
24 months   ki1119695-PROBIT            BELARUS                        >=155 cm_24 months       Control              Control                   1.0000000           1.0000000           1.0000000
24 months   ki1119695-PROBIT            BELARUS                        >=155 cm_24 months       Maternal             Control                   0.8049887           0.3655097           1.7728854
24 months   ki1119695-PROBIT            BELARUS                        <151 cm_24 months        Control              Control                   1.0000000           1.0000000           1.0000000
24 months   ki1119695-PROBIT            BELARUS                        <151 cm_24 months        Maternal             Control           275070264.1697694   115536840.7638978   654887650.8147488
24 months   ki1126311-ZVITAMBO          ZIMBABWE                       >=155 cm_24 months       Control              Control                   1.0000000           1.0000000           1.0000000
24 months   ki1126311-ZVITAMBO          ZIMBABWE                       >=155 cm_24 months       VitA                 Control                   2.0000000           0.5335192           7.4973875
24 months   ki1135781-COHORTS           GUATEMALA                      >=155 cm_24 months       Control              Control                   1.0000000           1.0000000           1.0000000
24 months   ki1135781-COHORTS           GUATEMALA                      >=155 cm_24 months       Other                Control                   1.1718750           0.6324401           2.1714167
24 months   ki1135781-COHORTS           GUATEMALA                      <151 cm_24 months        Control              Control                   1.0000000           1.0000000           1.0000000
24 months   ki1135781-COHORTS           GUATEMALA                      <151 cm_24 months        Other                Control                   0.8789818           0.7702068           1.0031189
24 months   ki1135781-COHORTS           GUATEMALA                      [151-155) cm_24 months   Control              Control                   1.0000000           1.0000000           1.0000000
24 months   ki1135781-COHORTS           GUATEMALA                      [151-155) cm_24 months   Other                Control                   0.8401361           0.6103930           1.1563510
24 months   ki1148112-iLiNS-DOSE        MALAWI                         >=155 cm_24 months       Control              Control                   1.0000000           1.0000000           1.0000000
24 months   ki1148112-iLiNS-DOSE        MALAWI                         >=155 cm_24 months       LNS                  Control                   1.0397989           0.7557595           1.4305896
24 months   ki1148112-iLiNS-DOSE        MALAWI                         <151 cm_24 months        Control              Control                   1.0000000           1.0000000           1.0000000
24 months   ki1148112-iLiNS-DOSE        MALAWI                         <151 cm_24 months        LNS                  Control                   0.7972441           0.6292957           1.0100151
24 months   ki1148112-iLiNS-DOSE        MALAWI                         [151-155) cm_24 months   Control              Control                   1.0000000           1.0000000           1.0000000
24 months   ki1148112-iLiNS-DOSE        MALAWI                         [151-155) cm_24 months   LNS                  Control                   1.0352684           0.7495227           1.4299510
24 months   ki1148112-LCNI-5            MALAWI                         >=155 cm_24 months       Control              Control                   1.0000000           1.0000000           1.0000000
24 months   ki1148112-LCNI-5            MALAWI                         >=155 cm_24 months       LNS                  Control                   1.0481366           0.6786077           1.6188887
24 months   ki1148112-LCNI-5            MALAWI                         >=155 cm_24 months       Other                Control                   0.9316770           0.5445074           1.5941418
24 months   ki1148112-LCNI-5            MALAWI                         <151 cm_24 months        Control              Control                   1.0000000           1.0000000           1.0000000
24 months   ki1148112-LCNI-5            MALAWI                         <151 cm_24 months        LNS                  Control                   0.7961433           0.4895636           1.2947125
24 months   ki1148112-LCNI-5            MALAWI                         <151 cm_24 months        Other                Control                   0.5151515           0.2306973           1.1503434
24 months   ki1148112-LCNI-5            MALAWI                         [151-155) cm_24 months   Control              Control                   1.0000000           1.0000000           1.0000000
24 months   ki1148112-LCNI-5            MALAWI                         [151-155) cm_24 months   LNS                  Control                   1.1875000           0.6328056           2.2284192
24 months   ki1148112-LCNI-5            MALAWI                         [151-155) cm_24 months   Other                Control                   1.0326087           0.5085258           2.0968073
24 months   kiGH5241-JiVitA-3           BANGLADESH                     >=155 cm_24 months       Control              Control                   1.0000000           1.0000000           1.0000000
24 months   kiGH5241-JiVitA-3           BANGLADESH                     >=155 cm_24 months       Maternal             Control           120910006.2284129    41035502.7779171   356258084.2563011
24 months   kiGH5241-JiVitA-3           BANGLADESH                     <151 cm_24 months        Control              Control                   1.0000000           1.0000000           1.0000000
24 months   kiGH5241-JiVitA-3           BANGLADESH                     <151 cm_24 months        Maternal             Control                   1.0084034           0.7138569           1.4244835
24 months   kiGH5241-JiVitA-3           BANGLADESH                     [151-155) cm_24 months   Control              Control                   1.0000000           1.0000000           1.0000000
24 months   kiGH5241-JiVitA-3           BANGLADESH                     [151-155) cm_24 months   Maternal             Control                   1.1014493           0.3747270           3.2375312


### Parameter: PAR


agecat      studyid                     country                        intXmhtcm                intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------------------  -----------------------------  -----------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000304b-SAS-CompFeed     INDIA                          >=155 cm_Birth           Control              NA                -0.0027360   -0.1647837    0.1593118
Birth       ki1000304b-SAS-CompFeed     INDIA                          <151 cm_Birth            Control              NA                 0.0119048   -0.2491606    0.2729701
Birth       ki1000304b-SAS-CompFeed     INDIA                          [151-155) cm_Birth       Control              NA                 0.0523077   -0.1836221    0.2882375
Birth       ki1119695-PROBIT            BELARUS                        >=155 cm_Birth           Control              NA                -0.0008362   -0.0021849    0.0005125
Birth       ki1126311-ZVITAMBO          ZIMBABWE                       >=155 cm_Birth           Control              NA                 0.0017547   -0.0095051    0.0130145
Birth       ki1126311-ZVITAMBO          ZIMBABWE                       <151 cm_Birth            Control              NA                 0.0093502   -0.0399223    0.0586226
Birth       ki1126311-ZVITAMBO          ZIMBABWE                       [151-155) cm_Birth       Control              NA                -0.0082203   -0.0381093    0.0216686
Birth       ki1135781-COHORTS           GUATEMALA                      >=155 cm_Birth           Control              NA                -0.0496212   -0.1023155    0.0030730
Birth       ki1135781-COHORTS           GUATEMALA                      <151 cm_Birth            Control              NA                 0.0175171   -0.0025270    0.0375612
Birth       ki1135781-COHORTS           GUATEMALA                      [151-155) cm_Birth       Control              NA                 0.0228741   -0.0139499    0.0596981
Birth       kiGH5241-JiVitA-3           BANGLADESH                     >=155 cm_Birth           Control              NA                -0.0126457   -0.0305082    0.0052168
Birth       kiGH5241-JiVitA-3           BANGLADESH                     <151 cm_Birth            Control              NA                -0.0200050   -0.0303457   -0.0096642
Birth       kiGH5241-JiVitA-3           BANGLADESH                     [151-155) cm_Birth       Control              NA                -0.0144803   -0.0288213   -0.0001393
6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     >=155 cm_6 months        Control              NA                -0.0140351   -0.0905682    0.0624980
6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     <151 cm_6 months         Control              NA                -0.0470085   -0.1324223    0.0384052
6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     [151-155) cm_6 months    Control              NA                -0.0374500   -0.1064679    0.0315679
6 months    ki1000111-WASH-Kenya        KENYA                          >=155 cm_6 months        Control              NA                 0.0414313   -0.0886477    0.1715102
6 months    ki1000125-AgaKhanUniv       PAKISTAN                       >=155 cm_6 months        Control              NA                -0.0462158   -0.0986996    0.0062680
6 months    ki1000125-AgaKhanUniv       PAKISTAN                       <151 cm_6 months         Control              NA                 0.0400000   -0.0943975    0.1743975
6 months    ki1000125-AgaKhanUniv       PAKISTAN                       [151-155) cm_6 months    Control              NA                -0.0222222   -0.1907812    0.1463368
6 months    ki1000304b-SAS-CompFeed     INDIA                          >=155 cm_6 months        Control              NA                 0.0022159   -0.0410630    0.0454948
6 months    ki1000304b-SAS-CompFeed     INDIA                          <151 cm_6 months         Control              NA                 0.0078431   -0.0917424    0.1074287
6 months    ki1000304b-SAS-CompFeed     INDIA                          [151-155) cm_6 months    Control              NA                 0.0049330   -0.1206084    0.1304743
6 months    ki1000304b-SAS-FoodSuppl    INDIA                          >=155 cm_6 months        Control              NA                -0.0909091   -0.2967574    0.1149393
6 months    ki1000304b-SAS-FoodSuppl    INDIA                          <151 cm_6 months         Control              NA                -0.1474277   -0.2636135   -0.0312419
6 months    ki1000304b-SAS-FoodSuppl    INDIA                          [151-155) cm_6 months    Control              NA                 0.0237500   -0.1353474    0.1828474
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   >=155 cm_6 months        Control              NA                -0.0150716   -0.0454094    0.0152662
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   <151 cm_6 months         Control              NA                 0.0148527   -0.0636130    0.0933183
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   [151-155) cm_6 months    Control              NA                 0.0123588   -0.0447198    0.0694374
6 months    ki1112895-Guatemala BSC     GUATEMALA                      >=155 cm_6 months        Control              NA                 0.1078431   -0.0212778    0.2369641
6 months    ki1112895-Guatemala BSC     GUATEMALA                      <151 cm_6 months         Control              NA                -0.0404349   -0.1322056    0.0513357
6 months    ki1112895-Guatemala BSC     GUATEMALA                      [151-155) cm_6 months    Control              NA                -0.0471545   -0.2210106    0.1267016
6 months    ki1119695-PROBIT            BELARUS                        >=155 cm_6 months        Control              NA                -0.0057964   -0.0184918    0.0068990
6 months    ki1119695-PROBIT            BELARUS                        <151 cm_6 months         Control              NA                -0.0040741   -0.1127537    0.1046056
6 months    ki1119695-PROBIT            BELARUS                        [151-155) cm_6 months    Control              NA                 0.0010357   -0.0373319    0.0394033
6 months    ki1126311-ZVITAMBO          ZIMBABWE                       >=155 cm_6 months        Control              NA                -0.0050859   -0.0215685    0.0113967
6 months    ki1126311-ZVITAMBO          ZIMBABWE                       <151 cm_6 months         Control              NA                -0.0088842   -0.0913318    0.0735635
6 months    ki1126311-ZVITAMBO          ZIMBABWE                       [151-155) cm_6 months    Control              NA                 0.0497063    0.0053780    0.0940346
6 months    ki1135781-COHORTS           GUATEMALA                      >=155 cm_6 months        Control              NA                -0.0927959   -0.1727254   -0.0128664
6 months    ki1135781-COHORTS           GUATEMALA                      <151 cm_6 months         Control              NA                -0.0353779   -0.0754851    0.0047293
6 months    ki1135781-COHORTS           GUATEMALA                      [151-155) cm_6 months    Control              NA                -0.0404868   -0.1151596    0.0341859
6 months    ki1148112-iLiNS-DOSE        MALAWI                         >=155 cm_6 months        Control              NA                 0.0164570   -0.0427678    0.0756819
6 months    ki1148112-iLiNS-DOSE        MALAWI                         <151 cm_6 months         Control              NA                -0.0458722   -0.1513040    0.0595596
6 months    ki1148112-iLiNS-DOSE        MALAWI                         [151-155) cm_6 months    Control              NA                -0.0628140   -0.1560856    0.0304576
6 months    ki1148112-LCNI-5            MALAWI                         >=155 cm_6 months        Control              NA                 0.0409502   -0.0240818    0.1059822
6 months    ki1148112-LCNI-5            MALAWI                         <151 cm_6 months         Control              NA                 0.0400105   -0.1208135    0.2008346
6 months    ki1148112-LCNI-5            MALAWI                         [151-155) cm_6 months    Control              NA                -0.0552083   -0.1825534    0.0721367
6 months    kiGH5241-JiVitA-3           BANGLADESH                     >=155 cm_6 months        Control              NA                -0.0023423   -0.0170259    0.0123412
6 months    kiGH5241-JiVitA-3           BANGLADESH                     <151 cm_6 months         Control              NA                -0.0126640   -0.0244405   -0.0008875
6 months    kiGH5241-JiVitA-3           BANGLADESH                     [151-155) cm_6 months    Control              NA                -0.0120813   -0.0256912    0.0015286
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     >=155 cm_24 months       Control              NA                -0.0669091   -0.1707472    0.0369290
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     <151 cm_24 months        Control              NA                -0.0246301   -0.0971651    0.0479049
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     [151-155) cm_24 months   Control              NA                 0.0278989   -0.0649149    0.1207126
24 months   ki1000111-WASH-Kenya        KENYA                          >=155 cm_24 months       Control              NA                 0.0085347   -0.0199279    0.0369974
24 months   ki1000111-WASH-Kenya        KENYA                          <151 cm_24 months        Control              NA                 0.0552995   -0.0924886    0.2030877
24 months   ki1000111-WASH-Kenya        KENYA                          [151-155) cm_24 months   Control              NA                -0.0536765   -0.1444642    0.0371112
24 months   ki1119695-PROBIT            BELARUS                        >=155 cm_24 months       Control              NA                -0.0133909   -0.0632882    0.0365064
24 months   ki1119695-PROBIT            BELARUS                        <151 cm_24 months        Control              NA                 0.5384615    0.2097906    0.8671324
24 months   ki1126311-ZVITAMBO          ZIMBABWE                       >=155 cm_24 months       Control              NA                 0.1666667   -0.1288090    0.4621424
24 months   ki1135781-COHORTS           GUATEMALA                      >=155 cm_24 months       Control              NA                 0.0473118   -0.1351821    0.2298058
24 months   ki1135781-COHORTS           GUATEMALA                      <151 cm_24 months        Control              NA                -0.0543071   -0.1093412    0.0007269
24 months   ki1135781-COHORTS           GUATEMALA                      [151-155) cm_24 months   Control              NA                -0.0669516   -0.1885469    0.0546437
24 months   ki1148112-iLiNS-DOSE        MALAWI                         >=155 cm_24 months       Control              NA                 0.0125736   -0.0889098    0.1140571
24 months   ki1148112-iLiNS-DOSE        MALAWI                         <151 cm_24 months        Control              NA                -0.1355263   -0.2847883    0.0137357
24 months   ki1148112-iLiNS-DOSE        MALAWI                         [151-155) cm_24 months   Control              NA                 0.0174410   -0.1430709    0.1779528
24 months   ki1148112-LCNI-5            MALAWI                         >=155 cm_24 months       Control              NA                 0.0019753   -0.0850439    0.0889945
24 months   ki1148112-LCNI-5            MALAWI                         <151 cm_24 months        Control              NA                -0.1393665   -0.3393625    0.0606295
24 months   ki1148112-LCNI-5            MALAWI                         [151-155) cm_24 months   Control              NA                 0.0394737   -0.1546817    0.2336291
24 months   kiGH5241-JiVitA-3           BANGLADESH                     >=155 cm_24 months       Control              NA                 0.2000000   -0.0095290    0.4095290
24 months   kiGH5241-JiVitA-3           BANGLADESH                     <151 cm_24 months        Control              NA                 0.0032967   -0.1327072    0.1393006
24 months   kiGH5241-JiVitA-3           BANGLADESH                     [151-155) cm_24 months   Control              NA                 0.0175439   -0.1763837    0.2114714


### Parameter: PAF


agecat      studyid                     country                        intXmhtcm                intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------------------  -----------------------------  -----------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000304b-SAS-CompFeed     INDIA                          >=155 cm_Birth           Control              NA                -0.0117647   -1.0116109    0.4911204
Birth       ki1000304b-SAS-CompFeed     INDIA                          <151 cm_Birth            Control              NA                 0.0277778   -0.8183056    0.4801666
Birth       ki1000304b-SAS-CompFeed     INDIA                          [151-155) cm_Birth       Control              NA                 0.1452991   -0.6766528    0.5643024
Birth       ki1119695-PROBIT            BELARUS                        >=155 cm_Birth           Control              NA                -0.3450935   -0.9303807    0.0627359
Birth       ki1126311-ZVITAMBO          ZIMBABWE                       >=155 cm_Birth           Control              NA                 0.0185945   -0.1082762    0.1309416
Birth       ki1126311-ZVITAMBO          ZIMBABWE                       <151 cm_Birth            Control              NA                 0.0668896   -0.3611396    0.3603191
Birth       ki1126311-ZVITAMBO          ZIMBABWE                       [151-155) cm_Birth       Control              NA                -0.0754872   -0.3879394    0.1666259
Birth       ki1135781-COHORTS           GUATEMALA                      >=155 cm_Birth           Control              NA                -0.9097222   -1.8050918   -0.3001495
Birth       ki1135781-COHORTS           GUATEMALA                      <151 cm_Birth            Control              NA                 0.2983380   -0.1192255    0.5601158
Birth       ki1135781-COHORTS           GUATEMALA                      [151-155) cm_Birth       Control              NA                 0.3847007   -0.5838977    0.7609737
Birth       kiGH5241-JiVitA-3           BANGLADESH                     >=155 cm_Birth           Control              NA                -0.0660765   -0.1633062    0.0230267
Birth       kiGH5241-JiVitA-3           BANGLADESH                     <151 cm_Birth            Control              NA                -0.0528021   -0.0806298   -0.0256911
Birth       kiGH5241-JiVitA-3           BANGLADESH                     [151-155) cm_Birth       Control              NA                -0.0541327   -0.1091842   -0.0018136
6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     >=155 cm_6 months        Control              NA                -0.2666667   -2.9577028    0.5946021
6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     <151 cm_6 months         Control              NA                -0.2115385   -0.6629179    0.1173194
6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     [151-155) cm_6 months    Control              NA                -0.4943396   -1.7047312    0.1743908
6 months    ki1000111-WASH-Kenya        KENYA                          >=155 cm_6 months        Control              NA                 0.2716049   -1.3107348    0.7703937
6 months    ki1000125-AgaKhanUniv       PAKISTAN                       >=155 cm_6 months        Control              NA                -0.3739280   -0.8278210   -0.0327477
6 months    ki1000125-AgaKhanUniv       PAKISTAN                       <151 cm_6 months         Control              NA                 0.1111111   -0.3528443    0.4159539
6 months    ki1000125-AgaKhanUniv       PAKISTAN                       [151-155) cm_6 months    Control              NA                -0.0714286   -0.7764953    0.3538068
6 months    ki1000304b-SAS-CompFeed     INDIA                          >=155 cm_6 months        Control              NA                 0.0134615   -0.2915412    0.2464366
6 months    ki1000304b-SAS-CompFeed     INDIA                          <151 cm_6 months         Control              NA                 0.0168067   -0.2218533    0.2088502
6 months    ki1000304b-SAS-CompFeed     INDIA                          [151-155) cm_6 months    Control              NA                 0.0178653   -0.5588622    0.3812227
6 months    ki1000304b-SAS-FoodSuppl    INDIA                          >=155 cm_6 months        Control              NA                -0.3750000   -1.5463543    0.2575169
6 months    ki1000304b-SAS-FoodSuppl    INDIA                          <151 cm_6 months         Control              NA                -0.2802586   -0.5282990   -0.0724748
6 months    ki1000304b-SAS-FoodSuppl    INDIA                          [151-155) cm_6 months    Control              NA                 0.0690909   -0.5304703    0.4337742
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   >=155 cm_6 months        Control              NA                -0.1806862   -0.6046886    0.1312832
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   <151 cm_6 months         Control              NA                 0.0868056   -0.5082885    0.4471057
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   [151-155) cm_6 months    Control              NA                 0.0955230   -0.4722320    0.4443277
6 months    ki1112895-Guatemala BSC     GUATEMALA                      >=155 cm_6 months        Control              NA                 0.6470588   -0.9413200    0.9358336
6 months    ki1112895-Guatemala BSC     GUATEMALA                      <151 cm_6 months         Control              NA                -0.1101852   -0.3912004    0.1140664
6 months    ki1112895-Guatemala BSC     GUATEMALA                      [151-155) cm_6 months    Control              NA                -0.2148148   -1.3255436    0.3654064
6 months    ki1119695-PROBIT            BELARUS                        >=155 cm_6 months        Control              NA                -0.0981219   -0.3321173    0.0947706
6 months    ki1119695-PROBIT            BELARUS                        <151 cm_6 months         Control              NA                -0.0231579   -0.8682506    0.4396619
6 months    ki1119695-PROBIT            BELARUS                        [151-155) cm_6 months    Control              NA                 0.0106308   -0.4748912    0.3363229
6 months    ki1126311-ZVITAMBO          ZIMBABWE                       >=155 cm_6 months        Control              NA                -0.0349161   -0.1544751    0.0722612
6 months    ki1126311-ZVITAMBO          ZIMBABWE                       <151 cm_6 months         Control              NA                -0.0255102   -0.2918122    0.1858947
6 months    ki1126311-ZVITAMBO          ZIMBABWE                       [151-155) cm_6 months    Control              NA                 0.2501012   -0.0077308    0.4419659
6 months    ki1135781-COHORTS           GUATEMALA                      >=155 cm_6 months        Control              NA                -0.4438064   -0.8707886   -0.1142771
6 months    ki1135781-COHORTS           GUATEMALA                      <151 cm_6 months         Control              NA                -0.0735234   -0.1604324    0.0068766
6 months    ki1135781-COHORTS           GUATEMALA                      [151-155) cm_6 months    Control              NA                -0.1220930   -0.3716489    0.0820590
6 months    ki1148112-iLiNS-DOSE        MALAWI                         >=155 cm_6 months        Control              NA                 0.0689504   -0.2153347    0.2867369
6 months    ki1148112-iLiNS-DOSE        MALAWI                         <151 cm_6 months         Control              NA                -0.1155515   -0.4156318    0.1209188
6 months    ki1148112-iLiNS-DOSE        MALAWI                         [151-155) cm_6 months    Control              NA                -0.1732928   -0.4613611    0.0579906
6 months    ki1148112-LCNI-5            MALAWI                         >=155 cm_6 months        Control              NA                 0.1355320   -0.1086284    0.3259194
6 months    ki1148112-LCNI-5            MALAWI                         <151 cm_6 months         Control              NA                 0.0717997   -0.2670869    0.3200500
6 months    ki1148112-LCNI-5            MALAWI                         [151-155) cm_6 months    Control              NA                -0.1341772   -0.4906638    0.1370570
6 months    kiGH5241-JiVitA-3           BANGLADESH                     >=155 cm_6 months        Control              NA                -0.0228917   -0.1777266    0.1115873
6 months    kiGH5241-JiVitA-3           BANGLADESH                     <151 cm_6 months         Control              NA                -0.0392182   -0.0762195   -0.0034891
6 months    kiGH5241-JiVitA-3           BANGLADESH                     [151-155) cm_6 months    Control              NA                -0.0665869   -0.1445099    0.0060308
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     >=155 cm_24 months       Control              NA                -0.2987013   -0.8539452    0.0902509
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     <151 cm_24 months        Control              NA                -0.0478834   -0.1988931    0.0841055
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     [151-155) cm_24 months   Control              NA                 0.0823681   -0.2369387    0.3192481
24 months   ki1000111-WASH-Kenya        KENYA                          >=155 cm_24 months       Control              NA                 0.0318995   -0.0805386    0.1326375
24 months   ki1000111-WASH-Kenya        KENYA                          <151 cm_24 months        Control              NA                 0.0967742   -0.2036251    0.3222002
24 months   ki1000111-WASH-Kenya        KENYA                          [151-155) cm_24 months   Control              NA                -0.1169872   -0.3341240    0.0648093
24 months   ki1119695-PROBIT            BELARUS                        >=155 cm_24 months       Control              NA                -0.1211268   -0.6576614    0.2417479
24 months   ki1119695-PROBIT            BELARUS                        <151 cm_24 months        Control              NA                 1.0000000    1.0000000    1.0000000
24 months   ki1126311-ZVITAMBO          ZIMBABWE                       >=155 cm_24 months       Control              NA                 0.3333333   -0.6441574    0.7296825
24 months   ki1135781-COHORTS           GUATEMALA                      >=155 cm_24 months       Control              NA                 0.0814815   -0.2954012    0.3487143
24 months   ki1135781-COHORTS           GUATEMALA                      <151 cm_24 months        Control              NA                -0.0651685   -0.1347037    0.0001055
24 months   ki1135781-COHORTS           GUATEMALA                      [151-155) cm_24 months   Control              NA                -0.0903846   -0.2713450    0.0648182
24 months   ki1148112-iLiNS-DOSE        MALAWI                         >=155 cm_24 months       Control              NA                 0.0317407   -0.2615413    0.2568408
24 months   ki1148112-iLiNS-DOSE        MALAWI                         <151 cm_24 months        Control              NA                -0.2039604   -0.4562736    0.0046372
24 months   ki1148112-iLiNS-DOSE        MALAWI                         [151-155) cm_24 months   Control              NA                 0.0291613   -0.2800260    0.2636651
24 months   ki1148112-LCNI-5            MALAWI                         >=155 cm_24 months       Control              NA                 0.0064000   -0.3196114    0.2518699
24 months   ki1148112-LCNI-5            MALAWI                         <151 cm_24 months        Control              NA                -0.2745098   -0.7483636    0.0709168
24 months   ki1148112-LCNI-5            MALAWI                         [151-155) cm_24 months   Control              NA                 0.0857143   -0.4503828    0.4236567
24 months   kiGH5241-JiVitA-3           BANGLADESH                     >=155 cm_24 months       Control              NA                 1.0000000    1.0000000    1.0000000
24 months   kiGH5241-JiVitA-3           BANGLADESH                     <151 cm_24 months        Control              NA                 0.0046875   -0.2088307    0.1804915
24 months   kiGH5241-JiVitA-3           BANGLADESH                     [151-155) cm_24 months   Control              NA                 0.0526316   -0.7538129    0.4882539
