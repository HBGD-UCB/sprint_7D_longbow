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
* intXmhtcm

## Data Summary

agecat      studyid                     country                        intXmhtcm                 sstunted   n_cell       n
----------  --------------------------  -----------------------------  -----------------------  ---------  -------  ------
Birth       iLiNS_DYADM_LNS             MALAWI                         <151 cm_Birth                    0        0       1
Birth       iLiNS_DYADM_LNS             MALAWI                         <151 cm_Birth                    1        1       1
Birth       ki1000125-AgaKhanUniv       PAKISTAN                       >=155 cm_Birth                   0        3       3
Birth       ki1000125-AgaKhanUniv       PAKISTAN                       >=155 cm_Birth                   1        0       3
Birth       ki1000125-AgaKhanUniv       PAKISTAN                       <151 cm_Birth                    0        1       1
Birth       ki1000125-AgaKhanUniv       PAKISTAN                       <151 cm_Birth                    1        0       1
Birth       ki1000304b-SAS-CompFeed     INDIA                          >=155 cm_Birth                   0       39      43
Birth       ki1000304b-SAS-CompFeed     INDIA                          >=155 cm_Birth                   1        4      43
Birth       ki1000304b-SAS-CompFeed     INDIA                          <151 cm_Birth                    0       20      21
Birth       ki1000304b-SAS-CompFeed     INDIA                          <151 cm_Birth                    1        1      21
Birth       ki1000304b-SAS-CompFeed     INDIA                          [151-155) cm_Birth               0       20      25
Birth       ki1000304b-SAS-CompFeed     INDIA                          [151-155) cm_Birth               1        5      25
Birth       ki1119695-PROBIT            BELARUS                        >=155 cm_Birth                   0    13201   13206
Birth       ki1119695-PROBIT            BELARUS                        >=155 cm_Birth                   1        5   13206
Birth       ki1119695-PROBIT            BELARUS                        <151 cm_Birth                    0      125     125
Birth       ki1119695-PROBIT            BELARUS                        <151 cm_Birth                    1        0     125
Birth       ki1119695-PROBIT            BELARUS                        [151-155) cm_Birth               0      398     398
Birth       ki1119695-PROBIT            BELARUS                        [151-155) cm_Birth               1        0     398
Birth       ki1126311-ZVITAMBO          ZIMBABWE                       >=155 cm_Birth                   0     7504    7704
Birth       ki1126311-ZVITAMBO          ZIMBABWE                       >=155 cm_Birth                   1      200    7704
Birth       ki1126311-ZVITAMBO          ZIMBABWE                       <151 cm_Birth                    0      527     558
Birth       ki1126311-ZVITAMBO          ZIMBABWE                       <151 cm_Birth                    1       31     558
Birth       ki1126311-ZVITAMBO          ZIMBABWE                       [151-155) cm_Birth               0     1353    1405
Birth       ki1126311-ZVITAMBO          ZIMBABWE                       [151-155) cm_Birth               1       52    1405
Birth       ki1135781-COHORTS           GUATEMALA                      >=155 cm_Birth                   0      110     110
Birth       ki1135781-COHORTS           GUATEMALA                      >=155 cm_Birth                   1        0     110
Birth       ki1135781-COHORTS           GUATEMALA                      <151 cm_Birth                    0      538     545
Birth       ki1135781-COHORTS           GUATEMALA                      <151 cm_Birth                    1        7     545
Birth       ki1135781-COHORTS           GUATEMALA                      [151-155) cm_Birth               0      181     185
Birth       ki1135781-COHORTS           GUATEMALA                      [151-155) cm_Birth               1        4     185
Birth       ki1148112-iLiNS-DYAD-M      MALAWI                         <151 cm_Birth                    0        0       1
Birth       ki1148112-iLiNS-DYAD-M      MALAWI                         <151 cm_Birth                    1        1       1
Birth       kiGH5241-JiVitA-3           BANGLADESH                     >=155 cm_Birth                   0     5522    5800
Birth       kiGH5241-JiVitA-3           BANGLADESH                     >=155 cm_Birth                   1      278    5800
Birth       kiGH5241-JiVitA-3           BANGLADESH                     <151 cm_Birth                    0    20498   23470
Birth       kiGH5241-JiVitA-3           BANGLADESH                     <151 cm_Birth                    1     2972   23470
Birth       kiGH5241-JiVitA-3           BANGLADESH                     [151-155) cm_Birth               0     8986    9802
Birth       kiGH5241-JiVitA-3           BANGLADESH                     [151-155) cm_Birth               1      816    9802
6 months    iLiNS_DYADM_LNS             MALAWI                         <151 cm_6 months                 0        1       1
6 months    iLiNS_DYADM_LNS             MALAWI                         <151 cm_6 months                 1        0       1
6 months    iLiNS_DYADM_LNS             MALAWI                         [151-155) cm_6 months            0        2       2
6 months    iLiNS_DYADM_LNS             MALAWI                         [151-155) cm_6 months            1        0       2
6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     >=155 cm_6 months                0      132     133
6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     >=155 cm_6 months                1        1     133
6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     <151 cm_6 months                 0      327     351
6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     <151 cm_6 months                 1       24     351
6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     [151-155) cm_6 months            0      195     198
6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     [151-155) cm_6 months            1        3     198
6 months    ki1000111-WASH-Kenya        KENYA                          >=155 cm_6 months                0       56      59
6 months    ki1000111-WASH-Kenya        KENYA                          >=155 cm_6 months                1        3      59
6 months    ki1000111-WASH-Kenya        KENYA                          <151 cm_6 months                 0        4       4
6 months    ki1000111-WASH-Kenya        KENYA                          <151 cm_6 months                 1        0       4
6 months    ki1000111-WASH-Kenya        KENYA                          [151-155) cm_6 months            0       10      10
6 months    ki1000111-WASH-Kenya        KENYA                          [151-155) cm_6 months            1        0      10
6 months    ki1000125-AgaKhanUniv       PAKISTAN                       >=155 cm_6 months                0       86      89
6 months    ki1000125-AgaKhanUniv       PAKISTAN                       >=155 cm_6 months                1        3      89
6 months    ki1000125-AgaKhanUniv       PAKISTAN                       <151 cm_6 months                 0       47      50
6 months    ki1000125-AgaKhanUniv       PAKISTAN                       <151 cm_6 months                 1        3      50
6 months    ki1000125-AgaKhanUniv       PAKISTAN                       [151-155) cm_6 months            0       41      45
6 months    ki1000125-AgaKhanUniv       PAKISTAN                       [151-155) cm_6 months            1        4      45
6 months    ki1000304b-SAS-CompFeed     INDIA                          >=155 cm_6 months                0      239     243
6 months    ki1000304b-SAS-CompFeed     INDIA                          >=155 cm_6 months                1        4     243
6 months    ki1000304b-SAS-CompFeed     INDIA                          <151 cm_6 months                 0      146     180
6 months    ki1000304b-SAS-CompFeed     INDIA                          <151 cm_6 months                 1       34     180
6 months    ki1000304b-SAS-CompFeed     INDIA                          [151-155) cm_6 months            0      121     134
6 months    ki1000304b-SAS-CompFeed     INDIA                          [151-155) cm_6 months            1       13     134
6 months    ki1000304b-SAS-FoodSuppl    INDIA                          >=155 cm_6 months                0       65      66
6 months    ki1000304b-SAS-FoodSuppl    INDIA                          >=155 cm_6 months                1        1      66
6 months    ki1000304b-SAS-FoodSuppl    INDIA                          <151 cm_6 months                 0      154     192
6 months    ki1000304b-SAS-FoodSuppl    INDIA                          <151 cm_6 months                 1       38     192
6 months    ki1000304b-SAS-FoodSuppl    INDIA                          [151-155) cm_6 months            0       84      96
6 months    ki1000304b-SAS-FoodSuppl    INDIA                          [151-155) cm_6 months            1       12      96
6 months    ki1017093b-PROVIDE          BANGLADESH                     >=155 cm_6 months                0       13      13
6 months    ki1017093b-PROVIDE          BANGLADESH                     >=155 cm_6 months                1        0      13
6 months    ki1017093b-PROVIDE          BANGLADESH                     <151 cm_6 months                 0       22      22
6 months    ki1017093b-PROVIDE          BANGLADESH                     <151 cm_6 months                 1        0      22
6 months    ki1017093b-PROVIDE          BANGLADESH                     [151-155) cm_6 months            0        9      10
6 months    ki1017093b-PROVIDE          BANGLADESH                     [151-155) cm_6 months            1        1      10
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   >=155 cm_6 months                0     1030    1043
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   >=155 cm_6 months                1       13    1043
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   <151 cm_6 months                 0      259     263
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   <151 cm_6 months                 1        4     263
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   [151-155) cm_6 months            0      364     371
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   [151-155) cm_6 months            1        7     371
6 months    ki1112895-Burkina Faso Zn   BURKINA FASO                   >=155 cm_6 months                0      429     439
6 months    ki1112895-Burkina Faso Zn   BURKINA FASO                   >=155 cm_6 months                1       10     439
6 months    ki1112895-Burkina Faso Zn   BURKINA FASO                   <151 cm_6 months                 0       25      26
6 months    ki1112895-Burkina Faso Zn   BURKINA FASO                   <151 cm_6 months                 1        1      26
6 months    ki1112895-Burkina Faso Zn   BURKINA FASO                   [151-155) cm_6 months            0       67      69
6 months    ki1112895-Burkina Faso Zn   BURKINA FASO                   [151-155) cm_6 months            1        2      69
6 months    ki1112895-Guatemala BSC     GUATEMALA                      >=155 cm_6 months                0       29      30
6 months    ki1112895-Guatemala BSC     GUATEMALA                      >=155 cm_6 months                1        1      30
6 months    ki1112895-Guatemala BSC     GUATEMALA                      <151 cm_6 months                 0       95     109
6 months    ki1112895-Guatemala BSC     GUATEMALA                      <151 cm_6 months                 1       14     109
6 months    ki1112895-Guatemala BSC     GUATEMALA                      [151-155) cm_6 months            0       39      41
6 months    ki1112895-Guatemala BSC     GUATEMALA                      [151-155) cm_6 months            1        2      41
6 months    ki1119695-PROBIT            BELARUS                        >=155 cm_6 months                0    11384   11545
6 months    ki1119695-PROBIT            BELARUS                        >=155 cm_6 months                1      161   11545
6 months    ki1119695-PROBIT            BELARUS                        <151 cm_6 months                 0      103     108
6 months    ki1119695-PROBIT            BELARUS                        <151 cm_6 months                 1        5     108
6 months    ki1119695-PROBIT            BELARUS                        [151-155) cm_6 months            0      341     349
6 months    ki1119695-PROBIT            BELARUS                        [151-155) cm_6 months            1        8     349
6 months    ki1126311-ZVITAMBO          ZIMBABWE                       >=155 cm_6 months                0     5113    5300
6 months    ki1126311-ZVITAMBO          ZIMBABWE                       >=155 cm_6 months                1      187    5300
6 months    ki1126311-ZVITAMBO          ZIMBABWE                       <151 cm_6 months                 0      358     402
6 months    ki1126311-ZVITAMBO          ZIMBABWE                       <151 cm_6 months                 1       44     402
6 months    ki1126311-ZVITAMBO          ZIMBABWE                       [151-155) cm_6 months            0      913     956
6 months    ki1126311-ZVITAMBO          ZIMBABWE                       [151-155) cm_6 months            1       43     956
6 months    ki1135781-COHORTS           GUATEMALA                      >=155 cm_6 months                0      104     110
6 months    ki1135781-COHORTS           GUATEMALA                      >=155 cm_6 months                1        6     110
6 months    ki1135781-COHORTS           GUATEMALA                      <151 cm_6 months                 0      513     611
6 months    ki1135781-COHORTS           GUATEMALA                      <151 cm_6 months                 1       98     611
6 months    ki1135781-COHORTS           GUATEMALA                      [151-155) cm_6 months            0      177     193
6 months    ki1135781-COHORTS           GUATEMALA                      [151-155) cm_6 months            1       16     193
6 months    ki1148112-iLiNS-DOSE        MALAWI                         >=155 cm_6 months                0     1015    1060
6 months    ki1148112-iLiNS-DOSE        MALAWI                         >=155 cm_6 months                1       45    1060
6 months    ki1148112-iLiNS-DOSE        MALAWI                         <151 cm_6 months                 0      357     398
6 months    ki1148112-iLiNS-DOSE        MALAWI                         <151 cm_6 months                 1       41     398
6 months    ki1148112-iLiNS-DOSE        MALAWI                         [151-155) cm_6 months            0      428     469
6 months    ki1148112-iLiNS-DOSE        MALAWI                         [151-155) cm_6 months            1       41     469
6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         <151 cm_6 months                 0        1       1
6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         <151 cm_6 months                 1        0       1
6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         [151-155) cm_6 months            0        2       3
6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         [151-155) cm_6 months            1        1       3
6 months    ki1148112-LCNI-5            MALAWI                         >=155 cm_6 months                0      487     513
6 months    ki1148112-LCNI-5            MALAWI                         >=155 cm_6 months                1       26     513
6 months    ki1148112-LCNI-5            MALAWI                         <151 cm_6 months                 0      104     131
6 months    ki1148112-LCNI-5            MALAWI                         <151 cm_6 months                 1       27     131
6 months    ki1148112-LCNI-5            MALAWI                         [151-155) cm_6 months            0      174     192
6 months    ki1148112-LCNI-5            MALAWI                         [151-155) cm_6 months            1       18     192
6 months    kiGH5241-JiVitA-3           BANGLADESH                     >=155 cm_6 months                0     5197    5297
6 months    kiGH5241-JiVitA-3           BANGLADESH                     >=155 cm_6 months                1      100    5297
6 months    kiGH5241-JiVitA-3           BANGLADESH                     <151 cm_6 months                 0    17916   19510
6 months    kiGH5241-JiVitA-3           BANGLADESH                     <151 cm_6 months                 1     1594   19510
6 months    kiGH5241-JiVitA-3           BANGLADESH                     [151-155) cm_6 months            0     8245    8576
6 months    kiGH5241-JiVitA-3           BANGLADESH                     [151-155) cm_6 months            1      331    8576
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     >=155 cm_24 months               0      243     250
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     >=155 cm_24 months               1        7     250
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     <151 cm_24 months                0      520     626
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     <151 cm_24 months                1      106     626
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     [151-155) cm_24 months           0      284     310
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     [151-155) cm_24 months           1       26     310
24 months   ki1000111-WASH-Kenya        KENYA                          >=155 cm_24 months               0     1696    1809
24 months   ki1000111-WASH-Kenya        KENYA                          >=155 cm_24 months               1      113    1809
24 months   ki1000111-WASH-Kenya        KENYA                          <151 cm_24 months                0       85     105
24 months   ki1000111-WASH-Kenya        KENYA                          <151 cm_24 months                1       20     105
24 months   ki1000111-WASH-Kenya        KENYA                          [151-155) cm_24 months           0      221     255
24 months   ki1000111-WASH-Kenya        KENYA                          [151-155) cm_24 months           1       34     255
24 months   ki1017093b-PROVIDE          BANGLADESH                     [151-155) cm_24 months           0        2       2
24 months   ki1017093b-PROVIDE          BANGLADESH                     [151-155) cm_24 months           1        0       2
24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   >=155 cm_24 months               0        2       2
24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   >=155 cm_24 months               1        0       2
24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   <151 cm_24 months                0        0       1
24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   <151 cm_24 months                1        1       1
24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   [151-155) cm_24 months           0        1       1
24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   [151-155) cm_24 months           1        0       1
24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   >=155 cm_24 months               0      777     856
24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   >=155 cm_24 months               1       79     856
24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   <151 cm_24 months                0       35      48
24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   <151 cm_24 months                1       13      48
24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   [151-155) cm_24 months           0       91     111
24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   [151-155) cm_24 months           1       20     111
24 months   ki1119695-PROBIT            BELARUS                        >=155 cm_24 months               0      780     796
24 months   ki1119695-PROBIT            BELARUS                        >=155 cm_24 months               1       16     796
24 months   ki1119695-PROBIT            BELARUS                        <151 cm_24 months                0       11      13
24 months   ki1119695-PROBIT            BELARUS                        <151 cm_24 months                1        2      13
24 months   ki1119695-PROBIT            BELARUS                        [151-155) cm_24 months           0       24      24
24 months   ki1119695-PROBIT            BELARUS                        [151-155) cm_24 months           1        0      24
24 months   ki1126311-ZVITAMBO          ZIMBABWE                       >=155 cm_24 months               0       10      12
24 months   ki1126311-ZVITAMBO          ZIMBABWE                       >=155 cm_24 months               1        2      12
24 months   ki1126311-ZVITAMBO          ZIMBABWE                       <151 cm_24 months                0        2       4
24 months   ki1126311-ZVITAMBO          ZIMBABWE                       <151 cm_24 months                1        2       4
24 months   ki1126311-ZVITAMBO          ZIMBABWE                       [151-155) cm_24 months           0        1       6
24 months   ki1126311-ZVITAMBO          ZIMBABWE                       [151-155) cm_24 months           1        5       6
24 months   ki1135781-COHORTS           GUATEMALA                      >=155 cm_24 months               0       22      31
24 months   ki1135781-COHORTS           GUATEMALA                      >=155 cm_24 months               1        9      31
24 months   ki1135781-COHORTS           GUATEMALA                      <151 cm_24 months                0       93     180
24 months   ki1135781-COHORTS           GUATEMALA                      <151 cm_24 months                1       87     180
24 months   ki1135781-COHORTS           GUATEMALA                      [151-155) cm_24 months           0       33      54
24 months   ki1135781-COHORTS           GUATEMALA                      [151-155) cm_24 months           1       21      54
24 months   ki1148112-iLiNS-DOSE        MALAWI                         >=155 cm_24 months               0      362     414
24 months   ki1148112-iLiNS-DOSE        MALAWI                         >=155 cm_24 months               1       52     414
24 months   ki1148112-iLiNS-DOSE        MALAWI                         <151 cm_24 months                0      112     152
24 months   ki1148112-iLiNS-DOSE        MALAWI                         <151 cm_24 months                1       40     152
24 months   ki1148112-iLiNS-DOSE        MALAWI                         [151-155) cm_24 months           0      161     209
24 months   ki1148112-iLiNS-DOSE        MALAWI                         [151-155) cm_24 months           1       48     209
24 months   ki1148112-LCNI-5            MALAWI                         >=155 cm_24 months               0      228     243
24 months   ki1148112-LCNI-5            MALAWI                         >=155 cm_24 months               1       15     243
24 months   ki1148112-LCNI-5            MALAWI                         <151 cm_24 months                0       50      65
24 months   ki1148112-LCNI-5            MALAWI                         <151 cm_24 months                1       15      65
24 months   ki1148112-LCNI-5            MALAWI                         [151-155) cm_24 months           0       67      76
24 months   ki1148112-LCNI-5            MALAWI                         [151-155) cm_24 months           1        9      76
24 months   kiGH5241-JiVitA-3           BANGLADESH                     >=155 cm_24 months               0       25      25
24 months   kiGH5241-JiVitA-3           BANGLADESH                     >=155 cm_24 months               1        0      25
24 months   kiGH5241-JiVitA-3           BANGLADESH                     <151 cm_24 months                0       53      91
24 months   kiGH5241-JiVitA-3           BANGLADESH                     <151 cm_24 months                1       38      91
24 months   kiGH5241-JiVitA-3           BANGLADESH                     [151-155) cm_24 months           0       40      42
24 months   kiGH5241-JiVitA-3           BANGLADESH                     [151-155) cm_24 months           1        2      42


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
* agecat: Birth, studyid: ki1000304b-SAS-CompFeed, country: INDIA, intXmhtcm: >=155 cm_Birth
* agecat: Birth, studyid: ki1000304b-SAS-CompFeed, country: INDIA, intXmhtcm: <151 cm_Birth
* agecat: Birth, studyid: ki1119695-PROBIT, country: BELARUS, intXmhtcm: <151 cm_Birth
* agecat: Birth, studyid: ki1119695-PROBIT, country: BELARUS, intXmhtcm: [151-155) cm_Birth
* agecat: Birth, studyid: ki1135781-COHORTS, country: GUATEMALA, intXmhtcm: >=155 cm_Birth
* agecat: Birth, studyid: ki1135781-COHORTS, country: GUATEMALA, intXmhtcm: [151-155) cm_Birth
* agecat: Birth, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI, intXmhtcm: <151 cm_Birth
* agecat: 6 months, studyid: iLiNS_DYADM_LNS, country: MALAWI, intXmhtcm: <151 cm_6 months
* agecat: 6 months, studyid: iLiNS_DYADM_LNS, country: MALAWI, intXmhtcm: [151-155) cm_6 months
* agecat: 6 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH, intXmhtcm: >=155 cm_6 months
* agecat: 6 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH, intXmhtcm: [151-155) cm_6 months
* agecat: 6 months, studyid: ki1000111-WASH-Kenya, country: KENYA, intXmhtcm: >=155 cm_6 months
* agecat: 6 months, studyid: ki1000111-WASH-Kenya, country: KENYA, intXmhtcm: <151 cm_6 months
* agecat: 6 months, studyid: ki1000111-WASH-Kenya, country: KENYA, intXmhtcm: [151-155) cm_6 months
* agecat: 6 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN, intXmhtcm: >=155 cm_6 months
* agecat: 6 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN, intXmhtcm: <151 cm_6 months
* agecat: 6 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN, intXmhtcm: [151-155) cm_6 months
* agecat: 6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA, intXmhtcm: >=155 cm_6 months
* agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA, intXmhtcm: >=155 cm_6 months
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH, intXmhtcm: >=155 cm_6 months
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH, intXmhtcm: <151 cm_6 months
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH, intXmhtcm: [151-155) cm_6 months
* agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF, intXmhtcm: <151 cm_6 months
* agecat: 6 months, studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO, intXmhtcm: <151 cm_6 months
* agecat: 6 months, studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO, intXmhtcm: [151-155) cm_6 months
* agecat: 6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA, intXmhtcm: >=155 cm_6 months
* agecat: 6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA, intXmhtcm: [151-155) cm_6 months
* agecat: 6 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI, intXmhtcm: <151 cm_6 months
* agecat: 6 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI, intXmhtcm: [151-155) cm_6 months
* agecat: 24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH, intXmhtcm: [151-155) cm_24 months
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF, intXmhtcm: >=155 cm_24 months
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF, intXmhtcm: <151 cm_24 months
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF, intXmhtcm: [151-155) cm_24 months
* agecat: 24 months, studyid: ki1119695-PROBIT, country: BELARUS, intXmhtcm: <151 cm_24 months
* agecat: 24 months, studyid: ki1119695-PROBIT, country: BELARUS, intXmhtcm: [151-155) cm_24 months
* agecat: 24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE, intXmhtcm: >=155 cm_24 months
* agecat: 24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE, intXmhtcm: <151 cm_24 months
* agecat: 24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE, intXmhtcm: [151-155) cm_24 months
* agecat: 24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH, intXmhtcm: >=155 cm_24 months
* agecat: 24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH, intXmhtcm: [151-155) cm_24 months

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

```
##           sstunted
## tr           0   1
##   Control    0   0
##   LNS        0   0
##   Maternal   0   0
##   Other      0   0
##   VitA       0   0
##   Zinc     429  10
##           sstunted
## tr           0   1
##   Control    0   0
##   LNS        0   0
##   Maternal   0   0
##   Other      0   0
##   VitA       0   0
##   Zinc     777  79
##           sstunted
## tr          0  1
##   Control   0  0
##   LNS       0  0
##   Maternal  0  0
##   Other     0  0
##   VitA      0  0
##   Zinc     35 13
##           sstunted
## tr          0  1
##   Control   0  0
##   LNS       0  0
##   Maternal  0  0
##   Other     0  0
##   VitA      0  0
##   Zinc     91 20
```




# Results Detail

## Results Plots
![](/tmp/e4f81f92-b612-4a3c-9b51-104e047f5e49/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/e4f81f92-b612-4a3c-9b51-104e047f5e49/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/e4f81f92-b612-4a3c-9b51-104e047f5e49/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/e4f81f92-b612-4a3c-9b51-104e047f5e49/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                     country                        intXmhtcm                intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------  --------------------------  -----------------------------  -----------------------  -------------------  ---------------  ----------  -----------  ----------
Birth       ki1000304b-SAS-CompFeed     INDIA                          [151-155) cm_Birth       Control              NA                0.1538462   -0.0644257   0.3721180
Birth       ki1000304b-SAS-CompFeed     INDIA                          [151-155) cm_Birth       Other                NA                0.2500000   -0.2722828   0.7722828
Birth       ki1119695-PROBIT            BELARUS                        >=155 cm_Birth           Control              NA                0.0007760    0.0002505   0.0013016
Birth       ki1119695-PROBIT            BELARUS                        >=155 cm_Birth           Maternal             NA                0.0000000    0.0000000   0.0000000
Birth       ki1126311-ZVITAMBO          ZIMBABWE                       >=155 cm_Birth           Control              NA                0.0244537    0.0175482   0.0313592
Birth       ki1126311-ZVITAMBO          ZIMBABWE                       >=155 cm_Birth           VitA                 NA                0.0264614    0.0223241   0.0305988
Birth       ki1126311-ZVITAMBO          ZIMBABWE                       <151 cm_Birth            Control              NA                0.0434783    0.0094232   0.0775333
Birth       ki1126311-ZVITAMBO          ZIMBABWE                       <151 cm_Birth            VitA                 NA                0.0595238    0.0368757   0.0821719
Birth       ki1126311-ZVITAMBO          ZIMBABWE                       [151-155) cm_Birth       Control              NA                0.0480480    0.0250693   0.0710268
Birth       ki1126311-ZVITAMBO          ZIMBABWE                       [151-155) cm_Birth       VitA                 NA                0.0335821    0.0227941   0.0443701
Birth       ki1135781-COHORTS           GUATEMALA                      <151 cm_Birth            Control              NA                0.0074906   -0.0028612   0.0178425
Birth       ki1135781-COHORTS           GUATEMALA                      <151 cm_Birth            Other                NA                0.0179856    0.0023489   0.0336223
Birth       kiGH5241-JiVitA-3           BANGLADESH                     >=155 cm_Birth           Control              NA                0.0499653    0.0334836   0.0664470
Birth       kiGH5241-JiVitA-3           BANGLADESH                     >=155 cm_Birth           Maternal             NA                0.0459219    0.0312947   0.0605490
Birth       kiGH5241-JiVitA-3           BANGLADESH                     <151 cm_Birth            Control              NA                0.1348949    0.1255671   0.1442226
Birth       kiGH5241-JiVitA-3           BANGLADESH                     <151 cm_Birth            Maternal             NA                0.1184166    0.1087126   0.1281206
Birth       kiGH5241-JiVitA-3           BANGLADESH                     [151-155) cm_Birth       Control              NA                0.0946844    0.0812912   0.1080776
Birth       kiGH5241-JiVitA-3           BANGLADESH                     [151-155) cm_Birth       Maternal             NA                0.0722022    0.0609369   0.0834674
6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     <151 cm_6 months         Control              NA                0.0897436    0.0262246   0.1532626
6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     <151 cm_6 months         LNS                  NA                0.0642202    0.0181333   0.1103070
6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     <151 cm_6 months         Other                NA                0.0609756    0.0243013   0.0976499
6 months    ki1000304b-SAS-CompFeed     INDIA                          <151 cm_6 months         Control              NA                0.2117647    0.1044781   0.3190514
6 months    ki1000304b-SAS-CompFeed     INDIA                          <151 cm_6 months         Other                NA                0.1684211    0.0769219   0.2599202
6 months    ki1000304b-SAS-CompFeed     INDIA                          [151-155) cm_6 months    Control              NA                0.0508475   -0.0239176   0.1256125
6 months    ki1000304b-SAS-CompFeed     INDIA                          [151-155) cm_6 months    Other                NA                0.1333333    0.0584874   0.2081793
6 months    ki1000304b-SAS-FoodSuppl    INDIA                          <151 cm_6 months         Control              NA                0.2244898    0.1073577   0.3416219
6 months    ki1000304b-SAS-FoodSuppl    INDIA                          <151 cm_6 months         Other                NA                0.1888112    0.1244997   0.2531227
6 months    ki1000304b-SAS-FoodSuppl    INDIA                          [151-155) cm_6 months    Control              NA                0.1200000   -0.0080513   0.2480513
6 months    ki1000304b-SAS-FoodSuppl    INDIA                          [151-155) cm_6 months    Other                NA                0.1267606    0.0489656   0.2045555
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   >=155 cm_6 months        Control              NA                0.0265152    0.0071257   0.0459046
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   >=155 cm_6 months        Other                NA                0.0079365   -0.0030242   0.0188973
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   >=155 cm_6 months        Zinc                 NA                0.0075901    0.0001767   0.0150036
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   [151-155) cm_6 months    Control              NA                0.0319149   -0.0036666   0.0674964
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   [151-155) cm_6 months    Other                NA                0.0104167   -0.0099204   0.0307538
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   [151-155) cm_6 months    Zinc                 NA                0.0165746   -0.0020500   0.0351992
6 months    ki1112895-Guatemala BSC     GUATEMALA                      <151 cm_6 months         Control              NA                0.1851852    0.0811009   0.2892695
6 months    ki1112895-Guatemala BSC     GUATEMALA                      <151 cm_6 months         Other                NA                0.0727273    0.0037795   0.1416751
6 months    ki1119695-PROBIT            BELARUS                        >=155 cm_6 months        Control              NA                0.0168696    0.0089518   0.0247873
6 months    ki1119695-PROBIT            BELARUS                        >=155 cm_6 months        Maternal             NA                0.0110440    0.0067291   0.0153589
6 months    ki1119695-PROBIT            BELARUS                        <151 cm_6 months         Control              NA                0.0400000   -0.0432864   0.1232864
6 months    ki1119695-PROBIT            BELARUS                        <151 cm_6 months         Maternal             NA                0.0517241    0.0011491   0.1022991
6 months    ki1119695-PROBIT            BELARUS                        [151-155) cm_6 months    Control              NA                0.0240964   -0.0075043   0.0556971
6 months    ki1119695-PROBIT            BELARUS                        [151-155) cm_6 months    Maternal             NA                0.0218579    0.0029555   0.0407604
6 months    ki1126311-ZVITAMBO          ZIMBABWE                       >=155 cm_6 months        Control              NA                0.0313433    0.0220130   0.0406735
6 months    ki1126311-ZVITAMBO          ZIMBABWE                       >=155 cm_6 months        VitA                 NA                0.0366162    0.0307659   0.0424665
6 months    ki1126311-ZVITAMBO          ZIMBABWE                       <151 cm_6 months         Control              NA                0.1020408    0.0420353   0.1620463
6 months    ki1126311-ZVITAMBO          ZIMBABWE                       <151 cm_6 months         VitA                 NA                0.1118421    0.0763689   0.1473153
6 months    ki1126311-ZVITAMBO          ZIMBABWE                       [151-155) cm_6 months    Control              NA                0.0336538    0.0091335   0.0581742
6 months    ki1126311-ZVITAMBO          ZIMBABWE                       [151-155) cm_6 months    VitA                 NA                0.0481283    0.0327817   0.0634750
6 months    ki1135781-COHORTS           GUATEMALA                      >=155 cm_6 months        Control              NA                0.0943396    0.0152858   0.1733935
6 months    ki1135781-COHORTS           GUATEMALA                      >=155 cm_6 months        Other                NA                0.0175439   -0.0166945   0.0517822
6 months    ki1135781-COHORTS           GUATEMALA                      <151 cm_6 months         Control              NA                0.1821192    0.1385557   0.2256827
6 months    ki1135781-COHORTS           GUATEMALA                      <151 cm_6 months         Other                NA                0.1391586    0.1005360   0.1777811
6 months    ki1135781-COHORTS           GUATEMALA                      [151-155) cm_6 months    Control              NA                0.1046512    0.0397885   0.1695139
6 months    ki1135781-COHORTS           GUATEMALA                      [151-155) cm_6 months    Other                NA                0.0654206    0.0184474   0.1123937
6 months    ki1148112-iLiNS-DOSE        MALAWI                         >=155 cm_6 months        Control              NA                0.0370370    0.0079420   0.0661320
6 months    ki1148112-iLiNS-DOSE        MALAWI                         >=155 cm_6 months        LNS                  NA                0.0434298    0.0300926   0.0567671
6 months    ki1148112-iLiNS-DOSE        MALAWI                         <151 cm_6 months         Control              NA                0.1142857    0.0396601   0.1889114
6 months    ki1148112-iLiNS-DOSE        MALAWI                         <151 cm_6 months         LNS                  NA                0.1006098    0.0680147   0.1332048
6 months    ki1148112-iLiNS-DOSE        MALAWI                         [151-155) cm_6 months    Control              NA                0.1034483    0.0393862   0.1675104
6 months    ki1148112-iLiNS-DOSE        MALAWI                         [151-155) cm_6 months    LNS                  NA                0.0837696    0.0559581   0.1115812
6 months    ki1148112-LCNI-5            MALAWI                         >=155 cm_6 months        Control              NA                0.0298507    0.0010094   0.0586921
6 months    ki1148112-LCNI-5            MALAWI                         >=155 cm_6 months        LNS                  NA                0.0615385    0.0322992   0.0907777
6 months    ki1148112-LCNI-5            MALAWI                         >=155 cm_6 months        Other                NA                0.0504202    0.0110682   0.0897721
6 months    ki1148112-LCNI-5            MALAWI                         <151 cm_6 months         Control              NA                0.2068966    0.0588990   0.3548941
6 months    ki1148112-LCNI-5            MALAWI                         <151 cm_6 months         LNS                  NA                0.2424242    0.1386377   0.3462108
6 months    ki1148112-LCNI-5            MALAWI                         <151 cm_6 months         Other                NA                0.1388889    0.0254860   0.2522918
6 months    ki1148112-LCNI-5            MALAWI                         [151-155) cm_6 months    Control              NA                0.0888889    0.0055236   0.1722542
6 months    ki1148112-LCNI-5            MALAWI                         [151-155) cm_6 months    LNS                  NA                0.0947368    0.0356940   0.1537797
6 months    ki1148112-LCNI-5            MALAWI                         [151-155) cm_6 months    Other                NA                0.0961538    0.0158177   0.1764900
6 months    kiGH5241-JiVitA-3           BANGLADESH                     >=155 cm_6 months        Control              NA                0.0189609    0.0104256   0.0274963
6 months    kiGH5241-JiVitA-3           BANGLADESH                     >=155 cm_6 months        Maternal             NA                0.0187970    0.0075795   0.0300144
6 months    kiGH5241-JiVitA-3           BANGLADESH                     <151 cm_6 months         Control              NA                0.0890935    0.0804512   0.0977359
6 months    kiGH5241-JiVitA-3           BANGLADESH                     <151 cm_6 months         Maternal             NA                0.0744465    0.0662569   0.0826361
6 months    kiGH5241-JiVitA-3           BANGLADESH                     [151-155) cm_6 months    Control              NA                0.0428200    0.0331875   0.0524524
6 months    kiGH5241-JiVitA-3           BANGLADESH                     [151-155) cm_6 months    Maternal             NA                0.0344907    0.0260858   0.0428956
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     >=155 cm_24 months       Control              NA                0.0363636   -0.0132073   0.0859346
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     >=155 cm_24 months       LNS                  NA                0.0327869   -0.0119911   0.0775649
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     >=155 cm_24 months       Other                NA                0.0223881   -0.0027110   0.0474871
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     <151 cm_24 months        Control              NA                0.1914894    0.1264912   0.2564875
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     <151 cm_24 months        LNS                  NA                0.1666667    0.1092323   0.2241010
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     <151 cm_24 months        Other                NA                0.1609907    0.1208784   0.2011030
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     [151-155) cm_24 months   Control              NA                0.0675676    0.0102864   0.1248487
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     [151-155) cm_24 months   LNS                  NA                0.0833333    0.0241329   0.1425338
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     [151-155) cm_24 months   Other                NA                0.0921053    0.0460597   0.1381508
24 months   ki1000111-WASH-Kenya        KENYA                          >=155 cm_24 months       Control              NA                0.0688525    0.0487536   0.0889514
24 months   ki1000111-WASH-Kenya        KENYA                          >=155 cm_24 months       LNS                  NA                0.0431472    0.0230785   0.0632159
24 months   ki1000111-WASH-Kenya        KENYA                          >=155 cm_24 months       Other                NA                0.0670807    0.0497949   0.0843666
24 months   ki1000111-WASH-Kenya        KENYA                          <151 cm_24 months        Control              NA                0.2903226    0.1297704   0.4508747
24 months   ki1000111-WASH-Kenya        KENYA                          <151 cm_24 months        LNS                  NA                0.1363636   -0.0077249   0.2804522
24 months   ki1000111-WASH-Kenya        KENYA                          <151 cm_24 months        Other                NA                0.1538462    0.0553107   0.2523816
24 months   ki1000111-WASH-Kenya        KENYA                          [151-155) cm_24 months   Control              NA                0.1750000    0.0915738   0.2584262
24 months   ki1000111-WASH-Kenya        KENYA                          [151-155) cm_24 months   LNS                  NA                0.0983607    0.0234811   0.1732403
24 months   ki1000111-WASH-Kenya        KENYA                          [151-155) cm_24 months   Other                NA                0.1228070    0.0624388   0.1831752
24 months   ki1119695-PROBIT            BELARUS                        >=155 cm_24 months       Control              NA                0.0197183   -0.0051491   0.0445857
24 months   ki1119695-PROBIT            BELARUS                        >=155 cm_24 months       Maternal             NA                0.0204082   -0.0045963   0.0454126
24 months   ki1135781-COHORTS           GUATEMALA                      >=155 cm_24 months       Control              NA                0.3333333    0.0908307   0.5758359
24 months   ki1135781-COHORTS           GUATEMALA                      >=155 cm_24 months       Other                NA                0.2500000    0.0343205   0.4656795
24 months   ki1135781-COHORTS           GUATEMALA                      <151 cm_24 months        Control              NA                0.5056180    0.4014569   0.6097790
24 months   ki1135781-COHORTS           GUATEMALA                      <151 cm_24 months        Other                NA                0.4615385    0.3588271   0.5642498
24 months   ki1135781-COHORTS           GUATEMALA                      [151-155) cm_24 months   Control              NA                0.5000000    0.3060051   0.6939949
24 months   ki1135781-COHORTS           GUATEMALA                      [151-155) cm_24 months   Other                NA                0.2857143    0.1168142   0.4546144
24 months   ki1148112-iLiNS-DOSE        MALAWI                         >=155 cm_24 months       Control              NA                0.0958904    0.0282650   0.1635158
24 months   ki1148112-iLiNS-DOSE        MALAWI                         >=155 cm_24 months       LNS                  NA                0.1319648    0.0959987   0.1679309
24 months   ki1148112-iLiNS-DOSE        MALAWI                         <151 cm_24 months        Control              NA                0.4800000    0.2835131   0.6764869
24 months   ki1148112-iLiNS-DOSE        MALAWI                         <151 cm_24 months        LNS                  NA                0.2204724    0.1481335   0.2928114
24 months   ki1148112-iLiNS-DOSE        MALAWI                         [151-155) cm_24 months   Control              NA                0.1935484    0.0541388   0.3329580
24 months   ki1148112-iLiNS-DOSE        MALAWI                         [151-155) cm_24 months   LNS                  NA                0.2359551    0.1734301   0.2984801
24 months   ki1148112-LCNI-5            MALAWI                         >=155 cm_24 months       Control              NA                0.0933333    0.0273620   0.1593046
24 months   ki1148112-LCNI-5            MALAWI                         >=155 cm_24 months       LNS                  NA                0.0535714    0.0117841   0.0953588
24 months   ki1148112-LCNI-5            MALAWI                         >=155 cm_24 months       Other                NA                0.0357143   -0.0129907   0.0844193
24 months   ki1148112-LCNI-5            MALAWI                         <151 cm_24 months        Control              NA                0.3529412    0.1240056   0.5818768
24 months   ki1148112-LCNI-5            MALAWI                         <151 cm_24 months        LNS                  NA                0.1818182    0.0492005   0.3144358
24 months   ki1148112-LCNI-5            MALAWI                         <151 cm_24 months        Other                NA                0.2000000   -0.0039995   0.4039995
24 months   ki1148112-LCNI-5            MALAWI                         [151-155) cm_24 months   Control              NA                0.1052632   -0.0336468   0.2441731
24 months   ki1148112-LCNI-5            MALAWI                         [151-155) cm_24 months   LNS                  NA                0.1470588    0.0272221   0.2668955
24 months   ki1148112-LCNI-5            MALAWI                         [151-155) cm_24 months   Other                NA                0.0869565   -0.0289632   0.2028762
24 months   kiGH5241-JiVitA-3           BANGLADESH                     <151 cm_24 months        Control              NA                0.5000000    0.2936905   0.7063095
24 months   kiGH5241-JiVitA-3           BANGLADESH                     <151 cm_24 months        Maternal             NA                0.3529412    0.1753411   0.5305412


### Parameter: E(Y)


agecat      studyid                     country                        intXmhtcm                intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------  --------------------------  -----------------------------  -----------------------  -------------------  ---------------  ----------  -----------  ----------
Birth       ki1000304b-SAS-CompFeed     INDIA                          [151-155) cm_Birth       NA                   NA                0.2000000   -0.0725459   0.4725459
Birth       ki1119695-PROBIT            BELARUS                        >=155 cm_Birth           NA                   NA                0.0003786    0.0001157   0.0006415
Birth       ki1126311-ZVITAMBO          ZIMBABWE                       >=155 cm_Birth           NA                   NA                0.0259605    0.0224094   0.0295116
Birth       ki1126311-ZVITAMBO          ZIMBABWE                       <151 cm_Birth            NA                   NA                0.0555556    0.0365328   0.0745783
Birth       ki1126311-ZVITAMBO          ZIMBABWE                       [151-155) cm_Birth       NA                   NA                0.0370107    0.0271356   0.0468857
Birth       ki1135781-COHORTS           GUATEMALA                      <151 cm_Birth            NA                   NA                0.0128440    0.0033818   0.0223062
Birth       kiGH5241-JiVitA-3           BANGLADESH                     >=155 cm_Birth           NA                   NA                0.0479310    0.0369221   0.0589399
Birth       kiGH5241-JiVitA-3           BANGLADESH                     <151 cm_Birth            NA                   NA                0.1266297    0.1198654   0.1333941
Birth       kiGH5241-JiVitA-3           BANGLADESH                     [151-155) cm_Birth       NA                   NA                0.0832483    0.0744566   0.0920401
6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     <151 cm_6 months         NA                   NA                0.0683761    0.0419345   0.0948176
6 months    ki1000304b-SAS-CompFeed     INDIA                          <151 cm_6 months         NA                   NA                0.1888889    0.1151194   0.2626584
6 months    ki1000304b-SAS-CompFeed     INDIA                          [151-155) cm_6 months    NA                   NA                0.0970149    0.0376001   0.1564298
6 months    ki1000304b-SAS-FoodSuppl    INDIA                          <151 cm_6 months         NA                   NA                0.1979167    0.1414123   0.2544211
6 months    ki1000304b-SAS-FoodSuppl    INDIA                          [151-155) cm_6 months    NA                   NA                0.1250000    0.0584964   0.1915036
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   >=155 cm_6 months        NA                   NA                0.0124640    0.0057278   0.0192003
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   [151-155) cm_6 months    NA                   NA                0.0188679    0.0050044   0.0327314
6 months    ki1112895-Guatemala BSC     GUATEMALA                      <151 cm_6 months         NA                   NA                0.1284404    0.0653395   0.1915413
6 months    ki1119695-PROBIT            BELARUS                        >=155 cm_6 months        NA                   NA                0.0139454    0.0091430   0.0187478
6 months    ki1119695-PROBIT            BELARUS                        <151 cm_6 months         NA                   NA                0.0462963   -0.0007770   0.0933696
6 months    ki1119695-PROBIT            BELARUS                        [151-155) cm_6 months    NA                   NA                0.0229226    0.0048404   0.0410049
6 months    ki1126311-ZVITAMBO          ZIMBABWE                       >=155 cm_6 months        NA                   NA                0.0352830    0.0303156   0.0402505
6 months    ki1126311-ZVITAMBO          ZIMBABWE                       <151 cm_6 months         NA                   NA                0.1094527    0.0788952   0.1400102
6 months    ki1126311-ZVITAMBO          ZIMBABWE                       [151-155) cm_6 months    NA                   NA                0.0449791    0.0318342   0.0581240
6 months    ki1135781-COHORTS           GUATEMALA                      >=155 cm_6 months        NA                   NA                0.0545455    0.0119136   0.0971773
6 months    ki1135781-COHORTS           GUATEMALA                      <151 cm_6 months         NA                   NA                0.1603928    0.1312713   0.1895143
6 months    ki1135781-COHORTS           GUATEMALA                      [151-155) cm_6 months    NA                   NA                0.0829016    0.0438996   0.1219035
6 months    ki1148112-iLiNS-DOSE        MALAWI                         >=155 cm_6 months        NA                   NA                0.0424528    0.0303096   0.0545960
6 months    ki1148112-iLiNS-DOSE        MALAWI                         <151 cm_6 months         NA                   NA                0.1030151    0.0731134   0.1329168
6 months    ki1148112-iLiNS-DOSE        MALAWI                         [151-155) cm_6 months    NA                   NA                0.0874200    0.0618303   0.1130098
6 months    ki1148112-LCNI-5            MALAWI                         >=155 cm_6 months        NA                   NA                0.0506823    0.0316826   0.0696820
6 months    ki1148112-LCNI-5            MALAWI                         <151 cm_6 months         NA                   NA                0.2061069    0.1365718   0.2756419
6 months    ki1148112-LCNI-5            MALAWI                         [151-155) cm_6 months    NA                   NA                0.0937500    0.0524128   0.1350872
6 months    kiGH5241-JiVitA-3           BANGLADESH                     >=155 cm_6 months        NA                   NA                0.0188786    0.0118229   0.0259343
6 months    kiGH5241-JiVitA-3           BANGLADESH                     <151 cm_6 months         NA                   NA                0.0817017    0.0757213   0.0876821
6 months    kiGH5241-JiVitA-3           BANGLADESH                     [151-155) cm_6 months    NA                   NA                0.0385961    0.0322065   0.0449857
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     >=155 cm_24 months       NA                   NA                0.0280000    0.0075091   0.0484909
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     <151 cm_24 months        NA                   NA                0.1693291    0.1399263   0.1987319
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     [151-155) cm_24 months   NA                   NA                0.0838710    0.0529642   0.1147777
24 months   ki1000111-WASH-Kenya        KENYA                          >=155 cm_24 months       NA                   NA                0.0624655    0.0513106   0.0736203
24 months   ki1000111-WASH-Kenya        KENYA                          <151 cm_24 months        NA                   NA                0.1904762    0.1150075   0.2659448
24 months   ki1000111-WASH-Kenya        KENYA                          [151-155) cm_24 months   NA                   NA                0.1333333    0.0915285   0.1751382
24 months   ki1119695-PROBIT            BELARUS                        >=155 cm_24 months       NA                   NA                0.0201005    0.0024500   0.0377510
24 months   ki1135781-COHORTS           GUATEMALA                      >=155 cm_24 months       NA                   NA                0.2903226    0.1278955   0.4527496
24 months   ki1135781-COHORTS           GUATEMALA                      <151 cm_24 months        NA                   NA                0.4833333    0.4101267   0.5565399
24 months   ki1135781-COHORTS           GUATEMALA                      [151-155) cm_24 months   NA                   NA                0.3888889    0.2576438   0.5201340
24 months   ki1148112-iLiNS-DOSE        MALAWI                         >=155 cm_24 months       NA                   NA                0.1256039    0.0936423   0.1575655
24 months   ki1148112-iLiNS-DOSE        MALAWI                         <151 cm_24 months        NA                   NA                0.2631579    0.1929227   0.3333931
24 months   ki1148112-iLiNS-DOSE        MALAWI                         [151-155) cm_24 months   NA                   NA                0.2296651    0.1725036   0.2868266
24 months   ki1148112-LCNI-5            MALAWI                         >=155 cm_24 months       NA                   NA                0.0617284    0.0314071   0.0920497
24 months   ki1148112-LCNI-5            MALAWI                         <151 cm_24 months        NA                   NA                0.2307692    0.1275465   0.3339920
24 months   ki1148112-LCNI-5            MALAWI                         [151-155) cm_24 months   NA                   NA                0.1184211    0.0452966   0.1915455
24 months   kiGH5241-JiVitA-3           BANGLADESH                     <151 cm_24 months        NA                   NA                0.4175824    0.2822548   0.5529100


### Parameter: RR


agecat      studyid                     country                        intXmhtcm                intervention_level   baseline_level     estimate    ci_lower     ci_upper
----------  --------------------------  -----------------------------  -----------------------  -------------------  ---------------  ----------  ----------  -----------
Birth       ki1000304b-SAS-CompFeed     INDIA                          [151-155) cm_Birth       Control              Control           1.0000000   1.0000000    1.0000000
Birth       ki1000304b-SAS-CompFeed     INDIA                          [151-155) cm_Birth       Other                Control           1.6250000   0.1223000   21.5913687
Birth       ki1119695-PROBIT            BELARUS                        >=155 cm_Birth           Control              Control           1.0000000   1.0000000    1.0000000
Birth       ki1119695-PROBIT            BELARUS                        >=155 cm_Birth           Maternal             Control           0.0000000   0.0000000    0.0000001
Birth       ki1126311-ZVITAMBO          ZIMBABWE                       >=155 cm_Birth           Control              Control           1.0000000   1.0000000    1.0000000
Birth       ki1126311-ZVITAMBO          ZIMBABWE                       >=155 cm_Birth           VitA                 Control           1.0821037   0.7835819    1.4943534
Birth       ki1126311-ZVITAMBO          ZIMBABWE                       <151 cm_Birth            Control              Control           1.0000000   1.0000000    1.0000000
Birth       ki1126311-ZVITAMBO          ZIMBABWE                       <151 cm_Birth            VitA                 Control           1.3690476   0.5731110    3.2703811
Birth       ki1126311-ZVITAMBO          ZIMBABWE                       [151-155) cm_Birth       Control              Control           1.0000000   1.0000000    1.0000000
Birth       ki1126311-ZVITAMBO          ZIMBABWE                       [151-155) cm_Birth       VitA                 Control           0.6989272   0.3928492    1.2434779
Birth       ki1135781-COHORTS           GUATEMALA                      <151 cm_Birth            Control              Control           1.0000000   1.0000000    1.0000000
Birth       ki1135781-COHORTS           GUATEMALA                      <151 cm_Birth            Other                Control           2.4010791   0.4691743   12.2879298
Birth       kiGH5241-JiVitA-3           BANGLADESH                     >=155 cm_Birth           Control              Control           1.0000000   1.0000000    1.0000000
Birth       kiGH5241-JiVitA-3           BANGLADESH                     >=155 cm_Birth           Maternal             Control           0.9190751   0.5809761    1.4539308
Birth       kiGH5241-JiVitA-3           BANGLADESH                     <151 cm_Birth            Control              Control           1.0000000   1.0000000    1.0000000
Birth       kiGH5241-JiVitA-3           BANGLADESH                     <151 cm_Birth            Maternal             Control           0.8778436   0.7885865    0.9772034
Birth       kiGH5241-JiVitA-3           BANGLADESH                     [151-155) cm_Birth       Control              Control           1.0000000   1.0000000    1.0000000
Birth       kiGH5241-JiVitA-3           BANGLADESH                     [151-155) cm_Birth       Maternal             Control           0.7625562   0.6177532    0.9413014
6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     <151 cm_6 months         Control              Control           1.0000000   1.0000000    1.0000000
6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     <151 cm_6 months         LNS                  Control           0.7155963   0.2611688    1.9607172
6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     <151 cm_6 months         Other                Control           0.6794425   0.2683925    1.7200261
6 months    ki1000304b-SAS-CompFeed     INDIA                          <151 cm_6 months         Control              Control           1.0000000   1.0000000    1.0000000
6 months    ki1000304b-SAS-CompFeed     INDIA                          <151 cm_6 months         Other                Control           0.7953216   0.3791777    1.6681798
6 months    ki1000304b-SAS-CompFeed     INDIA                          [151-155) cm_6 months    Control              Control           1.0000000   1.0000000    1.0000000
6 months    ki1000304b-SAS-CompFeed     INDIA                          [151-155) cm_6 months    Other                Control           2.6222222   0.5438231   12.6439092
6 months    ki1000304b-SAS-FoodSuppl    INDIA                          <151 cm_6 months         Control              Control           1.0000000   1.0000000    1.0000000
6 months    ki1000304b-SAS-FoodSuppl    INDIA                          <151 cm_6 months         Other                Control           0.8410680   0.4510446    1.5683492
6 months    ki1000304b-SAS-FoodSuppl    INDIA                          [151-155) cm_6 months    Control              Control           1.0000000   1.0000000    1.0000000
6 months    ki1000304b-SAS-FoodSuppl    INDIA                          [151-155) cm_6 months    Other                Control           1.0563380   0.3084542    3.6175545
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   >=155 cm_6 months        Control              Control           1.0000000   1.0000000    1.0000000
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   >=155 cm_6 months        Other                Control           0.2993197   0.0627278    1.4282714
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   >=155 cm_6 months        Zinc                 Control           0.2862564   0.0845001    0.9697361
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   [151-155) cm_6 months    Control              Control           1.0000000   1.0000000    1.0000000
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   [151-155) cm_6 months    Other                Control           0.3263889   0.0344609    3.0913182
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   [151-155) cm_6 months    Zinc                 Control           0.5193370   0.1066586    2.5287317
6 months    ki1112895-Guatemala BSC     GUATEMALA                      <151 cm_6 months         Control              Control           1.0000000   1.0000000    1.0000000
6 months    ki1112895-Guatemala BSC     GUATEMALA                      <151 cm_6 months         Other                Control           0.3927273   0.1304505    1.1823234
6 months    ki1119695-PROBIT            BELARUS                        >=155 cm_6 months        Control              Control           1.0000000   1.0000000    1.0000000
6 months    ki1119695-PROBIT            BELARUS                        >=155 cm_6 months        Maternal             Control           0.6546703   0.3569571    1.2006855
6 months    ki1119695-PROBIT            BELARUS                        <151 cm_6 months         Control              Control           1.0000000   1.0000000    1.0000000
6 months    ki1119695-PROBIT            BELARUS                        <151 cm_6 months         Maternal             Control           1.2931034   0.1299346   12.8689085
6 months    ki1119695-PROBIT            BELARUS                        [151-155) cm_6 months    Control              Control           1.0000000   1.0000000    1.0000000
6 months    ki1119695-PROBIT            BELARUS                        [151-155) cm_6 months    Maternal             Control           0.9071038   0.1891575    4.3500107
6 months    ki1126311-ZVITAMBO          ZIMBABWE                       >=155 cm_6 months        Control              Control           1.0000000   1.0000000    1.0000000
6 months    ki1126311-ZVITAMBO          ZIMBABWE                       >=155 cm_6 months        VitA                 Control           1.1682299   0.8333033    1.6377725
6 months    ki1126311-ZVITAMBO          ZIMBABWE                       <151 cm_6 months         Control              Control           1.0000000   1.0000000    1.0000000
6 months    ki1126311-ZVITAMBO          ZIMBABWE                       <151 cm_6 months         VitA                 Control           1.0960526   0.5619060    2.1379577
6 months    ki1126311-ZVITAMBO          ZIMBABWE                       [151-155) cm_6 months    Control              Control           1.0000000   1.0000000    1.0000000
6 months    ki1126311-ZVITAMBO          ZIMBABWE                       [151-155) cm_6 months    VitA                 Control           1.4300993   0.6455951    3.1679052
6 months    ki1135781-COHORTS           GUATEMALA                      >=155 cm_6 months        Control              Control           1.0000000   1.0000000    1.0000000
6 months    ki1135781-COHORTS           GUATEMALA                      >=155 cm_6 months        Other                Control           0.1859649   0.0222351    1.5553287
6 months    ki1135781-COHORTS           GUATEMALA                      <151 cm_6 months         Control              Control           1.0000000   1.0000000    1.0000000
6 months    ki1135781-COHORTS           GUATEMALA                      <151 cm_6 months         Other                Control           0.7641071   0.5296987    1.1022487
6 months    ki1135781-COHORTS           GUATEMALA                      [151-155) cm_6 months    Control              Control           1.0000000   1.0000000    1.0000000
6 months    ki1135781-COHORTS           GUATEMALA                      [151-155) cm_6 months    Other                Control           0.6251298   0.2421201    1.6140226
6 months    ki1148112-iLiNS-DOSE        MALAWI                         >=155 cm_6 months        Control              Control           1.0000000   1.0000000    1.0000000
6 months    ki1148112-iLiNS-DOSE        MALAWI                         >=155 cm_6 months        LNS                  Control           1.1726058   0.5044784    2.7255963
6 months    ki1148112-iLiNS-DOSE        MALAWI                         <151 cm_6 months         Control              Control           1.0000000   1.0000000    1.0000000
6 months    ki1148112-iLiNS-DOSE        MALAWI                         <151 cm_6 months         LNS                  Control           0.8803354   0.4246967    1.8248089
6 months    ki1148112-iLiNS-DOSE        MALAWI                         [151-155) cm_6 months    Control              Control           1.0000000   1.0000000    1.0000000
6 months    ki1148112-iLiNS-DOSE        MALAWI                         [151-155) cm_6 months    LNS                  Control           0.8097731   0.4010575    1.6350089
6 months    ki1148112-LCNI-5            MALAWI                         >=155 cm_6 months        Control              Control           1.0000000   1.0000000    1.0000000
6 months    ki1148112-LCNI-5            MALAWI                         >=155 cm_6 months        LNS                  Control           2.0615385   0.7024065    6.0505431
6 months    ki1148112-LCNI-5            MALAWI                         >=155 cm_6 months        Other                Control           1.6890756   0.4877952    5.8487184
6 months    ki1148112-LCNI-5            MALAWI                         <151 cm_6 months         Control              Control           1.0000000   1.0000000    1.0000000
6 months    ki1148112-LCNI-5            MALAWI                         <151 cm_6 months         LNS                  Control           1.1717172   0.5090652    2.6969454
6 months    ki1148112-LCNI-5            MALAWI                         <151 cm_6 months         Other                Control           0.6712963   0.2267138    1.9876989
6 months    ki1148112-LCNI-5            MALAWI                         [151-155) cm_6 months    Control              Control           1.0000000   1.0000000    1.0000000
6 months    ki1148112-LCNI-5            MALAWI                         [151-155) cm_6 months    LNS                  Control           1.0657895   0.3456470    3.2863215
6 months    ki1148112-LCNI-5            MALAWI                         [151-155) cm_6 months    Other                Control           1.0817308   0.3080552    3.7984803
6 months    kiGH5241-JiVitA-3           BANGLADESH                     >=155 cm_6 months        Control              Control           1.0000000   1.0000000    1.0000000
6 months    kiGH5241-JiVitA-3           BANGLADESH                     >=155 cm_6 months        Maternal             Control           0.9913534   0.4694410    2.0935145
6 months    kiGH5241-JiVitA-3           BANGLADESH                     <151 cm_6 months         Control              Control           1.0000000   1.0000000    1.0000000
6 months    kiGH5241-JiVitA-3           BANGLADESH                     <151 cm_6 months         Maternal             Control           0.8355990   0.7216061    0.9675995
6 months    kiGH5241-JiVitA-3           BANGLADESH                     [151-155) cm_6 months    Control              Control           1.0000000   1.0000000    1.0000000
6 months    kiGH5241-JiVitA-3           BANGLADESH                     [151-155) cm_6 months    Maternal             Control           0.8054814   0.5781114    1.1222755
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     >=155 cm_24 months       Control              Control           1.0000000   1.0000000    1.0000000
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     >=155 cm_24 months       LNS                  Control           0.9016393   0.1309177    6.2096546
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     >=155 cm_24 months       Other                Control           0.6156716   0.1053967    3.5964283
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     <151 cm_24 months        Control              Control           1.0000000   1.0000000    1.0000000
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     <151 cm_24 months        LNS                  Control           0.8703704   0.5365798    1.4118023
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     <151 cm_24 months        Other                Control           0.8407293   0.5518102    1.2809218
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     [151-155) cm_24 months   Control              Control           1.0000000   1.0000000    1.0000000
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     [151-155) cm_24 months   LNS                  Control           1.2333333   0.4080595    3.7276695
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     [151-155) cm_24 months   Other                Control           1.3631579   0.5094712    3.6473100
24 months   ki1000111-WASH-Kenya        KENYA                          >=155 cm_24 months       Control              Control           1.0000000   1.0000000    1.0000000
24 months   ki1000111-WASH-Kenya        KENYA                          >=155 cm_24 months       LNS                  Control           0.6266619   0.3618648    1.0852260
24 months   ki1000111-WASH-Kenya        KENYA                          >=155 cm_24 months       Other                Control           0.9742680   0.6600448    1.4380813
24 months   ki1000111-WASH-Kenya        KENYA                          <151 cm_24 months        Control              Control           1.0000000   1.0000000    1.0000000
24 months   ki1000111-WASH-Kenya        KENYA                          <151 cm_24 months        LNS                  Control           0.4696970   0.1425186    1.5479752
24 months   ki1000111-WASH-Kenya        KENYA                          <151 cm_24 months        Other                Control           0.5299145   0.2273579    1.2350987
24 months   ki1000111-WASH-Kenya        KENYA                          [151-155) cm_24 months   Control              Control           1.0000000   1.0000000    1.0000000
24 months   ki1000111-WASH-Kenya        KENYA                          [151-155) cm_24 months   LNS                  Control           0.5620609   0.2289234    1.3799919
24 months   ki1000111-WASH-Kenya        KENYA                          [151-155) cm_24 months   Other                Control           0.7017544   0.3538306    1.3917938
24 months   ki1119695-PROBIT            BELARUS                        >=155 cm_24 months       Control              Control           1.0000000   1.0000000    1.0000000
24 months   ki1119695-PROBIT            BELARUS                        >=155 cm_24 months       Maternal             Control           1.0349854   0.1767474    6.0605961
24 months   ki1135781-COHORTS           GUATEMALA                      >=155 cm_24 months       Control              Control           1.0000000   1.0000000    1.0000000
24 months   ki1135781-COHORTS           GUATEMALA                      >=155 cm_24 months       Other                Control           0.7500000   0.2426345    2.3183015
24 months   ki1135781-COHORTS           GUATEMALA                      <151 cm_24 months        Control              Control           1.0000000   1.0000000    1.0000000
24 months   ki1135781-COHORTS           GUATEMALA                      <151 cm_24 months        Other                Control           0.9128205   0.6740364    1.2361962
24 months   ki1135781-COHORTS           GUATEMALA                      [151-155) cm_24 months   Control              Control           1.0000000   1.0000000    1.0000000
24 months   ki1135781-COHORTS           GUATEMALA                      [151-155) cm_24 months   Other                Control           0.5714286   0.2817545    1.1589187
24 months   ki1148112-iLiNS-DOSE        MALAWI                         >=155 cm_24 months       Control              Control           1.0000000   1.0000000    1.0000000
24 months   ki1148112-iLiNS-DOSE        MALAWI                         >=155 cm_24 months       LNS                  Control           1.3762044   0.6461404    2.9311562
24 months   ki1148112-iLiNS-DOSE        MALAWI                         <151 cm_24 months        Control              Control           1.0000000   1.0000000    1.0000000
24 months   ki1148112-iLiNS-DOSE        MALAWI                         <151 cm_24 months        LNS                  Control           0.4593176   0.2718164    0.7761588
24 months   ki1148112-iLiNS-DOSE        MALAWI                         [151-155) cm_24 months   Control              Control           1.0000000   1.0000000    1.0000000
24 months   ki1148112-iLiNS-DOSE        MALAWI                         [151-155) cm_24 months   LNS                  Control           1.2191011   0.5658840    2.6263466
24 months   ki1148112-LCNI-5            MALAWI                         >=155 cm_24 months       Control              Control           1.0000000   1.0000000    1.0000000
24 months   ki1148112-LCNI-5            MALAWI                         >=155 cm_24 months       LNS                  Control           0.5739796   0.2003263    1.6445801
24 months   ki1148112-LCNI-5            MALAWI                         >=155 cm_24 months       Other                Control           0.3826531   0.0823595    1.7778555
24 months   ki1148112-LCNI-5            MALAWI                         <151 cm_24 months        Control              Control           1.0000000   1.0000000    1.0000000
24 months   ki1148112-LCNI-5            MALAWI                         <151 cm_24 months        LNS                  Control           0.5151515   0.1940979    1.3672539
24 months   ki1148112-LCNI-5            MALAWI                         <151 cm_24 months        Other                Control           0.5666667   0.1691852    1.8979863
24 months   ki1148112-LCNI-5            MALAWI                         [151-155) cm_24 months   Control              Control           1.0000000   1.0000000    1.0000000
24 months   ki1148112-LCNI-5            MALAWI                         [151-155) cm_24 months   LNS                  Control           1.3970588   0.2962356    6.5885857
24 months   ki1148112-LCNI-5            MALAWI                         [151-155) cm_24 months   Other                Control           0.8260870   0.1265857    5.3909712
24 months   kiGH5241-JiVitA-3           BANGLADESH                     <151 cm_24 months        Control              Control           1.0000000   1.0000000    1.0000000
24 months   kiGH5241-JiVitA-3           BANGLADESH                     <151 cm_24 months        Maternal             Control           0.7058824   0.3683558    1.3526865


### Parameter: PAR


agecat      studyid                     country                        intXmhtcm                intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------------------  -----------------------------  -----------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000304b-SAS-CompFeed     INDIA                          [151-155) cm_Birth       Control              NA                 0.0461538   -0.2432416    0.3355493
Birth       ki1119695-PROBIT            BELARUS                        >=155 cm_Birth           Control              NA                -0.0003974   -0.0007267   -0.0000682
Birth       ki1126311-ZVITAMBO          ZIMBABWE                       >=155 cm_Birth           Control              NA                 0.0015068   -0.0045349    0.0075486
Birth       ki1126311-ZVITAMBO          ZIMBABWE                       <151 cm_Birth            Control              NA                 0.0120773   -0.0187119    0.0428664
Birth       ki1126311-ZVITAMBO          ZIMBABWE                       [151-155) cm_Birth       Control              NA                -0.0110374   -0.0304086    0.0083339
Birth       ki1135781-COHORTS           GUATEMALA                      <151 cm_Birth            Control              NA                 0.0053534   -0.0042224    0.0149292
Birth       kiGH5241-JiVitA-3           BANGLADESH                     >=155 cm_Birth           Control              NA                -0.0020343   -0.0131196    0.0090511
Birth       kiGH5241-JiVitA-3           BANGLADESH                     <151 cm_Birth            Control              NA                -0.0082651   -0.0150555   -0.0014748
Birth       kiGH5241-JiVitA-3           BANGLADESH                     [151-155) cm_Birth       Control              NA                -0.0114361   -0.0203967   -0.0024754
6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     <151 cm_6 months         Control              NA                -0.0213675   -0.0755952    0.0328601
6 months    ki1000304b-SAS-CompFeed     INDIA                          <151 cm_6 months         Control              NA                -0.0228758   -0.0993648    0.0536132
6 months    ki1000304b-SAS-CompFeed     INDIA                          [151-155) cm_6 months    Control              NA                 0.0461675   -0.0191476    0.1114826
6 months    ki1000304b-SAS-FoodSuppl    INDIA                          <151 cm_6 months         Control              NA                -0.0265731   -0.1261211    0.0729749
6 months    ki1000304b-SAS-FoodSuppl    INDIA                          [151-155) cm_6 months    Control              NA                 0.0050000   -0.1058138    0.1158138
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   >=155 cm_6 months        Control              NA                -0.0140511   -0.0292501    0.0011479
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   [151-155) cm_6 months    Control              NA                -0.0130470   -0.0416247    0.0155307
6 months    ki1112895-Guatemala BSC     GUATEMALA                      <151 cm_6 months         Control              NA                -0.0567448   -0.1206284    0.0071388
6 months    ki1119695-PROBIT            BELARUS                        >=155 cm_6 months        Control              NA                -0.0029241   -0.0074937    0.0016454
6 months    ki1119695-PROBIT            BELARUS                        <151 cm_6 months         Control              NA                 0.0062963   -0.0461497    0.0587423
6 months    ki1119695-PROBIT            BELARUS                        [151-155) cm_6 months    Control              NA                -0.0011737   -0.0204520    0.0181045
6 months    ki1126311-ZVITAMBO          ZIMBABWE                       >=155 cm_6 months        Control              NA                 0.0039397   -0.0042889    0.0121683
6 months    ki1126311-ZVITAMBO          ZIMBABWE                       <151 cm_6 months         Control              NA                 0.0074119   -0.0453031    0.0601270
6 months    ki1126311-ZVITAMBO          ZIMBABWE                       [151-155) cm_6 months    Control              NA                 0.0113252   -0.0113112    0.0339616
6 months    ki1135781-COHORTS           GUATEMALA                      >=155 cm_6 months        Control              NA                -0.0397942   -0.0850129    0.0054245
6 months    ki1135781-COHORTS           GUATEMALA                      <151 cm_6 months         Control              NA                -0.0217264   -0.0512188    0.0077660
6 months    ki1135781-COHORTS           GUATEMALA                      [151-155) cm_6 months    Control              NA                -0.0217496   -0.0662348    0.0227356
6 months    ki1148112-iLiNS-DOSE        MALAWI                         >=155 cm_6 months        Control              NA                 0.0054158   -0.0216993    0.0325309
6 months    ki1148112-iLiNS-DOSE        MALAWI                         <151 cm_6 months         Control              NA                -0.0112706   -0.0783837    0.0558424
6 months    ki1148112-iLiNS-DOSE        MALAWI                         [151-155) cm_6 months    Control              NA                -0.0160282   -0.0729160    0.0408595
6 months    ki1148112-LCNI-5            MALAWI                         >=155 cm_6 months        Control              NA                 0.0208315   -0.0067049    0.0483679
6 months    ki1148112-LCNI-5            MALAWI                         <151 cm_6 months         Control              NA                -0.0007897   -0.1313300    0.1297506
6 months    ki1148112-LCNI-5            MALAWI                         [151-155) cm_6 months    Control              NA                 0.0048611   -0.0686292    0.0783514
6 months    kiGH5241-JiVitA-3           BANGLADESH                     >=155 cm_6 months        Control              NA                -0.0000823   -0.0071607    0.0069961
6 months    kiGH5241-JiVitA-3           BANGLADESH                     <151 cm_6 months         Control              NA                -0.0073919   -0.0134351   -0.0013486
6 months    kiGH5241-JiVitA-3           BANGLADESH                     [151-155) cm_6 months    Control              NA                -0.0042239   -0.0107226    0.0022748
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     >=155 cm_24 months       Control              NA                -0.0083636   -0.0507423    0.0340150
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     <151 cm_24 months        Control              NA                -0.0221603   -0.0786060    0.0342854
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     [151-155) cm_24 months   Control              NA                 0.0163034   -0.0353675    0.0679743
24 months   ki1000111-WASH-Kenya        KENYA                          >=155 cm_24 months       Control              NA                -0.0063870   -0.0223857    0.0096117
24 months   ki1000111-WASH-Kenya        KENYA                          <151 cm_24 months        Control              NA                -0.0998464   -0.2273290    0.0276362
24 months   ki1000111-WASH-Kenya        KENYA                          [151-155) cm_24 months   Control              NA                -0.0416667   -0.1075496    0.0242163
24 months   ki1119695-PROBIT            BELARUS                        >=155 cm_24 months       Control              NA                 0.0003822   -0.0192764    0.0200408
24 months   ki1135781-COHORTS           GUATEMALA                      >=155 cm_24 months       Control              NA                -0.0430108   -0.2111760    0.1251545
24 months   ki1135781-COHORTS           GUATEMALA                      <151 cm_24 months        Control              NA                -0.0222846   -0.0963100    0.0517407
24 months   ki1135781-COHORTS           GUATEMALA                      [151-155) cm_24 months   Control              NA                -0.1111111   -0.2475630    0.0253408
24 months   ki1148112-iLiNS-DOSE        MALAWI                         >=155 cm_24 months       Control              NA                 0.0297135   -0.0333894    0.0928163
24 months   ki1148112-iLiNS-DOSE        MALAWI                         <151 cm_24 months        Control              NA                -0.2168421   -0.3924564   -0.0412278
24 months   ki1148112-iLiNS-DOSE        MALAWI                         [151-155) cm_24 months   Control              NA                 0.0361167   -0.0940258    0.1662591
24 months   ki1148112-LCNI-5            MALAWI                         >=155 cm_24 months       Control              NA                -0.0316049   -0.0824482    0.0192384
24 months   ki1148112-LCNI-5            MALAWI                         <151 cm_24 months        Control              NA                -0.1221719   -0.3109872    0.0666433
24 months   ki1148112-LCNI-5            MALAWI                         [151-155) cm_24 months   Control              NA                 0.0131579   -0.1092969    0.1356127
24 months   kiGH5241-JiVitA-3           BANGLADESH                     <151 cm_24 months        Control              NA                -0.0824176   -0.2363926    0.0715575


### Parameter: PAF


agecat      studyid                     country                        intXmhtcm                intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------------------  -----------------------------  -----------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000304b-SAS-CompFeed     INDIA                          [151-155) cm_Birth       Control              NA                 0.2307692   -2.8928401    0.8479989
Birth       ki1119695-PROBIT            BELARUS                        >=155 cm_Birth           Control              NA                -1.0496662   -1.9571064   -0.4206901
Birth       ki1126311-ZVITAMBO          ZIMBABWE                       >=155 cm_Birth           Control              NA                 0.0580437   -0.2057919    0.2641502
Birth       ki1126311-ZVITAMBO          ZIMBABWE                       <151 cm_Birth            Control              NA                 0.2173913   -0.5796524    0.6122714
Birth       ki1126311-ZVITAMBO          ZIMBABWE                       [151-155) cm_Birth       Control              NA                -0.2982213   -0.9346816    0.1288600
Birth       ki1135781-COHORTS           GUATEMALA                      <151 cm_Birth            Control              NA                 0.4168004   -0.8729091    0.8183992
Birth       kiGH5241-JiVitA-3           BANGLADESH                     >=155 cm_Birth           Control              NA                -0.0424415   -0.3002625    0.1642577
Birth       kiGH5241-JiVitA-3           BANGLADESH                     <151 cm_Birth            Control              NA                -0.0652699   -0.1205785   -0.0126912
Birth       kiGH5241-JiVitA-3           BANGLADESH                     [151-155) cm_Birth       Control              NA                -0.1373730   -0.2491329   -0.0356122
6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     <151 cm_6 months         Control              NA                -0.3125000   -1.3880911    0.2786472
6 months    ki1000304b-SAS-CompFeed     INDIA                          <151 cm_6 months         Control              NA                -0.1211073   -0.6114920    0.2200510
6 months    ki1000304b-SAS-CompFeed     INDIA                          [151-155) cm_6 months    Control              NA                 0.4758801   -0.8224950    0.8492716
6 months    ki1000304b-SAS-FoodSuppl    INDIA                          <151 cm_6 months         Control              NA                -0.1342642   -0.7662487    0.2715888
6 months    ki1000304b-SAS-FoodSuppl    INDIA                          [151-155) cm_6 months    Control              NA                 0.0400000   -1.4167722    0.6186649
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   >=155 cm_6 months        Control              NA                -1.1273310   -2.5107407   -0.2890548
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   [151-155) cm_6 months    Control              NA                -0.6914894   -2.9457236    0.2748767
6 months    ki1112895-Guatemala BSC     GUATEMALA                      <151 cm_6 months         Control              NA                -0.4417989   -0.9965624   -0.0411817
6 months    ki1119695-PROBIT            BELARUS                        >=155 cm_6 months        Control              NA                -0.2096840   -0.5552030    0.0590711
6 months    ki1119695-PROBIT            BELARUS                        <151 cm_6 months         Control              NA                 0.1360000   -2.4440157    0.7832484
6 months    ki1119695-PROBIT            BELARUS                        [151-155) cm_6 months    Control              NA                -0.0512048   -1.3030171    0.5201809
6 months    ki1126311-ZVITAMBO          ZIMBABWE                       >=155 cm_6 months        Control              NA                 0.1116609   -0.1543891    0.3163949
6 months    ki1126311-ZVITAMBO          ZIMBABWE                       <151 cm_6 months         Control              NA                 0.0677180   -0.5623335    0.4436849
6 months    ki1126311-ZVITAMBO          ZIMBABWE                       [151-155) cm_6 months    Control              NA                 0.2517889   -0.4562112    0.6155641
6 months    ki1135781-COHORTS           GUATEMALA                      >=155 cm_6 months        Control              NA                -0.7295597   -1.5235885   -0.1853663
6 months    ki1135781-COHORTS           GUATEMALA                      <151 cm_6 months         Control              NA                -0.1354575   -0.3339623    0.0335081
6 months    ki1135781-COHORTS           GUATEMALA                      [151-155) cm_6 months    Control              NA                -0.2623547   -0.9141815    0.1675088
6 months    ki1148112-iLiNS-DOSE        MALAWI                         >=155 cm_6 months        Control              NA                 0.1275720   -0.8121785    0.5799914
6 months    ki1148112-iLiNS-DOSE        MALAWI                         <151 cm_6 months         Control              NA                -0.1094077   -0.9948027    0.3830040
6 months    ki1148112-iLiNS-DOSE        MALAWI                         [151-155) cm_6 months    Control              NA                -0.1833474   -1.0478977    0.3162202
6 months    ki1148112-LCNI-5            MALAWI                         >=155 cm_6 months        Control              NA                 0.4110218   -0.4299791    0.7574123
6 months    ki1148112-LCNI-5            MALAWI                         <151 cm_6 months         Control              NA                -0.0038314   -0.8865848    0.4658721
6 months    ki1148112-LCNI-5            MALAWI                         [151-155) cm_6 months    Control              NA                 0.0518519   -1.1667731    0.5851043
6 months    kiGH5241-JiVitA-3           BANGLADESH                     >=155 cm_6 months        Control              NA                -0.0043610   -0.4595218    0.3088551
6 months    kiGH5241-JiVitA-3           BANGLADESH                     <151 cm_6 months         Control              NA                -0.0904737   -0.1670891   -0.0188878
6 months    kiGH5241-JiVitA-3           BANGLADESH                     [151-155) cm_6 months    Control              NA                -0.1094382   -0.2899259    0.0457955
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     >=155 cm_24 months       Control              NA                -0.2987013   -3.1184561    0.5904715
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     <151 cm_24 months        Control              NA                -0.1308711   -0.5179956    0.1575275
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     [151-155) cm_24 months   Control              NA                 0.1943867   -0.7231572    0.6233583
24 months   ki1000111-WASH-Kenya        KENYA                          >=155 cm_24 months       Control              NA                -0.1022486   -0.3898701    0.1258521
24 months   ki1000111-WASH-Kenya        KENYA                          <151 cm_24 months        Control              NA                -0.5241935   -1.3503241    0.0115551
24 months   ki1000111-WASH-Kenya        KENYA                          [151-155) cm_24 months   Control              NA                -0.3125000   -0.9040230    0.0952545
24 months   ki1119695-PROBIT            BELARUS                        >=155 cm_24 months       Control              NA                 0.0190141   -1.6537321    0.6373660
24 months   ki1135781-COHORTS           GUATEMALA                      >=155 cm_24 months       Control              NA                -0.1481481   -0.9009107    0.3065197
24 months   ki1135781-COHORTS           GUATEMALA                      <151 cm_24 months        Control              NA                -0.0461062   -0.2112177    0.0964976
24 months   ki1135781-COHORTS           GUATEMALA                      [151-155) cm_24 months   Control              NA                -0.2857143   -0.7001204    0.0276799
24 months   ki1148112-iLiNS-DOSE        MALAWI                         >=155 cm_24 months       Control              NA                 0.2365648   -0.4688025    0.6031915
24 months   ki1148112-iLiNS-DOSE        MALAWI                         <151 cm_24 months        Control              NA                -0.8240000   -1.6455085   -0.2575941
24 months   ki1148112-iLiNS-DOSE        MALAWI                         [151-155) cm_24 months   Control              NA                 0.1572581   -0.6495618    0.5694530
24 months   ki1148112-LCNI-5            MALAWI                         >=155 cm_24 months       Control              NA                -0.5120000   -1.5534519    0.1046849
24 months   ki1148112-LCNI-5            MALAWI                         <151 cm_24 months        Control              NA                -0.5294118   -1.6065078    0.1025922
24 months   ki1148112-LCNI-5            MALAWI                         [151-155) cm_24 months   Control              NA                 0.1111111   -1.8393818    0.7217269
24 months   kiGH5241-JiVitA-3           BANGLADESH                     <151 cm_24 months        Control              NA                -0.1973684   -0.6355680    0.1234292
