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
* intXhhwealth_quart

## Data Summary

agecat      studyid                     country                        intXhhwealth_quart     sstunted   n_cell       n
----------  --------------------------  -----------------------------  --------------------  ---------  -------  ------
Birth       iLiNS_DYADM_LNS             MALAWI                         Wealth Q1_Birth               0        0       1
Birth       iLiNS_DYADM_LNS             MALAWI                         Wealth Q1_Birth               1        1       1
Birth       ki1000125-AgaKhanUniv       PAKISTAN                       Wealth Q1_Birth               0        2       2
Birth       ki1000125-AgaKhanUniv       PAKISTAN                       Wealth Q1_Birth               1        0       2
Birth       ki1000125-AgaKhanUniv       PAKISTAN                       Wealth Q2_Birth               0        2       2
Birth       ki1000125-AgaKhanUniv       PAKISTAN                       Wealth Q2_Birth               1        0       2
Birth       ki1135781-COHORTS           GUATEMALA                      Wealth Q4_Birth               0      291     293
Birth       ki1135781-COHORTS           GUATEMALA                      Wealth Q4_Birth               1        2     293
Birth       ki1135781-COHORTS           GUATEMALA                      Wealth Q1_Birth               0      157     157
Birth       ki1135781-COHORTS           GUATEMALA                      Wealth Q1_Birth               1        0     157
Birth       ki1135781-COHORTS           GUATEMALA                      Wealth Q2_Birth               0      158     161
Birth       ki1135781-COHORTS           GUATEMALA                      Wealth Q2_Birth               1        3     161
Birth       ki1135781-COHORTS           GUATEMALA                      Wealth Q3_Birth               0      201     205
Birth       ki1135781-COHORTS           GUATEMALA                      Wealth Q3_Birth               1        4     205
Birth       ki1148112-iLiNS-DYAD-M      MALAWI                         Wealth Q1_Birth               0        0       1
Birth       ki1148112-iLiNS-DYAD-M      MALAWI                         Wealth Q1_Birth               1        1       1
Birth       kiGH5241-JiVitA-3           BANGLADESH                     Wealth Q4_Birth               0     7714    8302
Birth       kiGH5241-JiVitA-3           BANGLADESH                     Wealth Q4_Birth               1      588    8302
Birth       kiGH5241-JiVitA-3           BANGLADESH                     Wealth Q1_Birth               0     9084   10404
Birth       kiGH5241-JiVitA-3           BANGLADESH                     Wealth Q1_Birth               1     1320   10404
Birth       kiGH5241-JiVitA-3           BANGLADESH                     Wealth Q2_Birth               0     9534   10692
Birth       kiGH5241-JiVitA-3           BANGLADESH                     Wealth Q2_Birth               1     1158   10692
Birth       kiGH5241-JiVitA-3           BANGLADESH                     Wealth Q3_Birth               0     8774    9790
Birth       kiGH5241-JiVitA-3           BANGLADESH                     Wealth Q3_Birth               1     1016    9790
Birth       kiGH5241-JiVitA-4           BANGLADESH                     Wealth Q4_Birth               0      334     366
Birth       kiGH5241-JiVitA-4           BANGLADESH                     Wealth Q4_Birth               1       32     366
Birth       kiGH5241-JiVitA-4           BANGLADESH                     Wealth Q1_Birth               0      374     418
Birth       kiGH5241-JiVitA-4           BANGLADESH                     Wealth Q1_Birth               1       44     418
Birth       kiGH5241-JiVitA-4           BANGLADESH                     Wealth Q2_Birth               0      414     438
Birth       kiGH5241-JiVitA-4           BANGLADESH                     Wealth Q2_Birth               1       24     438
Birth       kiGH5241-JiVitA-4           BANGLADESH                     Wealth Q3_Birth               0      394     422
Birth       kiGH5241-JiVitA-4           BANGLADESH                     Wealth Q3_Birth               1       28     422
6 months    iLiNS_DYADM_LNS             MALAWI                         Wealth Q4_6 months            0       78      85
6 months    iLiNS_DYADM_LNS             MALAWI                         Wealth Q4_6 months            1        7      85
6 months    iLiNS_DYADM_LNS             MALAWI                         Wealth Q1_6 months            0      101     108
6 months    iLiNS_DYADM_LNS             MALAWI                         Wealth Q1_6 months            1        7     108
6 months    iLiNS_DYADM_LNS             MALAWI                         Wealth Q2_6 months            0      129     132
6 months    iLiNS_DYADM_LNS             MALAWI                         Wealth Q2_6 months            1        3     132
6 months    iLiNS_DYADM_LNS             MALAWI                         Wealth Q3_6 months            0      153     163
6 months    iLiNS_DYADM_LNS             MALAWI                         Wealth Q3_6 months            1       10     163
6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Wealth Q4_6 months            0      146     147
6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Wealth Q4_6 months            1        1     147
6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Wealth Q1_6 months            0      201     213
6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Wealth Q1_6 months            1       12     213
6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Wealth Q2_6 months            0      143     155
6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Wealth Q2_6 months            1       12     155
6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Wealth Q3_6 months            0      164     167
6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Wealth Q3_6 months            1        3     167
6 months    ki1000111-WASH-Kenya        KENYA                          Wealth Q4_6 months            0       13      13
6 months    ki1000111-WASH-Kenya        KENYA                          Wealth Q4_6 months            1        0      13
6 months    ki1000111-WASH-Kenya        KENYA                          Wealth Q1_6 months            0       20      21
6 months    ki1000111-WASH-Kenya        KENYA                          Wealth Q1_6 months            1        1      21
6 months    ki1000111-WASH-Kenya        KENYA                          Wealth Q2_6 months            0       13      13
6 months    ki1000111-WASH-Kenya        KENYA                          Wealth Q2_6 months            1        0      13
6 months    ki1000111-WASH-Kenya        KENYA                          Wealth Q3_6 months            0       25      27
6 months    ki1000111-WASH-Kenya        KENYA                          Wealth Q3_6 months            1        2      27
6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Wealth Q4_6 months            0       55      61
6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Wealth Q4_6 months            1        6      61
6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Wealth Q1_6 months            0       63      70
6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Wealth Q1_6 months            1        7      70
6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Wealth Q2_6 months            0       69      74
6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Wealth Q2_6 months            1        5      74
6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Wealth Q3_6 months            0       56      62
6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Wealth Q3_6 months            1        6      62
6 months    ki1017093b-PROVIDE          BANGLADESH                     Wealth Q4_6 months            0       13      13
6 months    ki1017093b-PROVIDE          BANGLADESH                     Wealth Q4_6 months            1        0      13
6 months    ki1017093b-PROVIDE          BANGLADESH                     Wealth Q1_6 months            0       15      16
6 months    ki1017093b-PROVIDE          BANGLADESH                     Wealth Q1_6 months            1        1      16
6 months    ki1017093b-PROVIDE          BANGLADESH                     Wealth Q2_6 months            0        3       3
6 months    ki1017093b-PROVIDE          BANGLADESH                     Wealth Q2_6 months            1        0       3
6 months    ki1017093b-PROVIDE          BANGLADESH                     Wealth Q3_6 months            0       13      13
6 months    ki1017093b-PROVIDE          BANGLADESH                     Wealth Q3_6 months            1        0      13
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Wealth Q4_6 months            0      407     419
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Wealth Q4_6 months            1       12     419
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Wealth Q1_6 months            0      499     506
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Wealth Q1_6 months            1        7     506
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Wealth Q2_6 months            0      341     344
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Wealth Q2_6 months            1        3     344
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Wealth Q3_6 months            0      430     432
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Wealth Q3_6 months            1        2     432
6 months    ki1135781-COHORTS           GUATEMALA                      Wealth Q4_6 months            0      301     327
6 months    ki1135781-COHORTS           GUATEMALA                      Wealth Q4_6 months            1       26     327
6 months    ki1135781-COHORTS           GUATEMALA                      Wealth Q1_6 months            0      140     168
6 months    ki1135781-COHORTS           GUATEMALA                      Wealth Q1_6 months            1       28     168
6 months    ki1135781-COHORTS           GUATEMALA                      Wealth Q2_6 months            0      163     193
6 months    ki1135781-COHORTS           GUATEMALA                      Wealth Q2_6 months            1       30     193
6 months    ki1135781-COHORTS           GUATEMALA                      Wealth Q3_6 months            0      174     208
6 months    ki1135781-COHORTS           GUATEMALA                      Wealth Q3_6 months            1       34     208
6 months    ki1148112-iLiNS-DOSE        MALAWI                         Wealth Q4_6 months            0      323     350
6 months    ki1148112-iLiNS-DOSE        MALAWI                         Wealth Q4_6 months            1       27     350
6 months    ki1148112-iLiNS-DOSE        MALAWI                         Wealth Q1_6 months            0      323     350
6 months    ki1148112-iLiNS-DOSE        MALAWI                         Wealth Q1_6 months            1       27     350
6 months    ki1148112-iLiNS-DOSE        MALAWI                         Wealth Q2_6 months            0      332     350
6 months    ki1148112-iLiNS-DOSE        MALAWI                         Wealth Q2_6 months            1       18     350
6 months    ki1148112-iLiNS-DOSE        MALAWI                         Wealth Q3_6 months            0      328     349
6 months    ki1148112-iLiNS-DOSE        MALAWI                         Wealth Q3_6 months            1       21     349
6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Wealth Q4_6 months            0      106     115
6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Wealth Q4_6 months            1        9     115
6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Wealth Q1_6 months            0      167     177
6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Wealth Q1_6 months            1       10     177
6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Wealth Q2_6 months            0      182     187
6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Wealth Q2_6 months            1        5     187
6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Wealth Q3_6 months            0      235     251
6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Wealth Q3_6 months            1       16     251
6 months    ki1148112-LCNI-5            MALAWI                         Wealth Q4_6 months            0      201     217
6 months    ki1148112-LCNI-5            MALAWI                         Wealth Q4_6 months            1       16     217
6 months    ki1148112-LCNI-5            MALAWI                         Wealth Q1_6 months            0      182     203
6 months    ki1148112-LCNI-5            MALAWI                         Wealth Q1_6 months            1       21     203
6 months    ki1148112-LCNI-5            MALAWI                         Wealth Q2_6 months            0      184     199
6 months    ki1148112-LCNI-5            MALAWI                         Wealth Q2_6 months            1       15     199
6 months    ki1148112-LCNI-5            MALAWI                         Wealth Q3_6 months            0      184     197
6 months    ki1148112-LCNI-5            MALAWI                         Wealth Q3_6 months            1       13     197
6 months    kiGH5241-JiVitA-3           BANGLADESH                     Wealth Q4_6 months            0     9052    9447
6 months    kiGH5241-JiVitA-3           BANGLADESH                     Wealth Q4_6 months            1      395    9447
6 months    kiGH5241-JiVitA-3           BANGLADESH                     Wealth Q1_6 months            0     6787    7369
6 months    kiGH5241-JiVitA-3           BANGLADESH                     Wealth Q1_6 months            1      582    7369
6 months    kiGH5241-JiVitA-3           BANGLADESH                     Wealth Q2_6 months            0     7717    8269
6 months    kiGH5241-JiVitA-3           BANGLADESH                     Wealth Q2_6 months            1      552    8269
6 months    kiGH5241-JiVitA-3           BANGLADESH                     Wealth Q3_6 months            0     7882    8382
6 months    kiGH5241-JiVitA-3           BANGLADESH                     Wealth Q3_6 months            1      500    8382
6 months    kiGH5241-JiVitA-4           BANGLADESH                     Wealth Q4_6 months            0     2133    2211
6 months    kiGH5241-JiVitA-4           BANGLADESH                     Wealth Q4_6 months            1       78    2211
6 months    kiGH5241-JiVitA-4           BANGLADESH                     Wealth Q1_6 months            0     2128    2326
6 months    kiGH5241-JiVitA-4           BANGLADESH                     Wealth Q1_6 months            1      198    2326
6 months    kiGH5241-JiVitA-4           BANGLADESH                     Wealth Q2_6 months            0     2210    2358
6 months    kiGH5241-JiVitA-4           BANGLADESH                     Wealth Q2_6 months            1      148    2358
6 months    kiGH5241-JiVitA-4           BANGLADESH                     Wealth Q3_6 months            0     2376    2480
6 months    kiGH5241-JiVitA-4           BANGLADESH                     Wealth Q3_6 months            1      104    2480
24 months   iLiNS_DYADM_LNS             MALAWI                         Wealth Q4_24 months           0        5       6
24 months   iLiNS_DYADM_LNS             MALAWI                         Wealth Q4_24 months           1        1       6
24 months   iLiNS_DYADM_LNS             MALAWI                         Wealth Q1_24 months           0        5       6
24 months   iLiNS_DYADM_LNS             MALAWI                         Wealth Q1_24 months           1        1       6
24 months   iLiNS_DYADM_LNS             MALAWI                         Wealth Q2_24 months           0        9       9
24 months   iLiNS_DYADM_LNS             MALAWI                         Wealth Q2_24 months           1        0       9
24 months   iLiNS_DYADM_LNS             MALAWI                         Wealth Q3_24 months           0       12      13
24 months   iLiNS_DYADM_LNS             MALAWI                         Wealth Q3_24 months           1        1      13
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Wealth Q4_24 months           0      296     315
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Wealth Q4_24 months           1       19     315
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Wealth Q1_24 months           0      220     267
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Wealth Q1_24 months           1       47     267
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Wealth Q2_24 months           0      233     269
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Wealth Q2_24 months           1       36     269
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Wealth Q3_24 months           0      299     336
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Wealth Q3_24 months           1       37     336
24 months   ki1000111-WASH-Kenya        KENYA                          Wealth Q4_24 months           0      524     561
24 months   ki1000111-WASH-Kenya        KENYA                          Wealth Q4_24 months           1       37     561
24 months   ki1000111-WASH-Kenya        KENYA                          Wealth Q1_24 months           0      509     578
24 months   ki1000111-WASH-Kenya        KENYA                          Wealth Q1_24 months           1       69     578
24 months   ki1000111-WASH-Kenya        KENYA                          Wealth Q2_24 months           0      532     576
24 months   ki1000111-WASH-Kenya        KENYA                          Wealth Q2_24 months           1       44     576
24 months   ki1000111-WASH-Kenya        KENYA                          Wealth Q3_24 months           0      516     548
24 months   ki1000111-WASH-Kenya        KENYA                          Wealth Q3_24 months           1       32     548
24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Wealth Q3_24 months           0        1       1
24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Wealth Q3_24 months           1        0       1
24 months   ki1017093b-PROVIDE          BANGLADESH                     Wealth Q4_24 months           0        1       1
24 months   ki1017093b-PROVIDE          BANGLADESH                     Wealth Q4_24 months           1        0       1
24 months   ki1017093b-PROVIDE          BANGLADESH                     Wealth Q3_24 months           0        1       1
24 months   ki1017093b-PROVIDE          BANGLADESH                     Wealth Q3_24 months           1        0       1
24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Wealth Q4_24 months           0        0       1
24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Wealth Q4_24 months           1        1       1
24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Wealth Q1_24 months           0        2       2
24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Wealth Q1_24 months           1        0       2
24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Wealth Q2_24 months           0        1       1
24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Wealth Q2_24 months           1        0       1
24 months   ki1135781-COHORTS           GUATEMALA                      Wealth Q4_24 months           0       94     141
24 months   ki1135781-COHORTS           GUATEMALA                      Wealth Q4_24 months           1       47     141
24 months   ki1135781-COHORTS           GUATEMALA                      Wealth Q1_24 months           0       30      62
24 months   ki1135781-COHORTS           GUATEMALA                      Wealth Q1_24 months           1       32      62
24 months   ki1135781-COHORTS           GUATEMALA                      Wealth Q2_24 months           0       35      61
24 months   ki1135781-COHORTS           GUATEMALA                      Wealth Q2_24 months           1       26      61
24 months   ki1135781-COHORTS           GUATEMALA                      Wealth Q3_24 months           0       23      47
24 months   ki1135781-COHORTS           GUATEMALA                      Wealth Q3_24 months           1       24      47
24 months   ki1148112-iLiNS-DOSE        MALAWI                         Wealth Q4_24 months           0      168     199
24 months   ki1148112-iLiNS-DOSE        MALAWI                         Wealth Q4_24 months           1       31     199
24 months   ki1148112-iLiNS-DOSE        MALAWI                         Wealth Q1_24 months           0      123     149
24 months   ki1148112-iLiNS-DOSE        MALAWI                         Wealth Q1_24 months           1       26     149
24 months   ki1148112-iLiNS-DOSE        MALAWI                         Wealth Q2_24 months           0      148     191
24 months   ki1148112-iLiNS-DOSE        MALAWI                         Wealth Q2_24 months           1       43     191
24 months   ki1148112-iLiNS-DOSE        MALAWI                         Wealth Q3_24 months           0      155     185
24 months   ki1148112-iLiNS-DOSE        MALAWI                         Wealth Q3_24 months           1       30     185
24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Wealth Q4_24 months           0        5       6
24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Wealth Q4_24 months           1        1       6
24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Wealth Q1_24 months           0       12      14
24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Wealth Q1_24 months           1        2      14
24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Wealth Q2_24 months           0       20      21
24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Wealth Q2_24 months           1        1      21
24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Wealth Q3_24 months           0       18      23
24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Wealth Q3_24 months           1        5      23
24 months   ki1148112-LCNI-5            MALAWI                         Wealth Q4_24 months           0       92     103
24 months   ki1148112-LCNI-5            MALAWI                         Wealth Q4_24 months           1       11     103
24 months   ki1148112-LCNI-5            MALAWI                         Wealth Q1_24 months           0       77      88
24 months   ki1148112-LCNI-5            MALAWI                         Wealth Q1_24 months           1       11      88
24 months   ki1148112-LCNI-5            MALAWI                         Wealth Q2_24 months           0       89      99
24 months   ki1148112-LCNI-5            MALAWI                         Wealth Q2_24 months           1       10      99
24 months   ki1148112-LCNI-5            MALAWI                         Wealth Q3_24 months           0       85      92
24 months   ki1148112-LCNI-5            MALAWI                         Wealth Q3_24 months           1        7      92
24 months   kiGH5241-JiVitA-3           BANGLADESH                     Wealth Q4_24 months           0       49      66
24 months   kiGH5241-JiVitA-3           BANGLADESH                     Wealth Q4_24 months           1       17      66
24 months   kiGH5241-JiVitA-3           BANGLADESH                     Wealth Q1_24 months           0       20      29
24 months   kiGH5241-JiVitA-3           BANGLADESH                     Wealth Q1_24 months           1        9      29
24 months   kiGH5241-JiVitA-3           BANGLADESH                     Wealth Q2_24 months           0       22      27
24 months   kiGH5241-JiVitA-3           BANGLADESH                     Wealth Q2_24 months           1        5      27
24 months   kiGH5241-JiVitA-3           BANGLADESH                     Wealth Q3_24 months           0       27      36
24 months   kiGH5241-JiVitA-3           BANGLADESH                     Wealth Q3_24 months           1        9      36
24 months   kiGH5241-JiVitA-4           BANGLADESH                     Wealth Q4_24 months           0      461     486
24 months   kiGH5241-JiVitA-4           BANGLADESH                     Wealth Q4_24 months           1       25     486
24 months   kiGH5241-JiVitA-4           BANGLADESH                     Wealth Q1_24 months           0      474     560
24 months   kiGH5241-JiVitA-4           BANGLADESH                     Wealth Q1_24 months           1       86     560
24 months   kiGH5241-JiVitA-4           BANGLADESH                     Wealth Q2_24 months           0      427     473
24 months   kiGH5241-JiVitA-4           BANGLADESH                     Wealth Q2_24 months           1       46     473
24 months   kiGH5241-JiVitA-4           BANGLADESH                     Wealth Q3_24 months           0      440     482
24 months   kiGH5241-JiVitA-4           BANGLADESH                     Wealth Q3_24 months           1       42     482


The following strata were considered:

* agecat: 24 months, studyid: iLiNS_DYADM_LNS, country: MALAWI, intXhhwealth_quart: Wealth Q1_24 months
* agecat: 24 months, studyid: iLiNS_DYADM_LNS, country: MALAWI, intXhhwealth_quart: Wealth Q2_24 months
* agecat: 24 months, studyid: iLiNS_DYADM_LNS, country: MALAWI, intXhhwealth_quart: Wealth Q3_24 months
* agecat: 24 months, studyid: iLiNS_DYADM_LNS, country: MALAWI, intXhhwealth_quart: Wealth Q4_24 months
* agecat: 24 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH, intXhhwealth_quart: Wealth Q1_24 months
* agecat: 24 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH, intXhhwealth_quart: Wealth Q2_24 months
* agecat: 24 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH, intXhhwealth_quart: Wealth Q3_24 months
* agecat: 24 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH, intXhhwealth_quart: Wealth Q4_24 months
* agecat: 24 months, studyid: ki1000111-WASH-Kenya, country: KENYA, intXhhwealth_quart: Wealth Q1_24 months
* agecat: 24 months, studyid: ki1000111-WASH-Kenya, country: KENYA, intXhhwealth_quart: Wealth Q2_24 months
* agecat: 24 months, studyid: ki1000111-WASH-Kenya, country: KENYA, intXhhwealth_quart: Wealth Q3_24 months
* agecat: 24 months, studyid: ki1000111-WASH-Kenya, country: KENYA, intXhhwealth_quart: Wealth Q4_24 months
* agecat: 24 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN, intXhhwealth_quart: Wealth Q3_24 months
* agecat: 24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH, intXhhwealth_quart: Wealth Q3_24 months
* agecat: 24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH, intXhhwealth_quart: Wealth Q4_24 months
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF, intXhhwealth_quart: Wealth Q1_24 months
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF, intXhhwealth_quart: Wealth Q2_24 months
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF, intXhhwealth_quart: Wealth Q4_24 months
* agecat: 24 months, studyid: ki1135781-COHORTS, country: GUATEMALA, intXhhwealth_quart: Wealth Q1_24 months
* agecat: 24 months, studyid: ki1135781-COHORTS, country: GUATEMALA, intXhhwealth_quart: Wealth Q2_24 months
* agecat: 24 months, studyid: ki1135781-COHORTS, country: GUATEMALA, intXhhwealth_quart: Wealth Q3_24 months
* agecat: 24 months, studyid: ki1135781-COHORTS, country: GUATEMALA, intXhhwealth_quart: Wealth Q4_24 months
* agecat: 24 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI, intXhhwealth_quart: Wealth Q1_24 months
* agecat: 24 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI, intXhhwealth_quart: Wealth Q2_24 months
* agecat: 24 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI, intXhhwealth_quart: Wealth Q3_24 months
* agecat: 24 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI, intXhhwealth_quart: Wealth Q4_24 months
* agecat: 24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI, intXhhwealth_quart: Wealth Q1_24 months
* agecat: 24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI, intXhhwealth_quart: Wealth Q2_24 months
* agecat: 24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI, intXhhwealth_quart: Wealth Q3_24 months
* agecat: 24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI, intXhhwealth_quart: Wealth Q4_24 months
* agecat: 24 months, studyid: ki1148112-LCNI-5, country: MALAWI, intXhhwealth_quart: Wealth Q1_24 months
* agecat: 24 months, studyid: ki1148112-LCNI-5, country: MALAWI, intXhhwealth_quart: Wealth Q2_24 months
* agecat: 24 months, studyid: ki1148112-LCNI-5, country: MALAWI, intXhhwealth_quart: Wealth Q3_24 months
* agecat: 24 months, studyid: ki1148112-LCNI-5, country: MALAWI, intXhhwealth_quart: Wealth Q4_24 months
* agecat: 24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH, intXhhwealth_quart: Wealth Q1_24 months
* agecat: 24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH, intXhhwealth_quart: Wealth Q2_24 months
* agecat: 24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH, intXhhwealth_quart: Wealth Q3_24 months
* agecat: 24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH, intXhhwealth_quart: Wealth Q4_24 months
* agecat: 24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH, intXhhwealth_quart: Wealth Q1_24 months
* agecat: 24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH, intXhhwealth_quart: Wealth Q2_24 months
* agecat: 24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH, intXhhwealth_quart: Wealth Q3_24 months
* agecat: 24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH, intXhhwealth_quart: Wealth Q4_24 months
* agecat: 6 months, studyid: iLiNS_DYADM_LNS, country: MALAWI, intXhhwealth_quart: Wealth Q1_6 months
* agecat: 6 months, studyid: iLiNS_DYADM_LNS, country: MALAWI, intXhhwealth_quart: Wealth Q2_6 months
* agecat: 6 months, studyid: iLiNS_DYADM_LNS, country: MALAWI, intXhhwealth_quart: Wealth Q3_6 months
* agecat: 6 months, studyid: iLiNS_DYADM_LNS, country: MALAWI, intXhhwealth_quart: Wealth Q4_6 months
* agecat: 6 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH, intXhhwealth_quart: Wealth Q1_6 months
* agecat: 6 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH, intXhhwealth_quart: Wealth Q2_6 months
* agecat: 6 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH, intXhhwealth_quart: Wealth Q3_6 months
* agecat: 6 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH, intXhhwealth_quart: Wealth Q4_6 months
* agecat: 6 months, studyid: ki1000111-WASH-Kenya, country: KENYA, intXhhwealth_quart: Wealth Q1_6 months
* agecat: 6 months, studyid: ki1000111-WASH-Kenya, country: KENYA, intXhhwealth_quart: Wealth Q2_6 months
* agecat: 6 months, studyid: ki1000111-WASH-Kenya, country: KENYA, intXhhwealth_quart: Wealth Q3_6 months
* agecat: 6 months, studyid: ki1000111-WASH-Kenya, country: KENYA, intXhhwealth_quart: Wealth Q4_6 months
* agecat: 6 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN, intXhhwealth_quart: Wealth Q1_6 months
* agecat: 6 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN, intXhhwealth_quart: Wealth Q2_6 months
* agecat: 6 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN, intXhhwealth_quart: Wealth Q3_6 months
* agecat: 6 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN, intXhhwealth_quart: Wealth Q4_6 months
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH, intXhhwealth_quart: Wealth Q1_6 months
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH, intXhhwealth_quart: Wealth Q2_6 months
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH, intXhhwealth_quart: Wealth Q3_6 months
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH, intXhhwealth_quart: Wealth Q4_6 months
* agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF, intXhhwealth_quart: Wealth Q1_6 months
* agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF, intXhhwealth_quart: Wealth Q2_6 months
* agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF, intXhhwealth_quart: Wealth Q3_6 months
* agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF, intXhhwealth_quart: Wealth Q4_6 months
* agecat: 6 months, studyid: ki1135781-COHORTS, country: GUATEMALA, intXhhwealth_quart: Wealth Q1_6 months
* agecat: 6 months, studyid: ki1135781-COHORTS, country: GUATEMALA, intXhhwealth_quart: Wealth Q2_6 months
* agecat: 6 months, studyid: ki1135781-COHORTS, country: GUATEMALA, intXhhwealth_quart: Wealth Q3_6 months
* agecat: 6 months, studyid: ki1135781-COHORTS, country: GUATEMALA, intXhhwealth_quart: Wealth Q4_6 months
* agecat: 6 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI, intXhhwealth_quart: Wealth Q1_6 months
* agecat: 6 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI, intXhhwealth_quart: Wealth Q2_6 months
* agecat: 6 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI, intXhhwealth_quart: Wealth Q3_6 months
* agecat: 6 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI, intXhhwealth_quart: Wealth Q4_6 months
* agecat: 6 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI, intXhhwealth_quart: Wealth Q1_6 months
* agecat: 6 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI, intXhhwealth_quart: Wealth Q2_6 months
* agecat: 6 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI, intXhhwealth_quart: Wealth Q3_6 months
* agecat: 6 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI, intXhhwealth_quart: Wealth Q4_6 months
* agecat: 6 months, studyid: ki1148112-LCNI-5, country: MALAWI, intXhhwealth_quart: Wealth Q1_6 months
* agecat: 6 months, studyid: ki1148112-LCNI-5, country: MALAWI, intXhhwealth_quart: Wealth Q2_6 months
* agecat: 6 months, studyid: ki1148112-LCNI-5, country: MALAWI, intXhhwealth_quart: Wealth Q3_6 months
* agecat: 6 months, studyid: ki1148112-LCNI-5, country: MALAWI, intXhhwealth_quart: Wealth Q4_6 months
* agecat: 6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH, intXhhwealth_quart: Wealth Q1_6 months
* agecat: 6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH, intXhhwealth_quart: Wealth Q2_6 months
* agecat: 6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH, intXhhwealth_quart: Wealth Q3_6 months
* agecat: 6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH, intXhhwealth_quart: Wealth Q4_6 months
* agecat: 6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH, intXhhwealth_quart: Wealth Q1_6 months
* agecat: 6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH, intXhhwealth_quart: Wealth Q2_6 months
* agecat: 6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH, intXhhwealth_quart: Wealth Q3_6 months
* agecat: 6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH, intXhhwealth_quart: Wealth Q4_6 months
* agecat: Birth, studyid: iLiNS_DYADM_LNS, country: MALAWI, intXhhwealth_quart: Wealth Q1_Birth
* agecat: Birth, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN, intXhhwealth_quart: Wealth Q1_Birth
* agecat: Birth, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN, intXhhwealth_quart: Wealth Q2_Birth
* agecat: Birth, studyid: ki1135781-COHORTS, country: GUATEMALA, intXhhwealth_quart: Wealth Q1_Birth
* agecat: Birth, studyid: ki1135781-COHORTS, country: GUATEMALA, intXhhwealth_quart: Wealth Q2_Birth
* agecat: Birth, studyid: ki1135781-COHORTS, country: GUATEMALA, intXhhwealth_quart: Wealth Q3_Birth
* agecat: Birth, studyid: ki1135781-COHORTS, country: GUATEMALA, intXhhwealth_quart: Wealth Q4_Birth
* agecat: Birth, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI, intXhhwealth_quart: Wealth Q1_Birth
* agecat: Birth, studyid: kiGH5241-JiVitA-3, country: BANGLADESH, intXhhwealth_quart: Wealth Q1_Birth
* agecat: Birth, studyid: kiGH5241-JiVitA-3, country: BANGLADESH, intXhhwealth_quart: Wealth Q2_Birth
* agecat: Birth, studyid: kiGH5241-JiVitA-3, country: BANGLADESH, intXhhwealth_quart: Wealth Q3_Birth
* agecat: Birth, studyid: kiGH5241-JiVitA-3, country: BANGLADESH, intXhhwealth_quart: Wealth Q4_Birth
* agecat: Birth, studyid: kiGH5241-JiVitA-4, country: BANGLADESH, intXhhwealth_quart: Wealth Q1_Birth
* agecat: Birth, studyid: kiGH5241-JiVitA-4, country: BANGLADESH, intXhhwealth_quart: Wealth Q2_Birth
* agecat: Birth, studyid: kiGH5241-JiVitA-4, country: BANGLADESH, intXhhwealth_quart: Wealth Q3_Birth
* agecat: Birth, studyid: kiGH5241-JiVitA-4, country: BANGLADESH, intXhhwealth_quart: Wealth Q4_Birth

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: iLiNS_DYADM_LNS, country: MALAWI, intXhhwealth_quart: Wealth Q1_Birth
* agecat: Birth, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN, intXhhwealth_quart: Wealth Q1_Birth
* agecat: Birth, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN, intXhhwealth_quart: Wealth Q2_Birth
* agecat: Birth, studyid: ki1135781-COHORTS, country: GUATEMALA, intXhhwealth_quart: Wealth Q4_Birth
* agecat: Birth, studyid: ki1135781-COHORTS, country: GUATEMALA, intXhhwealth_quart: Wealth Q1_Birth
* agecat: Birth, studyid: ki1135781-COHORTS, country: GUATEMALA, intXhhwealth_quart: Wealth Q2_Birth
* agecat: Birth, studyid: ki1135781-COHORTS, country: GUATEMALA, intXhhwealth_quart: Wealth Q3_Birth
* agecat: Birth, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI, intXhhwealth_quart: Wealth Q1_Birth
* agecat: 6 months, studyid: iLiNS_DYADM_LNS, country: MALAWI, intXhhwealth_quart: Wealth Q2_6 months
* agecat: 6 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH, intXhhwealth_quart: Wealth Q4_6 months
* agecat: 6 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH, intXhhwealth_quart: Wealth Q3_6 months
* agecat: 6 months, studyid: ki1000111-WASH-Kenya, country: KENYA, intXhhwealth_quart: Wealth Q4_6 months
* agecat: 6 months, studyid: ki1000111-WASH-Kenya, country: KENYA, intXhhwealth_quart: Wealth Q1_6 months
* agecat: 6 months, studyid: ki1000111-WASH-Kenya, country: KENYA, intXhhwealth_quart: Wealth Q2_6 months
* agecat: 6 months, studyid: ki1000111-WASH-Kenya, country: KENYA, intXhhwealth_quart: Wealth Q3_6 months
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH, intXhhwealth_quart: Wealth Q4_6 months
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH, intXhhwealth_quart: Wealth Q1_6 months
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH, intXhhwealth_quart: Wealth Q2_6 months
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH, intXhhwealth_quart: Wealth Q3_6 months
* agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF, intXhhwealth_quart: Wealth Q2_6 months
* agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF, intXhhwealth_quart: Wealth Q3_6 months
* agecat: 24 months, studyid: iLiNS_DYADM_LNS, country: MALAWI, intXhhwealth_quart: Wealth Q4_24 months
* agecat: 24 months, studyid: iLiNS_DYADM_LNS, country: MALAWI, intXhhwealth_quart: Wealth Q1_24 months
* agecat: 24 months, studyid: iLiNS_DYADM_LNS, country: MALAWI, intXhhwealth_quart: Wealth Q2_24 months
* agecat: 24 months, studyid: iLiNS_DYADM_LNS, country: MALAWI, intXhhwealth_quart: Wealth Q3_24 months
* agecat: 24 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN, intXhhwealth_quart: Wealth Q3_24 months
* agecat: 24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH, intXhhwealth_quart: Wealth Q4_24 months
* agecat: 24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH, intXhhwealth_quart: Wealth Q3_24 months
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF, intXhhwealth_quart: Wealth Q4_24 months
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF, intXhhwealth_quart: Wealth Q1_24 months
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF, intXhhwealth_quart: Wealth Q2_24 months
* agecat: 24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI, intXhhwealth_quart: Wealth Q4_24 months
* agecat: 24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI, intXhhwealth_quart: Wealth Q1_24 months
* agecat: 24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI, intXhhwealth_quart: Wealth Q2_24 months

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/9f0ff1d8-67ae-4785-a020-fb0a7bf578f0/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/9f0ff1d8-67ae-4785-a020-fb0a7bf578f0/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/9f0ff1d8-67ae-4785-a020-fb0a7bf578f0/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/9f0ff1d8-67ae-4785-a020-fb0a7bf578f0/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                     country                        intXhhwealth_quart    intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------  --------------------------  -----------------------------  --------------------  -------------------  ---------------  ----------  -----------  ----------
Birth       kiGH5241-JiVitA-3           BANGLADESH                     Wealth Q4_Birth       Control              NA                0.0720764    0.0594129   0.0847398
Birth       kiGH5241-JiVitA-3           BANGLADESH                     Wealth Q4_Birth       Maternal             NA                0.0695525    0.0575174   0.0815877
Birth       kiGH5241-JiVitA-3           BANGLADESH                     Wealth Q1_Birth       Control              NA                0.1390291    0.1226633   0.1553949
Birth       kiGH5241-JiVitA-3           BANGLADESH                     Wealth Q1_Birth       Maternal             NA                0.1149600    0.1017719   0.1281482
Birth       kiGH5241-JiVitA-3           BANGLADESH                     Wealth Q2_Birth       Control              NA                0.1171756    0.1026826   0.1316686
Birth       kiGH5241-JiVitA-3           BANGLADESH                     Wealth Q2_Birth       Maternal             NA                0.0997799    0.0870509   0.1125089
Birth       kiGH5241-JiVitA-3           BANGLADESH                     Wealth Q3_Birth       Control              NA                0.1145663    0.1005602   0.1285724
Birth       kiGH5241-JiVitA-3           BANGLADESH                     Wealth Q3_Birth       Maternal             NA                0.0930233    0.0799500   0.1060965
Birth       kiGH5241-JiVitA-4           BANGLADESH                     Wealth Q4_Birth       Control              NA                0.1428571    0.0471908   0.2385235
Birth       kiGH5241-JiVitA-4           BANGLADESH                     Wealth Q4_Birth       LNS                  NA                0.0566038   -0.0091686   0.1223762
Birth       kiGH5241-JiVitA-4           BANGLADESH                     Wealth Q4_Birth       Other                NA                0.0740741    0.0190225   0.1291256
Birth       kiGH5241-JiVitA-4           BANGLADESH                     Wealth Q1_Birth       Control              NA                0.0769231   -0.0121455   0.1659917
Birth       kiGH5241-JiVitA-4           BANGLADESH                     Wealth Q1_Birth       LNS                  NA                0.0892857    0.0043402   0.1742312
Birth       kiGH5241-JiVitA-4           BANGLADESH                     Wealth Q1_Birth       Other                NA                0.1287129    0.0585132   0.1989125
Birth       kiGH5241-JiVitA-4           BANGLADESH                     Wealth Q2_Birth       Control              NA                0.0377358   -0.0125980   0.0880697
Birth       kiGH5241-JiVitA-4           BANGLADESH                     Wealth Q2_Birth       LNS                  NA                0.0625000   -0.0016206   0.1266206
Birth       kiGH5241-JiVitA-4           BANGLADESH                     Wealth Q2_Birth       Other                NA                0.0588235    0.0100094   0.1076377
Birth       kiGH5241-JiVitA-4           BANGLADESH                     Wealth Q3_Birth       Control              NA                0.0714286    0.0192824   0.1235748
Birth       kiGH5241-JiVitA-4           BANGLADESH                     Wealth Q3_Birth       LNS                  NA                0.0370370   -0.0142837   0.0883578
Birth       kiGH5241-JiVitA-4           BANGLADESH                     Wealth Q3_Birth       Other                NA                0.0804598    0.0268425   0.1340770
6 months    iLiNS_DYADM_LNS             MALAWI                         Wealth Q4_6 months    Control              NA                0.1090909    0.0262113   0.1919705
6 months    iLiNS_DYADM_LNS             MALAWI                         Wealth Q4_6 months    LNS                  NA                0.0333333   -0.0312819   0.0979486
6 months    iLiNS_DYADM_LNS             MALAWI                         Wealth Q1_6 months    Control              NA                0.0877193    0.0139386   0.1614999
6 months    iLiNS_DYADM_LNS             MALAWI                         Wealth Q1_6 months    LNS                  NA                0.0392157   -0.0143055   0.0927369
6 months    iLiNS_DYADM_LNS             MALAWI                         Wealth Q3_6 months    Control              NA                0.0789474    0.0181355   0.1397593
6 months    iLiNS_DYADM_LNS             MALAWI                         Wealth Q3_6 months    LNS                  NA                0.0459770    0.0018327   0.0901213
6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Wealth Q1_6 months    Control              NA                0.0454545   -0.0162377   0.1071468
6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Wealth Q1_6 months    LNS                  NA                0.0746269    0.0115546   0.1376992
6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Wealth Q1_6 months    Other                NA                0.0490196    0.0070205   0.0910188
6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Wealth Q2_6 months    Control              NA                0.0952381    0.0061743   0.1843019
6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Wealth Q2_6 months    LNS                  NA                0.0555556   -0.0195123   0.1306235
6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Wealth Q2_6 months    Other                NA                0.0779221    0.0178570   0.1379872
6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Wealth Q4_6 months    Control              NA                0.0810811   -0.0076008   0.1697630
6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Wealth Q4_6 months    Maternal             NA                0.1250000   -0.0084107   0.2584107
6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Wealth Q1_6 months    Control              NA                0.1372549    0.0421303   0.2323795
6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Wealth Q1_6 months    Maternal             NA                0.0000000    0.0000000   0.0000000
6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Wealth Q2_6 months    Control              NA                0.0816327    0.0044456   0.1588197
6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Wealth Q2_6 months    Maternal             NA                0.0400000   -0.0373389   0.1173389
6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Wealth Q3_6 months    Control              NA                0.1190476    0.0203081   0.2177871
6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Wealth Q3_6 months    Maternal             NA                0.0500000   -0.0462966   0.1462966
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Wealth Q4_6 months    Control              NA                0.0408163    0.0015950   0.0800376
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Wealth Q4_6 months    Other                NA                0.0363636    0.0013400   0.0713872
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Wealth Q4_6 months    Zinc                 NA                0.0189573    0.0005344   0.0373803
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Wealth Q1_6 months    Control              NA                0.0243902   -0.0028977   0.0516782
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Wealth Q1_6 months    Other                NA                0.0000000    0.0000000   0.0000000
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Wealth Q1_6 months    Zinc                 NA                0.0149254    0.0003940   0.0294568
6 months    ki1135781-COHORTS           GUATEMALA                      Wealth Q4_6 months    Control              NA                0.0909091    0.0469773   0.1348408
6 months    ki1135781-COHORTS           GUATEMALA                      Wealth Q4_6 months    Other                NA                0.0679012    0.0291018   0.1067007
6 months    ki1135781-COHORTS           GUATEMALA                      Wealth Q1_6 months    Control              NA                0.1797753    0.0997585   0.2597920
6 months    ki1135781-COHORTS           GUATEMALA                      Wealth Q1_6 months    Other                NA                0.1518987    0.0725149   0.2312825
6 months    ki1135781-COHORTS           GUATEMALA                      Wealth Q2_6 months    Control              NA                0.1904762    0.1062840   0.2746684
6 months    ki1135781-COHORTS           GUATEMALA                      Wealth Q2_6 months    Other                NA                0.1284404    0.0654662   0.1914145
6 months    ki1135781-COHORTS           GUATEMALA                      Wealth Q3_6 months    Control              NA                0.2222222    0.1361239   0.3083206
6 months    ki1135781-COHORTS           GUATEMALA                      Wealth Q3_6 months    Other                NA                0.1186441    0.0601580   0.1771301
6 months    ki1148112-iLiNS-DOSE        MALAWI                         Wealth Q4_6 months    Control              NA                0.1408451    0.0598149   0.2218752
6 months    ki1148112-iLiNS-DOSE        MALAWI                         Wealth Q4_6 months    LNS                  NA                0.0609319    0.0328234   0.0890404
6 months    ki1148112-iLiNS-DOSE        MALAWI                         Wealth Q1_6 months    Control              NA                0.0600000   -0.0059210   0.1259210
6 months    ki1148112-iLiNS-DOSE        MALAWI                         Wealth Q1_6 months    LNS                  NA                0.0800000    0.0492569   0.1107431
6 months    ki1148112-iLiNS-DOSE        MALAWI                         Wealth Q2_6 months    Control              NA                0.0545455   -0.0055564   0.1146473
6 months    ki1148112-iLiNS-DOSE        MALAWI                         Wealth Q2_6 months    LNS                  NA                0.0508475    0.0257424   0.0759525
6 months    ki1148112-iLiNS-DOSE        MALAWI                         Wealth Q3_6 months    Control              NA                0.0655738    0.0033661   0.1277814
6 months    ki1148112-iLiNS-DOSE        MALAWI                         Wealth Q3_6 months    LNS                  NA                0.0590278    0.0317699   0.0862856
6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Wealth Q4_6 months    Control              NA                0.1090909    0.0263397   0.1918421
6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Wealth Q4_6 months    Maternal             NA                0.0500000   -0.0053880   0.1053880
6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Wealth Q1_6 months    Control              NA                0.0877193    0.0140727   0.1613659
6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Wealth Q1_6 months    Maternal             NA                0.0416667    0.0058124   0.0775209
6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Wealth Q2_6 months    Control              NA                0.0149254   -0.0141866   0.0440374
6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Wealth Q2_6 months    Maternal             NA                0.0333333    0.0011301   0.0655366
6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Wealth Q3_6 months    Control              NA                0.0789474    0.0182012   0.1396936
6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Wealth Q3_6 months    Maternal             NA                0.0571429    0.0226841   0.0916016
6 months    ki1148112-LCNI-5            MALAWI                         Wealth Q4_6 months    Control              NA                0.0847458    0.0135171   0.1559745
6 months    ki1148112-LCNI-5            MALAWI                         Wealth Q4_6 months    LNS                  NA                0.0857143    0.0320452   0.1393833
6 months    ki1148112-LCNI-5            MALAWI                         Wealth Q4_6 months    Other                NA                0.0377358   -0.0136848   0.0891565
6 months    ki1148112-LCNI-5            MALAWI                         Wealth Q1_6 months    Control              NA                0.0400000   -0.0144504   0.0944504
6 months    ki1148112-LCNI-5            MALAWI                         Wealth Q1_6 months    LNS                  NA                0.1100000    0.0485231   0.1714769
6 months    ki1148112-LCNI-5            MALAWI                         Wealth Q1_6 months    Other                NA                0.1509434    0.0543254   0.2475614
6 months    ki1148112-LCNI-5            MALAWI                         Wealth Q2_6 months    Control              NA                0.0545455   -0.0056218   0.1147127
6 months    ki1148112-LCNI-5            MALAWI                         Wealth Q2_6 months    LNS                  NA                0.0961538    0.0393529   0.1529548
6 months    ki1148112-LCNI-5            MALAWI                         Wealth Q2_6 months    Other                NA                0.0500000   -0.0177109   0.1177109
6 months    ki1148112-LCNI-5            MALAWI                         Wealth Q3_6 months    Control              NA                0.0555556   -0.0194604   0.1305716
6 months    ki1148112-LCNI-5            MALAWI                         Wealth Q3_6 months    LNS                  NA                0.0784314    0.0261241   0.1307386
6 months    ki1148112-LCNI-5            MALAWI                         Wealth Q3_6 months    Other                NA                0.0508475   -0.0053517   0.1070466
6 months    kiGH5241-JiVitA-3           BANGLADESH                     Wealth Q4_6 months    Control              NA                0.0454834    0.0357963   0.0551705
6 months    kiGH5241-JiVitA-3           BANGLADESH                     Wealth Q4_6 months    Maternal             NA                0.0381356    0.0303152   0.0459560
6 months    kiGH5241-JiVitA-3           BANGLADESH                     Wealth Q1_6 months    Control              NA                0.0875973    0.0730498   0.1021448
6 months    kiGH5241-JiVitA-3           BANGLADESH                     Wealth Q1_6 months    Maternal             NA                0.0707660    0.0589712   0.0825607
6 months    kiGH5241-JiVitA-3           BANGLADESH                     Wealth Q2_6 months    Control              NA                0.0736377    0.0599782   0.0872972
6 months    kiGH5241-JiVitA-3           BANGLADESH                     Wealth Q2_6 months    Maternal             NA                0.0600715    0.0466541   0.0734889
6 months    kiGH5241-JiVitA-3           BANGLADESH                     Wealth Q3_6 months    Control              NA                0.0628147    0.0507324   0.0748969
6 months    kiGH5241-JiVitA-3           BANGLADESH                     Wealth Q3_6 months    Maternal             NA                0.0565186    0.0466244   0.0664129
6 months    kiGH5241-JiVitA-4           BANGLADESH                     Wealth Q4_6 months    Control              NA                0.0486486    0.0178825   0.0794148
6 months    kiGH5241-JiVitA-4           BANGLADESH                     Wealth Q4_6 months    LNS                  NA                0.0209677   -0.0017756   0.0437111
6 months    kiGH5241-JiVitA-4           BANGLADESH                     Wealth Q4_6 months    Other                NA                0.0366795    0.0171398   0.0562192
6 months    kiGH5241-JiVitA-4           BANGLADESH                     Wealth Q1_6 months    Control              NA                0.0896226    0.0552867   0.1239586
6 months    kiGH5241-JiVitA-4           BANGLADESH                     Wealth Q1_6 months    LNS                  NA                0.0978593    0.0664928   0.1292258
6 months    kiGH5241-JiVitA-4           BANGLADESH                     Wealth Q1_6 months    Other                NA                0.0743243    0.0532949   0.0953538
6 months    kiGH5241-JiVitA-4           BANGLADESH                     Wealth Q2_6 months    Control              NA                0.0636042    0.0384080   0.0888004
6 months    kiGH5241-JiVitA-4           BANGLADESH                     Wealth Q2_6 months    LNS                  NA                0.0539683    0.0315738   0.0763627
6 months    kiGH5241-JiVitA-4           BANGLADESH                     Wealth Q2_6 months    Other                NA                0.0671256    0.0394911   0.0947602
6 months    kiGH5241-JiVitA-4           BANGLADESH                     Wealth Q3_6 months    Control              NA                0.0294985    0.0135563   0.0454408
6 months    kiGH5241-JiVitA-4           BANGLADESH                     Wealth Q3_6 months    LNS                  NA                0.0467836    0.0267871   0.0667801
6 months    kiGH5241-JiVitA-4           BANGLADESH                     Wealth Q3_6 months    Other                NA                0.0465116    0.0265511   0.0664721
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Wealth Q4_24 months   Control              NA                0.0487805    0.0020828   0.0954781
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Wealth Q4_24 months   LNS                  NA                0.0869565    0.0203662   0.1535468
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Wealth Q4_24 months   Other                NA                0.0548780    0.0199672   0.0897889
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Wealth Q1_24 months   Control              NA                0.2500000    0.1437146   0.3562854
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Wealth Q1_24 months   LNS                  NA                0.1428571    0.0607291   0.2249852
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Wealth Q1_24 months   Other                NA                0.1578947    0.0958072   0.2199822
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Wealth Q2_24 months   Control              NA                0.1111111    0.0271337   0.1950885
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Wealth Q2_24 months   LNS                  NA                0.1000000    0.0295909   0.1704091
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Wealth Q2_24 months   Other                NA                0.1586207    0.0990478   0.2181936
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Wealth Q3_24 months   Control              NA                0.1126761    0.0390175   0.1863346
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Wealth Q3_24 months   LNS                  NA                0.1326531    0.0653961   0.1999100
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Wealth Q3_24 months   Other                NA                0.0958084    0.0511020   0.1405147
24 months   ki1000111-WASH-Kenya        KENYA                          Wealth Q4_24 months   Control              NA                0.0950000    0.0543270   0.1356730
24 months   ki1000111-WASH-Kenya        KENYA                          Wealth Q4_24 months   LNS                  NA                0.0156250   -0.0058791   0.0371291
24 months   ki1000111-WASH-Kenya        KENYA                          Wealth Q4_24 months   Other                NA                0.0686695    0.0361689   0.1011701
24 months   ki1000111-WASH-Kenya        KENYA                          Wealth Q1_24 months   Control              NA                0.1351351    0.0858295   0.1844408
24 months   ki1000111-WASH-Kenya        KENYA                          Wealth Q1_24 months   LNS                  NA                0.1250000    0.0657767   0.1842233
24 months   ki1000111-WASH-Kenya        KENYA                          Wealth Q1_24 months   Other                NA                0.1062271    0.0696446   0.1428097
24 months   ki1000111-WASH-Kenya        KENYA                          Wealth Q2_24 months   Control              NA                0.0904255    0.0493946   0.1314564
24 months   ki1000111-WASH-Kenya        KENYA                          Wealth Q2_24 months   LNS                  NA                0.0425532    0.0092075   0.0758988
24 months   ki1000111-WASH-Kenya        KENYA                          Wealth Q2_24 months   Other                NA                0.0850202    0.0502071   0.1198334
24 months   ki1000111-WASH-Kenya        KENYA                          Wealth Q3_24 months   Control              NA                0.0752688    0.0373195   0.1132181
24 months   ki1000111-WASH-Kenya        KENYA                          Wealth Q3_24 months   LNS                  NA                0.0450450    0.0064263   0.0836638
24 months   ki1000111-WASH-Kenya        KENYA                          Wealth Q3_24 months   Other                NA                0.0517928    0.0243522   0.0792335
24 months   ki1135781-COHORTS           GUATEMALA                      Wealth Q4_24 months   Control              NA                0.3235294    0.2119406   0.4351182
24 months   ki1135781-COHORTS           GUATEMALA                      Wealth Q4_24 months   Other                NA                0.3424658    0.2332212   0.4517103
24 months   ki1135781-COHORTS           GUATEMALA                      Wealth Q1_24 months   Control              NA                0.5806452    0.4055217   0.7557687
24 months   ki1135781-COHORTS           GUATEMALA                      Wealth Q1_24 months   Other                NA                0.4516129    0.2749990   0.6282268
24 months   ki1135781-COHORTS           GUATEMALA                      Wealth Q2_24 months   Control              NA                0.5312500    0.3569158   0.7055842
24 months   ki1135781-COHORTS           GUATEMALA                      Wealth Q2_24 months   Other                NA                0.3103448    0.1405687   0.4801210
24 months   ki1135781-COHORTS           GUATEMALA                      Wealth Q3_24 months   Control              NA                0.5600000    0.3633163   0.7566837
24 months   ki1135781-COHORTS           GUATEMALA                      Wealth Q3_24 months   Other                NA                0.4545455    0.2442283   0.6648626
24 months   ki1148112-iLiNS-DOSE        MALAWI                         Wealth Q4_24 months   Control              NA                0.2222222    0.0860739   0.3583705
24 months   ki1148112-iLiNS-DOSE        MALAWI                         Wealth Q4_24 months   LNS                  NA                0.1411043    0.0875260   0.1946825
24 months   ki1148112-iLiNS-DOSE        MALAWI                         Wealth Q1_24 months   Control              NA                0.1428571   -0.0073112   0.2930255
24 months   ki1148112-iLiNS-DOSE        MALAWI                         Wealth Q1_24 months   LNS                  NA                0.1796875    0.1129525   0.2464225
24 months   ki1148112-iLiNS-DOSE        MALAWI                         Wealth Q2_24 months   Control              NA                0.1785714    0.0363386   0.3208043
24 months   ki1148112-iLiNS-DOSE        MALAWI                         Wealth Q2_24 months   LNS                  NA                0.2331288    0.1680480   0.2982097
24 months   ki1148112-iLiNS-DOSE        MALAWI                         Wealth Q3_24 months   Control              NA                0.1470588    0.0276901   0.2664276
24 months   ki1148112-iLiNS-DOSE        MALAWI                         Wealth Q3_24 months   LNS                  NA                0.1655629    0.1061180   0.2250079
24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Wealth Q3_24 months   Control              NA                0.0000000    0.0000000   0.0000000
24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Wealth Q3_24 months   Maternal             NA                0.2631579    0.0607072   0.4656086
24 months   ki1148112-LCNI-5            MALAWI                         Wealth Q4_24 months   Control              NA                0.1562500    0.0298321   0.2826679
24 months   ki1148112-LCNI-5            MALAWI                         Wealth Q4_24 months   LNS                  NA                0.1063830    0.0178042   0.1949617
24 months   ki1148112-LCNI-5            MALAWI                         Wealth Q4_24 months   Other                NA                0.0416667   -0.0386700   0.1220033
24 months   ki1148112-LCNI-5            MALAWI                         Wealth Q1_24 months   Control              NA                0.1153846   -0.0081232   0.2388924
24 months   ki1148112-LCNI-5            MALAWI                         Wealth Q1_24 months   LNS                  NA                0.1052632    0.0071282   0.2033981
24 months   ki1148112-LCNI-5            MALAWI                         Wealth Q1_24 months   Other                NA                0.1666667    0.0167127   0.3166206
24 months   ki1148112-LCNI-5            MALAWI                         Wealth Q2_24 months   Control              NA                0.1875000    0.0515779   0.3234221
24 months   ki1148112-LCNI-5            MALAWI                         Wealth Q2_24 months   LNS                  NA                0.0833333    0.0047470   0.1619197
24 months   ki1148112-LCNI-5            MALAWI                         Wealth Q2_24 months   Other                NA                0.0000000    0.0000000   0.0000000
24 months   ki1148112-LCNI-5            MALAWI                         Wealth Q3_24 months   Control              NA                0.0526316   -0.0483233   0.1535864
24 months   ki1148112-LCNI-5            MALAWI                         Wealth Q3_24 months   LNS                  NA                0.0869565    0.0050838   0.1688292
24 months   ki1148112-LCNI-5            MALAWI                         Wealth Q3_24 months   Other                NA                0.0740741   -0.0252514   0.1733996
24 months   kiGH5241-JiVitA-3           BANGLADESH                     Wealth Q4_24 months   Control              NA                0.2571429    0.0763287   0.4379570
24 months   kiGH5241-JiVitA-3           BANGLADESH                     Wealth Q4_24 months   Maternal             NA                0.2580645    0.0560125   0.4601165
24 months   kiGH5241-JiVitA-3           BANGLADESH                     Wealth Q1_24 months   Control              NA                0.2000000   -0.0974060   0.4974060
24 months   kiGH5241-JiVitA-3           BANGLADESH                     Wealth Q1_24 months   Maternal             NA                0.3684211    0.0758932   0.6609489
24 months   kiGH5241-JiVitA-3           BANGLADESH                     Wealth Q2_24 months   Control              NA                0.1111111   -0.2008674   0.4230896
24 months   kiGH5241-JiVitA-3           BANGLADESH                     Wealth Q2_24 months   Maternal             NA                0.2222222    0.0067738   0.4376706
24 months   kiGH5241-JiVitA-3           BANGLADESH                     Wealth Q3_24 months   Control              NA                0.4705882    0.1545726   0.7866039
24 months   kiGH5241-JiVitA-3           BANGLADESH                     Wealth Q3_24 months   Maternal             NA                0.0526316   -0.1055022   0.2107654
24 months   kiGH5241-JiVitA-4           BANGLADESH                     Wealth Q4_24 months   Control              NA                0.0573770   -0.0078054   0.1225595
24 months   kiGH5241-JiVitA-4           BANGLADESH                     Wealth Q4_24 months   LNS                  NA                0.0454545   -0.0150134   0.1059225
24 months   kiGH5241-JiVitA-4           BANGLADESH                     Wealth Q4_24 months   Other                NA                0.0517241    0.0140809   0.0893674
24 months   kiGH5241-JiVitA-4           BANGLADESH                     Wealth Q1_24 months   Control              NA                0.1666667    0.0749216   0.2584117
24 months   kiGH5241-JiVitA-4           BANGLADESH                     Wealth Q1_24 months   LNS                  NA                0.1717791    0.0910190   0.2525393
24 months   kiGH5241-JiVitA-4           BANGLADESH                     Wealth Q1_24 months   Other                NA                0.1358491    0.0791146   0.1925835
24 months   kiGH5241-JiVitA-4           BANGLADESH                     Wealth Q2_24 months   Control              NA                0.0857143    0.0438488   0.1275798
24 months   kiGH5241-JiVitA-4           BANGLADESH                     Wealth Q2_24 months   LNS                  NA                0.1120000    0.0368659   0.1871341
24 months   kiGH5241-JiVitA-4           BANGLADESH                     Wealth Q2_24 months   Other                NA                0.0961538    0.0339331   0.1583746
24 months   kiGH5241-JiVitA-4           BANGLADESH                     Wealth Q3_24 months   Control              NA                0.1219512    0.0405075   0.2033950
24 months   kiGH5241-JiVitA-4           BANGLADESH                     Wealth Q3_24 months   LNS                  NA                0.0729927    0.0147340   0.1312514
24 months   kiGH5241-JiVitA-4           BANGLADESH                     Wealth Q3_24 months   Other                NA                0.0765766    0.0226982   0.1304549


### Parameter: E(Y)


agecat      studyid                     country                        intXhhwealth_quart    intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  --------------------------  -----------------------------  --------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       kiGH5241-JiVitA-3           BANGLADESH                     Wealth Q4_Birth       NA                   NA                0.0708263   0.0620863   0.0795664
Birth       kiGH5241-JiVitA-3           BANGLADESH                     Wealth Q1_Birth       NA                   NA                0.1268743   0.1163339   0.1374147
Birth       kiGH5241-JiVitA-3           BANGLADESH                     Wealth Q2_Birth       NA                   NA                0.1083053   0.0986669   0.1179436
Birth       kiGH5241-JiVitA-3           BANGLADESH                     Wealth Q3_Birth       NA                   NA                0.1037794   0.0941799   0.1133789
Birth       kiGH5241-JiVitA-4           BANGLADESH                     Wealth Q4_Birth       NA                   NA                0.0874317   0.0468915   0.1279719
Birth       kiGH5241-JiVitA-4           BANGLADESH                     Wealth Q1_Birth       NA                   NA                0.1052632   0.0587055   0.1518208
Birth       kiGH5241-JiVitA-4           BANGLADESH                     Wealth Q2_Birth       NA                   NA                0.0547945   0.0228497   0.0867393
Birth       kiGH5241-JiVitA-4           BANGLADESH                     Wealth Q3_Birth       NA                   NA                0.0663507   0.0353569   0.0973445
6 months    iLiNS_DYADM_LNS             MALAWI                         Wealth Q4_6 months    NA                   NA                0.0823529   0.0235653   0.1411406
6 months    iLiNS_DYADM_LNS             MALAWI                         Wealth Q1_6 months    NA                   NA                0.0648148   0.0181658   0.1114638
6 months    iLiNS_DYADM_LNS             MALAWI                         Wealth Q3_6 months    NA                   NA                0.0613497   0.0243968   0.0983026
6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Wealth Q1_6 months    NA                   NA                0.0563380   0.0253004   0.0873757
6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Wealth Q2_6 months    NA                   NA                0.0774194   0.0352094   0.1196293
6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Wealth Q4_6 months    NA                   NA                0.0983607   0.0230078   0.1737135
6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Wealth Q1_6 months    NA                   NA                0.1000000   0.0292144   0.1707856
6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Wealth Q2_6 months    NA                   NA                0.0675676   0.0099885   0.1251466
6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Wealth Q3_6 months    NA                   NA                0.0967742   0.0225815   0.1709669
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Wealth Q4_6 months    NA                   NA                0.0286396   0.0126502   0.0446291
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Wealth Q1_6 months    NA                   NA                0.0138340   0.0036469   0.0240211
6 months    ki1135781-COHORTS           GUATEMALA                      Wealth Q4_6 months    NA                   NA                0.0795107   0.0501436   0.1088778
6 months    ki1135781-COHORTS           GUATEMALA                      Wealth Q1_6 months    NA                   NA                0.1666667   0.1101439   0.2231895
6 months    ki1135781-COHORTS           GUATEMALA                      Wealth Q2_6 months    NA                   NA                0.1554404   0.1041903   0.2066905
6 months    ki1135781-COHORTS           GUATEMALA                      Wealth Q3_6 months    NA                   NA                0.1634615   0.1130867   0.2138364
6 months    ki1148112-iLiNS-DOSE        MALAWI                         Wealth Q4_6 months    NA                   NA                0.0771429   0.0491498   0.1051359
6 months    ki1148112-iLiNS-DOSE        MALAWI                         Wealth Q1_6 months    NA                   NA                0.0771429   0.0491498   0.1051359
6 months    ki1148112-iLiNS-DOSE        MALAWI                         Wealth Q2_6 months    NA                   NA                0.0514286   0.0282561   0.0746011
6 months    ki1148112-iLiNS-DOSE        MALAWI                         Wealth Q3_6 months    NA                   NA                0.0601719   0.0351869   0.0851569
6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Wealth Q4_6 months    NA                   NA                0.0782609   0.0289580   0.1275637
6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Wealth Q1_6 months    NA                   NA                0.0564972   0.0223876   0.0906068
6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Wealth Q2_6 months    NA                   NA                0.0267380   0.0035549   0.0499210
6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Wealth Q3_6 months    NA                   NA                0.0637450   0.0334621   0.0940280
6 months    ki1148112-LCNI-5            MALAWI                         Wealth Q4_6 months    NA                   NA                0.0737327   0.0388814   0.1085841
6 months    ki1148112-LCNI-5            MALAWI                         Wealth Q1_6 months    NA                   NA                0.1034483   0.0614509   0.1454456
6 months    ki1148112-LCNI-5            MALAWI                         Wealth Q2_6 months    NA                   NA                0.0753769   0.0386049   0.1121489
6 months    ki1148112-LCNI-5            MALAWI                         Wealth Q3_6 months    NA                   NA                0.0659898   0.0312335   0.1007462
6 months    kiGH5241-JiVitA-3           BANGLADESH                     Wealth Q4_6 months    NA                   NA                0.0418122   0.0355669   0.0480575
6 months    kiGH5241-JiVitA-3           BANGLADESH                     Wealth Q1_6 months    NA                   NA                0.0789795   0.0696478   0.0883112
6 months    kiGH5241-JiVitA-3           BANGLADESH                     Wealth Q2_6 months    NA                   NA                0.0667554   0.0571801   0.0763306
6 months    kiGH5241-JiVitA-3           BANGLADESH                     Wealth Q3_6 months    NA                   NA                0.0596516   0.0518352   0.0674681
6 months    kiGH5241-JiVitA-4           BANGLADESH                     Wealth Q4_6 months    NA                   NA                0.0352782   0.0216918   0.0488645
6 months    kiGH5241-JiVitA-4           BANGLADESH                     Wealth Q1_6 months    NA                   NA                0.0851247   0.0691821   0.1010672
6 months    kiGH5241-JiVitA-4           BANGLADESH                     Wealth Q2_6 months    NA                   NA                0.0627651   0.0466716   0.0788585
6 months    kiGH5241-JiVitA-4           BANGLADESH                     Wealth Q3_6 months    NA                   NA                0.0419355   0.0305021   0.0533689
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Wealth Q4_24 months   NA                   NA                0.0603175   0.0339848   0.0866502
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Wealth Q1_24 months   NA                   NA                0.1760300   0.1302626   0.2217974
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Wealth Q2_24 months   NA                   NA                0.1338290   0.0930668   0.1745912
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Wealth Q3_24 months   NA                   NA                0.1101190   0.0765976   0.1436405
24 months   ki1000111-WASH-Kenya        KENYA                          Wealth Q4_24 months   NA                   NA                0.0659537   0.0453968   0.0865106
24 months   ki1000111-WASH-Kenya        KENYA                          Wealth Q1_24 months   NA                   NA                0.1193772   0.0929217   0.1458327
24 months   ki1000111-WASH-Kenya        KENYA                          Wealth Q2_24 months   NA                   NA                0.0763889   0.0546782   0.0980996
24 months   ki1000111-WASH-Kenya        KENYA                          Wealth Q3_24 months   NA                   NA                0.0583942   0.0387437   0.0780447
24 months   ki1135781-COHORTS           GUATEMALA                      Wealth Q4_24 months   NA                   NA                0.3333333   0.2552465   0.4114202
24 months   ki1135781-COHORTS           GUATEMALA                      Wealth Q1_24 months   NA                   NA                0.5161290   0.3907205   0.6415376
24 months   ki1135781-COHORTS           GUATEMALA                      Wealth Q2_24 months   NA                   NA                0.4262295   0.3010990   0.5513601
24 months   ki1135781-COHORTS           GUATEMALA                      Wealth Q3_24 months   NA                   NA                0.5106383   0.3661805   0.6550961
24 months   ki1148112-iLiNS-DOSE        MALAWI                         Wealth Q4_24 months   NA                   NA                0.1557789   0.1052665   0.2062913
24 months   ki1148112-iLiNS-DOSE        MALAWI                         Wealth Q1_24 months   NA                   NA                0.1744966   0.1133503   0.2356429
24 months   ki1148112-iLiNS-DOSE        MALAWI                         Wealth Q2_24 months   NA                   NA                0.2251309   0.1657423   0.2845195
24 months   ki1148112-iLiNS-DOSE        MALAWI                         Wealth Q3_24 months   NA                   NA                0.1621622   0.1089031   0.2154213
24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Wealth Q3_24 months   NA                   NA                0.2173913   0.0450338   0.3897488
24 months   ki1148112-LCNI-5            MALAWI                         Wealth Q4_24 months   NA                   NA                0.1067961   0.0468583   0.1667340
24 months   ki1148112-LCNI-5            MALAWI                         Wealth Q1_24 months   NA                   NA                0.1250000   0.0555060   0.1944940
24 months   ki1148112-LCNI-5            MALAWI                         Wealth Q2_24 months   NA                   NA                0.1010101   0.0413485   0.1606717
24 months   ki1148112-LCNI-5            MALAWI                         Wealth Q3_24 months   NA                   NA                0.0760870   0.0216119   0.1305621
24 months   kiGH5241-JiVitA-3           BANGLADESH                     Wealth Q4_24 months   NA                   NA                0.2575758   0.1228120   0.3923395
24 months   kiGH5241-JiVitA-3           BANGLADESH                     Wealth Q1_24 months   NA                   NA                0.3103448   0.0862575   0.5344322
24 months   kiGH5241-JiVitA-3           BANGLADESH                     Wealth Q2_24 months   NA                   NA                0.1851852   0.0080286   0.3623418
24 months   kiGH5241-JiVitA-3           BANGLADESH                     Wealth Q3_24 months   NA                   NA                0.2500000   0.0665114   0.4334886
24 months   kiGH5241-JiVitA-4           BANGLADESH                     Wealth Q4_24 months   NA                   NA                0.0514403   0.0220950   0.0807857
24 months   kiGH5241-JiVitA-4           BANGLADESH                     Wealth Q1_24 months   NA                   NA                0.1535714   0.1117979   0.1953450
24 months   kiGH5241-JiVitA-4           BANGLADESH                     Wealth Q2_24 months   NA                   NA                0.0972516   0.0611461   0.1333570
24 months   kiGH5241-JiVitA-4           BANGLADESH                     Wealth Q3_24 months   NA                   NA                0.0871369   0.0506822   0.1235916


### Parameter: RR


agecat      studyid                     country                        intXhhwealth_quart    intervention_level   baseline_level            estimate          ci_lower            ci_upper
----------  --------------------------  -----------------------------  --------------------  -------------------  ---------------  -----------------  ----------------  ------------------
Birth       kiGH5241-JiVitA-3           BANGLADESH                     Wealth Q4_Birth       Control              Control                  1.0000000         1.0000000           1.0000000
Birth       kiGH5241-JiVitA-3           BANGLADESH                     Wealth Q4_Birth       Maternal             Control                  0.9649838         0.7540760           1.2348803
Birth       kiGH5241-JiVitA-3           BANGLADESH                     Wealth Q1_Birth       Control              Control                  1.0000000         1.0000000           1.0000000
Birth       kiGH5241-JiVitA-3           BANGLADESH                     Wealth Q1_Birth       Maternal             Control                  0.8268773         0.7015471           0.9745975
Birth       kiGH5241-JiVitA-3           BANGLADESH                     Wealth Q2_Birth       Control              Control                  1.0000000         1.0000000           1.0000000
Birth       kiGH5241-JiVitA-3           BANGLADESH                     Wealth Q2_Birth       Maternal             Control                  0.8515418         0.7129040           1.0171403
Birth       kiGH5241-JiVitA-3           BANGLADESH                     Wealth Q3_Birth       Control              Control                  1.0000000         1.0000000           1.0000000
Birth       kiGH5241-JiVitA-3           BANGLADESH                     Wealth Q3_Birth       Maternal             Control                  0.8119601         0.6739509           0.9782304
Birth       kiGH5241-JiVitA-4           BANGLADESH                     Wealth Q4_Birth       Control              Control                  1.0000000         1.0000000           1.0000000
Birth       kiGH5241-JiVitA-4           BANGLADESH                     Wealth Q4_Birth       LNS                  Control                  0.3962264         0.1036321           1.5149293
Birth       kiGH5241-JiVitA-4           BANGLADESH                     Wealth Q4_Birth       Other                Control                  0.5185185         0.1906736           1.4100613
Birth       kiGH5241-JiVitA-4           BANGLADESH                     Wealth Q1_Birth       Control              Control                  1.0000000         1.0000000           1.0000000
Birth       kiGH5241-JiVitA-4           BANGLADESH                     Wealth Q1_Birth       LNS                  Control                  1.1607143         0.2592988           5.1957728
Birth       kiGH5241-JiVitA-4           BANGLADESH                     Wealth Q1_Birth       Other                Control                  1.6732673         0.4651787           6.0188133
Birth       kiGH5241-JiVitA-4           BANGLADESH                     Wealth Q2_Birth       Control              Control                  1.0000000         1.0000000           1.0000000
Birth       kiGH5241-JiVitA-4           BANGLADESH                     Wealth Q2_Birth       LNS                  Control                  1.6562500         0.3078706           8.9101214
Birth       kiGH5241-JiVitA-4           BANGLADESH                     Wealth Q2_Birth       Other                Control                  1.5588235         0.3240454           7.4987351
Birth       kiGH5241-JiVitA-4           BANGLADESH                     Wealth Q3_Birth       Control              Control                  1.0000000         1.0000000           1.0000000
Birth       kiGH5241-JiVitA-4           BANGLADESH                     Wealth Q3_Birth       LNS                  Control                  0.5185185         0.1082504           2.4836985
Birth       kiGH5241-JiVitA-4           BANGLADESH                     Wealth Q3_Birth       Other                Control                  1.1264368         0.4187337           3.0302308
6 months    iLiNS_DYADM_LNS             MALAWI                         Wealth Q4_6 months    Control              Control                  1.0000000         1.0000000           1.0000000
6 months    iLiNS_DYADM_LNS             MALAWI                         Wealth Q4_6 months    LNS                  Control                  0.3055556         0.0380961           2.4507549
6 months    iLiNS_DYADM_LNS             MALAWI                         Wealth Q1_6 months    Control              Control                  1.0000000         1.0000000           1.0000000
6 months    iLiNS_DYADM_LNS             MALAWI                         Wealth Q1_6 months    LNS                  Control                  0.4470588         0.0899754           2.2212910
6 months    iLiNS_DYADM_LNS             MALAWI                         Wealth Q3_6 months    Control              Control                  1.0000000         1.0000000           1.0000000
6 months    iLiNS_DYADM_LNS             MALAWI                         Wealth Q3_6 months    LNS                  Control                  0.5823755         0.1700648           1.9943059
6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Wealth Q1_6 months    Control              Control                  1.0000000         1.0000000           1.0000000
6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Wealth Q1_6 months    LNS                  Control                  1.6417910         0.3318470           8.1226514
6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Wealth Q1_6 months    Other                Control                  1.0784314         0.2166373           5.3684863
6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Wealth Q2_6 months    Control              Control                  1.0000000         1.0000000           1.0000000
6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Wealth Q2_6 months    LNS                  Control                  0.5833333         0.1127853           3.0170400
6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Wealth Q2_6 months    Other                Control                  0.8181818         0.2435135           2.7490118
6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Wealth Q4_6 months    Control              Control                  1.0000000         1.0000000           1.0000000
6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Wealth Q4_6 months    Maternal             Control                  1.5416667         0.3344296           7.1068345
6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Wealth Q1_6 months    Control              Control                  1.0000000         1.0000000           1.0000000
6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Wealth Q1_6 months    Maternal             Control                  0.0000000         0.0000000           0.0000001
6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Wealth Q2_6 months    Control              Control                  1.0000000         1.0000000           1.0000000
6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Wealth Q2_6 months    Maternal             Control                  0.4900001         0.0569465           4.2162393
6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Wealth Q3_6 months    Control              Control                  1.0000000         1.0000000           1.0000000
6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Wealth Q3_6 months    Maternal             Control                  0.4200000         0.0515896           3.4192947
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Wealth Q4_6 months    Control              Control                  1.0000000         1.0000000           1.0000000
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Wealth Q4_6 months    Other                Control                  0.8909091         0.2285416           3.4729742
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Wealth Q4_6 months    Zinc                 Control                  0.4644550         0.1184151           1.8217139
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Wealth Q1_6 months    Control              Control                  1.0000000         1.0000000           1.0000000
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Wealth Q1_6 months    Other                Control                  0.0000000         0.0000000           0.0000001
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Wealth Q1_6 months    Zinc                 Control                  0.6119403         0.1388673           2.6966099
6 months    ki1135781-COHORTS           GUATEMALA                      Wealth Q4_6 months    Control              Control                  1.0000000         1.0000000           1.0000000
6 months    ki1135781-COHORTS           GUATEMALA                      Wealth Q4_6 months    Other                Control                  0.7469136         0.3533969           1.5786213
6 months    ki1135781-COHORTS           GUATEMALA                      Wealth Q1_6 months    Control              Control                  1.0000000         1.0000000           1.0000000
6 months    ki1135781-COHORTS           GUATEMALA                      Wealth Q1_6 months    Other                Control                  0.8449367         0.4253024           1.6786129
6 months    ki1135781-COHORTS           GUATEMALA                      Wealth Q2_6 months    Control              Control                  1.0000000         1.0000000           1.0000000
6 months    ki1135781-COHORTS           GUATEMALA                      Wealth Q2_6 months    Other                Control                  0.6743119         0.3484756           1.3048162
6 months    ki1135781-COHORTS           GUATEMALA                      Wealth Q3_6 months    Control              Control                  1.0000000         1.0000000           1.0000000
6 months    ki1135781-COHORTS           GUATEMALA                      Wealth Q3_6 months    Other                Control                  0.5338983         0.2852073           0.9994393
6 months    ki1148112-iLiNS-DOSE        MALAWI                         Wealth Q4_6 months    Control              Control                  1.0000000         1.0000000           1.0000000
6 months    ki1148112-iLiNS-DOSE        MALAWI                         Wealth Q4_6 months    LNS                  Control                  0.4326165         0.2069398           0.9044034
6 months    ki1148112-iLiNS-DOSE        MALAWI                         Wealth Q1_6 months    Control              Control                  1.0000000         1.0000000           1.0000000
6 months    ki1148112-iLiNS-DOSE        MALAWI                         Wealth Q1_6 months    LNS                  Control                  1.3333333         0.4163330           4.2700857
6 months    ki1148112-iLiNS-DOSE        MALAWI                         Wealth Q2_6 months    Control              Control                  1.0000000         1.0000000           1.0000000
6 months    ki1148112-iLiNS-DOSE        MALAWI                         Wealth Q2_6 months    LNS                  Control                  0.9322034         0.2786964           3.1180996
6 months    ki1148112-iLiNS-DOSE        MALAWI                         Wealth Q3_6 months    Control              Control                  1.0000000         1.0000000           1.0000000
6 months    ki1148112-iLiNS-DOSE        MALAWI                         Wealth Q3_6 months    LNS                  Control                  0.9001736         0.3134062           2.5855022
6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Wealth Q4_6 months    Control              Control                  1.0000000         1.0000000           1.0000000
6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Wealth Q4_6 months    Maternal             Control                  0.4583333         0.1197028           1.7549256
6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Wealth Q1_6 months    Control              Control                  1.0000000         1.0000000           1.0000000
6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Wealth Q1_6 months    Maternal             Control                  0.4750000         0.1427494           1.5805672
6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Wealth Q2_6 months    Control              Control                  1.0000000         1.0000000           1.0000000
6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Wealth Q2_6 months    Maternal             Control                  2.2333333         0.2533062          19.6907072
6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Wealth Q3_6 months    Control              Control                  1.0000000         1.0000000           1.0000000
6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Wealth Q3_6 months    Maternal             Control                  0.7238095         0.2723068           1.9239340
6 months    ki1148112-LCNI-5            MALAWI                         Wealth Q4_6 months    Control              Control                  1.0000000         1.0000000           1.0000000
6 months    ki1148112-LCNI-5            MALAWI                         Wealth Q4_6 months    LNS                  Control                  1.0114286         0.3546145           2.8847882
6 months    ki1148112-LCNI-5            MALAWI                         Wealth Q4_6 months    Other                Control                  0.4452830         0.0898100           2.2077372
6 months    ki1148112-LCNI-5            MALAWI                         Wealth Q1_6 months    Control              Control                  1.0000000         1.0000000           1.0000000
6 months    ki1148112-LCNI-5            MALAWI                         Wealth Q1_6 months    LNS                  Control                  2.7499996         0.6313337          11.9786064
6 months    ki1148112-LCNI-5            MALAWI                         Wealth Q1_6 months    Other                Control                  3.7735844         0.8384351          16.9839489
6 months    ki1148112-LCNI-5            MALAWI                         Wealth Q2_6 months    Control              Control                  1.0000000         1.0000000           1.0000000
6 months    ki1148112-LCNI-5            MALAWI                         Wealth Q2_6 months    LNS                  Control                  1.7628205         0.5044071           6.1607698
6 months    ki1148112-LCNI-5            MALAWI                         Wealth Q2_6 months    Other                Control                  0.9166667         0.1598329           5.2572274
6 months    ki1148112-LCNI-5            MALAWI                         Wealth Q3_6 months    Control              Control                  1.0000000         1.0000000           1.0000000
6 months    ki1148112-LCNI-5            MALAWI                         Wealth Q3_6 months    LNS                  Control                  1.4117647         0.3131208           6.3652098
6 months    ki1148112-LCNI-5            MALAWI                         Wealth Q3_6 months    Other                Control                  0.9152542         0.1598523           5.2404005
6 months    kiGH5241-JiVitA-3           BANGLADESH                     Wealth Q4_6 months    Control              Control                  1.0000000         1.0000000           1.0000000
6 months    kiGH5241-JiVitA-3           BANGLADESH                     Wealth Q4_6 months    Maternal             Control                  0.8384509         0.6238976           1.1267873
6 months    kiGH5241-JiVitA-3           BANGLADESH                     Wealth Q1_6 months    Control              Control                  1.0000000         1.0000000           1.0000000
6 months    kiGH5241-JiVitA-3           BANGLADESH                     Wealth Q1_6 months    Maternal             Control                  0.8078553         0.6383416           1.0223839
6 months    kiGH5241-JiVitA-3           BANGLADESH                     Wealth Q2_6 months    Control              Control                  1.0000000         1.0000000           1.0000000
6 months    kiGH5241-JiVitA-3           BANGLADESH                     Wealth Q2_6 months    Maternal             Control                  0.8157712         0.6102235           1.0905555
6 months    kiGH5241-JiVitA-3           BANGLADESH                     Wealth Q3_6 months    Control              Control                  1.0000000         1.0000000           1.0000000
6 months    kiGH5241-JiVitA-3           BANGLADESH                     Wealth Q3_6 months    Maternal             Control                  0.8997681         0.6937595           1.1669501
6 months    kiGH5241-JiVitA-4           BANGLADESH                     Wealth Q4_6 months    Control              Control                  1.0000000         1.0000000           1.0000000
6 months    kiGH5241-JiVitA-4           BANGLADESH                     Wealth Q4_6 months    LNS                  Control                  0.4310036         0.1228044           1.5126829
6 months    kiGH5241-JiVitA-4           BANGLADESH                     Wealth Q4_6 months    Other                Control                  0.7539683         0.3297959           1.7236968
6 months    kiGH5241-JiVitA-4           BANGLADESH                     Wealth Q1_6 months    Control              Control                  1.0000000         1.0000000           1.0000000
6 months    kiGH5241-JiVitA-4           BANGLADESH                     Wealth Q1_6 months    LNS                  Control                  1.0919041         0.6624805           1.7996825
6 months    kiGH5241-JiVitA-4           BANGLADESH                     Wealth Q1_6 months    Other                Control                  0.8293030         0.5148931           1.3357015
6 months    kiGH5241-JiVitA-4           BANGLADESH                     Wealth Q2_6 months    Control              Control                  1.0000000         1.0000000           1.0000000
6 months    kiGH5241-JiVitA-4           BANGLADESH                     Wealth Q2_6 months    LNS                  Control                  0.8485009         0.4778540           1.5066395
6 months    kiGH5241-JiVitA-4           BANGLADESH                     Wealth Q2_6 months    Other                Control                  1.0553643         0.5963885           1.8675644
6 months    kiGH5241-JiVitA-4           BANGLADESH                     Wealth Q3_6 months    Control              Control                  1.0000000         1.0000000           1.0000000
6 months    kiGH5241-JiVitA-4           BANGLADESH                     Wealth Q3_6 months    LNS                  Control                  1.5859649         0.7960287           3.1597915
6 months    kiGH5241-JiVitA-4           BANGLADESH                     Wealth Q3_6 months    Other                Control                  1.5767442         0.7907310           3.1440807
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Wealth Q4_24 months   Control              Control                  1.0000000         1.0000000           1.0000000
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Wealth Q4_24 months   LNS                  Control                  1.7826087         0.5231781           6.0738284
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Wealth Q4_24 months   Other                Control                  1.1250000         0.3564307           3.5508305
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Wealth Q1_24 months   Control              Control                  1.0000000         1.0000000           1.0000000
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Wealth Q1_24 months   LNS                  Control                  0.5714286         0.2795333           1.1681280
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Wealth Q1_24 months   Other                Control                  0.6315789         0.3539350           1.1270203
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Wealth Q2_24 months   Control              Control                  1.0000000         1.0000000           1.0000000
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Wealth Q2_24 months   LNS                  Control                  0.9000000         0.3203617           2.5283919
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Wealth Q2_24 months   Other                Control                  1.4275862         0.6138641           3.3199572
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Wealth Q3_24 months   Control              Control                  1.0000000         1.0000000           1.0000000
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Wealth Q3_24 months   LNS                  Control                  1.1772959         0.5147510           2.6926141
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Wealth Q3_24 months   Other                Control                  0.8502994         0.3808541           1.8983887
24 months   ki1000111-WASH-Kenya        KENYA                          Wealth Q4_24 months   Control              Control                  1.0000000         1.0000000           1.0000000
24 months   ki1000111-WASH-Kenya        KENYA                          Wealth Q4_24 months   LNS                  Control                  0.1644737         0.0389171           0.6951085
24 months   ki1000111-WASH-Kenya        KENYA                          Wealth Q4_24 months   Other                Control                  0.7228371         0.3818315           1.3683877
24 months   ki1000111-WASH-Kenya        KENYA                          Wealth Q1_24 months   Control              Control                  1.0000000         1.0000000           1.0000000
24 months   ki1000111-WASH-Kenya        KENYA                          Wealth Q1_24 months   LNS                  Control                  0.9250000         0.5086699           1.6820832
24 months   ki1000111-WASH-Kenya        KENYA                          Wealth Q1_24 months   Other                Control                  0.7860806         0.4759631           1.2982577
24 months   ki1000111-WASH-Kenya        KENYA                          Wealth Q2_24 months   Control              Control                  1.0000000         1.0000000           1.0000000
24 months   ki1000111-WASH-Kenya        KENYA                          Wealth Q2_24 months   LNS                  Control                  0.4705883         0.1902747           1.1638612
24 months   ki1000111-WASH-Kenya        KENYA                          Wealth Q2_24 months   Other                Control                  0.9402239         0.5102621           1.7324841
24 months   ki1000111-WASH-Kenya        KENYA                          Wealth Q3_24 months   Control              Control                  1.0000000         1.0000000           1.0000000
24 months   ki1000111-WASH-Kenya        KENYA                          Wealth Q3_24 months   LNS                  Control                  0.5984556         0.2213519           1.6180076
24 months   ki1000111-WASH-Kenya        KENYA                          Wealth Q3_24 months   Other                Control                  0.6881047         0.3311492           1.4298334
24 months   ki1135781-COHORTS           GUATEMALA                      Wealth Q4_24 months   Control              Control                  1.0000000         1.0000000           1.0000000
24 months   ki1135781-COHORTS           GUATEMALA                      Wealth Q4_24 months   Other                Control                  1.0585305         0.6617102           1.6933197
24 months   ki1135781-COHORTS           GUATEMALA                      Wealth Q1_24 months   Control              Control                  1.0000000         1.0000000           1.0000000
24 months   ki1135781-COHORTS           GUATEMALA                      Wealth Q1_24 months   Other                Control                  0.7777778         0.4746494           1.2744951
24 months   ki1135781-COHORTS           GUATEMALA                      Wealth Q2_24 months   Control              Control                  1.0000000         1.0000000           1.0000000
24 months   ki1135781-COHORTS           GUATEMALA                      Wealth Q2_24 months   Other                Control                  0.5841785         0.3086702           1.1055959
24 months   ki1135781-COHORTS           GUATEMALA                      Wealth Q3_24 months   Control              Control                  1.0000000         1.0000000           1.0000000
24 months   ki1135781-COHORTS           GUATEMALA                      Wealth Q3_24 months   Other                Control                  0.8116883         0.4540539           1.4510125
24 months   ki1148112-iLiNS-DOSE        MALAWI                         Wealth Q4_24 months   Control              Control                  1.0000000         1.0000000           1.0000000
24 months   ki1148112-iLiNS-DOSE        MALAWI                         Wealth Q4_24 months   LNS                  Control                  0.6349693         0.3088286           1.3055334
24 months   ki1148112-iLiNS-DOSE        MALAWI                         Wealth Q1_24 months   Control              Control                  1.0000000         1.0000000           1.0000000
24 months   ki1148112-iLiNS-DOSE        MALAWI                         Wealth Q1_24 months   LNS                  Control                  1.2578125         0.4125142           3.8352430
24 months   ki1148112-iLiNS-DOSE        MALAWI                         Wealth Q2_24 months   Control              Control                  1.0000000         1.0000000           1.0000000
24 months   ki1148112-iLiNS-DOSE        MALAWI                         Wealth Q2_24 months   LNS                  Control                  1.3055215         0.5613527           3.0362128
24 months   ki1148112-iLiNS-DOSE        MALAWI                         Wealth Q3_24 months   Control              Control                  1.0000000         1.0000000           1.0000000
24 months   ki1148112-iLiNS-DOSE        MALAWI                         Wealth Q3_24 months   LNS                  Control                  1.1258277         0.4634515           2.7348880
24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Wealth Q3_24 months   Control              Control                  1.0000000         1.0000000           1.0000000
24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Wealth Q3_24 months   Maternal             Control           30433893.1560339   9238651.0842422   100255096.1376476
24 months   ki1148112-LCNI-5            MALAWI                         Wealth Q4_24 months   Control              Control                  1.0000000         1.0000000           1.0000000
24 months   ki1148112-LCNI-5            MALAWI                         Wealth Q4_24 months   LNS                  Control                  0.6808511         0.2132268           2.1740144
24 months   ki1148112-LCNI-5            MALAWI                         Wealth Q4_24 months   Other                Control                  0.2666667         0.0329518           2.1580366
24 months   ki1148112-LCNI-5            MALAWI                         Wealth Q1_24 months   Control              Control                  1.0000000         1.0000000           1.0000000
24 months   ki1148112-LCNI-5            MALAWI                         Wealth Q1_24 months   LNS                  Control                  0.9122807         0.2206269           3.7722328
24 months   ki1148112-LCNI-5            MALAWI                         Wealth Q1_24 months   Other                Control                  1.4444444         0.3567994           5.8475989
24 months   ki1148112-LCNI-5            MALAWI                         Wealth Q2_24 months   Control              Control                  1.0000000         1.0000000           1.0000000
24 months   ki1148112-LCNI-5            MALAWI                         Wealth Q2_24 months   LNS                  Control                  0.4444444         0.1352820           1.4601412
24 months   ki1148112-LCNI-5            MALAWI                         Wealth Q2_24 months   Other                Control                  0.0000000         0.0000000           0.0000001
24 months   ki1148112-LCNI-5            MALAWI                         Wealth Q3_24 months   Control              Control                  1.0000000         1.0000000           1.0000000
24 months   ki1148112-LCNI-5            MALAWI                         Wealth Q3_24 months   LNS                  Control                  1.6521739         0.1950164          13.9971773
24 months   ki1148112-LCNI-5            MALAWI                         Wealth Q3_24 months   Other                Control                  1.4074074         0.1355240          14.6158290
24 months   kiGH5241-JiVitA-3           BANGLADESH                     Wealth Q4_24 months   Control              Control                  1.0000000         1.0000000           1.0000000
24 months   kiGH5241-JiVitA-3           BANGLADESH                     Wealth Q4_24 months   Maternal             Control                  1.0035842         0.3499749           2.8778675
24 months   kiGH5241-JiVitA-3           BANGLADESH                     Wealth Q1_24 months   Control              Control                  1.0000000         1.0000000           1.0000000
24 months   kiGH5241-JiVitA-3           BANGLADESH                     Wealth Q1_24 months   Maternal             Control                  1.8421053         0.3423419           9.9121733
24 months   kiGH5241-JiVitA-3           BANGLADESH                     Wealth Q2_24 months   Control              Control                  1.0000000         1.0000000           1.0000000
24 months   kiGH5241-JiVitA-3           BANGLADESH                     Wealth Q2_24 months   Maternal             Control                  2.0000000         0.1029922          38.8378998
24 months   kiGH5241-JiVitA-3           BANGLADESH                     Wealth Q3_24 months   Control              Control                  1.0000000         1.0000000           1.0000000
24 months   kiGH5241-JiVitA-3           BANGLADESH                     Wealth Q3_24 months   Maternal             Control                  0.1118421         0.0051714           2.4187977
24 months   kiGH5241-JiVitA-4           BANGLADESH                     Wealth Q4_24 months   Control              Control                  1.0000000         1.0000000           1.0000000
24 months   kiGH5241-JiVitA-4           BANGLADESH                     Wealth Q4_24 months   LNS                  Control                  0.7922078         0.1377278           4.5567663
24 months   kiGH5241-JiVitA-4           BANGLADESH                     Wealth Q4_24 months   Other                Control                  0.9014778         0.2339501           3.4736571
24 months   kiGH5241-JiVitA-4           BANGLADESH                     Wealth Q1_24 months   Control              Control                  1.0000000         1.0000000           1.0000000
24 months   kiGH5241-JiVitA-4           BANGLADESH                     Wealth Q1_24 months   LNS                  Control                  1.0306748         0.4997091           2.1258182
24 months   kiGH5241-JiVitA-4           BANGLADESH                     Wealth Q1_24 months   Other                Control                  0.8150943         0.4083959           1.6268007
24 months   kiGH5241-JiVitA-4           BANGLADESH                     Wealth Q2_24 months   Control              Control                  1.0000000         1.0000000           1.0000000
24 months   kiGH5241-JiVitA-4           BANGLADESH                     Wealth Q2_24 months   LNS                  Control                  1.3066667         0.5699339           2.9957470
24 months   kiGH5241-JiVitA-4           BANGLADESH                     Wealth Q2_24 months   Other                Control                  1.1217949         0.4988211           2.5227956
24 months   kiGH5241-JiVitA-4           BANGLADESH                     Wealth Q3_24 months   Control              Control                  1.0000000         1.0000000           1.0000000
24 months   kiGH5241-JiVitA-4           BANGLADESH                     Wealth Q3_24 months   LNS                  Control                  0.5985401         0.2113907           1.6947304
24 months   kiGH5241-JiVitA-4           BANGLADESH                     Wealth Q3_24 months   Other                Control                  0.6279279         0.2380329           1.6564662


### Parameter: PAR


agecat      studyid                     country                        intXhhwealth_quart    intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------------------  -----------------------------  --------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       kiGH5241-JiVitA-3           BANGLADESH                     Wealth Q4_Birth       Control              NA                -0.0012501   -0.0099063    0.0074062
Birth       kiGH5241-JiVitA-3           BANGLADESH                     Wealth Q1_Birth       Control              NA                -0.0121548   -0.0228191   -0.0014906
Birth       kiGH5241-JiVitA-3           BANGLADESH                     Wealth Q2_Birth       Control              NA                -0.0088703   -0.0187470    0.0010064
Birth       kiGH5241-JiVitA-3           BANGLADESH                     Wealth Q3_Birth       Control              NA                -0.0107869   -0.0204465   -0.0011273
Birth       kiGH5241-JiVitA-4           BANGLADESH                     Wealth Q4_Birth       Control              NA                -0.0554254   -0.1322190    0.0213681
Birth       kiGH5241-JiVitA-4           BANGLADESH                     Wealth Q1_Birth       Control              NA                 0.0283401   -0.0502724    0.1069525
Birth       kiGH5241-JiVitA-4           BANGLADESH                     Wealth Q2_Birth       Control              NA                 0.0170587   -0.0311330    0.0652504
Birth       kiGH5241-JiVitA-4           BANGLADESH                     Wealth Q3_Birth       Control              NA                -0.0050779   -0.0484969    0.0383412
6 months    iLiNS_DYADM_LNS             MALAWI                         Wealth Q4_6 months    Control              NA                -0.0267380   -0.0646284    0.0111524
6 months    iLiNS_DYADM_LNS             MALAWI                         Wealth Q1_6 months    Control              NA                -0.0229045   -0.0661908    0.0203818
6 months    iLiNS_DYADM_LNS             MALAWI                         Wealth Q3_6 months    Control              NA                -0.0175977   -0.0577858    0.0225904
6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Wealth Q1_6 months    Control              NA                 0.0108835   -0.0456574    0.0674243
6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Wealth Q2_6 months    Control              NA                -0.0178187   -0.0914069    0.0557694
6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Wealth Q4_6 months    Control              NA                 0.0172796   -0.0459819    0.0805410
6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Wealth Q1_6 months    Control              NA                -0.0372549   -0.0668194   -0.0076904
6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Wealth Q2_6 months    Control              NA                -0.0140651   -0.0512548    0.0231246
6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Wealth Q3_6 months    Control              NA                -0.0222734   -0.0674958    0.0229489
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Wealth Q4_6 months    Control              NA                -0.0121767   -0.0449545    0.0206010
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Wealth Q1_6 months    Control              NA                -0.0105563   -0.0326106    0.0114981
6 months    ki1135781-COHORTS           GUATEMALA                      Wealth Q4_6 months    Control              NA                -0.0113984   -0.0404625    0.0176657
6 months    ki1135781-COHORTS           GUATEMALA                      Wealth Q1_6 months    Control              NA                -0.0131086   -0.0661531    0.0399358
6 months    ki1135781-COHORTS           GUATEMALA                      Wealth Q2_6 months    Control              NA                -0.0350358   -0.0945736    0.0245020
6 months    ki1135781-COHORTS           GUATEMALA                      Wealth Q3_6 months    Control              NA                -0.0587607   -0.1182209    0.0006995
6 months    ki1148112-iLiNS-DOSE        MALAWI                         Wealth Q4_6 months    Control              NA                -0.0637022   -0.1321538    0.0047494
6 months    ki1148112-iLiNS-DOSE        MALAWI                         Wealth Q1_6 months    Control              NA                 0.0171429   -0.0452078    0.0794935
6 months    ki1148112-iLiNS-DOSE        MALAWI                         Wealth Q2_6 months    Control              NA                -0.0031169   -0.0580161    0.0517823
6 months    ki1148112-iLiNS-DOSE        MALAWI                         Wealth Q3_6 months    Control              NA                -0.0054019   -0.0614490    0.0506453
6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Wealth Q4_6 months    Control              NA                -0.0308300   -0.0830651    0.0214050
6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Wealth Q1_6 months    Control              NA                -0.0312221   -0.0868457    0.0244014
6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Wealth Q2_6 months    Control              NA                 0.0118126   -0.0160739    0.0396991
6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Wealth Q3_6 months    Control              NA                -0.0152023   -0.0639108    0.0335061
6 months    ki1148112-LCNI-5            MALAWI                         Wealth Q4_6 months    Control              NA                -0.0110130   -0.0704207    0.0483946
6 months    ki1148112-LCNI-5            MALAWI                         Wealth Q1_6 months    Control              NA                 0.0634483    0.0062809    0.1206156
6 months    ki1148112-LCNI-5            MALAWI                         Wealth Q2_6 months    Control              NA                 0.0208314   -0.0336774    0.0753403
6 months    ki1148112-LCNI-5            MALAWI                         Wealth Q3_6 months    Control              NA                 0.0104343   -0.0586938    0.0795624
6 months    kiGH5241-JiVitA-3           BANGLADESH                     Wealth Q4_6 months    Control              NA                -0.0036712   -0.0098998    0.0025574
6 months    kiGH5241-JiVitA-3           BANGLADESH                     Wealth Q1_6 months    Control              NA                -0.0086178   -0.0182817    0.0010461
6 months    kiGH5241-JiVitA-3           BANGLADESH                     Wealth Q2_6 months    Control              NA                -0.0068824   -0.0166033    0.0028386
6 months    kiGH5241-JiVitA-3           BANGLADESH                     Wealth Q3_6 months    Control              NA                -0.0031630   -0.0110140    0.0046879
6 months    kiGH5241-JiVitA-4           BANGLADESH                     Wealth Q4_6 months    Control              NA                -0.0133705   -0.0389892    0.0122482
6 months    kiGH5241-JiVitA-4           BANGLADESH                     Wealth Q1_6 months    Control              NA                -0.0044980   -0.0326130    0.0236171
6 months    kiGH5241-JiVitA-4           BANGLADESH                     Wealth Q2_6 months    Control              NA                -0.0008392   -0.0250970    0.0234186
6 months    kiGH5241-JiVitA-4           BANGLADESH                     Wealth Q3_6 months    Control              NA                 0.0124370   -0.0032263    0.0281002
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Wealth Q4_24 months   Control              NA                 0.0115370   -0.0301613    0.0532353
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Wealth Q1_24 months   Control              NA                -0.0739700   -0.1632765    0.0153364
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Wealth Q2_24 months   Control              NA                 0.0227179   -0.0539789    0.0994146
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Wealth Q3_24 months   Control              NA                -0.0025570   -0.0677974    0.0626834
24 months   ki1000111-WASH-Kenya        KENYA                          Wealth Q4_24 months   Control              NA                -0.0290463   -0.0590021    0.0009094
24 months   ki1000111-WASH-Kenya        KENYA                          Wealth Q1_24 months   Control              NA                -0.0157580   -0.0554409    0.0239249
24 months   ki1000111-WASH-Kenya        KENYA                          Wealth Q2_24 months   Control              NA                -0.0140366   -0.0465315    0.0184582
24 months   ki1000111-WASH-Kenya        KENYA                          Wealth Q3_24 months   Control              NA                -0.0168747   -0.0460066    0.0122573
24 months   ki1135781-COHORTS           GUATEMALA                      Wealth Q4_24 months   Control              NA                 0.0098039   -0.0710609    0.0906687
24 months   ki1135781-COHORTS           GUATEMALA                      Wealth Q1_24 months   Control              NA                -0.0645161   -0.1899247    0.0608924
24 months   ki1135781-COHORTS           GUATEMALA                      Wealth Q2_24 months   Control              NA                -0.1050205   -0.2240287    0.0139877
24 months   ki1135781-COHORTS           GUATEMALA                      Wealth Q3_24 months   Control              NA                -0.0493617   -0.1850040    0.0862805
24 months   ki1148112-iLiNS-DOSE        MALAWI                         Wealth Q4_24 months   Control              NA                -0.0664433   -0.1863651    0.0534785
24 months   ki1148112-iLiNS-DOSE        MALAWI                         Wealth Q1_24 months   Control              NA                 0.0316395   -0.1095443    0.1728233
24 months   ki1148112-iLiNS-DOSE        MALAWI                         Wealth Q2_24 months   Control              NA                 0.0465595   -0.0869539    0.1800728
24 months   ki1148112-iLiNS-DOSE        MALAWI                         Wealth Q3_24 months   Control              NA                 0.0151033   -0.0937452    0.1239518
24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Wealth Q3_24 months   Control              NA                 0.2173913    0.0450338    0.3897488
24 months   ki1148112-LCNI-5            MALAWI                         Wealth Q4_24 months   Control              NA                -0.0494539   -0.1476567    0.0487489
24 months   ki1148112-LCNI-5            MALAWI                         Wealth Q1_24 months   Control              NA                 0.0096154   -0.0955976    0.1148283
24 months   ki1148112-LCNI-5            MALAWI                         Wealth Q2_24 months   Control              NA                -0.0864899   -0.1869439    0.0139641
24 months   ki1148112-LCNI-5            MALAWI                         Wealth Q3_24 months   Control              NA                 0.0234554   -0.0711476    0.1180584
24 months   kiGH5241-JiVitA-3           BANGLADESH                     Wealth Q4_24 months   Control              NA                 0.0004329   -0.1270469    0.1279127
24 months   kiGH5241-JiVitA-3           BANGLADESH                     Wealth Q1_24 months   Control              NA                 0.1103448   -0.1645402    0.3852299
24 months   kiGH5241-JiVitA-3           BANGLADESH                     Wealth Q2_24 months   Control              NA                 0.0740741   -0.1799953    0.3281435
24 months   kiGH5241-JiVitA-3           BANGLADESH                     Wealth Q3_24 months   Control              NA                -0.2205882   -0.4279384   -0.0132381
24 months   kiGH5241-JiVitA-4           BANGLADESH                     Wealth Q4_24 months   Control              NA                -0.0059367   -0.0604737    0.0486003
24 months   kiGH5241-JiVitA-4           BANGLADESH                     Wealth Q1_24 months   Control              NA                -0.0130952   -0.0918542    0.0656637
24 months   kiGH5241-JiVitA-4           BANGLADESH                     Wealth Q2_24 months   Control              NA                 0.0115373   -0.0331932    0.0562678
24 months   kiGH5241-JiVitA-4           BANGLADESH                     Wealth Q3_24 months   Control              NA                -0.0348143   -0.1025058    0.0328772


### Parameter: PAF


agecat      studyid                     country                        intXhhwealth_quart    intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------------------  -----------------------------  --------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       kiGH5241-JiVitA-3           BANGLADESH                     Wealth Q4_Birth       Control              NA                -0.0176497   -0.1473851    0.0974164
Birth       kiGH5241-JiVitA-3           BANGLADESH                     Wealth Q1_Birth       Control              NA                -0.0958023   -0.1819183   -0.0159608
Birth       kiGH5241-JiVitA-3           BANGLADESH                     Wealth Q2_Birth       Control              NA                -0.0819009   -0.1765475    0.0051320
Birth       kiGH5241-JiVitA-3           BANGLADESH                     Wealth Q3_Birth       Control              NA                -0.1039409   -0.2009917   -0.0147327
Birth       kiGH5241-JiVitA-4           BANGLADESH                     Wealth Q4_Birth       Control              NA                -0.6339286   -1.7506311    0.0294145
Birth       kiGH5241-JiVitA-4           BANGLADESH                     Wealth Q1_Birth       Control              NA                 0.2692308   -1.0381969    0.7379921
Birth       kiGH5241-JiVitA-4           BANGLADESH                     Wealth Q2_Birth       Control              NA                 0.3113208   -1.3662189    0.7995625
Birth       kiGH5241-JiVitA-4           BANGLADESH                     Wealth Q3_Birth       Control              NA                -0.0765306   -0.9819371    0.4152599
6 months    iLiNS_DYADM_LNS             MALAWI                         Wealth Q4_6 months    Control              NA                -0.3246753   -0.8095939    0.0302992
6 months    iLiNS_DYADM_LNS             MALAWI                         Wealth Q1_6 months    Control              NA                -0.3533835   -1.1513363    0.1486004
6 months    iLiNS_DYADM_LNS             MALAWI                         Wealth Q3_6 months    Control              NA                -0.2868421   -1.1091675    0.2148739
6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Wealth Q1_6 months    Control              NA                 0.1931818   -1.7812623    0.7659496
6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Wealth Q2_6 months    Control              NA                -0.2301587   -1.6497277    0.4288883
6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Wealth Q4_6 months    Control              NA                 0.1756757   -0.7733953    0.6168307
6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Wealth Q1_6 months    Control              NA                -0.3725490   -0.5851628   -0.1884526
6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Wealth Q2_6 months    Control              NA                -0.2081632   -0.8677235    0.2184826
6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Wealth Q3_6 months    Control              NA                -0.2301587   -0.7621156    0.1412082
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Wealth Q4_6 months    Control              NA                -0.4251701   -2.1310434    0.3512994
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Wealth Q1_6 months    Control              NA                -0.7630662   -3.1215017    0.2458083
6 months    ki1135781-COHORTS           GUATEMALA                      Wealth Q4_6 months    Control              NA                -0.1433566   -0.5698349    0.1672600
6 months    ki1135781-COHORTS           GUATEMALA                      Wealth Q1_6 months    Control              NA                -0.0786517   -0.4479979    0.1964840
6 months    ki1135781-COHORTS           GUATEMALA                      Wealth Q2_6 months    Control              NA                -0.2253968   -0.6696127    0.1006313
6 months    ki1135781-COHORTS           GUATEMALA                      Wealth Q3_6 months    Control              NA                -0.3594771   -0.7661296   -0.0464567
6 months    ki1148112-iLiNS-DOSE        MALAWI                         Wealth Q4_6 months    Control              NA                -0.8257694   -1.9105958   -0.1452755
6 months    ki1148112-iLiNS-DOSE        MALAWI                         Wealth Q1_6 months    Control              NA                 0.2222222   -1.1887994    0.7236210
6 months    ki1148112-iLiNS-DOSE        MALAWI                         Wealth Q2_6 months    Control              NA                -0.0606061   -1.9009382    0.6122340
6 months    ki1148112-iLiNS-DOSE        MALAWI                         Wealth Q3_6 months    Control              NA                -0.0897736   -1.5602359    0.5361339
6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Wealth Q4_6 months    Control              NA                -0.3939394   -1.1923766    0.1137166
6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Wealth Q1_6 months    Control              NA                -0.5526316   -1.8396799    0.1510787
6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Wealth Q2_6 months    Control              NA                 0.4417910   -2.1865712    0.9022155
6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Wealth Q3_6 months    Control              NA                -0.2384868   -1.2823378    0.3279480
6 months    ki1148112-LCNI-5            MALAWI                         Wealth Q4_6 months    Control              NA                -0.1493644   -1.3117779    0.4285617
6 months    ki1148112-LCNI-5            MALAWI                         Wealth Q1_6 months    Control              NA                 0.6133333   -0.4051052    0.8935943
6 months    ki1148112-LCNI-5            MALAWI                         Wealth Q2_6 months    Control              NA                 0.2763636   -0.9356157    0.7294661
6 months    ki1148112-LCNI-5            MALAWI                         Wealth Q3_6 months    Control              NA                 0.1581197   -1.9116464    0.7565767
6 months    kiGH5241-JiVitA-3           BANGLADESH                     Wealth Q4_6 months    Control              NA                -0.0878016   -0.2449951    0.0495447
6 months    kiGH5241-JiVitA-3           BANGLADESH                     Wealth Q1_6 months    Control              NA                -0.1091147   -0.2367404    0.0053408
6 months    kiGH5241-JiVitA-3           BANGLADESH                     Wealth Q2_6 months    Control              NA                -0.1030981   -0.2595860    0.0339481
6 months    kiGH5241-JiVitA-3           BANGLADESH                     Wealth Q3_6 months    Control              NA                -0.0530252   -0.1919288    0.0696911
6 months    kiGH5241-JiVitA-4           BANGLADESH                     Wealth Q4_6 months    Control              NA                -0.3790021   -1.3221929    0.1810987
6 months    kiGH5241-JiVitA-4           BANGLADESH                     Wealth Q1_6 months    Control              NA                -0.0528397   -0.4389675    0.2296758
6 months    kiGH5241-JiVitA-4           BANGLADESH                     Wealth Q2_6 months    Control              NA                -0.0133703   -0.4852798    0.3086021
6 months    kiGH5241-JiVitA-4           BANGLADESH                     Wealth Q3_6 months    Control              NA                 0.2965736   -0.1639321    0.5748818
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Wealth Q4_24 months   Control              NA                 0.1912709   -0.8906434    0.6540634
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Wealth Q1_24 months   Control              NA                -0.4202128   -1.0233627    0.0031425
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Wealth Q2_24 months   Control              NA                 0.1697531   -0.6522649    0.5828091
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Wealth Q3_24 months   Control              NA                -0.0232204   -0.8256443    0.4265148
24 months   ki1000111-WASH-Kenya        KENYA                          Wealth Q4_24 months   Control              NA                -0.4404054   -0.9514262   -0.0632058
24 months   ki1000111-WASH-Kenya        KENYA                          Wealth Q1_24 months   Control              NA                -0.1320016   -0.5171775    0.1553872
24 months   ki1000111-WASH-Kenya        KENYA                          Wealth Q2_24 months   Control              NA                -0.1837524   -0.6919128    0.1717837
24 months   ki1000111-WASH-Kenya        KENYA                          Wealth Q3_24 months   Control              NA                -0.2889785   -0.8863835    0.1192324
24 months   ki1135781-COHORTS           GUATEMALA                      Wealth Q4_24 months   Control              NA                 0.0294118   -0.2461887    0.2440619
24 months   ki1135781-COHORTS           GUATEMALA                      Wealth Q1_24 months   Control              NA                -0.1250000   -0.3994984    0.0956582
24 months   ki1135781-COHORTS           GUATEMALA                      Wealth Q2_24 months   Control              NA                -0.2463942   -0.5692293    0.0100245
24 months   ki1135781-COHORTS           GUATEMALA                      Wealth Q3_24 months   Control              NA                -0.0966667   -0.3995379    0.1406608
24 months   ki1148112-iLiNS-DOSE        MALAWI                         Wealth Q4_24 months   Control              NA                -0.4265233   -1.4369529    0.1649536
24 months   ki1148112-iLiNS-DOSE        MALAWI                         Wealth Q1_24 months   Control              NA                 0.1813187   -1.1951091    0.6946671
24 months   ki1148112-iLiNS-DOSE        MALAWI                         Wealth Q2_24 months   Control              NA                 0.2068106   -0.6724242    0.6238099
24 months   ki1148112-iLiNS-DOSE        MALAWI                         Wealth Q3_24 months   Control              NA                 0.0931372   -0.9001006    0.5671807
24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Wealth Q3_24 months   Control              NA                 1.0000000    0.9999999    1.0000000
24 months   ki1148112-LCNI-5            MALAWI                         Wealth Q4_24 months   Control              NA                -0.4630682   -1.6979597    0.2065973
24 months   ki1148112-LCNI-5            MALAWI                         Wealth Q1_24 months   Control              NA                 0.0769231   -1.2954659    0.6288026
24 months   ki1148112-LCNI-5            MALAWI                         Wealth Q2_24 months   Control              NA                -0.8562500   -2.0412998   -0.1329577
24 months   ki1148112-LCNI-5            MALAWI                         Wealth Q3_24 months   Control              NA                 0.3082707   -3.0699314    0.8824330
24 months   kiGH5241-JiVitA-3           BANGLADESH                     Wealth Q4_24 months   Control              NA                 0.0016807   -0.6389068    0.3918864
24 months   kiGH5241-JiVitA-3           BANGLADESH                     Wealth Q1_24 months   Control              NA                 0.3555556   -1.3882934    0.8261065
24 months   kiGH5241-JiVitA-3           BANGLADESH                     Wealth Q2_24 months   Control              NA                 0.4000000   -5.5050117    0.9446581
24 months   kiGH5241-JiVitA-3           BANGLADESH                     Wealth Q3_24 months   Control              NA                -0.8823529   -2.0090515   -0.1775314
24 months   kiGH5241-JiVitA-4           BANGLADESH                     Wealth Q4_24 months   Control              NA                -0.1154098   -1.8688648    0.5663305
24 months   kiGH5241-JiVitA-4           BANGLADESH                     Wealth Q1_24 months   Control              NA                -0.0852713   -0.7390553    0.3227278
24 months   kiGH5241-JiVitA-4           BANGLADESH                     Wealth Q2_24 months   Control              NA                 0.1186335   -0.4527998    0.4653036
24 months   kiGH5241-JiVitA-4           BANGLADESH                     Wealth Q3_24 months   Control              NA                -0.3995354   -1.4267873    0.1928838
