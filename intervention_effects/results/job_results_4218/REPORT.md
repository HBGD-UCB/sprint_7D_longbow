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
* intXmage

## Data Summary

agecat      studyid                     country                        intXmage             stunted   n_cell       n
----------  --------------------------  -----------------------------  ------------------  --------  -------  ------
Birth       iLiNS_DYADM_LNS             MALAWI                         <25_Birth                  0        0       1
Birth       iLiNS_DYADM_LNS             MALAWI                         <25_Birth                  1        1       1
Birth       ki1000125-AgaKhanUniv       PAKISTAN                       <25_Birth                  0        1       1
Birth       ki1000125-AgaKhanUniv       PAKISTAN                       <25_Birth                  1        0       1
Birth       ki1000125-AgaKhanUniv       PAKISTAN                       [25-30)_Birth              0        1       1
Birth       ki1000125-AgaKhanUniv       PAKISTAN                       [25-30)_Birth              1        0       1
Birth       ki1000125-AgaKhanUniv       PAKISTAN                       >=30_Birth                 0        2       2
Birth       ki1000125-AgaKhanUniv       PAKISTAN                       >=30_Birth                 1        0       2
Birth       ki1000304b-SAS-CompFeed     INDIA                          <25_Birth                  0       60      85
Birth       ki1000304b-SAS-CompFeed     INDIA                          <25_Birth                  1       25      85
Birth       ki1000304b-SAS-CompFeed     INDIA                          [25-30)_Birth              0       29      40
Birth       ki1000304b-SAS-CompFeed     INDIA                          [25-30)_Birth              1       11      40
Birth       ki1000304b-SAS-CompFeed     INDIA                          >=30_Birth                 0       17      19
Birth       ki1000304b-SAS-CompFeed     INDIA                          >=30_Birth                 1        2      19
Birth       ki1119695-PROBIT            BELARUS                        <25_Birth                  0     7433    7456
Birth       ki1119695-PROBIT            BELARUS                        <25_Birth                  1       23    7456
Birth       ki1119695-PROBIT            BELARUS                        [25-30)_Birth              0     3881    3887
Birth       ki1119695-PROBIT            BELARUS                        [25-30)_Birth              1        6    3887
Birth       ki1119695-PROBIT            BELARUS                        >=30_Birth                 0     2537    2541
Birth       ki1119695-PROBIT            BELARUS                        >=30_Birth                 1        4    2541
Birth       ki1126311-ZVITAMBO          ZIMBABWE                       <25_Birth                  0     7171    8024
Birth       ki1126311-ZVITAMBO          ZIMBABWE                       <25_Birth                  1      853    8024
Birth       ki1126311-ZVITAMBO          ZIMBABWE                       [25-30)_Birth              0     3090    3442
Birth       ki1126311-ZVITAMBO          ZIMBABWE                       [25-30)_Birth              1      352    3442
Birth       ki1126311-ZVITAMBO          ZIMBABWE                       >=30_Birth                 0     2103    2324
Birth       ki1126311-ZVITAMBO          ZIMBABWE                       >=30_Birth                 1      221    2324
Birth       ki1135781-COHORTS           GUATEMALA                      <25_Birth                  0      319     342
Birth       ki1135781-COHORTS           GUATEMALA                      <25_Birth                  1       23     342
Birth       ki1135781-COHORTS           GUATEMALA                      [25-30)_Birth              0      179     184
Birth       ki1135781-COHORTS           GUATEMALA                      [25-30)_Birth              1        5     184
Birth       ki1135781-COHORTS           GUATEMALA                      >=30_Birth                 0      304     326
Birth       ki1135781-COHORTS           GUATEMALA                      >=30_Birth                 1       22     326
Birth       ki1148112-iLiNS-DYAD-M      MALAWI                         <25_Birth                  0        0       1
Birth       ki1148112-iLiNS-DYAD-M      MALAWI                         <25_Birth                  1        1       1
Birth       kiGH5241-JiVitA-3           BANGLADESH                     <25_Birth                  0    19094   28736
Birth       kiGH5241-JiVitA-3           BANGLADESH                     <25_Birth                  1     9642   28736
Birth       kiGH5241-JiVitA-3           BANGLADESH                     [25-30)_Birth              0     4836    6754
Birth       kiGH5241-JiVitA-3           BANGLADESH                     [25-30)_Birth              1     1918    6754
Birth       kiGH5241-JiVitA-3           BANGLADESH                     >=30_Birth                 0     2608    3716
Birth       kiGH5241-JiVitA-3           BANGLADESH                     >=30_Birth                 1     1108    3716
6 months    iLiNS_DYADM_LNS             MALAWI                         <25_6 months               0      289     364
6 months    iLiNS_DYADM_LNS             MALAWI                         <25_6 months               1       75     364
6 months    iLiNS_DYADM_LNS             MALAWI                         [25-30)_6 months           0      133     172
6 months    iLiNS_DYADM_LNS             MALAWI                         [25-30)_6 months           1       39     172
6 months    iLiNS_DYADM_LNS             MALAWI                         >=30_6 months              0      106     147
6 months    iLiNS_DYADM_LNS             MALAWI                         >=30_6 months              1       41     147
6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     <25_6 months               0      348     413
6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     <25_6 months               1       65     413
6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     [25-30)_6 months           0      162     181
6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     [25-30)_6 months           1       19     181
6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     >=30_6 months              0       72      87
6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     >=30_6 months              1       15      87
6 months    ki1000111-WASH-Kenya        KENYA                          <25_6 months               0       38      44
6 months    ki1000111-WASH-Kenya        KENYA                          <25_6 months               1        6      44
6 months    ki1000111-WASH-Kenya        KENYA                          [25-30)_6 months           0       15      17
6 months    ki1000111-WASH-Kenya        KENYA                          [25-30)_6 months           1        2      17
6 months    ki1000111-WASH-Kenya        KENYA                          >=30_6 months              0       10      13
6 months    ki1000111-WASH-Kenya        KENYA                          >=30_6 months              1        3      13
6 months    ki1000125-AgaKhanUniv       PAKISTAN                       <25_6 months               0       38      50
6 months    ki1000125-AgaKhanUniv       PAKISTAN                       <25_6 months               1       12      50
6 months    ki1000125-AgaKhanUniv       PAKISTAN                       [25-30)_6 months           0       48      58
6 months    ki1000125-AgaKhanUniv       PAKISTAN                       [25-30)_6 months           1       10      58
6 months    ki1000125-AgaKhanUniv       PAKISTAN                       >=30_6 months              0       53      73
6 months    ki1000125-AgaKhanUniv       PAKISTAN                       >=30_6 months              1       20      73
6 months    ki1000304-EU                INDIA                          <25_6 months               0      140     211
6 months    ki1000304-EU                INDIA                          <25_6 months               1       71     211
6 months    ki1000304-EU                INDIA                          [25-30)_6 months           0       69     104
6 months    ki1000304-EU                INDIA                          [25-30)_6 months           1       35     104
6 months    ki1000304-EU                INDIA                          >=30_6 months              0       37      47
6 months    ki1000304-EU                INDIA                          >=30_6 months              1       10      47
6 months    ki1000304-VITAMIN-A         INDIA                          <25_6 months               0      860    1306
6 months    ki1000304-VITAMIN-A         INDIA                          <25_6 months               1      446    1306
6 months    ki1000304-VITAMIN-A         INDIA                          [25-30)_6 months           0      570     863
6 months    ki1000304-VITAMIN-A         INDIA                          [25-30)_6 months           1      293     863
6 months    ki1000304-VITAMIN-A         INDIA                          >=30_6 months              0      213     336
6 months    ki1000304-VITAMIN-A         INDIA                          >=30_6 months              1      123     336
6 months    ki1000304-Vitamin-B12       INDIA                          <25_6 months               0       28      46
6 months    ki1000304-Vitamin-B12       INDIA                          <25_6 months               1       18      46
6 months    ki1000304-Vitamin-B12       INDIA                          [25-30)_6 months           0       21      24
6 months    ki1000304-Vitamin-B12       INDIA                          [25-30)_6 months           1        3      24
6 months    ki1000304-Vitamin-B12       INDIA                          >=30_6 months              0        9      11
6 months    ki1000304-Vitamin-B12       INDIA                          >=30_6 months              1        2      11
6 months    ki1000304b-SAS-CompFeed     INDIA                          <25_6 months               0      272     368
6 months    ki1000304b-SAS-CompFeed     INDIA                          <25_6 months               1       96     368
6 months    ki1000304b-SAS-CompFeed     INDIA                          [25-30)_6 months           0      122     176
6 months    ki1000304b-SAS-CompFeed     INDIA                          [25-30)_6 months           1       54     176
6 months    ki1000304b-SAS-CompFeed     INDIA                          >=30_6 months              0       50      73
6 months    ki1000304b-SAS-CompFeed     INDIA                          >=30_6 months              1       23      73
6 months    ki1000304b-SAS-FoodSuppl    INDIA                          <25_6 months               0       93     156
6 months    ki1000304b-SAS-FoodSuppl    INDIA                          <25_6 months               1       63     156
6 months    ki1000304b-SAS-FoodSuppl    INDIA                          [25-30)_6 months           0       64     120
6 months    ki1000304b-SAS-FoodSuppl    INDIA                          [25-30)_6 months           1       56     120
6 months    ki1000304b-SAS-FoodSuppl    INDIA                          >=30_6 months              0       47      79
6 months    ki1000304b-SAS-FoodSuppl    INDIA                          >=30_6 months              1       32      79
6 months    ki1017093b-PROVIDE          BANGLADESH                     <25_6 months               0       18      23
6 months    ki1017093b-PROVIDE          BANGLADESH                     <25_6 months               1        5      23
6 months    ki1017093b-PROVIDE          BANGLADESH                     [25-30)_6 months           0       11      14
6 months    ki1017093b-PROVIDE          BANGLADESH                     [25-30)_6 months           1        3      14
6 months    ki1017093b-PROVIDE          BANGLADESH                     >=30_6 months              0        7       9
6 months    ki1017093b-PROVIDE          BANGLADESH                     >=30_6 months              1        2       9
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   <25_6 months               0      571     636
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   <25_6 months               1       65     636
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   [25-30)_6 months           0      505     576
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   [25-30)_6 months           1       71     576
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   >=30_6 months              0      436     484
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   >=30_6 months              1       48     484
6 months    ki1112895-Burkina Faso Zn   BURKINA FASO                   <25_6 months               0       69      77
6 months    ki1112895-Burkina Faso Zn   BURKINA FASO                   <25_6 months               1        8      77
6 months    ki1112895-Burkina Faso Zn   BURKINA FASO                   [25-30)_6 months           0      225     260
6 months    ki1112895-Burkina Faso Zn   BURKINA FASO                   [25-30)_6 months           1       35     260
6 months    ki1112895-Burkina Faso Zn   BURKINA FASO                   >=30_6 months              0      181     200
6 months    ki1112895-Burkina Faso Zn   BURKINA FASO                   >=30_6 months              1       19     200
6 months    ki1112895-Guatemala BSC     GUATEMALA                      <25_6 months               0       75     114
6 months    ki1112895-Guatemala BSC     GUATEMALA                      <25_6 months               1       39     114
6 months    ki1112895-Guatemala BSC     GUATEMALA                      [25-30)_6 months           0       42      53
6 months    ki1112895-Guatemala BSC     GUATEMALA                      [25-30)_6 months           1       11      53
6 months    ki1112895-Guatemala BSC     GUATEMALA                      >=30_6 months              0       29      44
6 months    ki1112895-Guatemala BSC     GUATEMALA                      >=30_6 months              1       15      44
6 months    ki1119695-PROBIT            BELARUS                        <25_6 months               0     7278    7826
6 months    ki1119695-PROBIT            BELARUS                        <25_6 months               1      548    7826
6 months    ki1119695-PROBIT            BELARUS                        [25-30)_6 months           0     3858    4069
6 months    ki1119695-PROBIT            BELARUS                        [25-30)_6 months           1      211    4069
6 months    ki1119695-PROBIT            BELARUS                        >=30_6 months              0     2440    2605
6 months    ki1119695-PROBIT            BELARUS                        >=30_6 months              1      165    2605
6 months    ki1126311-ZVITAMBO          ZIMBABWE                       <25_6 months               0     3610    4328
6 months    ki1126311-ZVITAMBO          ZIMBABWE                       <25_6 months               1      718    4328
6 months    ki1126311-ZVITAMBO          ZIMBABWE                       [25-30)_6 months           0     1656    1982
6 months    ki1126311-ZVITAMBO          ZIMBABWE                       [25-30)_6 months           1      326    1982
6 months    ki1126311-ZVITAMBO          ZIMBABWE                       >=30_6 months              0     1210    1452
6 months    ki1126311-ZVITAMBO          ZIMBABWE                       >=30_6 months              1      242    1452
6 months    ki1135781-COHORTS           GUATEMALA                      <25_6 months               0      222     369
6 months    ki1135781-COHORTS           GUATEMALA                      <25_6 months               1      147     369
6 months    ki1135781-COHORTS           GUATEMALA                      [25-30)_6 months           0      119     202
6 months    ki1135781-COHORTS           GUATEMALA                      [25-30)_6 months           1       83     202
6 months    ki1135781-COHORTS           GUATEMALA                      >=30_6 months              0      202     361
6 months    ki1135781-COHORTS           GUATEMALA                      >=30_6 months              1      159     361
6 months    ki1148112-iLiNS-DOSE        MALAWI                         <25_6 months               0      647     932
6 months    ki1148112-iLiNS-DOSE        MALAWI                         <25_6 months               1      285     932
6 months    ki1148112-iLiNS-DOSE        MALAWI                         [25-30)_6 months           0      332     447
6 months    ki1148112-iLiNS-DOSE        MALAWI                         [25-30)_6 months           1      115     447
6 months    ki1148112-iLiNS-DOSE        MALAWI                         >=30_6 months              0      310     469
6 months    ki1148112-iLiNS-DOSE        MALAWI                         >=30_6 months              1      159     469
6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         <25_6 months               0      419     527
6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         <25_6 months               1      108     527
6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         [25-30)_6 months           0      213     282
6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         [25-30)_6 months           1       69     282
6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         >=30_6 months              0      164     220
6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         >=30_6 months              1       56     220
6 months    ki1148112-LCNI-5            MALAWI                         <25_6 months               0      199     300
6 months    ki1148112-LCNI-5            MALAWI                         <25_6 months               1      101     300
6 months    ki1148112-LCNI-5            MALAWI                         [25-30)_6 months           0      103     171
6 months    ki1148112-LCNI-5            MALAWI                         [25-30)_6 months           1       68     171
6 months    ki1148112-LCNI-5            MALAWI                         >=30_6 months              0      117     198
6 months    ki1148112-LCNI-5            MALAWI                         >=30_6 months              1       81     198
6 months    kiGH5241-JiVitA-3           BANGLADESH                     <25_6 months               0    19210   25857
6 months    kiGH5241-JiVitA-3           BANGLADESH                     <25_6 months               1     6647   25857
6 months    kiGH5241-JiVitA-3           BANGLADESH                     [25-30)_6 months           0     4006    5178
6 months    kiGH5241-JiVitA-3           BANGLADESH                     [25-30)_6 months           1     1172    5178
6 months    kiGH5241-JiVitA-3           BANGLADESH                     >=30_6 months              0     1839    2436
6 months    kiGH5241-JiVitA-3           BANGLADESH                     >=30_6 months              1      597    2436
24 months   iLiNS_DYADM_LNS             MALAWI                         <25_24 months              0       13      22
24 months   iLiNS_DYADM_LNS             MALAWI                         <25_24 months              1        9      22
24 months   iLiNS_DYADM_LNS             MALAWI                         [25-30)_24 months          0        6       9
24 months   iLiNS_DYADM_LNS             MALAWI                         [25-30)_24 months          1        3       9
24 months   iLiNS_DYADM_LNS             MALAWI                         >=30_24 months             0        1       4
24 months   iLiNS_DYADM_LNS             MALAWI                         >=30_24 months             1        3       4
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     <25_24 months              0      386     651
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     <25_24 months              1      265     651
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     [25-30)_24 months          0      195     339
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     [25-30)_24 months          1      144     339
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     >=30_24 months             0      120     192
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     >=30_24 months             1       72     192
24 months   ki1000111-WASH-Kenya        KENYA                          <25_24 months              0      648     967
24 months   ki1000111-WASH-Kenya        KENYA                          <25_24 months              1      319     967
24 months   ki1000111-WASH-Kenya        KENYA                          [25-30)_24 months          0      449     632
24 months   ki1000111-WASH-Kenya        KENYA                          [25-30)_24 months          1      183     632
24 months   ki1000111-WASH-Kenya        KENYA                          >=30_24 months             0      458     646
24 months   ki1000111-WASH-Kenya        KENYA                          >=30_24 months             1      188     646
24 months   ki1000304-EU                INDIA                          <25_24 months              0       50     124
24 months   ki1000304-EU                INDIA                          <25_24 months              1       74     124
24 months   ki1000304-EU                INDIA                          [25-30)_24 months          0       40      92
24 months   ki1000304-EU                INDIA                          [25-30)_24 months          1       52      92
24 months   ki1000304-EU                INDIA                          >=30_24 months             0       11      35
24 months   ki1000304-EU                INDIA                          >=30_24 months             1       24      35
24 months   ki1000304-Vitamin-B12       INDIA                          <25_24 months              0       26      48
24 months   ki1000304-Vitamin-B12       INDIA                          <25_24 months              1       22      48
24 months   ki1000304-Vitamin-B12       INDIA                          [25-30)_24 months          0       27      50
24 months   ki1000304-Vitamin-B12       INDIA                          [25-30)_24 months          1       23      50
24 months   ki1000304-Vitamin-B12       INDIA                          >=30_24 months             0       20      34
24 months   ki1000304-Vitamin-B12       INDIA                          >=30_24 months             1       14      34
24 months   ki1017093b-PROVIDE          BANGLADESH                     <25_24 months              0        2       2
24 months   ki1017093b-PROVIDE          BANGLADESH                     <25_24 months              1        0       2
24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   <25_24 months              0        1       1
24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   <25_24 months              1        0       1
24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   [25-30)_24 months          0        2       3
24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   [25-30)_24 months          1        1       3
24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   <25_24 months              0       77     128
24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   <25_24 months              1       51     128
24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   [25-30)_24 months          0      292     475
24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   [25-30)_24 months          1      183     475
24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   >=30_24 months             0      298     428
24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   >=30_24 months             1      130     428
24 months   ki1119695-PROBIT            BELARUS                        <25_24 months              0      387     444
24 months   ki1119695-PROBIT            BELARUS                        <25_24 months              1       57     444
24 months   ki1119695-PROBIT            BELARUS                        [25-30)_24 months          0      219     250
24 months   ki1119695-PROBIT            BELARUS                        [25-30)_24 months          1       31     250
24 months   ki1119695-PROBIT            BELARUS                        >=30_24 months             0      135     147
24 months   ki1119695-PROBIT            BELARUS                        >=30_24 months             1       12     147
24 months   ki1126311-ZVITAMBO          ZIMBABWE                       <25_24 months              0        7      23
24 months   ki1126311-ZVITAMBO          ZIMBABWE                       <25_24 months              1       16      23
24 months   ki1126311-ZVITAMBO          ZIMBABWE                       [25-30)_24 months          0        4       8
24 months   ki1126311-ZVITAMBO          ZIMBABWE                       [25-30)_24 months          1        4       8
24 months   ki1126311-ZVITAMBO          ZIMBABWE                       >=30_24 months             0        3       6
24 months   ki1126311-ZVITAMBO          ZIMBABWE                       >=30_24 months             1        3       6
24 months   ki1135781-COHORTS           GUATEMALA                      <25_24 months              0       25     145
24 months   ki1135781-COHORTS           GUATEMALA                      <25_24 months              1      120     145
24 months   ki1135781-COHORTS           GUATEMALA                      [25-30)_24 months          0       13      70
24 months   ki1135781-COHORTS           GUATEMALA                      [25-30)_24 months          1       57      70
24 months   ki1135781-COHORTS           GUATEMALA                      >=30_24 months             0       34     114
24 months   ki1135781-COHORTS           GUATEMALA                      >=30_24 months             1       80     114
24 months   ki1148112-iLiNS-DOSE        MALAWI                         <25_24 months              0      169     374
24 months   ki1148112-iLiNS-DOSE        MALAWI                         <25_24 months              1      205     374
24 months   ki1148112-iLiNS-DOSE        MALAWI                         [25-30)_24 months          0      107     182
24 months   ki1148112-iLiNS-DOSE        MALAWI                         [25-30)_24 months          1       75     182
24 months   ki1148112-iLiNS-DOSE        MALAWI                         >=30_24 months             0      105     211
24 months   ki1148112-iLiNS-DOSE        MALAWI                         >=30_24 months             1      106     211
24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         <25_24 months              0       21      33
24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         <25_24 months              1       12      33
24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         [25-30)_24 months          0       12      22
24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         [25-30)_24 months          1       10      22
24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         >=30_24 months             0        5      10
24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         >=30_24 months             1        5      10
24 months   ki1148112-LCNI-5            MALAWI                         <25_24 months              0       88     129
24 months   ki1148112-LCNI-5            MALAWI                         <25_24 months              1       41     129
24 months   ki1148112-LCNI-5            MALAWI                         [25-30)_24 months          0       46      81
24 months   ki1148112-LCNI-5            MALAWI                         [25-30)_24 months          1       35      81
24 months   ki1148112-LCNI-5            MALAWI                         >=30_24 months             0       57     102
24 months   ki1148112-LCNI-5            MALAWI                         >=30_24 months             1       45     102
24 months   kiGH5241-JiVitA-3           BANGLADESH                     <25_24 months              0       55     127
24 months   kiGH5241-JiVitA-3           BANGLADESH                     <25_24 months              1       72     127
24 months   kiGH5241-JiVitA-3           BANGLADESH                     [25-30)_24 months          0       18      23
24 months   kiGH5241-JiVitA-3           BANGLADESH                     [25-30)_24 months          1        5      23
24 months   kiGH5241-JiVitA-3           BANGLADESH                     >=30_24 months             0        2       8
24 months   kiGH5241-JiVitA-3           BANGLADESH                     >=30_24 months             1        6       8


The following strata were considered:

* agecat: 24 months, studyid: iLiNS_DYADM_LNS, country: MALAWI, intXmage: [25-30)_24 months
* agecat: 24 months, studyid: iLiNS_DYADM_LNS, country: MALAWI, intXmage: <25_24 months
* agecat: 24 months, studyid: iLiNS_DYADM_LNS, country: MALAWI, intXmage: >=30_24 months
* agecat: 24 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH, intXmage: [25-30)_24 months
* agecat: 24 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH, intXmage: <25_24 months
* agecat: 24 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH, intXmage: >=30_24 months
* agecat: 24 months, studyid: ki1000111-WASH-Kenya, country: KENYA, intXmage: [25-30)_24 months
* agecat: 24 months, studyid: ki1000111-WASH-Kenya, country: KENYA, intXmage: <25_24 months
* agecat: 24 months, studyid: ki1000111-WASH-Kenya, country: KENYA, intXmage: >=30_24 months
* agecat: 24 months, studyid: ki1000304-EU, country: INDIA, intXmage: [25-30)_24 months
* agecat: 24 months, studyid: ki1000304-EU, country: INDIA, intXmage: <25_24 months
* agecat: 24 months, studyid: ki1000304-EU, country: INDIA, intXmage: >=30_24 months
* agecat: 24 months, studyid: ki1000304-Vitamin-B12, country: INDIA, intXmage: [25-30)_24 months
* agecat: 24 months, studyid: ki1000304-Vitamin-B12, country: INDIA, intXmage: <25_24 months
* agecat: 24 months, studyid: ki1000304-Vitamin-B12, country: INDIA, intXmage: >=30_24 months
* agecat: 24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH, intXmage: <25_24 months
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF, intXmage: [25-30)_24 months
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF, intXmage: <25_24 months
* agecat: 24 months, studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO, intXmage: [25-30)_24 months
* agecat: 24 months, studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO, intXmage: <25_24 months
* agecat: 24 months, studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO, intXmage: >=30_24 months
* agecat: 24 months, studyid: ki1119695-PROBIT, country: BELARUS, intXmage: [25-30)_24 months
* agecat: 24 months, studyid: ki1119695-PROBIT, country: BELARUS, intXmage: <25_24 months
* agecat: 24 months, studyid: ki1119695-PROBIT, country: BELARUS, intXmage: >=30_24 months
* agecat: 24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE, intXmage: [25-30)_24 months
* agecat: 24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE, intXmage: <25_24 months
* agecat: 24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE, intXmage: >=30_24 months
* agecat: 24 months, studyid: ki1135781-COHORTS, country: GUATEMALA, intXmage: [25-30)_24 months
* agecat: 24 months, studyid: ki1135781-COHORTS, country: GUATEMALA, intXmage: <25_24 months
* agecat: 24 months, studyid: ki1135781-COHORTS, country: GUATEMALA, intXmage: >=30_24 months
* agecat: 24 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI, intXmage: [25-30)_24 months
* agecat: 24 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI, intXmage: <25_24 months
* agecat: 24 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI, intXmage: >=30_24 months
* agecat: 24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI, intXmage: [25-30)_24 months
* agecat: 24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI, intXmage: <25_24 months
* agecat: 24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI, intXmage: >=30_24 months
* agecat: 24 months, studyid: ki1148112-LCNI-5, country: MALAWI, intXmage: [25-30)_24 months
* agecat: 24 months, studyid: ki1148112-LCNI-5, country: MALAWI, intXmage: <25_24 months
* agecat: 24 months, studyid: ki1148112-LCNI-5, country: MALAWI, intXmage: >=30_24 months
* agecat: 24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH, intXmage: [25-30)_24 months
* agecat: 24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH, intXmage: <25_24 months
* agecat: 24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH, intXmage: >=30_24 months
* agecat: 6 months, studyid: iLiNS_DYADM_LNS, country: MALAWI, intXmage: [25-30)_6 months
* agecat: 6 months, studyid: iLiNS_DYADM_LNS, country: MALAWI, intXmage: <25_6 months
* agecat: 6 months, studyid: iLiNS_DYADM_LNS, country: MALAWI, intXmage: >=30_6 months
* agecat: 6 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH, intXmage: [25-30)_6 months
* agecat: 6 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH, intXmage: <25_6 months
* agecat: 6 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH, intXmage: >=30_6 months
* agecat: 6 months, studyid: ki1000111-WASH-Kenya, country: KENYA, intXmage: [25-30)_6 months
* agecat: 6 months, studyid: ki1000111-WASH-Kenya, country: KENYA, intXmage: <25_6 months
* agecat: 6 months, studyid: ki1000111-WASH-Kenya, country: KENYA, intXmage: >=30_6 months
* agecat: 6 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN, intXmage: [25-30)_6 months
* agecat: 6 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN, intXmage: <25_6 months
* agecat: 6 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN, intXmage: >=30_6 months
* agecat: 6 months, studyid: ki1000304-EU, country: INDIA, intXmage: [25-30)_6 months
* agecat: 6 months, studyid: ki1000304-EU, country: INDIA, intXmage: <25_6 months
* agecat: 6 months, studyid: ki1000304-EU, country: INDIA, intXmage: >=30_6 months
* agecat: 6 months, studyid: ki1000304-VITAMIN-A, country: INDIA, intXmage: [25-30)_6 months
* agecat: 6 months, studyid: ki1000304-VITAMIN-A, country: INDIA, intXmage: <25_6 months
* agecat: 6 months, studyid: ki1000304-VITAMIN-A, country: INDIA, intXmage: >=30_6 months
* agecat: 6 months, studyid: ki1000304-Vitamin-B12, country: INDIA, intXmage: [25-30)_6 months
* agecat: 6 months, studyid: ki1000304-Vitamin-B12, country: INDIA, intXmage: <25_6 months
* agecat: 6 months, studyid: ki1000304-Vitamin-B12, country: INDIA, intXmage: >=30_6 months
* agecat: 6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA, intXmage: [25-30)_6 months
* agecat: 6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA, intXmage: <25_6 months
* agecat: 6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA, intXmage: >=30_6 months
* agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA, intXmage: [25-30)_6 months
* agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA, intXmage: <25_6 months
* agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA, intXmage: >=30_6 months
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH, intXmage: [25-30)_6 months
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH, intXmage: <25_6 months
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH, intXmage: >=30_6 months
* agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF, intXmage: [25-30)_6 months
* agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF, intXmage: <25_6 months
* agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF, intXmage: >=30_6 months
* agecat: 6 months, studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO, intXmage: [25-30)_6 months
* agecat: 6 months, studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO, intXmage: <25_6 months
* agecat: 6 months, studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO, intXmage: >=30_6 months
* agecat: 6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA, intXmage: [25-30)_6 months
* agecat: 6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA, intXmage: <25_6 months
* agecat: 6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA, intXmage: >=30_6 months
* agecat: 6 months, studyid: ki1119695-PROBIT, country: BELARUS, intXmage: [25-30)_6 months
* agecat: 6 months, studyid: ki1119695-PROBIT, country: BELARUS, intXmage: <25_6 months
* agecat: 6 months, studyid: ki1119695-PROBIT, country: BELARUS, intXmage: >=30_6 months
* agecat: 6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE, intXmage: [25-30)_6 months
* agecat: 6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE, intXmage: <25_6 months
* agecat: 6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE, intXmage: >=30_6 months
* agecat: 6 months, studyid: ki1135781-COHORTS, country: GUATEMALA, intXmage: [25-30)_6 months
* agecat: 6 months, studyid: ki1135781-COHORTS, country: GUATEMALA, intXmage: <25_6 months
* agecat: 6 months, studyid: ki1135781-COHORTS, country: GUATEMALA, intXmage: >=30_6 months
* agecat: 6 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI, intXmage: [25-30)_6 months
* agecat: 6 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI, intXmage: <25_6 months
* agecat: 6 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI, intXmage: >=30_6 months
* agecat: 6 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI, intXmage: [25-30)_6 months
* agecat: 6 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI, intXmage: <25_6 months
* agecat: 6 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI, intXmage: >=30_6 months
* agecat: 6 months, studyid: ki1148112-LCNI-5, country: MALAWI, intXmage: [25-30)_6 months
* agecat: 6 months, studyid: ki1148112-LCNI-5, country: MALAWI, intXmage: <25_6 months
* agecat: 6 months, studyid: ki1148112-LCNI-5, country: MALAWI, intXmage: >=30_6 months
* agecat: 6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH, intXmage: [25-30)_6 months
* agecat: 6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH, intXmage: <25_6 months
* agecat: 6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH, intXmage: >=30_6 months
* agecat: Birth, studyid: iLiNS_DYADM_LNS, country: MALAWI, intXmage: <25_Birth
* agecat: Birth, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN, intXmage: [25-30)_Birth
* agecat: Birth, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN, intXmage: <25_Birth
* agecat: Birth, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN, intXmage: >=30_Birth
* agecat: Birth, studyid: ki1000304b-SAS-CompFeed, country: INDIA, intXmage: [25-30)_Birth
* agecat: Birth, studyid: ki1000304b-SAS-CompFeed, country: INDIA, intXmage: <25_Birth
* agecat: Birth, studyid: ki1000304b-SAS-CompFeed, country: INDIA, intXmage: >=30_Birth
* agecat: Birth, studyid: ki1119695-PROBIT, country: BELARUS, intXmage: [25-30)_Birth
* agecat: Birth, studyid: ki1119695-PROBIT, country: BELARUS, intXmage: <25_Birth
* agecat: Birth, studyid: ki1119695-PROBIT, country: BELARUS, intXmage: >=30_Birth
* agecat: Birth, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE, intXmage: [25-30)_Birth
* agecat: Birth, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE, intXmage: <25_Birth
* agecat: Birth, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE, intXmage: >=30_Birth
* agecat: Birth, studyid: ki1135781-COHORTS, country: GUATEMALA, intXmage: [25-30)_Birth
* agecat: Birth, studyid: ki1135781-COHORTS, country: GUATEMALA, intXmage: <25_Birth
* agecat: Birth, studyid: ki1135781-COHORTS, country: GUATEMALA, intXmage: >=30_Birth
* agecat: Birth, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI, intXmage: <25_Birth
* agecat: Birth, studyid: kiGH5241-JiVitA-3, country: BANGLADESH, intXmage: [25-30)_Birth
* agecat: Birth, studyid: kiGH5241-JiVitA-3, country: BANGLADESH, intXmage: <25_Birth
* agecat: Birth, studyid: kiGH5241-JiVitA-3, country: BANGLADESH, intXmage: >=30_Birth

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: iLiNS_DYADM_LNS, country: MALAWI, intXmage: <25_Birth
* agecat: Birth, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN, intXmage: <25_Birth
* agecat: Birth, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN, intXmage: [25-30)_Birth
* agecat: Birth, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN, intXmage: >=30_Birth
* agecat: Birth, studyid: ki1000304b-SAS-CompFeed, country: INDIA, intXmage: >=30_Birth
* agecat: Birth, studyid: ki1119695-PROBIT, country: BELARUS, intXmage: >=30_Birth
* agecat: Birth, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI, intXmage: <25_Birth
* agecat: 6 months, studyid: ki1000111-WASH-Kenya, country: KENYA, intXmage: [25-30)_6 months
* agecat: 6 months, studyid: ki1000111-WASH-Kenya, country: KENYA, intXmage: >=30_6 months
* agecat: 6 months, studyid: ki1000304-Vitamin-B12, country: INDIA, intXmage: [25-30)_6 months
* agecat: 6 months, studyid: ki1000304-Vitamin-B12, country: INDIA, intXmage: >=30_6 months
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH, intXmage: [25-30)_6 months
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH, intXmage: >=30_6 months
* agecat: 24 months, studyid: iLiNS_DYADM_LNS, country: MALAWI, intXmage: [25-30)_24 months
* agecat: 24 months, studyid: iLiNS_DYADM_LNS, country: MALAWI, intXmage: >=30_24 months
* agecat: 24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH, intXmage: <25_24 months
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF, intXmage: <25_24 months
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF, intXmage: [25-30)_24 months
* agecat: 24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE, intXmage: [25-30)_24 months
* agecat: 24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE, intXmage: >=30_24 months
* agecat: 24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH, intXmage: >=30_24 months

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
```

```
##           stunted
## tr          0  1
##   Control   0  0
##   LNS       0  0
##   Maternal  0  0
##   Other     0  0
##   VitA      0  0
##   Zinc     69  8
##           stunted
## tr           0   1
##   Control    0   0
##   LNS        0   0
##   Maternal   0   0
##   Other      0   0
##   VitA       0   0
##   Zinc     225  35
##           stunted
## tr           0   1
##   Control    0   0
##   LNS        0   0
##   Maternal   0   0
##   Other      0   0
##   VitA       0   0
##   Zinc     181  19
##           stunted
## tr          0  1
##   Control   0  0
##   LNS       0  0
##   Maternal  0  0
##   Other     0  0
##   VitA      0  0
##   Zinc     77 51
##           stunted
## tr           0   1
##   Control    0   0
##   LNS        0   0
##   Maternal   0   0
##   Other      0   0
##   VitA       0   0
##   Zinc     292 183
##           stunted
## tr           0   1
##   Control    0   0
##   LNS        0   0
##   Maternal   0   0
##   Other      0   0
##   VitA       0   0
##   Zinc     298 130
```

```
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```




# Results Detail

## Results Plots
![](/tmp/e2197bb5-eea3-4eef-8262-9a2c31c9a3d5/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/e2197bb5-eea3-4eef-8262-9a2c31c9a3d5/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/e2197bb5-eea3-4eef-8262-9a2c31c9a3d5/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/e2197bb5-eea3-4eef-8262-9a2c31c9a3d5/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                     country                        intXmage            intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------  --------------------------  -----------------------------  ------------------  -------------------  ---------------  ----------  -----------  ----------
Birth       ki1000304b-SAS-CompFeed     INDIA                          <25_Birth           Control              NA                0.3076923    0.1780056   0.4373790
Birth       ki1000304b-SAS-CompFeed     INDIA                          <25_Birth           Other                NA                0.2826087    0.1899721   0.3752453
Birth       ki1000304b-SAS-CompFeed     INDIA                          [25-30)_Birth       Control              NA                0.2173913    0.0766887   0.3580939
Birth       ki1000304b-SAS-CompFeed     INDIA                          [25-30)_Birth       Other                NA                0.3529412    0.0774572   0.6284252
Birth       ki1119695-PROBIT            BELARUS                        <25_Birth           Control              NA                0.0035931   -0.0001844   0.0073707
Birth       ki1119695-PROBIT            BELARUS                        <25_Birth           Maternal             NA                0.0026055    0.0005120   0.0046990
Birth       ki1119695-PROBIT            BELARUS                        [25-30)_Birth       Control              NA                0.0026178    0.0005319   0.0047037
Birth       ki1119695-PROBIT            BELARUS                        [25-30)_Birth       Maternal             NA                0.0005058   -0.0005138   0.0015254
Birth       ki1126311-ZVITAMBO          ZIMBABWE                       <25_Birth           Control              NA                0.1125498    0.0987257   0.1263739
Birth       ki1126311-ZVITAMBO          ZIMBABWE                       <25_Birth           VitA                 NA                0.1042221    0.0965006   0.1119436
Birth       ki1126311-ZVITAMBO          ZIMBABWE                       [25-30)_Birth       Control              NA                0.0963303    0.0767446   0.1159160
Birth       ki1126311-ZVITAMBO          ZIMBABWE                       [25-30)_Birth       VitA                 NA                0.1042802    0.0924625   0.1160978
Birth       ki1126311-ZVITAMBO          ZIMBABWE                       >=30_Birth          Control              NA                0.0876565    0.0642085   0.1111046
Birth       ki1126311-ZVITAMBO          ZIMBABWE                       >=30_Birth          VitA                 NA                0.0974504    0.0836117   0.1112892
Birth       ki1135781-COHORTS           GUATEMALA                      <25_Birth           Control              NA                0.0481928    0.0155644   0.0808211
Birth       ki1135781-COHORTS           GUATEMALA                      <25_Birth           Other                NA                0.0852273    0.0439155   0.1265390
Birth       ki1135781-COHORTS           GUATEMALA                      [25-30)_Birth       Control              NA                0.0117647   -0.0112202   0.0347496
Birth       ki1135781-COHORTS           GUATEMALA                      [25-30)_Birth       Other                NA                0.0404040    0.0015111   0.0792970
Birth       ki1135781-COHORTS           GUATEMALA                      >=30_Birth          Control              NA                0.0641026    0.0256075   0.1025976
Birth       ki1135781-COHORTS           GUATEMALA                      >=30_Birth          Other                NA                0.0705882    0.0320261   0.1091504
Birth       kiGH5241-JiVitA-3           BANGLADESH                     <25_Birth           Control              NA                0.3531862    0.3408382   0.3655341
Birth       kiGH5241-JiVitA-3           BANGLADESH                     <25_Birth           Maternal             NA                0.3177948    0.3055559   0.3300337
Birth       kiGH5241-JiVitA-3           BANGLADESH                     [25-30)_Birth       Control              NA                0.3004926    0.2728714   0.3281138
Birth       kiGH5241-JiVitA-3           BANGLADESH                     [25-30)_Birth       Maternal             NA                0.2686823    0.2433977   0.2939669
Birth       kiGH5241-JiVitA-3           BANGLADESH                     >=30_Birth          Control              NA                0.3198690    0.2820447   0.3576933
Birth       kiGH5241-JiVitA-3           BANGLADESH                     >=30_Birth          Maternal             NA                0.2770701    0.2426769   0.3114632
6 months    iLiNS_DYADM_LNS             MALAWI                         <25_6 months        Control              NA                0.1851852    0.1297294   0.2406410
6 months    iLiNS_DYADM_LNS             MALAWI                         <25_6 months        LNS                  NA                0.2285714    0.1662718   0.2908710
6 months    iLiNS_DYADM_LNS             MALAWI                         [25-30)_6 months    Control              NA                0.2619048    0.1676068   0.3562028
6 months    iLiNS_DYADM_LNS             MALAWI                         [25-30)_6 months    LNS                  NA                0.1931818    0.1104555   0.2759082
6 months    iLiNS_DYADM_LNS             MALAWI                         >=30_6 months       Control              NA                0.3205128    0.2165935   0.4244322
6 months    iLiNS_DYADM_LNS             MALAWI                         >=30_6 months       LNS                  NA                0.2318841    0.1319636   0.3318046
6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     <25_6 months        Control              NA                0.2061856    0.1255777   0.2867934
6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     <25_6 months        LNS                  NA                0.1544715    0.0905260   0.2184171
6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     <25_6 months        Other                NA                0.1347150    0.0864888   0.1829413
6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     [25-30)_6 months    Control              NA                0.0731707   -0.0067626   0.1531040
6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     [25-30)_6 months    LNS                  NA                0.1395349    0.0356805   0.2433893
6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     [25-30)_6 months    Other                NA                0.1030928    0.0424117   0.1637738
6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     >=30_6 months       Control              NA                0.2608696    0.0803739   0.4413653
6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     >=30_6 months       LNS                  NA                0.1428571   -0.0076740   0.2933883
6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     >=30_6 months       Other                NA                0.1395349    0.0353674   0.2437024
6 months    ki1000111-WASH-Kenya        KENYA                          <25_6 months        Control              NA                0.0588235   -0.0543192   0.1719663
6 months    ki1000111-WASH-Kenya        KENYA                          <25_6 months        LNS                  NA                0.2500000   -0.0535260   0.5535260
6 months    ki1000111-WASH-Kenya        KENYA                          <25_6 months        Other                NA                0.1578947   -0.0079610   0.3237504
6 months    ki1000125-AgaKhanUniv       PAKISTAN                       <25_6 months        Control              NA                0.2173913    0.0471109   0.3876717
6 months    ki1000125-AgaKhanUniv       PAKISTAN                       <25_6 months        Maternal             NA                0.2592593    0.0922835   0.4262350
6 months    ki1000125-AgaKhanUniv       PAKISTAN                       [25-30)_6 months    Control              NA                0.1935484    0.0532581   0.3338387
6 months    ki1000125-AgaKhanUniv       PAKISTAN                       [25-30)_6 months    Maternal             NA                0.1481481    0.0129804   0.2833158
6 months    ki1000125-AgaKhanUniv       PAKISTAN                       >=30_6 months       Control              NA                0.2820513    0.1398440   0.4242585
6 months    ki1000125-AgaKhanUniv       PAKISTAN                       >=30_6 months       Maternal             NA                0.2647059    0.1153865   0.4140253
6 months    ki1000304-EU                INDIA                          <25_6 months        Control              NA                0.3693694    0.2793707   0.4593681
6 months    ki1000304-EU                INDIA                          <25_6 months        Zinc                 NA                0.3000000    0.2099696   0.3900304
6 months    ki1000304-EU                INDIA                          [25-30)_6 months    Control              NA                0.4107143    0.2812396   0.5401890
6 months    ki1000304-EU                INDIA                          [25-30)_6 months    Zinc                 NA                0.2500000    0.1269090   0.3730910
6 months    ki1000304-EU                INDIA                          >=30_6 months       Control              NA                0.1612903    0.0304182   0.2921625
6 months    ki1000304-EU                INDIA                          >=30_6 months       Zinc                 NA                0.3125000    0.0829277   0.5420723
6 months    ki1000304-VITAMIN-A         INDIA                          <25_6 months        Control              NA                0.3496296    0.3136425   0.3856167
6 months    ki1000304-VITAMIN-A         INDIA                          <25_6 months        VitA                 NA                0.3328051    0.2960243   0.3695859
6 months    ki1000304-VITAMIN-A         INDIA                          [25-30)_6 months    Control              NA                0.3738095    0.3275124   0.4201066
6 months    ki1000304-VITAMIN-A         INDIA                          [25-30)_6 months    VitA                 NA                0.3069977    0.2640211   0.3499744
6 months    ki1000304-VITAMIN-A         INDIA                          >=30_6 months       Control              NA                0.3431953    0.2715082   0.4148823
6 months    ki1000304-VITAMIN-A         INDIA                          >=30_6 months       VitA                 NA                0.3892216    0.3151626   0.4632805
6 months    ki1000304-Vitamin-B12       INDIA                          <25_6 months        Control              NA                0.4545455    0.1570418   0.7520491
6 months    ki1000304-Vitamin-B12       INDIA                          <25_6 months        Other                NA                0.3714286    0.2095827   0.5332745
6 months    ki1000304b-SAS-CompFeed     INDIA                          <25_6 months        Control              NA                0.2500000    0.1715624   0.3284376
6 months    ki1000304b-SAS-CompFeed     INDIA                          <25_6 months        Other                NA                0.2708333    0.1955277   0.3461390
6 months    ki1000304b-SAS-CompFeed     INDIA                          [25-30)_6 months    Control              NA                0.3214286    0.2184204   0.4244368
6 months    ki1000304b-SAS-CompFeed     INDIA                          [25-30)_6 months    Other                NA                0.2934783    0.1970503   0.3899062
6 months    ki1000304b-SAS-CompFeed     INDIA                          >=30_6 months       Control              NA                0.3142857    0.1596016   0.4689698
6 months    ki1000304b-SAS-CompFeed     INDIA                          >=30_6 months       Other                NA                0.3157895    0.2028265   0.4287525
6 months    ki1000304b-SAS-FoodSuppl    INDIA                          <25_6 months        Control              NA                0.4615385    0.3045768   0.6185001
6 months    ki1000304b-SAS-FoodSuppl    INDIA                          <25_6 months        Other                NA                0.3846154    0.2961775   0.4730533
6 months    ki1000304b-SAS-FoodSuppl    INDIA                          [25-30)_6 months    Control              NA                0.6363636    0.4715494   0.8011778
6 months    ki1000304b-SAS-FoodSuppl    INDIA                          [25-30)_6 months    Other                NA                0.4022989    0.2988270   0.5057707
6 months    ki1000304b-SAS-FoodSuppl    INDIA                          >=30_6 months       Control              NA                0.4444444    0.2134239   0.6754650
6 months    ki1000304b-SAS-FoodSuppl    INDIA                          >=30_6 months       Other                NA                0.3934426    0.2700679   0.5168173
6 months    ki1017093b-PROVIDE          BANGLADESH                     <25_6 months        Control              NA                0.1666667   -0.1382343   0.4715676
6 months    ki1017093b-PROVIDE          BANGLADESH                     <25_6 months        Other                NA                0.2352941    0.0291225   0.4414658
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   <25_6 months        Control              NA                0.0838710    0.0401985   0.1275435
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   <25_6 months        Other                NA                0.1158537    0.0668324   0.1648750
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   <25_6 months        Zinc                 NA                0.1041009    0.0704562   0.1377457
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   [25-30)_6 months    Control              NA                0.1333333    0.0759410   0.1907257
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   [25-30)_6 months    Other                NA                0.1136364    0.0594484   0.1678244
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   [25-30)_6 months    Zinc                 NA                0.1229773    0.0863282   0.1596265
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   >=30_6 months       Control              NA                0.1194030    0.0644437   0.1743623
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   >=30_6 months       Other                NA                0.0880000    0.0382857   0.1377143
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   >=30_6 months       Zinc                 NA                0.0933333    0.0552839   0.1313828
6 months    ki1112895-Guatemala BSC     GUATEMALA                      <25_6 months        Control              NA                0.3442623    0.2245038   0.4640208
6 months    ki1112895-Guatemala BSC     GUATEMALA                      <25_6 months        Other                NA                0.3396226    0.2115614   0.4676839
6 months    ki1112895-Guatemala BSC     GUATEMALA                      [25-30)_6 months    Control              NA                0.2272727    0.0504819   0.4040636
6 months    ki1112895-Guatemala BSC     GUATEMALA                      [25-30)_6 months    Other                NA                0.1935484    0.0531418   0.3339550
6 months    ki1112895-Guatemala BSC     GUATEMALA                      >=30_6 months       Control              NA                0.4210526    0.1964829   0.6456223
6 months    ki1112895-Guatemala BSC     GUATEMALA                      >=30_6 months       Other                NA                0.2800000    0.1019609   0.4580391
6 months    ki1119695-PROBIT            BELARUS                        <25_6 months        Control              NA                0.0789130    0.0497382   0.1080877
6 months    ki1119695-PROBIT            BELARUS                        <25_6 months        Maternal             NA                0.0615154    0.0444141   0.0786166
6 months    ki1119695-PROBIT            BELARUS                        [25-30)_6 months    Control              NA                0.0592925    0.0428765   0.0757085
6 months    ki1119695-PROBIT            BELARUS                        [25-30)_6 months    Maternal             NA                0.0446169    0.0324846   0.0567492
6 months    ki1119695-PROBIT            BELARUS                        >=30_6 months       Control              NA                0.0743349    0.0464815   0.1021882
6 months    ki1119695-PROBIT            BELARUS                        >=30_6 months       Maternal             NA                0.0527506    0.0272719   0.0782293
6 months    ki1126311-ZVITAMBO          ZIMBABWE                       <25_6 months        Control              NA                0.1640261    0.1418670   0.1861852
6 months    ki1126311-ZVITAMBO          ZIMBABWE                       <25_6 months        VitA                 NA                0.1665131    0.1537135   0.1793127
6 months    ki1126311-ZVITAMBO          ZIMBABWE                       [25-30)_6 months    Control              NA                0.1816327    0.1474874   0.2157779
6 months    ki1126311-ZVITAMBO          ZIMBABWE                       [25-30)_6 months    VitA                 NA                0.1588472    0.1402948   0.1773996
6 months    ki1126311-ZVITAMBO          ZIMBABWE                       >=30_6 months       Control              NA                0.1371429    0.1010917   0.1731941
6 months    ki1126311-ZVITAMBO          ZIMBABWE                       >=30_6 months       VitA                 NA                0.1760436    0.1535494   0.1985377
6 months    ki1135781-COHORTS           GUATEMALA                      <25_6 months        Control              NA                0.3841808    0.3124269   0.4559346
6 months    ki1135781-COHORTS           GUATEMALA                      <25_6 months        Other                NA                0.4114583    0.3417574   0.4811592
6 months    ki1135781-COHORTS           GUATEMALA                      [25-30)_6 months    Control              NA                0.4842105    0.3834670   0.5849541
6 months    ki1135781-COHORTS           GUATEMALA                      [25-30)_6 months    Other                NA                0.3457944    0.2554503   0.4361385
6 months    ki1135781-COHORTS           GUATEMALA                      >=30_6 months       Control              NA                0.5333333    0.4603511   0.6063155
6 months    ki1135781-COHORTS           GUATEMALA                      >=30_6 months       Other                NA                0.3480663    0.2785729   0.4175597
6 months    ki1148112-iLiNS-DOSE        MALAWI                         <25_6 months        Control              NA                0.3478261    0.2742171   0.4214351
6 months    ki1148112-iLiNS-DOSE        MALAWI                         <25_6 months        LNS                  NA                0.2970169    0.2647455   0.3292882
6 months    ki1148112-iLiNS-DOSE        MALAWI                         [25-30)_6 months    Control              NA                0.2622951    0.1517840   0.3728062
6 months    ki1148112-iLiNS-DOSE        MALAWI                         [25-30)_6 months    LNS                  NA                0.2564767    0.2128641   0.3000893
6 months    ki1148112-iLiNS-DOSE        MALAWI                         >=30_6 months       Control              NA                0.3536585    0.2500662   0.4572509
6 months    ki1148112-iLiNS-DOSE        MALAWI                         >=30_6 months       LNS                  NA                0.3359173    0.2888105   0.3830241
6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         <25_6 months        Control              NA                0.1851852    0.1297530   0.2406174
6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         <25_6 months        Maternal             NA                0.2159763    0.1720657   0.2598870
6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         [25-30)_6 months    Control              NA                0.2619048    0.1677141   0.3560954
6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         [25-30)_6 months    Maternal             NA                0.2373737    0.1780048   0.2967427
6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         >=30_6 months       Control              NA                0.3205128    0.2167114   0.4243143
6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         >=30_6 months       Maternal             NA                0.2183099    0.1502098   0.2864099
6 months    ki1148112-LCNI-5            MALAWI                         <25_6 months        Control              NA                0.3703704    0.2650309   0.4757099
6 months    ki1148112-LCNI-5            MALAWI                         <25_6 months        LNS                  NA                0.3407407    0.2606566   0.4208249
6 months    ki1148112-LCNI-5            MALAWI                         <25_6 months        Other                NA                0.2976190    0.1996813   0.3955568
6 months    ki1148112-LCNI-5            MALAWI                         [25-30)_6 months    Control              NA                0.3409091    0.2004379   0.4813803
6 months    ki1148112-LCNI-5            MALAWI                         [25-30)_6 months    LNS                  NA                0.4047619    0.2994864   0.5100374
6 months    ki1148112-LCNI-5            MALAWI                         [25-30)_6 months    Other                NA                0.4418605    0.2929924   0.5907285
6 months    ki1148112-LCNI-5            MALAWI                         >=30_6 months       Control              NA                0.3409091    0.2004942   0.4813240
6 months    ki1148112-LCNI-5            MALAWI                         >=30_6 months       LNS                  NA                0.4018692    0.3087378   0.4950006
6 months    ki1148112-LCNI-5            MALAWI                         >=30_6 months       Other                NA                0.4893617    0.3460867   0.6326367
6 months    kiGH5241-JiVitA-3           BANGLADESH                     <25_6 months        Control              NA                0.2686371    0.2552880   0.2819863
6 months    kiGH5241-JiVitA-3           BANGLADESH                     <25_6 months        Maternal             NA                0.2454454    0.2333324   0.2575583
6 months    kiGH5241-JiVitA-3           BANGLADESH                     [25-30)_6 months    Control              NA                0.2322006    0.2036432   0.2607581
6 months    kiGH5241-JiVitA-3           BANGLADESH                     [25-30)_6 months    Maternal             NA                0.2209904    0.1951207   0.2468601
6 months    kiGH5241-JiVitA-3           BANGLADESH                     >=30_6 months       Control              NA                0.2534965    0.2081438   0.2988492
6 months    kiGH5241-JiVitA-3           BANGLADESH                     >=30_6 months       Maternal             NA                0.2376161    0.2009418   0.2742904
24 months   iLiNS_DYADM_LNS             MALAWI                         <25_24 months       Control              NA                0.5714286    0.1962022   0.9466549
24 months   iLiNS_DYADM_LNS             MALAWI                         <25_24 months       LNS                  NA                0.3333333    0.0891602   0.5775065
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     <25_24 months       Control              NA                0.4187500    0.3422466   0.4952534
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     <25_24 months       LNS                  NA                0.3975155    0.3218638   0.4731673
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     <25_24 months       Other                NA                0.4060606    0.3530343   0.4590869
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     [25-30)_24 months   Control              NA                0.4782609    0.3602222   0.5962995
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     [25-30)_24 months   LNS                  NA                0.3707865    0.2702889   0.4712841
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     [25-30)_24 months   Other                NA                0.4309392    0.3586893   0.5031892
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     >=30_24 months      Control              NA                0.3500000    0.2018019   0.4981981
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     >=30_24 months      LNS                  NA                0.3214286    0.1987897   0.4440674
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     >=30_24 months      Other                NA                0.4166667    0.3177888   0.5155446
24 months   ki1000111-WASH-Kenya        KENYA                          <25_24 months       Control              NA                0.3402985    0.2895347   0.3910623
24 months   ki1000111-WASH-Kenya        KENYA                          <25_24 months       LNS                  NA                0.2653061    0.2034658   0.3271464
24 months   ki1000111-WASH-Kenya        KENYA                          <25_24 months       Other                NA                0.3509174    0.3060964   0.3957385
24 months   ki1000111-WASH-Kenya        KENYA                          [25-30)_24 months   Control              NA                0.3145540    0.2521465   0.3769614
24 months   ki1000111-WASH-Kenya        KENYA                          [25-30)_24 months   LNS                  NA                0.2808219    0.2078679   0.3537759
24 months   ki1000111-WASH-Kenya        KENYA                          [25-30)_24 months   Other                NA                0.2747253    0.2217332   0.3277174
24 months   ki1000111-WASH-Kenya        KENYA                          >=30_24 months      Control              NA                0.2401961    0.1815278   0.2988643
24 months   ki1000111-WASH-Kenya        KENYA                          >=30_24 months      LNS                  NA                0.3221477    0.2470569   0.3972384
24 months   ki1000111-WASH-Kenya        KENYA                          >=30_24 months      Other                NA                0.3105802    0.2575554   0.3636051
24 months   ki1000304-EU                INDIA                          <25_24 months       Control              NA                0.6440678    0.5214002   0.7667354
24 months   ki1000304-EU                INDIA                          <25_24 months       Zinc                 NA                0.5538462    0.4325110   0.6751813
24 months   ki1000304-EU                INDIA                          [25-30)_24 months   Control              NA                0.5769231    0.4419061   0.7119400
24 months   ki1000304-EU                INDIA                          [25-30)_24 months   Zinc                 NA                0.5500000    0.3949831   0.7050169
24 months   ki1000304-EU                INDIA                          >=30_24 months      Control              NA                0.7857143    0.5676384   1.0037901
24 months   ki1000304-EU                INDIA                          >=30_24 months      Zinc                 NA                0.6190476    0.4083157   0.8297796
24 months   ki1000304-Vitamin-B12       INDIA                          <25_24 months       Control              NA                0.2941176    0.0752296   0.5130057
24 months   ki1000304-Vitamin-B12       INDIA                          <25_24 months       Other                NA                0.5483871    0.3713494   0.7254248
24 months   ki1000304-Vitamin-B12       INDIA                          [25-30)_24 months   Control              NA                0.4166667    0.1348951   0.6984383
24 months   ki1000304-Vitamin-B12       INDIA                          [25-30)_24 months   Other                NA                0.4736842    0.3133187   0.6340497
24 months   ki1000304-Vitamin-B12       INDIA                          >=30_24 months      Control              NA                0.4444444    0.1149244   0.7739645
24 months   ki1000304-Vitamin-B12       INDIA                          >=30_24 months      Other                NA                0.4000000    0.2050756   0.5949244
24 months   ki1119695-PROBIT            BELARUS                        <25_24 months       Control              NA                0.1344086    0.0330732   0.2357440
24 months   ki1119695-PROBIT            BELARUS                        <25_24 months       Maternal             NA                0.1240310    0.0802311   0.1678309
24 months   ki1119695-PROBIT            BELARUS                        [25-30)_24 months   Control              NA                0.1229508   -0.0274290   0.2733306
24 months   ki1119695-PROBIT            BELARUS                        [25-30)_24 months   Maternal             NA                0.1250000   -0.0181204   0.2681204
24 months   ki1119695-PROBIT            BELARUS                        >=30_24 months      Control              NA                0.1060606    0.0197830   0.1923382
24 months   ki1119695-PROBIT            BELARUS                        >=30_24 months      Maternal             NA                0.0617284   -0.0044378   0.1278946
24 months   ki1126311-ZVITAMBO          ZIMBABWE                       <25_24 months       Control              NA                0.5000000    0.0909324   0.9090676
24 months   ki1126311-ZVITAMBO          ZIMBABWE                       <25_24 months       VitA                 NA                0.7647059    0.5585342   0.9708775
24 months   ki1135781-COHORTS           GUATEMALA                      <25_24 months       Control              NA                0.8382353    0.7504097   0.9260609
24 months   ki1135781-COHORTS           GUATEMALA                      <25_24 months       Other                NA                0.8181818    0.7317350   0.9046286
24 months   ki1135781-COHORTS           GUATEMALA                      [25-30)_24 months   Control              NA                0.8421053    0.7253308   0.9588797
24 months   ki1135781-COHORTS           GUATEMALA                      [25-30)_24 months   Other                NA                0.7812500    0.6369831   0.9255169
24 months   ki1135781-COHORTS           GUATEMALA                      >=30_24 months      Control              NA                0.7540984    0.6455580   0.8626387
24 months   ki1135781-COHORTS           GUATEMALA                      >=30_24 months      Other                NA                0.6415094    0.5118322   0.7711867
24 months   ki1148112-iLiNS-DOSE        MALAWI                         <25_24 months       Control              NA                0.5238095    0.4003183   0.6473008
24 months   ki1148112-iLiNS-DOSE        MALAWI                         <25_24 months       LNS                  NA                0.5530547    0.4977247   0.6083846
24 months   ki1148112-iLiNS-DOSE        MALAWI                         [25-30)_24 months   Control              NA                0.4347826    0.2316291   0.6379362
24 months   ki1148112-iLiNS-DOSE        MALAWI                         [25-30)_24 months   LNS                  NA                0.4088050    0.3321802   0.4854298
24 months   ki1148112-iLiNS-DOSE        MALAWI                         >=30_24 months      Control              NA                0.5250000    0.3698770   0.6801230
24 months   ki1148112-iLiNS-DOSE        MALAWI                         >=30_24 months      LNS                  NA                0.4970760    0.4219580   0.5721941
24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         <25_24 months       Control              NA                0.5714286    0.1991452   0.9437119
24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         <25_24 months       Maternal             NA                0.3076923    0.1275352   0.4878494
24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         [25-30)_24 months   Control              NA                0.3333333   -0.2126544   0.8793211
24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         [25-30)_24 months   Maternal             NA                0.4736842    0.2438892   0.7034792
24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         >=30_24 months      Control              NA                1.0000000    1.0000000   1.0000000
24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         >=30_24 months      Maternal             NA                0.3750000    0.0213795   0.7286205
24 months   ki1148112-LCNI-5            MALAWI                         <25_24 months       Control              NA                0.4473684    0.2886612   0.6060756
24 months   ki1148112-LCNI-5            MALAWI                         <25_24 months       LNS                  NA                0.2941176    0.1685784   0.4196569
24 months   ki1148112-LCNI-5            MALAWI                         <25_24 months       Other                NA                0.2250000    0.0950878   0.3549122
24 months   ki1148112-LCNI-5            MALAWI                         [25-30)_24 months   Control              NA                0.2500000    0.0756826   0.4243174
24 months   ki1148112-LCNI-5            MALAWI                         [25-30)_24 months   LNS                  NA                0.4615385    0.3041059   0.6189710
24 months   ki1148112-LCNI-5            MALAWI                         [25-30)_24 months   Other                NA                0.6111111    0.3844995   0.8377228
24 months   ki1148112-LCNI-5            MALAWI                         >=30_24 months      Control              NA                0.4193548    0.2447916   0.5939181
24 months   ki1148112-LCNI-5            MALAWI                         >=30_24 months      LNS                  NA                0.4901961    0.3523200   0.6280722
24 months   ki1148112-LCNI-5            MALAWI                         >=30_24 months      Other                NA                0.3500000    0.1399304   0.5600696
24 months   kiGH5241-JiVitA-3           BANGLADESH                     <25_24 months       Control              NA                0.4754098    0.3122311   0.6385886
24 months   kiGH5241-JiVitA-3           BANGLADESH                     <25_24 months       Maternal             NA                0.6515152    0.5038870   0.7991433
24 months   kiGH5241-JiVitA-3           BANGLADESH                     [25-30)_24 months   Control              NA                0.1666667   -0.3325640   0.6658973
24 months   kiGH5241-JiVitA-3           BANGLADESH                     [25-30)_24 months   Maternal             NA                0.2352941   -0.0060822   0.4766705


### Parameter: E(Y)


agecat      studyid                     country                        intXmage            intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------  --------------------------  -----------------------------  ------------------  -------------------  ---------------  ----------  -----------  ----------
Birth       ki1000304b-SAS-CompFeed     INDIA                          <25_Birth           NA                   NA                0.2941176    0.2149917   0.3732436
Birth       ki1000304b-SAS-CompFeed     INDIA                          [25-30)_Birth       NA                   NA                0.2750000    0.1186801   0.4313199
Birth       ki1119695-PROBIT            BELARUS                        <25_Birth           NA                   NA                0.0030848    0.0009490   0.0052206
Birth       ki1119695-PROBIT            BELARUS                        [25-30)_Birth       NA                   NA                0.0015436    0.0003561   0.0027311
Birth       ki1126311-ZVITAMBO          ZIMBABWE                       <25_Birth           NA                   NA                0.1063061    0.0995615   0.1130506
Birth       ki1126311-ZVITAMBO          ZIMBABWE                       [25-30)_Birth       NA                   NA                0.1022661    0.0921423   0.1123900
Birth       ki1126311-ZVITAMBO          ZIMBABWE                       >=30_Birth          NA                   NA                0.0950947    0.0831657   0.1070236
Birth       ki1135781-COHORTS           GUATEMALA                      <25_Birth           NA                   NA                0.0672515    0.0406685   0.0938345
Birth       ki1135781-COHORTS           GUATEMALA                      [25-30)_Birth       NA                   NA                0.0271739    0.0036171   0.0507307
Birth       ki1135781-COHORTS           GUATEMALA                      >=30_Birth          NA                   NA                0.0674847    0.0402114   0.0947579
Birth       kiGH5241-JiVitA-3           BANGLADESH                     <25_Birth           NA                   NA                0.3355373    0.3267153   0.3443593
Birth       kiGH5241-JiVitA-3           BANGLADESH                     [25-30)_Birth       NA                   NA                0.2839799    0.2652915   0.3026682
Birth       kiGH5241-JiVitA-3           BANGLADESH                     >=30_Birth          NA                   NA                0.2981701    0.2725942   0.3237460
6 months    iLiNS_DYADM_LNS             MALAWI                         <25_6 months        NA                   NA                0.2060440    0.1644363   0.2476516
6 months    iLiNS_DYADM_LNS             MALAWI                         [25-30)_6 months    NA                   NA                0.2267442    0.1639847   0.2895037
6 months    iLiNS_DYADM_LNS             MALAWI                         >=30_6 months       NA                   NA                0.2789116    0.2061672   0.3516559
6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     <25_6 months        NA                   NA                0.1573850    0.1222212   0.1925488
6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     [25-30)_6 months    NA                   NA                0.1049724    0.0601941   0.1497507
6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     >=30_6 months       NA                   NA                0.1724138    0.0925791   0.2522485
6 months    ki1000111-WASH-Kenya        KENYA                          <25_6 months        NA                   NA                0.1363636    0.0337917   0.2389356
6 months    ki1000125-AgaKhanUniv       PAKISTAN                       <25_6 months        NA                   NA                0.2400000    0.1204189   0.3595811
6 months    ki1000125-AgaKhanUniv       PAKISTAN                       [25-30)_6 months    NA                   NA                0.1724138    0.0743512   0.2704764
6 months    ki1000125-AgaKhanUniv       PAKISTAN                       >=30_6 months       NA                   NA                0.2739726    0.1709549   0.3769903
6 months    ki1000304-EU                INDIA                          <25_6 months        NA                   NA                0.3364929    0.2725858   0.4004000
6 months    ki1000304-EU                INDIA                          [25-30)_6 months    NA                   NA                0.3365385    0.2452839   0.4277930
6 months    ki1000304-EU                INDIA                          >=30_6 months       NA                   NA                0.2127660    0.0944966   0.3310353
6 months    ki1000304-VITAMIN-A         INDIA                          <25_6 months        NA                   NA                0.3415008    0.3157722   0.3672294
6 months    ki1000304-VITAMIN-A         INDIA                          [25-30)_6 months    NA                   NA                0.3395133    0.3079011   0.3711255
6 months    ki1000304-VITAMIN-A         INDIA                          >=30_6 months       NA                   NA                0.3660714    0.3144858   0.4176571
6 months    ki1000304-Vitamin-B12       INDIA                          <25_6 months        NA                   NA                0.3913043    0.2487110   0.5338977
6 months    ki1000304b-SAS-CompFeed     INDIA                          <25_6 months        NA                   NA                0.2608696    0.2058645   0.3158746
6 months    ki1000304b-SAS-CompFeed     INDIA                          [25-30)_6 months    NA                   NA                0.3068182    0.2367799   0.3768565
6 months    ki1000304b-SAS-CompFeed     INDIA                          >=30_6 months       NA                   NA                0.3150685    0.2200956   0.4100414
6 months    ki1000304b-SAS-FoodSuppl    INDIA                          <25_6 months        NA                   NA                0.4038462    0.3266013   0.4810910
6 months    ki1000304b-SAS-FoodSuppl    INDIA                          [25-30)_6 months    NA                   NA                0.4666667    0.3770317   0.5563016
6 months    ki1000304b-SAS-FoodSuppl    INDIA                          >=30_6 months       NA                   NA                0.4050633    0.2961207   0.5140059
6 months    ki1017093b-PROVIDE          BANGLADESH                     <25_6 months        NA                   NA                0.2173913    0.0450338   0.3897488
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   <25_6 months        NA                   NA                0.1022013    0.0786411   0.1257615
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   [25-30)_6 months    NA                   NA                0.1232639    0.0963940   0.1501338
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   >=30_6 months       NA                   NA                0.0991736    0.0725177   0.1258294
6 months    ki1112895-Guatemala BSC     GUATEMALA                      <25_6 months        NA                   NA                0.3421053    0.2546337   0.4295768
6 months    ki1112895-Guatemala BSC     GUATEMALA                      [25-30)_6 months    NA                   NA                0.2075472    0.0973193   0.3177751
6 months    ki1112895-Guatemala BSC     GUATEMALA                      >=30_6 months       NA                   NA                0.3409091    0.1992300   0.4825882
6 months    ki1119695-PROBIT            BELARUS                        <25_6 months        NA                   NA                0.0700230    0.0525350   0.0875110
6 months    ki1119695-PROBIT            BELARUS                        [25-30)_6 months    NA                   NA                0.0518555    0.0408193   0.0628917
6 months    ki1119695-PROBIT            BELARUS                        >=30_6 months       NA                   NA                0.0633397    0.0436461   0.0830334
6 months    ki1126311-ZVITAMBO          ZIMBABWE                       <25_6 months        NA                   NA                0.1658965    0.1548128   0.1769801
6 months    ki1126311-ZVITAMBO          ZIMBABWE                       [25-30)_6 months    NA                   NA                0.1644803    0.1481558   0.1808049
6 months    ki1126311-ZVITAMBO          ZIMBABWE                       >=30_6 months       NA                   NA                0.1666667    0.1474911   0.1858422
6 months    ki1135781-COHORTS           GUATEMALA                      <25_6 months        NA                   NA                0.3983740    0.3483552   0.4483927
6 months    ki1135781-COHORTS           GUATEMALA                      [25-30)_6 months    NA                   NA                0.4108911    0.3428751   0.4789071
6 months    ki1135781-COHORTS           GUATEMALA                      >=30_6 months       NA                   NA                0.4404432    0.3891613   0.4917251
6 months    ki1148112-iLiNS-DOSE        MALAWI                         <25_6 months        NA                   NA                0.3057940    0.2761981   0.3353899
6 months    ki1148112-iLiNS-DOSE        MALAWI                         [25-30)_6 months    NA                   NA                0.2572707    0.2167020   0.2978394
6 months    ki1148112-iLiNS-DOSE        MALAWI                         >=30_6 months       NA                   NA                0.3390192    0.2961316   0.3819068
6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         <25_6 months        NA                   NA                0.2049336    0.1704380   0.2394292
6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         [25-30)_6 months    NA                   NA                0.2446809    0.1944165   0.2949452
6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         >=30_6 months       NA                   NA                0.2545455    0.1968530   0.3122379
6 months    ki1148112-LCNI-5            MALAWI                         <25_6 months        NA                   NA                0.3366667    0.2831020   0.3902313
6 months    ki1148112-LCNI-5            MALAWI                         [25-30)_6 months    NA                   NA                0.3976608    0.3240908   0.4712308
6 months    ki1148112-LCNI-5            MALAWI                         >=30_6 months       NA                   NA                0.4090909    0.3404338   0.4777480
6 months    kiGH5241-JiVitA-3           BANGLADESH                     <25_6 months        NA                   NA                0.2570677    0.2480062   0.2661292
6 months    kiGH5241-JiVitA-3           BANGLADESH                     [25-30)_6 months    NA                   NA                0.2263422    0.2071368   0.2455477
6 months    kiGH5241-JiVitA-3           BANGLADESH                     >=30_6 months       NA                   NA                0.2450739    0.2162149   0.2739329
24 months   iLiNS_DYADM_LNS             MALAWI                         <25_24 months       NA                   NA                0.4090909    0.1988057   0.6193761
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     <25_24 months       NA                   NA                0.4070661    0.3692978   0.4448343
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     [25-30)_24 months   NA                   NA                0.4247788    0.3720814   0.4774761
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     >=30_24 months      NA                   NA                0.3750000    0.3063426   0.4436574
24 months   ki1000111-WASH-Kenya        KENYA                          <25_24 months       NA                   NA                0.3298862    0.3002368   0.3595356
24 months   ki1000111-WASH-Kenya        KENYA                          [25-30)_24 months   NA                   NA                0.2895570    0.2541682   0.3249457
24 months   ki1000111-WASH-Kenya        KENYA                          >=30_24 months      NA                   NA                0.2910217    0.2559669   0.3260765
24 months   ki1000304-EU                INDIA                          <25_24 months       NA                   NA                0.5967742    0.5100831   0.6834653
24 months   ki1000304-EU                INDIA                          [25-30)_24 months   NA                   NA                0.5652174    0.4633650   0.6670698
24 months   ki1000304-EU                INDIA                          >=30_24 months      NA                   NA                0.6857143    0.5296719   0.8417567
24 months   ki1000304-Vitamin-B12       INDIA                          <25_24 months       NA                   NA                0.4583333    0.3158855   0.6007812
24 months   ki1000304-Vitamin-B12       INDIA                          [25-30)_24 months   NA                   NA                0.4600000    0.3204513   0.5995487
24 months   ki1000304-Vitamin-B12       INDIA                          >=30_24 months      NA                   NA                0.4117647    0.2438490   0.5796804
24 months   ki1119695-PROBIT            BELARUS                        <25_24 months       NA                   NA                0.1283784    0.0783765   0.1783802
24 months   ki1119695-PROBIT            BELARUS                        [25-30)_24 months   NA                   NA                0.1240000    0.0224898   0.2255102
24 months   ki1119695-PROBIT            BELARUS                        >=30_24 months      NA                   NA                0.0816327    0.0279529   0.1353124
24 months   ki1126311-ZVITAMBO          ZIMBABWE                       <25_24 months       NA                   NA                0.6956522    0.5033793   0.8879250
24 months   ki1135781-COHORTS           GUATEMALA                      <25_24 months       NA                   NA                0.8275862    0.7658899   0.8892826
24 months   ki1135781-COHORTS           GUATEMALA                      [25-30)_24 months   NA                   NA                0.8142857    0.7225297   0.9060417
24 months   ki1135781-COHORTS           GUATEMALA                      >=30_24 months      NA                   NA                0.7017544    0.6174037   0.7861050
24 months   ki1148112-iLiNS-DOSE        MALAWI                         <25_24 months       NA                   NA                0.5481283    0.4976224   0.5986343
24 months   ki1148112-iLiNS-DOSE        MALAWI                         [25-30)_24 months   NA                   NA                0.4120879    0.3403812   0.4837946
24 months   ki1148112-iLiNS-DOSE        MALAWI                         >=30_24 months      NA                   NA                0.5023697    0.4347452   0.5699941
24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         <25_24 months       NA                   NA                0.3636364    0.1969656   0.5303071
24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         [25-30)_24 months   NA                   NA                0.4545455    0.2415814   0.6675095
24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         >=30_24 months      NA                   NA                0.5000000    0.1733393   0.8266607
24 months   ki1148112-LCNI-5            MALAWI                         <25_24 months       NA                   NA                0.3178295    0.2371642   0.3984947
24 months   ki1148112-LCNI-5            MALAWI                         [25-30)_24 months   NA                   NA                0.4320988    0.3235485   0.5406491
24 months   ki1148112-LCNI-5            MALAWI                         >=30_24 months      NA                   NA                0.4411765    0.3443418   0.5380111
24 months   kiGH5241-JiVitA-3           BANGLADESH                     <25_24 months       NA                   NA                0.5669291    0.4545456   0.6793126
24 months   kiGH5241-JiVitA-3           BANGLADESH                     [25-30)_24 months   NA                   NA                0.2173913   -0.0037748   0.4385574


### Parameter: RR


agecat      studyid                     country                        intXmage            intervention_level   baseline_level     estimate    ci_lower     ci_upper
----------  --------------------------  -----------------------------  ------------------  -------------------  ---------------  ----------  ----------  -----------
Birth       ki1000304b-SAS-CompFeed     INDIA                          <25_Birth           Control              Control           1.0000000   1.0000000    1.0000000
Birth       ki1000304b-SAS-CompFeed     INDIA                          <25_Birth           Other                Control           0.9184783   0.5385510    1.5664296
Birth       ki1000304b-SAS-CompFeed     INDIA                          [25-30)_Birth       Control              Control           1.0000000   1.0000000    1.0000000
Birth       ki1000304b-SAS-CompFeed     INDIA                          [25-30)_Birth       Other                Control           1.6235294   0.5899297    4.4680711
Birth       ki1119695-PROBIT            BELARUS                        <25_Birth           Control              Control           1.0000000   1.0000000    1.0000000
Birth       ki1119695-PROBIT            BELARUS                        <25_Birth           Maternal             Control           0.7251373   0.1927422    2.7281218
Birth       ki1119695-PROBIT            BELARUS                        [25-30)_Birth       Control              Control           1.0000000   1.0000000    1.0000000
Birth       ki1119695-PROBIT            BELARUS                        [25-30)_Birth       Maternal             Control           0.1932221   0.0221222    1.6876597
Birth       ki1126311-ZVITAMBO          ZIMBABWE                       <25_Birth           Control              Control           1.0000000   1.0000000    1.0000000
Birth       ki1126311-ZVITAMBO          ZIMBABWE                       <25_Birth           VitA                 Control           0.9260085   0.8022679    1.0688347
Birth       ki1126311-ZVITAMBO          ZIMBABWE                       [25-30)_Birth       Control              Control           1.0000000   1.0000000    1.0000000
Birth       ki1126311-ZVITAMBO          ZIMBABWE                       [25-30)_Birth       VitA                 Control           1.0825273   0.8577265    1.3662459
Birth       ki1126311-ZVITAMBO          ZIMBABWE                       >=30_Birth          Control              Control           1.0000000   1.0000000    1.0000000
Birth       ki1126311-ZVITAMBO          ZIMBABWE                       >=30_Birth          VitA                 Control           1.1117304   0.8212407    1.5049721
Birth       ki1135781-COHORTS           GUATEMALA                      <25_Birth           Control              Control           1.0000000   1.0000000    1.0000000
Birth       ki1135781-COHORTS           GUATEMALA                      <25_Birth           Other                Control           1.7684659   0.7690822    4.0664985
Birth       ki1135781-COHORTS           GUATEMALA                      [25-30)_Birth       Control              Control           1.0000000   1.0000000    1.0000000
Birth       ki1135781-COHORTS           GUATEMALA                      [25-30)_Birth       Other                Control           3.4343434   0.3890075   30.3200213
Birth       ki1135781-COHORTS           GUATEMALA                      >=30_Birth          Control              Control           1.0000000   1.0000000    1.0000000
Birth       ki1135781-COHORTS           GUATEMALA                      >=30_Birth          Other                Control           1.1011765   0.4889717    2.4798768
Birth       kiGH5241-JiVitA-3           BANGLADESH                     <25_Birth           Control              Control           1.0000000   1.0000000    1.0000000
Birth       kiGH5241-JiVitA-3           BANGLADESH                     <25_Birth           Maternal             Control           0.8997941   0.8541883    0.9478349
Birth       kiGH5241-JiVitA-3           BANGLADESH                     [25-30)_Birth       Control              Control           1.0000000   1.0000000    1.0000000
Birth       kiGH5241-JiVitA-3           BANGLADESH                     [25-30)_Birth       Maternal             Control           0.8941393   0.7838977    1.0198845
Birth       kiGH5241-JiVitA-3           BANGLADESH                     >=30_Birth          Control              Control           1.0000000   1.0000000    1.0000000
Birth       kiGH5241-JiVitA-3           BANGLADESH                     >=30_Birth          Maternal             Control           0.8661986   0.7297327    1.0281847
6 months    iLiNS_DYADM_LNS             MALAWI                         <25_6 months        Control              Control           1.0000000   1.0000000    1.0000000
6 months    iLiNS_DYADM_LNS             MALAWI                         <25_6 months        LNS                  Control           1.2342857   0.8232994    1.8504340
6 months    iLiNS_DYADM_LNS             MALAWI                         [25-30)_6 months    Control              Control           1.0000000   1.0000000    1.0000000
6 months    iLiNS_DYADM_LNS             MALAWI                         [25-30)_6 months    LNS                  Control           0.7376033   0.4215458    1.2906274
6 months    iLiNS_DYADM_LNS             MALAWI                         >=30_6 months       Control              Control           1.0000000   1.0000000    1.0000000
6 months    iLiNS_DYADM_LNS             MALAWI                         >=30_6 months       LNS                  Control           0.7234783   0.4219164    1.2405795
6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     <25_6 months        Control              Control           1.0000000   1.0000000    1.0000000
6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     <25_6 months        LNS                  Control           0.7491870   0.4239425    1.3239559
6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     <25_6 months        Other                Control           0.6533679   0.3845411    1.1101274
6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     [25-30)_6 months    Control              Control           1.0000000   1.0000000    1.0000000
6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     [25-30)_6 months    LNS                  Control           1.9069767   0.5084667    7.1520134
6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     [25-30)_6 months    Other                Control           1.4089347   0.4073550    4.8731372
6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     >=30_6 months       Control              Control           1.0000000   1.0000000    1.0000000
6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     >=30_6 months       LNS                  Control           0.5476190   0.1552452    1.9316972
6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     >=30_6 months       Other                Control           0.5348837   0.1932896    1.4801655
6 months    ki1000111-WASH-Kenya        KENYA                          <25_6 months        Control              Control           1.0000000   1.0000000    1.0000000
6 months    ki1000111-WASH-Kenya        KENYA                          <25_6 months        LNS                  Control           4.2500000   0.4370794   41.3254394
6 months    ki1000111-WASH-Kenya        KENYA                          <25_6 months        Other                Control           2.6842105   0.2999386   24.0215342
6 months    ki1000125-AgaKhanUniv       PAKISTAN                       <25_6 months        Control              Control           1.0000000   1.0000000    1.0000000
6 months    ki1000125-AgaKhanUniv       PAKISTAN                       <25_6 months        Maternal             Control           1.1925926   0.4325997    3.2877443
6 months    ki1000125-AgaKhanUniv       PAKISTAN                       [25-30)_6 months    Control              Control           1.0000000   1.0000000    1.0000000
6 months    ki1000125-AgaKhanUniv       PAKISTAN                       [25-30)_6 months    Maternal             Control           0.7654321   0.2386942    2.4545475
6 months    ki1000125-AgaKhanUniv       PAKISTAN                       >=30_6 months       Control              Control           1.0000000   1.0000000    1.0000000
6 months    ki1000125-AgaKhanUniv       PAKISTAN                       >=30_6 months       Maternal             Control           0.9385027   0.4404106    1.9999228
6 months    ki1000304-EU                INDIA                          <25_6 months        Control              Control           1.0000000   1.0000000    1.0000000
6 months    ki1000304-EU                INDIA                          <25_6 months        Zinc                 Control           0.8121951   0.5517972    1.1954770
6 months    ki1000304-EU                INDIA                          [25-30)_6 months    Control              Control           1.0000000   1.0000000    1.0000000
6 months    ki1000304-EU                INDIA                          [25-30)_6 months    Zinc                 Control           0.6086957   0.3392311    1.0922064
6 months    ki1000304-EU                INDIA                          >=30_6 months       Control              Control           1.0000000   1.0000000    1.0000000
6 months    ki1000304-EU                INDIA                          >=30_6 months       Zinc                 Control           1.9375000   0.6484547    5.7890029
6 months    ki1000304-VITAMIN-A         INDIA                          <25_6 months        Control              Control           1.0000000   1.0000000    1.0000000
6 months    ki1000304-VITAMIN-A         INDIA                          <25_6 months        VitA                 Control           0.9518789   0.8184504    1.1070597
6 months    ki1000304-VITAMIN-A         INDIA                          [25-30)_6 months    Control              Control           1.0000000   1.0000000    1.0000000
6 months    ki1000304-VITAMIN-A         INDIA                          [25-30)_6 months    VitA                 Control           0.8212678   0.6812545    0.9900571
6 months    ki1000304-VITAMIN-A         INDIA                          >=30_6 months       Control              Control           1.0000000   1.0000000    1.0000000
6 months    ki1000304-VITAMIN-A         INDIA                          >=30_6 months       VitA                 Control           1.1341111   0.8549579    1.5044109
6 months    ki1000304-Vitamin-B12       INDIA                          <25_6 months        Control              Control           1.0000000   1.0000000    1.0000000
6 months    ki1000304-Vitamin-B12       INDIA                          <25_6 months        Other                Control           0.8171429   0.3722351    1.7938192
6 months    ki1000304b-SAS-CompFeed     INDIA                          <25_6 months        Control              Control           1.0000000   1.0000000    1.0000000
6 months    ki1000304b-SAS-CompFeed     INDIA                          <25_6 months        Other                Control           1.0833333   0.7123250    1.6475781
6 months    ki1000304b-SAS-CompFeed     INDIA                          [25-30)_6 months    Control              Control           1.0000000   1.0000000    1.0000000
6 months    ki1000304b-SAS-CompFeed     INDIA                          [25-30)_6 months    Other                Control           0.9130435   0.5781084    1.4420277
6 months    ki1000304b-SAS-CompFeed     INDIA                          >=30_6 months       Control              Control           1.0000000   1.0000000    1.0000000
6 months    ki1000304b-SAS-CompFeed     INDIA                          >=30_6 months       Other                Control           1.0047847   0.5482121    1.8416089
6 months    ki1000304b-SAS-FoodSuppl    INDIA                          <25_6 months        Control              Control           1.0000000   1.0000000    1.0000000
6 months    ki1000304b-SAS-FoodSuppl    INDIA                          <25_6 months        Other                Control           0.8333333   0.5527531    1.2563374
6 months    ki1000304b-SAS-FoodSuppl    INDIA                          [25-30)_6 months    Control              Control           1.0000000   1.0000000    1.0000000
6 months    ki1000304b-SAS-FoodSuppl    INDIA                          [25-30)_6 months    Other                Control           0.6321839   0.4388568    0.9106764
6 months    ki1000304b-SAS-FoodSuppl    INDIA                          >=30_6 months       Control              Control           1.0000000   1.0000000    1.0000000
6 months    ki1000304b-SAS-FoodSuppl    INDIA                          >=30_6 months       Other                Control           0.8852459   0.4824166    1.6244474
6 months    ki1017093b-PROVIDE          BANGLADESH                     <25_6 months        Control              Control           1.0000000   1.0000000    1.0000000
6 months    ki1017093b-PROVIDE          BANGLADESH                     <25_6 months        Other                Control           1.4117647   0.1857073   10.7323702
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   <25_6 months        Control              Control           1.0000000   1.0000000    1.0000000
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   <25_6 months        Other                Control           1.3813321   0.7061653    2.7020278
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   <25_6 months        Zinc                 Control           1.2412036   0.6724851    2.2908853
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   [25-30)_6 months    Control              Control           1.0000000   1.0000000    1.0000000
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   [25-30)_6 months    Other                Control           0.8522727   0.4483221    1.6201941
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   [25-30)_6 months    Zinc                 Control           0.9223301   0.5464065    1.5568863
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   >=30_6 months       Control              Control           1.0000000   1.0000000    1.0000000
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   >=30_6 months       Other                Control           0.7370000   0.3556268    1.5273569
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   >=30_6 months       Zinc                 Control           0.7816667   0.4226583    1.4456188
6 months    ki1112895-Guatemala BSC     GUATEMALA                      <25_6 months        Control              Control           1.0000000   1.0000000    1.0000000
6 months    ki1112895-Guatemala BSC     GUATEMALA                      <25_6 months        Other                Control           0.9865229   0.5906134    1.6478250
6 months    ki1112895-Guatemala BSC     GUATEMALA                      [25-30)_6 months    Control              Control           1.0000000   1.0000000    1.0000000
6 months    ki1112895-Guatemala BSC     GUATEMALA                      [25-30)_6 months    Other                Control           0.8516129   0.2939713    2.4670592
6 months    ki1112895-Guatemala BSC     GUATEMALA                      >=30_6 months       Control              Control           1.0000000   1.0000000    1.0000000
6 months    ki1112895-Guatemala BSC     GUATEMALA                      >=30_6 months       Other                Control           0.6650000   0.2899945    1.5249428
6 months    ki1119695-PROBIT            BELARUS                        <25_6 months        Control              Control           1.0000000   1.0000000    1.0000000
6 months    ki1119695-PROBIT            BELARUS                        <25_6 months        Maternal             Control           0.7795343   0.4918503    1.2354850
6 months    ki1119695-PROBIT            BELARUS                        [25-30)_6 months    Control              Control           1.0000000   1.0000000    1.0000000
6 months    ki1119695-PROBIT            BELARUS                        [25-30)_6 months    Maternal             Control           0.7524880   0.5121465    1.1056178
6 months    ki1119695-PROBIT            BELARUS                        >=30_6 months       Control              Control           1.0000000   1.0000000    1.0000000
6 months    ki1119695-PROBIT            BELARUS                        >=30_6 months       Maternal             Control           0.7096339   0.3856747    1.3057127
6 months    ki1126311-ZVITAMBO          ZIMBABWE                       <25_6 months        Control              Control           1.0000000   1.0000000    1.0000000
6 months    ki1126311-ZVITAMBO          ZIMBABWE                       <25_6 months        VitA                 Control           1.0151620   0.8690240    1.1858750
6 months    ki1126311-ZVITAMBO          ZIMBABWE                       [25-30)_6 months    Control              Control           1.0000000   1.0000000    1.0000000
6 months    ki1126311-ZVITAMBO          ZIMBABWE                       [25-30)_6 months    VitA                 Control           0.8745519   0.7009203    1.0911955
6 months    ki1126311-ZVITAMBO          ZIMBABWE                       >=30_6 months       Control              Control           1.0000000   1.0000000    1.0000000
6 months    ki1126311-ZVITAMBO          ZIMBABWE                       >=30_6 months       VitA                 Control           1.2836509   0.9583194    1.7194265
6 months    ki1135781-COHORTS           GUATEMALA                      <25_6 months        Control              Control           1.0000000   1.0000000    1.0000000
6 months    ki1135781-COHORTS           GUATEMALA                      <25_6 months        Other                Control           1.0710018   0.8323056    1.3781535
6 months    ki1135781-COHORTS           GUATEMALA                      [25-30)_6 months    Control              Control           1.0000000   1.0000000    1.0000000
6 months    ki1135781-COHORTS           GUATEMALA                      [25-30)_6 months    Other                Control           0.7141406   0.5113696    0.9973155
6 months    ki1135781-COHORTS           GUATEMALA                      >=30_6 months       Control              Control           1.0000000   1.0000000    1.0000000
6 months    ki1135781-COHORTS           GUATEMALA                      >=30_6 months       Other                Control           0.6526243   0.5123213    0.8313504
6 months    ki1148112-iLiNS-DOSE        MALAWI                         <25_6 months        Control              Control           1.0000000   1.0000000    1.0000000
6 months    ki1148112-iLiNS-DOSE        MALAWI                         <25_6 months        LNS                  Control           0.8539235   0.6731402    1.0832592
6 months    ki1148112-iLiNS-DOSE        MALAWI                         [25-30)_6 months    Control              Control           1.0000000   1.0000000    1.0000000
6 months    ki1148112-iLiNS-DOSE        MALAWI                         [25-30)_6 months    LNS                  Control           0.9778174   0.6207810    1.5401997
6 months    ki1148112-iLiNS-DOSE        MALAWI                         >=30_6 months       Control              Control           1.0000000   1.0000000    1.0000000
6 months    ki1148112-iLiNS-DOSE        MALAWI                         >=30_6 months       LNS                  Control           0.9498352   0.6864505    1.3142780
6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         <25_6 months        Control              Control           1.0000000   1.0000000    1.0000000
6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         <25_6 months        Maternal             Control           1.1662722   0.8121751    1.6747506
6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         [25-30)_6 months    Control              Control           1.0000000   1.0000000    1.0000000
6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         [25-30)_6 months    Maternal             Control           0.9063361   0.5848497    1.4045405
6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         >=30_6 months       Control              Control           1.0000000   1.0000000    1.0000000
6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         >=30_6 months       Maternal             Control           0.6811268   0.4344536    1.0678555
6 months    ki1148112-LCNI-5            MALAWI                         <25_6 months        Control              Control           1.0000000   1.0000000    1.0000000
6 months    ki1148112-LCNI-5            MALAWI                         <25_6 months        LNS                  Control           0.9200000   0.6361366    1.3305318
6 months    ki1148112-LCNI-5            MALAWI                         <25_6 months        Other                Control           0.8035714   0.5201500    1.2414247
6 months    ki1148112-LCNI-5            MALAWI                         [25-30)_6 months    Control              Control           1.0000000   1.0000000    1.0000000
6 months    ki1148112-LCNI-5            MALAWI                         [25-30)_6 months    LNS                  Control           1.1873016   0.7293605    1.9327685
6 months    ki1148112-LCNI-5            MALAWI                         [25-30)_6 months    Other                Control           1.2961240   0.7611877    2.2069950
6 months    ki1148112-LCNI-5            MALAWI                         >=30_6 months       Control              Control           1.0000000   1.0000000    1.0000000
6 months    ki1148112-LCNI-5            MALAWI                         >=30_6 months       LNS                  Control           1.1788162   0.7348470    1.8910162
6 months    ki1148112-LCNI-5            MALAWI                         >=30_6 months       Other                Control           1.4354610   0.8660148    2.3793455
6 months    kiGH5241-JiVitA-3           BANGLADESH                     <25_6 months        Control              Control           1.0000000   1.0000000    1.0000000
6 months    kiGH5241-JiVitA-3           BANGLADESH                     <25_6 months        Maternal             Control           0.9136689   0.8518598    0.9799626
6 months    kiGH5241-JiVitA-3           BANGLADESH                     [25-30)_6 months    Control              Control           1.0000000   1.0000000    1.0000000
6 months    kiGH5241-JiVitA-3           BANGLADESH                     [25-30)_6 months    Maternal             Control           0.9517217   0.8030988    1.1278490
6 months    kiGH5241-JiVitA-3           BANGLADESH                     >=30_6 months       Control              Control           1.0000000   1.0000000    1.0000000
6 months    kiGH5241-JiVitA-3           BANGLADESH                     >=30_6 months       Maternal             Control           0.9373545   0.7400920    1.1871950
24 months   iLiNS_DYADM_LNS             MALAWI                         <25_24 months       Control              Control           1.0000000   1.0000000    1.0000000
24 months   iLiNS_DYADM_LNS             MALAWI                         <25_24 months       LNS                  Control           0.5833333   0.2181115    1.5601094
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     <25_24 months       Control              Control           1.0000000   1.0000000    1.0000000
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     <25_24 months       LNS                  Control           0.9492908   0.7291686    1.2358637
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     <25_24 months       Other                Control           0.9696970   0.7746540    1.2138479
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     [25-30)_24 months   Control              Control           1.0000000   1.0000000    1.0000000
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     [25-30)_24 months   LNS                  Control           0.7752809   0.5373511    1.1185619
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     [25-30)_24 months   Other                Control           0.9010547   0.6686085    1.2143125
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     >=30_24 months      Control              Control           1.0000000   1.0000000    1.0000000
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     >=30_24 months      LNS                  Control           0.9183673   0.5193773    1.6238651
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     >=30_24 months      Other                Control           1.1904762   0.7326883    1.9342926
24 months   ki1000111-WASH-Kenya        KENYA                          <25_24 months       Control              Control           1.0000000   1.0000000    1.0000000
24 months   ki1000111-WASH-Kenya        KENYA                          <25_24 months       LNS                  Control           0.7796276   0.5911549    1.0281895
24 months   ki1000111-WASH-Kenya        KENYA                          <25_24 months       Other                Control           1.0312047   0.8473373    1.2549703
24 months   ki1000111-WASH-Kenya        KENYA                          [25-30)_24 months   Control              Control           1.0000000   1.0000000    1.0000000
24 months   ki1000111-WASH-Kenya        KENYA                          [25-30)_24 months   LNS                  Control           0.8927622   0.6438321    1.2379382
24 months   ki1000111-WASH-Kenya        KENYA                          [25-30)_24 months   Other                Control           0.8733804   0.6622606    1.1518022
24 months   ki1000111-WASH-Kenya        KENYA                          >=30_24 months      Control              Control           1.0000000   1.0000000    1.0000000
24 months   ki1000111-WASH-Kenya        KENYA                          >=30_24 months      LNS                  Control           1.3411861   0.9568849    1.8798292
24 months   ki1000111-WASH-Kenya        KENYA                          >=30_24 months      Other                Control           1.2930278   0.9598115    1.7419263
24 months   ki1000304-EU                INDIA                          <25_24 months       Control              Control           1.0000000   1.0000000    1.0000000
24 months   ki1000304-EU                INDIA                          <25_24 months       Zinc                 Control           0.8599190   0.6432588    1.1495541
24 months   ki1000304-EU                INDIA                          [25-30)_24 months   Control              Control           1.0000000   1.0000000    1.0000000
24 months   ki1000304-EU                INDIA                          [25-30)_24 months   Zinc                 Control           0.9533333   0.6609114    1.3751380
24 months   ki1000304-EU                INDIA                          >=30_24 months      Control              Control           1.0000000   1.0000000    1.0000000
24 months   ki1000304-EU                INDIA                          >=30_24 months      Zinc                 Control           0.7878788   0.5078177    1.2223933
24 months   ki1000304-Vitamin-B12       INDIA                          <25_24 months       Control              Control           1.0000000   1.0000000    1.0000000
24 months   ki1000304-Vitamin-B12       INDIA                          <25_24 months       Other                Control           1.8645161   0.8284307    4.1963925
24 months   ki1000304-Vitamin-B12       INDIA                          [25-30)_24 months   Control              Control           1.0000000   1.0000000    1.0000000
24 months   ki1000304-Vitamin-B12       INDIA                          [25-30)_24 months   Other                Control           1.1368421   0.5336540    2.4218127
24 months   ki1000304-Vitamin-B12       INDIA                          >=30_24 months      Control              Control           1.0000000   1.0000000    1.0000000
24 months   ki1000304-Vitamin-B12       INDIA                          >=30_24 months      Other                Control           0.9000000   0.3706156    2.1855526
24 months   ki1119695-PROBIT            BELARUS                        <25_24 months       Control              Control           1.0000000   1.0000000    1.0000000
24 months   ki1119695-PROBIT            BELARUS                        <25_24 months       Maternal             Control           0.9227907   0.4025760    2.1152343
24 months   ki1119695-PROBIT            BELARUS                        [25-30)_24 months   Control              Control           1.0000000   1.0000000    1.0000000
24 months   ki1119695-PROBIT            BELARUS                        [25-30)_24 months   Maternal             Control           1.0166667   0.1837765    5.6242823
24 months   ki1119695-PROBIT            BELARUS                        >=30_24 months      Control              Control           1.0000000   1.0000000    1.0000000
24 months   ki1119695-PROBIT            BELARUS                        >=30_24 months      Maternal             Control           0.5820106   0.1515311    2.2354237
24 months   ki1126311-ZVITAMBO          ZIMBABWE                       <25_24 months       Control              Control           1.0000000   1.0000000    1.0000000
24 months   ki1126311-ZVITAMBO          ZIMBABWE                       <25_24 months       VitA                 Control           1.5294118   0.6462746    3.6193601
24 months   ki1135781-COHORTS           GUATEMALA                      <25_24 months       Control              Control           1.0000000   1.0000000    1.0000000
24 months   ki1135781-COHORTS           GUATEMALA                      <25_24 months       Other                Control           0.9760766   0.8411265    1.1326780
24 months   ki1135781-COHORTS           GUATEMALA                      [25-30)_24 months   Control              Control           1.0000000   1.0000000    1.0000000
24 months   ki1135781-COHORTS           GUATEMALA                      [25-30)_24 months   Other                Control           0.9277344   0.7364301    1.1687342
24 months   ki1135781-COHORTS           GUATEMALA                      >=30_24 months      Control              Control           1.0000000   1.0000000    1.0000000
24 months   ki1135781-COHORTS           GUATEMALA                      >=30_24 months      Other                Control           0.8506973   0.6637496    1.0902996
24 months   ki1148112-iLiNS-DOSE        MALAWI                         <25_24 months       Control              Control           1.0000000   1.0000000    1.0000000
24 months   ki1148112-iLiNS-DOSE        MALAWI                         <25_24 months       LNS                  Control           1.0558316   0.8172777    1.3640166
24 months   ki1148112-iLiNS-DOSE        MALAWI                         [25-30)_24 months   Control              Control           1.0000000   1.0000000    1.0000000
24 months   ki1148112-iLiNS-DOSE        MALAWI                         [25-30)_24 months   LNS                  Control           0.9402516   0.5683296    1.5555639
24 months   ki1148112-iLiNS-DOSE        MALAWI                         >=30_24 months      Control              Control           1.0000000   1.0000000    1.0000000
24 months   ki1148112-iLiNS-DOSE        MALAWI                         >=30_24 months      LNS                  Control           0.9468115   0.6794101    1.3194564
24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         <25_24 months       Control              Control           1.0000000   1.0000000    1.0000000
24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         <25_24 months       Maternal             Control           0.5384615   0.2242535    1.2929158
24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         [25-30)_24 months   Control              Control           1.0000000   1.0000000    1.0000000
24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         [25-30)_24 months   Maternal             Control           1.4210526   0.2574587    7.8435514
24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         >=30_24 months      Control              Control           1.0000000   1.0000000    1.0000000
24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         >=30_24 months      Maternal             Control           0.3750000   0.1460484    0.9628659
24 months   ki1148112-LCNI-5            MALAWI                         <25_24 months       Control              Control           1.0000000   1.0000000    1.0000000
24 months   ki1148112-LCNI-5            MALAWI                         <25_24 months       LNS                  Control           0.6574394   0.3774128    1.1452358
24 months   ki1148112-LCNI-5            MALAWI                         <25_24 months       Other                Control           0.5029412   0.2553943    0.9904287
24 months   ki1148112-LCNI-5            MALAWI                         [25-30)_24 months   Control              Control           1.0000000   1.0000000    1.0000000
24 months   ki1148112-LCNI-5            MALAWI                         [25-30)_24 months   LNS                  Control           1.8461538   0.8494826    4.0121880
24 months   ki1148112-LCNI-5            MALAWI                         [25-30)_24 months   Other                Control           2.4444444   1.1096854    5.3846872
24 months   ki1148112-LCNI-5            MALAWI                         >=30_24 months      Control              Control           1.0000000   1.0000000    1.0000000
24 months   ki1148112-LCNI-5            MALAWI                         >=30_24 months      LNS                  Control           1.1689291   0.7073037    1.9318367
24 months   ki1148112-LCNI-5            MALAWI                         >=30_24 months      Other                Control           0.8346154   0.4020390    1.7326252
24 months   kiGH5241-JiVitA-3           BANGLADESH                     <25_24 months       Control              Control           1.0000000   1.0000000    1.0000000
24 months   kiGH5241-JiVitA-3           BANGLADESH                     <25_24 months       Maternal             Control           1.3704284   0.9083951    2.0674638
24 months   kiGH5241-JiVitA-3           BANGLADESH                     [25-30)_24 months   Control              Control           1.0000000   1.0000000    1.0000000
24 months   kiGH5241-JiVitA-3           BANGLADESH                     [25-30)_24 months   Maternal             Control           1.4117647   0.0593916   33.5582489


### Parameter: PAR


agecat      studyid                     country                        intXmage            intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------------------  -----------------------------  ------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000304b-SAS-CompFeed     INDIA                          <25_Birth           Control              NA                -0.0135747   -0.1009397    0.0737904
Birth       ki1000304b-SAS-CompFeed     INDIA                          [25-30)_Birth       Control              NA                 0.0576087   -0.0871867    0.2024041
Birth       ki1119695-PROBIT            BELARUS                        <25_Birth           Control              NA                -0.0005084   -0.0027279    0.0017112
Birth       ki1119695-PROBIT            BELARUS                        [25-30)_Birth       Control              NA                -0.0010742   -0.0023339    0.0001855
Birth       ki1126311-ZVITAMBO          ZIMBABWE                       <25_Birth           Control              NA                -0.0062437   -0.0181158    0.0056284
Birth       ki1126311-ZVITAMBO          ZIMBABWE                       [25-30)_Birth       Control              NA                 0.0059358   -0.0111442    0.0230159
Birth       ki1126311-ZVITAMBO          ZIMBABWE                       >=30_Birth          Control              NA                 0.0074381   -0.0132407    0.0281170
Birth       ki1135781-COHORTS           GUATEMALA                      <25_Birth           Control              NA                 0.0190587   -0.0081035    0.0462209
Birth       ki1135781-COHORTS           GUATEMALA                      [25-30)_Birth       Control              NA                 0.0154092   -0.0089859    0.0398043
Birth       ki1135781-COHORTS           GUATEMALA                      >=30_Birth          Control              NA                 0.0033821   -0.0250339    0.0317981
Birth       kiGH5241-JiVitA-3           BANGLADESH                     <25_Birth           Control              NA                -0.0176489   -0.0264487   -0.0088490
Birth       kiGH5241-JiVitA-3           BANGLADESH                     [25-30)_Birth       Control              NA                -0.0165127   -0.0360475    0.0030220
Birth       kiGH5241-JiVitA-3           BANGLADESH                     >=30_Birth          Control              NA                -0.0216989   -0.0476809    0.0042831
6 months    iLiNS_DYADM_LNS             MALAWI                         <25_6 months        Control              NA                 0.0208588   -0.0193023    0.0610198
6 months    iLiNS_DYADM_LNS             MALAWI                         [25-30)_6 months    Control              NA                -0.0351606   -0.0995465    0.0292254
6 months    iLiNS_DYADM_LNS             MALAWI                         >=30_6 months       Control              NA                -0.0416013   -0.1096495    0.0264470
6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     <25_6 months        Control              NA                -0.0488006   -0.1172255    0.0196243
6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     [25-30)_6 months    Control              NA                 0.0318016   -0.0423591    0.1059624
6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     >=30_6 months       Control              NA                -0.0884558   -0.2358557    0.0589442
6 months    ki1000111-WASH-Kenya        KENYA                          <25_6 months        Control              NA                 0.0775401   -0.0383494    0.1934297
6 months    ki1000125-AgaKhanUniv       PAKISTAN                       <25_6 months        Control              NA                 0.0226087   -0.1063070    0.1515244
6 months    ki1000125-AgaKhanUniv       PAKISTAN                       [25-30)_6 months    Control              NA                -0.0211346   -0.1120133    0.0697441
6 months    ki1000125-AgaKhanUniv       PAKISTAN                       >=30_6 months       Control              NA                -0.0080787   -0.1041387    0.0879813
6 months    ki1000304-EU                INDIA                          <25_6 months        Control              NA                -0.0328765   -0.0933898    0.0276368
6 months    ki1000304-EU                INDIA                          [25-30)_6 months    Control              NA                -0.0741758   -0.1580679    0.0097163
6 months    ki1000304-EU                INDIA                          >=30_6 months       Control              NA                 0.0514756   -0.0408358    0.1437871
6 months    ki1000304-VITAMIN-A         INDIA                          <25_6 months        Control              NA                -0.0081289   -0.0329951    0.0167374
6 months    ki1000304-VITAMIN-A         INDIA                          [25-30)_6 months    Control              NA                -0.0342962   -0.0667994   -0.0017930
6 months    ki1000304-VITAMIN-A         INDIA                          >=30_6 months       Control              NA                 0.0228762   -0.0284121    0.0741644
6 months    ki1000304-Vitamin-B12       INDIA                          <25_6 months        Control              NA                -0.0632411   -0.3211387    0.1946565
6 months    ki1000304b-SAS-CompFeed     INDIA                          <25_6 months        Control              NA                 0.0108696   -0.0461818    0.0679209
6 months    ki1000304b-SAS-CompFeed     INDIA                          [25-30)_6 months    Control              NA                -0.0146104   -0.0893187    0.0600979
6 months    ki1000304b-SAS-CompFeed     INDIA                          >=30_6 months       Control              NA                 0.0007828   -0.0985465    0.1001120
6 months    ki1000304b-SAS-FoodSuppl    INDIA                          <25_6 months        Control              NA                -0.0576923   -0.1929152    0.0775306
6 months    ki1000304b-SAS-FoodSuppl    INDIA                          [25-30)_6 months    Control              NA                -0.1696970   -0.3120279   -0.0273660
6 months    ki1000304b-SAS-FoodSuppl    INDIA                          >=30_6 months       Control              NA                -0.0393812   -0.2416637    0.1629014
6 months    ki1017093b-PROVIDE          BANGLADESH                     <25_6 months        Control              NA                 0.0507246   -0.2216142    0.3230635
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   <25_6 months        Control              NA                 0.0183303   -0.0208196    0.0574802
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   [25-30)_6 months    Control              NA                -0.0100694   -0.0597873    0.0396484
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   >=30_6 months       Control              NA                -0.0202294   -0.0656005    0.0251417
6 months    ki1112895-Guatemala BSC     GUATEMALA                      <25_6 months        Control              NA                -0.0021570   -0.0836728    0.0793587
6 months    ki1112895-Guatemala BSC     GUATEMALA                      [25-30)_6 months    Control              NA                -0.0197256   -0.1518529    0.1124018
6 months    ki1112895-Guatemala BSC     GUATEMALA                      >=30_6 months       Control              NA                -0.0801435   -0.2443081    0.0840210
6 months    ki1119695-PROBIT            BELARUS                        <25_6 months        Control              NA                -0.0088900   -0.0262478    0.0084678
6 months    ki1119695-PROBIT            BELARUS                        [25-30)_6 months    Control              NA                -0.0074370   -0.0179178    0.0030438
6 months    ki1119695-PROBIT            BELARUS                        >=30_6 months       Control              NA                -0.0109952   -0.0304030    0.0084126
6 months    ki1126311-ZVITAMBO          ZIMBABWE                       <25_6 months        Control              NA                 0.0018704   -0.0173754    0.0211162
6 months    ki1126311-ZVITAMBO          ZIMBABWE                       [25-30)_6 months    Control              NA                -0.0171523   -0.0464083    0.0121036
6 months    ki1126311-ZVITAMBO          ZIMBABWE                       >=30_6 months       Control              NA                 0.0295238   -0.0027379    0.0617855
6 months    ki1135781-COHORTS           GUATEMALA                      <25_6 months        Control              NA                 0.0141932   -0.0378757    0.0662621
6 months    ki1135781-COHORTS           GUATEMALA                      [25-30)_6 months    Control              NA                -0.0733194   -0.1456320   -0.0010069
6 months    ki1135781-COHORTS           GUATEMALA                      >=30_6 months       Control              NA                -0.0928901   -0.1443157   -0.0414646
6 months    ki1148112-iLiNS-DOSE        MALAWI                         <25_6 months        Control              NA                -0.0420321   -0.1085319    0.0244677
6 months    ki1148112-iLiNS-DOSE        MALAWI                         [25-30)_6 months    Control              NA                -0.0050244   -0.1076173    0.0975685
6 months    ki1148112-iLiNS-DOSE        MALAWI                         >=30_6 months       Control              NA                -0.0146393   -0.1085445    0.0792658
6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         <25_6 months        Control              NA                 0.0197484   -0.0256246    0.0651214
6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         [25-30)_6 months    Control              NA                -0.0172239   -0.0954096    0.0609618
6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         >=30_6 months       Control              NA                -0.0659674   -0.1463595    0.0144248
6 months    ki1148112-LCNI-5            MALAWI                         <25_6 months        Control              NA                -0.0337037   -0.1229983    0.0555909
6 months    ki1148112-LCNI-5            MALAWI                         [25-30)_6 months    Control              NA                 0.0567517   -0.0656825    0.1791859
6 months    ki1148112-LCNI-5            MALAWI                         >=30_6 months       Control              NA                 0.0681818   -0.0569873    0.1933510
6 months    kiGH5241-JiVitA-3           BANGLADESH                     <25_6 months        Control              NA                -0.0115694   -0.0206353   -0.0025035
6 months    kiGH5241-JiVitA-3           BANGLADESH                     [25-30)_6 months    Control              NA                -0.0058584   -0.0260048    0.0142880
6 months    kiGH5241-JiVitA-3           BANGLADESH                     >=30_6 months       Control              NA                -0.0084226   -0.0393738    0.0225285
24 months   iLiNS_DYADM_LNS             MALAWI                         <25_24 months       Control              NA                -0.1623377   -0.4712357    0.1465603
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     <25_24 months       Control              NA                -0.0116839   -0.0780336    0.0546657
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     [25-30)_24 months   Control              NA                -0.0534821   -0.1585451    0.0515809
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     >=30_24 months      Control              NA                 0.0250000   -0.1073835    0.1573835
24 months   ki1000111-WASH-Kenya        KENYA                          <25_24 months       Control              NA                -0.0104123   -0.0512848    0.0304603
24 months   ki1000111-WASH-Kenya        KENYA                          [25-30)_24 months   Control              NA                -0.0249970   -0.0752149    0.0252208
24 months   ki1000111-WASH-Kenya        KENYA                          >=30_24 months      Control              NA                 0.0508256    0.0008563    0.1007949
24 months   ki1000304-EU                INDIA                          <25_24 months       Control              NA                -0.0472936   -0.1380871    0.0434998
24 months   ki1000304-EU                INDIA                          [25-30)_24 months   Control              NA                -0.0117057   -0.1011268    0.0777154
24 months   ki1000304-EU                INDIA                          >=30_24 months      Control              NA                -0.1000000   -0.2840126    0.0840126
24 months   ki1000304-Vitamin-B12       INDIA                          <25_24 months       Control              NA                 0.1642157   -0.0208943    0.3493257
24 months   ki1000304-Vitamin-B12       INDIA                          [25-30)_24 months   Control              NA                 0.0433333   -0.2031608    0.2898275
24 months   ki1000304-Vitamin-B12       INDIA                          >=30_24 months      Control              NA                -0.0326797   -0.3142712    0.2489117
24 months   ki1119695-PROBIT            BELARUS                        <25_24 months       Control              NA                -0.0060302   -0.0700188    0.0579583
24 months   ki1119695-PROBIT            BELARUS                        [25-30)_24 months   Control              NA                 0.0010492   -0.1075889    0.1096872
24 months   ki1119695-PROBIT            BELARUS                        >=30_24 months      Control              NA                -0.0244280   -0.0851470    0.0362910
24 months   ki1126311-ZVITAMBO          ZIMBABWE                       <25_24 months       Control              NA                 0.1956522   -0.1463993    0.5377037
24 months   ki1135781-COHORTS           GUATEMALA                      <25_24 months       Control              NA                -0.0106491   -0.0761105    0.0548123
24 months   ki1135781-COHORTS           GUATEMALA                      [25-30)_24 months   Control              NA                -0.0278195   -0.1129685    0.0573294
24 months   ki1135781-COHORTS           GUATEMALA                      >=30_24 months      Control              NA                -0.0523440   -0.1316428    0.0269548
24 months   ki1148112-iLiNS-DOSE        MALAWI                         <25_24 months       Control              NA                 0.0243188   -0.0882121    0.1368497
24 months   ki1148112-iLiNS-DOSE        MALAWI                         [25-30)_24 months   Control              NA                -0.0226947   -0.2123839    0.1669945
24 months   ki1148112-iLiNS-DOSE        MALAWI                         >=30_24 months      Control              NA                -0.0226303   -0.1623183    0.1170577
24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         <25_24 months       Control              NA                -0.2077922   -0.5357803    0.1201959
24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         [25-30)_24 months   Control              NA                 0.1212121   -0.3907992    0.6332235
24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         >=30_24 months      Control              NA                -0.5000000   -0.8266607   -0.1733393
24 months   ki1148112-LCNI-5            MALAWI                         <25_24 months       Control              NA                -0.1295390   -0.2593675    0.0002895
24 months   ki1148112-LCNI-5            MALAWI                         [25-30)_24 months   Control              NA                 0.1820988    0.0266547    0.3375429
24 months   ki1148112-LCNI-5            MALAWI                         >=30_24 months      Control              NA                 0.0218216   -0.1242157    0.1678589
24 months   kiGH5241-JiVitA-3           BANGLADESH                     <25_24 months       Control              NA                 0.0915193   -0.0240186    0.2070572
24 months   kiGH5241-JiVitA-3           BANGLADESH                     [25-30)_24 months   Control              NA                 0.0507246   -0.3612430    0.4626923


### Parameter: PAF


agecat      studyid                     country                        intXmage            intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------------------  -----------------------------  ------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000304b-SAS-CompFeed     INDIA                          <25_Birth           Control              NA                -0.0461538   -0.3865030    0.2106487
Birth       ki1000304b-SAS-CompFeed     INDIA                          [25-30)_Birth       Control              NA                 0.2094862   -0.4317843    0.5635431
Birth       ki1119695-PROBIT            BELARUS                        <25_Birth           Control              NA                -0.1648040   -1.0691213    0.3442780
Birth       ki1119695-PROBIT            BELARUS                        [25-30)_Birth       Control              NA                -0.6958988   -1.6335567   -0.0920868
Birth       ki1126311-ZVITAMBO          ZIMBABWE                       <25_Birth           Control              NA                -0.0587334   -0.1764630    0.0472149
Birth       ki1126311-ZVITAMBO          ZIMBABWE                       [25-30)_Birth       Control              NA                 0.0580431   -0.1246020    0.2110251
Birth       ki1126311-ZVITAMBO          ZIMBABWE                       >=30_Birth          Control              NA                 0.0782182   -0.1668030    0.2717865
Birth       ki1135781-COHORTS           GUATEMALA                      <25_Birth           Control              NA                 0.2833944   -0.2344197    0.5839960
Birth       ki1135781-COHORTS           GUATEMALA                      [25-30)_Birth       Control              NA                 0.5670588   -1.4766203    0.9243170
Birth       ki1135781-COHORTS           GUATEMALA                      >=30_Birth          Control              NA                 0.0501166   -0.4790959    0.3899797
Birth       kiGH5241-JiVitA-3           BANGLADESH                     <25_Birth           Control              NA                -0.0525988   -0.0792172   -0.0266370
Birth       kiGH5241-JiVitA-3           BANGLADESH                     [25-30)_Birth       Control              NA                -0.0581476   -0.1291560    0.0083954
Birth       kiGH5241-JiVitA-3           BANGLADESH                     >=30_Birth          Control              NA                -0.0727736   -0.1632737    0.0106858
6 months    iLiNS_DYADM_LNS             MALAWI                         <25_6 months        Control              NA                 0.1012346   -0.1157193    0.2760013
6 months    iLiNS_DYADM_LNS             MALAWI                         [25-30)_6 months    Control              NA                -0.1550672   -0.4756347    0.0958602
6 months    iLiNS_DYADM_LNS             MALAWI                         >=30_6 months       Control              NA                -0.1491557   -0.4205415    0.0703834
6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     <25_6 months        Control              NA                -0.3100714   -0.8217252    0.0578782
6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     [25-30)_6 months    Control              NA                 0.3029525   -0.8933417    0.7433769
6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     >=30_6 months       Control              NA                -0.5130435   -1.6406794    0.1330638
6 months    ki1000111-WASH-Kenya        KENYA                          <25_6 months        Control              NA                 0.5686275   -1.4609112    0.9243848
6 months    ki1000125-AgaKhanUniv       PAKISTAN                       <25_6 months        Control              NA                 0.0942029   -0.6373889    0.4989166
6 months    ki1000125-AgaKhanUniv       PAKISTAN                       [25-30)_6 months    Control              NA                -0.1225806   -0.7913663    0.2965217
6 months    ki1000125-AgaKhanUniv       PAKISTAN                       >=30_6 months       Control              NA                -0.0294872   -0.4471543    0.2676359
6 months    ki1000304-EU                INDIA                          <25_6 months        Control              NA                -0.0977033   -0.2932360    0.0682655
6 months    ki1000304-EU                INDIA                          [25-30)_6 months    Control              NA                -0.2204082   -0.4990587    0.0064458
6 months    ki1000304-EU                INDIA                          >=30_6 months       Control              NA                 0.2419355   -0.3216476    0.5651929
6 months    ki1000304-VITAMIN-A         INDIA                          <25_6 months        Control              NA                -0.0238034   -0.0992712    0.0464835
6 months    ki1000304-VITAMIN-A         INDIA                          [25-30)_6 months    Control              NA                -0.1010158   -0.2011023   -0.0092693
6 months    ki1000304-VITAMIN-A         INDIA                          >=30_6 months       Control              NA                 0.0624910   -0.0886506    0.1926490
6 months    ki1000304-Vitamin-B12       INDIA                          <25_6 months        Control              NA                -0.1616162   -1.0509515    0.3420848
6 months    ki1000304b-SAS-CompFeed     INDIA                          <25_6 months        Control              NA                 0.0416667   -0.2039925    0.2372022
6 months    ki1000304b-SAS-CompFeed     INDIA                          [25-30)_6 months    Control              NA                -0.0476190   -0.3218795    0.1697385
6 months    ki1000304b-SAS-CompFeed     INDIA                          >=30_6 months       Control              NA                 0.0024845   -0.3685633    0.2729330
6 months    ki1000304b-SAS-FoodSuppl    INDIA                          <25_6 months        Control              NA                -0.1428571   -0.5327276    0.1478444
6 months    ki1000304b-SAS-FoodSuppl    INDIA                          [25-30)_6 months    Control              NA                -0.3636364   -0.7191087   -0.0816676
6 months    ki1000304b-SAS-FoodSuppl    INDIA                          >=30_6 months       Control              NA                -0.0972222   -0.7301804    0.3041786
6 months    ki1017093b-PROVIDE          BANGLADESH                     <25_6 months        Control              NA                 0.2333333   -2.8886789    0.8488490
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   <25_6 months        Control              NA                 0.1793548   -0.3059190    0.4843030
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   [25-30)_6 months    Control              NA                -0.0816901   -0.5701260    0.2548028
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   >=30_6 months       Control              NA                -0.2039801   -0.7569956    0.1749734
6 months    ki1112895-Guatemala BSC     GUATEMALA                      <25_6 months        Control              NA                -0.0063052   -0.2751571    0.2058625
6 months    ki1112895-Guatemala BSC     GUATEMALA                      [25-30)_6 months    Control              NA                -0.0950413   -0.9569220    0.3872441
6 months    ki1112895-Guatemala BSC     GUATEMALA                      >=30_6 months       Control              NA                -0.2350877   -0.8280590    0.1655402
6 months    ki1119695-PROBIT            BELARUS                        <25_6 months        Control              NA                -0.1269581   -0.3906322    0.0867214
6 months    ki1119695-PROBIT            BELARUS                        [25-30)_6 months    Control              NA                -0.1434175   -0.3612709    0.0395714
6 months    ki1119695-PROBIT            BELARUS                        >=30_6 months       Control              NA                -0.1735904   -0.5288292    0.0991052
6 months    ki1126311-ZVITAMBO          ZIMBABWE                       <25_6 months        Control              NA                 0.0112745   -0.1118151    0.1207367
6 months    ki1126311-ZVITAMBO          ZIMBABWE                       [25-30)_6 months    Control              NA                -0.1042820   -0.2970770    0.0598564
6 months    ki1126311-ZVITAMBO          ZIMBABWE                       >=30_6 months       Control              NA                 0.1771429   -0.0401789    0.3490602
6 months    ki1135781-COHORTS           GUATEMALA                      <25_6 months        Control              NA                 0.0356278   -0.1043714    0.1578796
6 months    ki1135781-COHORTS           GUATEMALA                      [25-30)_6 months    Control              NA                -0.1784401   -0.3700963   -0.0135938
6 months    ki1135781-COHORTS           GUATEMALA                      >=30_6 months       Control              NA                -0.2109015   -0.3360287   -0.0974932
6 months    ki1148112-iLiNS-DOSE        MALAWI                         <25_6 months        Control              NA                -0.1374523   -0.3770983    0.0604899
6 months    ki1148112-iLiNS-DOSE        MALAWI                         [25-30)_6 months    Control              NA                -0.0195296   -0.5075312    0.3105014
6 months    ki1148112-iLiNS-DOSE        MALAWI                         >=30_6 months       Control              NA                -0.0431815   -0.3604338    0.2000878
6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         <25_6 months        Control              NA                 0.0963649   -0.1541139    0.2924819
6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         [25-30)_6 months    Control              NA                -0.0703934   -0.4426185    0.2057900
6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         >=30_6 months       Control              NA                -0.2591575   -0.6171379    0.0195780
6 months    ki1148112-LCNI-5            MALAWI                         <25_6 months        Control              NA                -0.1001100   -0.4001177    0.1356141
6 months    ki1148112-LCNI-5            MALAWI                         [25-30)_6 months    Control              NA                 0.1427139   -0.2279314    0.4014817
6 months    ki1148112-LCNI-5            MALAWI                         >=30_6 months       Control              NA                 0.1666667   -0.2033114    0.4228888
6 months    kiGH5241-JiVitA-3           BANGLADESH                     <25_6 months        Control              NA                -0.0450053   -0.0807718   -0.0104225
6 months    kiGH5241-JiVitA-3           BANGLADESH                     [25-30)_6 months    Control              NA                -0.0258831   -0.1187703    0.0592921
6 months    kiGH5241-JiVitA-3           BANGLADESH                     >=30_6 months       Control              NA                -0.0343676   -0.1680855    0.0840427
24 months   iLiNS_DYADM_LNS             MALAWI                         <25_24 months       Control              NA                -0.3968254   -1.4421872    0.2010763
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     <25_24 months       Control              NA                -0.0287028   -0.2053310    0.1220424
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     [25-30)_24 months   Control              NA                -0.1259058   -0.4029193    0.0964100
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     >=30_24 months      Control              NA                 0.0666667   -0.3624341    0.3606215
24 months   ki1000111-WASH-Kenya        KENYA                          <25_24 months       Control              NA                -0.0315632   -0.1632103    0.0851847
24 months   ki1000111-WASH-Kenya        KENYA                          [25-30)_24 months   Control              NA                -0.0863285   -0.2743264    0.0739345
24 months   ki1000111-WASH-Kenya        KENYA                          >=30_24 months      Control              NA                 0.1746454   -0.0157114    0.3293270
24 months   ki1000304-EU                INDIA                          <25_24 months       Control              NA                -0.0792487   -0.2437324    0.0634820
24 months   ki1000304-EU                INDIA                          [25-30)_24 months   Control              NA                -0.0207101   -0.1919212    0.1259078
24 months   ki1000304-EU                INDIA                          >=30_24 months      Control              NA                -0.1458333   -0.4584687    0.0997860
24 months   ki1000304-Vitamin-B12       INDIA                          <25_24 months       Control              NA                 0.3582888   -0.2066048    0.6587173
24 months   ki1000304-Vitamin-B12       INDIA                          [25-30)_24 months   Control              NA                 0.0942029   -0.6373889    0.4989166
24 months   ki1000304-Vitamin-B12       INDIA                          >=30_24 months      Control              NA                -0.0793651   -1.0346348    0.4274014
24 months   ki1119695-PROBIT            BELARUS                        <25_24 months       Control              NA                -0.0469723   -0.6688980    0.3431888
24 months   ki1119695-PROBIT            BELARUS                        [25-30)_24 months   Control              NA                 0.0084611   -1.3995489    0.5902774
24 months   ki1119695-PROBIT            BELARUS                        >=30_24 months      Control              NA                -0.2992424   -1.3024344    0.2668495
24 months   ki1126311-ZVITAMBO          ZIMBABWE                       <25_24 months       Control              NA                 0.2812500   -0.4522748    0.6442811
24 months   ki1135781-COHORTS           GUATEMALA                      <25_24 months       Control              NA                -0.0128676   -0.0951923    0.0632687
24 months   ki1135781-COHORTS           GUATEMALA                      [25-30)_24 months   Control              NA                -0.0341644   -0.1448338    0.0658069
24 months   ki1135781-COHORTS           GUATEMALA                      >=30_24 months      Control              NA                -0.0745902   -0.1953401    0.0339620
24 months   ki1148112-iLiNS-DOSE        MALAWI                         <25_24 months       Control              NA                 0.0443670   -0.1847201    0.2291560
24 months   ki1148112-iLiNS-DOSE        MALAWI                         [25-30)_24 months   Control              NA                -0.0550725   -0.6322182    0.3179969
24 months   ki1148112-iLiNS-DOSE        MALAWI                         >=30_24 months      Control              NA                -0.0450472   -0.3637041    0.1991492
24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         <25_24 months       Control              NA                -0.5714286   -1.8431478    0.1314600
24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         [25-30)_24 months   Control              NA                 0.2666667   -2.4143165    0.8424933
24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         >=30_24 months      Control              NA                -1.0000000   -2.8438271   -0.0406295
24 months   ki1148112-LCNI-5            MALAWI                         <25_24 months       Control              NA                -0.4075738   -0.8869420   -0.0499867
24 months   ki1148112-LCNI-5            MALAWI                         [25-30)_24 months   Control              NA                 0.4214286   -0.0739628    0.6883087
24 months   ki1148112-LCNI-5            MALAWI                         >=30_24 months      Control              NA                 0.0494624   -0.3466352    0.3290523
24 months   kiGH5241-JiVitA-3           BANGLADESH                     <25_24 months       Control              NA                 0.1614299   -0.0734610    0.3449227
24 months   kiGH5241-JiVitA-3           BANGLADESH                     [25-30)_24 months   Control              NA                 0.2333333   -8.7423971    0.9396681
