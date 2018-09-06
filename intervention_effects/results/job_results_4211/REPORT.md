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
* intXhhwealth_quart

## Data Summary

agecat        studyid                     country                        intXhhwealth_quart       ever_stunted   n_cell       n
------------  --------------------------  -----------------------------  ----------------------  -------------  -------  ------
0-6 months    iLiNS_DYADM_LNS             MALAWI                         Wealth Q4_0-6 months                0        4       4
0-6 months    iLiNS_DYADM_LNS             MALAWI                         Wealth Q4_0-6 months                1        0       4
0-6 months    iLiNS_DYADM_LNS             MALAWI                         Wealth Q1_0-6 months                0        8      10
0-6 months    iLiNS_DYADM_LNS             MALAWI                         Wealth Q1_0-6 months                1        2      10
0-6 months    iLiNS_DYADM_LNS             MALAWI                         Wealth Q2_0-6 months                0        6       9
0-6 months    iLiNS_DYADM_LNS             MALAWI                         Wealth Q2_0-6 months                1        3       9
0-6 months    iLiNS_DYADM_LNS             MALAWI                         Wealth Q3_0-6 months                0        8      11
0-6 months    iLiNS_DYADM_LNS             MALAWI                         Wealth Q3_0-6 months                1        3      11
0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Wealth Q4_0-6 months                0       44      47
0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Wealth Q4_0-6 months                1        3      47
0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Wealth Q1_0-6 months                0       63      74
0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Wealth Q1_0-6 months                1       11      74
0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Wealth Q2_0-6 months                0       43      51
0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Wealth Q2_0-6 months                1        8      51
0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Wealth Q3_0-6 months                0       59      60
0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Wealth Q3_0-6 months                1        1      60
0-6 months    ki1000111-WASH-Kenya        KENYA                          Wealth Q4_0-6 months                0       15      16
0-6 months    ki1000111-WASH-Kenya        KENYA                          Wealth Q4_0-6 months                1        1      16
0-6 months    ki1000111-WASH-Kenya        KENYA                          Wealth Q1_0-6 months                0       22      24
0-6 months    ki1000111-WASH-Kenya        KENYA                          Wealth Q1_0-6 months                1        2      24
0-6 months    ki1000111-WASH-Kenya        KENYA                          Wealth Q2_0-6 months                0       17      19
0-6 months    ki1000111-WASH-Kenya        KENYA                          Wealth Q2_0-6 months                1        2      19
0-6 months    ki1000111-WASH-Kenya        KENYA                          Wealth Q3_0-6 months                0       31      33
0-6 months    ki1000111-WASH-Kenya        KENYA                          Wealth Q3_0-6 months                1        2      33
0-6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Wealth Q4_0-6 months                0       21      24
0-6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Wealth Q4_0-6 months                1        3      24
0-6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Wealth Q1_0-6 months                0       11      16
0-6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Wealth Q1_0-6 months                1        5      16
0-6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Wealth Q2_0-6 months                0       27      35
0-6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Wealth Q2_0-6 months                1        8      35
0-6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Wealth Q3_0-6 months                0       17      22
0-6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Wealth Q3_0-6 months                1        5      22
0-6 months    ki1017093b-PROVIDE          BANGLADESH                     Wealth Q4_0-6 months                0      148     167
0-6 months    ki1017093b-PROVIDE          BANGLADESH                     Wealth Q4_0-6 months                1       19     167
0-6 months    ki1017093b-PROVIDE          BANGLADESH                     Wealth Q1_0-6 months                0      121     156
0-6 months    ki1017093b-PROVIDE          BANGLADESH                     Wealth Q1_0-6 months                1       35     156
0-6 months    ki1017093b-PROVIDE          BANGLADESH                     Wealth Q2_0-6 months                0      138     155
0-6 months    ki1017093b-PROVIDE          BANGLADESH                     Wealth Q2_0-6 months                1       17     155
0-6 months    ki1017093b-PROVIDE          BANGLADESH                     Wealth Q3_0-6 months                0      142     160
0-6 months    ki1017093b-PROVIDE          BANGLADESH                     Wealth Q3_0-6 months                1       18     160
0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Wealth Q4_0-6 months                0      499     551
0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Wealth Q4_0-6 months                1       52     551
0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Wealth Q1_0-6 months                0      634     672
0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Wealth Q1_0-6 months                1       38     672
0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Wealth Q2_0-6 months                0      408     445
0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Wealth Q2_0-6 months                1       37     445
0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Wealth Q3_0-6 months                0      527     557
0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Wealth Q3_0-6 months                1       30     557
0-6 months    ki1135781-COHORTS           GUATEMALA                      Wealth Q4_0-6 months                0       74     100
0-6 months    ki1135781-COHORTS           GUATEMALA                      Wealth Q4_0-6 months                1       26     100
0-6 months    ki1135781-COHORTS           GUATEMALA                      Wealth Q1_0-6 months                0       40      64
0-6 months    ki1135781-COHORTS           GUATEMALA                      Wealth Q1_0-6 months                1       24      64
0-6 months    ki1135781-COHORTS           GUATEMALA                      Wealth Q2_0-6 months                0       37      56
0-6 months    ki1135781-COHORTS           GUATEMALA                      Wealth Q2_0-6 months                1       19      56
0-6 months    ki1135781-COHORTS           GUATEMALA                      Wealth Q3_0-6 months                0       46      67
0-6 months    ki1135781-COHORTS           GUATEMALA                      Wealth Q3_0-6 months                1       21      67
0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         Wealth Q4_0-6 months                0      160     229
0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         Wealth Q4_0-6 months                1       69     229
0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         Wealth Q1_0-6 months                0      150     203
0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         Wealth Q1_0-6 months                1       53     203
0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         Wealth Q2_0-6 months                0      157     232
0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         Wealth Q2_0-6 months                1       75     232
0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         Wealth Q3_0-6 months                0      168     232
0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         Wealth Q3_0-6 months                1       64     232
0-6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Wealth Q4_0-6 months                0        7       7
0-6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Wealth Q4_0-6 months                1        0       7
0-6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Wealth Q1_0-6 months                0       14      20
0-6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Wealth Q1_0-6 months                1        6      20
0-6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Wealth Q2_0-6 months                0        9      13
0-6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Wealth Q2_0-6 months                1        4      13
0-6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Wealth Q3_0-6 months                0       10      14
0-6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Wealth Q3_0-6 months                1        4      14
0-6 months    ki1148112-LCNI-5            MALAWI                         Wealth Q4_0-6 months                0       50      73
0-6 months    ki1148112-LCNI-5            MALAWI                         Wealth Q4_0-6 months                1       23      73
0-6 months    ki1148112-LCNI-5            MALAWI                         Wealth Q1_0-6 months                0       45      68
0-6 months    ki1148112-LCNI-5            MALAWI                         Wealth Q1_0-6 months                1       23      68
0-6 months    ki1148112-LCNI-5            MALAWI                         Wealth Q2_0-6 months                0       39      64
0-6 months    ki1148112-LCNI-5            MALAWI                         Wealth Q2_0-6 months                1       25      64
0-6 months    ki1148112-LCNI-5            MALAWI                         Wealth Q3_0-6 months                0       40      64
0-6 months    ki1148112-LCNI-5            MALAWI                         Wealth Q3_0-6 months                1       24      64
0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Wealth Q4_0-6 months                0     8246   10158
0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Wealth Q4_0-6 months                1     1912   10158
0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Wealth Q1_0-6 months                0     6414    9370
0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Wealth Q1_0-6 months                1     2956    9370
0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Wealth Q2_0-6 months                0     7018    9722
0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Wealth Q2_0-6 months                1     2704    9722
0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Wealth Q3_0-6 months                0     7110    9442
0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Wealth Q3_0-6 months                1     2332    9442
0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     Wealth Q4_0-6 months                0     1690    2126
0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     Wealth Q4_0-6 months                1      436    2126
0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     Wealth Q1_0-6 months                0     1588    2284
0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     Wealth Q1_0-6 months                1      696    2284
0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     Wealth Q2_0-6 months                0     1700    2288
0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     Wealth Q2_0-6 months                1      588    2288
0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     Wealth Q3_0-6 months                0     1842    2416
0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     Wealth Q3_0-6 months                1      574    2416
6-24 months   iLiNS_DYADM_LNS             MALAWI                         Wealth Q4_6-24 months               0       43      53
6-24 months   iLiNS_DYADM_LNS             MALAWI                         Wealth Q4_6-24 months               1       10      53
6-24 months   iLiNS_DYADM_LNS             MALAWI                         Wealth Q1_6-24 months               0       63      76
6-24 months   iLiNS_DYADM_LNS             MALAWI                         Wealth Q1_6-24 months               1       13      76
6-24 months   iLiNS_DYADM_LNS             MALAWI                         Wealth Q2_6-24 months               0       67      88
6-24 months   iLiNS_DYADM_LNS             MALAWI                         Wealth Q2_6-24 months               1       21      88
6-24 months   iLiNS_DYADM_LNS             MALAWI                         Wealth Q3_6-24 months               0       71      92
6-24 months   iLiNS_DYADM_LNS             MALAWI                         Wealth Q3_6-24 months               1       21      92
6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Wealth Q4_6-24 months               0      887    1137
6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Wealth Q4_6-24 months               1      250    1137
6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Wealth Q1_6-24 months               0      624    1238
6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Wealth Q1_6-24 months               1      614    1238
6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Wealth Q2_6-24 months               0      646    1147
6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Wealth Q2_6-24 months               1      501    1147
6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Wealth Q3_6-24 months               0      804    1261
6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Wealth Q3_6-24 months               1      457    1261
6-24 months   ki1000111-WASH-Kenya        KENYA                          Wealth Q4_6-24 months               0     1279    1621
6-24 months   ki1000111-WASH-Kenya        KENYA                          Wealth Q4_6-24 months               1      342    1621
6-24 months   ki1000111-WASH-Kenya        KENYA                          Wealth Q1_6-24 months               0     1174    1688
6-24 months   ki1000111-WASH-Kenya        KENYA                          Wealth Q1_6-24 months               1      514    1688
6-24 months   ki1000111-WASH-Kenya        KENYA                          Wealth Q2_6-24 months               0     1227    1676
6-24 months   ki1000111-WASH-Kenya        KENYA                          Wealth Q2_6-24 months               1      449    1676
6-24 months   ki1000111-WASH-Kenya        KENYA                          Wealth Q3_6-24 months               0     1255    1637
6-24 months   ki1000111-WASH-Kenya        KENYA                          Wealth Q3_6-24 months               1      382    1637
6-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Wealth Q4_6-24 months               0       70     137
6-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Wealth Q4_6-24 months               1       67     137
6-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Wealth Q1_6-24 months               0       43     154
6-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Wealth Q1_6-24 months               1      111     154
6-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Wealth Q2_6-24 months               0       52     120
6-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Wealth Q2_6-24 months               1       68     120
6-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Wealth Q3_6-24 months               0       51     137
6-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Wealth Q3_6-24 months               1       86     137
6-24 months   ki1017093b-PROVIDE          BANGLADESH                     Wealth Q4_6-24 months               0      104     110
6-24 months   ki1017093b-PROVIDE          BANGLADESH                     Wealth Q4_6-24 months               1        6     110
6-24 months   ki1017093b-PROVIDE          BANGLADESH                     Wealth Q1_6-24 months               0       46      61
6-24 months   ki1017093b-PROVIDE          BANGLADESH                     Wealth Q1_6-24 months               1       15      61
6-24 months   ki1017093b-PROVIDE          BANGLADESH                     Wealth Q2_6-24 months               0       72      79
6-24 months   ki1017093b-PROVIDE          BANGLADESH                     Wealth Q2_6-24 months               1        7      79
6-24 months   ki1017093b-PROVIDE          BANGLADESH                     Wealth Q3_6-24 months               0       82      91
6-24 months   ki1017093b-PROVIDE          BANGLADESH                     Wealth Q3_6-24 months               1        9      91
6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Wealth Q4_6-24 months               0      330     422
6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Wealth Q4_6-24 months               1       92     422
6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Wealth Q1_6-24 months               0      475     549
6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Wealth Q1_6-24 months               1       74     549
6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Wealth Q2_6-24 months               0      293     362
6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Wealth Q2_6-24 months               1       69     362
6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Wealth Q3_6-24 months               0      372     466
6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Wealth Q3_6-24 months               1       94     466
6-24 months   ki1135781-COHORTS           GUATEMALA                      Wealth Q4_6-24 months               0       78     188
6-24 months   ki1135781-COHORTS           GUATEMALA                      Wealth Q4_6-24 months               1      110     188
6-24 months   ki1135781-COHORTS           GUATEMALA                      Wealth Q1_6-24 months               0       25      81
6-24 months   ki1135781-COHORTS           GUATEMALA                      Wealth Q1_6-24 months               1       56      81
6-24 months   ki1135781-COHORTS           GUATEMALA                      Wealth Q2_6-24 months               0       29      91
6-24 months   ki1135781-COHORTS           GUATEMALA                      Wealth Q2_6-24 months               1       62      91
6-24 months   ki1135781-COHORTS           GUATEMALA                      Wealth Q3_6-24 months               0       34      79
6-24 months   ki1135781-COHORTS           GUATEMALA                      Wealth Q3_6-24 months               1       45      79
6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Wealth Q4_6-24 months               0      187     277
6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Wealth Q4_6-24 months               1       90     277
6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Wealth Q1_6-24 months               0      156     278
6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Wealth Q1_6-24 months               1      122     278
6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Wealth Q2_6-24 months               0      154     275
6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Wealth Q2_6-24 months               1      121     275
6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Wealth Q3_6-24 months               0      146     281
6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Wealth Q3_6-24 months               1      135     281
6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Wealth Q4_6-24 months               0       59      73
6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Wealth Q4_6-24 months               1       14      73
6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Wealth Q1_6-24 months               0       96     127
6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Wealth Q1_6-24 months               1       31     127
6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Wealth Q2_6-24 months               0       95     124
6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Wealth Q2_6-24 months               1       29     124
6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Wealth Q3_6-24 months               0      117     151
6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Wealth Q3_6-24 months               1       34     151
6-24 months   ki1148112-LCNI-5            MALAWI                         Wealth Q4_6-24 months               0       95     193
6-24 months   ki1148112-LCNI-5            MALAWI                         Wealth Q4_6-24 months               1       98     193
6-24 months   ki1148112-LCNI-5            MALAWI                         Wealth Q1_6-24 months               0       82     173
6-24 months   ki1148112-LCNI-5            MALAWI                         Wealth Q1_6-24 months               1       91     173
6-24 months   ki1148112-LCNI-5            MALAWI                         Wealth Q2_6-24 months               0       82     171
6-24 months   ki1148112-LCNI-5            MALAWI                         Wealth Q2_6-24 months               1       89     171
6-24 months   ki1148112-LCNI-5            MALAWI                         Wealth Q3_6-24 months               0       78     173
6-24 months   ki1148112-LCNI-5            MALAWI                         Wealth Q3_6-24 months               1       95     173
6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Wealth Q4_6-24 months               0     5232    6056
6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Wealth Q4_6-24 months               1      824    6056
6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Wealth Q1_6-24 months               0     2567    3255
6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Wealth Q1_6-24 months               1      688    3255
6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Wealth Q2_6-24 months               0     3217    4017
6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Wealth Q2_6-24 months               1      800    4017
6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Wealth Q3_6-24 months               0     3688    4455
6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Wealth Q3_6-24 months               1      767    4455
6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Wealth Q4_6-24 months               0     1311    1712
6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Wealth Q4_6-24 months               1      401    1712
6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Wealth Q1_6-24 months               0     1016    1520
6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Wealth Q1_6-24 months               1      504    1520
6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Wealth Q2_6-24 months               0     1099    1542
6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Wealth Q2_6-24 months               1      443    1542
6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Wealth Q3_6-24 months               0     1275    1694
6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Wealth Q3_6-24 months               1      419    1694


The following strata were considered:

* agecat: 0-6 months, studyid: iLiNS_DYADM_LNS, country: MALAWI, intXhhwealth_quart: Wealth Q1_0-6 months
* agecat: 0-6 months, studyid: iLiNS_DYADM_LNS, country: MALAWI, intXhhwealth_quart: Wealth Q2_0-6 months
* agecat: 0-6 months, studyid: iLiNS_DYADM_LNS, country: MALAWI, intXhhwealth_quart: Wealth Q3_0-6 months
* agecat: 0-6 months, studyid: iLiNS_DYADM_LNS, country: MALAWI, intXhhwealth_quart: Wealth Q4_0-6 months
* agecat: 0-6 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH, intXhhwealth_quart: Wealth Q1_0-6 months
* agecat: 0-6 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH, intXhhwealth_quart: Wealth Q2_0-6 months
* agecat: 0-6 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH, intXhhwealth_quart: Wealth Q3_0-6 months
* agecat: 0-6 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH, intXhhwealth_quart: Wealth Q4_0-6 months
* agecat: 0-6 months, studyid: ki1000111-WASH-Kenya, country: KENYA, intXhhwealth_quart: Wealth Q1_0-6 months
* agecat: 0-6 months, studyid: ki1000111-WASH-Kenya, country: KENYA, intXhhwealth_quart: Wealth Q2_0-6 months
* agecat: 0-6 months, studyid: ki1000111-WASH-Kenya, country: KENYA, intXhhwealth_quart: Wealth Q3_0-6 months
* agecat: 0-6 months, studyid: ki1000111-WASH-Kenya, country: KENYA, intXhhwealth_quart: Wealth Q4_0-6 months
* agecat: 0-6 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN, intXhhwealth_quart: Wealth Q1_0-6 months
* agecat: 0-6 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN, intXhhwealth_quart: Wealth Q2_0-6 months
* agecat: 0-6 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN, intXhhwealth_quart: Wealth Q3_0-6 months
* agecat: 0-6 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN, intXhhwealth_quart: Wealth Q4_0-6 months
* agecat: 0-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH, intXhhwealth_quart: Wealth Q1_0-6 months
* agecat: 0-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH, intXhhwealth_quart: Wealth Q2_0-6 months
* agecat: 0-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH, intXhhwealth_quart: Wealth Q3_0-6 months
* agecat: 0-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH, intXhhwealth_quart: Wealth Q4_0-6 months
* agecat: 0-6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF, intXhhwealth_quart: Wealth Q1_0-6 months
* agecat: 0-6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF, intXhhwealth_quart: Wealth Q2_0-6 months
* agecat: 0-6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF, intXhhwealth_quart: Wealth Q3_0-6 months
* agecat: 0-6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF, intXhhwealth_quart: Wealth Q4_0-6 months
* agecat: 0-6 months, studyid: ki1135781-COHORTS, country: GUATEMALA, intXhhwealth_quart: Wealth Q1_0-6 months
* agecat: 0-6 months, studyid: ki1135781-COHORTS, country: GUATEMALA, intXhhwealth_quart: Wealth Q2_0-6 months
* agecat: 0-6 months, studyid: ki1135781-COHORTS, country: GUATEMALA, intXhhwealth_quart: Wealth Q3_0-6 months
* agecat: 0-6 months, studyid: ki1135781-COHORTS, country: GUATEMALA, intXhhwealth_quart: Wealth Q4_0-6 months
* agecat: 0-6 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI, intXhhwealth_quart: Wealth Q1_0-6 months
* agecat: 0-6 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI, intXhhwealth_quart: Wealth Q2_0-6 months
* agecat: 0-6 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI, intXhhwealth_quart: Wealth Q3_0-6 months
* agecat: 0-6 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI, intXhhwealth_quart: Wealth Q4_0-6 months
* agecat: 0-6 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI, intXhhwealth_quart: Wealth Q1_0-6 months
* agecat: 0-6 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI, intXhhwealth_quart: Wealth Q2_0-6 months
* agecat: 0-6 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI, intXhhwealth_quart: Wealth Q3_0-6 months
* agecat: 0-6 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI, intXhhwealth_quart: Wealth Q4_0-6 months
* agecat: 0-6 months, studyid: ki1148112-LCNI-5, country: MALAWI, intXhhwealth_quart: Wealth Q1_0-6 months
* agecat: 0-6 months, studyid: ki1148112-LCNI-5, country: MALAWI, intXhhwealth_quart: Wealth Q2_0-6 months
* agecat: 0-6 months, studyid: ki1148112-LCNI-5, country: MALAWI, intXhhwealth_quart: Wealth Q3_0-6 months
* agecat: 0-6 months, studyid: ki1148112-LCNI-5, country: MALAWI, intXhhwealth_quart: Wealth Q4_0-6 months
* agecat: 0-6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH, intXhhwealth_quart: Wealth Q1_0-6 months
* agecat: 0-6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH, intXhhwealth_quart: Wealth Q2_0-6 months
* agecat: 0-6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH, intXhhwealth_quart: Wealth Q3_0-6 months
* agecat: 0-6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH, intXhhwealth_quart: Wealth Q4_0-6 months
* agecat: 0-6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH, intXhhwealth_quart: Wealth Q1_0-6 months
* agecat: 0-6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH, intXhhwealth_quart: Wealth Q2_0-6 months
* agecat: 0-6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH, intXhhwealth_quart: Wealth Q3_0-6 months
* agecat: 0-6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH, intXhhwealth_quart: Wealth Q4_0-6 months
* agecat: 6-24 months, studyid: iLiNS_DYADM_LNS, country: MALAWI, intXhhwealth_quart: Wealth Q1_6-24 months
* agecat: 6-24 months, studyid: iLiNS_DYADM_LNS, country: MALAWI, intXhhwealth_quart: Wealth Q2_6-24 months
* agecat: 6-24 months, studyid: iLiNS_DYADM_LNS, country: MALAWI, intXhhwealth_quart: Wealth Q3_6-24 months
* agecat: 6-24 months, studyid: iLiNS_DYADM_LNS, country: MALAWI, intXhhwealth_quart: Wealth Q4_6-24 months
* agecat: 6-24 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH, intXhhwealth_quart: Wealth Q1_6-24 months
* agecat: 6-24 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH, intXhhwealth_quart: Wealth Q2_6-24 months
* agecat: 6-24 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH, intXhhwealth_quart: Wealth Q3_6-24 months
* agecat: 6-24 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH, intXhhwealth_quart: Wealth Q4_6-24 months
* agecat: 6-24 months, studyid: ki1000111-WASH-Kenya, country: KENYA, intXhhwealth_quart: Wealth Q1_6-24 months
* agecat: 6-24 months, studyid: ki1000111-WASH-Kenya, country: KENYA, intXhhwealth_quart: Wealth Q2_6-24 months
* agecat: 6-24 months, studyid: ki1000111-WASH-Kenya, country: KENYA, intXhhwealth_quart: Wealth Q3_6-24 months
* agecat: 6-24 months, studyid: ki1000111-WASH-Kenya, country: KENYA, intXhhwealth_quart: Wealth Q4_6-24 months
* agecat: 6-24 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN, intXhhwealth_quart: Wealth Q1_6-24 months
* agecat: 6-24 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN, intXhhwealth_quart: Wealth Q2_6-24 months
* agecat: 6-24 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN, intXhhwealth_quart: Wealth Q3_6-24 months
* agecat: 6-24 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN, intXhhwealth_quart: Wealth Q4_6-24 months
* agecat: 6-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH, intXhhwealth_quart: Wealth Q1_6-24 months
* agecat: 6-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH, intXhhwealth_quart: Wealth Q2_6-24 months
* agecat: 6-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH, intXhhwealth_quart: Wealth Q3_6-24 months
* agecat: 6-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH, intXhhwealth_quart: Wealth Q4_6-24 months
* agecat: 6-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF, intXhhwealth_quart: Wealth Q1_6-24 months
* agecat: 6-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF, intXhhwealth_quart: Wealth Q2_6-24 months
* agecat: 6-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF, intXhhwealth_quart: Wealth Q3_6-24 months
* agecat: 6-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF, intXhhwealth_quart: Wealth Q4_6-24 months
* agecat: 6-24 months, studyid: ki1135781-COHORTS, country: GUATEMALA, intXhhwealth_quart: Wealth Q1_6-24 months
* agecat: 6-24 months, studyid: ki1135781-COHORTS, country: GUATEMALA, intXhhwealth_quart: Wealth Q2_6-24 months
* agecat: 6-24 months, studyid: ki1135781-COHORTS, country: GUATEMALA, intXhhwealth_quart: Wealth Q3_6-24 months
* agecat: 6-24 months, studyid: ki1135781-COHORTS, country: GUATEMALA, intXhhwealth_quart: Wealth Q4_6-24 months
* agecat: 6-24 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI, intXhhwealth_quart: Wealth Q1_6-24 months
* agecat: 6-24 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI, intXhhwealth_quart: Wealth Q2_6-24 months
* agecat: 6-24 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI, intXhhwealth_quart: Wealth Q3_6-24 months
* agecat: 6-24 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI, intXhhwealth_quart: Wealth Q4_6-24 months
* agecat: 6-24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI, intXhhwealth_quart: Wealth Q1_6-24 months
* agecat: 6-24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI, intXhhwealth_quart: Wealth Q2_6-24 months
* agecat: 6-24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI, intXhhwealth_quart: Wealth Q3_6-24 months
* agecat: 6-24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI, intXhhwealth_quart: Wealth Q4_6-24 months
* agecat: 6-24 months, studyid: ki1148112-LCNI-5, country: MALAWI, intXhhwealth_quart: Wealth Q1_6-24 months
* agecat: 6-24 months, studyid: ki1148112-LCNI-5, country: MALAWI, intXhhwealth_quart: Wealth Q2_6-24 months
* agecat: 6-24 months, studyid: ki1148112-LCNI-5, country: MALAWI, intXhhwealth_quart: Wealth Q3_6-24 months
* agecat: 6-24 months, studyid: ki1148112-LCNI-5, country: MALAWI, intXhhwealth_quart: Wealth Q4_6-24 months
* agecat: 6-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH, intXhhwealth_quart: Wealth Q1_6-24 months
* agecat: 6-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH, intXhhwealth_quart: Wealth Q2_6-24 months
* agecat: 6-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH, intXhhwealth_quart: Wealth Q3_6-24 months
* agecat: 6-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH, intXhhwealth_quart: Wealth Q4_6-24 months
* agecat: 6-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH, intXhhwealth_quart: Wealth Q1_6-24 months
* agecat: 6-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH, intXhhwealth_quart: Wealth Q2_6-24 months
* agecat: 6-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH, intXhhwealth_quart: Wealth Q3_6-24 months
* agecat: 6-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH, intXhhwealth_quart: Wealth Q4_6-24 months

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-6 months, studyid: iLiNS_DYADM_LNS, country: MALAWI, intXhhwealth_quart: Wealth Q4_0-6 months
* agecat: 0-6 months, studyid: iLiNS_DYADM_LNS, country: MALAWI, intXhhwealth_quart: Wealth Q1_0-6 months
* agecat: 0-6 months, studyid: iLiNS_DYADM_LNS, country: MALAWI, intXhhwealth_quart: Wealth Q2_0-6 months
* agecat: 0-6 months, studyid: iLiNS_DYADM_LNS, country: MALAWI, intXhhwealth_quart: Wealth Q3_0-6 months
* agecat: 0-6 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH, intXhhwealth_quart: Wealth Q4_0-6 months
* agecat: 0-6 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH, intXhhwealth_quart: Wealth Q3_0-6 months
* agecat: 0-6 months, studyid: ki1000111-WASH-Kenya, country: KENYA, intXhhwealth_quart: Wealth Q4_0-6 months
* agecat: 0-6 months, studyid: ki1000111-WASH-Kenya, country: KENYA, intXhhwealth_quart: Wealth Q1_0-6 months
* agecat: 0-6 months, studyid: ki1000111-WASH-Kenya, country: KENYA, intXhhwealth_quart: Wealth Q2_0-6 months
* agecat: 0-6 months, studyid: ki1000111-WASH-Kenya, country: KENYA, intXhhwealth_quart: Wealth Q3_0-6 months
* agecat: 0-6 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN, intXhhwealth_quart: Wealth Q4_0-6 months
* agecat: 0-6 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI, intXhhwealth_quart: Wealth Q4_0-6 months
* agecat: 0-6 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI, intXhhwealth_quart: Wealth Q2_0-6 months
* agecat: 0-6 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI, intXhhwealth_quart: Wealth Q3_0-6 months

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/9d0fc07f-62f5-495b-8968-15344767dd10/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/9d0fc07f-62f5-495b-8968-15344767dd10/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/9d0fc07f-62f5-495b-8968-15344767dd10/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/9d0fc07f-62f5-495b-8968-15344767dd10/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                     country                        intXhhwealth_quart      intervention_level   baseline_level     estimate     ci_lower    ci_upper
------------  --------------------------  -----------------------------  ----------------------  -------------------  ---------------  ----------  -----------  ----------
0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Wealth Q1_0-6 months    Control              NA                0.2142857   -0.0021194   0.4306908
0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Wealth Q1_0-6 months    LNS                  NA                0.1250000   -0.0082159   0.2582159
0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Wealth Q1_0-6 months    Other                NA                0.1388889    0.0251485   0.2526293
0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Wealth Q2_0-6 months    Control              NA                0.2222222   -0.0520921   0.4965365
0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Wealth Q2_0-6 months    LNS                  NA                0.2500000    0.0025667   0.4974333
0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Wealth Q2_0-6 months    Other                NA                0.1000000   -0.0084198   0.2084199
0-6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Wealth Q1_0-6 months    Control              NA                0.2500000   -0.0598975   0.5598975
0-6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Wealth Q1_0-6 months    Maternal             NA                0.3750000    0.0285240   0.7214760
0-6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Wealth Q2_0-6 months    Control              NA                0.3684211    0.1483556   0.5884865
0-6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Wealth Q2_0-6 months    Maternal             NA                0.0625000   -0.0578395   0.1828395
0-6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Wealth Q3_0-6 months    Control              NA                0.2222222   -0.0557811   0.5002256
0-6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Wealth Q3_0-6 months    Maternal             NA                0.2307692   -0.0036512   0.4651896
0-6 months    ki1017093b-PROVIDE          BANGLADESH                     Wealth Q4_0-6 months    Control              NA                0.1276596    0.0319681   0.2233510
0-6 months    ki1017093b-PROVIDE          BANGLADESH                     Wealth Q4_0-6 months    Other                NA                0.1083333    0.0525578   0.1641089
0-6 months    ki1017093b-PROVIDE          BANGLADESH                     Wealth Q1_0-6 months    Control              NA                0.2142857    0.0897916   0.3387798
0-6 months    ki1017093b-PROVIDE          BANGLADESH                     Wealth Q1_0-6 months    Other                NA                0.2280702    0.1507994   0.3053410
0-6 months    ki1017093b-PROVIDE          BANGLADESH                     Wealth Q2_0-6 months    Control              NA                0.1315789    0.0237538   0.2394041
0-6 months    ki1017093b-PROVIDE          BANGLADESH                     Wealth Q2_0-6 months    Other                NA                0.1025641    0.0474123   0.1577160
0-6 months    ki1017093b-PROVIDE          BANGLADESH                     Wealth Q3_0-6 months    Control              NA                0.1025641    0.0070480   0.1980802
0-6 months    ki1017093b-PROVIDE          BANGLADESH                     Wealth Q3_0-6 months    Other                NA                0.1157025    0.0585300   0.1728750
0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Wealth Q4_0-6 months    Control              NA                0.0714286    0.0264194   0.1164377
0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Wealth Q4_0-6 months    Other                NA                0.1111111    0.0580498   0.1641724
0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Wealth Q4_0-6 months    Zinc                 NA                0.0965517    0.0625285   0.1305749
0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Wealth Q1_0-6 months    Control              NA                0.0621118    0.0248022   0.0994214
0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Wealth Q1_0-6 months    Other                NA                0.0368098    0.0078820   0.0657376
0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Wealth Q1_0-6 months    Zinc                 NA                0.0632184    0.0376312   0.0888056
0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Wealth Q2_0-6 months    Control              NA                0.0841121    0.0314625   0.1367618
0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Wealth Q2_0-6 months    Other                NA                0.0677966    0.0223863   0.1132070
0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Wealth Q2_0-6 months    Zinc                 NA                0.0909091    0.0528785   0.1289396
0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Wealth Q3_0-6 months    Control              NA                0.0740741    0.0337093   0.1144388
0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Wealth Q3_0-6 months    Other                NA                0.0441176    0.0095733   0.0786620
0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Wealth Q3_0-6 months    Zinc                 NA                0.0463320    0.0207092   0.0719549
0-6 months    ki1135781-COHORTS           GUATEMALA                      Wealth Q4_0-6 months    Control              NA                0.3137255    0.1857375   0.4417135
0-6 months    ki1135781-COHORTS           GUATEMALA                      Wealth Q4_0-6 months    Other                NA                0.2040816    0.0906671   0.3174962
0-6 months    ki1135781-COHORTS           GUATEMALA                      Wealth Q1_0-6 months    Control              NA                0.4210526    0.2628318   0.5792735
0-6 months    ki1135781-COHORTS           GUATEMALA                      Wealth Q1_0-6 months    Other                NA                0.3076923    0.1288835   0.4865012
0-6 months    ki1135781-COHORTS           GUATEMALA                      Wealth Q2_0-6 months    Control              NA                0.2272727    0.0505729   0.4039726
0-6 months    ki1135781-COHORTS           GUATEMALA                      Wealth Q2_0-6 months    Other                NA                0.4117647    0.2448397   0.5786897
0-6 months    ki1135781-COHORTS           GUATEMALA                      Wealth Q3_0-6 months    Control              NA                0.3600000    0.1704234   0.5495766
0-6 months    ki1135781-COHORTS           GUATEMALA                      Wealth Q3_0-6 months    Other                NA                0.2857143    0.1480597   0.4233689
0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         Wealth Q4_0-6 months    Control              NA                0.2619048    0.1286442   0.3951653
0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         Wealth Q4_0-6 months    LNS                  NA                0.3101604    0.2437181   0.3766028
0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         Wealth Q1_0-6 months    Control              NA                0.4074074    0.2216137   0.5932012
0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         Wealth Q1_0-6 months    LNS                  NA                0.2386364    0.1755074   0.3017653
0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         Wealth Q2_0-6 months    Control              NA                0.3421053    0.1909399   0.4932707
0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         Wealth Q2_0-6 months    LNS                  NA                0.3195876    0.2538269   0.3853483
0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         Wealth Q3_0-6 months    Control              NA                0.2051282    0.0781249   0.3321315
0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         Wealth Q3_0-6 months    LNS                  NA                0.2901554    0.2259895   0.3543214
0-6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Wealth Q1_0-6 months    Control              NA                0.1428571   -0.1231020   0.4088162
0-6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Wealth Q1_0-6 months    Maternal             NA                0.3846154    0.1132832   0.6559475
0-6 months    ki1148112-LCNI-5            MALAWI                         Wealth Q4_0-6 months    Control              NA                0.3478261    0.1518324   0.5438198
0-6 months    ki1148112-LCNI-5            MALAWI                         Wealth Q4_0-6 months    LNS                  NA                0.2812500    0.1243932   0.4381068
0-6 months    ki1148112-LCNI-5            MALAWI                         Wealth Q4_0-6 months    Other                NA                0.3333333    0.1140525   0.5526142
0-6 months    ki1148112-LCNI-5            MALAWI                         Wealth Q1_0-6 months    Control              NA                0.3529412    0.1240844   0.5817979
0-6 months    ki1148112-LCNI-5            MALAWI                         Wealth Q1_0-6 months    LNS                  NA                0.3714286    0.2101614   0.5326958
0-6 months    ki1148112-LCNI-5            MALAWI                         Wealth Q1_0-6 months    Other                NA                0.2500000    0.0362502   0.4637498
0-6 months    ki1148112-LCNI-5            MALAWI                         Wealth Q2_0-6 months    Control              NA                0.3571429    0.1041653   0.6101204
0-6 months    ki1148112-LCNI-5            MALAWI                         Wealth Q2_0-6 months    LNS                  NA                0.3888889    0.2283836   0.5493942
0-6 months    ki1148112-LCNI-5            MALAWI                         Wealth Q2_0-6 months    Other                NA                0.4285714    0.1672973   0.6898455
0-6 months    ki1148112-LCNI-5            MALAWI                         Wealth Q3_0-6 months    Control              NA                0.3846154    0.1180629   0.6511679
0-6 months    ki1148112-LCNI-5            MALAWI                         Wealth Q3_0-6 months    LNS                  NA                0.2352941    0.0915861   0.3790022
0-6 months    ki1148112-LCNI-5            MALAWI                         Wealth Q3_0-6 months    Other                NA                0.6470588    0.4180953   0.8760224
0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Wealth Q4_0-6 months    Control              NA                0.1956606    0.1780347   0.2132865
0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Wealth Q4_0-6 months    Maternal             NA                0.1805444    0.1624932   0.1985957
0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Wealth Q1_0-6 months    Control              NA                0.3428072    0.3169519   0.3686625
0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Wealth Q1_0-6 months    Maternal             NA                0.2894078    0.2676867   0.3111289
0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Wealth Q2_0-6 months    Control              NA                0.3073684    0.2847020   0.3300348
0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Wealth Q2_0-6 months    Maternal             NA                0.2502011    0.2302089   0.2701934
0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Wealth Q3_0-6 months    Control              NA                0.2717992    0.2512208   0.2923777
0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Wealth Q3_0-6 months    Maternal             NA                0.2223629    0.2034926   0.2412332
0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     Wealth Q4_0-6 months    Control              NA                0.2140221    0.1611827   0.2668616
0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     Wealth Q4_0-6 months    LNS                  NA                0.1672355    0.1184581   0.2160129
0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     Wealth Q4_0-6 months    Other                NA                0.2224449    0.1803563   0.2645335
0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     Wealth Q1_0-6 months    Control              NA                0.3039216    0.2408425   0.3670006
0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     Wealth Q1_0-6 months    LNS                  NA                0.3664596    0.3076886   0.4252306
0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     Wealth Q1_0-6 months    Other                NA                0.2665370    0.2195432   0.3135308
0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     Wealth Q2_0-6 months    Control              NA                0.2186380    0.1622288   0.2750472
0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     Wealth Q2_0-6 months    LNS                  NA                0.2541254    0.1955027   0.3127481
0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     Wealth Q2_0-6 months    Other                NA                0.2775801    0.2362349   0.3189253
0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     Wealth Q3_0-6 months    Control              NA                0.1919505    0.1405673   0.2433336
0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     Wealth Q3_0-6 months    LNS                  NA                0.2121212    0.1595072   0.2647353
0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     Wealth Q3_0-6 months    Other                NA                0.2792793    0.2358544   0.3227042
6-24 months   iLiNS_DYADM_LNS             MALAWI                         Wealth Q4_6-24 months   Control              NA                0.1875000    0.0509720   0.3240280
6-24 months   iLiNS_DYADM_LNS             MALAWI                         Wealth Q4_6-24 months   LNS                  NA                0.1904762    0.0209215   0.3600309
6-24 months   iLiNS_DYADM_LNS             MALAWI                         Wealth Q1_6-24 months   Control              NA                0.2222222    0.0836789   0.3607655
6-24 months   iLiNS_DYADM_LNS             MALAWI                         Wealth Q1_6-24 months   LNS                  NA                0.1250000    0.0206345   0.2293655
6-24 months   iLiNS_DYADM_LNS             MALAWI                         Wealth Q2_6-24 months   Control              NA                0.2156863    0.1021588   0.3292137
6-24 months   iLiNS_DYADM_LNS             MALAWI                         Wealth Q2_6-24 months   LNS                  NA                0.2702703    0.1263543   0.4141863
6-24 months   iLiNS_DYADM_LNS             MALAWI                         Wealth Q3_6-24 months   Control              NA                0.1739130    0.0637791   0.2840470
6-24 months   iLiNS_DYADM_LNS             MALAWI                         Wealth Q3_6-24 months   LNS                  NA                0.2826087    0.1517769   0.4134405
6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Wealth Q4_6-24 months   Control              NA                0.2266187    0.1773851   0.2758523
6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Wealth Q4_6-24 months   LNS                  NA                0.1830986    0.1380991   0.2280981
6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Wealth Q4_6-24 months   Other                NA                0.2347826    0.2001224   0.2694428
6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Wealth Q1_6-24 months   Control              NA                0.5081433    0.4521976   0.5640890
6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Wealth Q1_6-24 months   LNS                  NA                0.4480519    0.3924920   0.5036119
6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Wealth Q1_6-24 months   Other                NA                0.5136437    0.4743803   0.5529070
6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Wealth Q2_6-24 months   Control              NA                0.4795539    0.4198273   0.5392805
6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Wealth Q2_6-24 months   LNS                  NA                0.3821429    0.3252031   0.4390826
6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Wealth Q2_6-24 months   Other                NA                0.4431438    0.4033119   0.4829757
6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Wealth Q3_6-24 months   Control              NA                0.3535032    0.3006057   0.4064007
6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Wealth Q3_6-24 months   LNS                  NA                0.3018293    0.2521306   0.3515280
6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Wealth Q3_6-24 months   Other                NA                0.3990307    0.3604381   0.4376233
6-24 months   ki1000111-WASH-Kenya        KENYA                          Wealth Q4_6-24 months   Control              NA                0.2187500    0.1840002   0.2534998
6-24 months   ki1000111-WASH-Kenya        KENYA                          Wealth Q4_6-24 months   LNS                  NA                0.1764706    0.1378230   0.2151181
6-24 months   ki1000111-WASH-Kenya        KENYA                          Wealth Q4_6-24 months   Other                NA                0.2233286    0.1925325   0.2541247
6-24 months   ki1000111-WASH-Kenya        KENYA                          Wealth Q1_6-24 months   Control              NA                0.2837370    0.2469743   0.3204997
6-24 months   ki1000111-WASH-Kenya        KENYA                          Wealth Q1_6-24 months   LNS                  NA                0.2827988    0.2351240   0.3304736
6-24 months   ki1000111-WASH-Kenya        KENYA                          Wealth Q1_6-24 months   Other                NA                0.3298566    0.2965733   0.3631398
6-24 months   ki1000111-WASH-Kenya        KENYA                          Wealth Q2_6-24 months   Control              NA                0.2659758    0.2299748   0.3019768
6-24 months   ki1000111-WASH-Kenya        KENYA                          Wealth Q2_6-24 months   LNS                  NA                0.2289474    0.1866907   0.2712041
6-24 months   ki1000111-WASH-Kenya        KENYA                          Wealth Q2_6-24 months   Other                NA                0.2900976    0.2568708   0.3233245
6-24 months   ki1000111-WASH-Kenya        KENYA                          Wealth Q3_6-24 months   Control              NA                0.2408377    0.2058163   0.2758591
6-24 months   ki1000111-WASH-Kenya        KENYA                          Wealth Q3_6-24 months   LNS                  NA                0.1922006    0.1514285   0.2329726
6-24 months   ki1000111-WASH-Kenya        KENYA                          Wealth Q3_6-24 months   Other                NA                0.2482270    0.2163296   0.2801243
6-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Wealth Q4_6-24 months   Control              NA                0.5116279    0.4250521   0.5982037
6-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Wealth Q4_6-24 months   Maternal             NA                0.1250000   -0.1050133   0.3550133
6-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Wealth Q1_6-24 months   Control              NA                0.7552448    0.6845472   0.8259423
6-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Wealth Q1_6-24 months   Maternal             NA                0.2727273    0.0086814   0.5367731
6-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Wealth Q2_6-24 months   Control              NA                0.6071429    0.5163150   0.6979707
6-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Wealth Q2_6-24 months   Maternal             NA                0.0000000    0.0000000   0.0000000
6-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Wealth Q3_6-24 months   Control              NA                0.6390977    0.5571774   0.7210180
6-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Wealth Q3_6-24 months   Maternal             NA                0.2500000   -0.1759019   0.6759019
6-24 months   ki1017093b-PROVIDE          BANGLADESH                     Wealth Q4_6-24 months   Control              NA                0.0322581   -0.0302231   0.0947393
6-24 months   ki1017093b-PROVIDE          BANGLADESH                     Wealth Q4_6-24 months   Other                NA                0.0632911    0.0093536   0.1172287
6-24 months   ki1017093b-PROVIDE          BANGLADESH                     Wealth Q1_6-24 months   Control              NA                0.3888889    0.1618114   0.6159663
6-24 months   ki1017093b-PROVIDE          BANGLADESH                     Wealth Q1_6-24 months   Other                NA                0.1860465    0.0687693   0.3033237
6-24 months   ki1017093b-PROVIDE          BANGLADESH                     Wealth Q2_6-24 months   Control              NA                0.1000000   -0.0323185   0.2323185
6-24 months   ki1017093b-PROVIDE          BANGLADESH                     Wealth Q2_6-24 months   Other                NA                0.0847458    0.0132273   0.1562642
6-24 months   ki1017093b-PROVIDE          BANGLADESH                     Wealth Q3_6-24 months   Control              NA                0.1363636   -0.0078316   0.2805589
6-24 months   ki1017093b-PROVIDE          BANGLADESH                     Wealth Q3_6-24 months   Other                NA                0.0869565    0.0201037   0.1538094
6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Wealth Q4_6-24 months   Control              NA                0.2000000    0.1215084   0.2784916
6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Wealth Q4_6-24 months   Other                NA                0.2285714    0.1481582   0.3089846
6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Wealth Q4_6-24 months   Zinc                 NA                0.2211982    0.1659093   0.2764870
6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Wealth Q1_6-24 months   Control              NA                0.1203008    0.0649633   0.1756382
6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Wealth Q1_6-24 months   Other                NA                0.1439394    0.0840018   0.2038770
6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Wealth Q1_6-24 months   Zinc                 NA                0.1373239    0.0972574   0.1773905
6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Wealth Q2_6-24 months   Control              NA                0.2068966    0.1216591   0.2921340
6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Wealth Q2_6-24 months   Other                NA                0.1458333    0.0751344   0.2165323
6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Wealth Q2_6-24 months   Zinc                 NA                0.2067039    0.1473001   0.2661077
6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Wealth Q3_6-24 months   Control              NA                0.2180451    0.1477941   0.2882962
6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Wealth Q3_6-24 months   Other                NA                0.1565217    0.0900419   0.2230016
6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Wealth Q3_6-24 months   Zinc                 NA                0.2155963    0.1609480   0.2702447
6-24 months   ki1135781-COHORTS           GUATEMALA                      Wealth Q4_6-24 months   Control              NA                0.6428571    0.5401159   0.7455984
6-24 months   ki1135781-COHORTS           GUATEMALA                      Wealth Q4_6-24 months   Other                NA                0.5384615    0.4423953   0.6345278
6-24 months   ki1135781-COHORTS           GUATEMALA                      Wealth Q1_6-24 months   Control              NA                0.8421053    0.7254456   0.9587650
6-24 months   ki1135781-COHORTS           GUATEMALA                      Wealth Q1_6-24 months   Other                NA                0.5581395    0.4087826   0.7074965
6-24 months   ki1135781-COHORTS           GUATEMALA                      Wealth Q2_6-24 months   Control              NA                0.7500000    0.6213464   0.8786536
6-24 months   ki1135781-COHORTS           GUATEMALA                      Wealth Q2_6-24 months   Other                NA                0.6170213    0.4772764   0.7567662
6-24 months   ki1135781-COHORTS           GUATEMALA                      Wealth Q3_6-24 months   Control              NA                0.6764706    0.5182160   0.8347251
6-24 months   ki1135781-COHORTS           GUATEMALA                      Wealth Q3_6-24 months   Other                NA                0.4888889    0.3419046   0.6358731
6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Wealth Q4_6-24 months   Control              NA                0.3666667    0.2445121   0.4888212
6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Wealth Q4_6-24 months   LNS                  NA                0.3133641    0.2515352   0.3751929
6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Wealth Q1_6-24 months   Control              NA                0.3611111    0.2039256   0.5182966
6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Wealth Q1_6-24 months   LNS                  NA                0.4504132    0.3876151   0.5132113
6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Wealth Q2_6-24 months   Control              NA                0.4523810    0.3015794   0.6031825
6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Wealth Q2_6-24 months   LNS                  NA                0.4377682    0.3739506   0.5015859
6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Wealth Q3_6-24 months   Control              NA                0.4905660    0.3557390   0.6253931
6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Wealth Q3_6-24 months   LNS                  NA                0.4780702    0.4131161   0.5430243
6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Wealth Q4_6-24 months   Control              NA                0.1875000    0.0513303   0.3236697
6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Wealth Q4_6-24 months   Maternal             NA                0.1951220    0.0729787   0.3172652
6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Wealth Q1_6-24 months   Control              NA                0.2222222    0.0847921   0.3596523
6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Wealth Q1_6-24 months   Maternal             NA                0.2527473    0.1625584   0.3429361
6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Wealth Q2_6-24 months   Control              NA                0.2156863    0.1023478   0.3290248
6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Wealth Q2_6-24 months   Maternal             NA                0.2465753    0.1473004   0.3458503
6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Wealth Q3_6-24 months   Control              NA                0.1739130    0.0640147   0.2838113
6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Wealth Q3_6-24 months   Maternal             NA                0.2476190    0.1647853   0.3304528
6-24 months   ki1148112-LCNI-5            MALAWI                         Wealth Q4_6-24 months   Control              NA                0.4400000    0.3020532   0.5779468
6-24 months   ki1148112-LCNI-5            MALAWI                         Wealth Q4_6-24 months   LNS                  NA                0.5520833    0.4523497   0.6518169
6-24 months   ki1148112-LCNI-5            MALAWI                         Wealth Q4_6-24 months   Other                NA                0.4893617    0.3460773   0.6326461
6-24 months   ki1148112-LCNI-5            MALAWI                         Wealth Q1_6-24 months   Control              NA                0.5121951    0.3587490   0.6656412
6-24 months   ki1148112-LCNI-5            MALAWI                         Wealth Q1_6-24 months   LNS                  NA                0.5294118    0.4229938   0.6358297
6-24 months   ki1148112-LCNI-5            MALAWI                         Wealth Q1_6-24 months   Other                NA                0.5319149    0.3888472   0.6749826
6-24 months   ki1148112-LCNI-5            MALAWI                         Wealth Q2_6-24 months   Control              NA                0.4897959    0.3494166   0.6301753
6-24 months   ki1148112-LCNI-5            MALAWI                         Wealth Q2_6-24 months   LNS                  NA                0.5113636    0.4066175   0.6161098
6-24 months   ki1148112-LCNI-5            MALAWI                         Wealth Q2_6-24 months   Other                NA                0.5882353    0.4223216   0.7541490
6-24 months   ki1148112-LCNI-5            MALAWI                         Wealth Q3_6-24 months   Control              NA                0.5483871    0.3726947   0.7240794
6-24 months   ki1148112-LCNI-5            MALAWI                         Wealth Q3_6-24 months   LNS                  NA                0.5212766    0.4199976   0.6225556
6-24 months   ki1148112-LCNI-5            MALAWI                         Wealth Q3_6-24 months   Other                NA                0.6041667    0.4654205   0.7429128
6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Wealth Q4_6-24 months   Control              NA                0.1369543    0.1140724   0.1598363
6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Wealth Q4_6-24 months   Maternal             NA                0.1351882    0.1130659   0.1573105
6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Wealth Q1_6-24 months   Control              NA                0.1958968    0.1587133   0.2330802
6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Wealth Q1_6-24 months   Maternal             NA                0.2247706    0.1937164   0.2558249
6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Wealth Q2_6-24 months   Control              NA                0.1928389    0.1634519   0.2222258
6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Wealth Q2_6-24 months   Maternal             NA                0.2051406    0.1768826   0.2333987
6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Wealth Q3_6-24 months   Control              NA                0.1816914    0.1522858   0.2110971
6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Wealth Q3_6-24 months   Maternal             NA                0.1632653    0.1387256   0.1878050
6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Wealth Q4_6-24 months   Control              NA                0.2299107    0.1649811   0.2948403
6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Wealth Q4_6-24 months   LNS                  NA                0.2366255    0.1747173   0.2985337
6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Wealth Q4_6-24 months   Other                NA                0.2352185    0.1810192   0.2894178
6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Wealth Q1_6-24 months   Control              NA                0.3550725    0.2842208   0.4259241
6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Wealth Q1_6-24 months   LNS                  NA                0.3223350    0.2431201   0.4015499
6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Wealth Q1_6-24 months   Other                NA                0.3230337    0.2677285   0.3783389
6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Wealth Q2_6-24 months   Control              NA                0.3307292    0.2531369   0.4083215
6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Wealth Q2_6-24 months   LNS                  NA                0.2646370    0.2012375   0.3280365
6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Wealth Q2_6-24 months   Other                NA                0.2777018    0.2259712   0.3294324
6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Wealth Q3_6-24 months   Control              NA                0.2609562    0.2027705   0.3191418
6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Wealth Q3_6-24 months   LNS                  NA                0.1931034    0.1294364   0.2567705
6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Wealth Q3_6-24 months   Other                NA                0.2694848    0.2165974   0.3223723


### Parameter: E(Y)


agecat        studyid                     country                        intXhhwealth_quart      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  --------------------------  -----------------------------  ----------------------  -------------------  ---------------  ----------  ----------  ----------
0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Wealth Q1_0-6 months    NA                   NA                0.1486486   0.0670427   0.2302545
0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Wealth Q2_0-6 months    NA                   NA                0.1568627   0.0560601   0.2576654
0-6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Wealth Q1_0-6 months    NA                   NA                0.3125000   0.0779347   0.5470653
0-6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Wealth Q2_0-6 months    NA                   NA                0.2285714   0.0874258   0.3697171
0-6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Wealth Q3_0-6 months    NA                   NA                0.2272727   0.0480367   0.4065087
0-6 months    ki1017093b-PROVIDE          BANGLADESH                     Wealth Q4_0-6 months    NA                   NA                0.1137725   0.0654682   0.1620767
0-6 months    ki1017093b-PROVIDE          BANGLADESH                     Wealth Q1_0-6 months    NA                   NA                0.2243590   0.1586864   0.2900316
0-6 months    ki1017093b-PROVIDE          BANGLADESH                     Wealth Q2_0-6 months    NA                   NA                0.1096774   0.0603237   0.1590312
0-6 months    ki1017093b-PROVIDE          BANGLADESH                     Wealth Q3_0-6 months    NA                   NA                0.1125000   0.0633855   0.1616145
0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Wealth Q4_0-6 months    NA                   NA                0.0943739   0.0699414   0.1188063
0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Wealth Q1_0-6 months    NA                   NA                0.0565476   0.0390711   0.0740241
0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Wealth Q2_0-6 months    NA                   NA                0.0831461   0.0574641   0.1088280
0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Wealth Q3_0-6 months    NA                   NA                0.0538600   0.0350961   0.0726238
0-6 months    ki1135781-COHORTS           GUATEMALA                      Wealth Q4_0-6 months    NA                   NA                0.2600000   0.1735962   0.3464038
0-6 months    ki1135781-COHORTS           GUATEMALA                      Wealth Q1_0-6 months    NA                   NA                0.3750000   0.2554544   0.4945456
0-6 months    ki1135781-COHORTS           GUATEMALA                      Wealth Q2_0-6 months    NA                   NA                0.3392857   0.2141572   0.4644143
0-6 months    ki1135781-COHORTS           GUATEMALA                      Wealth Q3_0-6 months    NA                   NA                0.3134328   0.2015174   0.4253482
0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         Wealth Q4_0-6 months    NA                   NA                0.3013100   0.2417535   0.3608666
0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         Wealth Q1_0-6 months    NA                   NA                0.2610837   0.2005134   0.3216541
0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         Wealth Q2_0-6 months    NA                   NA                0.3232759   0.2629596   0.3835921
0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         Wealth Q3_0-6 months    NA                   NA                0.2758621   0.2182254   0.3334987
0-6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Wealth Q1_0-6 months    NA                   NA                0.3000000   0.0939461   0.5060539
0-6 months    ki1148112-LCNI-5            MALAWI                         Wealth Q4_0-6 months    NA                   NA                0.3150685   0.2077665   0.4223705
0-6 months    ki1148112-LCNI-5            MALAWI                         Wealth Q1_0-6 months    NA                   NA                0.3382353   0.2249504   0.4515202
0-6 months    ki1148112-LCNI-5            MALAWI                         Wealth Q2_0-6 months    NA                   NA                0.3906250   0.2701491   0.5111009
0-6 months    ki1148112-LCNI-5            MALAWI                         Wealth Q3_0-6 months    NA                   NA                0.3750000   0.2554544   0.4945456
0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Wealth Q4_0-6 months    NA                   NA                0.1882260   0.1755905   0.2008615
0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Wealth Q1_0-6 months    NA                   NA                0.3154749   0.2985881   0.3323618
0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Wealth Q2_0-6 months    NA                   NA                0.2781321   0.2629168   0.2933473
0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Wealth Q3_0-6 months    NA                   NA                0.2469816   0.2328540   0.2611092
0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     Wealth Q4_0-6 months    NA                   NA                0.2050800   0.1775416   0.2326183
0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     Wealth Q1_0-6 months    NA                   NA                0.3047285   0.2729602   0.3364969
0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     Wealth Q2_0-6 months    NA                   NA                0.2569930   0.2278479   0.2861381
0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     Wealth Q3_0-6 months    NA                   NA                0.2375828   0.2092194   0.2659462
6-24 months   iLiNS_DYADM_LNS             MALAWI                         Wealth Q4_6-24 months   NA                   NA                0.1886792   0.0823373   0.2950212
6-24 months   iLiNS_DYADM_LNS             MALAWI                         Wealth Q1_6-24 months   NA                   NA                0.1710526   0.0848067   0.2572985
6-24 months   iLiNS_DYADM_LNS             MALAWI                         Wealth Q2_6-24 months   NA                   NA                0.2386364   0.1490684   0.3282044
6-24 months   iLiNS_DYADM_LNS             MALAWI                         Wealth Q3_6-24 months   NA                   NA                0.2282609   0.1420269   0.3144948
6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Wealth Q4_6-24 months   NA                   NA                0.2198769   0.1957928   0.2439610
6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Wealth Q1_6-24 months   NA                   NA                0.4959612   0.4680988   0.5238237
6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Wealth Q2_6-24 months   NA                   NA                0.4367916   0.4080754   0.4655079
6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Wealth Q3_6-24 months   NA                   NA                0.3624108   0.3358688   0.3889528
6-24 months   ki1000111-WASH-Kenya        KENYA                          Wealth Q4_6-24 months   NA                   NA                0.2109809   0.1911128   0.2308490
6-24 months   ki1000111-WASH-Kenya        KENYA                          Wealth Q1_6-24 months   NA                   NA                0.3045024   0.2825423   0.3264624
6-24 months   ki1000111-WASH-Kenya        KENYA                          Wealth Q2_6-24 months   NA                   NA                0.2678998   0.2466912   0.2891084
6-24 months   ki1000111-WASH-Kenya        KENYA                          Wealth Q3_6-24 months   NA                   NA                0.2333537   0.2128581   0.2538493
6-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Wealth Q4_6-24 months   NA                   NA                0.4890511   0.4050385   0.5730637
6-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Wealth Q1_6-24 months   NA                   NA                0.7207792   0.6496943   0.7918641
6-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Wealth Q2_6-24 months   NA                   NA                0.5666667   0.4776340   0.6556994
6-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Wealth Q3_6-24 months   NA                   NA                0.6277372   0.5464930   0.7089814
6-24 months   ki1017093b-PROVIDE          BANGLADESH                     Wealth Q4_6-24 months   NA                   NA                0.0545455   0.0119136   0.0971773
6-24 months   ki1017093b-PROVIDE          BANGLADESH                     Wealth Q1_6-24 months   NA                   NA                0.2459016   0.1369416   0.3548617
6-24 months   ki1017093b-PROVIDE          BANGLADESH                     Wealth Q2_6-24 months   NA                   NA                0.0886076   0.0255425   0.1516727
6-24 months   ki1017093b-PROVIDE          BANGLADESH                     Wealth Q3_6-24 months   NA                   NA                0.0989011   0.0372255   0.1605767
6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Wealth Q4_6-24 months   NA                   NA                0.2180095   0.1785687   0.2574503
6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Wealth Q1_6-24 months   NA                   NA                0.1347905   0.1061983   0.1633828
6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Wealth Q2_6-24 months   NA                   NA                0.1906077   0.1500901   0.2311254
6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Wealth Q3_6-24 months   NA                   NA                0.2017167   0.1652438   0.2381897
6-24 months   ki1135781-COHORTS           GUATEMALA                      Wealth Q4_6-24 months   NA                   NA                0.5851064   0.5144888   0.6557240
6-24 months   ki1135781-COHORTS           GUATEMALA                      Wealth Q1_6-24 months   NA                   NA                0.6913580   0.5901344   0.7925817
6-24 months   ki1135781-COHORTS           GUATEMALA                      Wealth Q2_6-24 months   NA                   NA                0.6813187   0.5850510   0.7775863
6-24 months   ki1135781-COHORTS           GUATEMALA                      Wealth Q3_6-24 months   NA                   NA                0.5696203   0.4597401   0.6795004
6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Wealth Q4_6-24 months   NA                   NA                0.3249097   0.2696568   0.3801627
6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Wealth Q1_6-24 months   NA                   NA                0.4388489   0.3804095   0.4972883
6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Wealth Q2_6-24 months   NA                   NA                0.4400000   0.3812249   0.4987751
6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Wealth Q3_6-24 months   NA                   NA                0.4804270   0.4219068   0.5389473
6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Wealth Q4_6-24 months   NA                   NA                0.1917808   0.1008421   0.2827196
6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Wealth Q1_6-24 months   NA                   NA                0.2440945   0.1685913   0.3195977
6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Wealth Q2_6-24 months   NA                   NA                0.2338710   0.1590653   0.3086767
6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Wealth Q3_6-24 months   NA                   NA                0.2251656   0.1583223   0.2920089
6-24 months   ki1148112-LCNI-5            MALAWI                         Wealth Q4_6-24 months   NA                   NA                0.5077720   0.4370565   0.5784876
6-24 months   ki1148112-LCNI-5            MALAWI                         Wealth Q1_6-24 months   NA                   NA                0.5260116   0.4513898   0.6006333
6-24 months   ki1148112-LCNI-5            MALAWI                         Wealth Q2_6-24 months   NA                   NA                0.5204678   0.4453696   0.5955660
6-24 months   ki1148112-LCNI-5            MALAWI                         Wealth Q3_6-24 months   NA                   NA                0.5491329   0.4747717   0.6234942
6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Wealth Q4_6-24 months   NA                   NA                0.1360634   0.1201598   0.1519671
6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Wealth Q1_6-24 months   NA                   NA                0.2113671   0.1873674   0.2353669
6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Wealth Q2_6-24 months   NA                   NA                0.1991536   0.1787872   0.2195200
6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Wealth Q3_6-24 months   NA                   NA                0.1721661   0.1530819   0.1912503
6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Wealth Q4_6-24 months   NA                   NA                0.2342290   0.1995582   0.2688997
6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Wealth Q1_6-24 months   NA                   NA                0.3315789   0.2933072   0.3698506
6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Wealth Q2_6-24 months   NA                   NA                0.2872892   0.2514032   0.3231753
6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Wealth Q3_6-24 months   NA                   NA                0.2473436   0.2137452   0.2809420


### Parameter: RR


agecat        studyid                     country                        intXhhwealth_quart      intervention_level   baseline_level     estimate    ci_lower     ci_upper
------------  --------------------------  -----------------------------  ----------------------  -------------------  ---------------  ----------  ----------  -----------
0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Wealth Q1_0-6 months    Control              Control           1.0000000   1.0000000    1.0000000
0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Wealth Q1_0-6 months    LNS                  Control           0.5833333   0.1343630    2.5325266
0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Wealth Q1_0-6 months    Other                Control           0.6481481   0.1766053    2.3787289
0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Wealth Q2_0-6 months    Control              Control           1.0000000   1.0000000    1.0000000
0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Wealth Q2_0-6 months    LNS                  Control           1.1250000   0.2312132    5.4738438
0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Wealth Q2_0-6 months    Other                Control           0.4500000   0.0870344    2.3266660
0-6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Wealth Q1_0-6 months    Control              Control           1.0000000   1.0000000    1.0000000
0-6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Wealth Q1_0-6 months    Maternal             Control           1.5000000   0.3196351    7.0392776
0-6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Wealth Q2_0-6 months    Control              Control           1.0000000   1.0000000    1.0000000
0-6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Wealth Q2_0-6 months    Maternal             Control           0.1696429   0.0225952    1.2736630
0-6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Wealth Q3_0-6 months    Control              Control           1.0000000   1.0000000    1.0000000
0-6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Wealth Q3_0-6 months    Maternal             Control           1.0384615   0.2072645    5.2030261
0-6 months    ki1017093b-PROVIDE          BANGLADESH                     Wealth Q4_0-6 months    Control              Control           1.0000000   1.0000000    1.0000000
0-6 months    ki1017093b-PROVIDE          BANGLADESH                     Wealth Q4_0-6 months    Other                Control           0.8486111   0.3418032    2.1068874
0-6 months    ki1017093b-PROVIDE          BANGLADESH                     Wealth Q1_0-6 months    Control              Control           1.0000000   1.0000000    1.0000000
0-6 months    ki1017093b-PROVIDE          BANGLADESH                     Wealth Q1_0-6 months    Other                Control           1.0643275   0.5432414    2.0852480
0-6 months    ki1017093b-PROVIDE          BANGLADESH                     Wealth Q2_0-6 months    Control              Control           1.0000000   1.0000000    1.0000000
0-6 months    ki1017093b-PROVIDE          BANGLADESH                     Wealth Q2_0-6 months    Other                Control           0.7794872   0.2925073    2.0772139
0-6 months    ki1017093b-PROVIDE          BANGLADESH                     Wealth Q3_0-6 months    Control              Control           1.0000000   1.0000000    1.0000000
0-6 months    ki1017093b-PROVIDE          BANGLADESH                     Wealth Q3_0-6 months    Other                Control           1.1280992   0.3930881    3.2374616
0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Wealth Q4_0-6 months    Control              Control           1.0000000   1.0000000    1.0000000
0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Wealth Q4_0-6 months    Other                Control           1.5555556   0.7055265    3.4297127
0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Wealth Q4_0-6 months    Zinc                 Control           1.3517241   0.6566622    2.7824931
0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Wealth Q1_0-6 months    Control              Control           1.0000000   1.0000000    1.0000000
0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Wealth Q1_0-6 months    Other                Control           0.5926380   0.2203977    1.5935728
0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Wealth Q1_0-6 months    Zinc                 Control           1.0178161   0.4932886    2.1000883
0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Wealth Q2_0-6 months    Control              Control           1.0000000   1.0000000    1.0000000
0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Wealth Q2_0-6 months    Other                Control           0.8060264   0.3222602    2.0160058
0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Wealth Q2_0-6 months    Zinc                 Control           1.0808081   0.5090746    2.2946462
0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Wealth Q3_0-6 months    Control              Control           1.0000000   1.0000000    1.0000000
0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Wealth Q3_0-6 months    Other                Control           0.5955883   0.2294281    1.5461289
0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Wealth Q3_0-6 months    Zinc                 Control           0.6254826   0.2877621    1.3595555
0-6 months    ki1135781-COHORTS           GUATEMALA                      Wealth Q4_0-6 months    Control              Control           1.0000000   1.0000000    1.0000000
0-6 months    ki1135781-COHORTS           GUATEMALA                      Wealth Q4_0-6 months    Other                Control           0.6505102   0.3264768    1.2961521
0-6 months    ki1135781-COHORTS           GUATEMALA                      Wealth Q1_0-6 months    Control              Control           1.0000000   1.0000000    1.0000000
0-6 months    ki1135781-COHORTS           GUATEMALA                      Wealth Q1_0-6 months    Other                Control           0.7307692   0.3657900    1.4599189
0-6 months    ki1135781-COHORTS           GUATEMALA                      Wealth Q2_0-6 months    Control              Control           1.0000000   1.0000000    1.0000000
0-6 months    ki1135781-COHORTS           GUATEMALA                      Wealth Q2_0-6 months    Other                Control           1.8117647   0.7538820    4.3541182
0-6 months    ki1135781-COHORTS           GUATEMALA                      Wealth Q3_0-6 months    Control              Control           1.0000000   1.0000000    1.0000000
0-6 months    ki1135781-COHORTS           GUATEMALA                      Wealth Q3_0-6 months    Other                Control           0.7936508   0.3887352    1.6203358
0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         Wealth Q4_0-6 months    Control              Control           1.0000000   1.0000000    1.0000000
0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         Wealth Q4_0-6 months    LNS                  Control           1.1842489   0.6818397    2.0568551
0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         Wealth Q1_0-6 months    Control              Control           1.0000000   1.0000000    1.0000000
0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         Wealth Q1_0-6 months    LNS                  Control           0.5857438   0.3457340    0.9923693
0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         Wealth Q2_0-6 months    Control              Control           1.0000000   1.0000000    1.0000000
0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         Wealth Q2_0-6 months    LNS                  Control           0.9341792   0.5737758    1.5209613
0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         Wealth Q3_0-6 months    Control              Control           1.0000000   1.0000000    1.0000000
0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         Wealth Q3_0-6 months    LNS                  Control           1.4145078   0.7329571    2.7298080
0-6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Wealth Q1_0-6 months    Control              Control           1.0000000   1.0000000    1.0000000
0-6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Wealth Q1_0-6 months    Maternal             Control           2.6923077   0.3676975   19.7132729
0-6 months    ki1148112-LCNI-5            MALAWI                         Wealth Q4_0-6 months    Control              Control           1.0000000   1.0000000    1.0000000
0-6 months    ki1148112-LCNI-5            MALAWI                         Wealth Q4_0-6 months    LNS                  Control           0.8085938   0.3659444    1.7866753
0-6 months    ki1148112-LCNI-5            MALAWI                         Wealth Q4_0-6 months    Other                Control           0.9583333   0.4030316    2.2787362
0-6 months    ki1148112-LCNI-5            MALAWI                         Wealth Q1_0-6 months    Control              Control           1.0000000   1.0000000    1.0000000
0-6 months    ki1148112-LCNI-5            MALAWI                         Wealth Q1_0-6 months    LNS                  Control           1.0523810   0.4822412    2.2965806
0-6 months    ki1148112-LCNI-5            MALAWI                         Wealth Q1_0-6 months    Other                Control           0.7083333   0.2422193    2.0714127
0-6 months    ki1148112-LCNI-5            MALAWI                         Wealth Q2_0-6 months    Control              Control           1.0000000   1.0000000    1.0000000
0-6 months    ki1148112-LCNI-5            MALAWI                         Wealth Q2_0-6 months    LNS                  Control           1.0888889   0.4796730    2.4718486
0-6 months    ki1148112-LCNI-5            MALAWI                         Wealth Q2_0-6 months    Other                Control           1.2000000   0.4713105    3.0553108
0-6 months    ki1148112-LCNI-5            MALAWI                         Wealth Q3_0-6 months    Control              Control           1.0000000   1.0000000    1.0000000
0-6 months    ki1148112-LCNI-5            MALAWI                         Wealth Q3_0-6 months    LNS                  Control           0.6117647   0.2428857    1.5408730
0-6 months    ki1148112-LCNI-5            MALAWI                         Wealth Q3_0-6 months    Other                Control           1.6823529   0.7726317    3.6632089
0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Wealth Q4_0-6 months    Control              Control           1.0000000   1.0000000    1.0000000
0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Wealth Q4_0-6 months    Maternal             Control           0.9227429   0.8065569    1.0556658
0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Wealth Q1_0-6 months    Control              Control           1.0000000   1.0000000    1.0000000
0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Wealth Q1_0-6 months    Maternal             Control           0.8442292   0.7590341    0.9389868
0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Wealth Q2_0-6 months    Control              Control           1.0000000   1.0000000    1.0000000
0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Wealth Q2_0-6 months    Maternal             Control           0.8140105   0.7301089    0.9075538
0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Wealth Q3_0-6 months    Control              Control           1.0000000   1.0000000    1.0000000
0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Wealth Q3_0-6 months    Maternal             Control           0.8181144   0.7300720    0.9167742
0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     Wealth Q4_0-6 months    Control              Control           1.0000000   1.0000000    1.0000000
0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     Wealth Q4_0-6 months    LNS                  Control           0.7813934   0.5332126    1.1450886
0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     Wealth Q4_0-6 months    Other                Control           1.0393546   0.7615277    1.4185405
0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     Wealth Q1_0-6 months    Control              Control           1.0000000   1.0000000    1.0000000
0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     Wealth Q1_0-6 months    LNS                  Control           1.2057704   0.9275038    1.5675215
0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     Wealth Q1_0-6 months    Other                Control           0.8769926   0.6679375    1.1514791
0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     Wealth Q2_0-6 months    Control              Control           1.0000000   1.0000000    1.0000000
0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     Wealth Q2_0-6 months    LNS                  Control           1.1623113   0.8221580    1.6431971
0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     Wealth Q2_0-6 months    Other                Control           1.2695875   0.9423926    1.7103832
0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     Wealth Q3_0-6 months    Control              Control           1.0000000   1.0000000    1.0000000
0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     Wealth Q3_0-6 months    LNS                  Control           1.1050831   0.7672072    1.5917587
0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     Wealth Q3_0-6 months    Other                Control           1.4549550   1.0675637    1.9829206
6-24 months   iLiNS_DYADM_LNS             MALAWI                         Wealth Q4_6-24 months   Control              Control           1.0000000   1.0000000    1.0000000
6-24 months   iLiNS_DYADM_LNS             MALAWI                         Wealth Q4_6-24 months   LNS                  Control           1.0158730   0.3216501    3.2084487
6-24 months   iLiNS_DYADM_LNS             MALAWI                         Wealth Q1_6-24 months   Control              Control           1.0000000   1.0000000    1.0000000
6-24 months   iLiNS_DYADM_LNS             MALAWI                         Wealth Q1_6-24 months   LNS                  Control           0.5625000   0.1984194    1.5946339
6-24 months   iLiNS_DYADM_LNS             MALAWI                         Wealth Q2_6-24 months   Control              Control           1.0000000   1.0000000    1.0000000
6-24 months   iLiNS_DYADM_LNS             MALAWI                         Wealth Q2_6-24 months   LNS                  Control           1.2530713   0.5926622    2.6493801
6-24 months   iLiNS_DYADM_LNS             MALAWI                         Wealth Q3_6-24 months   Control              Control           1.0000000   1.0000000    1.0000000
6-24 months   iLiNS_DYADM_LNS             MALAWI                         Wealth Q3_6-24 months   LNS                  Control           1.6250000   0.7416089    3.5606706
6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Wealth Q4_6-24 months   Control              Control           1.0000000   1.0000000    1.0000000
6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Wealth Q4_6-24 months   LNS                  Control           0.8079589   0.5820096    1.1216268
6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Wealth Q4_6-24 months   Other                Control           1.0360248   0.7967032    1.3472363
6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Wealth Q1_6-24 months   Control              Control           1.0000000   1.0000000    1.0000000
6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Wealth Q1_6-24 months   LNS                  Control           0.8817433   0.7470069    1.0407818
6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Wealth Q1_6-24 months   Other                Control           1.0108244   0.8840278    1.1558075
6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Wealth Q2_6-24 months   Control              Control           1.0000000   1.0000000    1.0000000
6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Wealth Q2_6-24 months   LNS                  Control           0.7968715   0.6562192    0.9676710
6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Wealth Q2_6-24 months   Other                Control           0.9240751   0.7925056    1.0774873
6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Wealth Q3_6-24 months   Control              Control           1.0000000   1.0000000    1.0000000
6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Wealth Q3_6-24 months   LNS                  Control           0.8538233   0.6835020    1.0665869
6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Wealth Q3_6-24 months   Other                Control           1.1287895   0.9445687    1.3489393
6-24 months   ki1000111-WASH-Kenya        KENYA                          Wealth Q4_6-24 months   Control              Control           1.0000000   1.0000000    1.0000000
6-24 months   ki1000111-WASH-Kenya        KENYA                          Wealth Q4_6-24 months   LNS                  Control           0.8067227   0.6154968    1.0573597
6-24 months   ki1000111-WASH-Kenya        KENYA                          Wealth Q4_6-24 months   Other                Control           1.0209307   0.8272542    1.2599507
6-24 months   ki1000111-WASH-Kenya        KENYA                          Wealth Q1_6-24 months   Control              Control           1.0000000   1.0000000    1.0000000
6-24 months   ki1000111-WASH-Kenya        KENYA                          Wealth Q1_6-24 months   LNS                  Control           0.9966935   0.8057901    1.2328246
6-24 months   ki1000111-WASH-Kenya        KENYA                          Wealth Q1_6-24 months   Other                Control           1.1625433   0.9864812    1.3700282
6-24 months   ki1000111-WASH-Kenya        KENYA                          Wealth Q2_6-24 months   Control              Control           1.0000000   1.0000000    1.0000000
6-24 months   ki1000111-WASH-Kenya        KENYA                          Wealth Q2_6-24 months   LNS                  Control           0.8607826   0.6846861    1.0821700
6-24 months   ki1000111-WASH-Kenya        KENYA                          Wealth Q2_6-24 months   Other                Control           1.0906917   0.9134745    1.3022897
6-24 months   ki1000111-WASH-Kenya        KENYA                          Wealth Q3_6-24 months   Control              Control           1.0000000   1.0000000    1.0000000
6-24 months   ki1000111-WASH-Kenya        KENYA                          Wealth Q3_6-24 months   LNS                  Control           0.7980501   0.6170704    1.0321092
6-24 months   ki1000111-WASH-Kenya        KENYA                          Wealth Q3_6-24 months   Other                Control           1.0306815   0.8488811    1.2514170
6-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Wealth Q4_6-24 months   Control              Control           1.0000000   1.0000000    1.0000000
6-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Wealth Q4_6-24 months   Maternal             Control           0.2443182   0.0384978    1.5505144
6-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Wealth Q1_6-24 months   Control              Control           1.0000000   1.0000000    1.0000000
6-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Wealth Q1_6-24 months   Maternal             Control           0.3611111   0.1365243    0.9551502
6-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Wealth Q2_6-24 months   Control              Control           1.0000000   1.0000000    1.0000000
6-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Wealth Q2_6-24 months   Maternal             Control           0.0000000   0.0000000    0.0000001
6-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Wealth Q3_6-24 months   Control              Control           1.0000000   1.0000000    1.0000000
6-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Wealth Q3_6-24 months   Maternal             Control           0.3911765   0.0708621    2.1593915
6-24 months   ki1017093b-PROVIDE          BANGLADESH                     Wealth Q4_6-24 months   Control              Control           1.0000000   1.0000000    1.0000000
6-24 months   ki1017093b-PROVIDE          BANGLADESH                     Wealth Q4_6-24 months   Other                Control           1.9620253   0.2364234   16.2824148
6-24 months   ki1017093b-PROVIDE          BANGLADESH                     Wealth Q1_6-24 months   Control              Control           1.0000000   1.0000000    1.0000000
6-24 months   ki1017093b-PROVIDE          BANGLADESH                     Wealth Q1_6-24 months   Other                Control           0.4784053   0.2025943    1.1297040
6-24 months   ki1017093b-PROVIDE          BANGLADESH                     Wealth Q2_6-24 months   Control              Control           1.0000000   1.0000000    1.0000000
6-24 months   ki1017093b-PROVIDE          BANGLADESH                     Wealth Q2_6-24 months   Other                Control           0.8474576   0.1764153    4.0709871
6-24 months   ki1017093b-PROVIDE          BANGLADESH                     Wealth Q3_6-24 months   Control              Control           1.0000000   1.0000000    1.0000000
6-24 months   ki1017093b-PROVIDE          BANGLADESH                     Wealth Q3_6-24 months   Other                Control           0.6376812   0.1725116    2.3571594
6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Wealth Q4_6-24 months   Control              Control           1.0000000   1.0000000    1.0000000
6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Wealth Q4_6-24 months   Other                Control           1.1428571   0.6746721    1.9359366
6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Wealth Q4_6-24 months   Zinc                 Control           1.1059908   0.6945069    1.7612721
6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Wealth Q1_6-24 months   Control              Control           1.0000000   1.0000000    1.0000000
6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Wealth Q1_6-24 months   Other                Control           1.1964962   0.6433427    2.2252574
6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Wealth Q1_6-24 months   Zinc                 Control           1.1415053   0.6620770    1.9681008
6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Wealth Q2_6-24 months   Control              Control           1.0000000   1.0000000    1.0000000
6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Wealth Q2_6-24 months   Other                Control           0.7048611   0.3730823    1.3316877
6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Wealth Q2_6-24 months   Zinc                 Control           0.9990689   0.6045654    1.6510020
6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Wealth Q3_6-24 months   Control              Control           1.0000000   1.0000000    1.0000000
6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Wealth Q3_6-24 months   Other                Control           0.7178411   0.4212148    1.2233563
6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Wealth Q3_6-24 months   Zinc                 Control           0.9887694   0.6562344    1.4898106
6-24 months   ki1135781-COHORTS           GUATEMALA                      Wealth Q4_6-24 months   Control              Control           1.0000000   1.0000000    1.0000000
6-24 months   ki1135781-COHORTS           GUATEMALA                      Wealth Q4_6-24 months   Other                Control           0.8376068   0.6591982    1.0643009
6-24 months   ki1135781-COHORTS           GUATEMALA                      Wealth Q1_6-24 months   Control              Control           1.0000000   1.0000000    1.0000000
6-24 months   ki1135781-COHORTS           GUATEMALA                      Wealth Q1_6-24 months   Other                Control           0.6627907   0.4903546    0.8958650
6-24 months   ki1135781-COHORTS           GUATEMALA                      Wealth Q2_6-24 months   Control              Control           1.0000000   1.0000000    1.0000000
6-24 months   ki1135781-COHORTS           GUATEMALA                      Wealth Q2_6-24 months   Other                Control           0.8226950   0.6192277    1.0930182
6-24 months   ki1135781-COHORTS           GUATEMALA                      Wealth Q3_6-24 months   Control              Control           1.0000000   1.0000000    1.0000000
6-24 months   ki1135781-COHORTS           GUATEMALA                      Wealth Q3_6-24 months   Other                Control           0.7227053   0.4937636    1.0577996
6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Wealth Q4_6-24 months   Control              Control           1.0000000   1.0000000    1.0000000
6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Wealth Q4_6-24 months   LNS                  Control           0.8546292   0.5802593    1.2587323
6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Wealth Q1_6-24 months   Control              Control           1.0000000   1.0000000    1.0000000
6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Wealth Q1_6-24 months   LNS                  Control           1.2472982   0.7897119    1.9700256
6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Wealth Q2_6-24 months   Control              Control           1.0000000   1.0000000    1.0000000
6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Wealth Q2_6-24 months   LNS                  Control           0.9676982   0.6725572    1.3923571
6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Wealth Q3_6-24 months   Control              Control           1.0000000   1.0000000    1.0000000
6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Wealth Q3_6-24 months   LNS                  Control           0.9745277   0.7172066    1.3241710
6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Wealth Q4_6-24 months   Control              Control           1.0000000   1.0000000    1.0000000
6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Wealth Q4_6-24 months   Maternal             Control           1.0406504   0.3989400    2.7145769
6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Wealth Q1_6-24 months   Control              Control           1.0000000   1.0000000    1.0000000
6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Wealth Q1_6-24 months   Maternal             Control           1.1373626   0.5569467    2.3226526
6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Wealth Q2_6-24 months   Control              Control           1.0000000   1.0000000    1.0000000
6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Wealth Q2_6-24 months   Maternal             Control           1.1432130   0.5896984    2.2162786
6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Wealth Q3_6-24 months   Control              Control           1.0000000   1.0000000    1.0000000
6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Wealth Q3_6-24 months   Maternal             Control           1.4238095   0.6965183    2.9105244
6-24 months   ki1148112-LCNI-5            MALAWI                         Wealth Q4_6-24 months   Control              Control           1.0000000   1.0000000    1.0000000
6-24 months   ki1148112-LCNI-5            MALAWI                         Wealth Q4_6-24 months   LNS                  Control           1.2547348   0.8737920    1.8017554
6-24 months   ki1148112-LCNI-5            MALAWI                         Wealth Q4_6-24 months   Other                Control           1.1121857   0.7242261    1.7079708
6-24 months   ki1148112-LCNI-5            MALAWI                         Wealth Q1_6-24 months   Control              Control           1.0000000   1.0000000    1.0000000
6-24 months   ki1148112-LCNI-5            MALAWI                         Wealth Q1_6-24 months   LNS                  Control           1.0336134   0.7205706    1.4826538
6-24 months   ki1148112-LCNI-5            MALAWI                         Wealth Q1_6-24 months   Other                Control           1.0385005   0.6943133    1.5533092
6-24 months   ki1148112-LCNI-5            MALAWI                         Wealth Q2_6-24 months   Control              Control           1.0000000   1.0000000    1.0000000
6-24 months   ki1148112-LCNI-5            MALAWI                         Wealth Q2_6-24 months   LNS                  Control           1.0440341   0.7340418    1.4849388
6-24 months   ki1148112-LCNI-5            MALAWI                         Wealth Q2_6-24 months   Other                Control           1.2009804   0.8033387    1.7954492
6-24 months   ki1148112-LCNI-5            MALAWI                         Wealth Q3_6-24 months   Control              Control           1.0000000   1.0000000    1.0000000
6-24 months   ki1148112-LCNI-5            MALAWI                         Wealth Q3_6-24 months   LNS                  Control           0.9505632   0.6535148    1.3826319
6-24 months   ki1148112-LCNI-5            MALAWI                         Wealth Q3_6-24 months   Other                Control           1.1017157   0.7428088    1.6340375
6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Wealth Q4_6-24 months   Control              Control           1.0000000   1.0000000    1.0000000
6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Wealth Q4_6-24 months   Maternal             Control           0.9871042   0.7811777    1.2473152
6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Wealth Q1_6-24 months   Control              Control           1.0000000   1.0000000    1.0000000
6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Wealth Q1_6-24 months   Maternal             Control           1.1473934   0.9072902    1.4510369
6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Wealth Q2_6-24 months   Control              Control           1.0000000   1.0000000    1.0000000
6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Wealth Q2_6-24 months   Maternal             Control           1.0637930   0.8662497    1.3063848
6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Wealth Q3_6-24 months   Control              Control           1.0000000   1.0000000    1.0000000
6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Wealth Q3_6-24 months   Maternal             Control           0.8985855   0.7205321    1.1206384
6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Wealth Q4_6-24 months   Control              Control           1.0000000   1.0000000    1.0000000
6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Wealth Q4_6-24 months   LNS                  Control           1.0292061   0.7003008    1.5125861
6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Wealth Q4_6-24 months   Other                Control           1.0230863   0.7103661    1.4734736
6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Wealth Q1_6-24 months   Control              Control           1.0000000   1.0000000    1.0000000
6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Wealth Q1_6-24 months   LNS                  Control           0.9078007   0.6614757    1.2458539
6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Wealth Q1_6-24 months   Other                Control           0.9097684   0.6994710    1.1832922
6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Wealth Q2_6-24 months   Control              Control           1.0000000   1.0000000    1.0000000
6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Wealth Q2_6-24 months   LNS                  Control           0.8001623   0.5720995    1.1191405
6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Wealth Q2_6-24 months   Other                Control           0.8396652   0.6223972    1.1327777
6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Wealth Q3_6-24 months   Control              Control           1.0000000   1.0000000    1.0000000
6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Wealth Q3_6-24 months   LNS                  Control           0.7399842   0.4970210    1.1017172
6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Wealth Q3_6-24 months   Other                Control           1.0326822   0.7673002    1.3898506


### Parameter: PAR


agecat        studyid                     country                        intXhhwealth_quart      intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  --------------------------  -----------------------------  ----------------------  -------------------  ---------------  -----------  -----------  -----------
0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Wealth Q1_0-6 months    Control              NA                -0.0656371   -0.2547687    0.1234946
0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Wealth Q2_0-6 months    Control              NA                -0.0653595   -0.3079523    0.1772333
0-6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Wealth Q1_0-6 months    Control              NA                 0.0625000   -0.1720653    0.2970653
0-6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Wealth Q2_0-6 months    Control              NA                -0.1398496   -0.2654325   -0.0142668
0-6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Wealth Q3_0-6 months    Control              NA                 0.0050505   -0.2098390    0.2199401
0-6 months    ki1017093b-PROVIDE          BANGLADESH                     Wealth Q4_0-6 months    Control              NA                -0.0138871   -0.0934861    0.0657118
0-6 months    ki1017093b-PROVIDE          BANGLADESH                     Wealth Q1_0-6 months    Control              NA                 0.0100733   -0.0970070    0.1171535
0-6 months    ki1017093b-PROVIDE          BANGLADESH                     Wealth Q2_0-6 months    Control              NA                -0.0219015   -0.1133424    0.0695394
0-6 months    ki1017093b-PROVIDE          BANGLADESH                     Wealth Q3_0-6 months    Control              NA                 0.0099359   -0.0742540    0.0941258
0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Wealth Q4_0-6 months    Control              NA                 0.0229453   -0.0182404    0.0641309
0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Wealth Q1_0-6 months    Control              NA                -0.0055642   -0.0376645    0.0265362
0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Wealth Q2_0-6 months    Control              NA                -0.0009661   -0.0467755    0.0448433
0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Wealth Q3_0-6 months    Control              NA                -0.0202141   -0.0523644    0.0119362
0-6 months    ki1135781-COHORTS           GUATEMALA                      Wealth Q4_0-6 months    Control              NA                -0.0537255   -0.1382122    0.0307612
0-6 months    ki1135781-COHORTS           GUATEMALA                      Wealth Q1_0-6 months    Control              NA                -0.0460526   -0.1440184    0.0519132
0-6 months    ki1135781-COHORTS           GUATEMALA                      Wealth Q2_0-6 months    Control              NA                 0.1120130   -0.0374787    0.2615047
0-6 months    ki1135781-COHORTS           GUATEMALA                      Wealth Q3_0-6 months    Control              NA                -0.0465672   -0.1936861    0.1005518
0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         Wealth Q4_0-6 months    Control              NA                 0.0394053   -0.0822145    0.1610251
0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         Wealth Q1_0-6 months    Control              NA                -0.1463237   -0.3166340    0.0239867
0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         Wealth Q2_0-6 months    Control              NA                -0.0188294   -0.1566821    0.1190233
0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         Wealth Q3_0-6 months    Control              NA                 0.0707339   -0.0477096    0.1891774
0-6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Wealth Q1_0-6 months    Control              NA                 0.1571429   -0.0952031    0.4094889
0-6 months    ki1148112-LCNI-5            MALAWI                         Wealth Q4_0-6 months    Control              NA                -0.0327576   -0.1931367    0.1276216
0-6 months    ki1148112-LCNI-5            MALAWI                         Wealth Q1_0-6 months    Control              NA                -0.0147059   -0.2122437    0.1828319
0-6 months    ki1148112-LCNI-5            MALAWI                         Wealth Q2_0-6 months    Control              NA                 0.0334821   -0.1912691    0.2582334
0-6 months    ki1148112-LCNI-5            MALAWI                         Wealth Q3_0-6 months    Control              NA                -0.0096154   -0.2472647    0.2280340
0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Wealth Q4_0-6 months    Control              NA                -0.0074346   -0.0198649    0.0049958
0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Wealth Q1_0-6 months    Control              NA                -0.0273323   -0.0447825   -0.0098820
0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Wealth Q2_0-6 months    Control              NA                -0.0292363   -0.0449676   -0.0135051
0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Wealth Q3_0-6 months    Control              NA                -0.0248177   -0.0391321   -0.0105032
0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     Wealth Q4_0-6 months    Control              NA                -0.0089422   -0.0550750    0.0371907
0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     Wealth Q1_0-6 months    Control              NA                 0.0008070   -0.0526417    0.0542557
0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     Wealth Q2_0-6 months    Control              NA                 0.0383550   -0.0112964    0.0880064
0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     Wealth Q3_0-6 months    Control              NA                 0.0456323    0.0006066    0.0906581
6-24 months   iLiNS_DYADM_LNS             MALAWI                         Wealth Q4_6-24 months   Control              NA                 0.0011792   -0.0850760    0.0874345
6-24 months   iLiNS_DYADM_LNS             MALAWI                         Wealth Q1_6-24 months   Control              NA                -0.0511696   -0.1430857    0.0407466
6-24 months   iLiNS_DYADM_LNS             MALAWI                         Wealth Q2_6-24 months   Control              NA                 0.0229501   -0.0543285    0.1002287
6-24 months   iLiNS_DYADM_LNS             MALAWI                         Wealth Q3_6-24 months   Control              NA                 0.0543478   -0.0318861    0.1405818
6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Wealth Q4_6-24 months   Control              NA                -0.0067418   -0.0493876    0.0359040
6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Wealth Q1_6-24 months   Control              NA                -0.0121821   -0.0606993    0.0363351
6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Wealth Q2_6-24 months   Control              NA                -0.0427623   -0.0949031    0.0093785
6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Wealth Q3_6-24 months   Control              NA                 0.0089076   -0.0370173    0.0548325
6-24 months   ki1000111-WASH-Kenya        KENYA                          Wealth Q4_6-24 months   Control              NA                -0.0077691   -0.0359079    0.0203697
6-24 months   ki1000111-WASH-Kenya        KENYA                          Wealth Q1_6-24 months   Control              NA                 0.0207653   -0.0093708    0.0509015
6-24 months   ki1000111-WASH-Kenya        KENYA                          Wealth Q2_6-24 months   Control              NA                 0.0019239   -0.0272374    0.0310852
6-24 months   ki1000111-WASH-Kenya        KENYA                          Wealth Q3_6-24 months   Control              NA                -0.0074840   -0.0355544    0.0205864
6-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Wealth Q4_6-24 months   Control              NA                -0.0225768   -0.0435081   -0.0016455
6-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Wealth Q1_6-24 months   Control              NA                -0.0344655   -0.0621952   -0.0067358
6-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Wealth Q2_6-24 months   Control              NA                -0.0404762   -0.0683524   -0.0126000
6-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Wealth Q3_6-24 months   Control              NA                -0.0113605   -0.0281404    0.0054194
6-24 months   ki1017093b-PROVIDE          BANGLADESH                     Wealth Q4_6-24 months   Control              NA                 0.0222874   -0.0370506    0.0816254
6-24 months   ki1017093b-PROVIDE          BANGLADESH                     Wealth Q1_6-24 months   Control              NA                -0.1429872   -0.3246604    0.0386859
6-24 months   ki1017093b-PROVIDE          BANGLADESH                     Wealth Q2_6-24 months   Control              NA                -0.0113924   -0.1237333    0.1009485
6-24 months   ki1017093b-PROVIDE          BANGLADESH                     Wealth Q3_6-24 months   Control              NA                -0.0374625   -0.1580559    0.0831308
6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Wealth Q4_6-24 months   Control              NA                 0.0180095   -0.0512483    0.0872672
6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Wealth Q1_6-24 months   Control              NA                 0.0144898   -0.0344597    0.0634392
6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Wealth Q2_6-24 months   Control              NA                -0.0162888   -0.0898747    0.0572971
6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Wealth Q3_6-24 months   Control              NA                -0.0163284   -0.0750514    0.0423946
6-24 months   ki1135781-COHORTS           GUATEMALA                      Wealth Q4_6-24 months   Control              NA                -0.0577508   -0.1359160    0.0204145
6-24 months   ki1135781-COHORTS           GUATEMALA                      Wealth Q1_6-24 months   Control              NA                -0.1507472   -0.2560389   -0.0454556
6-24 months   ki1135781-COHORTS           GUATEMALA                      Wealth Q2_6-24 months   Control              NA                -0.0686813   -0.1677425    0.0303799
6-24 months   ki1135781-COHORTS           GUATEMALA                      Wealth Q3_6-24 months   Control              NA                -0.1068503   -0.2315935    0.0178929
6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Wealth Q4_6-24 months   Control              NA                -0.0417569   -0.1490432    0.0655293
6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Wealth Q1_6-24 months   Control              NA                 0.0777378   -0.0696509    0.2251265
6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Wealth Q2_6-24 months   Control              NA                -0.0123810   -0.1511226    0.1263607
6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Wealth Q3_6-24 months   Control              NA                -0.0101390   -0.1315706    0.1112926
6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Wealth Q4_6-24 months   Control              NA                 0.0042808   -0.0984610    0.1070226
6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Wealth Q1_6-24 months   Control              NA                 0.0218723   -0.0959418    0.1396863
6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Wealth Q2_6-24 months   Control              NA                 0.0181847   -0.0705562    0.1069256
6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Wealth Q3_6-24 months   Control              NA                 0.0512525   -0.0445969    0.1471019
6-24 months   ki1148112-LCNI-5            MALAWI                         Wealth Q4_6-24 months   Control              NA                 0.0677720   -0.0512669    0.1868109
6-24 months   ki1148112-LCNI-5            MALAWI                         Wealth Q1_6-24 months   Control              NA                 0.0138164   -0.1201750    0.1478079
6-24 months   ki1148112-LCNI-5            MALAWI                         Wealth Q2_6-24 months   Control              NA                 0.0306719   -0.0878709    0.1492147
6-24 months   ki1148112-LCNI-5            MALAWI                         Wealth Q3_6-24 months   Control              NA                 0.0007459   -0.1584237    0.1599154
6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Wealth Q4_6-24 months   Control              NA                -0.0008909   -0.0169507    0.0151688
6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Wealth Q1_6-24 months   Control              NA                 0.0154704   -0.0104959    0.0414366
6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Wealth Q2_6-24 months   Control              NA                 0.0063147   -0.0146088    0.0272382
6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Wealth Q3_6-24 months   Control              NA                -0.0095253   -0.0293302    0.0102795
6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Wealth Q4_6-24 months   Control              NA                 0.0043183   -0.0524215    0.0610580
6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Wealth Q1_6-24 months   Control              NA                -0.0234935   -0.0847599    0.0377728
6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Wealth Q2_6-24 months   Control              NA                -0.0434399   -0.1092125    0.0223326
6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Wealth Q3_6-24 months   Control              NA                -0.0136126   -0.0636985    0.0364732


### Parameter: PAF


agecat        studyid                     country                        intXhhwealth_quart      intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  --------------------------  -----------------------------  ----------------------  -------------------  ---------------  -----------  -----------  -----------
0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Wealth Q1_0-6 months    Control              NA                -0.4415584   -2.4568163    0.3988426
0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Wealth Q2_0-6 months    Control              NA                -0.4166667   -3.1879439    0.5207805
0-6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Wealth Q1_0-6 months    Control              NA                 0.2000000   -1.0339627    0.6853433
0-6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Wealth Q2_0-6 months    Control              NA                -0.6118421   -1.2583007   -0.1504380
0-6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Wealth Q3_0-6 months    Control              NA                 0.0222222   -1.5714232    0.6282022
0-6 months    ki1017093b-PROVIDE          BANGLADESH                     Wealth Q4_0-6 months    Control              NA                -0.1220605   -1.0906457    0.3977843
0-6 months    ki1017093b-PROVIDE          BANGLADESH                     Wealth Q1_0-6 months    Control              NA                 0.0448980   -0.5741035    0.4204829
0-6 months    ki1017093b-PROVIDE          BANGLADESH                     Wealth Q2_0-6 months    Control              NA                -0.1996904   -1.3968734    0.3995273
0-6 months    ki1017093b-PROVIDE          BANGLADESH                     Wealth Q3_0-6 months    Control              NA                 0.0883191   -1.0699994    0.5984723
0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Wealth Q4_0-6 months    Control              NA                 0.2431319   -0.3403880    0.5726242
0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Wealth Q1_0-6 months    Control              NA                -0.0983982   -0.8404759    0.3444747
0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Wealth Q2_0-6 months    Control              NA                -0.0116191   -0.7439723    0.4131941
0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Wealth Q3_0-6 months    Control              NA                -0.3753086   -1.1039886    0.1010057
0-6 months    ki1135781-COHORTS           GUATEMALA                      Wealth Q4_0-6 months    Control              NA                -0.2066365   -0.5781006    0.0773899
0-6 months    ki1135781-COHORTS           GUATEMALA                      Wealth Q1_0-6 months    Control              NA                -0.1228070   -0.4182254    0.1110753
0-6 months    ki1135781-COHORTS           GUATEMALA                      Wealth Q2_0-6 months    Control              NA                 0.3301435   -0.2829827    0.6502621
0-6 months    ki1135781-COHORTS           GUATEMALA                      Wealth Q3_0-6 months    Control              NA                -0.1485714   -0.7285964    0.2368280
0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         Wealth Q4_0-6 months    Control              NA                 0.1307798   -0.3826048    0.4535360
0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         Wealth Q1_0-6 months    Control              NA                -0.5604472   -1.3722977   -0.0264292
0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         Wealth Q2_0-6 months    Control              NA                -0.0582456   -0.5833897    0.2927302
0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         Wealth Q3_0-6 months    Control              NA                 0.2564103   -0.3220646    0.5817710
0-6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Wealth Q1_0-6 months    Control              NA                 0.5238095   -1.5246903    0.9101841
0-6 months    ki1148112-LCNI-5            MALAWI                         Wealth Q4_0-6 months    Control              NA                -0.1039698   -0.7507076    0.3038534
0-6 months    ki1148112-LCNI-5            MALAWI                         Wealth Q1_0-6 months    Control              NA                -0.0434783   -0.8262443    0.4037781
0-6 months    ki1148112-LCNI-5            MALAWI                         Wealth Q2_0-6 months    Control              NA                 0.0857143   -0.7156734    0.5127753
0-6 months    ki1148112-LCNI-5            MALAWI                         Wealth Q3_0-6 months    Control              NA                -0.0256410   -0.9025936    0.4471024
0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Wealth Q4_0-6 months    Control              NA                -0.0394981   -0.1077686    0.0245650
0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Wealth Q1_0-6 months    Control              NA                -0.0866384   -0.1429349   -0.0331149
0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Wealth Q2_0-6 months    Control              NA                -0.1051168   -0.1630174   -0.0500987
0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Wealth Q3_0-6 months    Control              NA                -0.1004839   -0.1600109   -0.0440115
0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     Wealth Q4_0-6 months    Control              NA                -0.0436034   -0.2950030    0.1589919
0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     Wealth Q1_0-6 months    Control              NA                 0.0026482   -0.1891291    0.1634965
0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     Wealth Q2_0-6 months    Control              NA                 0.1492454   -0.0676094    0.3220522
0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     Wealth Q3_0-6 months    Control              NA                 0.1920691   -0.0210982    0.3607350
6-24 months   iLiNS_DYADM_LNS             MALAWI                         Wealth Q4_6-24 months   Control              NA                 0.0062500   -0.5742057    0.3726747
6-24 months   iLiNS_DYADM_LNS             MALAWI                         Wealth Q1_6-24 months   Control              NA                -0.2991453   -0.9490217    0.1340381
6-24 months   iLiNS_DYADM_LNS             MALAWI                         Wealth Q2_6-24 months   Control              NA                 0.0961718   -0.2920237    0.3677319
6-24 months   iLiNS_DYADM_LNS             MALAWI                         Wealth Q3_6-24 months   Control              NA                 0.2380952   -0.2412643    0.5323326
6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Wealth Q4_6-24 months   Control              NA                -0.0306619   -0.2440503    0.1461247
6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Wealth Q1_6-24 months   Control              NA                -0.0245626   -0.1272204    0.0687460
6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Wealth Q2_6-24 months   Control              NA                -0.0979009   -0.2241403    0.0153202
6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Wealth Q3_6-24 months   Control              NA                 0.0245787   -0.1107433    0.1434144
6-24 months   ki1000111-WASH-Kenya        KENYA                          Wealth Q4_6-24 months   Control              NA                -0.0368238   -0.1791304    0.0883081
6-24 months   ki1000111-WASH-Kenya        KENYA                          Wealth Q1_6-24 months   Control              NA                 0.0681944   -0.0361962    0.1620682
6-24 months   ki1000111-WASH-Kenya        KENYA                          Wealth Q2_6-24 months   Control              NA                 0.0071816   -0.1078609    0.1102778
6-24 months   ki1000111-WASH-Kenya        KENYA                          Wealth Q3_6-24 months   Control              NA                -0.0320715   -0.1596393    0.0814631
6-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Wealth Q4_6-24 months   Control              NA                -0.0461645   -0.0906131   -0.0035275
6-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Wealth Q1_6-24 months   Control              NA                -0.0478170   -0.0883056   -0.0088348
6-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Wealth Q2_6-24 months   Control              NA                -0.0714286   -0.1241325   -0.0211957
6-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Wealth Q3_6-24 months   Control              NA                -0.0180976   -0.0454375    0.0085274
6-24 months   ki1017093b-PROVIDE          BANGLADESH                     Wealth Q4_6-24 months   Control              NA                 0.4086022   -2.4515103    0.8986671
6-24 months   ki1017093b-PROVIDE          BANGLADESH                     Wealth Q1_6-24 months   Control              NA                -0.5814815   -1.5254338    0.0096420
6-24 months   ki1017093b-PROVIDE          BANGLADESH                     Wealth Q2_6-24 months   Control              NA                -0.1285714   -2.4627936    0.6321833
6-24 months   ki1017093b-PROVIDE          BANGLADESH                     Wealth Q3_6-24 months   Control              NA                -0.3787879   -2.2999488    0.4239135
6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Wealth Q4_6-24 months   Control              NA                 0.0826087   -0.2967749    0.3510001
6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Wealth Q1_6-24 months   Control              NA                 0.1074985   -0.3398874    0.4055030
6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Wealth Q2_6-24 months   Control              NA                -0.0854573   -0.5487902    0.2392659
6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Wealth Q3_6-24 months   Control              NA                -0.0809470   -0.4148153    0.1741349
6-24 months   ki1135781-COHORTS           GUATEMALA                      Wealth Q4_6-24 months   Control              NA                -0.0987013   -0.2420082    0.0280704
6-24 months   ki1135781-COHORTS           GUATEMALA                      Wealth Q1_6-24 months   Control              NA                -0.2180451   -0.3965112   -0.0623860
6-24 months   ki1135781-COHORTS           GUATEMALA                      Wealth Q2_6-24 months   Control              NA                -0.1008065   -0.2591709    0.0376407
6-24 months   ki1135781-COHORTS           GUATEMALA                      Wealth Q3_6-24 months   Control              NA                -0.1875817   -0.4356838    0.0176456
6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Wealth Q4_6-24 months   Control              NA                -0.1285185   -0.5121915    0.1578090
6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Wealth Q1_6-24 months   Control              NA                 0.1771403   -0.2379697    0.4530576
6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Wealth Q2_6-24 months   Control              NA                -0.0281385   -0.3971793    0.2434265
6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Wealth Q3_6-24 months   Control              NA                -0.0211041   -0.3079089    0.2028087
6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Wealth Q4_6-24 months   Control              NA                 0.0223214   -0.6910079    0.4347422
6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Wealth Q1_6-24 months   Control              NA                 0.0896057   -0.5464661    0.4640570
6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Wealth Q2_6-24 months   Control              NA                 0.0777552   -0.3911131    0.3885937
6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Wealth Q3_6-24 months   Control              NA                 0.2276215   -0.3351096    0.5531688
6-24 months   ki1148112-LCNI-5            MALAWI                         Wealth Q4_6-24 months   Control              NA                 0.1334694   -0.1365009    0.3393095
6-24 months   ki1148112-LCNI-5            MALAWI                         Wealth Q1_6-24 months   Control              NA                 0.0262664   -0.2649307    0.2504276
6-24 months   ki1148112-LCNI-5            MALAWI                         Wealth Q2_6-24 months   Control              NA                 0.0589314   -0.1989683    0.2613566
6-24 months   ki1148112-LCNI-5            MALAWI                         Wealth Q3_6-24 months   Control              NA                 0.0013582   -0.3349466    0.2529399
6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Wealth Q4_6-24 months   Control              NA                -0.0065480   -0.1317597    0.1048110
6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Wealth Q1_6-24 months   Control              NA                 0.0731919   -0.0594943    0.1892612
6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Wealth Q2_6-24 months   Control              NA                 0.0317078   -0.0793683    0.1313532
6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Wealth Q3_6-24 months   Control              NA                -0.0553265   -0.1760642    0.0530160
6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Wealth Q4_6-24 months   Control              NA                 0.0184361   -0.2561515    0.2330003
6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Wealth Q1_6-24 months   Control              NA                -0.0708535   -0.2731489    0.0992985
6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Wealth Q2_6-24 months   Control              NA                -0.1512063   -0.4034639    0.0557108
6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Wealth Q3_6-24 months   Control              NA                -0.0550352   -0.2791121    0.1297875
