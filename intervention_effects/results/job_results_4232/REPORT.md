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
* intXmage

## Data Summary

agecat      studyid                     country                        intXmage             sstunted   n_cell       n
----------  --------------------------  -----------------------------  ------------------  ---------  -------  ------
Birth       iLiNS_DYADM_LNS             MALAWI                         <25_Birth                   0        0       1
Birth       iLiNS_DYADM_LNS             MALAWI                         <25_Birth                   1        1       1
Birth       ki1000125-AgaKhanUniv       PAKISTAN                       <25_Birth                   0        1       1
Birth       ki1000125-AgaKhanUniv       PAKISTAN                       <25_Birth                   1        0       1
Birth       ki1000125-AgaKhanUniv       PAKISTAN                       [25-30)_Birth               0        1       1
Birth       ki1000125-AgaKhanUniv       PAKISTAN                       [25-30)_Birth               1        0       1
Birth       ki1000125-AgaKhanUniv       PAKISTAN                       >=30_Birth                  0        2       2
Birth       ki1000125-AgaKhanUniv       PAKISTAN                       >=30_Birth                  1        0       2
Birth       ki1000304b-SAS-CompFeed     INDIA                          <25_Birth                   0       79      85
Birth       ki1000304b-SAS-CompFeed     INDIA                          <25_Birth                   1        6      85
Birth       ki1000304b-SAS-CompFeed     INDIA                          [25-30)_Birth               0       37      40
Birth       ki1000304b-SAS-CompFeed     INDIA                          [25-30)_Birth               1        3      40
Birth       ki1000304b-SAS-CompFeed     INDIA                          >=30_Birth                  0       17      19
Birth       ki1000304b-SAS-CompFeed     INDIA                          >=30_Birth                  1        2      19
Birth       ki1119695-PROBIT            BELARUS                        <25_Birth                   0     7453    7456
Birth       ki1119695-PROBIT            BELARUS                        <25_Birth                   1        3    7456
Birth       ki1119695-PROBIT            BELARUS                        [25-30)_Birth               0     3886    3887
Birth       ki1119695-PROBIT            BELARUS                        [25-30)_Birth               1        1    3887
Birth       ki1119695-PROBIT            BELARUS                        >=30_Birth                  0     2540    2541
Birth       ki1119695-PROBIT            BELARUS                        >=30_Birth                  1        1    2541
Birth       ki1126311-ZVITAMBO          ZIMBABWE                       <25_Birth                   0     7768    8024
Birth       ki1126311-ZVITAMBO          ZIMBABWE                       <25_Birth                   1      256    8024
Birth       ki1126311-ZVITAMBO          ZIMBABWE                       [25-30)_Birth               0     3338    3442
Birth       ki1126311-ZVITAMBO          ZIMBABWE                       [25-30)_Birth               1      104    3442
Birth       ki1126311-ZVITAMBO          ZIMBABWE                       >=30_Birth                  0     2245    2324
Birth       ki1126311-ZVITAMBO          ZIMBABWE                       >=30_Birth                  1       79    2324
Birth       ki1135781-COHORTS           GUATEMALA                      <25_Birth                   0      337     342
Birth       ki1135781-COHORTS           GUATEMALA                      <25_Birth                   1        5     342
Birth       ki1135781-COHORTS           GUATEMALA                      [25-30)_Birth               0      183     184
Birth       ki1135781-COHORTS           GUATEMALA                      [25-30)_Birth               1        1     184
Birth       ki1135781-COHORTS           GUATEMALA                      >=30_Birth                  0      321     326
Birth       ki1135781-COHORTS           GUATEMALA                      >=30_Birth                  1        5     326
Birth       ki1148112-iLiNS-DYAD-M      MALAWI                         <25_Birth                   0        0       1
Birth       ki1148112-iLiNS-DYAD-M      MALAWI                         <25_Birth                   1        1       1
Birth       kiGH5241-JiVitA-3           BANGLADESH                     <25_Birth                   0    25614   28736
Birth       kiGH5241-JiVitA-3           BANGLADESH                     <25_Birth                   1     3122   28736
Birth       kiGH5241-JiVitA-3           BANGLADESH                     [25-30)_Birth               0     6176    6754
Birth       kiGH5241-JiVitA-3           BANGLADESH                     [25-30)_Birth               1      578    6754
Birth       kiGH5241-JiVitA-3           BANGLADESH                     >=30_Birth                  0     3336    3716
Birth       kiGH5241-JiVitA-3           BANGLADESH                     >=30_Birth                  1      380    3716
6 months    iLiNS_DYADM_LNS             MALAWI                         <25_6 months                0      348     364
6 months    iLiNS_DYADM_LNS             MALAWI                         <25_6 months                1       16     364
6 months    iLiNS_DYADM_LNS             MALAWI                         [25-30)_6 months            0      163     172
6 months    iLiNS_DYADM_LNS             MALAWI                         [25-30)_6 months            1        9     172
6 months    iLiNS_DYADM_LNS             MALAWI                         >=30_6 months               0      139     147
6 months    iLiNS_DYADM_LNS             MALAWI                         >=30_6 months               1        8     147
6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     <25_6 months                0      393     413
6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     <25_6 months                1       20     413
6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     [25-30)_6 months            0      178     181
6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     [25-30)_6 months            1        3     181
6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     >=30_6 months               0       82      87
6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     >=30_6 months               1        5      87
6 months    ki1000111-WASH-Kenya        KENYA                          <25_6 months                0       42      44
6 months    ki1000111-WASH-Kenya        KENYA                          <25_6 months                1        2      44
6 months    ki1000111-WASH-Kenya        KENYA                          [25-30)_6 months            0       16      17
6 months    ki1000111-WASH-Kenya        KENYA                          [25-30)_6 months            1        1      17
6 months    ki1000111-WASH-Kenya        KENYA                          >=30_6 months               0       13      13
6 months    ki1000111-WASH-Kenya        KENYA                          >=30_6 months               1        0      13
6 months    ki1000125-AgaKhanUniv       PAKISTAN                       <25_6 months                0       46      50
6 months    ki1000125-AgaKhanUniv       PAKISTAN                       <25_6 months                1        4      50
6 months    ki1000125-AgaKhanUniv       PAKISTAN                       [25-30)_6 months            0       55      58
6 months    ki1000125-AgaKhanUniv       PAKISTAN                       [25-30)_6 months            1        3      58
6 months    ki1000125-AgaKhanUniv       PAKISTAN                       >=30_6 months               0       70      73
6 months    ki1000125-AgaKhanUniv       PAKISTAN                       >=30_6 months               1        3      73
6 months    ki1000304-EU                INDIA                          <25_6 months                0      182     211
6 months    ki1000304-EU                INDIA                          <25_6 months                1       29     211
6 months    ki1000304-EU                INDIA                          [25-30)_6 months            0       99     104
6 months    ki1000304-EU                INDIA                          [25-30)_6 months            1        5     104
6 months    ki1000304-EU                INDIA                          >=30_6 months               0       42      47
6 months    ki1000304-EU                INDIA                          >=30_6 months               1        5      47
6 months    ki1000304-VITAMIN-A         INDIA                          <25_6 months                0     1183    1306
6 months    ki1000304-VITAMIN-A         INDIA                          <25_6 months                1      123    1306
6 months    ki1000304-VITAMIN-A         INDIA                          [25-30)_6 months            0      786     863
6 months    ki1000304-VITAMIN-A         INDIA                          [25-30)_6 months            1       77     863
6 months    ki1000304-VITAMIN-A         INDIA                          >=30_6 months               0      291     336
6 months    ki1000304-VITAMIN-A         INDIA                          >=30_6 months               1       45     336
6 months    ki1000304-Vitamin-B12       INDIA                          <25_6 months                0       40      46
6 months    ki1000304-Vitamin-B12       INDIA                          <25_6 months                1        6      46
6 months    ki1000304-Vitamin-B12       INDIA                          [25-30)_6 months            0       23      24
6 months    ki1000304-Vitamin-B12       INDIA                          [25-30)_6 months            1        1      24
6 months    ki1000304-Vitamin-B12       INDIA                          >=30_6 months               0       11      11
6 months    ki1000304-Vitamin-B12       INDIA                          >=30_6 months               1        0      11
6 months    ki1000304b-SAS-CompFeed     INDIA                          <25_6 months                0      341     368
6 months    ki1000304b-SAS-CompFeed     INDIA                          <25_6 months                1       27     368
6 months    ki1000304b-SAS-CompFeed     INDIA                          [25-30)_6 months            0      156     176
6 months    ki1000304b-SAS-CompFeed     INDIA                          [25-30)_6 months            1       20     176
6 months    ki1000304b-SAS-CompFeed     INDIA                          >=30_6 months               0       65      73
6 months    ki1000304b-SAS-CompFeed     INDIA                          >=30_6 months               1        8      73
6 months    ki1000304b-SAS-FoodSuppl    INDIA                          <25_6 months                0      141     156
6 months    ki1000304b-SAS-FoodSuppl    INDIA                          <25_6 months                1       15     156
6 months    ki1000304b-SAS-FoodSuppl    INDIA                          [25-30)_6 months            0       97     120
6 months    ki1000304b-SAS-FoodSuppl    INDIA                          [25-30)_6 months            1       23     120
6 months    ki1000304b-SAS-FoodSuppl    INDIA                          >=30_6 months               0       65      79
6 months    ki1000304b-SAS-FoodSuppl    INDIA                          >=30_6 months               1       14      79
6 months    ki1017093b-PROVIDE          BANGLADESH                     <25_6 months                0       22      23
6 months    ki1017093b-PROVIDE          BANGLADESH                     <25_6 months                1        1      23
6 months    ki1017093b-PROVIDE          BANGLADESH                     [25-30)_6 months            0       14      14
6 months    ki1017093b-PROVIDE          BANGLADESH                     [25-30)_6 months            1        0      14
6 months    ki1017093b-PROVIDE          BANGLADESH                     >=30_6 months               0        9       9
6 months    ki1017093b-PROVIDE          BANGLADESH                     >=30_6 months               1        0       9
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   <25_6 months                0      631     636
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   <25_6 months                1        5     636
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   [25-30)_6 months            0      563     576
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   [25-30)_6 months            1       13     576
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   >=30_6 months               0      479     484
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   >=30_6 months               1        5     484
6 months    ki1112895-Burkina Faso Zn   BURKINA FASO                   <25_6 months                0       76      77
6 months    ki1112895-Burkina Faso Zn   BURKINA FASO                   <25_6 months                1        1      77
6 months    ki1112895-Burkina Faso Zn   BURKINA FASO                   [25-30)_6 months            0      251     260
6 months    ki1112895-Burkina Faso Zn   BURKINA FASO                   [25-30)_6 months            1        9     260
6 months    ki1112895-Burkina Faso Zn   BURKINA FASO                   >=30_6 months               0      197     200
6 months    ki1112895-Burkina Faso Zn   BURKINA FASO                   >=30_6 months               1        3     200
6 months    ki1112895-Guatemala BSC     GUATEMALA                      <25_6 months                0      104     114
6 months    ki1112895-Guatemala BSC     GUATEMALA                      <25_6 months                1       10     114
6 months    ki1112895-Guatemala BSC     GUATEMALA                      [25-30)_6 months            0       49      53
6 months    ki1112895-Guatemala BSC     GUATEMALA                      [25-30)_6 months            1        4      53
6 months    ki1112895-Guatemala BSC     GUATEMALA                      >=30_6 months               0       38      44
6 months    ki1112895-Guatemala BSC     GUATEMALA                      >=30_6 months               1        6      44
6 months    ki1119695-PROBIT            BELARUS                        <25_6 months                0     7689    7826
6 months    ki1119695-PROBIT            BELARUS                        <25_6 months                1      137    7826
6 months    ki1119695-PROBIT            BELARUS                        [25-30)_6 months            0     4025    4069
6 months    ki1119695-PROBIT            BELARUS                        [25-30)_6 months            1       44    4069
6 months    ki1119695-PROBIT            BELARUS                        >=30_6 months               0     2556    2605
6 months    ki1119695-PROBIT            BELARUS                        >=30_6 months               1       49    2605
6 months    ki1126311-ZVITAMBO          ZIMBABWE                       <25_6 months                0     4147    4328
6 months    ki1126311-ZVITAMBO          ZIMBABWE                       <25_6 months                1      181    4328
6 months    ki1126311-ZVITAMBO          ZIMBABWE                       [25-30)_6 months            0     1891    1982
6 months    ki1126311-ZVITAMBO          ZIMBABWE                       [25-30)_6 months            1       91    1982
6 months    ki1126311-ZVITAMBO          ZIMBABWE                       >=30_6 months               0     1394    1452
6 months    ki1126311-ZVITAMBO          ZIMBABWE                       >=30_6 months               1       58    1452
6 months    ki1135781-COHORTS           GUATEMALA                      <25_6 months                0      333     369
6 months    ki1135781-COHORTS           GUATEMALA                      <25_6 months                1       36     369
6 months    ki1135781-COHORTS           GUATEMALA                      [25-30)_6 months            0      171     202
6 months    ki1135781-COHORTS           GUATEMALA                      [25-30)_6 months            1       31     202
6 months    ki1135781-COHORTS           GUATEMALA                      >=30_6 months               0      305     361
6 months    ki1135781-COHORTS           GUATEMALA                      >=30_6 months               1       56     361
6 months    ki1148112-iLiNS-DOSE        MALAWI                         <25_6 months                0      873     932
6 months    ki1148112-iLiNS-DOSE        MALAWI                         <25_6 months                1       59     932
6 months    ki1148112-iLiNS-DOSE        MALAWI                         [25-30)_6 months            0      420     447
6 months    ki1148112-iLiNS-DOSE        MALAWI                         [25-30)_6 months            1       27     447
6 months    ki1148112-iLiNS-DOSE        MALAWI                         >=30_6 months               0      435     469
6 months    ki1148112-iLiNS-DOSE        MALAWI                         >=30_6 months               1       34     469
6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         <25_6 months                0      502     527
6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         <25_6 months                1       25     527
6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         [25-30)_6 months            0      264     282
6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         [25-30)_6 months            1       18     282
6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         >=30_6 months               0      210     220
6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         >=30_6 months               1       10     220
6 months    ki1148112-LCNI-5            MALAWI                         <25_6 months                0      280     300
6 months    ki1148112-LCNI-5            MALAWI                         <25_6 months                1       20     300
6 months    ki1148112-LCNI-5            MALAWI                         [25-30)_6 months            0      156     171
6 months    ki1148112-LCNI-5            MALAWI                         [25-30)_6 months            1       15     171
6 months    ki1148112-LCNI-5            MALAWI                         >=30_6 months               0      180     198
6 months    ki1148112-LCNI-5            MALAWI                         >=30_6 months               1       18     198
6 months    kiGH5241-JiVitA-3           BANGLADESH                     <25_6 months                0    24226   25857
6 months    kiGH5241-JiVitA-3           BANGLADESH                     <25_6 months                1     1631   25857
6 months    kiGH5241-JiVitA-3           BANGLADESH                     [25-30)_6 months            0     4918    5178
6 months    kiGH5241-JiVitA-3           BANGLADESH                     [25-30)_6 months            1      260    5178
6 months    kiGH5241-JiVitA-3           BANGLADESH                     >=30_6 months               0     2296    2436
6 months    kiGH5241-JiVitA-3           BANGLADESH                     >=30_6 months               1      140    2436
24 months   iLiNS_DYADM_LNS             MALAWI                         <25_24 months               0       20      22
24 months   iLiNS_DYADM_LNS             MALAWI                         <25_24 months               1        2      22
24 months   iLiNS_DYADM_LNS             MALAWI                         [25-30)_24 months           0        9       9
24 months   iLiNS_DYADM_LNS             MALAWI                         [25-30)_24 months           1        0       9
24 months   iLiNS_DYADM_LNS             MALAWI                         >=30_24 months              0        2       4
24 months   iLiNS_DYADM_LNS             MALAWI                         >=30_24 months              1        2       4
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     <25_24 months               0      568     651
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     <25_24 months               1       83     651
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     [25-30)_24 months           0      305     339
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     [25-30)_24 months           1       34     339
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     >=30_24 months              0      171     192
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     >=30_24 months              1       21     192
24 months   ki1000111-WASH-Kenya        KENYA                          <25_24 months               0      878     967
24 months   ki1000111-WASH-Kenya        KENYA                          <25_24 months               1       89     967
24 months   ki1000111-WASH-Kenya        KENYA                          [25-30)_24 months           0      589     632
24 months   ki1000111-WASH-Kenya        KENYA                          [25-30)_24 months           1       43     632
24 months   ki1000111-WASH-Kenya        KENYA                          >=30_24 months              0      599     646
24 months   ki1000111-WASH-Kenya        KENYA                          >=30_24 months              1       47     646
24 months   ki1000304-EU                INDIA                          <25_24 months               0      100     124
24 months   ki1000304-EU                INDIA                          <25_24 months               1       24     124
24 months   ki1000304-EU                INDIA                          [25-30)_24 months           0       68      92
24 months   ki1000304-EU                INDIA                          [25-30)_24 months           1       24      92
24 months   ki1000304-EU                INDIA                          >=30_24 months              0       28      35
24 months   ki1000304-EU                INDIA                          >=30_24 months              1        7      35
24 months   ki1000304-Vitamin-B12       INDIA                          <25_24 months               0       37      48
24 months   ki1000304-Vitamin-B12       INDIA                          <25_24 months               1       11      48
24 months   ki1000304-Vitamin-B12       INDIA                          [25-30)_24 months           0       43      50
24 months   ki1000304-Vitamin-B12       INDIA                          [25-30)_24 months           1        7      50
24 months   ki1000304-Vitamin-B12       INDIA                          >=30_24 months              0       27      34
24 months   ki1000304-Vitamin-B12       INDIA                          >=30_24 months              1        7      34
24 months   ki1017093b-PROVIDE          BANGLADESH                     <25_24 months               0        2       2
24 months   ki1017093b-PROVIDE          BANGLADESH                     <25_24 months               1        0       2
24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   <25_24 months               0        1       1
24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   <25_24 months               1        0       1
24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   [25-30)_24 months           0        2       3
24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   [25-30)_24 months           1        1       3
24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   <25_24 months               0      107     128
24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   <25_24 months               1       21     128
24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   [25-30)_24 months           0      422     475
24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   [25-30)_24 months           1       53     475
24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   >=30_24 months              0      385     428
24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   >=30_24 months              1       43     428
24 months   ki1119695-PROBIT            BELARUS                        <25_24 months               0      433     444
24 months   ki1119695-PROBIT            BELARUS                        <25_24 months               1       11     444
24 months   ki1119695-PROBIT            BELARUS                        [25-30)_24 months           0      244     250
24 months   ki1119695-PROBIT            BELARUS                        [25-30)_24 months           1        6     250
24 months   ki1119695-PROBIT            BELARUS                        >=30_24 months              0      146     147
24 months   ki1119695-PROBIT            BELARUS                        >=30_24 months              1        1     147
24 months   ki1126311-ZVITAMBO          ZIMBABWE                       <25_24 months               0       13      23
24 months   ki1126311-ZVITAMBO          ZIMBABWE                       <25_24 months               1       10      23
24 months   ki1126311-ZVITAMBO          ZIMBABWE                       [25-30)_24 months           0        4       8
24 months   ki1126311-ZVITAMBO          ZIMBABWE                       [25-30)_24 months           1        4       8
24 months   ki1126311-ZVITAMBO          ZIMBABWE                       >=30_24 months              0        5       6
24 months   ki1126311-ZVITAMBO          ZIMBABWE                       >=30_24 months              1        1       6
24 months   ki1135781-COHORTS           GUATEMALA                      <25_24 months               0       78     145
24 months   ki1135781-COHORTS           GUATEMALA                      <25_24 months               1       67     145
24 months   ki1135781-COHORTS           GUATEMALA                      [25-30)_24 months           0       34      70
24 months   ki1135781-COHORTS           GUATEMALA                      [25-30)_24 months           1       36      70
24 months   ki1135781-COHORTS           GUATEMALA                      >=30_24 months              0       76     114
24 months   ki1135781-COHORTS           GUATEMALA                      >=30_24 months              1       38     114
24 months   ki1148112-iLiNS-DOSE        MALAWI                         <25_24 months               0      303     374
24 months   ki1148112-iLiNS-DOSE        MALAWI                         <25_24 months               1       71     374
24 months   ki1148112-iLiNS-DOSE        MALAWI                         [25-30)_24 months           0      161     182
24 months   ki1148112-iLiNS-DOSE        MALAWI                         [25-30)_24 months           1       21     182
24 months   ki1148112-iLiNS-DOSE        MALAWI                         >=30_24 months              0      166     211
24 months   ki1148112-iLiNS-DOSE        MALAWI                         >=30_24 months              1       45     211
24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         <25_24 months               0       29      33
24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         <25_24 months               1        4      33
24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         [25-30)_24 months           0       19      22
24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         [25-30)_24 months           1        3      22
24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         >=30_24 months              0        7      10
24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         >=30_24 months              1        3      10
24 months   ki1148112-LCNI-5            MALAWI                         <25_24 months               0      120     129
24 months   ki1148112-LCNI-5            MALAWI                         <25_24 months               1        9     129
24 months   ki1148112-LCNI-5            MALAWI                         [25-30)_24 months           0       69      81
24 months   ki1148112-LCNI-5            MALAWI                         [25-30)_24 months           1       12      81
24 months   ki1148112-LCNI-5            MALAWI                         >=30_24 months              0       91     102
24 months   ki1148112-LCNI-5            MALAWI                         >=30_24 months              1       11     102
24 months   kiGH5241-JiVitA-3           BANGLADESH                     <25_24 months               0       91     127
24 months   kiGH5241-JiVitA-3           BANGLADESH                     <25_24 months               1       36     127
24 months   kiGH5241-JiVitA-3           BANGLADESH                     [25-30)_24 months           0       20      23
24 months   kiGH5241-JiVitA-3           BANGLADESH                     [25-30)_24 months           1        3      23
24 months   kiGH5241-JiVitA-3           BANGLADESH                     >=30_24 months              0        7       8
24 months   kiGH5241-JiVitA-3           BANGLADESH                     >=30_24 months              1        1       8


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
* agecat: Birth, studyid: ki1000304b-SAS-CompFeed, country: INDIA, intXmage: [25-30)_Birth
* agecat: Birth, studyid: ki1000304b-SAS-CompFeed, country: INDIA, intXmage: >=30_Birth
* agecat: Birth, studyid: ki1119695-PROBIT, country: BELARUS, intXmage: <25_Birth
* agecat: Birth, studyid: ki1119695-PROBIT, country: BELARUS, intXmage: [25-30)_Birth
* agecat: Birth, studyid: ki1119695-PROBIT, country: BELARUS, intXmage: >=30_Birth
* agecat: Birth, studyid: ki1135781-COHORTS, country: GUATEMALA, intXmage: [25-30)_Birth
* agecat: Birth, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI, intXmage: <25_Birth
* agecat: 6 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH, intXmage: [25-30)_6 months
* agecat: 6 months, studyid: ki1000111-WASH-Kenya, country: KENYA, intXmage: <25_6 months
* agecat: 6 months, studyid: ki1000111-WASH-Kenya, country: KENYA, intXmage: [25-30)_6 months
* agecat: 6 months, studyid: ki1000111-WASH-Kenya, country: KENYA, intXmage: >=30_6 months
* agecat: 6 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN, intXmage: <25_6 months
* agecat: 6 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN, intXmage: [25-30)_6 months
* agecat: 6 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN, intXmage: >=30_6 months
* agecat: 6 months, studyid: ki1000304-Vitamin-B12, country: INDIA, intXmage: [25-30)_6 months
* agecat: 6 months, studyid: ki1000304-Vitamin-B12, country: INDIA, intXmage: >=30_6 months
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH, intXmage: <25_6 months
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH, intXmage: [25-30)_6 months
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH, intXmage: >=30_6 months
* agecat: 6 months, studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO, intXmage: <25_6 months
* agecat: 6 months, studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO, intXmage: >=30_6 months
* agecat: 6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA, intXmage: [25-30)_6 months
* agecat: 24 months, studyid: iLiNS_DYADM_LNS, country: MALAWI, intXmage: <25_24 months
* agecat: 24 months, studyid: iLiNS_DYADM_LNS, country: MALAWI, intXmage: [25-30)_24 months
* agecat: 24 months, studyid: iLiNS_DYADM_LNS, country: MALAWI, intXmage: >=30_24 months
* agecat: 24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH, intXmage: <25_24 months
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF, intXmage: <25_24 months
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF, intXmage: [25-30)_24 months
* agecat: 24 months, studyid: ki1119695-PROBIT, country: BELARUS, intXmage: >=30_24 months
* agecat: 24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE, intXmage: [25-30)_24 months
* agecat: 24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE, intXmage: >=30_24 months
* agecat: 24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI, intXmage: <25_24 months
* agecat: 24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI, intXmage: [25-30)_24 months
* agecat: 24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI, intXmage: >=30_24 months
* agecat: 24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH, intXmage: [25-30)_24 months
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
```

```
##           sstunted
## tr           0   1
##   Control    0   0
##   LNS        0   0
##   Maternal   0   0
##   Other      0   0
##   VitA       0   0
##   Zinc     251   9
##           sstunted
## tr           0   1
##   Control    0   0
##   LNS        0   0
##   Maternal   0   0
##   Other      0   0
##   VitA       0   0
##   Zinc     107  21
##           sstunted
## tr           0   1
##   Control    0   0
##   LNS        0   0
##   Maternal   0   0
##   Other      0   0
##   VitA       0   0
##   Zinc     422  53
##           sstunted
## tr           0   1
##   Control    0   0
##   LNS        0   0
##   Maternal   0   0
##   Other      0   0
##   VitA       0   0
##   Zinc     385  43
```




# Results Detail

## Results Plots
![](/tmp/23bf57b3-3cc5-4f8c-84d3-3067bf1bfb97/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/23bf57b3-3cc5-4f8c-84d3-3067bf1bfb97/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/23bf57b3-3cc5-4f8c-84d3-3067bf1bfb97/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/23bf57b3-3cc5-4f8c-84d3-3067bf1bfb97/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                     country                        intXmage            intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------  --------------------------  -----------------------------  ------------------  -------------------  ---------------  ----------  -----------  ----------
Birth       ki1000304b-SAS-CompFeed     INDIA                          <25_Birth           Control              NA                0.0512821   -0.0042390   0.1068031
Birth       ki1000304b-SAS-CompFeed     INDIA                          <25_Birth           Other                NA                0.0869565    0.0121464   0.1617666
Birth       ki1126311-ZVITAMBO          ZIMBABWE                       <25_Birth           Control              NA                0.0343625    0.0263947   0.0423304
Birth       ki1126311-ZVITAMBO          ZIMBABWE                       <25_Birth           VitA                 NA                0.0310838    0.0266982   0.0354694
Birth       ki1126311-ZVITAMBO          ZIMBABWE                       [25-30)_Birth       Control              NA                0.0321101    0.0204074   0.0438128
Birth       ki1126311-ZVITAMBO          ZIMBABWE                       [25-30)_Birth       VitA                 NA                0.0295720    0.0230216   0.0361224
Birth       ki1126311-ZVITAMBO          ZIMBABWE                       >=30_Birth          Control              NA                0.0268336    0.0134347   0.0402325
Birth       ki1126311-ZVITAMBO          ZIMBABWE                       >=30_Birth          VitA                 NA                0.0362606    0.0275376   0.0449836
Birth       ki1135781-COHORTS           GUATEMALA                      <25_Birth           Control              NA                0.0120482   -0.0045729   0.0286693
Birth       ki1135781-COHORTS           GUATEMALA                      <25_Birth           Other                NA                0.0170455   -0.0021059   0.0361968
Birth       ki1135781-COHORTS           GUATEMALA                      >=30_Birth          Control              NA                0.0128205   -0.0048604   0.0305014
Birth       ki1135781-COHORTS           GUATEMALA                      >=30_Birth          Other                NA                0.0176471   -0.0021755   0.0374697
Birth       kiGH5241-JiVitA-3           BANGLADESH                     <25_Birth           Control              NA                0.1160628    0.1082311   0.1238944
Birth       kiGH5241-JiVitA-3           BANGLADESH                     <25_Birth           Maternal             NA                0.1011863    0.0933219   0.1090507
Birth       kiGH5241-JiVitA-3           BANGLADESH                     [25-30)_Birth       Control              NA                0.0935961    0.0765648   0.1106273
Birth       kiGH5241-JiVitA-3           BANGLADESH                     [25-30)_Birth       Maternal             NA                0.0781517    0.0611504   0.0951531
Birth       kiGH5241-JiVitA-3           BANGLADESH                     >=30_Birth          Control              NA                0.1179039    0.0921903   0.1436176
Birth       kiGH5241-JiVitA-3           BANGLADESH                     >=30_Birth          Maternal             NA                0.0870488    0.0613842   0.1127135
6 months    iLiNS_DYADM_LNS             MALAWI                         <25_6 months        Control              NA                0.0476190    0.0172165   0.0780216
6 months    iLiNS_DYADM_LNS             MALAWI                         <25_6 months        LNS                  NA                0.0400000    0.0109269   0.0690731
6 months    iLiNS_DYADM_LNS             MALAWI                         [25-30)_6 months    Control              NA                0.0714286    0.0161931   0.1266641
6 months    iLiNS_DYADM_LNS             MALAWI                         [25-30)_6 months    LNS                  NA                0.0340909   -0.0039333   0.0721151
6 months    iLiNS_DYADM_LNS             MALAWI                         >=30_6 months       Control              NA                0.0897436    0.0260982   0.1533889
6 months    iLiNS_DYADM_LNS             MALAWI                         >=30_6 months       LNS                  NA                0.0144928   -0.0138023   0.0427878
6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     <25_6 months        Control              NA                0.0412371    0.0016195   0.0808547
6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     <25_6 months        LNS                  NA                0.0650407    0.0214081   0.1086732
6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     <25_6 months        Other                NA                0.0414508    0.0132949   0.0696067
6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     >=30_6 months       Control              NA                0.1739130    0.0181109   0.3297152
6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     >=30_6 months       LNS                  NA                0.0000000    0.0000000   0.0000000
6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     >=30_6 months       Other                NA                0.0232558   -0.0220528   0.0685644
6 months    ki1000304-EU                INDIA                          <25_6 months        Control              NA                0.1441441    0.0786478   0.2096405
6 months    ki1000304-EU                INDIA                          <25_6 months        Zinc                 NA                0.1300000    0.0639290   0.1960710
6 months    ki1000304-EU                INDIA                          [25-30)_6 months    Control              NA                0.0535714   -0.0056887   0.1128316
6 months    ki1000304-EU                INDIA                          [25-30)_6 months    Zinc                 NA                0.0416667   -0.0151372   0.0984706
6 months    ki1000304-EU                INDIA                          >=30_6 months       Control              NA                0.0645161   -0.0228996   0.1519319
6 months    ki1000304-EU                INDIA                          >=30_6 months       Zinc                 NA                0.1875000   -0.0058172   0.3808172
6 months    ki1000304-VITAMIN-A         INDIA                          <25_6 months        Control              NA                0.0844444    0.0634603   0.1054285
6 months    ki1000304-VITAMIN-A         INDIA                          <25_6 months        VitA                 NA                0.1045959    0.0807086   0.1284832
6 months    ki1000304-VITAMIN-A         INDIA                          [25-30)_6 months    Control              NA                0.0952381    0.0671484   0.1233278
6 months    ki1000304-VITAMIN-A         INDIA                          [25-30)_6 months    VitA                 NA                0.0835214    0.0577429   0.1093000
6 months    ki1000304-VITAMIN-A         INDIA                          >=30_6 months       Control              NA                0.1360947    0.0843214   0.1878679
6 months    ki1000304-VITAMIN-A         INDIA                          >=30_6 months       VitA                 NA                0.1317365    0.0803658   0.1831073
6 months    ki1000304-Vitamin-B12       INDIA                          <25_6 months        Control              NA                0.1818182   -0.0486272   0.4122635
6 months    ki1000304-Vitamin-B12       INDIA                          <25_6 months        Other                NA                0.1142857    0.0077170   0.2208544
6 months    ki1000304b-SAS-CompFeed     INDIA                          <25_6 months        Control              NA                0.0738636    0.0432361   0.1044912
6 months    ki1000304b-SAS-CompFeed     INDIA                          <25_6 months        Other                NA                0.0729167    0.0293071   0.1165262
6 months    ki1000304b-SAS-CompFeed     INDIA                          [25-30)_6 months    Control              NA                0.1428571    0.0751295   0.2105848
6 months    ki1000304b-SAS-CompFeed     INDIA                          [25-30)_6 months    Other                NA                0.0869565    0.0432877   0.1306253
6 months    ki1000304b-SAS-CompFeed     INDIA                          >=30_6 months       Control              NA                0.0857143   -0.0547767   0.2262053
6 months    ki1000304b-SAS-CompFeed     INDIA                          >=30_6 months       Other                NA                0.1315789    0.0773920   0.1857659
6 months    ki1000304b-SAS-FoodSuppl    INDIA                          <25_6 months        Control              NA                0.1025641    0.0070403   0.1980879
6 months    ki1000304b-SAS-FoodSuppl    INDIA                          <25_6 months        Other                NA                0.0940171    0.0409635   0.1470707
6 months    ki1000304b-SAS-FoodSuppl    INDIA                          [25-30)_6 months    Control              NA                0.2727273    0.1201390   0.4253156
6 months    ki1000304b-SAS-FoodSuppl    INDIA                          [25-30)_6 months    Other                NA                0.1609195    0.0833820   0.2384570
6 months    ki1000304b-SAS-FoodSuppl    INDIA                          >=30_6 months       Control              NA                0.1111111   -0.0349991   0.2572213
6 months    ki1000304b-SAS-FoodSuppl    INDIA                          >=30_6 months       Other                NA                0.1967213    0.0963272   0.2971154
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   <25_6 months        Control              NA                0.0129032   -0.0048776   0.0306841
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   <25_6 months        Other                NA                0.0121951   -0.0046160   0.0290062
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   <25_6 months        Zinc                 NA                0.0031546   -0.0030234   0.0093325
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   [25-30)_6 months    Control              NA                0.0444444    0.0096512   0.0792377
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   [25-30)_6 months    Other                NA                0.0151515   -0.0057055   0.0360085
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   [25-30)_6 months    Zinc                 NA                0.0161812    0.0021010   0.0302615
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   >=30_6 months       Control              NA                0.0149254   -0.0056261   0.0354768
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   >=30_6 months       Other                NA                0.0000000    0.0000000   0.0000000
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   >=30_6 months       Zinc                 NA                0.0133333   -0.0016691   0.0283357
6 months    ki1112895-Guatemala BSC     GUATEMALA                      <25_6 months        Control              NA                0.0983607    0.0232981   0.1734232
6 months    ki1112895-Guatemala BSC     GUATEMALA                      <25_6 months        Other                NA                0.0754717    0.0040425   0.1469009
6 months    ki1112895-Guatemala BSC     GUATEMALA                      >=30_6 months       Control              NA                0.2105263    0.0250940   0.3959586
6 months    ki1112895-Guatemala BSC     GUATEMALA                      >=30_6 months       Other                NA                0.0800000   -0.0275744   0.1875744
6 months    ki1119695-PROBIT            BELARUS                        <25_6 months        Control              NA                0.0206428    0.0105439   0.0307417
6 months    ki1119695-PROBIT            BELARUS                        <25_6 months        Maternal             NA                0.0145036    0.0093940   0.0196133
6 months    ki1119695-PROBIT            BELARUS                        [25-30)_6 months    Control              NA                0.0144494    0.0081676   0.0207313
6 months    ki1119695-PROBIT            BELARUS                        [25-30)_6 months    Maternal             NA                0.0072745    0.0022781   0.0122709
6 months    ki1119695-PROBIT            BELARUS                        >=30_6 months       Control              NA                0.0234742    0.0081477   0.0388007
6 months    ki1119695-PROBIT            BELARUS                        >=30_6 months       Maternal             NA                0.0143180    0.0040957   0.0245403
6 months    ki1126311-ZVITAMBO          ZIMBABWE                       <25_6 months        Control              NA                0.0335508    0.0227752   0.0443263
6 months    ki1126311-ZVITAMBO          ZIMBABWE                       <25_6 months        VitA                 NA                0.0445469    0.0374587   0.0516351
6 months    ki1126311-ZVITAMBO          ZIMBABWE                       [25-30)_6 months    Control              NA                0.0387755    0.0216773   0.0558737
6 months    ki1126311-ZVITAMBO          ZIMBABWE                       [25-30)_6 months    VitA                 NA                0.0482574    0.0373802   0.0591345
6 months    ki1126311-ZVITAMBO          ZIMBABWE                       >=30_6 months       Control              NA                0.0371429    0.0173238   0.0569619
6 months    ki1126311-ZVITAMBO          ZIMBABWE                       >=30_6 months       VitA                 NA                0.0408348    0.0291461   0.0525236
6 months    ki1135781-COHORTS           GUATEMALA                      <25_6 months        Control              NA                0.0960452    0.0525780   0.1395124
6 months    ki1135781-COHORTS           GUATEMALA                      <25_6 months        Other                NA                0.0989583    0.0566637   0.1412530
6 months    ki1135781-COHORTS           GUATEMALA                      [25-30)_6 months    Control              NA                0.2105263    0.1283426   0.2927101
6 months    ki1135781-COHORTS           GUATEMALA                      [25-30)_6 months    Other                NA                0.1028037    0.0451162   0.1604913
6 months    ki1135781-COHORTS           GUATEMALA                      >=30_6 months       Control              NA                0.1944444    0.1365470   0.2523419
6 months    ki1135781-COHORTS           GUATEMALA                      >=30_6 months       Other                NA                0.1160221    0.0693022   0.1627420
6 months    ki1148112-iLiNS-DOSE        MALAWI                         <25_6 months        Control              NA                0.0683230    0.0293302   0.1073158
6 months    ki1148112-iLiNS-DOSE        MALAWI                         <25_6 months        LNS                  NA                0.0622568    0.0451925   0.0793211
6 months    ki1148112-iLiNS-DOSE        MALAWI                         [25-30)_6 months    Control              NA                0.0819672    0.0130514   0.1508830
6 months    ki1148112-iLiNS-DOSE        MALAWI                         [25-30)_6 months    LNS                  NA                0.0569948    0.0338414   0.0801483
6 months    ki1148112-iLiNS-DOSE        MALAWI                         >=30_6 months       Control              NA                0.0853659    0.0248219   0.1459098
6 months    ki1148112-iLiNS-DOSE        MALAWI                         >=30_6 months       LNS                  NA                0.0697674    0.0443590   0.0951759
6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         <25_6 months        Control              NA                0.0476190    0.0172294   0.0780087
6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         <25_6 months        Maternal             NA                0.0473373    0.0246766   0.0699980
6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         [25-30)_6 months    Control              NA                0.0714286    0.0162560   0.1266012
6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         [25-30)_6 months    Maternal             NA                0.0606061    0.0273118   0.0939003
6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         >=30_6 months       Control              NA                0.0897436    0.0261704   0.1533167
6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         >=30_6 months       Maternal             NA                0.0211268   -0.0025800   0.0448336
6 months    ki1148112-LCNI-5            MALAWI                         <25_6 months        Control              NA                0.0740741    0.0169457   0.1312024
6 months    ki1148112-LCNI-5            MALAWI                         <25_6 months        LNS                  NA                0.0666667    0.0245185   0.1088149
6 months    ki1148112-LCNI-5            MALAWI                         <25_6 months        Other                NA                0.0595238    0.0088419   0.1102057
6 months    ki1148112-LCNI-5            MALAWI                         [25-30)_6 months    Control              NA                0.0681818   -0.0065138   0.1428775
6 months    ki1148112-LCNI-5            MALAWI                         [25-30)_6 months    LNS                  NA                0.0952381    0.0322796   0.1581966
6 months    ki1148112-LCNI-5            MALAWI                         [25-30)_6 months    Other                NA                0.0930233    0.0059507   0.1800958
6 months    ki1148112-LCNI-5            MALAWI                         >=30_6 months       Control              NA                0.0454545   -0.0162487   0.1071578
6 months    ki1148112-LCNI-5            MALAWI                         >=30_6 months       LNS                  NA                0.1214953    0.0594359   0.1835547
6 months    ki1148112-LCNI-5            MALAWI                         >=30_6 months       Other                NA                0.0638298   -0.0062331   0.1338926
6 months    kiGH5241-JiVitA-3           BANGLADESH                     <25_6 months        Control              NA                0.0683747    0.0620145   0.0747350
6 months    kiGH5241-JiVitA-3           BANGLADESH                     <25_6 months        Maternal             NA                0.0577564    0.0517392   0.0637736
6 months    kiGH5241-JiVitA-3           BANGLADESH                     [25-30)_6 months    Control              NA                0.0566343    0.0417527   0.0715159
6 months    kiGH5241-JiVitA-3           BANGLADESH                     [25-30)_6 months    Maternal             NA                0.0443459    0.0311234   0.0575684
6 months    kiGH5241-JiVitA-3           BANGLADESH                     >=30_6 months       Control              NA                0.0594406    0.0326503   0.0862308
6 months    kiGH5241-JiVitA-3           BANGLADESH                     >=30_6 months       Maternal             NA                0.0557276    0.0360596   0.0753955
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     <25_24 months       Control              NA                0.1312500    0.0788877   0.1836123
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     <25_24 months       LNS                  NA                0.1180124    0.0681396   0.1678853
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     <25_24 months       Other                NA                0.1303030    0.0939546   0.1666515
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     [25-30)_24 months   Control              NA                0.0869565    0.0203738   0.1535393
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     [25-30)_24 months   LNS                  NA                0.1348315    0.0637689   0.2058940
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     [25-30)_24 months   Other                NA                0.0883978    0.0469813   0.1298143
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     >=30_24 months      Control              NA                0.1500000    0.0390552   0.2609448
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     >=30_24 months      LNS                  NA                0.0892857    0.0144050   0.1641664
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     >=30_24 months      Other                NA                0.1041667    0.0429000   0.1654334
24 months   ki1000111-WASH-Kenya        KENYA                          <25_24 months       Control              NA                0.1223881    0.0872748   0.1575013
24 months   ki1000111-WASH-Kenya        KENYA                          <25_24 months       LNS                  NA                0.0510204    0.0201995   0.0818413
24 months   ki1000111-WASH-Kenya        KENYA                          <25_24 months       Other                NA                0.0871560    0.0606663   0.1136456
24 months   ki1000111-WASH-Kenya        KENYA                          [25-30)_24 months   Control              NA                0.0751174    0.0396919   0.1105428
24 months   ki1000111-WASH-Kenya        KENYA                          [25-30)_24 months   LNS                  NA                0.0479452    0.0132620   0.0826284
24 months   ki1000111-WASH-Kenya        KENYA                          [25-30)_24 months   Other                NA                0.0732601    0.0423270   0.1041932
24 months   ki1000111-WASH-Kenya        KENYA                          >=30_24 months      Control              NA                0.0882353    0.0492831   0.1271875
24 months   ki1000111-WASH-Kenya        KENYA                          >=30_24 months      LNS                  NA                0.0536913    0.0174703   0.0899122
24 months   ki1000111-WASH-Kenya        KENYA                          >=30_24 months      Other                NA                0.0716724    0.0421142   0.1012305
24 months   ki1000304-EU                INDIA                          <25_24 months       Control              NA                0.2033898    0.1002639   0.3065158
24 months   ki1000304-EU                INDIA                          <25_24 months       Zinc                 NA                0.1846154    0.0899121   0.2793186
24 months   ki1000304-EU                INDIA                          [25-30)_24 months   Control              NA                0.2692308    0.1480114   0.3904502
24 months   ki1000304-EU                INDIA                          [25-30)_24 months   Zinc                 NA                0.2500000    0.1150751   0.3849249
24 months   ki1000304-EU                INDIA                          >=30_24 months      Control              NA                0.1428571   -0.0431186   0.3288329
24 months   ki1000304-EU                INDIA                          >=30_24 months      Zinc                 NA                0.2380952    0.0532711   0.4229194
24 months   ki1000304-Vitamin-B12       INDIA                          <25_24 months       Control              NA                0.1176471   -0.0371302   0.2724243
24 months   ki1000304-Vitamin-B12       INDIA                          <25_24 months       Other                NA                0.2903226    0.1288459   0.4517993
24 months   ki1000304-Vitamin-B12       INDIA                          [25-30)_24 months   Control              NA                0.1666667   -0.0463326   0.3796660
24 months   ki1000304-Vitamin-B12       INDIA                          [25-30)_24 months   Other                NA                0.1315789    0.0230110   0.2401469
24 months   ki1000304-Vitamin-B12       INDIA                          >=30_24 months      Control              NA                0.0000000    0.0000000   0.0000000
24 months   ki1000304-Vitamin-B12       INDIA                          >=30_24 months      Other                NA                0.2800000    0.1013488   0.4586512
24 months   ki1119695-PROBIT            BELARUS                        <25_24 months       Control              NA                0.0215054   -0.0109613   0.0539721
24 months   ki1119695-PROBIT            BELARUS                        <25_24 months       Maternal             NA                0.0271318    0.0008381   0.0534254
24 months   ki1119695-PROBIT            BELARUS                        [25-30)_24 months   Control              NA                0.0245902    0.0004363   0.0487441
24 months   ki1119695-PROBIT            BELARUS                        [25-30)_24 months   Maternal             NA                0.0234375    0.0058266   0.0410484
24 months   ki1126311-ZVITAMBO          ZIMBABWE                       <25_24 months       Control              NA                0.1666667   -0.1382343   0.4715676
24 months   ki1126311-ZVITAMBO          ZIMBABWE                       <25_24 months       VitA                 NA                0.5294118    0.2868102   0.7720133
24 months   ki1135781-COHORTS           GUATEMALA                      <25_24 months       Control              NA                0.4852941    0.3660935   0.6044947
24 months   ki1135781-COHORTS           GUATEMALA                      <25_24 months       Other                NA                0.4415584    0.3302602   0.5528567
24 months   ki1135781-COHORTS           GUATEMALA                      [25-30)_24 months   Control              NA                0.5526316    0.3933992   0.7118639
24 months   ki1135781-COHORTS           GUATEMALA                      [25-30)_24 months   Other                NA                0.4687500    0.2946023   0.6428977
24 months   ki1135781-COHORTS           GUATEMALA                      >=30_24 months      Control              NA                0.3934426    0.2703100   0.5165752
24 months   ki1135781-COHORTS           GUATEMALA                      >=30_24 months      Other                NA                0.2641509    0.1449324   0.3833695
24 months   ki1148112-iLiNS-DOSE        MALAWI                         <25_24 months       Control              NA                0.1904762    0.0933818   0.2875706
24 months   ki1148112-iLiNS-DOSE        MALAWI                         <25_24 months       LNS                  NA                0.1897106    0.1460776   0.2333436
24 months   ki1148112-iLiNS-DOSE        MALAWI                         [25-30)_24 months   Control              NA                0.1304348   -0.0075809   0.2684504
24 months   ki1148112-iLiNS-DOSE        MALAWI                         [25-30)_24 months   LNS                  NA                0.1132075    0.0638226   0.1625925
24 months   ki1148112-iLiNS-DOSE        MALAWI                         >=30_24 months      Control              NA                0.2250000    0.0952845   0.3547155
24 months   ki1148112-iLiNS-DOSE        MALAWI                         >=30_24 months      LNS                  NA                0.2105263    0.1492767   0.2717760
24 months   ki1148112-LCNI-5            MALAWI                         <25_24 months       Control              NA                0.1315789    0.0236831   0.2394747
24 months   ki1148112-LCNI-5            MALAWI                         <25_24 months       LNS                  NA                0.0588235   -0.0060047   0.1236517
24 months   ki1148112-LCNI-5            MALAWI                         <25_24 months       Other                NA                0.0250000   -0.0235714   0.0735714
24 months   ki1148112-LCNI-5            MALAWI                         [25-30)_24 months   Control              NA                0.1666667    0.0166382   0.3166952
24 months   ki1148112-LCNI-5            MALAWI                         [25-30)_24 months   LNS                  NA                0.1282051    0.0226272   0.2337831
24 months   ki1148112-LCNI-5            MALAWI                         [25-30)_24 months   Other                NA                0.1666667   -0.0065713   0.3399046
24 months   ki1148112-LCNI-5            MALAWI                         >=30_24 months      Control              NA                0.1290323    0.0104399   0.2476246
24 months   ki1148112-LCNI-5            MALAWI                         >=30_24 months      LNS                  NA                0.1176471    0.0287855   0.2065087
24 months   ki1148112-LCNI-5            MALAWI                         >=30_24 months      Other                NA                0.0500000   -0.0459885   0.1459885
24 months   kiGH5241-JiVitA-3           BANGLADESH                     <25_24 months       Control              NA                0.3114754    0.1657777   0.4571731
24 months   kiGH5241-JiVitA-3           BANGLADESH                     <25_24 months       Maternal             NA                0.2575758    0.1163597   0.3987918


### Parameter: E(Y)


agecat      studyid                     country                        intXmage            intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  --------------------------  -----------------------------  ------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1000304b-SAS-CompFeed     INDIA                          <25_Birth           NA                   NA                0.0705882   0.0190904   0.1220861
Birth       ki1126311-ZVITAMBO          ZIMBABWE                       <25_Birth           NA                   NA                0.0319043   0.0280587   0.0357499
Birth       ki1126311-ZVITAMBO          ZIMBABWE                       [25-30)_Birth       NA                   NA                0.0302150   0.0244955   0.0359344
Birth       ki1126311-ZVITAMBO          ZIMBABWE                       >=30_Birth          NA                   NA                0.0339931   0.0266241   0.0413621
Birth       ki1135781-COHORTS           GUATEMALA                      <25_Birth           NA                   NA                0.0146199   0.0018806   0.0273592
Birth       ki1135781-COHORTS           GUATEMALA                      >=30_Birth          NA                   NA                0.0153374   0.0019768   0.0286980
Birth       kiGH5241-JiVitA-3           BANGLADESH                     <25_Birth           NA                   NA                0.1086442   0.1030570   0.1142314
Birth       kiGH5241-JiVitA-3           BANGLADESH                     [25-30)_Birth       NA                   NA                0.0855789   0.0735425   0.0976153
Birth       kiGH5241-JiVitA-3           BANGLADESH                     >=30_Birth          NA                   NA                0.1022605   0.0840916   0.1204294
6 months    iLiNS_DYADM_LNS             MALAWI                         <25_6 months        NA                   NA                0.0439560   0.0228677   0.0650444
6 months    iLiNS_DYADM_LNS             MALAWI                         [25-30)_6 months    NA                   NA                0.0523256   0.0189494   0.0857018
6 months    iLiNS_DYADM_LNS             MALAWI                         >=30_6 months       NA                   NA                0.0544218   0.0176253   0.0912183
6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     <25_6 months        NA                   NA                0.0484262   0.0276980   0.0691543
6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     >=30_6 months       NA                   NA                0.0574713   0.0082819   0.1066607
6 months    ki1000304-EU                INDIA                          <25_6 months        NA                   NA                0.1374408   0.0908724   0.1840091
6 months    ki1000304-EU                INDIA                          [25-30)_6 months    NA                   NA                0.0480769   0.0067628   0.0893911
6 months    ki1000304-EU                INDIA                          >=30_6 months       NA                   NA                0.1063830   0.0172823   0.1954836
6 months    ki1000304-VITAMIN-A         INDIA                          <25_6 months        NA                   NA                0.0941807   0.0783338   0.1100276
6 months    ki1000304-VITAMIN-A         INDIA                          [25-30)_6 months    NA                   NA                0.0892236   0.0701936   0.1082537
6 months    ki1000304-VITAMIN-A         INDIA                          >=30_6 months       NA                   NA                0.1339286   0.0974583   0.1703989
6 months    ki1000304-Vitamin-B12       INDIA                          <25_6 months        NA                   NA                0.1304348   0.0320360   0.2288335
6 months    ki1000304b-SAS-CompFeed     INDIA                          <25_6 months        NA                   NA                0.0733696   0.0463097   0.1004294
6 months    ki1000304b-SAS-CompFeed     INDIA                          [25-30)_6 months    NA                   NA                0.1136364   0.0699760   0.1572968
6 months    ki1000304b-SAS-CompFeed     INDIA                          >=30_6 months       NA                   NA                0.1095890   0.0379210   0.1812571
6 months    ki1000304b-SAS-FoodSuppl    INDIA                          <25_6 months        NA                   NA                0.0961538   0.0497437   0.1425640
6 months    ki1000304b-SAS-FoodSuppl    INDIA                          [25-30)_6 months    NA                   NA                0.1916667   0.1209465   0.2623868
6 months    ki1000304b-SAS-FoodSuppl    INDIA                          >=30_6 months       NA                   NA                0.1772152   0.0924740   0.2619563
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   <25_6 months        NA                   NA                0.0078616   0.0009925   0.0147308
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   [25-30)_6 months    NA                   NA                0.0225694   0.0104295   0.0347094
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   >=30_6 months       NA                   NA                0.0103306   0.0013132   0.0193480
6 months    ki1112895-Guatemala BSC     GUATEMALA                      <25_6 months        NA                   NA                0.0877193   0.0355613   0.1398773
6 months    ki1112895-Guatemala BSC     GUATEMALA                      >=30_6 months       NA                   NA                0.1363636   0.0337917   0.2389356
6 months    ki1119695-PROBIT            BELARUS                        <25_6 months        NA                   NA                0.0175058   0.0116535   0.0233580
6 months    ki1119695-PROBIT            BELARUS                        [25-30)_6 months    NA                   NA                0.0108135   0.0064889   0.0151380
6 months    ki1119695-PROBIT            BELARUS                        >=30_6 months       NA                   NA                0.0188100   0.0093569   0.0282631
6 months    ki1126311-ZVITAMBO          ZIMBABWE                       <25_6 months        NA                   NA                0.0418207   0.0358562   0.0477852
6 months    ki1126311-ZVITAMBO          ZIMBABWE                       [25-30)_6 months    NA                   NA                0.0459132   0.0366967   0.0551298
6 months    ki1126311-ZVITAMBO          ZIMBABWE                       >=30_6 months       NA                   NA                0.0399449   0.0298688   0.0500210
6 months    ki1135781-COHORTS           GUATEMALA                      <25_6 months        NA                   NA                0.0975610   0.0672450   0.1278769
6 months    ki1135781-COHORTS           GUATEMALA                      [25-30)_6 months    NA                   NA                0.1534653   0.1036369   0.2032938
6 months    ki1135781-COHORTS           GUATEMALA                      >=30_6 months       NA                   NA                0.1551247   0.1177279   0.1925214
6 months    ki1148112-iLiNS-DOSE        MALAWI                         <25_6 months        NA                   NA                0.0633047   0.0476628   0.0789467
6 months    ki1148112-iLiNS-DOSE        MALAWI                         [25-30)_6 months    NA                   NA                0.0604027   0.0382931   0.0825122
6 months    ki1148112-iLiNS-DOSE        MALAWI                         >=30_6 months       NA                   NA                0.0724947   0.0490018   0.0959876
6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         <25_6 months        NA                   NA                0.0474383   0.0292720   0.0656046
6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         [25-30)_6 months    NA                   NA                0.0638298   0.0352484   0.0924112
6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         >=30_6 months       NA                   NA                0.0454545   0.0178670   0.0730421
6 months    ki1148112-LCNI-5            MALAWI                         <25_6 months        NA                   NA                0.0666667   0.0383928   0.0949405
6 months    ki1148112-LCNI-5            MALAWI                         [25-30)_6 months    NA                   NA                0.0877193   0.0451952   0.1302434
6 months    ki1148112-LCNI-5            MALAWI                         >=30_6 months       NA                   NA                0.0909091   0.0507649   0.1310532
6 months    kiGH5241-JiVitA-3           BANGLADESH                     <25_6 months        NA                   NA                0.0630777   0.0586732   0.0674821
6 months    kiGH5241-JiVitA-3           BANGLADESH                     [25-30)_6 months    NA                   NA                0.0502124   0.0402966   0.0601282
6 months    kiGH5241-JiVitA-3           BANGLADESH                     >=30_6 months       NA                   NA                0.0574713   0.0411186   0.0738239
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     <25_24 months       NA                   NA                0.1274962   0.1018558   0.1531365
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     [25-30)_24 months   NA                   NA                0.1002950   0.0682707   0.1323193
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     >=30_24 months      NA                   NA                0.1093750   0.0651123   0.1536377
24 months   ki1000111-WASH-Kenya        KENYA                          <25_24 months       NA                   NA                0.0920372   0.0738077   0.1102668
24 months   ki1000111-WASH-Kenya        KENYA                          [25-30)_24 months   NA                   NA                0.0680380   0.0483904   0.0876855
24 months   ki1000111-WASH-Kenya        KENYA                          >=30_24 months      NA                   NA                0.0727554   0.0527108   0.0928000
24 months   ki1000304-EU                INDIA                          <25_24 months       NA                   NA                0.1935484   0.1237284   0.2633683
24 months   ki1000304-EU                INDIA                          [25-30)_24 months   NA                   NA                0.2608696   0.1706502   0.3510889
24 months   ki1000304-EU                INDIA                          >=30_24 months      NA                   NA                0.2000000   0.0655476   0.3344524
24 months   ki1000304-Vitamin-B12       INDIA                          <25_24 months       NA                   NA                0.2291667   0.1090080   0.3493253
24 months   ki1000304-Vitamin-B12       INDIA                          [25-30)_24 months   NA                   NA                0.1400000   0.0428454   0.2371546
24 months   ki1000304-Vitamin-B12       INDIA                          >=30_24 months      NA                   NA                0.2058824   0.0679256   0.3438392
24 months   ki1119695-PROBIT            BELARUS                        <25_24 months       NA                   NA                0.0247748   0.0043613   0.0451883
24 months   ki1119695-PROBIT            BELARUS                        [25-30)_24 months   NA                   NA                0.0240000   0.0092965   0.0387035
24 months   ki1126311-ZVITAMBO          ZIMBABWE                       <25_24 months       NA                   NA                0.4347826   0.2276347   0.6419305
24 months   ki1135781-COHORTS           GUATEMALA                      <25_24 months       NA                   NA                0.4620690   0.3806391   0.5434988
24 months   ki1135781-COHORTS           GUATEMALA                      [25-30)_24 months   NA                   NA                0.5142857   0.3963579   0.6322135
24 months   ki1135781-COHORTS           GUATEMALA                      >=30_24 months      NA                   NA                0.3333333   0.2464168   0.4202499
24 months   ki1148112-iLiNS-DOSE        MALAWI                         <25_24 months       NA                   NA                0.1898396   0.1500405   0.2296386
24 months   ki1148112-iLiNS-DOSE        MALAWI                         [25-30)_24 months   NA                   NA                0.1153846   0.0688410   0.1619282
24 months   ki1148112-iLiNS-DOSE        MALAWI                         >=30_24 months      NA                   NA                0.2132701   0.1578693   0.2686710
24 months   ki1148112-LCNI-5            MALAWI                         <25_24 months       NA                   NA                0.0697674   0.0256343   0.1139006
24 months   ki1148112-LCNI-5            MALAWI                         [25-30)_24 months   NA                   NA                0.1481481   0.0703027   0.2259936
24 months   ki1148112-LCNI-5            MALAWI                         >=30_24 months      NA                   NA                0.1078431   0.0473503   0.1683360
24 months   kiGH5241-JiVitA-3           BANGLADESH                     <25_24 months       NA                   NA                0.2834646   0.1821619   0.3847672


### Parameter: RR


agecat      studyid                     country                        intXmage            intervention_level   baseline_level            estimate           ci_lower           ci_upper
----------  --------------------------  -----------------------------  ------------------  -------------------  ---------------  -----------------  -----------------  -----------------
Birth       ki1000304b-SAS-CompFeed     INDIA                          <25_Birth           Control              Control                  1.0000000          1.0000000          1.0000000
Birth       ki1000304b-SAS-CompFeed     INDIA                          <25_Birth           Other                Control                  1.6956522          0.4275750          6.7245194
Birth       ki1126311-ZVITAMBO          ZIMBABWE                       <25_Birth           Control              Control                  1.0000000          1.0000000          1.0000000
Birth       ki1126311-ZVITAMBO          ZIMBABWE                       <25_Birth           VitA                 Control                  0.9045829          0.6895543          1.1866655
Birth       ki1126311-ZVITAMBO          ZIMBABWE                       [25-30)_Birth       Control              Control                  1.0000000          1.0000000          1.0000000
Birth       ki1126311-ZVITAMBO          ZIMBABWE                       [25-30)_Birth       VitA                 Control                  0.9209561          0.6011972          1.4107853
Birth       ki1126311-ZVITAMBO          ZIMBABWE                       >=30_Birth          Control              Control                  1.0000000          1.0000000          1.0000000
Birth       ki1126311-ZVITAMBO          ZIMBABWE                       >=30_Birth          VitA                 Control                  1.3513126          0.7763256          2.3521646
Birth       ki1135781-COHORTS           GUATEMALA                      <25_Birth           Control              Control                  1.0000000          1.0000000          1.0000000
Birth       ki1135781-COHORTS           GUATEMALA                      <25_Birth           Other                Control                  1.4147727          0.2387789          8.3825751
Birth       ki1135781-COHORTS           GUATEMALA                      >=30_Birth          Control              Control                  1.0000000          1.0000000          1.0000000
Birth       ki1135781-COHORTS           GUATEMALA                      >=30_Birth          Other                Control                  1.3764706          0.2324323          8.1514971
Birth       kiGH5241-JiVitA-3           BANGLADESH                     <25_Birth           Control              Control                  1.0000000          1.0000000          1.0000000
Birth       kiGH5241-JiVitA-3           BANGLADESH                     <25_Birth           Maternal             Control                  0.8718243          0.7865460          0.9663486
Birth       kiGH5241-JiVitA-3           BANGLADESH                     [25-30)_Birth       Control              Control                  1.0000000          1.0000000          1.0000000
Birth       kiGH5241-JiVitA-3           BANGLADESH                     [25-30)_Birth       Maternal             Control                  0.8349896          0.6288550          1.1086939
Birth       kiGH5241-JiVitA-3           BANGLADESH                     >=30_Birth          Control              Control                  1.0000000          1.0000000          1.0000000
Birth       kiGH5241-JiVitA-3           BANGLADESH                     >=30_Birth          Maternal             Control                  0.7383031          0.5116577          1.0653439
6 months    iLiNS_DYADM_LNS             MALAWI                         <25_6 months        Control              Control                  1.0000000          1.0000000          1.0000000
6 months    iLiNS_DYADM_LNS             MALAWI                         <25_6 months        LNS                  Control                  0.8400000          0.3192520          2.2101660
6 months    iLiNS_DYADM_LNS             MALAWI                         [25-30)_6 months    Control              Control                  1.0000000          1.0000000          1.0000000
6 months    iLiNS_DYADM_LNS             MALAWI                         [25-30)_6 months    LNS                  Control                  0.4772727          0.1228378          1.8543901
6 months    iLiNS_DYADM_LNS             MALAWI                         >=30_6 months       Control              Control                  1.0000000          1.0000000          1.0000000
6 months    iLiNS_DYADM_LNS             MALAWI                         >=30_6 months       LNS                  Control                  0.1614907          0.0202321          1.2890041
6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     <25_6 months        Control              Control                  1.0000000          1.0000000          1.0000000
6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     <25_6 months        LNS                  Control                  1.5772358          0.4886577          5.0908289
6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     <25_6 months        Other                Control                  1.0051813          0.3099222          3.2601398
6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     >=30_6 months       Control              Control                  1.0000000          1.0000000          1.0000000
6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     >=30_6 months       LNS                  Control                  0.0000000          0.0000000          0.0000000
6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     >=30_6 months       Other                Control                  0.1337209          0.0156643          1.1415300
6 months    ki1000304-EU                INDIA                          <25_6 months        Control              Control                  1.0000000          1.0000000          1.0000000
6 months    ki1000304-EU                INDIA                          <25_6 months        Zinc                 Control                  0.9018750          0.4561112          1.7832898
6 months    ki1000304-EU                INDIA                          [25-30)_6 months    Control              Control                  1.0000000          1.0000000          1.0000000
6 months    ki1000304-EU                INDIA                          [25-30)_6 months    Zinc                 Control                  0.7777778          0.1343992          4.5010564
6 months    ki1000304-EU                INDIA                          >=30_6 months       Control              Control                  1.0000000          1.0000000          1.0000000
6 months    ki1000304-EU                INDIA                          >=30_6 months       Zinc                 Control                  2.9062500          0.5295395         15.9502545
6 months    ki1000304-VITAMIN-A         INDIA                          <25_6 months        Control              Control                  1.0000000          1.0000000          1.0000000
6 months    ki1000304-VITAMIN-A         INDIA                          <25_6 months        VitA                 Control                  1.2386354          0.8838308          1.7358726
6 months    ki1000304-VITAMIN-A         INDIA                          [25-30)_6 months    Control              Control                  1.0000000          1.0000000          1.0000000
6 months    ki1000304-VITAMIN-A         INDIA                          [25-30)_6 months    VitA                 Control                  0.8769752          0.5722452          1.3439788
6 months    ki1000304-VITAMIN-A         INDIA                          >=30_6 months       Control              Control                  1.0000000          1.0000000          1.0000000
6 months    ki1000304-VITAMIN-A         INDIA                          >=30_6 months       VitA                 Control                  0.9679771          0.5613989          1.6690088
6 months    ki1000304-Vitamin-B12       INDIA                          <25_6 months        Control              Control                  1.0000000          1.0000000          1.0000000
6 months    ki1000304-Vitamin-B12       INDIA                          <25_6 months        Other                Control                  0.6285714          0.1303128          3.0319507
6 months    ki1000304b-SAS-CompFeed     INDIA                          <25_6 months        Control              Control                  1.0000000          1.0000000          1.0000000
6 months    ki1000304b-SAS-CompFeed     INDIA                          <25_6 months        Other                Control                  0.9871795          0.4770011          2.0430213
6 months    ki1000304b-SAS-CompFeed     INDIA                          [25-30)_6 months    Control              Control                  1.0000000          1.0000000          1.0000000
6 months    ki1000304b-SAS-CompFeed     INDIA                          [25-30)_6 months    Other                Control                  0.6086957          0.3052826          1.2136637
6 months    ki1000304b-SAS-CompFeed     INDIA                          >=30_6 months       Control              Control                  1.0000000          1.0000000          1.0000000
6 months    ki1000304b-SAS-CompFeed     INDIA                          >=30_6 months       Other                Control                  1.5350877          0.2816083          8.3679858
6 months    ki1000304b-SAS-FoodSuppl    INDIA                          <25_6 months        Control              Control                  1.0000000          1.0000000          1.0000000
6 months    ki1000304b-SAS-FoodSuppl    INDIA                          <25_6 months        Other                Control                  0.9166667          0.3085157          2.7236140
6 months    ki1000304b-SAS-FoodSuppl    INDIA                          [25-30)_6 months    Control              Control                  1.0000000          1.0000000          1.0000000
6 months    ki1000304b-SAS-FoodSuppl    INDIA                          [25-30)_6 months    Other                Control                  0.5900383          0.2819730          1.2346758
6 months    ki1000304b-SAS-FoodSuppl    INDIA                          >=30_6 months       Control              Control                  1.0000000          1.0000000          1.0000000
6 months    ki1000304b-SAS-FoodSuppl    INDIA                          >=30_6 months       Other                Control                  1.7704918          0.4320166          7.2558347
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   <25_6 months        Control              Control                  1.0000000          1.0000000          1.0000000
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   <25_6 months        Other                Control                  0.9451220          0.1345793          6.6373902
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   <25_6 months        Zinc                 Control                  0.2444795          0.0222979          2.6805354
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   [25-30)_6 months    Control              Control                  1.0000000          1.0000000          1.0000000
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   [25-30)_6 months    Other                Control                  0.3409091          0.0699669          1.6610572
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   [25-30)_6 months    Zinc                 Control                  0.3640777          0.1129433          1.1736202
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   >=30_6 months       Control              Control                  1.0000000          1.0000000          1.0000000
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   >=30_6 months       Other                Control                  0.0000001          0.0000000          0.0000003
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   >=30_6 months       Zinc                 Control                  0.8933333          0.1509210          5.2878307
6 months    ki1112895-Guatemala BSC     GUATEMALA                      <25_6 months        Control              Control                  1.0000000          1.0000000          1.0000000
6 months    ki1112895-Guatemala BSC     GUATEMALA                      <25_6 months        Other                Control                  0.7672956          0.2274870          2.5880272
6 months    ki1112895-Guatemala BSC     GUATEMALA                      >=30_6 months       Control              Control                  1.0000000          1.0000000          1.0000000
6 months    ki1112895-Guatemala BSC     GUATEMALA                      >=30_6 months       Other                Control                  0.3800000          0.0761492          1.8962769
6 months    ki1119695-PROBIT            BELARUS                        <25_6 months        Control              Control                  1.0000000          1.0000000          1.0000000
6 months    ki1119695-PROBIT            BELARUS                        <25_6 months        Maternal             Control                  0.7025997          0.3854685          1.2806398
6 months    ki1119695-PROBIT            BELARUS                        [25-30)_6 months    Control              Control                  1.0000000          1.0000000          1.0000000
6 months    ki1119695-PROBIT            BELARUS                        [25-30)_6 months    Maternal             Control                  0.5034449          0.2230237          1.1364571
6 months    ki1119695-PROBIT            BELARUS                        >=30_6 months       Control              Control                  1.0000000          1.0000000          1.0000000
6 months    ki1119695-PROBIT            BELARUS                        >=30_6 months       Maternal             Control                  0.6099472          0.2322817          1.6016573
6 months    ki1126311-ZVITAMBO          ZIMBABWE                       <25_6 months        Control              Control                  1.0000000          1.0000000          1.0000000
6 months    ki1126311-ZVITAMBO          ZIMBABWE                       <25_6 months        VitA                 Control                  1.3277436          0.9277942          1.9001015
6 months    ki1126311-ZVITAMBO          ZIMBABWE                       [25-30)_6 months    Control              Control                  1.0000000          1.0000000          1.0000000
6 months    ki1126311-ZVITAMBO          ZIMBABWE                       [25-30)_6 months    VitA                 Control                  1.2445322          0.7584622          2.0421065
6 months    ki1126311-ZVITAMBO          ZIMBABWE                       >=30_6 months       Control              Control                  1.0000000          1.0000000          1.0000000
6 months    ki1126311-ZVITAMBO          ZIMBABWE                       >=30_6 months       VitA                 Control                  1.0993997          0.6000424          2.0143239
6 months    ki1135781-COHORTS           GUATEMALA                      <25_6 months        Control              Control                  1.0000000          1.0000000          1.0000000
6 months    ki1135781-COHORTS           GUATEMALA                      <25_6 months        Other                Control                  1.0303309          0.5528843          1.9200794
6 months    ki1135781-COHORTS           GUATEMALA                      [25-30)_6 months    Control              Control                  1.0000000          1.0000000          1.0000000
6 months    ki1135781-COHORTS           GUATEMALA                      [25-30)_6 months    Other                Control                  0.4883178          0.2465078          0.9673295
6 months    ki1135781-COHORTS           GUATEMALA                      >=30_6 months       Control              Control                  1.0000000          1.0000000          1.0000000
6 months    ki1135781-COHORTS           GUATEMALA                      >=30_6 months       Other                Control                  0.5966851          0.3616141          0.9845663
6 months    ki1148112-iLiNS-DOSE        MALAWI                         <25_6 months        Control              Control                  1.0000000          1.0000000          1.0000000
6 months    ki1148112-iLiNS-DOSE        MALAWI                         <25_6 months        LNS                  Control                  0.9112133          0.4837927          1.7162510
6 months    ki1148112-iLiNS-DOSE        MALAWI                         [25-30)_6 months    Control              Control                  1.0000000          1.0000000          1.0000000
6 months    ki1148112-iLiNS-DOSE        MALAWI                         [25-30)_6 months    LNS                  Control                  0.6953368          0.2733152          1.7689950
6 months    ki1148112-iLiNS-DOSE        MALAWI                         >=30_6 months       Control              Control                  1.0000000          1.0000000          1.0000000
6 months    ki1148112-iLiNS-DOSE        MALAWI                         >=30_6 months       LNS                  Control                  0.8172757          0.3682299          1.8139203
6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         <25_6 months        Control              Control                  1.0000000          1.0000000          1.0000000
6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         <25_6 months        Maternal             Control                  0.9940828          0.4476674          2.2074442
6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         [25-30)_6 months    Control              Control                  1.0000000          1.0000000          1.0000000
6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         [25-30)_6 months    Maternal             Control                  0.8484848          0.3288505          2.1892213
6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         >=30_6 months       Control              Control                  1.0000000          1.0000000          1.0000000
6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         >=30_6 months       Maternal             Control                  0.2354125          0.0624474          0.8874517
6 months    ki1148112-LCNI-5            MALAWI                         <25_6 months        Control              Control                  1.0000000          1.0000000          1.0000000
6 months    ki1148112-LCNI-5            MALAWI                         <25_6 months        LNS                  Control                  0.9000000          0.3320035          2.4397335
6 months    ki1148112-LCNI-5            MALAWI                         <25_6 months        Other                Control                  0.8035714          0.2547418          2.5348293
6 months    ki1148112-LCNI-5            MALAWI                         [25-30)_6 months    Control              Control                  1.0000000          1.0000000          1.0000000
6 months    ki1148112-LCNI-5            MALAWI                         [25-30)_6 months    LNS                  Control                  1.3968254          0.3885509          5.0215335
6 months    ki1148112-LCNI-5            MALAWI                         [25-30)_6 months    Other                Control                  1.3643411          0.3229417          5.7639706
6 months    ki1148112-LCNI-5            MALAWI                         >=30_6 months       Control              Control                  1.0000000          1.0000000          1.0000000
6 months    ki1148112-LCNI-5            MALAWI                         >=30_6 months       LNS                  Control                  2.6728971          0.6267352         11.3993589
6 months    ki1148112-LCNI-5            MALAWI                         >=30_6 months       Other                Control                  1.4042553          0.2450675          8.0464878
6 months    kiGH5241-JiVitA-3           BANGLADESH                     <25_6 months        Control              Control                  1.0000000          1.0000000          1.0000000
6 months    kiGH5241-JiVitA-3           BANGLADESH                     <25_6 months        Maternal             Control                  0.8447039          0.7345936          0.9713189
6 months    kiGH5241-JiVitA-3           BANGLADESH                     [25-30)_6 months    Control              Control                  1.0000000          1.0000000          1.0000000
6 months    kiGH5241-JiVitA-3           BANGLADESH                     [25-30)_6 months    Maternal             Control                  0.7830219          0.5262013          1.1651877
6 months    kiGH5241-JiVitA-3           BANGLADESH                     >=30_6 months       Control              Control                  1.0000000          1.0000000          1.0000000
6 months    kiGH5241-JiVitA-3           BANGLADESH                     >=30_6 months       Maternal             Control                  0.9375341          0.5289672          1.6616726
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     <25_24 months       Control              Control                  1.0000000          1.0000000          1.0000000
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     <25_24 months       LNS                  Control                  0.8991423          0.5028397          1.6077824
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     <25_24 months       Other                Control                  0.9927850          0.6101540          1.6153662
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     [25-30)_24 months   Control              Control                  1.0000000          1.0000000          1.0000000
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     [25-30)_24 months   LNS                  Control                  1.5505618          0.6120505          3.9281760
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     [25-30)_24 months   Other                Control                  1.0165746          0.4142718          2.4945552
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     >=30_24 months      Control              Control                  1.0000000          1.0000000          1.0000000
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     >=30_24 months      LNS                  Control                  0.5952381          0.1945604          1.8210716
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     >=30_24 months      Other                Control                  0.6944444          0.2699216          1.7866413
24 months   ki1000111-WASH-Kenya        KENYA                          <25_24 months       Control              Control                  1.0000000          1.0000000          1.0000000
24 months   ki1000111-WASH-Kenya        KENYA                          <25_24 months       LNS                  Control                  0.4168741          0.2135833          0.8136590
24 months   ki1000111-WASH-Kenya        KENYA                          <25_24 months       Other                Control                  0.7121280          0.4688583          1.0816194
24 months   ki1000111-WASH-Kenya        KENYA                          [25-30)_24 months   Control              Control                  1.0000000          1.0000000          1.0000000
24 months   ki1000111-WASH-Kenya        KENYA                          [25-30)_24 months   LNS                  Control                  0.6382706          0.2691370          1.5136877
24 months   ki1000111-WASH-Kenya        KENYA                          [25-30)_24 months   Other                Control                  0.9752747          0.5178662          1.8366921
24 months   ki1000111-WASH-Kenya        KENYA                          >=30_24 months      Control              Control                  1.0000000          1.0000000          1.0000000
24 months   ki1000111-WASH-Kenya        KENYA                          >=30_24 months      LNS                  Control                  0.6085011          0.2717218          1.3626937
24 months   ki1000111-WASH-Kenya        KENYA                          >=30_24 months      Other                Control                  0.8122867          0.4439582          1.4861977
24 months   ki1000304-EU                INDIA                          <25_24 months       Control              Control                  1.0000000          1.0000000          1.0000000
24 months   ki1000304-EU                INDIA                          <25_24 months       Zinc                 Control                  0.9076923          0.4412607          1.8671621
24 months   ki1000304-EU                INDIA                          [25-30)_24 months   Control              Control                  1.0000000          1.0000000          1.0000000
24 months   ki1000304-EU                INDIA                          [25-30)_24 months   Zinc                 Control                  0.9285714          0.4598038          1.8752454
24 months   ki1000304-EU                INDIA                          >=30_24 months      Control              Control                  1.0000000          1.0000000          1.0000000
24 months   ki1000304-EU                INDIA                          >=30_24 months      Zinc                 Control                  1.6666667          0.3660910          7.5876694
24 months   ki1000304-Vitamin-B12       INDIA                          <25_24 months       Control              Control                  1.0000000          1.0000000          1.0000000
24 months   ki1000304-Vitamin-B12       INDIA                          <25_24 months       Other                Control                  2.4677419          0.5915296         10.2949214
24 months   ki1000304-Vitamin-B12       INDIA                          [25-30)_24 months   Control              Control                  1.0000000          1.0000000          1.0000000
24 months   ki1000304-Vitamin-B12       INDIA                          [25-30)_24 months   Other                Control                  0.7894737          0.1724579          3.6140343
24 months   ki1000304-Vitamin-B12       INDIA                          >=30_24 months      Control              Control                  1.0000000          1.0000000          1.0000000
24 months   ki1000304-Vitamin-B12       INDIA                          >=30_24 months      Other                Control           32381662.3180197   13776009.2890999   76115806.2885399
24 months   ki1119695-PROBIT            BELARUS                        <25_24 months       Control              Control                  1.0000000          1.0000000          1.0000000
24 months   ki1119695-PROBIT            BELARUS                        <25_24 months       Maternal             Control                  1.2616279          0.2095861          7.5945154
24 months   ki1119695-PROBIT            BELARUS                        [25-30)_24 months   Control              Control                  1.0000000          1.0000000          1.0000000
24 months   ki1119695-PROBIT            BELARUS                        [25-30)_24 months   Maternal             Control                  0.9531250          0.2733809          3.3230087
24 months   ki1126311-ZVITAMBO          ZIMBABWE                       <25_24 months       Control              Control                  1.0000000          1.0000000          1.0000000
24 months   ki1126311-ZVITAMBO          ZIMBABWE                       <25_24 months       VitA                 Control                  3.1764706          0.4818343         20.9407390
24 months   ki1135781-COHORTS           GUATEMALA                      <25_24 months       Control              Control                  1.0000000          1.0000000          1.0000000
24 months   ki1135781-COHORTS           GUATEMALA                      <25_24 months       Other                Control                  0.9098780          0.6399345          1.2936917
24 months   ki1135781-COHORTS           GUATEMALA                      [25-30)_24 months   Control              Control                  1.0000000          1.0000000          1.0000000
24 months   ki1135781-COHORTS           GUATEMALA                      [25-30)_24 months   Other                Control                  0.8482143          0.5300541          1.3573473
24 months   ki1135781-COHORTS           GUATEMALA                      >=30_24 months      Control              Control                  1.0000000          1.0000000          1.0000000
24 months   ki1135781-COHORTS           GUATEMALA                      >=30_24 months      Other                Control                  0.6713836          0.3876573          1.1627693
24 months   ki1148112-iLiNS-DOSE        MALAWI                         <25_24 months       Control              Control                  1.0000000          1.0000000          1.0000000
24 months   ki1148112-iLiNS-DOSE        MALAWI                         <25_24 months       LNS                  Control                  0.9959807          0.5693506          1.7422964
24 months   ki1148112-iLiNS-DOSE        MALAWI                         [25-30)_24 months   Control              Control                  1.0000000          1.0000000          1.0000000
24 months   ki1148112-iLiNS-DOSE        MALAWI                         [25-30)_24 months   LNS                  Control                  0.8679245          0.2763279          2.7260835
24 months   ki1148112-iLiNS-DOSE        MALAWI                         >=30_24 months      Control              Control                  1.0000000          1.0000000          1.0000000
24 months   ki1148112-iLiNS-DOSE        MALAWI                         >=30_24 months      LNS                  Control                  0.9356725          0.4905374          1.7847427
24 months   ki1148112-LCNI-5            MALAWI                         <25_24 months       Control              Control                  1.0000000          1.0000000          1.0000000
24 months   ki1148112-LCNI-5            MALAWI                         <25_24 months       LNS                  Control                  0.4470588          0.1131837          1.7658166
24 months   ki1148112-LCNI-5            MALAWI                         <25_24 months       Other                Control                  0.1900000          0.0230625          1.5653084
24 months   ki1148112-LCNI-5            MALAWI                         [25-30)_24 months   Control              Control                  1.0000000          1.0000000          1.0000000
24 months   ki1148112-LCNI-5            MALAWI                         [25-30)_24 months   LNS                  Control                  0.7692308          0.2270933          2.6056069
24 months   ki1148112-LCNI-5            MALAWI                         [25-30)_24 months   Other                Control                  1.0000000          0.2528310          3.9552105
24 months   ki1148112-LCNI-5            MALAWI                         >=30_24 months      Control              Control                  1.0000000          1.0000000          1.0000000
24 months   ki1148112-LCNI-5            MALAWI                         >=30_24 months      LNS                  Control                  0.9117647          0.2774782          2.9959642
24 months   ki1148112-LCNI-5            MALAWI                         >=30_24 months      Other                Control                  0.3875000          0.0461215          3.2556703
24 months   kiGH5241-JiVitA-3           BANGLADESH                     <25_24 months       Control              Control                  1.0000000          1.0000000          1.0000000
24 months   kiGH5241-JiVitA-3           BANGLADESH                     <25_24 months       Maternal             Control                  0.8269537          0.4023297          1.6997315


### Parameter: PAR


agecat      studyid                     country                        intXmage            intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------------------  -----------------------------  ------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000304b-SAS-CompFeed     INDIA                          <25_Birth           Control              NA                 0.0193062   -0.0334225    0.0720348
Birth       ki1126311-ZVITAMBO          ZIMBABWE                       <25_Birth           Control              NA                -0.0024583   -0.0092774    0.0043609
Birth       ki1126311-ZVITAMBO          ZIMBABWE                       [25-30)_Birth       Control              NA                -0.0018951   -0.0119088    0.0081186
Birth       ki1126311-ZVITAMBO          ZIMBABWE                       >=30_Birth          Control              NA                 0.0071595   -0.0049841    0.0193031
Birth       ki1135781-COHORTS           GUATEMALA                      <25_Birth           Control              NA                 0.0025717   -0.0104808    0.0156242
Birth       ki1135781-COHORTS           GUATEMALA                      >=30_Birth          Control              NA                 0.0025169   -0.0113370    0.0163708
Birth       kiGH5241-JiVitA-3           BANGLADESH                     <25_Birth           Control              NA                -0.0074185   -0.0129992   -0.0018379
Birth       kiGH5241-JiVitA-3           BANGLADESH                     [25-30)_Birth       Control              NA                -0.0080171   -0.0205138    0.0044795
Birth       kiGH5241-JiVitA-3           BANGLADESH                     >=30_Birth          Control              NA                -0.0156434   -0.0340687    0.0027818
6 months    iLiNS_DYADM_LNS             MALAWI                         <25_6 months        Control              NA                -0.0036630   -0.0238909    0.0165649
6 months    iLiNS_DYADM_LNS             MALAWI                         [25-30)_6 months    Control              NA                -0.0191030   -0.0535257    0.0153197
6 months    iLiNS_DYADM_LNS             MALAWI                         >=30_6 months       Control              NA                -0.0353218   -0.0685781   -0.0020655
6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     <25_6 months        Control              NA                 0.0071890   -0.0283347    0.0427128
6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     >=30_6 months       Control              NA                -0.1164418   -0.2341670    0.0012834
6 months    ki1000304-EU                INDIA                          <25_6 months        Control              NA                -0.0067034   -0.0508052    0.0373985
6 months    ki1000304-EU                INDIA                          [25-30)_6 months    Control              NA                -0.0054945   -0.0433986    0.0324096
6 months    ki1000304-EU                INDIA                          >=30_6 months       Control              NA                 0.0418668   -0.0322961    0.1160298
6 months    ki1000304-VITAMIN-A         INDIA                          <25_6 months        Control              NA                 0.0097363   -0.0056354    0.0251080
6 months    ki1000304-VITAMIN-A         INDIA                          [25-30)_6 months    Control              NA                -0.0060145   -0.0255892    0.0135603
6 months    ki1000304-VITAMIN-A         INDIA                          >=30_6 months       Control              NA                -0.0021661   -0.0384170    0.0340848
6 months    ki1000304-Vitamin-B12       INDIA                          <25_6 months        Control              NA                -0.0513834   -0.2447465    0.1419797
6 months    ki1000304b-SAS-CompFeed     INDIA                          <25_6 months        Control              NA                -0.0004941   -0.0282910    0.0273029
6 months    ki1000304b-SAS-CompFeed     INDIA                          [25-30)_6 months    Control              NA                -0.0292208   -0.0759957    0.0175541
6 months    ki1000304b-SAS-CompFeed     INDIA                          >=30_6 months       Control              NA                 0.0238748   -0.0603530    0.1081025
6 months    ki1000304b-SAS-FoodSuppl    INDIA                          <25_6 months        Control              NA                -0.0064103   -0.0883633    0.0755428
6 months    ki1000304b-SAS-FoodSuppl    INDIA                          [25-30)_6 months    Control              NA                -0.0810606   -0.2054743    0.0433531
6 months    ki1000304b-SAS-FoodSuppl    INDIA                          >=30_6 months       Control              NA                 0.0661041   -0.0710125    0.2032207
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   <25_6 months        Control              NA                -0.0050416   -0.0195068    0.0094236
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   [25-30)_6 months    Control              NA                -0.0218750   -0.0499907    0.0062407
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   >=30_6 months       Control              NA                -0.0045948   -0.0210206    0.0118310
6 months    ki1112895-Guatemala BSC     GUATEMALA                      <25_6 months        Control              NA                -0.0106414   -0.0588602    0.0375775
6 months    ki1112895-Guatemala BSC     GUATEMALA                      >=30_6 months       Control              NA                -0.0741627   -0.1974911    0.0491657
6 months    ki1119695-PROBIT            BELARUS                        <25_6 months        Control              NA                -0.0031371   -0.0089464    0.0026723
6 months    ki1119695-PROBIT            BELARUS                        [25-30)_6 months    Control              NA                -0.0036360   -0.0077365    0.0004646
6 months    ki1119695-PROBIT            BELARUS                        >=30_6 months       Control              NA                -0.0046642   -0.0141524    0.0048240
6 months    ki1126311-ZVITAMBO          ZIMBABWE                       <25_6 months        Control              NA                 0.0082699   -0.0014313    0.0179712
6 months    ki1126311-ZVITAMBO          ZIMBABWE                       [25-30)_6 months    Control              NA                 0.0071377   -0.0081182    0.0223936
6 months    ki1126311-ZVITAMBO          ZIMBABWE                       >=30_6 months       Control              NA                 0.0028020   -0.0146610    0.0202651
6 months    ki1135781-COHORTS           GUATEMALA                      <25_6 months        Control              NA                 0.0015158   -0.0300415    0.0330731
6 months    ki1135781-COHORTS           GUATEMALA                      [25-30)_6 months    Control              NA                -0.0570610   -0.1107649   -0.0033570
6 months    ki1135781-COHORTS           GUATEMALA                      >=30_6 months       Control              NA                -0.0393198   -0.0768405   -0.0017991
6 months    ki1148112-iLiNS-DOSE        MALAWI                         <25_6 months        Control              NA                -0.0050183   -0.0402291    0.0301926
6 months    ki1148112-iLiNS-DOSE        MALAWI                         [25-30)_6 months    Control              NA                -0.0215645   -0.0843496    0.0412205
6 months    ki1148112-iLiNS-DOSE        MALAWI                         >=30_6 months       Control              NA                -0.0128712   -0.0670533    0.0413110
6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         <25_6 months        Control              NA                -0.0001807   -0.0244938    0.0241324
6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         [25-30)_6 months    Control              NA                -0.0075988   -0.0528476    0.0376501
6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         >=30_6 months       Control              NA                -0.0442890   -0.0882981   -0.0002800
6 months    ki1148112-LCNI-5            MALAWI                         <25_6 months        Control              NA                -0.0074074   -0.0553729    0.0405581
6 months    ki1148112-LCNI-5            MALAWI                         [25-30)_6 months    Control              NA                 0.0195375   -0.0476671    0.0867420
6 months    ki1148112-LCNI-5            MALAWI                         >=30_6 months       Control              NA                 0.0454545   -0.0155923    0.1065014
6 months    kiGH5241-JiVitA-3           BANGLADESH                     <25_6 months        Control              NA                -0.0052971   -0.0096922   -0.0009019
6 months    kiGH5241-JiVitA-3           BANGLADESH                     [25-30)_6 months    Control              NA                -0.0064219   -0.0168514    0.0040076
6 months    kiGH5241-JiVitA-3           BANGLADESH                     >=30_6 months       Control              NA                -0.0019693   -0.0195916    0.0156530
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     <25_24 months       Control              NA                -0.0037538   -0.0490473    0.0415396
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     [25-30)_24 months   Control              NA                 0.0133385   -0.0471109    0.0737878
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     >=30_24 months      Control              NA                -0.0406250   -0.1362247    0.0549747
24 months   ki1000111-WASH-Kenya        KENYA                          <25_24 months       Control              NA                -0.0303508   -0.0570153   -0.0036863
24 months   ki1000111-WASH-Kenya        KENYA                          [25-30)_24 months   Control              NA                -0.0070794   -0.0352766    0.0211178
24 months   ki1000111-WASH-Kenya        KENYA                          >=30_24 months      Control              NA                -0.0154799   -0.0464764    0.0155166
24 months   ki1000304-EU                INDIA                          <25_24 months       Control              NA                -0.0098414   -0.0832541    0.0635712
24 months   ki1000304-EU                INDIA                          [25-30)_24 months   Control              NA                -0.0083612   -0.0872466    0.0705242
24 months   ki1000304-EU                INDIA                          >=30_24 months      Control              NA                 0.0571429   -0.1009547    0.2152404
24 months   ki1000304-Vitamin-B12       INDIA                          <25_24 months       Control              NA                 0.1115196   -0.0348541    0.2578933
24 months   ki1000304-Vitamin-B12       INDIA                          [25-30)_24 months   Control              NA                -0.0266667   -0.2084103    0.1550769
24 months   ki1000304-Vitamin-B12       INDIA                          >=30_24 months      Control              NA                 0.2058823    0.0679255    0.3438391
24 months   ki1119695-PROBIT            BELARUS                        <25_24 months       Control              NA                 0.0032694   -0.0211327    0.0276715
24 months   ki1119695-PROBIT            BELARUS                        [25-30)_24 months   Control              NA                -0.0005902   -0.0160876    0.0149073
24 months   ki1126311-ZVITAMBO          ZIMBABWE                       <25_24 months       Control              NA                 0.2681159   -0.0274709    0.5637028
24 months   ki1135781-COHORTS           GUATEMALA                      <25_24 months       Control              NA                -0.0232252   -0.1099012    0.0634509
24 months   ki1135781-COHORTS           GUATEMALA                      [25-30)_24 months   Control              NA                -0.0383459   -0.1466680    0.0699763
24 months   ki1135781-COHORTS           GUATEMALA                      >=30_24 months      Control              NA                -0.0601093   -0.1406730    0.0204545
24 months   ki1148112-iLiNS-DOSE        MALAWI                         <25_24 months       Control              NA                -0.0006366   -0.0891535    0.0878803
24 months   ki1148112-iLiNS-DOSE        MALAWI                         [25-30)_24 months   Control              NA                -0.0150502   -0.1431135    0.1130132
24 months   ki1148112-iLiNS-DOSE        MALAWI                         >=30_24 months      Control              NA                -0.0117299   -0.1279873    0.1045276
24 months   ki1148112-LCNI-5            MALAWI                         <25_24 months       Control              NA                -0.0618115   -0.1438522    0.0202292
24 months   ki1148112-LCNI-5            MALAWI                         [25-30)_24 months   Control              NA                -0.0185185   -0.1419287    0.1048916
24 months   ki1148112-LCNI-5            MALAWI                         >=30_24 months      Control              NA                -0.0211891   -0.1169740    0.0745958
24 months   kiGH5241-JiVitA-3           BANGLADESH                     <25_24 months       Control              NA                -0.0280108   -0.1338657    0.0778441


### Parameter: PAF


agecat      studyid                     country                        intXmage            intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------------------  -----------------------------  ------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000304b-SAS-CompFeed     INDIA                          <25_Birth           Control              NA                 0.2735043   -0.8644384    0.7169142
Birth       ki1126311-ZVITAMBO          ZIMBABWE                       <25_Birth           Control              NA                -0.0770512   -0.3132426    0.1166604
Birth       ki1126311-ZVITAMBO          ZIMBABWE                       [25-30)_Birth       Control              NA                -0.0627205   -0.4513584    0.2218497
Birth       ki1126311-ZVITAMBO          ZIMBABWE                       >=30_Birth          Control              NA                 0.2106157   -0.2368209    0.4961861
Birth       ki1135781-COHORTS           GUATEMALA                      <25_Birth           Control              NA                 0.1759036   -1.3969520    0.7166673
Birth       ki1135781-COHORTS           GUATEMALA                      >=30_Birth          Control              NA                 0.1641026   -1.4304948    0.7125176
Birth       kiGH5241-JiVitA-3           BANGLADESH                     <25_Birth           Control              NA                -0.0682829   -0.1210903   -0.0179629
Birth       kiGH5241-JiVitA-3           BANGLADESH                     [25-30)_Birth       Control              NA                -0.0936813   -0.2511287    0.0439523
Birth       kiGH5241-JiVitA-3           BANGLADESH                     >=30_Birth          Control              NA                -0.1529763   -0.3507773    0.0158597
6 months    iLiNS_DYADM_LNS             MALAWI                         <25_6 months        Control              NA                -0.0833333   -0.6543086    0.2905730
6 months    iLiNS_DYADM_LNS             MALAWI                         [25-30)_6 months    Control              NA                -0.3650794   -1.1527972    0.1344091
6 months    iLiNS_DYADM_LNS             MALAWI                         >=30_6 months       Control              NA                -0.6490385   -1.1878946   -0.2428971
6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     <25_6 months        Control              NA                 0.1484536   -1.0093143    0.6391151
6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     >=30_6 months       Control              NA                -2.0260869   -3.9942375   -0.8335536
6 months    ki1000304-EU                INDIA                          <25_6 months        Control              NA                -0.0487729   -0.4237683    0.2274553
6 months    ki1000304-EU                INDIA                          [25-30)_6 months    Control              NA                -0.1142857   -1.2498616    0.4481293
6 months    ki1000304-EU                INDIA                          >=30_6 months       Control              NA                 0.3935484   -0.7051089    0.7843049
6 months    ki1000304-VITAMIN-A         INDIA                          <25_6 months        Control              NA                 0.1033785   -0.0747294    0.2519698
6 months    ki1000304-VITAMIN-A         INDIA                          [25-30)_6 months    Control              NA                -0.0674088   -0.3105146    0.1305999
6 months    ki1000304-VITAMIN-A         INDIA                          >=30_6 months       Control              NA                -0.0161736   -0.3262895    0.2214304
6 months    ki1000304-Vitamin-B12       INDIA                          <25_6 months        Control              NA                -0.3939394   -2.9873401    0.5126909
6 months    ki1000304b-SAS-CompFeed     INDIA                          <25_6 months        Control              NA                -0.0067340   -0.4681100    0.3096476
6 months    ki1000304b-SAS-CompFeed     INDIA                          [25-30)_6 months    Control              NA                -0.2571429   -0.7440553    0.0938314
6 months    ki1000304b-SAS-CompFeed     INDIA                          >=30_6 months       Control              NA                 0.2178571   -1.3618682    0.7409900
6 months    ki1000304b-SAS-FoodSuppl    INDIA                          <25_6 months        Control              NA                -0.0666667   -1.3705934    0.5200452
6 months    ki1000304b-SAS-FoodSuppl    INDIA                          [25-30)_6 months    Control              NA                -0.4229249   -1.2357816    0.0944038
6 months    ki1000304b-SAS-FoodSuppl    INDIA                          >=30_6 months       Control              NA                 0.3730159   -1.1023243    0.8130121
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   <25_6 months        Control              NA                -0.6412903   -3.7812690    0.4365860
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   [25-30)_6 months    Control              NA                -0.9692308   -2.5173413   -0.1025003
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   >=30_6 months       Control              NA                -0.4447761   -3.2046407    0.5035538
6 months    ki1112895-Guatemala BSC     GUATEMALA                      <25_6 months        Control              NA                -0.1213115   -0.8246756    0.3109244
6 months    ki1112895-Guatemala BSC     GUATEMALA                      >=30_6 months       Control              NA                -0.5438596   -1.6872919    0.1130466
6 months    ki1119695-PROBIT            BELARUS                        <25_6 months        Control              NA                -0.1792012   -0.5289999    0.0905720
6 months    ki1119695-PROBIT            BELARUS                        [25-30)_6 months    Control              NA                -0.3362436   -0.7864349    0.0004971
6 months    ki1119695-PROBIT            BELARUS                        >=30_6 months       Control              NA                -0.2479640   -0.8343572    0.1509756
6 months    ki1126311-ZVITAMBO          ZIMBABWE                       <25_6 months        Control              NA                 0.1977468   -0.0691094    0.3979941
6 months    ki1126311-ZVITAMBO          ZIMBABWE                       [25-30)_6 months    Control              NA                 0.1554609   -0.2496700    0.4292523
6 months    ki1126311-ZVITAMBO          ZIMBABWE                       >=30_6 months       Control              NA                 0.0701478   -0.4874664    0.4187262
6 months    ki1135781-COHORTS           GUATEMALA                      <25_6 months        Control              NA                 0.0155367   -0.3673567    0.2912106
6 months    ki1135781-COHORTS           GUATEMALA                      [25-30)_6 months    Control              NA                -0.3718166   -0.7567795   -0.0712106
6 months    ki1135781-COHORTS           GUATEMALA                      >=30_6 months       Control              NA                -0.2534722   -0.5151710   -0.0369738
6 months    ki1148112-iLiNS-DOSE        MALAWI                         <25_6 months        Control              NA                -0.0792715   -0.8064663    0.3551903
6 months    ki1148112-iLiNS-DOSE        MALAWI                         [25-30)_6 months    Control              NA                -0.3570127   -1.9044669    0.3659822
6 months    ki1148112-iLiNS-DOSE        MALAWI                         >=30_6 months       Control              NA                -0.1775466   -1.2179912    0.3748325
6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         <25_6 months        Control              NA                -0.0038095   -0.6725932    0.3975621
6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         [25-30)_6 months    Control              NA                -0.1190476   -1.1052670    0.4051740
6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         >=30_6 months       Control              NA                -0.9743590   -1.9733098   -0.3110283
6 months    ki1148112-LCNI-5            MALAWI                         <25_6 months        Control              NA                -0.1111111   -1.1206562    0.4178369
6 months    ki1148112-LCNI-5            MALAWI                         [25-30)_6 months    Control              NA                 0.2227273   -1.0654367    0.7074939
6 months    ki1148112-LCNI-5            MALAWI                         >=30_6 months       Control              NA                 0.5000000   -0.7911806    0.8604272
6 months    kiGH5241-JiVitA-3           BANGLADESH                     <25_6 months        Control              NA                -0.0839766   -0.1559265   -0.0165052
6 months    kiGH5241-JiVitA-3           BANGLADESH                     [25-30)_6 months    Control              NA                -0.1278939   -0.3556938    0.0616283
6 months    kiGH5241-JiVitA-3           BANGLADESH                     >=30_6 months       Control              NA                -0.0342657   -0.3882131    0.2294371
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     <25_24 months       Control              NA                -0.0294428   -0.4536494    0.2709711
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     [25-30)_24 months   Control              NA                 0.1329923   -0.7351037    0.5667681
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     >=30_24 months      Control              NA                -0.3714286   -1.5777148    0.2703552
24 months   ki1000111-WASH-Kenya        KENYA                          <25_24 months       Control              NA                -0.3297669   -0.6467270   -0.0738149
24 months   ki1000111-WASH-Kenya        KENYA                          [25-30)_24 months   Control              NA                -0.1040507   -0.6056558    0.2408536
24 months   ki1000111-WASH-Kenya        KENYA                          >=30_24 months      Control              NA                -0.2127660   -0.7185734    0.1441732
24 months   ki1000304-EU                INDIA                          <25_24 months       Control              NA                -0.0508475   -0.5073201    0.2673883
24 months   ki1000304-EU                INDIA                          [25-30)_24 months   Control              NA                -0.0320513   -0.3833357    0.2300279
24 months   ki1000304-EU                INDIA                          >=30_24 months      Control              NA                 0.2857143   -1.1148964    0.7587569
24 months   ki1000304-Vitamin-B12       INDIA                          <25_24 months       Control              NA                 0.4866310   -0.6593396    0.8411731
24 months   ki1000304-Vitamin-B12       INDIA                          [25-30)_24 months   Control              NA                -0.1904762   -2.5301758    0.5985374
24 months   ki1000304-Vitamin-B12       INDIA                          >=30_24 months      Control              NA                 1.0000000    0.9999999    1.0000000
24 months   ki1119695-PROBIT            BELARUS                        <25_24 months       Control              NA                 0.1319648   -1.7327130    0.7242721
24 months   ki1119695-PROBIT            BELARUS                        [25-30)_24 months   Control              NA                -0.0245902   -0.9166590    0.4522839
24 months   ki1126311-ZVITAMBO          ZIMBABWE                       <25_24 months       Control              NA                 0.6166667   -1.1072263    0.9302664
24 months   ki1135781-COHORTS           GUATEMALA                      <25_24 months       Control              NA                -0.0502634   -0.2558421    0.1216625
24 months   ki1135781-COHORTS           GUATEMALA                      [25-30)_24 months   Control              NA                -0.0745614   -0.3083229    0.1174333
24 months   ki1135781-COHORTS           GUATEMALA                      >=30_24 months      Control              NA                -0.1803279   -0.4495542    0.0388949
24 months   ki1148112-iLiNS-DOSE        MALAWI                         <25_24 months       Control              NA                -0.0033535   -0.5968953    0.3695778
24 months   ki1148112-iLiNS-DOSE        MALAWI                         [25-30)_24 months   Control              NA                -0.1304348   -2.0151303    0.5761766
24 months   ki1148112-iLiNS-DOSE        MALAWI                         >=30_24 months      Control              NA                -0.0550000   -0.7685580    0.3706596
24 months   ki1148112-LCNI-5            MALAWI                         <25_24 months       Control              NA                -0.8859649   -2.3364672   -0.0660568
24 months   ki1148112-LCNI-5            MALAWI                         [25-30)_24 months   Control              NA                -0.1250000   -1.3557084    0.4627412
24 months   ki1148112-LCNI-5            MALAWI                         >=30_24 months      Control              NA                -0.1964809   -1.5033865    0.4281480
24 months   kiGH5241-JiVitA-3           BANGLADESH                     <25_24 months       Control              NA                -0.0988160   -0.5464420    0.2192422
