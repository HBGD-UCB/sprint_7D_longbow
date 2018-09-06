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
* intXmhtcm

## Data Summary

agecat        studyid                     country                        intXmhtcm                   ever_stunted   n_cell       n
------------  --------------------------  -----------------------------  -------------------------  -------------  -------  ------
0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     >=155 cm_0-6 months                    0       49      51
0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     >=155 cm_0-6 months                    1        2      51
0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     <151 cm_0-6 months                     0       96     115
0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     <151 cm_0-6 months                     1       19     115
0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     [151-155) cm_0-6 months                0       64      66
0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     [151-155) cm_0-6 months                1        2      66
0-6 months    ki1000111-WASH-Kenya        KENYA                          >=155 cm_0-6 months                    0       63      69
0-6 months    ki1000111-WASH-Kenya        KENYA                          >=155 cm_0-6 months                    1        6      69
0-6 months    ki1000111-WASH-Kenya        KENYA                          <151 cm_0-6 months                     0        9      10
0-6 months    ki1000111-WASH-Kenya        KENYA                          <151 cm_0-6 months                     1        1      10
0-6 months    ki1000111-WASH-Kenya        KENYA                          [151-155) cm_0-6 months                0       11      11
0-6 months    ki1000111-WASH-Kenya        KENYA                          [151-155) cm_0-6 months                1        0      11
0-6 months    ki1000125-AgaKhanUniv       PAKISTAN                       >=155 cm_0-6 months                    0       45      51
0-6 months    ki1000125-AgaKhanUniv       PAKISTAN                       >=155 cm_0-6 months                    1        6      51
0-6 months    ki1000125-AgaKhanUniv       PAKISTAN                       <151 cm_0-6 months                     0       14      22
0-6 months    ki1000125-AgaKhanUniv       PAKISTAN                       <151 cm_0-6 months                     1        8      22
0-6 months    ki1000125-AgaKhanUniv       PAKISTAN                       [151-155) cm_0-6 months                0       17      24
0-6 months    ki1000125-AgaKhanUniv       PAKISTAN                       [151-155) cm_0-6 months                1        7      24
0-6 months    ki1000304b-SAS-CompFeed     INDIA                          >=155 cm_0-6 months                    0      261     324
0-6 months    ki1000304b-SAS-CompFeed     INDIA                          >=155 cm_0-6 months                    1       63     324
0-6 months    ki1000304b-SAS-CompFeed     INDIA                          <151 cm_0-6 months                     0      125     222
0-6 months    ki1000304b-SAS-CompFeed     INDIA                          <151 cm_0-6 months                     1       97     222
0-6 months    ki1000304b-SAS-CompFeed     INDIA                          [151-155) cm_0-6 months                0      125     167
0-6 months    ki1000304b-SAS-CompFeed     INDIA                          [151-155) cm_0-6 months                1       42     167
0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          >=155 cm_0-6 months                    0       59      78
0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          >=155 cm_0-6 months                    1       19      78
0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          <151 cm_0-6 months                     0      115     220
0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          <151 cm_0-6 months                     1      105     220
0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          [151-155) cm_0-6 months                0       77     109
0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          [151-155) cm_0-6 months                1       32     109
0-6 months    ki1017093b-PROVIDE          BANGLADESH                     >=155 cm_0-6 months                    0      130     138
0-6 months    ki1017093b-PROVIDE          BANGLADESH                     >=155 cm_0-6 months                    1        8     138
0-6 months    ki1017093b-PROVIDE          BANGLADESH                     <151 cm_0-6 months                     0      283     348
0-6 months    ki1017093b-PROVIDE          BANGLADESH                     <151 cm_0-6 months                     1       65     348
0-6 months    ki1017093b-PROVIDE          BANGLADESH                     [151-155) cm_0-6 months                0      138     153
0-6 months    ki1017093b-PROVIDE          BANGLADESH                     [151-155) cm_0-6 months                1       15     153
0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   >=155 cm_0-6 months                    0     1318    1387
0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   >=155 cm_0-6 months                    1       69    1387
0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   <151 cm_0-6 months                     0      295     337
0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   <151 cm_0-6 months                     1       42     337
0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   [151-155) cm_0-6 months                0      433     476
0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   [151-155) cm_0-6 months                1       43     476
0-6 months    ki1112895-Burkina Faso Zn   BURKINA FASO                   >=155 cm_0-6 months                    0       29      34
0-6 months    ki1112895-Burkina Faso Zn   BURKINA FASO                   >=155 cm_0-6 months                    1        5      34
0-6 months    ki1112895-Burkina Faso Zn   BURKINA FASO                   <151 cm_0-6 months                     0        2       2
0-6 months    ki1112895-Burkina Faso Zn   BURKINA FASO                   <151 cm_0-6 months                     1        0       2
0-6 months    ki1112895-Burkina Faso Zn   BURKINA FASO                   [151-155) cm_0-6 months                0        2       2
0-6 months    ki1112895-Burkina Faso Zn   BURKINA FASO                   [151-155) cm_0-6 months                1        0       2
0-6 months    ki1112895-Guatemala BSC     GUATEMALA                      >=155 cm_0-6 months                    0       27      33
0-6 months    ki1112895-Guatemala BSC     GUATEMALA                      >=155 cm_0-6 months                    1        6      33
0-6 months    ki1112895-Guatemala BSC     GUATEMALA                      <151 cm_0-6 months                     0       87     119
0-6 months    ki1112895-Guatemala BSC     GUATEMALA                      <151 cm_0-6 months                     1       32     119
0-6 months    ki1112895-Guatemala BSC     GUATEMALA                      [151-155) cm_0-6 months                0       40      48
0-6 months    ki1112895-Guatemala BSC     GUATEMALA                      [151-155) cm_0-6 months                1        8      48
0-6 months    ki1119695-PROBIT            BELARUS                        >=155 cm_0-6 months                    0    12011   12775
0-6 months    ki1119695-PROBIT            BELARUS                        >=155 cm_0-6 months                    1      764   12775
0-6 months    ki1119695-PROBIT            BELARUS                        <151 cm_0-6 months                     0       99     121
0-6 months    ki1119695-PROBIT            BELARUS                        <151 cm_0-6 months                     1       22     121
0-6 months    ki1119695-PROBIT            BELARUS                        [151-155) cm_0-6 months                0      346     383
0-6 months    ki1119695-PROBIT            BELARUS                        [151-155) cm_0-6 months                1       37     383
0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       >=155 cm_0-6 months                    0     5087    6053
0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       >=155 cm_0-6 months                    1      966    6053
0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       <151 cm_0-6 months                     0      312     453
0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       <151 cm_0-6 months                     1      141     453
0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       [151-155) cm_0-6 months                0      854    1108
0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       [151-155) cm_0-6 months                1      254    1108
0-6 months    ki1135781-COHORTS           GUATEMALA                      >=155 cm_0-6 months                    0       35      44
0-6 months    ki1135781-COHORTS           GUATEMALA                      >=155 cm_0-6 months                    1        9      44
0-6 months    ki1135781-COHORTS           GUATEMALA                      <151 cm_0-6 months                     0      128     199
0-6 months    ki1135781-COHORTS           GUATEMALA                      <151 cm_0-6 months                     1       71     199
0-6 months    ki1135781-COHORTS           GUATEMALA                      [151-155) cm_0-6 months                0       41      53
0-6 months    ki1135781-COHORTS           GUATEMALA                      [151-155) cm_0-6 months                1       12      53
0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         >=155 cm_0-6 months                    0      511     663
0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         >=155 cm_0-6 months                    1      152     663
0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         <151 cm_0-6 months                     0      150     244
0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         <151 cm_0-6 months                     1       94     244
0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         [151-155) cm_0-6 months                0      187     288
0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         [151-155) cm_0-6 months                1      101     288
0-6 months    ki1148112-LCNI-5            MALAWI                         >=155 cm_0-6 months                    0      121     161
0-6 months    ki1148112-LCNI-5            MALAWI                         >=155 cm_0-6 months                    1       40     161
0-6 months    ki1148112-LCNI-5            MALAWI                         <151 cm_0-6 months                     0       17      38
0-6 months    ki1148112-LCNI-5            MALAWI                         <151 cm_0-6 months                     1       21      38
0-6 months    ki1148112-LCNI-5            MALAWI                         [151-155) cm_0-6 months                0       36      72
0-6 months    ki1148112-LCNI-5            MALAWI                         [151-155) cm_0-6 months                1       36      72
0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     >=155 cm_0-6 months                    0     5316    6018
0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     >=155 cm_0-6 months                    1      702    6018
0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     <151 cm_0-6 months                     0    15416   22766
0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     <151 cm_0-6 months                     1     7350   22766
0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     [151-155) cm_0-6 months                0     7958    9776
0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     [151-155) cm_0-6 months                1     1818    9776
6-24 months   iLiNS_DYADM_LNS             MALAWI                         [151-155) cm_6-24 months               0        1       1
6-24 months   iLiNS_DYADM_LNS             MALAWI                         [151-155) cm_6-24 months               1        0       1
6-24 months   iLiNS-Zinc_ZvLNS            BURKINA FASO                   >=155 cm_6-24 months                   0     1535    2152
6-24 months   iLiNS-Zinc_ZvLNS            BURKINA FASO                   >=155 cm_6-24 months                   1      617    2152
6-24 months   iLiNS-Zinc_ZvLNS            BURKINA FASO                   <151 cm_6-24 months                    0       21      63
6-24 months   iLiNS-Zinc_ZvLNS            BURKINA FASO                   <151 cm_6-24 months                    1       42      63
6-24 months   iLiNS-Zinc_ZvLNS            BURKINA FASO                   [151-155) cm_6-24 months               0       78     183
6-24 months   iLiNS-Zinc_ZvLNS            BURKINA FASO                   [151-155) cm_6-24 months               1      105     183
6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     >=155 cm_6-24 months                   0      741     949
6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     >=155 cm_6-24 months                   1      208     949
6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     <151 cm_6-24 months                    0     1303    2495
6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     <151 cm_6-24 months                    1     1192    2495
6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     [151-155) cm_6-24 months               0      892    1308
6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     [151-155) cm_6-24 months               1      416    1308
6-24 months   ki1000111-WASH-Kenya        KENYA                          >=155 cm_6-24 months                   0     4066    5207
6-24 months   ki1000111-WASH-Kenya        KENYA                          >=155 cm_6-24 months                   1     1141    5207
6-24 months   ki1000111-WASH-Kenya        KENYA                          <151 cm_6-24 months                    0      185     343
6-24 months   ki1000111-WASH-Kenya        KENYA                          <151 cm_6-24 months                    1      158     343
6-24 months   ki1000111-WASH-Kenya        KENYA                          [151-155) cm_6-24 months               0      534     854
6-24 months   ki1000111-WASH-Kenya        KENYA                          [151-155) cm_6-24 months               1      320     854
6-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       >=155 cm_6-24 months                   0       32      34
6-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       >=155 cm_6-24 months                   1        2      34
6-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       <151 cm_6-24 months                    0       15      19
6-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       <151 cm_6-24 months                    1        4      19
6-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       [151-155) cm_6-24 months               0       12      15
6-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       [151-155) cm_6-24 months               1        3      15
6-24 months   ki1000304b-SAS-CompFeed     INDIA                          >=155 cm_6-24 months                   0      190     285
6-24 months   ki1000304b-SAS-CompFeed     INDIA                          >=155 cm_6-24 months                   1       95     285
6-24 months   ki1000304b-SAS-CompFeed     INDIA                          <151 cm_6-24 months                    0       64     140
6-24 months   ki1000304b-SAS-CompFeed     INDIA                          <151 cm_6-24 months                    1       76     140
6-24 months   ki1000304b-SAS-CompFeed     INDIA                          [151-155) cm_6-24 months               0       70     129
6-24 months   ki1000304b-SAS-CompFeed     INDIA                          [151-155) cm_6-24 months               1       59     129
6-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          >=155 cm_6-24 months                   0       32      57
6-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          >=155 cm_6-24 months                   1       25      57
6-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          <151 cm_6-24 months                    0       37     110
6-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          <151 cm_6-24 months                    1       73     110
6-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          [151-155) cm_6-24 months               0       24      76
6-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          [151-155) cm_6-24 months               1       52      76
6-24 months   ki1017093b-PROVIDE          BANGLADESH                     >=155 cm_6-24 months                   0       93      96
6-24 months   ki1017093b-PROVIDE          BANGLADESH                     >=155 cm_6-24 months                   1        3      96
6-24 months   ki1017093b-PROVIDE          BANGLADESH                     <151 cm_6-24 months                    0      132     158
6-24 months   ki1017093b-PROVIDE          BANGLADESH                     <151 cm_6-24 months                    1       26     158
6-24 months   ki1017093b-PROVIDE          BANGLADESH                     [151-155) cm_6-24 months               0       80      88
6-24 months   ki1017093b-PROVIDE          BANGLADESH                     [151-155) cm_6-24 months               1        8      88
6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   >=155 cm_6-24 months                   0      982    1141
6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   >=155 cm_6-24 months                   1      159    1141
6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   <151 cm_6-24 months                    0      171     251
6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   <151 cm_6-24 months                    1       80     251
6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   [151-155) cm_6-24 months               0      298     387
6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   [151-155) cm_6-24 months               1       89     387
6-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   >=155 cm_6-24 months                   0     3206    4657
6-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   >=155 cm_6-24 months                   1     1451    4657
6-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   <151 cm_6-24 months                    0      116     308
6-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   <151 cm_6-24 months                    1      192     308
6-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   [151-155) cm_6-24 months               0      379     747
6-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   [151-155) cm_6-24 months               1      368     747
6-24 months   ki1112895-Guatemala BSC     GUATEMALA                      >=155 cm_6-24 months                   0       23      28
6-24 months   ki1112895-Guatemala BSC     GUATEMALA                      >=155 cm_6-24 months                   1        5      28
6-24 months   ki1112895-Guatemala BSC     GUATEMALA                      <151 cm_6-24 months                    0       55      85
6-24 months   ki1112895-Guatemala BSC     GUATEMALA                      <151 cm_6-24 months                    1       30      85
6-24 months   ki1112895-Guatemala BSC     GUATEMALA                      [151-155) cm_6-24 months               0       27      38
6-24 months   ki1112895-Guatemala BSC     GUATEMALA                      [151-155) cm_6-24 months               1       11      38
6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   >=155 cm_6-24 months                   0     1993    2863
6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   >=155 cm_6-24 months                   1      870    2863
6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   <151 cm_6-24 months                    0       32      89
6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   <151 cm_6-24 months                    1       57      89
6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   [151-155) cm_6-24 months               0       99     225
6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   [151-155) cm_6-24 months               1      126     225
6-24 months   ki1119695-PROBIT            BELARUS                        >=155 cm_6-24 months                   0    10548   11190
6-24 months   ki1119695-PROBIT            BELARUS                        >=155 cm_6-24 months                   1      642   11190
6-24 months   ki1119695-PROBIT            BELARUS                        <151 cm_6-24 months                    0       73      85
6-24 months   ki1119695-PROBIT            BELARUS                        <151 cm_6-24 months                    1       12      85
6-24 months   ki1119695-PROBIT            BELARUS                        [151-155) cm_6-24 months               0      277     302
6-24 months   ki1119695-PROBIT            BELARUS                        [151-155) cm_6-24 months               1       25     302
6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       >=155 cm_6-24 months                   0     4279    5324
6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       >=155 cm_6-24 months                   1     1045    5324
6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       <151 cm_6-24 months                    0      209     326
6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       <151 cm_6-24 months                    1      117     326
6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       [151-155) cm_6-24 months               0      670     907
6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       [151-155) cm_6-24 months               1      237     907
6-24 months   ki1135781-COHORTS           GUATEMALA                      >=155 cm_6-24 months                   0       45      78
6-24 months   ki1135781-COHORTS           GUATEMALA                      >=155 cm_6-24 months                   1       33      78
6-24 months   ki1135781-COHORTS           GUATEMALA                      <151 cm_6-24 months                    0       80     237
6-24 months   ki1135781-COHORTS           GUATEMALA                      <151 cm_6-24 months                    1      157     237
6-24 months   ki1135781-COHORTS           GUATEMALA                      [151-155) cm_6-24 months               0       42     109
6-24 months   ki1135781-COHORTS           GUATEMALA                      [151-155) cm_6-24 months               1       67     109
6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         >=155 cm_6-24 months                   0      561     839
6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         >=155 cm_6-24 months                   1      278     839
6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         <151 cm_6-24 months                    0      128     285
6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         <151 cm_6-24 months                    1      157     285
6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         [151-155) cm_6-24 months               0      178     347
6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         [151-155) cm_6-24 months               1      169     347
6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         [151-155) cm_6-24 months               0        1       2
6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         [151-155) cm_6-24 months               1        1       2
6-24 months   ki1148112-LCNI-5            MALAWI                         >=155 cm_6-24 months                   0      254     466
6-24 months   ki1148112-LCNI-5            MALAWI                         >=155 cm_6-24 months                   1      212     466
6-24 months   ki1148112-LCNI-5            MALAWI                         <151 cm_6-24 months                    0       28     109
6-24 months   ki1148112-LCNI-5            MALAWI                         <151 cm_6-24 months                    1       81     109
6-24 months   ki1148112-LCNI-5            MALAWI                         [151-155) cm_6-24 months               0       64     152
6-24 months   ki1148112-LCNI-5            MALAWI                         [151-155) cm_6-24 months               1       88     152
6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     >=155 cm_6-24 months                   0     3575    3916
6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     >=155 cm_6-24 months                   1      341    3916
6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     <151 cm_6-24 months                    0     6636    8645
6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     <151 cm_6-24 months                    1     2009    8645
6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     [151-155) cm_6-24 months               0     4455    5178
6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     [151-155) cm_6-24 months               1      723    5178


The following strata were considered:

* agecat: 0-6 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH, intXmhtcm: [151-155) cm_0-6 months
* agecat: 0-6 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH, intXmhtcm: <151 cm_0-6 months
* agecat: 0-6 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH, intXmhtcm: >=155 cm_0-6 months
* agecat: 0-6 months, studyid: ki1000111-WASH-Kenya, country: KENYA, intXmhtcm: [151-155) cm_0-6 months
* agecat: 0-6 months, studyid: ki1000111-WASH-Kenya, country: KENYA, intXmhtcm: <151 cm_0-6 months
* agecat: 0-6 months, studyid: ki1000111-WASH-Kenya, country: KENYA, intXmhtcm: >=155 cm_0-6 months
* agecat: 0-6 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN, intXmhtcm: [151-155) cm_0-6 months
* agecat: 0-6 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN, intXmhtcm: <151 cm_0-6 months
* agecat: 0-6 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN, intXmhtcm: >=155 cm_0-6 months
* agecat: 0-6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA, intXmhtcm: [151-155) cm_0-6 months
* agecat: 0-6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA, intXmhtcm: <151 cm_0-6 months
* agecat: 0-6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA, intXmhtcm: >=155 cm_0-6 months
* agecat: 0-6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA, intXmhtcm: [151-155) cm_0-6 months
* agecat: 0-6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA, intXmhtcm: <151 cm_0-6 months
* agecat: 0-6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA, intXmhtcm: >=155 cm_0-6 months
* agecat: 0-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH, intXmhtcm: [151-155) cm_0-6 months
* agecat: 0-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH, intXmhtcm: <151 cm_0-6 months
* agecat: 0-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH, intXmhtcm: >=155 cm_0-6 months
* agecat: 0-6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF, intXmhtcm: [151-155) cm_0-6 months
* agecat: 0-6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF, intXmhtcm: <151 cm_0-6 months
* agecat: 0-6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF, intXmhtcm: >=155 cm_0-6 months
* agecat: 0-6 months, studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO, intXmhtcm: [151-155) cm_0-6 months
* agecat: 0-6 months, studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO, intXmhtcm: <151 cm_0-6 months
* agecat: 0-6 months, studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO, intXmhtcm: >=155 cm_0-6 months
* agecat: 0-6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA, intXmhtcm: [151-155) cm_0-6 months
* agecat: 0-6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA, intXmhtcm: <151 cm_0-6 months
* agecat: 0-6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA, intXmhtcm: >=155 cm_0-6 months
* agecat: 0-6 months, studyid: ki1119695-PROBIT, country: BELARUS, intXmhtcm: [151-155) cm_0-6 months
* agecat: 0-6 months, studyid: ki1119695-PROBIT, country: BELARUS, intXmhtcm: <151 cm_0-6 months
* agecat: 0-6 months, studyid: ki1119695-PROBIT, country: BELARUS, intXmhtcm: >=155 cm_0-6 months
* agecat: 0-6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE, intXmhtcm: [151-155) cm_0-6 months
* agecat: 0-6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE, intXmhtcm: <151 cm_0-6 months
* agecat: 0-6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE, intXmhtcm: >=155 cm_0-6 months
* agecat: 0-6 months, studyid: ki1135781-COHORTS, country: GUATEMALA, intXmhtcm: [151-155) cm_0-6 months
* agecat: 0-6 months, studyid: ki1135781-COHORTS, country: GUATEMALA, intXmhtcm: <151 cm_0-6 months
* agecat: 0-6 months, studyid: ki1135781-COHORTS, country: GUATEMALA, intXmhtcm: >=155 cm_0-6 months
* agecat: 0-6 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI, intXmhtcm: [151-155) cm_0-6 months
* agecat: 0-6 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI, intXmhtcm: <151 cm_0-6 months
* agecat: 0-6 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI, intXmhtcm: >=155 cm_0-6 months
* agecat: 0-6 months, studyid: ki1148112-LCNI-5, country: MALAWI, intXmhtcm: [151-155) cm_0-6 months
* agecat: 0-6 months, studyid: ki1148112-LCNI-5, country: MALAWI, intXmhtcm: <151 cm_0-6 months
* agecat: 0-6 months, studyid: ki1148112-LCNI-5, country: MALAWI, intXmhtcm: >=155 cm_0-6 months
* agecat: 0-6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH, intXmhtcm: [151-155) cm_0-6 months
* agecat: 0-6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH, intXmhtcm: <151 cm_0-6 months
* agecat: 0-6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH, intXmhtcm: >=155 cm_0-6 months
* agecat: 6-24 months, studyid: iLiNS_DYADM_LNS, country: MALAWI, intXmhtcm: [151-155) cm_6-24 months
* agecat: 6-24 months, studyid: iLiNS-Zinc_ZvLNS, country: BURKINA FASO, intXmhtcm: [151-155) cm_6-24 months
* agecat: 6-24 months, studyid: iLiNS-Zinc_ZvLNS, country: BURKINA FASO, intXmhtcm: <151 cm_6-24 months
* agecat: 6-24 months, studyid: iLiNS-Zinc_ZvLNS, country: BURKINA FASO, intXmhtcm: >=155 cm_6-24 months
* agecat: 6-24 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH, intXmhtcm: [151-155) cm_6-24 months
* agecat: 6-24 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH, intXmhtcm: <151 cm_6-24 months
* agecat: 6-24 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH, intXmhtcm: >=155 cm_6-24 months
* agecat: 6-24 months, studyid: ki1000111-WASH-Kenya, country: KENYA, intXmhtcm: [151-155) cm_6-24 months
* agecat: 6-24 months, studyid: ki1000111-WASH-Kenya, country: KENYA, intXmhtcm: <151 cm_6-24 months
* agecat: 6-24 months, studyid: ki1000111-WASH-Kenya, country: KENYA, intXmhtcm: >=155 cm_6-24 months
* agecat: 6-24 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN, intXmhtcm: [151-155) cm_6-24 months
* agecat: 6-24 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN, intXmhtcm: <151 cm_6-24 months
* agecat: 6-24 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN, intXmhtcm: >=155 cm_6-24 months
* agecat: 6-24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA, intXmhtcm: [151-155) cm_6-24 months
* agecat: 6-24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA, intXmhtcm: <151 cm_6-24 months
* agecat: 6-24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA, intXmhtcm: >=155 cm_6-24 months
* agecat: 6-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA, intXmhtcm: [151-155) cm_6-24 months
* agecat: 6-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA, intXmhtcm: <151 cm_6-24 months
* agecat: 6-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA, intXmhtcm: >=155 cm_6-24 months
* agecat: 6-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH, intXmhtcm: [151-155) cm_6-24 months
* agecat: 6-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH, intXmhtcm: <151 cm_6-24 months
* agecat: 6-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH, intXmhtcm: >=155 cm_6-24 months
* agecat: 6-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF, intXmhtcm: [151-155) cm_6-24 months
* agecat: 6-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF, intXmhtcm: <151 cm_6-24 months
* agecat: 6-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF, intXmhtcm: >=155 cm_6-24 months
* agecat: 6-24 months, studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO, intXmhtcm: [151-155) cm_6-24 months
* agecat: 6-24 months, studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO, intXmhtcm: <151 cm_6-24 months
* agecat: 6-24 months, studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO, intXmhtcm: >=155 cm_6-24 months
* agecat: 6-24 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA, intXmhtcm: [151-155) cm_6-24 months
* agecat: 6-24 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA, intXmhtcm: <151 cm_6-24 months
* agecat: 6-24 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA, intXmhtcm: >=155 cm_6-24 months
* agecat: 6-24 months, studyid: ki1112895-iLiNS-Zinc, country: BURKINA FASO, intXmhtcm: [151-155) cm_6-24 months
* agecat: 6-24 months, studyid: ki1112895-iLiNS-Zinc, country: BURKINA FASO, intXmhtcm: <151 cm_6-24 months
* agecat: 6-24 months, studyid: ki1112895-iLiNS-Zinc, country: BURKINA FASO, intXmhtcm: >=155 cm_6-24 months
* agecat: 6-24 months, studyid: ki1119695-PROBIT, country: BELARUS, intXmhtcm: [151-155) cm_6-24 months
* agecat: 6-24 months, studyid: ki1119695-PROBIT, country: BELARUS, intXmhtcm: <151 cm_6-24 months
* agecat: 6-24 months, studyid: ki1119695-PROBIT, country: BELARUS, intXmhtcm: >=155 cm_6-24 months
* agecat: 6-24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE, intXmhtcm: [151-155) cm_6-24 months
* agecat: 6-24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE, intXmhtcm: <151 cm_6-24 months
* agecat: 6-24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE, intXmhtcm: >=155 cm_6-24 months
* agecat: 6-24 months, studyid: ki1135781-COHORTS, country: GUATEMALA, intXmhtcm: [151-155) cm_6-24 months
* agecat: 6-24 months, studyid: ki1135781-COHORTS, country: GUATEMALA, intXmhtcm: <151 cm_6-24 months
* agecat: 6-24 months, studyid: ki1135781-COHORTS, country: GUATEMALA, intXmhtcm: >=155 cm_6-24 months
* agecat: 6-24 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI, intXmhtcm: [151-155) cm_6-24 months
* agecat: 6-24 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI, intXmhtcm: <151 cm_6-24 months
* agecat: 6-24 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI, intXmhtcm: >=155 cm_6-24 months
* agecat: 6-24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI, intXmhtcm: [151-155) cm_6-24 months
* agecat: 6-24 months, studyid: ki1148112-LCNI-5, country: MALAWI, intXmhtcm: [151-155) cm_6-24 months
* agecat: 6-24 months, studyid: ki1148112-LCNI-5, country: MALAWI, intXmhtcm: <151 cm_6-24 months
* agecat: 6-24 months, studyid: ki1148112-LCNI-5, country: MALAWI, intXmhtcm: >=155 cm_6-24 months
* agecat: 6-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH, intXmhtcm: [151-155) cm_6-24 months
* agecat: 6-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH, intXmhtcm: <151 cm_6-24 months
* agecat: 6-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH, intXmhtcm: >=155 cm_6-24 months

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-6 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH, intXmhtcm: >=155 cm_0-6 months
* agecat: 0-6 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH, intXmhtcm: [151-155) cm_0-6 months
* agecat: 0-6 months, studyid: ki1000111-WASH-Kenya, country: KENYA, intXmhtcm: <151 cm_0-6 months
* agecat: 0-6 months, studyid: ki1000111-WASH-Kenya, country: KENYA, intXmhtcm: [151-155) cm_0-6 months
* agecat: 0-6 months, studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO, intXmhtcm: <151 cm_0-6 months
* agecat: 0-6 months, studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO, intXmhtcm: [151-155) cm_0-6 months
* agecat: 6-24 months, studyid: iLiNS_DYADM_LNS, country: MALAWI, intXmhtcm: [151-155) cm_6-24 months
* agecat: 6-24 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN, intXmhtcm: >=155 cm_6-24 months
* agecat: 6-24 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN, intXmhtcm: <151 cm_6-24 months
* agecat: 6-24 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN, intXmhtcm: [151-155) cm_6-24 months
* agecat: 6-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH, intXmhtcm: >=155 cm_6-24 months
* agecat: 6-24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI, intXmhtcm: [151-155) cm_6-24 months

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
##           ever_stunted
## tr          0  1
##   Control   0  0
##   LNS       0  0
##   Maternal  0  0
##   Other     0  0
##   VitA      0  0
##   Zinc     29  5
```

```
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV

## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV

## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```

```
##           ever_stunted
## tr            0    1
##   Control     0    0
##   LNS         0    0
##   Maternal    0    0
##   Other       0    0
##   VitA        0    0
##   Zinc     3206 1451
##           ever_stunted
## tr           0   1
##   Control    0   0
##   LNS        0   0
##   Maternal   0   0
##   Other      0   0
##   VitA       0   0
##   Zinc     116 192
##           ever_stunted
## tr           0   1
##   Control    0   0
##   LNS        0   0
##   Maternal   0   0
##   Other      0   0
##   VitA       0   0
##   Zinc     379 368
```




# Results Detail

## Results Plots
![](/tmp/a2cc9bec-06e2-471d-a25f-587dc66e7bc6/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/a2cc9bec-06e2-471d-a25f-587dc66e7bc6/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/a2cc9bec-06e2-471d-a25f-587dc66e7bc6/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/a2cc9bec-06e2-471d-a25f-587dc66e7bc6/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                     country                        intXmhtcm                  intervention_level   baseline_level     estimate     ci_lower    ci_upper
------------  --------------------------  -----------------------------  -------------------------  -------------------  ---------------  ----------  -----------  ----------
0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     <151 cm_0-6 months         Control              NA                0.2222222    0.0293233   0.4151212
0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     <151 cm_0-6 months         LNS                  NA                0.1627907    0.0519646   0.2736168
0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     <151 cm_0-6 months         Other                NA                0.1481481    0.0529830   0.2433133
0-6 months    ki1000111-WASH-Kenya        KENYA                          >=155 cm_0-6 months        Control              NA                0.1111111   -0.0351350   0.2573573
0-6 months    ki1000111-WASH-Kenya        KENYA                          >=155 cm_0-6 months        LNS                  NA                0.0000000    0.0000000   0.0000000
0-6 months    ki1000111-WASH-Kenya        KENYA                          >=155 cm_0-6 months        Other                NA                0.1212121    0.0090422   0.2333820
0-6 months    ki1000125-AgaKhanUniv       PAKISTAN                       >=155 cm_0-6 months        Control              NA                0.1379310    0.0111801   0.2646820
0-6 months    ki1000125-AgaKhanUniv       PAKISTAN                       >=155 cm_0-6 months        Maternal             NA                0.0909091   -0.0304142   0.2122324
0-6 months    ki1000125-AgaKhanUniv       PAKISTAN                       <151 cm_0-6 months         Control              NA                0.5000000    0.1828098   0.8171902
0-6 months    ki1000125-AgaKhanUniv       PAKISTAN                       <151 cm_0-6 months         Maternal             NA                0.2500000   -0.0007609   0.5007609
0-6 months    ki1000125-AgaKhanUniv       PAKISTAN                       [151-155) cm_0-6 months    Control              NA                0.3750000    0.0323108   0.7176892
0-6 months    ki1000125-AgaKhanUniv       PAKISTAN                       [151-155) cm_0-6 months    Maternal             NA                0.2500000    0.0332643   0.4667357
0-6 months    ki1000304b-SAS-CompFeed     INDIA                          >=155 cm_0-6 months        Control              NA                0.2066667    0.1679664   0.2453670
0-6 months    ki1000304b-SAS-CompFeed     INDIA                          >=155 cm_0-6 months        Other                NA                0.1839080    0.1052021   0.2626140
0-6 months    ki1000304b-SAS-CompFeed     INDIA                          <151 cm_0-6 months         Control              NA                0.4257426    0.2785063   0.5729788
0-6 months    ki1000304b-SAS-CompFeed     INDIA                          <151 cm_0-6 months         Other                NA                0.4462810    0.3743633   0.5181987
0-6 months    ki1000304b-SAS-CompFeed     INDIA                          [151-155) cm_0-6 months    Control              NA                0.2297297    0.0764068   0.3830526
0-6 months    ki1000304b-SAS-CompFeed     INDIA                          [151-155) cm_0-6 months    Other                NA                0.2688172    0.1532798   0.3843546
0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          >=155 cm_0-6 months        Control              NA                0.1764706   -0.0059195   0.3588607
0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          >=155 cm_0-6 months        Other                NA                0.2622951    0.1511932   0.3733970
0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          <151 cm_0-6 months         Control              NA                0.4736842    0.3437667   0.6036017
0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          <151 cm_0-6 months         Other                NA                0.4785276    0.4016654   0.5553898
0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          [151-155) cm_0-6 months    Control              NA                0.3571429    0.1788440   0.5354418
0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          [151-155) cm_0-6 months    Other                NA                0.2716049    0.1742945   0.3689153
0-6 months    ki1017093b-PROVIDE          BANGLADESH                     >=155 cm_0-6 months        Control              NA                0.0263158   -0.0247644   0.0773960
0-6 months    ki1017093b-PROVIDE          BANGLADESH                     >=155 cm_0-6 months        Other                NA                0.0700000    0.0198099   0.1201901
0-6 months    ki1017093b-PROVIDE          BANGLADESH                     <151 cm_0-6 months         Control              NA                0.2111111    0.1266775   0.2955447
0-6 months    ki1017093b-PROVIDE          BANGLADESH                     <151 cm_0-6 months         Other                NA                0.1782946    0.1315221   0.2250670
0-6 months    ki1017093b-PROVIDE          BANGLADESH                     [151-155) cm_0-6 months    Control              NA                0.1052632    0.0073669   0.2031594
0-6 months    ki1017093b-PROVIDE          BANGLADESH                     [151-155) cm_0-6 months    Other                NA                0.0956522    0.0417212   0.1495831
0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   >=155 cm_0-6 months        Control              NA                0.0536723    0.0301869   0.0771578
0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   >=155 cm_0-6 months        Other                NA                0.0326409    0.0136623   0.0516196
0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   >=155 cm_0-6 months        Zinc                 NA                0.0560345    0.0389420   0.0731270
0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   <151 cm_0-6 months         Control              NA                0.1153846    0.0443782   0.1863910
0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   <151 cm_0-6 months         Other                NA                0.1428571    0.0645817   0.2211326
0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   <151 cm_0-6 months         Zinc                 NA                0.1208791    0.0734486   0.1683096
0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   [151-155) cm_0-6 months    Control              NA                0.0991736    0.0458609   0.1524862
0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   [151-155) cm_0-6 months    Other                NA                0.0944882    0.0435623   0.1454141
0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   [151-155) cm_0-6 months    Zinc                 NA                0.0833333    0.0474203   0.1192464
0-6 months    ki1112895-Guatemala BSC     GUATEMALA                      >=155 cm_0-6 months        Control              NA                0.1052632   -0.0348694   0.2453957
0-6 months    ki1112895-Guatemala BSC     GUATEMALA                      >=155 cm_0-6 months        Other                NA                0.2857143    0.0454064   0.5260222
0-6 months    ki1112895-Guatemala BSC     GUATEMALA                      <151 cm_0-6 months         Control              NA                0.3448276    0.2219860   0.4676692
0-6 months    ki1112895-Guatemala BSC     GUATEMALA                      <151 cm_0-6 months         Other                NA                0.1967213    0.0965428   0.2968998
0-6 months    ki1112895-Guatemala BSC     GUATEMALA                      [151-155) cm_0-6 months    Control              NA                0.2000000    0.0228404   0.3771596
0-6 months    ki1112895-Guatemala BSC     GUATEMALA                      [151-155) cm_0-6 months    Other                NA                0.1428571    0.0118731   0.2738412
0-6 months    ki1119695-PROBIT            BELARUS                        >=155 cm_0-6 months        Control              NA                0.0632487    0.0462548   0.0802425
0-6 months    ki1119695-PROBIT            BELARUS                        >=155 cm_0-6 months        Maternal             NA                0.0564937    0.0423011   0.0706863
0-6 months    ki1119695-PROBIT            BELARUS                        <151 cm_0-6 months         Control              NA                0.1403509    0.0290634   0.2516383
0-6 months    ki1119695-PROBIT            BELARUS                        <151 cm_0-6 months         Maternal             NA                0.2187500    0.0763962   0.3611038
0-6 months    ki1119695-PROBIT            BELARUS                        [151-155) cm_0-6 months    Control              NA                0.0923913    0.0515697   0.1332129
0-6 months    ki1119695-PROBIT            BELARUS                        [151-155) cm_0-6 months    Maternal             NA                0.1005025    0.0562354   0.1447696
0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       >=155 cm_0-6 months        Control              NA                0.1610782    0.1426026   0.1795538
0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       >=155 cm_0-6 months        VitA                 NA                0.1590909    0.1484412   0.1697406
0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       <151 cm_0-6 months         Control              NA                0.3103448    0.2260624   0.3946273
0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       <151 cm_0-6 months         VitA                 NA                0.3115727    0.2620708   0.3610746
0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       [151-155) cm_0-6 months    Control              NA                0.2000000    0.1518184   0.2481816
0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       [151-155) cm_0-6 months    VitA                 NA                0.2384342    0.2096557   0.2672127
0-6 months    ki1135781-COHORTS           GUATEMALA                      >=155 cm_0-6 months        Control              NA                0.2941176    0.0750176   0.5132177
0-6 months    ki1135781-COHORTS           GUATEMALA                      >=155 cm_0-6 months        Other                NA                0.1481481    0.0126016   0.2836947
0-6 months    ki1135781-COHORTS           GUATEMALA                      <151 cm_0-6 months         Control              NA                0.3645833    0.2680596   0.4611071
0-6 months    ki1135781-COHORTS           GUATEMALA                      <151 cm_0-6 months         Other                NA                0.3495146    0.2571990   0.4418301
0-6 months    ki1135781-COHORTS           GUATEMALA                      [151-155) cm_0-6 months    Control              NA                0.2857143    0.1167841   0.4546445
0-6 months    ki1135781-COHORTS           GUATEMALA                      [151-155) cm_0-6 months    Other                NA                0.1600000    0.0149178   0.3050822
0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         >=155 cm_0-6 months        Control              NA                0.2150538    0.1314881   0.2986194
0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         >=155 cm_0-6 months        LNS                  NA                0.2315789    0.1969222   0.2662357
0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         <151 cm_0-6 months         Control              NA                0.4615385    0.3047591   0.6183178
0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         <151 cm_0-6 months         LNS                  NA                0.3707317    0.3044779   0.4369855
0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         [151-155) cm_0-6 months    Control              NA                0.3928571    0.2647209   0.5209934
0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         [151-155) cm_0-6 months    LNS                  NA                0.3405172    0.2794328   0.4016017
0-6 months    ki1148112-LCNI-5            MALAWI                         >=155 cm_0-6 months        Control              NA                0.2631579    0.1227134   0.4036024
0-6 months    ki1148112-LCNI-5            MALAWI                         >=155 cm_0-6 months        LNS                  NA                0.2235294    0.1346868   0.3123720
0-6 months    ki1148112-LCNI-5            MALAWI                         >=155 cm_0-6 months        Other                NA                0.2894737    0.1448285   0.4341188
0-6 months    ki1148112-LCNI-5            MALAWI                         <151 cm_0-6 months         Control              NA                0.5000000    0.1859426   0.8140574
0-6 months    ki1148112-LCNI-5            MALAWI                         <151 cm_0-6 months         LNS                  NA                0.5555556    0.3229204   0.7881907
0-6 months    ki1148112-LCNI-5            MALAWI                         <151 cm_0-6 months         Other                NA                0.6000000    0.2922878   0.9077122
0-6 months    ki1148112-LCNI-5            MALAWI                         [151-155) cm_0-6 months    Control              NA                0.5000000    0.2793316   0.7206684
0-6 months    ki1148112-LCNI-5            MALAWI                         [151-155) cm_0-6 months    LNS                  NA                0.4571429    0.2909471   0.6233386
0-6 months    ki1148112-LCNI-5            MALAWI                         [151-155) cm_0-6 months    Other                NA                0.5882353    0.3526432   0.8238274
0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     >=155 cm_0-6 months        Control              NA                0.1296673    0.1091079   0.1502268
0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     >=155 cm_0-6 months        Maternal             NA                0.1041667    0.0842775   0.1240558
0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     <151 cm_0-6 months         Control              NA                0.3463165    0.3316894   0.3609437
0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     <151 cm_0-6 months         Maternal             NA                0.2995271    0.2854656   0.3135886
0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     [151-155) cm_0-6 months    Control              NA                0.2033195    0.1852914   0.2213476
0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     [151-155) cm_0-6 months    Maternal             NA                0.1690880    0.1526087   0.1855672
6-24 months   iLiNS-Zinc_ZvLNS            BURKINA FASO                   >=155 cm_6-24 months       Control              NA                0.2780952    0.2203544   0.3358360
6-24 months   iLiNS-Zinc_ZvLNS            BURKINA FASO                   >=155 cm_6-24 months       Zinc                 NA                0.2894899    0.2008853   0.3780944
6-24 months   iLiNS-Zinc_ZvLNS            BURKINA FASO                   <151 cm_6-24 months        Control              NA                0.6250000    0.3198605   0.9301395
6-24 months   iLiNS-Zinc_ZvLNS            BURKINA FASO                   <151 cm_6-24 months        Zinc                 NA                0.6808511    0.5097321   0.8519700
6-24 months   iLiNS-Zinc_ZvLNS            BURKINA FASO                   [151-155) cm_6-24 months   Control              NA                0.6666667    0.5117072   0.8216261
6-24 months   iLiNS-Zinc_ZvLNS            BURKINA FASO                   [151-155) cm_6-24 months   Zinc                 NA                0.5407407    0.3983129   0.6831686
6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     >=155 cm_6-24 months       Control              NA                0.2469136    0.1926674   0.3011597
6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     >=155 cm_6-24 months       LNS                  NA                0.1794872    0.1302913   0.2286830
6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     >=155 cm_6-24 months       Other                NA                0.2245763    0.1869096   0.2622430
6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     <151 cm_6-24 months        Control              NA                0.4956672    0.4548634   0.5364711
6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     <151 cm_6-24 months        LNS                  NA                0.4314642    0.3931448   0.4697836
6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     <151 cm_6-24 months        Other                NA                0.4929467    0.4655097   0.5203837
6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     [151-155) cm_6-24 months   Control              NA                0.3222892    0.2719982   0.3725801
6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     [151-155) cm_6-24 months   LNS                  NA                0.2391304    0.1925226   0.2857383
6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     [151-155) cm_6-24 months   Other                NA                0.3547401    0.3180585   0.3914216
6-24 months   ki1000111-WASH-Kenya        KENYA                          >=155 cm_6-24 months       Control              NA                0.2160356    0.1970009   0.2350704
6-24 months   ki1000111-WASH-Kenya        KENYA                          >=155 cm_6-24 months       LNS                  NA                0.1867257    0.1640024   0.2094489
6-24 months   ki1000111-WASH-Kenya        KENYA                          >=155 cm_6-24 months       Other                NA                0.2376151    0.2201468   0.2550834
6-24 months   ki1000111-WASH-Kenya        KENYA                          <151 cm_6-24 months        Control              NA                0.4666667    0.3711036   0.5622298
6-24 months   ki1000111-WASH-Kenya        KENYA                          <151 cm_6-24 months        LNS                  NA                0.3950617    0.2884444   0.5016790
6-24 months   ki1000111-WASH-Kenya        KENYA                          <151 cm_6-24 months        Other                NA                0.4904459    0.4121348   0.5687569
6-24 months   ki1000111-WASH-Kenya        KENYA                          [151-155) cm_6-24 months   Control              NA                0.3881119    0.3316008   0.4446230
6-24 months   ki1000111-WASH-Kenya        KENYA                          [151-155) cm_6-24 months   LNS                  NA                0.3315789    0.2645991   0.3985588
6-24 months   ki1000111-WASH-Kenya        KENYA                          [151-155) cm_6-24 months   Other                NA                0.3862434    0.3371317   0.4353551
6-24 months   ki1000304b-SAS-CompFeed     INDIA                          >=155 cm_6-24 months       Control              NA                0.3095238    0.1925251   0.4265225
6-24 months   ki1000304b-SAS-CompFeed     INDIA                          >=155 cm_6-24 months       Other                NA                0.3522013    0.2423065   0.4620961
6-24 months   ki1000304b-SAS-CompFeed     INDIA                          <151 cm_6-24 months        Control              NA                0.6000000    0.5496730   0.6503270
6-24 months   ki1000304b-SAS-CompFeed     INDIA                          <151 cm_6-24 months        Other                NA                0.4857143    0.3459494   0.6254792
6-24 months   ki1000304b-SAS-CompFeed     INDIA                          [151-155) cm_6-24 months   Control              NA                0.4677419    0.2878821   0.6476018
6-24 months   ki1000304b-SAS-CompFeed     INDIA                          [151-155) cm_6-24 months   Other                NA                0.4477612    0.3394813   0.5560411
6-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          >=155 cm_6-24 months       Control              NA                0.5714286    0.3098994   0.8329577
6-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          >=155 cm_6-24 months       Other                NA                0.3953488    0.2479141   0.5427836
6-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          <151 cm_6-24 months        Control              NA                0.7931034    0.6449971   0.9412098
6-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          <151 cm_6-24 months        Other                NA                0.6172840    0.5109506   0.7236173
6-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          [151-155) cm_6-24 months   Control              NA                0.6666667    0.4474459   0.8858875
6-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          [151-155) cm_6-24 months   Other                NA                0.6896552    0.5698023   0.8095081
6-24 months   ki1017093b-PROVIDE          BANGLADESH                     <151 cm_6-24 months        Control              NA                0.1860465    0.0693647   0.3027283
6-24 months   ki1017093b-PROVIDE          BANGLADESH                     <151 cm_6-24 months        Other                NA                0.1565217    0.0899021   0.2231414
6-24 months   ki1017093b-PROVIDE          BANGLADESH                     [151-155) cm_6-24 months   Control              NA                0.1428571   -0.0076641   0.2933784
6-24 months   ki1017093b-PROVIDE          BANGLADESH                     [151-155) cm_6-24 months   Other                NA                0.0746269    0.0113422   0.1379115
6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   >=155 cm_6-24 months       Control              NA                0.1283784    0.0902540   0.1665027
6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   >=155 cm_6-24 months       Other                NA                0.1371841    0.0966510   0.1777172
6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   >=155 cm_6-24 months       Zinc                 NA                0.1461268    0.1170647   0.1751888
6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   <151 cm_6-24 months        Control              NA                0.4000000    0.2757933   0.5242067
6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   <151 cm_6-24 months        Other                NA                0.2413793    0.1310316   0.3517270
6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   <151 cm_6-24 months        Zinc                 NA                0.3157895    0.2366337   0.3949453
6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   [151-155) cm_6-24 months   Control              NA                0.2258065    0.1407198   0.3108931
6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   [151-155) cm_6-24 months   Other                NA                0.2115385    0.1329465   0.2901304
6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   [151-155) cm_6-24 months   Zinc                 NA                0.2421053    0.1811179   0.3030926
6-24 months   ki1112895-Guatemala BSC     GUATEMALA                      >=155 cm_6-24 months       Control              NA                0.1111111   -0.0367355   0.2589578
6-24 months   ki1112895-Guatemala BSC     GUATEMALA                      >=155 cm_6-24 months       Other                NA                0.3000000    0.0107623   0.5892377
6-24 months   ki1112895-Guatemala BSC     GUATEMALA                      <151 cm_6-24 months        Control              NA                0.2619048    0.1281463   0.3956632
6-24 months   ki1112895-Guatemala BSC     GUATEMALA                      <151 cm_6-24 months        Other                NA                0.4418605    0.2925475   0.5911735
6-24 months   ki1112895-Guatemala BSC     GUATEMALA                      [151-155) cm_6-24 months   Control              NA                0.4000000    0.1487541   0.6512459
6-24 months   ki1112895-Guatemala BSC     GUATEMALA                      [151-155) cm_6-24 months   Other                NA                0.2173913    0.0465596   0.3882230
6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   >=155 cm_6-24 months       Control              NA                0.3558368    0.3116788   0.3999949
6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   >=155 cm_6-24 months       LNS                  NA                0.2867100    0.2194203   0.3539998
6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   <151 cm_6-24 months        Control              NA                0.5769231    0.3019279   0.8519182
6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   <151 cm_6-24 months        LNS                  NA                0.6666667    0.5294555   0.8038778
6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   [151-155) cm_6-24 months   Control              NA                0.5000000    0.1893084   0.8106916
6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   [151-155) cm_6-24 months   LNS                  NA                0.5737705    0.4656018   0.6819392
6-24 months   ki1119695-PROBIT            BELARUS                        >=155 cm_6-24 months       Control              NA                0.0622908    0.0430885   0.0814931
6-24 months   ki1119695-PROBIT            BELARUS                        >=155 cm_6-24 months       Maternal             NA                0.0528217    0.0418230   0.0638205
6-24 months   ki1119695-PROBIT            BELARUS                        <151 cm_6-24 months        Control              NA                0.1190476    0.0501483   0.1879469
6-24 months   ki1119695-PROBIT            BELARUS                        <151 cm_6-24 months        Maternal             NA                0.1627907   -0.0182496   0.3438310
6-24 months   ki1119695-PROBIT            BELARUS                        [151-155) cm_6-24 months   Control              NA                0.0827586    0.0286864   0.1368309
6-24 months   ki1119695-PROBIT            BELARUS                        [151-155) cm_6-24 months   Maternal             NA                0.0828025    0.0424189   0.1231862
6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       >=155 cm_6-24 months       Control              NA                0.2004454    0.1790645   0.2218264
6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       >=155 cm_6-24 months       VitA                 NA                0.1948705    0.1825588   0.2071822
6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       <151 cm_6-24 months        Control              NA                0.3255814    0.2263931   0.4247697
6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       <151 cm_6-24 months        VitA                 NA                0.3708333    0.3096290   0.4320376
6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       [151-155) cm_6-24 months   Control              NA                0.2400000    0.1807777   0.2992223
6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       [151-155) cm_6-24 months   VitA                 NA                0.2673267    0.2346864   0.2999670
6-24 months   ki1135781-COHORTS           GUATEMALA                      >=155 cm_6-24 months       Control              NA                0.5666667    0.3881971   0.7451363
6-24 months   ki1135781-COHORTS           GUATEMALA                      >=155 cm_6-24 months       Other                NA                0.3333333    0.1991115   0.4675552
6-24 months   ki1135781-COHORTS           GUATEMALA                      <151 cm_6-24 months        Control              NA                0.7179487    0.6362370   0.7996604
6-24 months   ki1135781-COHORTS           GUATEMALA                      <151 cm_6-24 months        Other                NA                0.6083333    0.5208138   0.6958528
6-24 months   ki1135781-COHORTS           GUATEMALA                      [151-155) cm_6-24 months   Control              NA                0.6938776    0.5642371   0.8235180
6-24 months   ki1135781-COHORTS           GUATEMALA                      [151-155) cm_6-24 months   Other                NA                0.5500000    0.4235376   0.6764624
6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         >=155 cm_6-24 months       Control              NA                0.2888889    0.2123866   0.3653912
6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         >=155 cm_6-24 months       LNS                  NA                0.3394886    0.3044882   0.3744891
6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         <151 cm_6-24 months        Control              NA                0.5714286    0.4326233   0.7102338
6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         <151 cm_6-24 months        LNS                  NA                0.5466102    0.4829848   0.6102355
6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         [151-155) cm_6-24 months   Control              NA                0.5081967    0.3825586   0.6338349
6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         [151-155) cm_6-24 months   LNS                  NA                0.4825175    0.4245217   0.5405132
6-24 months   ki1148112-LCNI-5            MALAWI                         >=155 cm_6-24 months       Control              NA                0.3781513    0.2909312   0.4653713
6-24 months   ki1148112-LCNI-5            MALAWI                         >=155 cm_6-24 months       LNS                  NA                0.4769874    0.4135968   0.5403781
6-24 months   ki1148112-LCNI-5            MALAWI                         >=155 cm_6-24 months       Other                NA                0.4907407    0.3963568   0.5851247
6-24 months   ki1148112-LCNI-5            MALAWI                         <151 cm_6-24 months        Control              NA                0.8333333    0.6835451   0.9831215
6-24 months   ki1148112-LCNI-5            MALAWI                         <151 cm_6-24 months        LNS                  NA                0.7090909    0.5885047   0.8296771
6-24 months   ki1148112-LCNI-5            MALAWI                         <151 cm_6-24 months        Other                NA                0.7333333    0.5743601   0.8923065
6-24 months   ki1148112-LCNI-5            MALAWI                         [151-155) cm_6-24 months   Control              NA                0.6285714    0.4679652   0.7891776
6-24 months   ki1148112-LCNI-5            MALAWI                         [151-155) cm_6-24 months   LNS                  NA                0.5714286    0.4605293   0.6823278
6-24 months   ki1148112-LCNI-5            MALAWI                         [151-155) cm_6-24 months   Other                NA                0.5500000    0.3953183   0.7046817
6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     >=155 cm_6-24 months       Control              NA                0.0811370    0.0593594   0.1029145
6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     >=155 cm_6-24 months       Maternal             NA                0.0928824    0.0697087   0.1160561
6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     <151 cm_6-24 months        Control              NA                0.2321601    0.2090009   0.2553192
6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     <151 cm_6-24 months        Maternal             NA                0.2325995    0.2122719   0.2529271
6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     [151-155) cm_6-24 months   Control              NA                0.1409849    0.1166931   0.1652767
6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     [151-155) cm_6-24 months   Maternal             NA                0.1383459    0.1168016   0.1598902


### Parameter: E(Y)


agecat        studyid                     country                        intXmhtcm                  intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  --------------------------  -----------------------------  -------------------------  -------------------  ---------------  ----------  ----------  ----------
0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     <151 cm_0-6 months         NA                   NA                0.1652174   0.0970447   0.2333901
0-6 months    ki1000111-WASH-Kenya        KENYA                          >=155 cm_0-6 months        NA                   NA                0.0869565   0.0199850   0.1539281
0-6 months    ki1000125-AgaKhanUniv       PAKISTAN                       >=155 cm_0-6 months        NA                   NA                0.1176471   0.0283423   0.2069519
0-6 months    ki1000125-AgaKhanUniv       PAKISTAN                       <151 cm_0-6 months         NA                   NA                0.3636364   0.1578935   0.5693792
0-6 months    ki1000125-AgaKhanUniv       PAKISTAN                       [151-155) cm_0-6 months    NA                   NA                0.2916667   0.1059091   0.4774242
0-6 months    ki1000304b-SAS-CompFeed     INDIA                          >=155 cm_0-6 months        NA                   NA                0.1944444   0.1493622   0.2395267
0-6 months    ki1000304b-SAS-CompFeed     INDIA                          <151 cm_0-6 months         NA                   NA                0.4369369   0.3585942   0.5152796
0-6 months    ki1000304b-SAS-CompFeed     INDIA                          [151-155) cm_0-6 months    NA                   NA                0.2514970   0.1570633   0.3459308
0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          >=155 cm_0-6 months        NA                   NA                0.2435897   0.1477135   0.3394660
0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          <151 cm_0-6 months         NA                   NA                0.4772727   0.4111201   0.5434253
0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          [151-155) cm_0-6 months    NA                   NA                0.2935780   0.2076905   0.3794655
0-6 months    ki1017093b-PROVIDE          BANGLADESH                     >=155 cm_0-6 months        NA                   NA                0.0579710   0.0188396   0.0971024
0-6 months    ki1017093b-PROVIDE          BANGLADESH                     <151 cm_0-6 months         NA                   NA                0.1867816   0.1457750   0.2277882
0-6 months    ki1017093b-PROVIDE          BANGLADESH                     [151-155) cm_0-6 months    NA                   NA                0.0980392   0.0507655   0.1453130
0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   >=155 cm_0-6 months        NA                   NA                0.0497477   0.0383012   0.0611941
0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   <151 cm_0-6 months         NA                   NA                0.1246291   0.0893120   0.1599461
0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   [151-155) cm_0-6 months    NA                   NA                0.0903361   0.0645568   0.1161155
0-6 months    ki1112895-Guatemala BSC     GUATEMALA                      >=155 cm_0-6 months        NA                   NA                0.1818182   0.0481843   0.3154521
0-6 months    ki1112895-Guatemala BSC     GUATEMALA                      <151 cm_0-6 months         NA                   NA                0.2689076   0.1889067   0.3489084
0-6 months    ki1112895-Guatemala BSC     GUATEMALA                      [151-155) cm_0-6 months    NA                   NA                0.1666667   0.0601217   0.2732116
0-6 months    ki1119695-PROBIT            BELARUS                        >=155 cm_0-6 months        NA                   NA                0.0598043   0.0484926   0.0711160
0-6 months    ki1119695-PROBIT            BELARUS                        <151 cm_0-6 months         NA                   NA                0.1818182   0.0870525   0.2765839
0-6 months    ki1119695-PROBIT            BELARUS                        [151-155) cm_0-6 months    NA                   NA                0.0966057   0.0664722   0.1267393
0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       >=155 cm_0-6 months        NA                   NA                0.1595903   0.1503636   0.1688170
0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       <151 cm_0-6 months         NA                   NA                0.3112583   0.2685740   0.3539425
0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       [151-155) cm_0-6 months    NA                   NA                0.2292419   0.2044802   0.2540036
0-6 months    ki1135781-COHORTS           GUATEMALA                      >=155 cm_0-6 months        NA                   NA                0.2045455   0.0839818   0.3251091
0-6 months    ki1135781-COHORTS           GUATEMALA                      <151 cm_0-6 months         NA                   NA                0.3567839   0.2900577   0.4235101
0-6 months    ki1135781-COHORTS           GUATEMALA                      [151-155) cm_0-6 months    NA                   NA                0.2264151   0.1126647   0.3401655
0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         >=155 cm_0-6 months        NA                   NA                0.2292609   0.1972397   0.2612822
0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         <151 cm_0-6 months         NA                   NA                0.3852459   0.3240581   0.4464337
0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         [151-155) cm_0-6 months    NA                   NA                0.3506944   0.2954872   0.4059017
0-6 months    ki1148112-LCNI-5            MALAWI                         >=155 cm_0-6 months        NA                   NA                0.2484472   0.1814919   0.3154025
0-6 months    ki1148112-LCNI-5            MALAWI                         <151 cm_0-6 months         NA                   NA                0.5526316   0.3924186   0.7128446
0-6 months    ki1148112-LCNI-5            MALAWI                         [151-155) cm_0-6 months    NA                   NA                0.5000000   0.3836975   0.6163025
0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     >=155 cm_0-6 months        NA                   NA                0.1166501   0.1023461   0.1309540
0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     <151 cm_0-6 months         NA                   NA                0.3228499   0.3125126   0.3331871
0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     [151-155) cm_0-6 months    NA                   NA                0.1859656   0.1736967   0.1982345
6-24 months   iLiNS-Zinc_ZvLNS            BURKINA FASO                   >=155 cm_6-24 months       NA                   NA                0.2867100   0.2178752   0.3555449
6-24 months   iLiNS-Zinc_ZvLNS            BURKINA FASO                   <151 cm_6-24 months        NA                   NA                0.6666667   0.5196382   0.8136951
6-24 months   iLiNS-Zinc_ZvLNS            BURKINA FASO                   [151-155) cm_6-24 months   NA                   NA                0.5737705   0.4512184   0.6963226
6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     >=155 cm_6-24 months       NA                   NA                0.2191781   0.1928440   0.2455122
6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     <151 cm_6-24 months        NA                   NA                0.4777555   0.4581517   0.4973593
6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     [151-155) cm_6-24 months   NA                   NA                0.3180428   0.2927945   0.3432911
6-24 months   ki1000111-WASH-Kenya        KENYA                          >=155 cm_6-24 months       NA                   NA                0.2191281   0.2078915   0.2303647
6-24 months   ki1000111-WASH-Kenya        KENYA                          <151 cm_6-24 months        NA                   NA                0.4606414   0.4078145   0.5134683
6-24 months   ki1000111-WASH-Kenya        KENYA                          [151-155) cm_6-24 months   NA                   NA                0.3747073   0.3422239   0.4071906
6-24 months   ki1000304b-SAS-CompFeed     INDIA                          >=155 cm_6-24 months       NA                   NA                0.3333333   0.2539972   0.4126695
6-24 months   ki1000304b-SAS-CompFeed     INDIA                          <151 cm_6-24 months        NA                   NA                0.5428571   0.4624983   0.6232160
6-24 months   ki1000304b-SAS-CompFeed     INDIA                          [151-155) cm_6-24 months   NA                   NA                0.4573643   0.3548124   0.5599163
6-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          >=155 cm_6-24 months       NA                   NA                0.4385965   0.3086321   0.5685608
6-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          <151 cm_6-24 months        NA                   NA                0.6636364   0.5749403   0.7523324
6-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          [151-155) cm_6-24 months   NA                   NA                0.6842105   0.5790116   0.7894094
6-24 months   ki1017093b-PROVIDE          BANGLADESH                     <151 cm_6-24 months        NA                   NA                0.1645570   0.1065587   0.2225552
6-24 months   ki1017093b-PROVIDE          BANGLADESH                     [151-155) cm_6-24 months   NA                   NA                0.0909091   0.0305009   0.1513173
6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   >=155 cm_6-24 months       NA                   NA                0.1393514   0.1192483   0.1594546
6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   <151 cm_6-24 months        NA                   NA                0.3187251   0.2609624   0.3764878
6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   [151-155) cm_6-24 months   NA                   NA                0.2299742   0.1879938   0.2719546
6-24 months   ki1112895-Guatemala BSC     GUATEMALA                      >=155 cm_6-24 months       NA                   NA                0.1785714   0.0341083   0.3230346
6-24 months   ki1112895-Guatemala BSC     GUATEMALA                      <151 cm_6-24 months        NA                   NA                0.3529412   0.2507457   0.4551366
6-24 months   ki1112895-Guatemala BSC     GUATEMALA                      [151-155) cm_6-24 months   NA                   NA                0.2894737   0.1433429   0.4356045
6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   >=155 cm_6-24 months       NA                   NA                0.3038771   0.2523429   0.3554112
6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   <151 cm_6-24 months        NA                   NA                0.6404494   0.5157066   0.7651923
6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   [151-155) cm_6-24 months   NA                   NA                0.5600000   0.4552614   0.6647386
6-24 months   ki1119695-PROBIT            BELARUS                        >=155 cm_6-24 months       NA                   NA                0.0573727   0.0460312   0.0687141
6-24 months   ki1119695-PROBIT            BELARUS                        <151 cm_6-24 months        NA                   NA                0.1411765   0.0413265   0.2410264
6-24 months   ki1119695-PROBIT            BELARUS                        [151-155) cm_6-24 months   NA                   NA                0.0827815   0.0494507   0.1161122
6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       >=155 cm_6-24 months       NA                   NA                0.1962810   0.1856111   0.2069509
6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       <151 cm_6-24 months        NA                   NA                0.3588957   0.3067456   0.4110458
6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       [151-155) cm_6-24 months   NA                   NA                0.2613010   0.2326929   0.2899090
6-24 months   ki1135781-COHORTS           GUATEMALA                      >=155 cm_6-24 months       NA                   NA                0.4230769   0.3127272   0.5334267
6-24 months   ki1135781-COHORTS           GUATEMALA                      <151 cm_6-24 months        NA                   NA                0.6624473   0.6021165   0.7227780
6-24 months   ki1135781-COHORTS           GUATEMALA                      [151-155) cm_6-24 months   NA                   NA                0.6146789   0.5228939   0.7064639
6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         >=155 cm_6-24 months       NA                   NA                0.3313468   0.2994779   0.3632158
6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         <151 cm_6-24 months        NA                   NA                0.5508772   0.4930278   0.6087266
6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         [151-155) cm_6-24 months   NA                   NA                0.4870317   0.4343653   0.5396981
6-24 months   ki1148112-LCNI-5            MALAWI                         >=155 cm_6-24 months       NA                   NA                0.4549356   0.4096750   0.5001962
6-24 months   ki1148112-LCNI-5            MALAWI                         <151 cm_6-24 months        NA                   NA                0.7431193   0.6607185   0.8255200
6-24 months   ki1148112-LCNI-5            MALAWI                         [151-155) cm_6-24 months   NA                   NA                0.5789474   0.5001980   0.6576968
6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     >=155 cm_6-24 months       NA                   NA                0.0870787   0.0711640   0.1029933
6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     <151 cm_6-24 months        NA                   NA                0.2323887   0.2170457   0.2477317
6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     [151-155) cm_6-24 months   NA                   NA                0.1396292   0.1234431   0.1558153


### Parameter: RR


agecat        studyid                     country                        intXmhtcm                  intervention_level   baseline_level     estimate    ci_lower     ci_upper
------------  --------------------------  -----------------------------  -------------------------  -------------------  ---------------  ----------  ----------  -----------
0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     <151 cm_0-6 months         Control              Control           1.0000000   1.0000000    1.0000000
0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     <151 cm_0-6 months         LNS                  Control           0.7325581   0.2430765    2.2077059
0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     <151 cm_0-6 months         Other                Control           0.6666667   0.2264248    1.9628787
0-6 months    ki1000111-WASH-Kenya        KENYA                          >=155 cm_0-6 months        Control              Control           1.0000000   1.0000000    1.0000000
0-6 months    ki1000111-WASH-Kenya        KENYA                          >=155 cm_0-6 months        LNS                  Control           0.0000000   0.0000000    0.0000001
0-6 months    ki1000111-WASH-Kenya        KENYA                          >=155 cm_0-6 months        Other                Control           1.0909091   0.2182835    5.4520042
0-6 months    ki1000125-AgaKhanUniv       PAKISTAN                       >=155 cm_0-6 months        Control              Control           1.0000000   1.0000000    1.0000000
0-6 months    ki1000125-AgaKhanUniv       PAKISTAN                       >=155 cm_0-6 months        Maternal             Control           0.6590909   0.1303890    3.3315753
0-6 months    ki1000125-AgaKhanUniv       PAKISTAN                       <151 cm_0-6 months         Control              Control           1.0000000   1.0000000    1.0000000
0-6 months    ki1000125-AgaKhanUniv       PAKISTAN                       <151 cm_0-6 months         Maternal             Control           0.5000000   0.1525956    1.6383177
0-6 months    ki1000125-AgaKhanUniv       PAKISTAN                       [151-155) cm_0-6 months    Control              Control           1.0000000   1.0000000    1.0000000
0-6 months    ki1000125-AgaKhanUniv       PAKISTAN                       [151-155) cm_0-6 months    Maternal             Control           0.6666667   0.1891710    2.3494319
0-6 months    ki1000304b-SAS-CompFeed     INDIA                          >=155 cm_0-6 months        Control              Control           1.0000000   1.0000000    1.0000000
0-6 months    ki1000304b-SAS-CompFeed     INDIA                          >=155 cm_0-6 months        Other                Control           0.8898776   0.5573551    1.4207858
0-6 months    ki1000304b-SAS-CompFeed     INDIA                          <151 cm_0-6 months         Control              Control           1.0000000   1.0000000    1.0000000
0-6 months    ki1000304b-SAS-CompFeed     INDIA                          <151 cm_0-6 months         Other                Control           1.0482414   0.7154002    1.5359375
0-6 months    ki1000304b-SAS-CompFeed     INDIA                          [151-155) cm_0-6 months    Control              Control           1.0000000   1.0000000    1.0000000
0-6 months    ki1000304b-SAS-CompFeed     INDIA                          [151-155) cm_0-6 months    Other                Control           1.1701455   0.5285513    2.5905535
0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          >=155 cm_0-6 months        Control              Control           1.0000000   1.0000000    1.0000000
0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          >=155 cm_0-6 months        Other                Control           1.4863388   0.4864323    4.5416456
0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          <151 cm_0-6 months         Control              Control           1.0000000   1.0000000    1.0000000
0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          <151 cm_0-6 months         Other                Control           1.0102249   0.7351585    1.3882101
0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          [151-155) cm_0-6 months    Control              Control           1.0000000   1.0000000    1.0000000
0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          [151-155) cm_0-6 months    Other                Control           0.7604938   0.4113626    1.4059393
0-6 months    ki1017093b-PROVIDE          BANGLADESH                     >=155 cm_0-6 months        Control              Control           1.0000000   1.0000000    1.0000000
0-6 months    ki1017093b-PROVIDE          BANGLADESH                     >=155 cm_0-6 months        Other                Control           2.6600000   0.3359089   21.0640459
0-6 months    ki1017093b-PROVIDE          BANGLADESH                     <151 cm_0-6 months         Control              Control           1.0000000   1.0000000    1.0000000
0-6 months    ki1017093b-PROVIDE          BANGLADESH                     <151 cm_0-6 months         Other                Control           0.8445532   0.5234813    1.3625515
0-6 months    ki1017093b-PROVIDE          BANGLADESH                     [151-155) cm_0-6 months    Control              Control           1.0000000   1.0000000    1.0000000
0-6 months    ki1017093b-PROVIDE          BANGLADESH                     [151-155) cm_0-6 months    Other                Control           0.9086957   0.3062596    2.6961696
0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   >=155 cm_0-6 months        Control              Control           1.0000000   1.0000000    1.0000000
0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   >=155 cm_0-6 months        Other                Control           0.6081524   0.2937511    1.2590570
0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   >=155 cm_0-6 months        Zinc                 Control           1.0440109   0.6124244    1.7797441
0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   <151 cm_0-6 months         Control              Control           1.0000000   1.0000000    1.0000000
0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   <151 cm_0-6 months         Other                Control           1.2380952   0.5431352    2.8222804
0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   <151 cm_0-6 months         Zinc                 Control           1.0476190   0.5049384    2.1735437
0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   [151-155) cm_0-6 months    Control              Control           1.0000000   1.0000000    1.0000000
0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   [151-155) cm_0-6 months    Other                Control           0.9527559   0.4450260    2.0397547
0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   [151-155) cm_0-6 months    Zinc                 Control           0.8402778   0.4218899    1.6735807
0-6 months    ki1112895-Guatemala BSC     GUATEMALA                      >=155 cm_0-6 months        Control              Control           1.0000000   1.0000000    1.0000000
0-6 months    ki1112895-Guatemala BSC     GUATEMALA                      >=155 cm_0-6 months        Other                Control           2.7142857   0.5620492   13.1080107
0-6 months    ki1112895-Guatemala BSC     GUATEMALA                      <151 cm_0-6 months         Control              Control           1.0000000   1.0000000    1.0000000
0-6 months    ki1112895-Guatemala BSC     GUATEMALA                      <151 cm_0-6 months         Other                Control           0.5704918   0.3064400    1.0620705
0-6 months    ki1112895-Guatemala BSC     GUATEMALA                      [151-155) cm_0-6 months    Control              Control           1.0000000   1.0000000    1.0000000
0-6 months    ki1112895-Guatemala BSC     GUATEMALA                      [151-155) cm_0-6 months    Other                Control           0.7142857   0.1996172    2.5559120
0-6 months    ki1119695-PROBIT            BELARUS                        >=155 cm_0-6 months        Control              Control           1.0000000   1.0000000    1.0000000
0-6 months    ki1119695-PROBIT            BELARUS                        >=155 cm_0-6 months        Maternal             Control           0.8931997   0.6192563    1.2883289
0-6 months    ki1119695-PROBIT            BELARUS                        <151 cm_0-6 months         Control              Control           1.0000000   1.0000000    1.0000000
0-6 months    ki1119695-PROBIT            BELARUS                        <151 cm_0-6 months         Maternal             Control           1.5585938   0.5605049    4.3339754
0-6 months    ki1119695-PROBIT            BELARUS                        [151-155) cm_0-6 months    Control              Control           1.0000000   1.0000000    1.0000000
0-6 months    ki1119695-PROBIT            BELARUS                        [151-155) cm_0-6 months    Maternal             Control           1.0877919   0.5817933    2.0338688
0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       >=155 cm_0-6 months        Control              Control           1.0000000   1.0000000    1.0000000
0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       >=155 cm_0-6 months        VitA                 Control           0.9876623   0.8648329    1.1279368
0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       <151 cm_0-6 months         Control              Control           1.0000000   1.0000000    1.0000000
0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       <151 cm_0-6 months         VitA                 Control           1.0039565   0.7329428    1.3751805
0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       [151-155) cm_0-6 months    Control              Control           1.0000000   1.0000000    1.0000000
0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       [151-155) cm_0-6 months    VitA                 Control           1.1921708   0.9105771    1.5608466
0-6 months    ki1135781-COHORTS           GUATEMALA                      >=155 cm_0-6 months        Control              Control           1.0000000   1.0000000    1.0000000
0-6 months    ki1135781-COHORTS           GUATEMALA                      >=155 cm_0-6 months        Other                Control           0.5037037   0.1548004    1.6389969
0-6 months    ki1135781-COHORTS           GUATEMALA                      <151 cm_0-6 months         Control              Control           1.0000000   1.0000000    1.0000000
0-6 months    ki1135781-COHORTS           GUATEMALA                      <151 cm_0-6 months         Other                Control           0.9586685   0.6595603    1.3934212
0-6 months    ki1135781-COHORTS           GUATEMALA                      [151-155) cm_0-6 months    Control              Control           1.0000000   1.0000000    1.0000000
0-6 months    ki1135781-COHORTS           GUATEMALA                      [151-155) cm_0-6 months    Other                Control           0.5600000   0.1896989    1.6531460
0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         >=155 cm_0-6 months        Control              Control           1.0000000   1.0000000    1.0000000
0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         >=155 cm_0-6 months        LNS                  Control           1.0768421   0.7100856    1.6330268
0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         <151 cm_0-6 months         Control              Control           1.0000000   1.0000000    1.0000000
0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         <151 cm_0-6 months         LNS                  Control           0.8032520   0.5472129    1.1790910
0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         [151-155) cm_0-6 months    Control              Control           1.0000000   1.0000000    1.0000000
0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         [151-155) cm_0-6 months    LNS                  Control           0.8667712   0.5973683    1.2576701
0-6 months    ki1148112-LCNI-5            MALAWI                         >=155 cm_0-6 months        Control              Control           1.0000000   1.0000000    1.0000000
0-6 months    ki1148112-LCNI-5            MALAWI                         >=155 cm_0-6 months        LNS                  Control           0.8494118   0.4366434    1.6523791
0-6 months    ki1148112-LCNI-5            MALAWI                         >=155 cm_0-6 months        Other                Control           1.1000000   0.5295171    2.2851010
0-6 months    ki1148112-LCNI-5            MALAWI                         <151 cm_0-6 months         Control              Control           1.0000000   1.0000000    1.0000000
0-6 months    ki1148112-LCNI-5            MALAWI                         <151 cm_0-6 months         LNS                  Control           1.1111111   0.5222862    2.3637765
0-6 months    ki1148112-LCNI-5            MALAWI                         <151 cm_0-6 months         Other                Control           1.2000000   0.5333533    2.6998988
0-6 months    ki1148112-LCNI-5            MALAWI                         [151-155) cm_0-6 months    Control              Control           1.0000000   1.0000000    1.0000000
0-6 months    ki1148112-LCNI-5            MALAWI                         [151-155) cm_0-6 months    LNS                  Control           0.9142857   0.5161247    1.6196053
0-6 months    ki1148112-LCNI-5            MALAWI                         [151-155) cm_0-6 months    Other                Control           1.1764706   0.6482661    2.1350539
0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     >=155 cm_0-6 months        Control              Control           1.0000000   1.0000000    1.0000000
0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     >=155 cm_0-6 months        Maternal             Control           0.8033377   0.6268060    1.0295872
0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     <151 cm_0-6 months         Control              Control           1.0000000   1.0000000    1.0000000
0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     <151 cm_0-6 months         Maternal             Control           0.8648939   0.8119601    0.9212786
0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     [151-155) cm_0-6 months    Control              Control           1.0000000   1.0000000    1.0000000
0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     [151-155) cm_0-6 months    Maternal             Control           0.8316368   0.7289620    0.9487734
6-24 months   iLiNS-Zinc_ZvLNS            BURKINA FASO                   >=155 cm_6-24 months       Control              Control           1.0000000   1.0000000    1.0000000
6-24 months   iLiNS-Zinc_ZvLNS            BURKINA FASO                   >=155 cm_6-24 months       Zinc                 Control           1.0409738   0.7213696    1.5021792
6-24 months   iLiNS-Zinc_ZvLNS            BURKINA FASO                   <151 cm_6-24 months        Control              Control           1.0000000   1.0000000    1.0000000
6-24 months   iLiNS-Zinc_ZvLNS            BURKINA FASO                   <151 cm_6-24 months        Zinc                 Control           1.0893617   0.6232807    1.9039717
6-24 months   iLiNS-Zinc_ZvLNS            BURKINA FASO                   [151-155) cm_6-24 months   Control              Control           1.0000000   1.0000000    1.0000000
6-24 months   iLiNS-Zinc_ZvLNS            BURKINA FASO                   [151-155) cm_6-24 months   Zinc                 Control           0.8111111   0.5936488    1.1082331
6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     >=155 cm_6-24 months       Control              Control           1.0000000   1.0000000    1.0000000
6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     >=155 cm_6-24 months       LNS                  Control           0.7269231   0.5116024    1.0328669
6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     >=155 cm_6-24 months       Other                Control           0.9095339   0.6898890    1.1991088
6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     <151 cm_6-24 months        Control              Control           1.0000000   1.0000000    1.0000000
6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     <151 cm_6-24 months        LNS                  Control           0.8704714   0.7711927    0.9825308
6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     <151 cm_6-24 months        Other                Control           0.9945114   0.9004369    1.0984144
6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     [151-155) cm_6-24 months   Control              Control           1.0000000   1.0000000    1.0000000
6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     [151-155) cm_6-24 months   LNS                  Control           0.7419748   0.5780384    0.9524048
6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     [151-155) cm_6-24 months   Other                Control           1.1006888   0.9127817    1.3272788
6-24 months   ki1000111-WASH-Kenya        KENYA                          >=155 cm_6-24 months       Control              Control           1.0000000   1.0000000    1.0000000
6-24 months   ki1000111-WASH-Kenya        KENYA                          >=155 cm_6-24 months       LNS                  Control           0.8643281   0.7437543    1.0044486
6-24 months   ki1000111-WASH-Kenya        KENYA                          >=155 cm_6-24 months       Other                Control           1.0998884   0.9806476    1.2336281
6-24 months   ki1000111-WASH-Kenya        KENYA                          <151 cm_6-24 months        Control              Control           1.0000000   1.0000000    1.0000000
6-24 months   ki1000111-WASH-Kenya        KENYA                          <151 cm_6-24 months        LNS                  Control           0.8465608   0.6032972    1.1879141
6-24 months   ki1000111-WASH-Kenya        KENYA                          <151 cm_6-24 months        Other                Control           1.0509554   0.8106066    1.3625688
6-24 months   ki1000111-WASH-Kenya        KENYA                          [151-155) cm_6-24 months   Control              Control           1.0000000   1.0000000    1.0000000
6-24 months   ki1000111-WASH-Kenya        KENYA                          [151-155) cm_6-24 months   LNS                  Control           0.8543385   0.6660185    1.0959070
6-24 months   ki1000111-WASH-Kenya        KENYA                          [151-155) cm_6-24 months   Other                Control           0.9951857   0.8202587    1.2074173
6-24 months   ki1000304b-SAS-CompFeed     INDIA                          >=155 cm_6-24 months       Control              Control           1.0000000   1.0000000    1.0000000
6-24 months   ki1000304b-SAS-CompFeed     INDIA                          >=155 cm_6-24 months       Other                Control           1.1378810   0.7001354    1.8493182
6-24 months   ki1000304b-SAS-CompFeed     INDIA                          <151 cm_6-24 months        Control              Control           1.0000000   1.0000000    1.0000000
6-24 months   ki1000304b-SAS-CompFeed     INDIA                          <151 cm_6-24 months        Other                Control           0.8095238   0.6003338    1.0916074
6-24 months   ki1000304b-SAS-CompFeed     INDIA                          [151-155) cm_6-24 months   Control              Control           1.0000000   1.0000000    1.0000000
6-24 months   ki1000304b-SAS-CompFeed     INDIA                          [151-155) cm_6-24 months   Other                Control           0.9572826   0.6066471    1.5105815
6-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          >=155 cm_6-24 months       Control              Control           1.0000000   1.0000000    1.0000000
6-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          >=155 cm_6-24 months       Other                Control           0.6918605   0.3833745    1.2485726
6-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          <151 cm_6-24 months        Control              Control           1.0000000   1.0000000    1.0000000
6-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          <151 cm_6-24 months        Other                Control           0.7783145   0.6036961    1.0034412
6-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          [151-155) cm_6-24 months   Control              Control           1.0000000   1.0000000    1.0000000
6-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          [151-155) cm_6-24 months   Other                Control           1.0344828   0.7131752    1.5005494
6-24 months   ki1017093b-PROVIDE          BANGLADESH                     <151 cm_6-24 months        Control              Control           1.0000000   1.0000000    1.0000000
6-24 months   ki1017093b-PROVIDE          BANGLADESH                     <151 cm_6-24 months        Other                Control           0.8413043   0.3942561    1.7952621
6-24 months   ki1017093b-PROVIDE          BANGLADESH                     [151-155) cm_6-24 months   Control              Control           1.0000000   1.0000000    1.0000000
6-24 months   ki1017093b-PROVIDE          BANGLADESH                     [151-155) cm_6-24 months   Other                Control           0.5223881   0.1350835    2.0201525
6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   >=155 cm_6-24 months       Control              Control           1.0000000   1.0000000    1.0000000
6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   >=155 cm_6-24 months       Other                Control           1.0685921   0.7028771    1.6245926
6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   >=155 cm_6-24 months       Zinc                 Control           1.1382506   0.7961870    1.6272740
6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   <151 cm_6-24 months        Control              Control           1.0000000   1.0000000    1.0000000
6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   <151 cm_6-24 months        Other                Control           0.6034483   0.3472414    1.0486936
6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   <151 cm_6-24 months        Zinc                 Control           0.7894737   0.5296963    1.1766530
6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   [151-155) cm_6-24 months   Control              Control           1.0000000   1.0000000    1.0000000
6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   [151-155) cm_6-24 months   Other                Control           0.9368132   0.5518718    1.5902586
6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   [151-155) cm_6-24 months   Zinc                 Control           1.0721805   0.6814284    1.6870018
6-24 months   ki1112895-Guatemala BSC     GUATEMALA                      >=155 cm_6-24 months       Control              Control           1.0000000   1.0000000    1.0000000
6-24 months   ki1112895-Guatemala BSC     GUATEMALA                      >=155 cm_6-24 months       Other                Control           2.7000000   0.5220758   13.9634883
6-24 months   ki1112895-Guatemala BSC     GUATEMALA                      <151 cm_6-24 months        Control              Control           1.0000000   1.0000000    1.0000000
6-24 months   ki1112895-Guatemala BSC     GUATEMALA                      <151 cm_6-24 months        Other                Control           1.6871036   0.9145036    3.1124193
6-24 months   ki1112895-Guatemala BSC     GUATEMALA                      [151-155) cm_6-24 months   Control              Control           1.0000000   1.0000000    1.0000000
6-24 months   ki1112895-Guatemala BSC     GUATEMALA                      [151-155) cm_6-24 months   Other                Control           0.5434783   0.1987370    1.4862285
6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   >=155 cm_6-24 months       Control              Control           1.0000000   1.0000000    1.0000000
6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   >=155 cm_6-24 months       LNS                  Control           0.8057345   0.6194302    1.0480731
6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   <151 cm_6-24 months        Control              Control           1.0000000   1.0000000    1.0000000
6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   <151 cm_6-24 months        LNS                  Control           1.1555556   0.6885733    1.9392398
6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   [151-155) cm_6-24 months   Control              Control           1.0000000   1.0000000    1.0000000
6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   [151-155) cm_6-24 months   LNS                  Control           1.1475410   0.6015660    2.1890372
6-24 months   ki1119695-PROBIT            BELARUS                        >=155 cm_6-24 months       Control              Control           1.0000000   1.0000000    1.0000000
6-24 months   ki1119695-PROBIT            BELARUS                        >=155 cm_6-24 months       Maternal             Control           0.8479862   0.5855808    1.2279782
6-24 months   ki1119695-PROBIT            BELARUS                        <151 cm_6-24 months        Control              Control           1.0000000   1.0000000    1.0000000
6-24 months   ki1119695-PROBIT            BELARUS                        <151 cm_6-24 months        Maternal             Control           1.3674419   0.3935555    4.7512925
6-24 months   ki1119695-PROBIT            BELARUS                        [151-155) cm_6-24 months   Control              Control           1.0000000   1.0000000    1.0000000
6-24 months   ki1119695-PROBIT            BELARUS                        [151-155) cm_6-24 months   Maternal             Control           1.0005308   0.4421177    2.2642430
6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       >=155 cm_6-24 months       Control              Control           1.0000000   1.0000000    1.0000000
6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       >=155 cm_6-24 months       VitA                 Control           0.9721873   0.8588333    1.1005024
6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       <151 cm_6-24 months        Control              Control           1.0000000   1.0000000    1.0000000
6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       <151 cm_6-24 months        VitA                 Control           1.1389881   0.8054580    1.6106288
6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       [151-155) cm_6-24 months   Control              Control           1.0000000   1.0000000    1.0000000
6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       [151-155) cm_6-24 months   VitA                 Control           1.1138614   0.8457915    1.4668948
6-24 months   ki1135781-COHORTS           GUATEMALA                      >=155 cm_6-24 months       Control              Control           1.0000000   1.0000000    1.0000000
6-24 months   ki1135781-COHORTS           GUATEMALA                      >=155 cm_6-24 months       Other                Control           0.5882353   0.3528072    0.9807643
6-24 months   ki1135781-COHORTS           GUATEMALA                      <151 cm_6-24 months        Control              Control           1.0000000   1.0000000    1.0000000
6-24 months   ki1135781-COHORTS           GUATEMALA                      <151 cm_6-24 months        Other                Control           0.8473214   0.7053100    1.0179263
6-24 months   ki1135781-COHORTS           GUATEMALA                      [151-155) cm_6-24 months   Control              Control           1.0000000   1.0000000    1.0000000
6-24 months   ki1135781-COHORTS           GUATEMALA                      [151-155) cm_6-24 months   Other                Control           0.7926471   0.5894019    1.0659778
6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         >=155 cm_6-24 months       Control              Control           1.0000000   1.0000000    1.0000000
6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         >=155 cm_6-24 months       LNS                  Control           1.1751530   0.8844597    1.5613877
6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         <151 cm_6-24 months        Control              Control           1.0000000   1.0000000    1.0000000
6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         <151 cm_6-24 months        LNS                  Control           0.9565678   0.7306931    1.2522657
6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         [151-155) cm_6-24 months   Control              Control           1.0000000   1.0000000    1.0000000
6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         [151-155) cm_6-24 months   LNS                  Control           0.9494699   0.7212682    1.2498722
6-24 months   ki1148112-LCNI-5            MALAWI                         >=155 cm_6-24 months       Control              Control           1.0000000   1.0000000    1.0000000
6-24 months   ki1148112-LCNI-5            MALAWI                         >=155 cm_6-24 months       LNS                  Control           1.2613668   0.9665709    1.6460730
6-24 months   ki1148112-LCNI-5            MALAWI                         >=155 cm_6-24 months       Other                Control           1.2977366   0.9610836    1.7523140
6-24 months   ki1148112-LCNI-5            MALAWI                         <151 cm_6-24 months        Control              Control           1.0000000   1.0000000    1.0000000
6-24 months   ki1148112-LCNI-5            MALAWI                         <151 cm_6-24 months        LNS                  Control           0.8509091   0.6643852    1.0897989
6-24 months   ki1148112-LCNI-5            MALAWI                         <151 cm_6-24 months        Other                Control           0.8800000   0.6640214    1.1662276
6-24 months   ki1148112-LCNI-5            MALAWI                         [151-155) cm_6-24 months   Control              Control           1.0000000   1.0000000    1.0000000
6-24 months   ki1148112-LCNI-5            MALAWI                         [151-155) cm_6-24 months   LNS                  Control           0.9090909   0.6595693    1.2530091
6-24 months   ki1148112-LCNI-5            MALAWI                         [151-155) cm_6-24 months   Other                Control           0.8750000   0.5983937    1.2794670
6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     >=155 cm_6-24 months       Control              Control           1.0000000   1.0000000    1.0000000
6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     >=155 cm_6-24 months       Maternal             Control           1.1447606   0.7935117    1.6514903
6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     <151 cm_6-24 months        Control              Control           1.0000000   1.0000000    1.0000000
6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     <151 cm_6-24 months        Maternal             Control           1.0018928   0.8774872    1.1439360
6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     [151-155) cm_6-24 months   Control              Control           1.0000000   1.0000000    1.0000000
6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     [151-155) cm_6-24 months   Maternal             Control           0.9812814   0.7778855    1.2378597


### Parameter: PAR


agecat        studyid                     country                        intXmhtcm                  intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  --------------------------  -----------------------------  -------------------------  -------------------  ---------------  -----------  -----------  -----------
0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     <151 cm_0-6 months         Control              NA                -0.0570048   -0.2308127    0.1168030
0-6 months    ki1000111-WASH-Kenya        KENYA                          >=155 cm_0-6 months        Control              NA                -0.0241546   -0.1454567    0.0971475
0-6 months    ki1000125-AgaKhanUniv       PAKISTAN                       >=155 cm_0-6 months        Control              NA                -0.0202840   -0.0962461    0.0556781
0-6 months    ki1000125-AgaKhanUniv       PAKISTAN                       <151 cm_0-6 months         Control              NA                -0.1363636   -0.3632479    0.0905206
0-6 months    ki1000125-AgaKhanUniv       PAKISTAN                       [151-155) cm_0-6 months    Control              NA                -0.0833333   -0.3547208    0.1880541
0-6 months    ki1000304b-SAS-CompFeed     INDIA                          >=155 cm_0-6 months        Control              NA                -0.0122222   -0.0585227    0.0340782
0-6 months    ki1000304b-SAS-CompFeed     INDIA                          <151 cm_0-6 months         Control              NA                 0.0111944   -0.0792299    0.1016187
0-6 months    ki1000304b-SAS-CompFeed     INDIA                          [151-155) cm_0-6 months    Control              NA                 0.0217673   -0.0852427    0.1287773
0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          >=155 cm_0-6 months        Control              NA                 0.0671192   -0.1000866    0.2343249
0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          <151 cm_0-6 months         Control              NA                 0.0035885   -0.1082532    0.1154302
0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          [151-155) cm_0-6 months    Control              NA                -0.0635649   -0.2146755    0.0875458
0-6 months    ki1017093b-PROVIDE          BANGLADESH                     >=155 cm_0-6 months        Control              NA                 0.0316552   -0.0203401    0.0836505
0-6 months    ki1017093b-PROVIDE          BANGLADESH                     <151 cm_0-6 months         Control              NA                -0.0243295   -0.0959056    0.0472466
0-6 months    ki1017093b-PROVIDE          BANGLADESH                     [151-155) cm_0-6 months    Control              NA                -0.0072239   -0.0912356    0.0767878
0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   >=155 cm_0-6 months        Control              NA                -0.0039247   -0.0239506    0.0161013
0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   <151 cm_0-6 months         Control              NA                 0.0092445   -0.0536464    0.0721353
0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   [151-155) cm_0-6 months    Control              NA                -0.0088374   -0.0542446    0.0365698
0-6 months    ki1112895-Guatemala BSC     GUATEMALA                      >=155 cm_0-6 months        Control              NA                 0.0765550   -0.0454396    0.1985497
0-6 months    ki1112895-Guatemala BSC     GUATEMALA                      <151 cm_0-6 months         Control              NA                -0.0759200   -0.1582642    0.0064241
0-6 months    ki1112895-Guatemala BSC     GUATEMALA                      [151-155) cm_0-6 months    Control              NA                -0.0333333   -0.1621074    0.0954407
0-6 months    ki1119695-PROBIT            BELARUS                        >=155 cm_0-6 months        Control              NA                -0.0034444   -0.0146817    0.0077930
0-6 months    ki1119695-PROBIT            BELARUS                        <151 cm_0-6 months         Control              NA                 0.0414673   -0.0551894    0.1381241
0-6 months    ki1119695-PROBIT            BELARUS                        [151-155) cm_0-6 months    Control              NA                 0.0042144   -0.0270390    0.0354679
0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       >=155 cm_0-6 months        Control              NA                -0.0014880   -0.0174545    0.0144786
0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       <151 cm_0-6 months         Control              NA                 0.0009135   -0.0718015    0.0736284
0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       [151-155) cm_0-6 months    Control              NA                 0.0292419   -0.0134683    0.0719521
0-6 months    ki1135781-COHORTS           GUATEMALA                      >=155 cm_0-6 months        Control              NA                -0.0895722   -0.2490895    0.0699452
0-6 months    ki1135781-COHORTS           GUATEMALA                      <151 cm_0-6 months         Control              NA                -0.0077994   -0.0769378    0.0613390
0-6 months    ki1135781-COHORTS           GUATEMALA                      [151-155) cm_0-6 months    Control              NA                -0.0592992   -0.1657127    0.0471143
0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         >=155 cm_0-6 months        Control              NA                 0.0142072   -0.0635713    0.0919856
0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         <151 cm_0-6 months         Control              NA                -0.0762926   -0.2193528    0.0667677
0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         [151-155) cm_0-6 months    Control              NA                -0.0421627   -0.1565376    0.0722122
0-6 months    ki1148112-LCNI-5            MALAWI                         >=155 cm_0-6 months        Control              NA                -0.0147107   -0.1367625    0.1073411
0-6 months    ki1148112-LCNI-5            MALAWI                         <151 cm_0-6 months         Control              NA                 0.0526316   -0.2164198    0.3216830
0-6 months    ki1148112-LCNI-5            MALAWI                         [151-155) cm_0-6 months    Control              NA                 0.0000000   -0.1875321    0.1875321
0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     >=155 cm_0-6 months        Control              NA                -0.0130173   -0.0276662    0.0016316
0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     <151 cm_0-6 months         Control              NA                -0.0234667   -0.0338595   -0.0130738
0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     [151-155) cm_0-6 months    Control              NA                -0.0173539   -0.0298439   -0.0048638
6-24 months   iLiNS-Zinc_ZvLNS            BURKINA FASO                   >=155 cm_6-24 months       Control              NA                 0.0086148   -0.0707893    0.0880189
6-24 months   iLiNS-Zinc_ZvLNS            BURKINA FASO                   <151 cm_6-24 months        Control              NA                 0.0416667   -0.2246511    0.3079844
6-24 months   iLiNS-Zinc_ZvLNS            BURKINA FASO                   [151-155) cm_6-24 months   Control              NA                -0.0928962   -0.2301402    0.0443479
6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     >=155 cm_6-24 months       Control              NA                -0.0277355   -0.0738782    0.0184072
6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     <151 cm_6-24 months        Control              NA                -0.0179117   -0.0536773    0.0178539
6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     [151-155) cm_6-24 months   Control              NA                -0.0042463   -0.0476368    0.0391441
6-24 months   ki1000111-WASH-Kenya        KENYA                          >=155 cm_6-24 months       Control              NA                 0.0030925   -0.0123555    0.0185404
6-24 months   ki1000111-WASH-Kenya        KENYA                          <151 cm_6-24 months        Control              NA                -0.0060253   -0.0855978    0.0735472
6-24 months   ki1000111-WASH-Kenya        KENYA                          [151-155) cm_6-24 months   Control              NA                -0.0134046   -0.0593361    0.0325269
6-24 months   ki1000304b-SAS-CompFeed     INDIA                          >=155 cm_6-24 months       Control              NA                 0.0238095   -0.0676034    0.1152225
6-24 months   ki1000304b-SAS-CompFeed     INDIA                          <151 cm_6-24 months        Control              NA                -0.0571429   -0.1391475    0.0248618
6-24 months   ki1000304b-SAS-CompFeed     INDIA                          [151-155) cm_6-24 months   Control              NA                -0.0103776   -0.1211460    0.1003908
6-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          >=155 cm_6-24 months       Control              NA                -0.1328321   -0.3601852    0.0945211
6-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          <151 cm_6-24 months        Control              NA                -0.1294671   -0.2645097    0.0055755
6-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          [151-155) cm_6-24 months   Control              NA                 0.0175439   -0.1731401    0.2082278
6-24 months   ki1017093b-PROVIDE          BANGLADESH                     <151 cm_6-24 months        Control              NA                -0.0214895   -0.1193054    0.0763263
6-24 months   ki1017093b-PROVIDE          BANGLADESH                     [151-155) cm_6-24 months   Control              NA                -0.0519481   -0.1764165    0.0725204
6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   >=155 cm_6-24 months       Control              NA                 0.0109731   -0.0222456    0.0441918
6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   <151 cm_6-24 months        Control              NA                -0.0812749   -0.1879905    0.0254407
6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   [151-155) cm_6-24 months   Control              NA                 0.0041677   -0.0701460    0.0784814
6-24 months   ki1112895-Guatemala BSC     GUATEMALA                      >=155 cm_6-24 months       Control              NA                 0.0674603   -0.0534706    0.1883912
6-24 months   ki1112895-Guatemala BSC     GUATEMALA                      <151 cm_6-24 months        Control              NA                 0.0910364   -0.0121837    0.1942565
6-24 months   ki1112895-Guatemala BSC     GUATEMALA                      [151-155) cm_6-24 months   Control              NA                -0.1105263   -0.2966542    0.0756016
6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   >=155 cm_6-24 months       Control              NA                -0.0519598   -0.1132021    0.0092825
6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   <151 cm_6-24 months        Control              NA                 0.0635264   -0.1570605    0.2841132
6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   [151-155) cm_6-24 months   Control              NA                 0.0600000   -0.2079439    0.3279439
6-24 months   ki1119695-PROBIT            BELARUS                        >=155 cm_6-24 months       Control              NA                -0.0049182   -0.0162558    0.0064195
6-24 months   ki1119695-PROBIT            BELARUS                        <151 cm_6-24 months        Control              NA                 0.0221289   -0.0756240    0.1198817
6-24 months   ki1119695-PROBIT            BELARUS                        [151-155) cm_6-24 months   Control              NA                 0.0000228   -0.0351208    0.0351665
6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       >=155 cm_6-24 months       Control              NA                -0.0041644   -0.0225946    0.0142658
6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       <151 cm_6-24 months        Control              NA                 0.0333143   -0.0525180    0.1191466
6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       [151-155) cm_6-24 months   Control              NA                 0.0213010   -0.0314146    0.0740166
6-24 months   ki1135781-COHORTS           GUATEMALA                      >=155 cm_6-24 months       Control              NA                -0.1435897   -0.2833302   -0.0038493
6-24 months   ki1135781-COHORTS           GUATEMALA                      <151 cm_6-24 months        Control              NA                -0.0555015   -0.1165286    0.0055257
6-24 months   ki1135781-COHORTS           GUATEMALA                      [151-155) cm_6-24 months   Control              NA                -0.0791987   -0.1797997    0.0214024
6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         >=155 cm_6-24 months       Control              NA                 0.0424580   -0.0281451    0.1130610
6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         <151 cm_6-24 months        Control              NA                -0.0205514   -0.1469964    0.1058936
6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         [151-155) cm_6-24 months   Control              NA                -0.0211650   -0.1352218    0.0928917
6-24 months   ki1148112-LCNI-5            MALAWI                         >=155 cm_6-24 months       Control              NA                 0.0767844    0.0008201    0.1527486
6-24 months   ki1148112-LCNI-5            MALAWI                         <151 cm_6-24 months        Control              NA                -0.0902141   -0.2293043    0.0488762
6-24 months   ki1148112-LCNI-5            MALAWI                         [151-155) cm_6-24 months   Control              NA                -0.0496241   -0.1914579    0.0922098
6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     >=155 cm_6-24 months       Control              NA                 0.0059417   -0.0101635    0.0220469
6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     <151 cm_6-24 months        Control              NA                 0.0002286   -0.0157961    0.0162533
6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     [151-155) cm_6-24 months   Control              NA                -0.0013557   -0.0180356    0.0153242


### Parameter: PAF


agecat        studyid                     country                        intXmhtcm                  intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  --------------------------  -----------------------------  -------------------------  -------------------  ---------------  -----------  -----------  -----------
0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     <151 cm_0-6 months         Control              NA                -0.3450292   -1.9305638    0.3826773
0-6 months    ki1000111-WASH-Kenya        KENYA                          >=155 cm_0-6 months        Control              NA                -0.2777778   -2.7700336    0.5669227
0-6 months    ki1000125-AgaKhanUniv       PAKISTAN                       >=155 cm_0-6 months        Control              NA                -0.1724138   -1.0176985    0.3187515
0-6 months    ki1000125-AgaKhanUniv       PAKISTAN                       <151 cm_0-6 months         Control              NA                -0.3750000   -1.1967406    0.1393499
0-6 months    ki1000125-AgaKhanUniv       PAKISTAN                       [151-155) cm_0-6 months    Control              NA                -0.2857143   -1.6533631    0.3769940
0-6 months    ki1000304b-SAS-CompFeed     INDIA                          >=155 cm_0-6 months        Control              NA                -0.0628571   -0.3418240    0.1581122
0-6 months    ki1000304b-SAS-CompFeed     INDIA                          <151 cm_0-6 months         Control              NA                 0.0256201   -0.2079518    0.2140281
0-6 months    ki1000304b-SAS-CompFeed     INDIA                          [151-155) cm_0-6 months    Control              NA                 0.0865508   -0.4653806    0.4305989
0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          >=155 cm_0-6 months        Control              NA                 0.2755418   -0.8567711    0.7173374
0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          <151 cm_0-6 months         Control              NA                 0.0075188   -0.2567951    0.2162454
0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          [151-155) cm_0-6 months    Control              NA                -0.2165179   -0.8573265    0.2032011
0-6 months    ki1017093b-PROVIDE          BANGLADESH                     >=155 cm_0-6 months        Control              NA                 0.5460526   -1.7778838    0.9258183
0-6 months    ki1017093b-PROVIDE          BANGLADESH                     <151 cm_0-6 months         Control              NA                -0.1302564   -0.5857146    0.1943824
0-6 months    ki1017093b-PROVIDE          BANGLADESH                     [151-155) cm_0-6 months    Control              NA                -0.0736842   -1.3837644    0.5163961
0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   >=155 cm_0-6 months        Control              NA                -0.0788913   -0.5662946    0.2568406
0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   <151 cm_0-6 months         Control              NA                 0.0741758   -0.5962144    0.4630105
0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   [151-155) cm_0-6 months    Control              NA                -0.0978282   -0.7343578    0.3050876
0-6 months    ki1112895-Guatemala BSC     GUATEMALA                      >=155 cm_0-6 months        Control              NA                 0.4210526   -0.6768556    0.8001139
0-6 months    ki1112895-Guatemala BSC     GUATEMALA                      <151 cm_0-6 months         Control              NA                -0.2823276   -0.6273700   -0.0104426
0-6 months    ki1112895-Guatemala BSC     GUATEMALA                      [151-155) cm_0-6 months    Control              NA                -0.2000000   -1.2741158    0.3667869
0-6 months    ki1119695-PROBIT            BELARUS                        >=155 cm_0-6 months        Control              NA                -0.0575941   -0.2618270    0.1135826
0-6 months    ki1119695-PROBIT            BELARUS                        <151 cm_0-6 months         Control              NA                 0.2280702   -0.4863196    0.5990932
0-6 months    ki1119695-PROBIT            BELARUS                        [151-155) cm_0-6 months    Control              NA                 0.0436251   -0.3395234    0.3171804
0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       >=155 cm_0-6 months        Control              NA                -0.0093236   -0.1144965    0.0859244
0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       <151 cm_0-6 months         Control              NA                 0.0029347   -0.2603188    0.2112002
0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       [151-155) cm_0-6 months    Control              NA                 0.1275591   -0.0798363    0.2951217
0-6 months    ki1135781-COHORTS           GUATEMALA                      >=155 cm_0-6 months        Control              NA                -0.4379085   -1.4540854    0.1574943
0-6 months    ki1135781-COHORTS           GUATEMALA                      <151 cm_0-6 months         Control              NA                -0.0218603   -0.2352424    0.1546610
0-6 months    ki1135781-COHORTS           GUATEMALA                      [151-155) cm_0-6 months    Control              NA                -0.2619048   -0.8243716    0.1271495
0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         >=155 cm_0-6 months        Control              NA                 0.0619694   -0.3466836    0.3466161
0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         <151 cm_0-6 months         Control              NA                -0.1980360   -0.6342838    0.1217619
0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         [151-155) cm_0-6 months    Control              NA                -0.1202263   -0.4989574    0.1628135
0-6 months    ki1148112-LCNI-5            MALAWI                         >=155 cm_0-6 months        Control              NA                -0.0592105   -0.6841272    0.3338229
0-6 months    ki1148112-LCNI-5            MALAWI                         <151 cm_0-6 months         Control              NA                 0.0952381   -0.5512905    0.4723141
0-6 months    ki1148112-LCNI-5            MALAWI                         [151-155) cm_0-6 months    Control              NA                 0.0000000   -0.4550848    0.3127548
0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     >=155 cm_0-6 months        Control              NA                -0.1115927   -0.2452467    0.0077160
0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     <151 cm_0-6 months         Control              NA                -0.0726860   -0.1054617   -0.0408821
0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     [151-155) cm_0-6 months    Control              NA                -0.0933176   -0.1624919   -0.0282596
6-24 months   iLiNS-Zinc_ZvLNS            BURKINA FASO                   >=155 cm_6-24 months       Control              NA                 0.0300471   -0.2838013    0.2671695
6-24 months   iLiNS-Zinc_ZvLNS            BURKINA FASO                   <151 cm_6-24 months        Control              NA                 0.0625000   -0.4360983    0.3879902
6-24 months   iLiNS-Zinc_ZvLNS            BURKINA FASO                   [151-155) cm_6-24 months   Control              NA                -0.1619048   -0.4426970    0.0642369
6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     >=155 cm_6-24 months       Control              NA                -0.1265432   -0.3577820    0.0653142
6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     <151 cm_6-24 months        Control              NA                -0.0374914   -0.1151354    0.0347464
6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     [151-155) cm_6-24 months   Control              NA                -0.0133515   -0.1593911    0.1142926
6-24 months   ki1000111-WASH-Kenya        KENYA                          >=155 cm_6-24 months       Control              NA                 0.0141126   -0.0589646    0.0821468
6-24 months   ki1000111-WASH-Kenya        KENYA                          <151 cm_6-24 months        Control              NA                -0.0130802   -0.2014300    0.1457418
6-24 months   ki1000111-WASH-Kenya        KENYA                          [151-155) cm_6-24 months   Control              NA                -0.0357736   -0.1659121    0.0798389
6-24 months   ki1000304b-SAS-CompFeed     INDIA                          >=155 cm_6-24 months       Control              NA                 0.0714286   -0.2467982    0.3084327
6-24 months   ki1000304b-SAS-CompFeed     INDIA                          <151 cm_6-24 months        Control              NA                -0.1052632   -0.2819499    0.0470715
6-24 months   ki1000304b-SAS-CompFeed     INDIA                          [151-155) cm_6-24 months   Control              NA                -0.0226900   -0.2933050    0.1913007
6-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          >=155 cm_6-24 months       Control              NA                -0.3028571   -0.9514173    0.1301519
6-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          <151 cm_6-24 months        Control              NA                -0.1950874   -0.4241958   -0.0028353
6-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          [151-155) cm_6-24 months   Control              NA                 0.0256410   -0.2971151    0.2680870
6-24 months   ki1017093b-PROVIDE          BANGLADESH                     <151 cm_6-24 months        Control              NA                -0.1305903   -0.9109971    0.3311165
6-24 months   ki1017093b-PROVIDE          BANGLADESH                     [151-155) cm_6-24 months   Control              NA                -0.5714286   -2.6692136    0.3269981
6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   >=155 cm_6-24 months       Control              NA                 0.0787438   -0.1930737    0.2886333
6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   <151 cm_6-24 months        Control              NA                -0.2550000   -0.6394604    0.0393028
6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   [151-155) cm_6-24 months   Control              NA                 0.0181225   -0.3645268    0.2934669
6-24 months   ki1112895-Guatemala BSC     GUATEMALA                      >=155 cm_6-24 months       Control              NA                 0.3777778   -0.6986318    0.7720751
6-24 months   ki1112895-Guatemala BSC     GUATEMALA                      <151 cm_6-24 months        Control              NA                 0.2579365   -0.0978318    0.4984130
6-24 months   ki1112895-Guatemala BSC     GUATEMALA                      [151-155) cm_6-24 months   Control              NA                -0.3818182   -1.2063625    0.1345840
6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   >=155 cm_6-24 months       Control              NA                -0.1709895   -0.4165859    0.0320273
6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   <151 cm_6-24 months        Control              NA                 0.0991903   -0.3269748    0.3884902
6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   [151-155) cm_6-24 months   Control              NA                 0.1071429   -0.5349541    0.4806399
6-24 months   ki1119695-PROBIT            BELARUS                        >=155 cm_6-24 months       Control              NA                -0.0857231   -0.2944050    0.0893155
6-24 months   ki1119695-PROBIT            BELARUS                        <151 cm_6-24 months        Control              NA                 0.1567460   -0.7440382    0.5922811
6-24 months   ki1119695-PROBIT            BELARUS                        [151-155) cm_6-24 months   Control              NA                 0.0002759   -0.5286786    0.3462011
6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       >=155 cm_6-24 months       Control              NA                -0.0212167   -0.1195620    0.0684896
6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       <151 cm_6-24 months        Control              NA                 0.0928245   -0.1808269    0.3030584
6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       [151-155) cm_6-24 months   Control              NA                 0.0815190   -0.1440095    0.2625871
6-24 months   ki1135781-COHORTS           GUATEMALA                      >=155 cm_6-24 months       Control              NA                -0.3393939   -0.7284357   -0.0379189
6-24 months   ki1135781-COHORTS           GUATEMALA                      <151 cm_6-24 months        Control              NA                -0.0837825   -0.1810487    0.0054733
6-24 months   ki1135781-COHORTS           GUATEMALA                      [151-155) cm_6-24 months   Control              NA                -0.1288456   -0.3083444    0.0260268
6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         >=155 cm_6-24 months       Control              NA                 0.1281375   -0.1131748    0.3171385
6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         <151 cm_6-24 months        Control              NA                -0.0373066   -0.2942821    0.1686472
6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         [151-155) cm_6-24 months   Control              NA                -0.0434572   -0.3060640    0.1663480
6-24 months   ki1148112-LCNI-5            MALAWI                         >=155 cm_6-24 months       Control              NA                 0.1687807   -0.0165503    0.3203234
6-24 months   ki1148112-LCNI-5            MALAWI                         <151 cm_6-24 months        Control              NA                -0.1213992   -0.3282176    0.0532153
6-24 months   ki1148112-LCNI-5            MALAWI                         [151-155) cm_6-24 months   Control              NA                -0.0857143   -0.3612314    0.1340374
6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     >=155 cm_6-24 months       Control              NA                 0.0682337   -0.1357218    0.2355625
6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     <151 cm_6-24 months        Control              NA                 0.0009836   -0.0704147    0.0676196
6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     [151-155) cm_6-24 months   Control              NA                -0.0097093   -0.1364101    0.1028653
