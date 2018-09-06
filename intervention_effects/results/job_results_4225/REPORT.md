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
* intXhhwealth_quart

## Data Summary

agecat      studyid                     country                        intXhhwealth_quart     stunted   n_cell       n
----------  --------------------------  -----------------------------  --------------------  --------  -------  ------
Birth       iLiNS_DYADM_LNS             MALAWI                         Wealth Q1_Birth              0        0       1
Birth       iLiNS_DYADM_LNS             MALAWI                         Wealth Q1_Birth              1        1       1
Birth       ki1000125-AgaKhanUniv       PAKISTAN                       Wealth Q1_Birth              0        2       2
Birth       ki1000125-AgaKhanUniv       PAKISTAN                       Wealth Q1_Birth              1        0       2
Birth       ki1000125-AgaKhanUniv       PAKISTAN                       Wealth Q2_Birth              0        2       2
Birth       ki1000125-AgaKhanUniv       PAKISTAN                       Wealth Q2_Birth              1        0       2
Birth       ki1135781-COHORTS           GUATEMALA                      Wealth Q4_Birth              0      278     293
Birth       ki1135781-COHORTS           GUATEMALA                      Wealth Q4_Birth              1       15     293
Birth       ki1135781-COHORTS           GUATEMALA                      Wealth Q1_Birth              0      147     157
Birth       ki1135781-COHORTS           GUATEMALA                      Wealth Q1_Birth              1       10     157
Birth       ki1135781-COHORTS           GUATEMALA                      Wealth Q2_Birth              0      149     161
Birth       ki1135781-COHORTS           GUATEMALA                      Wealth Q2_Birth              1       12     161
Birth       ki1135781-COHORTS           GUATEMALA                      Wealth Q3_Birth              0      195     205
Birth       ki1135781-COHORTS           GUATEMALA                      Wealth Q3_Birth              1       10     205
Birth       ki1148112-iLiNS-DYAD-M      MALAWI                         Wealth Q1_Birth              0        0       1
Birth       ki1148112-iLiNS-DYAD-M      MALAWI                         Wealth Q1_Birth              1        1       1
Birth       kiGH5241-JiVitA-3           BANGLADESH                     Wealth Q4_Birth              0     6178    8302
Birth       kiGH5241-JiVitA-3           BANGLADESH                     Wealth Q4_Birth              1     2124    8302
Birth       kiGH5241-JiVitA-3           BANGLADESH                     Wealth Q1_Birth              0     6584   10404
Birth       kiGH5241-JiVitA-3           BANGLADESH                     Wealth Q1_Birth              1     3820   10404
Birth       kiGH5241-JiVitA-3           BANGLADESH                     Wealth Q2_Birth              0     7140   10692
Birth       kiGH5241-JiVitA-3           BANGLADESH                     Wealth Q2_Birth              1     3552   10692
Birth       kiGH5241-JiVitA-3           BANGLADESH                     Wealth Q3_Birth              0     6616    9790
Birth       kiGH5241-JiVitA-3           BANGLADESH                     Wealth Q3_Birth              1     3174    9790
Birth       kiGH5241-JiVitA-4           BANGLADESH                     Wealth Q4_Birth              0      254     366
Birth       kiGH5241-JiVitA-4           BANGLADESH                     Wealth Q4_Birth              1      112     366
Birth       kiGH5241-JiVitA-4           BANGLADESH                     Wealth Q1_Birth              0      292     418
Birth       kiGH5241-JiVitA-4           BANGLADESH                     Wealth Q1_Birth              1      126     418
Birth       kiGH5241-JiVitA-4           BANGLADESH                     Wealth Q2_Birth              0      316     438
Birth       kiGH5241-JiVitA-4           BANGLADESH                     Wealth Q2_Birth              1      122     438
Birth       kiGH5241-JiVitA-4           BANGLADESH                     Wealth Q3_Birth              0      288     422
Birth       kiGH5241-JiVitA-4           BANGLADESH                     Wealth Q3_Birth              1      134     422
6 months    iLiNS_DYADM_LNS             MALAWI                         Wealth Q4_6 months           0       62      85
6 months    iLiNS_DYADM_LNS             MALAWI                         Wealth Q4_6 months           1       23      85
6 months    iLiNS_DYADM_LNS             MALAWI                         Wealth Q1_6 months           0       83     108
6 months    iLiNS_DYADM_LNS             MALAWI                         Wealth Q1_6 months           1       25     108
6 months    iLiNS_DYADM_LNS             MALAWI                         Wealth Q2_6 months           0       96     132
6 months    iLiNS_DYADM_LNS             MALAWI                         Wealth Q2_6 months           1       36     132
6 months    iLiNS_DYADM_LNS             MALAWI                         Wealth Q3_6 months           0      126     163
6 months    iLiNS_DYADM_LNS             MALAWI                         Wealth Q3_6 months           1       37     163
6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Wealth Q4_6 months           0      136     147
6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Wealth Q4_6 months           1       11     147
6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Wealth Q1_6 months           0      173     213
6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Wealth Q1_6 months           1       40     213
6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Wealth Q2_6 months           0      126     155
6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Wealth Q2_6 months           1       29     155
6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Wealth Q3_6 months           0      147     167
6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Wealth Q3_6 months           1       20     167
6 months    ki1000111-WASH-Kenya        KENYA                          Wealth Q4_6 months           0       13      13
6 months    ki1000111-WASH-Kenya        KENYA                          Wealth Q4_6 months           1        0      13
6 months    ki1000111-WASH-Kenya        KENYA                          Wealth Q1_6 months           0       15      21
6 months    ki1000111-WASH-Kenya        KENYA                          Wealth Q1_6 months           1        6      21
6 months    ki1000111-WASH-Kenya        KENYA                          Wealth Q2_6 months           0       12      13
6 months    ki1000111-WASH-Kenya        KENYA                          Wealth Q2_6 months           1        1      13
6 months    ki1000111-WASH-Kenya        KENYA                          Wealth Q3_6 months           0       23      27
6 months    ki1000111-WASH-Kenya        KENYA                          Wealth Q3_6 months           1        4      27
6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Wealth Q4_6 months           0       46      61
6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Wealth Q4_6 months           1       15      61
6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Wealth Q1_6 months           0       40      70
6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Wealth Q1_6 months           1       30      70
6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Wealth Q2_6 months           0       62      74
6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Wealth Q2_6 months           1       12      74
6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Wealth Q3_6 months           0       44      62
6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Wealth Q3_6 months           1       18      62
6 months    ki1017093b-PROVIDE          BANGLADESH                     Wealth Q4_6 months           0       11      13
6 months    ki1017093b-PROVIDE          BANGLADESH                     Wealth Q4_6 months           1        2      13
6 months    ki1017093b-PROVIDE          BANGLADESH                     Wealth Q1_6 months           0       12      16
6 months    ki1017093b-PROVIDE          BANGLADESH                     Wealth Q1_6 months           1        4      16
6 months    ki1017093b-PROVIDE          BANGLADESH                     Wealth Q2_6 months           0        2       3
6 months    ki1017093b-PROVIDE          BANGLADESH                     Wealth Q2_6 months           1        1       3
6 months    ki1017093b-PROVIDE          BANGLADESH                     Wealth Q3_6 months           0       10      13
6 months    ki1017093b-PROVIDE          BANGLADESH                     Wealth Q3_6 months           1        3      13
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Wealth Q4_6 months           0      353     419
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Wealth Q4_6 months           1       66     419
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Wealth Q1_6 months           0      464     506
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Wealth Q1_6 months           1       42     506
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Wealth Q2_6 months           0      308     344
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Wealth Q2_6 months           1       36     344
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Wealth Q3_6 months           0      391     432
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Wealth Q3_6 months           1       41     432
6 months    ki1135781-COHORTS           GUATEMALA                      Wealth Q4_6 months           0      211     327
6 months    ki1135781-COHORTS           GUATEMALA                      Wealth Q4_6 months           1      116     327
6 months    ki1135781-COHORTS           GUATEMALA                      Wealth Q1_6 months           0       91     168
6 months    ki1135781-COHORTS           GUATEMALA                      Wealth Q1_6 months           1       77     168
6 months    ki1135781-COHORTS           GUATEMALA                      Wealth Q2_6 months           0      103     193
6 months    ki1135781-COHORTS           GUATEMALA                      Wealth Q2_6 months           1       90     193
6 months    ki1135781-COHORTS           GUATEMALA                      Wealth Q3_6 months           0      118     208
6 months    ki1135781-COHORTS           GUATEMALA                      Wealth Q3_6 months           1       90     208
6 months    ki1148112-iLiNS-DOSE        MALAWI                         Wealth Q4_6 months           0      244     350
6 months    ki1148112-iLiNS-DOSE        MALAWI                         Wealth Q4_6 months           1      106     350
6 months    ki1148112-iLiNS-DOSE        MALAWI                         Wealth Q1_6 months           0      253     350
6 months    ki1148112-iLiNS-DOSE        MALAWI                         Wealth Q1_6 months           1       97     350
6 months    ki1148112-iLiNS-DOSE        MALAWI                         Wealth Q2_6 months           0      244     350
6 months    ki1148112-iLiNS-DOSE        MALAWI                         Wealth Q2_6 months           1      106     350
6 months    ki1148112-iLiNS-DOSE        MALAWI                         Wealth Q3_6 months           0      238     349
6 months    ki1148112-iLiNS-DOSE        MALAWI                         Wealth Q3_6 months           1      111     349
6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Wealth Q4_6 months           0       85     115
6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Wealth Q4_6 months           1       30     115
6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Wealth Q1_6 months           0      138     177
6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Wealth Q1_6 months           1       39     177
6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Wealth Q2_6 months           0      137     187
6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Wealth Q2_6 months           1       50     187
6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Wealth Q3_6 months           0      196     251
6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Wealth Q3_6 months           1       55     251
6 months    ki1148112-LCNI-5            MALAWI                         Wealth Q4_6 months           0      142     217
6 months    ki1148112-LCNI-5            MALAWI                         Wealth Q4_6 months           1       75     217
6 months    ki1148112-LCNI-5            MALAWI                         Wealth Q1_6 months           0      127     203
6 months    ki1148112-LCNI-5            MALAWI                         Wealth Q1_6 months           1       76     203
6 months    ki1148112-LCNI-5            MALAWI                         Wealth Q2_6 months           0      122     199
6 months    ki1148112-LCNI-5            MALAWI                         Wealth Q2_6 months           1       77     199
6 months    ki1148112-LCNI-5            MALAWI                         Wealth Q3_6 months           0      129     197
6 months    ki1148112-LCNI-5            MALAWI                         Wealth Q3_6 months           1       68     197
6 months    kiGH5241-JiVitA-3           BANGLADESH                     Wealth Q4_6 months           0     7725    9447
6 months    kiGH5241-JiVitA-3           BANGLADESH                     Wealth Q4_6 months           1     1722    9447
6 months    kiGH5241-JiVitA-3           BANGLADESH                     Wealth Q1_6 months           0     5200    7369
6 months    kiGH5241-JiVitA-3           BANGLADESH                     Wealth Q1_6 months           1     2169    7369
6 months    kiGH5241-JiVitA-3           BANGLADESH                     Wealth Q2_6 months           0     5924    8269
6 months    kiGH5241-JiVitA-3           BANGLADESH                     Wealth Q2_6 months           1     2345    8269
6 months    kiGH5241-JiVitA-3           BANGLADESH                     Wealth Q3_6 months           0     6204    8382
6 months    kiGH5241-JiVitA-3           BANGLADESH                     Wealth Q3_6 months           1     2178    8382
6 months    kiGH5241-JiVitA-4           BANGLADESH                     Wealth Q4_6 months           0     1769    2211
6 months    kiGH5241-JiVitA-4           BANGLADESH                     Wealth Q4_6 months           1      442    2211
6 months    kiGH5241-JiVitA-4           BANGLADESH                     Wealth Q1_6 months           0     1606    2326
6 months    kiGH5241-JiVitA-4           BANGLADESH                     Wealth Q1_6 months           1      720    2326
6 months    kiGH5241-JiVitA-4           BANGLADESH                     Wealth Q2_6 months           0     1725    2358
6 months    kiGH5241-JiVitA-4           BANGLADESH                     Wealth Q2_6 months           1      633    2358
6 months    kiGH5241-JiVitA-4           BANGLADESH                     Wealth Q3_6 months           0     1900    2480
6 months    kiGH5241-JiVitA-4           BANGLADESH                     Wealth Q3_6 months           1      580    2480
24 months   iLiNS_DYADM_LNS             MALAWI                         Wealth Q4_24 months          0        4       6
24 months   iLiNS_DYADM_LNS             MALAWI                         Wealth Q4_24 months          1        2       6
24 months   iLiNS_DYADM_LNS             MALAWI                         Wealth Q1_24 months          0        4       6
24 months   iLiNS_DYADM_LNS             MALAWI                         Wealth Q1_24 months          1        2       6
24 months   iLiNS_DYADM_LNS             MALAWI                         Wealth Q2_24 months          0        5       9
24 months   iLiNS_DYADM_LNS             MALAWI                         Wealth Q2_24 months          1        4       9
24 months   iLiNS_DYADM_LNS             MALAWI                         Wealth Q3_24 months          0        7      13
24 months   iLiNS_DYADM_LNS             MALAWI                         Wealth Q3_24 months          1        6      13
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Wealth Q4_24 months          0      233     315
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Wealth Q4_24 months          1       82     315
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Wealth Q1_24 months          0      125     267
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Wealth Q1_24 months          1      142     267
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Wealth Q2_24 months          0      154     269
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Wealth Q2_24 months          1      115     269
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Wealth Q3_24 months          0      192     336
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Wealth Q3_24 months          1      144     336
24 months   ki1000111-WASH-Kenya        KENYA                          Wealth Q4_24 months          0      410     561
24 months   ki1000111-WASH-Kenya        KENYA                          Wealth Q4_24 months          1      151     561
24 months   ki1000111-WASH-Kenya        KENYA                          Wealth Q1_24 months          0      372     578
24 months   ki1000111-WASH-Kenya        KENYA                          Wealth Q1_24 months          1      206     578
24 months   ki1000111-WASH-Kenya        KENYA                          Wealth Q2_24 months          0      385     576
24 months   ki1000111-WASH-Kenya        KENYA                          Wealth Q2_24 months          1      191     576
24 months   ki1000111-WASH-Kenya        KENYA                          Wealth Q3_24 months          0      398     548
24 months   ki1000111-WASH-Kenya        KENYA                          Wealth Q3_24 months          1      150     548
24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Wealth Q3_24 months          0        0       1
24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Wealth Q3_24 months          1        1       1
24 months   ki1017093b-PROVIDE          BANGLADESH                     Wealth Q4_24 months          0        1       1
24 months   ki1017093b-PROVIDE          BANGLADESH                     Wealth Q4_24 months          1        0       1
24 months   ki1017093b-PROVIDE          BANGLADESH                     Wealth Q3_24 months          0        1       1
24 months   ki1017093b-PROVIDE          BANGLADESH                     Wealth Q3_24 months          1        0       1
24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Wealth Q4_24 months          0        0       1
24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Wealth Q4_24 months          1        1       1
24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Wealth Q1_24 months          0        2       2
24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Wealth Q1_24 months          1        0       2
24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Wealth Q2_24 months          0        1       1
24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Wealth Q2_24 months          1        0       1
24 months   ki1135781-COHORTS           GUATEMALA                      Wealth Q4_24 months          0       36     141
24 months   ki1135781-COHORTS           GUATEMALA                      Wealth Q4_24 months          1      105     141
24 months   ki1135781-COHORTS           GUATEMALA                      Wealth Q1_24 months          0       15      62
24 months   ki1135781-COHORTS           GUATEMALA                      Wealth Q1_24 months          1       47      62
24 months   ki1135781-COHORTS           GUATEMALA                      Wealth Q2_24 months          0       16      61
24 months   ki1135781-COHORTS           GUATEMALA                      Wealth Q2_24 months          1       45      61
24 months   ki1135781-COHORTS           GUATEMALA                      Wealth Q3_24 months          0        4      47
24 months   ki1135781-COHORTS           GUATEMALA                      Wealth Q3_24 months          1       43      47
24 months   ki1148112-iLiNS-DOSE        MALAWI                         Wealth Q4_24 months          0      112     199
24 months   ki1148112-iLiNS-DOSE        MALAWI                         Wealth Q4_24 months          1       87     199
24 months   ki1148112-iLiNS-DOSE        MALAWI                         Wealth Q1_24 months          0       77     149
24 months   ki1148112-iLiNS-DOSE        MALAWI                         Wealth Q1_24 months          1       72     149
24 months   ki1148112-iLiNS-DOSE        MALAWI                         Wealth Q2_24 months          0       86     191
24 months   ki1148112-iLiNS-DOSE        MALAWI                         Wealth Q2_24 months          1      105     191
24 months   ki1148112-iLiNS-DOSE        MALAWI                         Wealth Q3_24 months          0       88     185
24 months   ki1148112-iLiNS-DOSE        MALAWI                         Wealth Q3_24 months          1       97     185
24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Wealth Q4_24 months          0        4       6
24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Wealth Q4_24 months          1        2       6
24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Wealth Q1_24 months          0       10      14
24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Wealth Q1_24 months          1        4      14
24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Wealth Q2_24 months          0       12      21
24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Wealth Q2_24 months          1        9      21
24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Wealth Q3_24 months          0       12      23
24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Wealth Q3_24 months          1       11      23
24 months   ki1148112-LCNI-5            MALAWI                         Wealth Q4_24 months          0       67     103
24 months   ki1148112-LCNI-5            MALAWI                         Wealth Q4_24 months          1       36     103
24 months   ki1148112-LCNI-5            MALAWI                         Wealth Q1_24 months          0       53      88
24 months   ki1148112-LCNI-5            MALAWI                         Wealth Q1_24 months          1       35      88
24 months   ki1148112-LCNI-5            MALAWI                         Wealth Q2_24 months          0       61      99
24 months   ki1148112-LCNI-5            MALAWI                         Wealth Q2_24 months          1       38      99
24 months   ki1148112-LCNI-5            MALAWI                         Wealth Q3_24 months          0       59      92
24 months   ki1148112-LCNI-5            MALAWI                         Wealth Q3_24 months          1       33      92
24 months   kiGH5241-JiVitA-3           BANGLADESH                     Wealth Q4_24 months          0       39      66
24 months   kiGH5241-JiVitA-3           BANGLADESH                     Wealth Q4_24 months          1       27      66
24 months   kiGH5241-JiVitA-3           BANGLADESH                     Wealth Q1_24 months          0        7      29
24 months   kiGH5241-JiVitA-3           BANGLADESH                     Wealth Q1_24 months          1       22      29
24 months   kiGH5241-JiVitA-3           BANGLADESH                     Wealth Q2_24 months          0       11      27
24 months   kiGH5241-JiVitA-3           BANGLADESH                     Wealth Q2_24 months          1       16      27
24 months   kiGH5241-JiVitA-3           BANGLADESH                     Wealth Q3_24 months          0       18      36
24 months   kiGH5241-JiVitA-3           BANGLADESH                     Wealth Q3_24 months          1       18      36
24 months   kiGH5241-JiVitA-4           BANGLADESH                     Wealth Q4_24 months          0      333     486
24 months   kiGH5241-JiVitA-4           BANGLADESH                     Wealth Q4_24 months          1      153     486
24 months   kiGH5241-JiVitA-4           BANGLADESH                     Wealth Q1_24 months          0      298     560
24 months   kiGH5241-JiVitA-4           BANGLADESH                     Wealth Q1_24 months          1      262     560
24 months   kiGH5241-JiVitA-4           BANGLADESH                     Wealth Q2_24 months          0      259     473
24 months   kiGH5241-JiVitA-4           BANGLADESH                     Wealth Q2_24 months          1      214     473
24 months   kiGH5241-JiVitA-4           BANGLADESH                     Wealth Q3_24 months          0      280     482
24 months   kiGH5241-JiVitA-4           BANGLADESH                     Wealth Q3_24 months          1      202     482


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
* agecat: Birth, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI, intXhhwealth_quart: Wealth Q1_Birth
* agecat: 6 months, studyid: ki1000111-WASH-Kenya, country: KENYA, intXhhwealth_quart: Wealth Q4_6 months
* agecat: 6 months, studyid: ki1000111-WASH-Kenya, country: KENYA, intXhhwealth_quart: Wealth Q2_6 months
* agecat: 6 months, studyid: ki1000111-WASH-Kenya, country: KENYA, intXhhwealth_quart: Wealth Q3_6 months
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH, intXhhwealth_quart: Wealth Q4_6 months
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH, intXhhwealth_quart: Wealth Q1_6 months
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH, intXhhwealth_quart: Wealth Q2_6 months
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH, intXhhwealth_quart: Wealth Q3_6 months
* agecat: 24 months, studyid: iLiNS_DYADM_LNS, country: MALAWI, intXhhwealth_quart: Wealth Q4_24 months
* agecat: 24 months, studyid: iLiNS_DYADM_LNS, country: MALAWI, intXhhwealth_quart: Wealth Q1_24 months
* agecat: 24 months, studyid: iLiNS_DYADM_LNS, country: MALAWI, intXhhwealth_quart: Wealth Q2_24 months
* agecat: 24 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN, intXhhwealth_quart: Wealth Q3_24 months
* agecat: 24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH, intXhhwealth_quart: Wealth Q4_24 months
* agecat: 24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH, intXhhwealth_quart: Wealth Q3_24 months
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF, intXhhwealth_quart: Wealth Q4_24 months
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF, intXhhwealth_quart: Wealth Q1_24 months
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF, intXhhwealth_quart: Wealth Q2_24 months
* agecat: 24 months, studyid: ki1135781-COHORTS, country: GUATEMALA, intXhhwealth_quart: Wealth Q3_24 months
* agecat: 24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI, intXhhwealth_quart: Wealth Q4_24 months
* agecat: 24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI, intXhhwealth_quart: Wealth Q1_24 months

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/2df3969e-2837-4734-a606-b2bc8faa9c6b/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/2df3969e-2837-4734-a606-b2bc8faa9c6b/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/2df3969e-2837-4734-a606-b2bc8faa9c6b/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/2df3969e-2837-4734-a606-b2bc8faa9c6b/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                     country                        intXhhwealth_quart    intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------  --------------------------  -----------------------------  --------------------  -------------------  ---------------  ----------  -----------  ----------
Birth       ki1135781-COHORTS           GUATEMALA                      Wealth Q4_Birth       Control              NA                0.0277778    0.0008909   0.0546647
Birth       ki1135781-COHORTS           GUATEMALA                      Wealth Q4_Birth       Other                NA                0.0738255    0.0317677   0.1158833
Birth       ki1135781-COHORTS           GUATEMALA                      Wealth Q1_Birth       Control              NA                0.0329670   -0.0038353   0.0697694
Birth       ki1135781-COHORTS           GUATEMALA                      Wealth Q1_Birth       Other                NA                0.1060606    0.0315368   0.1805844
Birth       ki1135781-COHORTS           GUATEMALA                      Wealth Q2_Birth       Control              NA                0.0937500    0.0221158   0.1653842
Birth       ki1135781-COHORTS           GUATEMALA                      Wealth Q2_Birth       Other                NA                0.0618557    0.0137673   0.1099440
Birth       ki1135781-COHORTS           GUATEMALA                      Wealth Q3_Birth       Control              NA                0.0487805    0.0020429   0.0955181
Birth       ki1135781-COHORTS           GUATEMALA                      Wealth Q3_Birth       Other                NA                0.0487805    0.0106194   0.0869416
Birth       kiGH5241-JiVitA-3           BANGLADESH                     Wealth Q4_Birth       Control              NA                0.2673031    0.2459207   0.2886855
Birth       kiGH5241-JiVitA-3           BANGLADESH                     Wealth Q4_Birth       Maternal             NA                0.2441634    0.2230506   0.2652763
Birth       kiGH5241-JiVitA-3           BANGLADESH                     Wealth Q1_Birth       Control              NA                0.3875728    0.3641749   0.4109707
Birth       kiGH5241-JiVitA-3           BANGLADESH                     Wealth Q1_Birth       Maternal             NA                0.3471641    0.3240250   0.3703031
Birth       kiGH5241-JiVitA-3           BANGLADESH                     Wealth Q2_Birth       Control              NA                0.3488550    0.3261611   0.3715489
Birth       kiGH5241-JiVitA-3           BANGLADESH                     Wealth Q2_Birth       Maternal             NA                0.3162142    0.2941536   0.3382749
Birth       kiGH5241-JiVitA-3           BANGLADESH                     Wealth Q3_Birth       Control              NA                0.3481997    0.3265438   0.3698555
Birth       kiGH5241-JiVitA-3           BANGLADESH                     Wealth Q3_Birth       Maternal             NA                0.3002856    0.2798757   0.3206955
Birth       kiGH5241-JiVitA-4           BANGLADESH                     Wealth Q4_Birth       Control              NA                0.3673469    0.2314275   0.5032664
Birth       kiGH5241-JiVitA-4           BANGLADESH                     Wealth Q4_Birth       LNS                  NA                0.3207547    0.1788510   0.4626584
Birth       kiGH5241-JiVitA-4           BANGLADESH                     Wealth Q4_Birth       Other                NA                0.2592593    0.1621314   0.3563872
Birth       kiGH5241-JiVitA-4           BANGLADESH                     Wealth Q1_Birth       Control              NA                0.3269231    0.1946919   0.4591542
Birth       kiGH5241-JiVitA-4           BANGLADESH                     Wealth Q1_Birth       LNS                  NA                0.3750000    0.2394465   0.5105535
Birth       kiGH5241-JiVitA-4           BANGLADESH                     Wealth Q1_Birth       Other                NA                0.2475248    0.1607607   0.3342888
Birth       kiGH5241-JiVitA-4           BANGLADESH                     Wealth Q2_Birth       Control              NA                0.2264151    0.1015551   0.3512751
Birth       kiGH5241-JiVitA-4           BANGLADESH                     Wealth Q2_Birth       LNS                  NA                0.3437500    0.2226421   0.4648579
Birth       kiGH5241-JiVitA-4           BANGLADESH                     Wealth Q2_Birth       Other                NA                0.2647059    0.1711820   0.3582297
Birth       kiGH5241-JiVitA-4           BANGLADESH                     Wealth Q3_Birth       Control              NA                0.3142857    0.2107619   0.4178095
Birth       kiGH5241-JiVitA-4           BANGLADESH                     Wealth Q3_Birth       LNS                  NA                0.2592593    0.1330629   0.3854557
Birth       kiGH5241-JiVitA-4           BANGLADESH                     Wealth Q3_Birth       Other                NA                0.3563218    0.2435215   0.4691222
6 months    iLiNS_DYADM_LNS             MALAWI                         Wealth Q4_6 months    Control              NA                0.2909091    0.1701649   0.4116533
6 months    iLiNS_DYADM_LNS             MALAWI                         Wealth Q4_6 months    LNS                  NA                0.2333333    0.0810863   0.3855804
6 months    iLiNS_DYADM_LNS             MALAWI                         Wealth Q1_6 months    Control              NA                0.2456140    0.1333465   0.3578815
6 months    iLiNS_DYADM_LNS             MALAWI                         Wealth Q1_6 months    LNS                  NA                0.2156863    0.1022795   0.3290931
6 months    iLiNS_DYADM_LNS             MALAWI                         Wealth Q2_6 months    Control              NA                0.2238806    0.1236883   0.3240729
6 months    iLiNS_DYADM_LNS             MALAWI                         Wealth Q2_6 months    LNS                  NA                0.3230769    0.2089560   0.4371979
6 months    iLiNS_DYADM_LNS             MALAWI                         Wealth Q3_6 months    Control              NA                0.2236842    0.1297087   0.3176597
6 months    iLiNS_DYADM_LNS             MALAWI                         Wealth Q3_6 months    LNS                  NA                0.2298851    0.1411985   0.3185716
6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Wealth Q4_6 months    Control              NA                0.1621622    0.0429874   0.2813369
6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Wealth Q4_6 months    LNS                  NA                0.0750000   -0.0069034   0.1569034
6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Wealth Q4_6 months    Other                NA                0.0285714   -0.0105895   0.0677323
6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Wealth Q1_6 months    Control              NA                0.1590909    0.0507629   0.2674189
6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Wealth Q1_6 months    LNS                  NA                0.2238806    0.1238334   0.3239278
6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Wealth Q1_6 months    Other                NA                0.1764706    0.1023147   0.2506265
6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Wealth Q2_6 months    Control              NA                0.2380952    0.1088678   0.3673226
6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Wealth Q2_6 months    LNS                  NA                0.1944444    0.0647421   0.3241468
6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Wealth Q2_6 months    Other                NA                0.1558442    0.0745677   0.2371206
6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Wealth Q3_6 months    Control              NA                0.1578947    0.0416087   0.2741808
6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Wealth Q3_6 months    LNS                  NA                0.0888889    0.0054909   0.1722869
6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Wealth Q3_6 months    Other                NA                0.1190476    0.0495853   0.1885099
6 months    ki1000111-WASH-Kenya        KENYA                          Wealth Q1_6 months    Control              NA                0.1428571   -0.1227693   0.4084836
6 months    ki1000111-WASH-Kenya        KENYA                          Wealth Q1_6 months    LNS                  NA                0.5000000    0.0900441   0.9099559
6 months    ki1000111-WASH-Kenya        KENYA                          Wealth Q1_6 months    Other                NA                0.2500000   -0.0574669   0.5574669
6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Wealth Q4_6 months    Control              NA                0.2702703    0.1259868   0.4145538
6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Wealth Q4_6 months    Maternal             NA                0.2083333    0.0445075   0.3721591
6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Wealth Q1_6 months    Control              NA                0.4509804    0.3134305   0.5885303
6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Wealth Q1_6 months    Maternal             NA                0.3684211    0.1499561   0.5868860
6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Wealth Q2_6 months    Control              NA                0.2244898    0.1068656   0.3421140
6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Wealth Q2_6 months    Maternal             NA                0.0400000   -0.0373389   0.1173389
6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Wealth Q3_6 months    Control              NA                0.2619048    0.1278500   0.3959595
6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Wealth Q3_6 months    Maternal             NA                0.3500000    0.1392562   0.5607438
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Wealth Q4_6 months    Control              NA                0.1734694    0.0984118   0.2485270
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Wealth Q4_6 months    Other                NA                0.2090909    0.1330055   0.2851763
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Wealth Q4_6 months    Zinc                 NA                0.1232227    0.0788194   0.1676261
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Wealth Q1_6 months    Control              NA                0.0813008    0.0329550   0.1296467
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Wealth Q1_6 months    Other                NA                0.0782609    0.0291243   0.1273975
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Wealth Q1_6 months    Zinc                 NA                0.0858209    0.0522531   0.1193887
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Wealth Q2_6 months    Control              NA                0.1315789    0.0554707   0.2076872
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Wealth Q2_6 months    Other                NA                0.0444444    0.0018066   0.0870823
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Wealth Q2_6 months    Zinc                 NA                0.1235955    0.0751756   0.1720154
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Wealth Q3_6 months    Control              NA                0.0781250    0.0315795   0.1246705
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Wealth Q3_6 months    Other                NA                0.0841121    0.0314607   0.1367636
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Wealth Q3_6 months    Zinc                 NA                0.1116751    0.0676417   0.1557085
6 months    ki1135781-COHORTS           GUATEMALA                      Wealth Q4_6 months    Control              NA                0.3939394    0.3192698   0.4686090
6 months    ki1135781-COHORTS           GUATEMALA                      Wealth Q4_6 months    Other                NA                0.3148148    0.2431861   0.3864435
6 months    ki1135781-COHORTS           GUATEMALA                      Wealth Q1_6 months    Control              NA                0.5056180    0.4014361   0.6097998
6 months    ki1135781-COHORTS           GUATEMALA                      Wealth Q1_6 months    Other                NA                0.4050633    0.2964888   0.5136378
6 months    ki1135781-COHORTS           GUATEMALA                      Wealth Q2_6 months    Control              NA                0.5119048    0.4047323   0.6190773
6 months    ki1135781-COHORTS           GUATEMALA                      Wealth Q2_6 months    Other                NA                0.4311927    0.3379787   0.5244067
6 months    ki1135781-COHORTS           GUATEMALA                      Wealth Q3_6 months    Control              NA                0.5000000    0.3964516   0.6035484
6 months    ki1135781-COHORTS           GUATEMALA                      Wealth Q3_6 months    Other                NA                0.3813559    0.2935064   0.4692054
6 months    ki1148112-iLiNS-DOSE        MALAWI                         Wealth Q4_6 months    Control              NA                0.3239437    0.2149336   0.4329537
6 months    ki1148112-iLiNS-DOSE        MALAWI                         Wealth Q4_6 months    LNS                  NA                0.2974910    0.2437718   0.3512103
6 months    ki1148112-iLiNS-DOSE        MALAWI                         Wealth Q1_6 months    Control              NA                0.3000000    0.1727980   0.4272020
6 months    ki1148112-iLiNS-DOSE        MALAWI                         Wealth Q1_6 months    LNS                  NA                0.2733333    0.2228297   0.3238370
6 months    ki1148112-iLiNS-DOSE        MALAWI                         Wealth Q2_6 months    Control              NA                0.3636364    0.2363229   0.4909498
6 months    ki1148112-iLiNS-DOSE        MALAWI                         Wealth Q2_6 months    LNS                  NA                0.2915254    0.2395906   0.3434603
6 months    ki1148112-iLiNS-DOSE        MALAWI                         Wealth Q3_6 months    Control              NA                0.2950820    0.1804655   0.4096984
6 months    ki1148112-iLiNS-DOSE        MALAWI                         Wealth Q3_6 months    LNS                  NA                0.3229167    0.2688361   0.3769972
6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Wealth Q4_6 months    Control              NA                0.2909091    0.1703520   0.4114662
6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Wealth Q4_6 months    Maternal             NA                0.2333333    0.1258452   0.3408215
6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Wealth Q1_6 months    Control              NA                0.2456140    0.1335505   0.3576776
6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Wealth Q1_6 months    Maternal             NA                0.2083333    0.1354651   0.2812016
6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Wealth Q2_6 months    Control              NA                0.2238806    0.1238005   0.3239606
6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Wealth Q2_6 months    Maternal             NA                0.2916667    0.2101242   0.3732092
6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Wealth Q3_6 months    Control              NA                0.2236842    0.1298103   0.3175581
6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Wealth Q3_6 months    Maternal             NA                0.2171429    0.1559346   0.2783511
6 months    ki1148112-LCNI-5            MALAWI                         Wealth Q4_6 months    Control              NA                0.3050847    0.1873238   0.4228457
6 months    ki1148112-LCNI-5            MALAWI                         Wealth Q4_6 months    LNS                  NA                0.3714286    0.2787944   0.4640628
6 months    ki1148112-LCNI-5            MALAWI                         Wealth Q4_6 months    Other                NA                0.3396226    0.2118295   0.4674158
6 months    ki1148112-LCNI-5            MALAWI                         Wealth Q1_6 months    Control              NA                0.3200000    0.1903821   0.4496179
6 months    ki1148112-LCNI-5            MALAWI                         Wealth Q1_6 months    LNS                  NA                0.4100000    0.3133641   0.5066359
6 months    ki1148112-LCNI-5            MALAWI                         Wealth Q1_6 months    Other                NA                0.3584906    0.2290642   0.4879170
6 months    ki1148112-LCNI-5            MALAWI                         Wealth Q2_6 months    Control              NA                0.3818182    0.2530979   0.5105385
6 months    ki1148112-LCNI-5            MALAWI                         Wealth Q2_6 months    LNS                  NA                0.3653846    0.2726043   0.4581649
6 months    ki1148112-LCNI-5            MALAWI                         Wealth Q2_6 months    Other                NA                0.4500000    0.2954391   0.6045609
6 months    ki1148112-LCNI-5            MALAWI                         Wealth Q3_6 months    Control              NA                0.3333333    0.1789517   0.4877150
6 months    ki1148112-LCNI-5            MALAWI                         Wealth Q3_6 months    LNS                  NA                0.2843137    0.1965503   0.3720771
6 months    ki1148112-LCNI-5            MALAWI                         Wealth Q3_6 months    Other                NA                0.4576271    0.3301794   0.5850748
6 months    kiGH5241-JiVitA-3           BANGLADESH                     Wealth Q4_6 months    Control              NA                0.1910303    0.1708743   0.2111862
6 months    kiGH5241-JiVitA-3           BANGLADESH                     Wealth Q4_6 months    Maternal             NA                0.1735169    0.1542849   0.1927490
6 months    kiGH5241-JiVitA-3           BANGLADESH                     Wealth Q1_6 months    Control              NA                0.3175751    0.2901071   0.3450431
6 months    kiGH5241-JiVitA-3           BANGLADESH                     Wealth Q1_6 months    Maternal             NA                0.2721972    0.2475578   0.2968366
6 months    kiGH5241-JiVitA-3           BANGLADESH                     Wealth Q2_6 months    Control              NA                0.2901325    0.2661904   0.3140747
6 months    kiGH5241-JiVitA-3           BANGLADESH                     Wealth Q2_6 months    Maternal             NA                0.2772348    0.2540877   0.3003819
6 months    kiGH5241-JiVitA-3           BANGLADESH                     Wealth Q3_6 months    Control              NA                0.2675617    0.2457687   0.2893548
6 months    kiGH5241-JiVitA-3           BANGLADESH                     Wealth Q3_6 months    Maternal             NA                0.2521966    0.2318351   0.2725581
6 months    kiGH5241-JiVitA-4           BANGLADESH                     Wealth Q4_6 months    Control              NA                0.2000000    0.1415978   0.2584022
6 months    kiGH5241-JiVitA-4           BANGLADESH                     Wealth Q4_6 months    LNS                  NA                0.1806452    0.1276275   0.2336628
6 months    kiGH5241-JiVitA-4           BANGLADESH                     Wealth Q4_6 months    Other                NA                0.2113900    0.1706981   0.2520818
6 months    kiGH5241-JiVitA-4           BANGLADESH                     Wealth Q1_6 months    Control              NA                0.3097484    0.2486996   0.3707973
6 months    kiGH5241-JiVitA-4           BANGLADESH                     Wealth Q1_6 months    LNS                  NA                0.3333333    0.2754003   0.3912663
6 months    kiGH5241-JiVitA-4           BANGLADESH                     Wealth Q1_6 months    Other                NA                0.2944015    0.2455398   0.3432633
6 months    kiGH5241-JiVitA-4           BANGLADESH                     Wealth Q2_6 months    Control              NA                0.2632509    0.2022808   0.3242210
6 months    kiGH5241-JiVitA-4           BANGLADESH                     Wealth Q2_6 months    LNS                  NA                0.2317460    0.1835084   0.2799837
6 months    kiGH5241-JiVitA-4           BANGLADESH                     Wealth Q2_6 months    Other                NA                0.2908778    0.2491404   0.3326152
6 months    kiGH5241-JiVitA-4           BANGLADESH                     Wealth Q3_6 months    Control              NA                0.1799410    0.1329152   0.2269668
6 months    kiGH5241-JiVitA-4           BANGLADESH                     Wealth Q3_6 months    LNS                  NA                0.2251462    0.1768715   0.2734209
6 months    kiGH5241-JiVitA-4           BANGLADESH                     Wealth Q3_6 months    Other                NA                0.2719141    0.2286433   0.3151850
24 months   iLiNS_DYADM_LNS             MALAWI                         Wealth Q3_24 months   Control              NA                0.2500000   -0.1916719   0.6916719
24 months   iLiNS_DYADM_LNS             MALAWI                         Wealth Q3_24 months   LNS                  NA                0.5555556    0.2176616   0.8934495
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Wealth Q4_24 months   Control              NA                0.2682927    0.1722411   0.3643443
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Wealth Q4_24 months   LNS                  NA                0.2753623    0.1697957   0.3809290
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Wealth Q4_24 months   Other                NA                0.2500000    0.1836231   0.3163769
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Wealth Q1_24 months   Control              NA                0.5468750    0.4246877   0.6690623
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Wealth Q1_24 months   LNS                  NA                0.4714286    0.3542701   0.5885870
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Wealth Q1_24 months   Other                NA                0.5563910    0.4717994   0.6409826
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Wealth Q2_24 months   Control              NA                0.4444444    0.3116645   0.5772244
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Wealth Q2_24 months   LNS                  NA                0.3714286    0.2580260   0.4848311
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Wealth Q2_24 months   Other                NA                0.4482759    0.3671785   0.5293732
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Wealth Q3_24 months   Control              NA                0.4788732    0.3625013   0.5952451
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Wealth Q3_24 months   LNS                  NA                0.3877551    0.2911448   0.4843654
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Wealth Q3_24 months   Other                NA                0.4311377    0.3559151   0.5063604
24 months   ki1000111-WASH-Kenya        KENYA                          Wealth Q4_24 months   Control              NA                0.2900000    0.2270568   0.3529432
24 months   ki1000111-WASH-Kenya        KENYA                          Wealth Q4_24 months   LNS                  NA                0.2109375    0.1401978   0.2816772
24 months   ki1000111-WASH-Kenya        KENYA                          Wealth Q4_24 months   Other                NA                0.2832618    0.2253547   0.3411689
24 months   ki1000111-WASH-Kenya        KENYA                          Wealth Q1_24 months   Control              NA                0.3567568    0.2876673   0.4258462
24 months   ki1000111-WASH-Kenya        KENYA                          Wealth Q1_24 months   LNS                  NA                0.3750000    0.2883060   0.4616940
24 months   ki1000111-WASH-Kenya        KENYA                          Wealth Q1_24 months   Other                NA                0.3479853    0.2914328   0.4045379
24 months   ki1000111-WASH-Kenya        KENYA                          Wealth Q2_24 months   Control              NA                0.3085106    0.2424300   0.3745913
24 months   ki1000111-WASH-Kenya        KENYA                          Wealth Q2_24 months   LNS                  NA                0.3120567    0.2355131   0.3886003
24 months   ki1000111-WASH-Kenya        KENYA                          Wealth Q2_24 months   Other                NA                0.3603239    0.3003995   0.4202483
24 months   ki1000111-WASH-Kenya        KENYA                          Wealth Q3_24 months   Control              NA                0.2688172    0.2050452   0.3325892
24 months   ki1000111-WASH-Kenya        KENYA                          Wealth Q3_24 months   LNS                  NA                0.2702703    0.1875783   0.3529622
24 months   ki1000111-WASH-Kenya        KENYA                          Wealth Q3_24 months   Other                NA                0.2788845    0.2233551   0.3344138
24 months   ki1135781-COHORTS           GUATEMALA                      Wealth Q4_24 months   Control              NA                0.6911765    0.5809746   0.8013783
24 months   ki1135781-COHORTS           GUATEMALA                      Wealth Q4_24 months   Other                NA                0.7945205    0.7015021   0.8875390
24 months   ki1135781-COHORTS           GUATEMALA                      Wealth Q1_24 months   Control              NA                0.8709677    0.7519948   0.9899407
24 months   ki1135781-COHORTS           GUATEMALA                      Wealth Q1_24 months   Other                NA                0.6451613    0.4753573   0.8149653
24 months   ki1135781-COHORTS           GUATEMALA                      Wealth Q2_24 months   Control              NA                0.8437500    0.7169033   0.9705967
24 months   ki1135781-COHORTS           GUATEMALA                      Wealth Q2_24 months   Other                NA                0.6206897    0.4426269   0.7987524
24 months   ki1148112-iLiNS-DOSE        MALAWI                         Wealth Q4_24 months   Control              NA                0.3888889    0.2292408   0.5485369
24 months   ki1148112-iLiNS-DOSE        MALAWI                         Wealth Q4_24 months   LNS                  NA                0.4478528    0.3713207   0.5243848
24 months   ki1148112-iLiNS-DOSE        MALAWI                         Wealth Q1_24 months   Control              NA                0.5714286    0.3590585   0.7837986
24 months   ki1148112-iLiNS-DOSE        MALAWI                         Wealth Q1_24 months   LNS                  NA                0.4687500    0.3820088   0.5554912
24 months   ki1148112-iLiNS-DOSE        MALAWI                         Wealth Q2_24 months   Control              NA                0.5000000    0.3143141   0.6856859
24 months   ki1148112-iLiNS-DOSE        MALAWI                         Wealth Q2_24 months   LNS                  NA                0.5582822    0.4818470   0.6347174
24 months   ki1148112-iLiNS-DOSE        MALAWI                         Wealth Q3_24 months   Control              NA                0.5882353    0.4223585   0.7541121
24 months   ki1148112-iLiNS-DOSE        MALAWI                         Wealth Q3_24 months   LNS                  NA                0.5099338    0.4299833   0.5898842
24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Wealth Q2_24 months   Control              NA                0.8000000    0.4407327   1.1592673
24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Wealth Q2_24 months   Maternal             NA                0.3125000    0.0797744   0.5452256
24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Wealth Q3_24 months   Control              NA                0.2500000   -0.1838817   0.6838817
24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Wealth Q3_24 months   Maternal             NA                0.5263158    0.2967583   0.7558733
24 months   ki1148112-LCNI-5            MALAWI                         Wealth Q4_24 months   Control              NA                0.3437500    0.1783835   0.5091165
24 months   ki1148112-LCNI-5            MALAWI                         Wealth Q4_24 months   LNS                  NA                0.3404255    0.2042934   0.4765577
24 months   ki1148112-LCNI-5            MALAWI                         Wealth Q4_24 months   Other                NA                0.3750000    0.1803669   0.5696331
24 months   ki1148112-LCNI-5            MALAWI                         Wealth Q1_24 months   Control              NA                0.3461538    0.1622395   0.5300681
24 months   ki1148112-LCNI-5            MALAWI                         Wealth Q1_24 months   LNS                  NA                0.4473684    0.2883716   0.6063653
24 months   ki1148112-LCNI-5            MALAWI                         Wealth Q1_24 months   Other                NA                0.3750000    0.1802041   0.5697959
24 months   ki1148112-LCNI-5            MALAWI                         Wealth Q2_24 months   Control              NA                0.3750000    0.2064094   0.5435906
24 months   ki1148112-LCNI-5            MALAWI                         Wealth Q2_24 months   LNS                  NA                0.3750000    0.2373464   0.5126536
24 months   ki1148112-LCNI-5            MALAWI                         Wealth Q2_24 months   Other                NA                0.4210526    0.1979197   0.6441855
24 months   ki1148112-LCNI-5            MALAWI                         Wealth Q3_24 months   Control              NA                0.4210526    0.1978331   0.6442722
24 months   ki1148112-LCNI-5            MALAWI                         Wealth Q3_24 months   LNS                  NA                0.4130435    0.2699752   0.5561117
24 months   ki1148112-LCNI-5            MALAWI                         Wealth Q3_24 months   Other                NA                0.2222222    0.0645479   0.3798965
24 months   kiGH5241-JiVitA-3           BANGLADESH                     Wealth Q4_24 months   Control              NA                0.4285714    0.2185765   0.6385664
24 months   kiGH5241-JiVitA-3           BANGLADESH                     Wealth Q4_24 months   Maternal             NA                0.3870968    0.1614718   0.6127218
24 months   kiGH5241-JiVitA-3           BANGLADESH                     Wealth Q1_24 months   Control              NA                0.6000000    0.1967766   1.0032234
24 months   kiGH5241-JiVitA-3           BANGLADESH                     Wealth Q1_24 months   Maternal             NA                0.8421053    0.6213067   1.0629038
24 months   kiGH5241-JiVitA-3           BANGLADESH                     Wealth Q2_24 months   Control              NA                0.3333333   -0.1117182   0.7783849
24 months   kiGH5241-JiVitA-3           BANGLADESH                     Wealth Q2_24 months   Maternal             NA                0.7222222    0.4739668   0.9704777
24 months   kiGH5241-JiVitA-3           BANGLADESH                     Wealth Q3_24 months   Control              NA                0.5882353    0.2731123   0.9033583
24 months   kiGH5241-JiVitA-3           BANGLADESH                     Wealth Q3_24 months   Maternal             NA                0.4210526    0.1480933   0.6940120
24 months   kiGH5241-JiVitA-4           BANGLADESH                     Wealth Q4_24 months   Control              NA                0.3196721    0.1999092   0.4394351
24 months   kiGH5241-JiVitA-4           BANGLADESH                     Wealth Q4_24 months   LNS                  NA                0.3333333    0.2067192   0.4599475
24 months   kiGH5241-JiVitA-4           BANGLADESH                     Wealth Q4_24 months   Other                NA                0.3017241    0.2171006   0.3863477
24 months   kiGH5241-JiVitA-4           BANGLADESH                     Wealth Q1_24 months   Control              NA                0.5454545    0.4167705   0.6741386
24 months   kiGH5241-JiVitA-4           BANGLADESH                     Wealth Q1_24 months   LNS                  NA                0.4294479    0.3217318   0.5371639
24 months   kiGH5241-JiVitA-4           BANGLADESH                     Wealth Q1_24 months   Other                NA                0.4528302    0.3647178   0.5409425
24 months   kiGH5241-JiVitA-4           BANGLADESH                     Wealth Q2_24 months   Control              NA                0.3142857    0.2112797   0.4172917
24 months   kiGH5241-JiVitA-4           BANGLADESH                     Wealth Q2_24 months   LNS                  NA                0.5040000    0.3792851   0.6287149
24 months   kiGH5241-JiVitA-4           BANGLADESH                     Wealth Q2_24 months   Other                NA                0.5144231    0.4134968   0.6153493
24 months   kiGH5241-JiVitA-4           BANGLADESH                     Wealth Q3_24 months   Control              NA                0.5528455    0.4287190   0.6769720
24 months   kiGH5241-JiVitA-4           BANGLADESH                     Wealth Q3_24 months   LNS                  NA                0.3503650    0.2330371   0.4676929
24 months   kiGH5241-JiVitA-4           BANGLADESH                     Wealth Q3_24 months   Other                NA                0.3873874    0.2967430   0.4780317


### Parameter: E(Y)


agecat      studyid                     country                        intXhhwealth_quart    intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  --------------------------  -----------------------------  --------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1135781-COHORTS           GUATEMALA                      Wealth Q4_Birth       NA                   NA                0.0511945   0.0259157   0.0764734
Birth       ki1135781-COHORTS           GUATEMALA                      Wealth Q1_Birth       NA                   NA                0.0636943   0.0253726   0.1020160
Birth       ki1135781-COHORTS           GUATEMALA                      Wealth Q2_Birth       NA                   NA                0.0745342   0.0338387   0.1152296
Birth       ki1135781-COHORTS           GUATEMALA                      Wealth Q3_Birth       NA                   NA                0.0487805   0.0192210   0.0783399
Birth       kiGH5241-JiVitA-3           BANGLADESH                     Wealth Q4_Birth       NA                   NA                0.2558420   0.2407916   0.2708924
Birth       kiGH5241-JiVitA-3           BANGLADESH                     Wealth Q1_Birth       NA                   NA                0.3671665   0.3506706   0.3836623
Birth       kiGH5241-JiVitA-3           BANGLADESH                     Wealth Q2_Birth       NA                   NA                0.3322110   0.3163556   0.3480664
Birth       kiGH5241-JiVitA-3           BANGLADESH                     Wealth Q3_Birth       NA                   NA                0.3242084   0.3091807   0.3392360
Birth       kiGH5241-JiVitA-4           BANGLADESH                     Wealth Q4_Birth       NA                   NA                0.3060109   0.2357250   0.3762969
Birth       kiGH5241-JiVitA-4           BANGLADESH                     Wealth Q1_Birth       NA                   NA                0.3014354   0.2364879   0.3663829
Birth       kiGH5241-JiVitA-4           BANGLADESH                     Wealth Q2_Birth       NA                   NA                0.2785388   0.2144783   0.3425993
Birth       kiGH5241-JiVitA-4           BANGLADESH                     Wealth Q3_Birth       NA                   NA                0.3175355   0.2509916   0.3840795
6 months    iLiNS_DYADM_LNS             MALAWI                         Wealth Q4_6 months    NA                   NA                0.2705882   0.1755826   0.3655939
6 months    iLiNS_DYADM_LNS             MALAWI                         Wealth Q1_6 months    NA                   NA                0.2314815   0.1515641   0.3113989
6 months    iLiNS_DYADM_LNS             MALAWI                         Wealth Q2_6 months    NA                   NA                0.2727273   0.1964623   0.3489923
6 months    iLiNS_DYADM_LNS             MALAWI                         Wealth Q3_6 months    NA                   NA                0.2269939   0.1624895   0.2914982
6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Wealth Q4_6 months    NA                   NA                0.0748299   0.0321504   0.1175095
6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Wealth Q1_6 months    NA                   NA                0.1877934   0.1352215   0.2403653
6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Wealth Q2_6 months    NA                   NA                0.1870968   0.1255025   0.2486910
6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Wealth Q3_6 months    NA                   NA                0.1197605   0.0703691   0.1691519
6 months    ki1000111-WASH-Kenya        KENYA                          Wealth Q1_6 months    NA                   NA                0.2857143   0.0877280   0.4837005
6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Wealth Q4_6 months    NA                   NA                0.2459016   0.1369416   0.3548617
6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Wealth Q1_6 months    NA                   NA                0.4285714   0.3118055   0.5453374
6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Wealth Q2_6 months    NA                   NA                0.1621622   0.0776068   0.2467176
6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Wealth Q3_6 months    NA                   NA                0.2903226   0.1764146   0.4042305
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Wealth Q4_6 months    NA                   NA                0.1575179   0.1225954   0.1924404
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Wealth Q1_6 months    NA                   NA                0.0830040   0.0589417   0.1070662
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Wealth Q2_6 months    NA                   NA                0.1046512   0.0722568   0.1370455
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Wealth Q3_6 months    NA                   NA                0.0949074   0.0672376   0.1225772
6 months    ki1135781-COHORTS           GUATEMALA                      Wealth Q4_6 months    NA                   NA                0.3547401   0.3028049   0.4066753
6 months    ki1135781-COHORTS           GUATEMALA                      Wealth Q1_6 months    NA                   NA                0.4583333   0.3827638   0.5339028
6 months    ki1135781-COHORTS           GUATEMALA                      Wealth Q2_6 months    NA                   NA                0.4663212   0.3957578   0.5368847
6 months    ki1135781-COHORTS           GUATEMALA                      Wealth Q3_6 months    NA                   NA                0.4326923   0.3651988   0.5001858
6 months    ki1148112-iLiNS-DOSE        MALAWI                         Wealth Q4_6 months    NA                   NA                0.3028571   0.2546496   0.3510647
6 months    ki1148112-iLiNS-DOSE        MALAWI                         Wealth Q1_6 months    NA                   NA                0.2771429   0.2301844   0.3241013
6 months    ki1148112-iLiNS-DOSE        MALAWI                         Wealth Q2_6 months    NA                   NA                0.3028571   0.2546496   0.3510647
6 months    ki1148112-iLiNS-DOSE        MALAWI                         Wealth Q3_6 months    NA                   NA                0.3180516   0.2691207   0.3669825
6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Wealth Q4_6 months    NA                   NA                0.2608696   0.1802635   0.3414757
6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Wealth Q1_6 months    NA                   NA                0.2203390   0.1591053   0.2815727
6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Wealth Q2_6 months    NA                   NA                0.2673797   0.2037741   0.3309853
6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Wealth Q3_6 months    NA                   NA                0.2191235   0.1678476   0.2703995
6 months    ki1148112-LCNI-5            MALAWI                         Wealth Q4_6 months    NA                   NA                0.3456221   0.2822007   0.4090436
6 months    ki1148112-LCNI-5            MALAWI                         Wealth Q1_6 months    NA                   NA                0.3743842   0.3076444   0.4411241
6 months    ki1148112-LCNI-5            MALAWI                         Wealth Q2_6 months    NA                   NA                0.3869347   0.3190944   0.4547750
6 months    ki1148112-LCNI-5            MALAWI                         Wealth Q3_6 months    NA                   NA                0.3451777   0.2786192   0.4117361
6 months    kiGH5241-JiVitA-3           BANGLADESH                     Wealth Q4_6 months    NA                   NA                0.1822801   0.1683151   0.1962450
6 months    kiGH5241-JiVitA-3           BANGLADESH                     Wealth Q1_6 months    NA                   NA                0.2943412   0.2758802   0.3128022
6 months    kiGH5241-JiVitA-3           BANGLADESH                     Wealth Q2_6 months    NA                   NA                0.2835893   0.2669342   0.3002444
6 months    kiGH5241-JiVitA-3           BANGLADESH                     Wealth Q3_6 months    NA                   NA                0.2598425   0.2449238   0.2747612
6 months    kiGH5241-JiVitA-4           BANGLADESH                     Wealth Q4_6 months    NA                   NA                0.1999095   0.1716379   0.2281812
6 months    kiGH5241-JiVitA-4           BANGLADESH                     Wealth Q1_6 months    NA                   NA                0.3095443   0.2776404   0.3414481
6 months    kiGH5241-JiVitA-4           BANGLADESH                     Wealth Q2_6 months    NA                   NA                0.2684478   0.2399689   0.2969268
6 months    kiGH5241-JiVitA-4           BANGLADESH                     Wealth Q3_6 months    NA                   NA                0.2338710   0.2068795   0.2608624
24 months   iLiNS_DYADM_LNS             MALAWI                         Wealth Q3_24 months   NA                   NA                0.4615385   0.1794802   0.7435967
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Wealth Q4_24 months   NA                   NA                0.2603175   0.2117822   0.3088527
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Wealth Q1_24 months   NA                   NA                0.5318352   0.4718706   0.5917998
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Wealth Q2_24 months   NA                   NA                0.4275093   0.3682798   0.4867387
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Wealth Q3_24 months   NA                   NA                0.4285714   0.3755785   0.4815644
24 months   ki1000111-WASH-Kenya        KENYA                          Wealth Q4_24 months   NA                   NA                0.2691622   0.2324279   0.3058965
24 months   ki1000111-WASH-Kenya        KENYA                          Wealth Q1_24 months   NA                   NA                0.3564014   0.3173229   0.3954798
24 months   ki1000111-WASH-Kenya        KENYA                          Wealth Q2_24 months   NA                   NA                0.3315972   0.2931169   0.3700775
24 months   ki1000111-WASH-Kenya        KENYA                          Wealth Q3_24 months   NA                   NA                0.2737226   0.2363580   0.3110873
24 months   ki1135781-COHORTS           GUATEMALA                      Wealth Q4_24 months   NA                   NA                0.7446809   0.6724520   0.8169097
24 months   ki1135781-COHORTS           GUATEMALA                      Wealth Q1_24 months   NA                   NA                0.7580645   0.6505948   0.8655342
24 months   ki1135781-COHORTS           GUATEMALA                      Wealth Q2_24 months   NA                   NA                0.7377049   0.6264014   0.8490084
24 months   ki1148112-iLiNS-DOSE        MALAWI                         Wealth Q4_24 months   NA                   NA                0.4371859   0.3680934   0.5062785
24 months   ki1148112-iLiNS-DOSE        MALAWI                         Wealth Q1_24 months   NA                   NA                0.4832215   0.4027128   0.5637301
24 months   ki1148112-iLiNS-DOSE        MALAWI                         Wealth Q2_24 months   NA                   NA                0.5497382   0.4789955   0.6204809
24 months   ki1148112-iLiNS-DOSE        MALAWI                         Wealth Q3_24 months   NA                   NA                0.5243243   0.4521646   0.5964840
24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Wealth Q2_24 months   NA                   NA                0.4285714   0.2116883   0.6454545
24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Wealth Q3_24 months   NA                   NA                0.4782609   0.2695256   0.6869962
24 months   ki1148112-LCNI-5            MALAWI                         Wealth Q4_24 months   NA                   NA                0.3495146   0.2569810   0.4420482
24 months   ki1148112-LCNI-5            MALAWI                         Wealth Q1_24 months   NA                   NA                0.3977273   0.2948836   0.5005710
24 months   ki1148112-LCNI-5            MALAWI                         Wealth Q2_24 months   NA                   NA                0.3838384   0.2875538   0.4801229
24 months   ki1148112-LCNI-5            MALAWI                         Wealth Q3_24 months   NA                   NA                0.3586957   0.2601534   0.4572379
24 months   kiGH5241-JiVitA-3           BANGLADESH                     Wealth Q4_24 months   NA                   NA                0.4090909   0.2554112   0.5627706
24 months   kiGH5241-JiVitA-3           BANGLADESH                     Wealth Q1_24 months   NA                   NA                0.7586207   0.5457049   0.9715364
24 months   kiGH5241-JiVitA-3           BANGLADESH                     Wealth Q2_24 months   NA                   NA                0.5925926   0.3608550   0.8243302
24 months   kiGH5241-JiVitA-3           BANGLADESH                     Wealth Q3_24 months   NA                   NA                0.5000000   0.2912647   0.7087353
24 months   kiGH5241-JiVitA-4           BANGLADESH                     Wealth Q4_24 months   NA                   NA                0.3148148   0.2537829   0.3758468
24 months   kiGH5241-JiVitA-4           BANGLADESH                     Wealth Q1_24 months   NA                   NA                0.4678571   0.4074705   0.5282438
24 months   kiGH5241-JiVitA-4           BANGLADESH                     Wealth Q2_24 months   NA                   NA                0.4524313   0.3882568   0.5166058
24 months   kiGH5241-JiVitA-4           BANGLADESH                     Wealth Q3_24 months   NA                   NA                0.4190871   0.3564364   0.4817379


### Parameter: RR


agecat      studyid                     country                        intXhhwealth_quart    intervention_level   baseline_level     estimate    ci_lower     ci_upper
----------  --------------------------  -----------------------------  --------------------  -------------------  ---------------  ----------  ----------  -----------
Birth       ki1135781-COHORTS           GUATEMALA                      Wealth Q4_Birth       Control              Control           1.0000000   1.0000000    1.0000000
Birth       ki1135781-COHORTS           GUATEMALA                      Wealth Q4_Birth       Other                Control           2.6577181   0.8644443    8.1711052
Birth       ki1135781-COHORTS           GUATEMALA                      Wealth Q1_Birth       Control              Control           1.0000000   1.0000000    1.0000000
Birth       ki1135781-COHORTS           GUATEMALA                      Wealth Q1_Birth       Other                Control           3.2171717   0.8602246   12.0319662
Birth       ki1135781-COHORTS           GUATEMALA                      Wealth Q2_Birth       Control              Control           1.0000000   1.0000000    1.0000000
Birth       ki1135781-COHORTS           GUATEMALA                      Wealth Q2_Birth       Other                Control           0.6597938   0.2218192    1.9625347
Birth       ki1135781-COHORTS           GUATEMALA                      Wealth Q3_Birth       Control              Control           1.0000000   1.0000000    1.0000000
Birth       ki1135781-COHORTS           GUATEMALA                      Wealth Q3_Birth       Other                Control           1.0000000   0.2902744    3.4450167
Birth       kiGH5241-JiVitA-3           BANGLADESH                     Wealth Q4_Birth       Control              Control           1.0000000   1.0000000    1.0000000
Birth       kiGH5241-JiVitA-3           BANGLADESH                     Wealth Q4_Birth       Maternal             Control           0.9134328   0.8119271    1.0276286
Birth       kiGH5241-JiVitA-3           BANGLADESH                     Wealth Q1_Birth       Control              Control           1.0000000   1.0000000    1.0000000
Birth       kiGH5241-JiVitA-3           BANGLADESH                     Wealth Q1_Birth       Maternal             Control           0.8957389   0.8187089    0.9800166
Birth       kiGH5241-JiVitA-3           BANGLADESH                     Wealth Q2_Birth       Control              Control           1.0000000   1.0000000    1.0000000
Birth       kiGH5241-JiVitA-3           BANGLADESH                     Wealth Q2_Birth       Maternal             Control           0.9064347   0.8239635    0.9971604
Birth       kiGH5241-JiVitA-3           BANGLADESH                     Wealth Q3_Birth       Control              Control           1.0000000   1.0000000    1.0000000
Birth       kiGH5241-JiVitA-3           BANGLADESH                     Wealth Q3_Birth       Maternal             Control           0.8623948   0.7864854    0.9456309
Birth       kiGH5241-JiVitA-4           BANGLADESH                     Wealth Q4_Birth       Control              Control           1.0000000   1.0000000    1.0000000
Birth       kiGH5241-JiVitA-4           BANGLADESH                     Wealth Q4_Birth       LNS                  Control           0.8731656   0.4904248    1.5546076
Birth       kiGH5241-JiVitA-4           BANGLADESH                     Wealth Q4_Birth       Other                Control           0.7057613   0.4168711    1.1948514
Birth       kiGH5241-JiVitA-4           BANGLADESH                     Wealth Q1_Birth       Control              Control           1.0000000   1.0000000    1.0000000
Birth       kiGH5241-JiVitA-4           BANGLADESH                     Wealth Q1_Birth       LNS                  Control           1.1470588   0.6668045    1.9732079
Birth       kiGH5241-JiVitA-4           BANGLADESH                     Wealth Q1_Birth       Other                Control           0.7571345   0.4433547    1.2929890
Birth       kiGH5241-JiVitA-4           BANGLADESH                     Wealth Q2_Birth       Control              Control           1.0000000   1.0000000    1.0000000
Birth       kiGH5241-JiVitA-4           BANGLADESH                     Wealth Q2_Birth       LNS                  Control           1.5182292   0.7891093    2.9210401
Birth       kiGH5241-JiVitA-4           BANGLADESH                     Wealth Q2_Birth       Other                Control           1.1691176   0.6073592    2.2504574
Birth       kiGH5241-JiVitA-4           BANGLADESH                     Wealth Q3_Birth       Control              Control           1.0000000   1.0000000    1.0000000
Birth       kiGH5241-JiVitA-4           BANGLADESH                     Wealth Q3_Birth       LNS                  Control           0.8249158   0.4582906    1.4848353
Birth       kiGH5241-JiVitA-4           BANGLADESH                     Wealth Q3_Birth       Other                Control           1.1337513   0.7179699    1.7903146
6 months    iLiNS_DYADM_LNS             MALAWI                         Wealth Q4_6 months    Control              Control           1.0000000   1.0000000    1.0000000
6 months    iLiNS_DYADM_LNS             MALAWI                         Wealth Q4_6 months    LNS                  Control           0.8020833   0.3701467    1.7380613
6 months    iLiNS_DYADM_LNS             MALAWI                         Wealth Q1_6 months    Control              Control           1.0000000   1.0000000    1.0000000
6 months    iLiNS_DYADM_LNS             MALAWI                         Wealth Q1_6 months    LNS                  Control           0.8781513   0.4375184    1.7625537
6 months    iLiNS_DYADM_LNS             MALAWI                         Wealth Q2_6 months    Control              Control           1.0000000   1.0000000    1.0000000
6 months    iLiNS_DYADM_LNS             MALAWI                         Wealth Q2_6 months    LNS                  Control           1.4430769   0.8159881    2.5520852
6 months    iLiNS_DYADM_LNS             MALAWI                         Wealth Q3_6 months    Control              Control           1.0000000   1.0000000    1.0000000
6 months    iLiNS_DYADM_LNS             MALAWI                         Wealth Q3_6 months    LNS                  Control           1.0277214   0.5809800    1.8179822
6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Wealth Q4_6 months    Control              Control           1.0000000   1.0000000    1.0000000
6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Wealth Q4_6 months    LNS                  Control           0.4625000   0.1240075    1.7249454
6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Wealth Q4_6 months    Other                Control           0.1761905   0.0372012    0.8344650
6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Wealth Q1_6 months    Control              Control           1.0000000   1.0000000    1.0000000
6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Wealth Q1_6 months    LNS                  Control           1.4072495   0.6232384    3.1775176
6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Wealth Q1_6 months    Other                Control           1.1092437   0.4983428    2.4690264
6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Wealth Q2_6 months    Control              Control           1.0000000   1.0000000    1.0000000
6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Wealth Q2_6 months    LNS                  Control           0.8166667   0.3455972    1.9298319
6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Wealth Q2_6 months    Other                Control           0.6545455   0.3083490    1.3894312
6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Wealth Q3_6 months    Control              Control           1.0000000   1.0000000    1.0000000
6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Wealth Q3_6 months    LNS                  Control           0.5629630   0.1707937    1.8556145
6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Wealth Q3_6 months    Other                Control           0.7539683   0.2946381    1.9293777
6 months    ki1000111-WASH-Kenya        KENYA                          Wealth Q1_6 months    Control              Control           1.0000000   1.0000000    1.0000000
6 months    ki1000111-WASH-Kenya        KENYA                          Wealth Q1_6 months    LNS                  Control           3.5000000   0.4586945   26.7062302
6 months    ki1000111-WASH-Kenya        KENYA                          Wealth Q1_6 months    Other                Control           1.7500000   0.1883019   16.2637744
6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Wealth Q4_6 months    Control              Control           1.0000000   1.0000000    1.0000000
6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Wealth Q4_6 months    Maternal             Control           0.7708333   0.2979775    1.9940564
6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Wealth Q1_6 months    Control              Control           1.0000000   1.0000000    1.0000000
6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Wealth Q1_6 months    Maternal             Control           0.8169336   0.4193640    1.5914113
6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Wealth Q2_6 months    Control              Control           1.0000000   1.0000000    1.0000000
6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Wealth Q2_6 months    Maternal             Control           0.1781818   0.0240370    1.3208298
6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Wealth Q3_6 months    Control              Control           1.0000000   1.0000000    1.0000000
6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Wealth Q3_6 months    Maternal             Control           1.3363636   0.6063327    2.9453595
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Wealth Q4_6 months    Control              Control           1.0000000   1.0000000    1.0000000
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Wealth Q4_6 months    Other                Control           1.2053476   0.6848261    2.1215062
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Wealth Q4_6 months    Zinc                 Control           0.7103429   0.4045030    1.2474247
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Wealth Q1_6 months    Control              Control           1.0000000   1.0000000    1.0000000
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Wealth Q1_6 months    Other                Control           0.9626087   0.4054035    2.2856626
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Wealth Q1_6 months    Zinc                 Control           1.0555970   0.5180657    2.1508566
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Wealth Q2_6 months    Control              Control           1.0000000   1.0000000    1.0000000
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Wealth Q2_6 months    Other                Control           0.3377778   0.1101840    1.0354847
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Wealth Q2_6 months    Zinc                 Control           0.9393258   0.4671063    1.8889340
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Wealth Q3_6 months    Control              Control           1.0000000   1.0000000    1.0000000
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Wealth Q3_6 months    Other                Control           1.0766355   0.4536953    2.5548954
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Wealth Q3_6 months    Zinc                 Control           1.4294416   0.6996616    2.9204168
6 months    ki1135781-COHORTS           GUATEMALA                      Wealth Q4_6 months    Control              Control           1.0000000   1.0000000    1.0000000
6 months    ki1135781-COHORTS           GUATEMALA                      Wealth Q4_6 months    Other                Control           0.7991453   0.5943139    1.0745722
6 months    ki1135781-COHORTS           GUATEMALA                      Wealth Q1_6 months    Control              Control           1.0000000   1.0000000    1.0000000
6 months    ki1135781-COHORTS           GUATEMALA                      Wealth Q1_6 months    Other                Control           0.8011252   0.5713087    1.1233884
6 months    ki1135781-COHORTS           GUATEMALA                      Wealth Q2_6 months    Control              Control           1.0000000   1.0000000    1.0000000
6 months    ki1135781-COHORTS           GUATEMALA                      Wealth Q2_6 months    Other                Control           0.8423299   0.6234276    1.1380945
6 months    ki1135781-COHORTS           GUATEMALA                      Wealth Q3_6 months    Control              Control           1.0000000   1.0000000    1.0000000
6 months    ki1135781-COHORTS           GUATEMALA                      Wealth Q3_6 months    Other                Control           0.7627119   0.5595394    1.0396576
6 months    ki1148112-iLiNS-DOSE        MALAWI                         Wealth Q4_6 months    Control              Control           1.0000000   1.0000000    1.0000000
6 months    ki1148112-iLiNS-DOSE        MALAWI                         Wealth Q4_6 months    LNS                  Control           0.9183419   0.6268282    1.3454275
6 months    ki1148112-iLiNS-DOSE        MALAWI                         Wealth Q1_6 months    Control              Control           1.0000000   1.0000000    1.0000000
6 months    ki1148112-iLiNS-DOSE        MALAWI                         Wealth Q1_6 months    LNS                  Control           0.9111111   0.5737240    1.4469039
6 months    ki1148112-iLiNS-DOSE        MALAWI                         Wealth Q2_6 months    Control              Control           1.0000000   1.0000000    1.0000000
6 months    ki1148112-iLiNS-DOSE        MALAWI                         Wealth Q2_6 months    LNS                  Control           0.8016949   0.5412591    1.1874436
6 months    ki1148112-iLiNS-DOSE        MALAWI                         Wealth Q3_6 months    Control              Control           1.0000000   1.0000000    1.0000000
6 months    ki1148112-iLiNS-DOSE        MALAWI                         Wealth Q3_6 months    LNS                  Control           1.0943287   0.7168790    1.6705124
6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Wealth Q4_6 months    Control              Control           1.0000000   1.0000000    1.0000000
6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Wealth Q4_6 months    Maternal             Control           0.8020833   0.4316327    1.4904750
6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Wealth Q1_6 months    Control              Control           1.0000000   1.0000000    1.0000000
6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Wealth Q1_6 months    Maternal             Control           0.8482143   0.4773423    1.5072359
6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Wealth Q2_6 months    Control              Control           1.0000000   1.0000000    1.0000000
6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Wealth Q2_6 months    Maternal             Control           1.3027778   0.7689332    2.2072527
6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Wealth Q3_6 months    Control              Control           1.0000000   1.0000000    1.0000000
6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Wealth Q3_6 months    Maternal             Control           0.9707563   0.5855347    1.6094140
6 months    ki1148112-LCNI-5            MALAWI                         Wealth Q4_6 months    Control              Control           1.0000000   1.0000000    1.0000000
6 months    ki1148112-LCNI-5            MALAWI                         Wealth Q4_6 months    LNS                  Control           1.2174603   0.7689041    1.9276912
6 months    ki1148112-LCNI-5            MALAWI                         Wealth Q4_6 months    Other                Control           1.1132075   0.6493345    1.9084634
6 months    ki1148112-LCNI-5            MALAWI                         Wealth Q1_6 months    Control              Control           1.0000000   1.0000000    1.0000000
6 months    ki1148112-LCNI-5            MALAWI                         Wealth Q1_6 months    LNS                  Control           1.2812500   0.8018740    2.0472064
6 months    ki1148112-LCNI-5            MALAWI                         Wealth Q1_6 months    Other                Control           1.1202830   0.6511482    1.9274168
6 months    ki1148112-LCNI-5            MALAWI                         Wealth Q2_6 months    Control              Control           1.0000000   1.0000000    1.0000000
6 months    ki1148112-LCNI-5            MALAWI                         Wealth Q2_6 months    LNS                  Control           0.9569597   0.6274761    1.4594529
6 months    ki1148112-LCNI-5            MALAWI                         Wealth Q2_6 months    Other                Control           1.1785714   0.7283526    1.9070854
6 months    ki1148112-LCNI-5            MALAWI                         Wealth Q3_6 months    Control              Control           1.0000000   1.0000000    1.0000000
6 months    ki1148112-LCNI-5            MALAWI                         Wealth Q3_6 months    LNS                  Control           0.8529412   0.4888732    1.4881337
6 months    ki1148112-LCNI-5            MALAWI                         Wealth Q3_6 months    Other                Control           1.3728814   0.7997009    2.3568852
6 months    kiGH5241-JiVitA-3           BANGLADESH                     Wealth Q4_6 months    Control              Control           1.0000000   1.0000000    1.0000000
6 months    kiGH5241-JiVitA-3           BANGLADESH                     Wealth Q4_6 months    Maternal             Control           0.9083218   0.7794440    1.0585091
6 months    kiGH5241-JiVitA-3           BANGLADESH                     Wealth Q1_6 months    Control              Control           1.0000000   1.0000000    1.0000000
6 months    kiGH5241-JiVitA-3           BANGLADESH                     Wealth Q1_6 months    Maternal             Control           0.8571113   0.7562506    0.9714237
6 months    kiGH5241-JiVitA-3           BANGLADESH                     Wealth Q2_6 months    Control              Control           1.0000000   1.0000000    1.0000000
6 months    kiGH5241-JiVitA-3           BANGLADESH                     Wealth Q2_6 months    Maternal             Control           0.9555453   0.8497046    1.0745698
6 months    kiGH5241-JiVitA-3           BANGLADESH                     Wealth Q3_6 months    Control              Control           1.0000000   1.0000000    1.0000000
6 months    kiGH5241-JiVitA-3           BANGLADESH                     Wealth Q3_6 months    Maternal             Control           0.9425736   0.8404035    1.0571648
6 months    kiGH5241-JiVitA-4           BANGLADESH                     Wealth Q4_6 months    Control              Control           1.0000000   1.0000000    1.0000000
6 months    kiGH5241-JiVitA-4           BANGLADESH                     Wealth Q4_6 months    LNS                  Control           0.9032258   0.5969975    1.3665331
6 months    kiGH5241-JiVitA-4           BANGLADESH                     Wealth Q4_6 months    Other                Control           1.0569498   0.7450076    1.4995054
6 months    kiGH5241-JiVitA-4           BANGLADESH                     Wealth Q1_6 months    Control              Control           1.0000000   1.0000000    1.0000000
6 months    kiGH5241-JiVitA-4           BANGLADESH                     Wealth Q1_6 months    LNS                  Control           1.0761421   0.8274326    1.3996088
6 months    kiGH5241-JiVitA-4           BANGLADESH                     Wealth Q1_6 months    Other                Control           0.9504537   0.7345640    1.2297939
6 months    kiGH5241-JiVitA-4           BANGLADESH                     Wealth Q2_6 months    Control              Control           1.0000000   1.0000000    1.0000000
6 months    kiGH5241-JiVitA-4           BANGLADESH                     Wealth Q2_6 months    LNS                  Control           0.8803239   0.6446063    1.2022379
6 months    kiGH5241-JiVitA-4           BANGLADESH                     Wealth Q2_6 months    Other                Control           1.1049452   0.8414221    1.4510004
6 months    kiGH5241-JiVitA-4           BANGLADESH                     Wealth Q3_6 months    Control              Control           1.0000000   1.0000000    1.0000000
6 months    kiGH5241-JiVitA-4           BANGLADESH                     Wealth Q3_6 months    LNS                  Control           1.2512223   0.8923067    1.7545058
6 months    kiGH5241-JiVitA-4           BANGLADESH                     Wealth Q3_6 months    Other                Control           1.5111294   1.1127704    2.0520962
24 months   iLiNS_DYADM_LNS             MALAWI                         Wealth Q3_24 months   Control              Control           1.0000000   1.0000000    1.0000000
24 months   iLiNS_DYADM_LNS             MALAWI                         Wealth Q3_24 months   LNS                  Control           2.2222222   0.3430285   14.3960980
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Wealth Q4_24 months   Control              Control           1.0000000   1.0000000    1.0000000
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Wealth Q4_24 months   LNS                  Control           1.0263505   0.6074197    1.7342131
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Wealth Q4_24 months   Other                Control           0.9318182   0.5967022    1.4551399
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Wealth Q1_24 months   Control              Control           1.0000000   1.0000000    1.0000000
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Wealth Q1_24 months   LNS                  Control           0.8620408   0.6171518    1.2041030
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Wealth Q1_24 months   Other                Control           1.0174006   0.7764685    1.3330922
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Wealth Q2_24 months   Control              Control           1.0000000   1.0000000    1.0000000
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Wealth Q2_24 months   LNS                  Control           0.8357143   0.5451822    1.2810733
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Wealth Q2_24 months   Other                Control           1.0086207   0.7112890    1.4302424
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Wealth Q3_24 months   Control              Control           1.0000000   1.0000000    1.0000000
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Wealth Q3_24 months   LNS                  Control           0.8097239   0.5717221    1.1468032
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Wealth Q3_24 months   Other                Control           0.9003170   0.6675323    1.2142795
24 months   ki1000111-WASH-Kenya        KENYA                          Wealth Q4_24 months   Control              Control           1.0000000   1.0000000    1.0000000
24 months   ki1000111-WASH-Kenya        KENYA                          Wealth Q4_24 months   LNS                  Control           0.7273707   0.4878310    1.0845316
24 months   ki1000111-WASH-Kenya        KENYA                          Wealth Q4_24 months   Other                Control           0.9767648   0.7249369    1.3160726
24 months   ki1000111-WASH-Kenya        KENYA                          Wealth Q1_24 months   Control              Control           1.0000000   1.0000000    1.0000000
24 months   ki1000111-WASH-Kenya        KENYA                          Wealth Q1_24 months   LNS                  Control           1.0511364   0.7774719    1.4211287
24 months   ki1000111-WASH-Kenya        KENYA                          Wealth Q1_24 months   Other                Control           0.9754135   0.7575180    1.2559852
24 months   ki1000111-WASH-Kenya        KENYA                          Wealth Q2_24 months   Control              Control           1.0000000   1.0000000    1.0000000
24 months   ki1000111-WASH-Kenya        KENYA                          Wealth Q2_24 months   LNS                  Control           1.0114943   0.7303614    1.4008416
24 months   ki1000111-WASH-Kenya        KENYA                          Wealth Q2_24 months   Other                Control           1.1679464   0.8905384    1.5317685
24 months   ki1000111-WASH-Kenya        KENYA                          Wealth Q3_24 months   Control              Control           1.0000000   1.0000000    1.0000000
24 months   ki1000111-WASH-Kenya        KENYA                          Wealth Q3_24 months   LNS                  Control           1.0054054   0.6826546    1.4807488
24 months   ki1000111-WASH-Kenya        KENYA                          Wealth Q3_24 months   Other                Control           1.0374502   0.7611301    1.4140853
24 months   ki1135781-COHORTS           GUATEMALA                      Wealth Q4_24 months   Control              Control           1.0000000   1.0000000    1.0000000
24 months   ki1135781-COHORTS           GUATEMALA                      Wealth Q4_24 months   Other                Control           1.1495191   0.9432120    1.4009514
24 months   ki1135781-COHORTS           GUATEMALA                      Wealth Q1_24 months   Control              Control           1.0000000   1.0000000    1.0000000
24 months   ki1135781-COHORTS           GUATEMALA                      Wealth Q1_24 months   Other                Control           0.7407407   0.5506605    0.9964341
24 months   ki1135781-COHORTS           GUATEMALA                      Wealth Q2_24 months   Control              Control           1.0000000   1.0000000    1.0000000
24 months   ki1135781-COHORTS           GUATEMALA                      Wealth Q2_24 months   Other                Control           0.7356322   0.5321081    1.0170015
24 months   ki1148112-iLiNS-DOSE        MALAWI                         Wealth Q4_24 months   Control              Control           1.0000000   1.0000000    1.0000000
24 months   ki1148112-iLiNS-DOSE        MALAWI                         Wealth Q4_24 months   LNS                  Control           1.1516214   0.7382302    1.7965018
24 months   ki1148112-iLiNS-DOSE        MALAWI                         Wealth Q1_24 months   Control              Control           1.0000000   1.0000000    1.0000000
24 months   ki1148112-iLiNS-DOSE        MALAWI                         Wealth Q1_24 months   LNS                  Control           0.8203125   0.5415943    1.2424663
24 months   ki1148112-iLiNS-DOSE        MALAWI                         Wealth Q2_24 months   Control              Control           1.0000000   1.0000000    1.0000000
24 months   ki1148112-iLiNS-DOSE        MALAWI                         Wealth Q2_24 months   LNS                  Control           1.1165644   0.7516017    1.6587457
24 months   ki1148112-iLiNS-DOSE        MALAWI                         Wealth Q3_24 months   Control              Control           1.0000000   1.0000000    1.0000000
24 months   ki1148112-iLiNS-DOSE        MALAWI                         Wealth Q3_24 months   LNS                  Control           0.8668874   0.6278260    1.1969779
24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Wealth Q2_24 months   Control              Control           1.0000000   1.0000000    1.0000000
24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Wealth Q2_24 months   Maternal             Control           0.3906250   0.1637106    0.9320587
24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Wealth Q3_24 months   Control              Control           1.0000000   1.0000000    1.0000000
24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Wealth Q3_24 months   Maternal             Control           2.1052632   0.3516731   12.6029917
24 months   ki1148112-LCNI-5            MALAWI                         Wealth Q4_24 months   Control              Control           1.0000000   1.0000000    1.0000000
24 months   ki1148112-LCNI-5            MALAWI                         Wealth Q4_24 months   LNS                  Control           0.9903288   0.5297838    1.8512290
24 months   ki1148112-LCNI-5            MALAWI                         Wealth Q4_24 months   Other                Control           1.0909091   0.5375860    2.2137532
24 months   ki1148112-LCNI-5            MALAWI                         Wealth Q1_24 months   Control              Control           1.0000000   1.0000000    1.0000000
24 months   ki1148112-LCNI-5            MALAWI                         Wealth Q1_24 months   LNS                  Control           1.2923977   0.6820041    2.4490935
24 months   ki1148112-LCNI-5            MALAWI                         Wealth Q1_24 months   Other                Control           1.0833333   0.5152996    2.2775314
24 months   ki1148112-LCNI-5            MALAWI                         Wealth Q2_24 months   Control              Control           1.0000000   1.0000000    1.0000000
24 months   ki1148112-LCNI-5            MALAWI                         Wealth Q2_24 months   LNS                  Control           1.0000000   0.5596752    1.7867506
24 months   ki1148112-LCNI-5            MALAWI                         Wealth Q2_24 months   Other                Control           1.1228070   0.5603927    2.2496647
24 months   ki1148112-LCNI-5            MALAWI                         Wealth Q3_24 months   Control              Control           1.0000000   1.0000000    1.0000000
24 months   ki1148112-LCNI-5            MALAWI                         Wealth Q3_24 months   LNS                  Control           0.9809783   0.5207551    1.8479288
24 months   ki1148112-LCNI-5            MALAWI                         Wealth Q3_24 months   Other                Control           0.5277778   0.2176653    1.2797143
24 months   kiGH5241-JiVitA-3           BANGLADESH                     Wealth Q4_24 months   Control              Control           1.0000000   1.0000000    1.0000000
24 months   kiGH5241-JiVitA-3           BANGLADESH                     Wealth Q4_24 months   Maternal             Control           0.9032258   0.4213670    1.9361197
24 months   kiGH5241-JiVitA-3           BANGLADESH                     Wealth Q1_24 months   Control              Control           1.0000000   1.0000000    1.0000000
24 months   kiGH5241-JiVitA-3           BANGLADESH                     Wealth Q1_24 months   Maternal             Control           1.4035088   0.6818565    2.8889318
24 months   kiGH5241-JiVitA-3           BANGLADESH                     Wealth Q2_24 months   Control              Control           1.0000000   1.0000000    1.0000000
24 months   kiGH5241-JiVitA-3           BANGLADESH                     Wealth Q2_24 months   Maternal             Control           2.1666667   0.5456088    8.6040484
24 months   kiGH5241-JiVitA-3           BANGLADESH                     Wealth Q3_24 months   Control              Control           1.0000000   1.0000000    1.0000000
24 months   kiGH5241-JiVitA-3           BANGLADESH                     Wealth Q3_24 months   Maternal             Control           0.7157895   0.3087534    1.6594299
24 months   kiGH5241-JiVitA-4           BANGLADESH                     Wealth Q4_24 months   Control              Control           1.0000000   1.0000000    1.0000000
24 months   kiGH5241-JiVitA-4           BANGLADESH                     Wealth Q4_24 months   LNS                  Control           1.0427350   0.6115889    1.7778224
24 months   kiGH5241-JiVitA-4           BANGLADESH                     Wealth Q4_24 months   Other                Control           0.9438550   0.5911111    1.5070979
24 months   kiGH5241-JiVitA-4           BANGLADESH                     Wealth Q1_24 months   Control              Control           1.0000000   1.0000000    1.0000000
24 months   kiGH5241-JiVitA-4           BANGLADESH                     Wealth Q1_24 months   LNS                  Control           0.7873211   0.5579235    1.1110384
24 months   kiGH5241-JiVitA-4           BANGLADESH                     Wealth Q1_24 months   Other                Control           0.8301887   0.6114688    1.1271438
24 months   kiGH5241-JiVitA-4           BANGLADESH                     Wealth Q2_24 months   Control              Control           1.0000000   1.0000000    1.0000000
24 months   kiGH5241-JiVitA-4           BANGLADESH                     Wealth Q2_24 months   LNS                  Control           1.6036364   1.0634141    2.4182955
24 months   kiGH5241-JiVitA-4           BANGLADESH                     Wealth Q2_24 months   Other                Control           1.6368007   1.1167937    2.3989360
24 months   kiGH5241-JiVitA-4           BANGLADESH                     Wealth Q3_24 months   Control              Control           1.0000000   1.0000000    1.0000000
24 months   kiGH5241-JiVitA-4           BANGLADESH                     Wealth Q3_24 months   LNS                  Control           0.6337484   0.4234362    0.9485183
24 months   kiGH5241-JiVitA-4           BANGLADESH                     Wealth Q3_24 months   Other                Control           0.7007154   0.5066231    0.9691665


### Parameter: PAR


agecat      studyid                     country                        intXhhwealth_quart    intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------------------  -----------------------------  --------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1135781-COHORTS           GUATEMALA                      Wealth Q4_Birth       Control              NA                 0.0234168   -0.0021049    0.0489384
Birth       ki1135781-COHORTS           GUATEMALA                      Wealth Q1_Birth       Control              NA                 0.0307272   -0.0046688    0.0661233
Birth       ki1135781-COHORTS           GUATEMALA                      Wealth Q2_Birth       Control              NA                -0.0192158   -0.0712534    0.0328218
Birth       ki1135781-COHORTS           GUATEMALA                      Wealth Q3_Birth       Control              NA                 0.0000000   -0.0362028    0.0362028
Birth       kiGH5241-JiVitA-3           BANGLADESH                     Wealth Q4_Birth       Control              NA                -0.0114611   -0.0263848    0.0034625
Birth       kiGH5241-JiVitA-3           BANGLADESH                     Wealth Q1_Birth       Control              NA                -0.0204063   -0.0370784   -0.0037342
Birth       kiGH5241-JiVitA-3           BANGLADESH                     Wealth Q2_Birth       Control              NA                -0.0166440   -0.0328611   -0.0004268
Birth       kiGH5241-JiVitA-3           BANGLADESH                     Wealth Q3_Birth       Control              NA                -0.0239913   -0.0390656   -0.0089170
Birth       kiGH5241-JiVitA-4           BANGLADESH                     Wealth Q4_Birth       Control              NA                -0.0613360   -0.1774841    0.0548120
Birth       kiGH5241-JiVitA-4           BANGLADESH                     Wealth Q1_Birth       Control              NA                -0.0254877   -0.1395956    0.0886202
Birth       kiGH5241-JiVitA-4           BANGLADESH                     Wealth Q2_Birth       Control              NA                 0.0521237   -0.0580517    0.1622991
Birth       kiGH5241-JiVitA-4           BANGLADESH                     Wealth Q3_Birth       Control              NA                 0.0032498   -0.0863828    0.0928825
6 months    iLiNS_DYADM_LNS             MALAWI                         Wealth Q4_6 months    Control              NA                -0.0203209   -0.0891546    0.0485129
6 months    iLiNS_DYADM_LNS             MALAWI                         Wealth Q1_6 months    Control              NA                -0.0141326   -0.0895419    0.0612768
6 months    iLiNS_DYADM_LNS             MALAWI                         Wealth Q2_6 months    Control              NA                 0.0488467   -0.0264146    0.1241079
6 months    iLiNS_DYADM_LNS             MALAWI                         Wealth Q3_6 months    Control              NA                 0.0033097   -0.0656599    0.0722792
6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Wealth Q4_6 months    Control              NA                -0.0873322   -0.1815370    0.0068726
6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Wealth Q1_6 months    Control              NA                 0.0287025   -0.0695345    0.1269396
6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Wealth Q2_6 months    Control              NA                -0.0509985   -0.1579723    0.0559754
6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Wealth Q3_6 months    Control              NA                -0.0381343   -0.1371697    0.0609012
6 months    ki1000111-WASH-Kenya        KENYA                          Wealth Q1_6 months    Control              NA                 0.1428571   -0.1075779    0.3932922
6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Wealth Q4_6 months    Control              NA                -0.0243686   -0.1105993    0.0618620
6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Wealth Q1_6 months    Control              NA                -0.0224090   -0.0930146    0.0481966
6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Wealth Q2_6 months    Control              NA                -0.0623276   -0.1139265   -0.0107287
6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Wealth Q3_6 months    Control              NA                 0.0284178   -0.0528123    0.1096479
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Wealth Q4_6 months    Control              NA                -0.0159515   -0.0808970    0.0489940
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Wealth Q1_6 months    Control              NA                 0.0017031   -0.0404867    0.0438930
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Wealth Q2_6 months    Control              NA                -0.0269278   -0.0923678    0.0385123
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Wealth Q3_6 months    Control              NA                 0.0167824   -0.0238163    0.0573812
6 months    ki1135781-COHORTS           GUATEMALA                      Wealth Q4_6 months    Control              NA                -0.0391993   -0.0906397    0.0122410
6 months    ki1135781-COHORTS           GUATEMALA                      Wealth Q1_6 months    Control              NA                -0.0472846   -0.1184513    0.0238820
6 months    ki1135781-COHORTS           GUATEMALA                      Wealth Q2_6 months    Control              NA                -0.0455835   -0.1260013    0.0348343
6 months    ki1135781-COHORTS           GUATEMALA                      Wealth Q3_6 months    Control              NA                -0.0673077   -0.1447593    0.0101439
6 months    ki1148112-iLiNS-DOSE        MALAWI                         Wealth Q4_6 months    Control              NA                -0.0210865   -0.1179678    0.0757947
6 months    ki1148112-iLiNS-DOSE        MALAWI                         Wealth Q1_6 months    Control              NA                -0.0228571   -0.1401708    0.0944565
6 months    ki1148112-iLiNS-DOSE        MALAWI                         Wealth Q2_6 months    Control              NA                -0.0607792   -0.1767039    0.0551454
6 months    ki1148112-iLiNS-DOSE        MALAWI                         Wealth Q3_6 months    Control              NA                 0.0229696   -0.0816195    0.1275587
6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Wealth Q4_6 months    Control              NA                -0.0300395   -0.1144745    0.0543954
6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Wealth Q1_6 months    Control              NA                -0.0252751   -0.1159362    0.0653861
6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Wealth Q2_6 months    Control              NA                 0.0434991   -0.0394734    0.1264716
6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Wealth Q3_6 months    Control              NA                -0.0045607   -0.0826952    0.0735738
6 months    ki1148112-LCNI-5            MALAWI                         Wealth Q4_6 months    Control              NA                 0.0405374   -0.0611926    0.1422674
6 months    ki1148112-LCNI-5            MALAWI                         Wealth Q1_6 months    Control              NA                 0.0543842   -0.0595400    0.1683085
6 months    ki1148112-LCNI-5            MALAWI                         Wealth Q2_6 months    Control              NA                 0.0051165   -0.1044852    0.1147182
6 months    ki1148112-LCNI-5            MALAWI                         Wealth Q3_6 months    Control              NA                 0.0118443   -0.1279874    0.1516761
6 months    kiGH5241-JiVitA-3           BANGLADESH                     Wealth Q4_6 months    Control              NA                -0.0087502   -0.0226753    0.0051750
6 months    kiGH5241-JiVitA-3           BANGLADESH                     Wealth Q1_6 months    Control              NA                -0.0232339   -0.0422477   -0.0042202
6 months    kiGH5241-JiVitA-3           BANGLADESH                     Wealth Q2_6 months    Control              NA                -0.0065432   -0.0234510    0.0103645
6 months    kiGH5241-JiVitA-3           BANGLADESH                     Wealth Q3_6 months    Control              NA                -0.0077192   -0.0227471    0.0073087
6 months    kiGH5241-JiVitA-4           BANGLADESH                     Wealth Q4_6 months    Control              NA                -0.0000905   -0.0500714    0.0498905
6 months    kiGH5241-JiVitA-4           BANGLADESH                     Wealth Q1_6 months    Control              NA                -0.0002041   -0.0522353    0.0518270
6 months    kiGH5241-JiVitA-4           BANGLADESH                     Wealth Q2_6 months    Control              NA                 0.0051970   -0.0471903    0.0575842
6 months    kiGH5241-JiVitA-4           BANGLADESH                     Wealth Q3_6 months    Control              NA                 0.0539300    0.0123430    0.0955169
24 months   iLiNS_DYADM_LNS             MALAWI                         Wealth Q3_24 months   Control              NA                 0.2115385   -0.1816350    0.6047119
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Wealth Q4_24 months   Control              NA                -0.0079752   -0.0903054    0.0743549
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Wealth Q1_24 months   Control              NA                -0.0150398   -0.1216614    0.0915818
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Wealth Q2_24 months   Control              NA                -0.0169352   -0.1355109    0.1016406
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Wealth Q3_24 months   Control              NA                -0.0503018   -0.1533910    0.0527874
24 months   ki1000111-WASH-Kenya        KENYA                          Wealth Q4_24 months   Control              NA                -0.0208378   -0.0707017    0.0290261
24 months   ki1000111-WASH-Kenya        KENYA                          Wealth Q1_24 months   Control              NA                -0.0003554   -0.0573192    0.0566084
24 months   ki1000111-WASH-Kenya        KENYA                          Wealth Q2_24 months   Control              NA                 0.0230866   -0.0316577    0.0778308
24 months   ki1000111-WASH-Kenya        KENYA                          Wealth Q3_24 months   Control              NA                 0.0049054   -0.0470779    0.0568887
24 months   ki1135781-COHORTS           GUATEMALA                      Wealth Q4_24 months   Control              NA                 0.0535044   -0.0216466    0.1286553
24 months   ki1135781-COHORTS           GUATEMALA                      Wealth Q1_24 months   Control              NA                -0.1129032   -0.2203729   -0.0054335
24 months   ki1135781-COHORTS           GUATEMALA                      Wealth Q2_24 months   Control              NA                -0.1060451   -0.2137352    0.0016450
24 months   ki1148112-iLiNS-DOSE        MALAWI                         Wealth Q4_24 months   Control              NA                 0.0482970   -0.0967535    0.1933476
24 months   ki1148112-iLiNS-DOSE        MALAWI                         Wealth Q1_24 months   Control              NA                -0.0882071   -0.2853609    0.1089468
24 months   ki1148112-iLiNS-DOSE        MALAWI                         Wealth Q2_24 months   Control              NA                 0.0497382   -0.1216522    0.2211287
24 months   ki1148112-iLiNS-DOSE        MALAWI                         Wealth Q3_24 months   Control              NA                -0.0639110   -0.2142721    0.0864502
24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Wealth Q2_24 months   Control              NA                -0.3714286   -0.7100256   -0.0328315
24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Wealth Q3_24 months   Control              NA                 0.2282609   -0.1795924    0.6361142
24 months   ki1148112-LCNI-5            MALAWI                         Wealth Q4_24 months   Control              NA                 0.0057646   -0.1317738    0.1433030
24 months   ki1148112-LCNI-5            MALAWI                         Wealth Q1_24 months   Control              NA                 0.0515734   -0.1046767    0.2078236
24 months   ki1148112-LCNI-5            MALAWI                         Wealth Q2_24 months   Control              NA                 0.0088384   -0.1301550    0.1478318
24 months   ki1148112-LCNI-5            MALAWI                         Wealth Q3_24 months   Control              NA                -0.0623570   -0.2597319    0.1350179
24 months   kiGH5241-JiVitA-3           BANGLADESH                     Wealth Q4_24 months   Control              NA                -0.0194805   -0.1651027    0.1261416
24 months   kiGH5241-JiVitA-3           BANGLADESH                     Wealth Q1_24 months   Control              NA                 0.1586207   -0.1397013    0.4569427
24 months   kiGH5241-JiVitA-3           BANGLADESH                     Wealth Q2_24 months   Control              NA                 0.2592593   -0.1038038    0.6223223
24 months   kiGH5241-JiVitA-3           BANGLADESH                     Wealth Q3_24 months   Control              NA                -0.0882353   -0.3100644    0.1335938
24 months   kiGH5241-JiVitA-4           BANGLADESH                     Wealth Q4_24 months   Control              NA                -0.0048573   -0.1090901    0.0993755
24 months   kiGH5241-JiVitA-4           BANGLADESH                     Wealth Q1_24 months   Control              NA                -0.0775974   -0.1895629    0.0343681
24 months   kiGH5241-JiVitA-4           BANGLADESH                     Wealth Q2_24 months   Control              NA                 0.1381456    0.0468719    0.2294192
24 months   kiGH5241-JiVitA-4           BANGLADESH                     Wealth Q3_24 months   Control              NA                -0.1337584   -0.2418861   -0.0256306


### Parameter: PAF


agecat      studyid                     country                        intXhhwealth_quart    intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------------------  -----------------------------  --------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1135781-COHORTS           GUATEMALA                      Wealth Q4_Birth       Control              NA                 0.4574074   -0.2384369    0.7622756
Birth       ki1135781-COHORTS           GUATEMALA                      Wealth Q1_Birth       Control              NA                 0.4824176   -0.3086911    0.7952981
Birth       ki1135781-COHORTS           GUATEMALA                      Wealth Q2_Birth       Control              NA                -0.2578125   -1.1713988    0.2713949
Birth       ki1135781-COHORTS           GUATEMALA                      Wealth Q3_Birth       Control              NA                 0.0000000   -1.1004619    0.5239142
Birth       kiGH5241-JiVitA-3           BANGLADESH                     Wealth Q4_Birth       Control              NA                -0.0447977   -0.1048018    0.0119474
Birth       kiGH5241-JiVitA-3           BANGLADESH                     Wealth Q1_Birth       Control              NA                -0.0555779   -0.1020601   -0.0110562
Birth       kiGH5241-JiVitA-3           BANGLADESH                     Wealth Q2_Birth       Control              NA                -0.0501006   -0.1001272   -0.0023488
Birth       kiGH5241-JiVitA-3           BANGLADESH                     Wealth Q3_Birth       Control              NA                -0.0739996   -0.1215229   -0.0284901
Birth       kiGH5241-JiVitA-4           BANGLADESH                     Wealth Q4_Birth       Control              NA                -0.2004373   -0.6505068    0.1269047
Birth       kiGH5241-JiVitA-4           BANGLADESH                     Wealth Q1_Birth       Control              NA                -0.0845543   -0.5377651    0.2350860
Birth       kiGH5241-JiVitA-4           BANGLADESH                     Wealth Q2_Birth       Control              NA                 0.1871327   -0.3229368    0.5005406
Birth       kiGH5241-JiVitA-4           BANGLADESH                     Wealth Q3_Birth       Control              NA                 0.0102345   -0.3160024    0.2555973
6 months    iLiNS_DYADM_LNS             MALAWI                         Wealth Q4_6 months    Control              NA                -0.0750988   -0.3617507    0.1512121
6 months    iLiNS_DYADM_LNS             MALAWI                         Wealth Q1_6 months    Control              NA                -0.0610526   -0.4420322    0.2192735
6 months    iLiNS_DYADM_LNS             MALAWI                         Wealth Q2_6 months    Control              NA                 0.1791045   -0.1464529    0.4122136
6 months    iLiNS_DYADM_LNS             MALAWI                         Wealth Q3_6 months    Control              NA                 0.0145804   -0.3412937    0.2760334
6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Wealth Q4_6 months    Control              NA                -1.1670762   -2.6653749   -0.2812384
6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Wealth Q1_6 months    Control              NA                 0.1528409   -0.5688857    0.5425552
6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Wealth Q2_6 months    Control              NA                -0.2725780   -0.9898057    0.1861242
6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Wealth Q3_6 months    Control              NA                -0.3184211   -1.4560816    0.2922735
6 months    ki1000111-WASH-Kenya        KENYA                          Wealth Q1_6 months    Control              NA                 0.5000000   -1.6530290    0.9057681
6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Wealth Q4_6 months    Control              NA                -0.0990991   -0.5110956    0.2005676
6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Wealth Q1_6 months    Control              NA                -0.0522876   -0.2310469    0.1005142
6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Wealth Q2_6 months    Control              NA                -0.3843537   -0.7037776   -0.1248154
6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Wealth Q3_6 months    Control              NA                 0.0978836   -0.2292122    0.3379385
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Wealth Q4_6 months    Control              NA                -0.1012678   -0.6008378    0.2424025
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Wealth Q1_6 months    Control              NA                 0.0205188   -0.6457134    0.4170410
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Wealth Q2_6 months    Control              NA                -0.2573099   -1.0615577    0.2331875
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Wealth Q3_6 months    Control              NA                 0.1768293   -0.3798026    0.5089080
6 months    ki1135781-COHORTS           GUATEMALA                      Wealth Q4_6 months    Control              NA                -0.1105016   -0.2656308    0.0256134
6 months    ki1135781-COHORTS           GUATEMALA                      Wealth Q1_6 months    Control              NA                -0.1031665   -0.2708255    0.0423734
6 months    ki1135781-COHORTS           GUATEMALA                      Wealth Q2_6 months    Control              NA                -0.0977513   -0.2851673    0.0623338
6 months    ki1135781-COHORTS           GUATEMALA                      Wealth Q3_6 months    Control              NA                -0.1555556   -0.3506233    0.0113389
6 months    ki1148112-iLiNS-DOSE        MALAWI                         Wealth Q4_6 months    Control              NA                -0.0696253   -0.4424801    0.2068533
6 months    ki1148112-iLiNS-DOSE        MALAWI                         Wealth Q1_6 months    Control              NA                -0.0824742   -0.6004080    0.2678427
6 months    ki1148112-iLiNS-DOSE        MALAWI                         Wealth Q2_6 months    Control              NA                -0.2006861   -0.6515824    0.1271116
6 months    ki1148112-iLiNS-DOSE        MALAWI                         Wealth Q3_6 months    Control              NA                 0.0722198   -0.3224066    0.3490836
6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Wealth Q4_6 months    Control              NA                -0.1151515   -0.4901278    0.1654656
6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Wealth Q1_6 months    Control              NA                -0.1147099   -0.6117241    0.2290380
6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Wealth Q2_6 months    Control              NA                 0.1626866   -0.2115873    0.4213428
6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Wealth Q3_6 months    Control              NA                -0.0208134   -0.4475796    0.2801363
6 months    ki1148112-LCNI-5            MALAWI                         Wealth Q4_6 months    Control              NA                 0.1172881   -0.2319911    0.3675440
6 months    ki1148112-LCNI-5            MALAWI                         Wealth Q1_6 months    Control              NA                 0.1452632   -0.2202813    0.4013060
6 months    ki1148112-LCNI-5            MALAWI                         Wealth Q2_6 months    Control              NA                 0.0132231   -0.3148768    0.2594526
6 months    ki1148112-LCNI-5            MALAWI                         Wealth Q3_6 months    Control              NA                 0.0343137   -0.4689973    0.3651793
6 months    kiGH5241-JiVitA-3           BANGLADESH                     Wealth Q4_6 months    Control              NA                -0.0480039   -0.1271703    0.0256022
6 months    kiGH5241-JiVitA-3           BANGLADESH                     Wealth Q1_6 months    Control              NA                -0.0789354   -0.1453166   -0.0164015
6 months    kiGH5241-JiVitA-3           BANGLADESH                     Wealth Q2_6 months    Control              NA                -0.0230729   -0.0844558    0.0348355
6 months    kiGH5241-JiVitA-3           BANGLADESH                     Wealth Q3_6 months    Control              NA                -0.0297073   -0.0891166    0.0264614
6 months    kiGH5241-JiVitA-4           BANGLADESH                     Wealth Q4_6 months    Control              NA                -0.0004525   -0.2844806    0.2207705
6 months    kiGH5241-JiVitA-4           BANGLADESH                     Wealth Q1_6 months    Control              NA                -0.0006595   -0.1836916    0.1540706
6 months    kiGH5241-JiVitA-4           BANGLADESH                     Wealth Q2_6 months    Control              NA                 0.0193593   -0.1967107    0.1964171
6 months    kiGH5241-JiVitA-4           BANGLADESH                     Wealth Q3_6 months    Control              NA                 0.2305971    0.0317260    0.3886226
24 months   iLiNS_DYADM_LNS             MALAWI                         Wealth Q3_24 months   Control              NA                 0.4583333   -1.5947886    0.8869261
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Wealth Q4_24 months   Control              NA                -0.0306365   -0.4007808    0.2417003
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Wealth Q1_24 months   Control              NA                -0.0282790   -0.2496765    0.1538948
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Wealth Q2_24 months   Control              NA                -0.0396135   -0.3575389    0.2038561
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Wealth Q3_24 months   Control              NA                -0.1173709   -0.3861329    0.0992800
24 months   ki1000111-WASH-Kenya        KENYA                          Wealth Q4_24 months   Control              NA                -0.0774172   -0.2794796    0.0927344
24 months   ki1000111-WASH-Kenya        KENYA                          Wealth Q1_24 months   Control              NA                -0.0009971   -0.1742949    0.1467261
24 months   ki1000111-WASH-Kenya        KENYA                          Wealth Q2_24 months   Control              NA                 0.0696224   -0.1110059    0.2208840
24 months   ki1000111-WASH-Kenya        KENYA                          Wealth Q3_24 months   Control              NA                 0.0179211   -0.1915918    0.1905962
24 months   ki1135781-COHORTS           GUATEMALA                      Wealth Q4_24 months   Control              NA                 0.0718487   -0.0359375    0.1684202
24 months   ki1135781-COHORTS           GUATEMALA                      Wealth Q1_24 months   Control              NA                -0.1489362   -0.3105400   -0.0072599
24 months   ki1135781-COHORTS           GUATEMALA                      Wealth Q2_24 months   Control              NA                -0.1437500   -0.3091559    0.0007576
24 months   ki1148112-iLiNS-DOSE        MALAWI                         Wealth Q4_24 months   Control              NA                 0.1104725   -0.2919071    0.3875263
24 months   ki1148112-iLiNS-DOSE        MALAWI                         Wealth Q1_24 months   Control              NA                -0.1825397   -0.6717031    0.1634878
24 months   ki1148112-iLiNS-DOSE        MALAWI                         Wealth Q2_24 months   Control              NA                 0.0904762   -0.2817656    0.3546140
24 months   ki1148112-iLiNS-DOSE        MALAWI                         Wealth Q3_24 months   Control              NA                -0.1218920   -0.4495803    0.1317199
24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Wealth Q2_24 months   Control              NA                -0.8666667   -2.1641700   -0.1012191
24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Wealth Q3_24 months   Control              NA                 0.4772727   -1.6662918    0.8975192
24 months   ki1148112-LCNI-5            MALAWI                         Wealth Q4_24 months   Control              NA                 0.0164931   -0.4673859    0.3408101
24 months   ki1148112-LCNI-5            MALAWI                         Wealth Q1_24 months   Control              NA                 0.1296703   -0.3671822    0.4459599
24 months   ki1148112-LCNI-5            MALAWI                         Wealth Q2_24 months   Control              NA                 0.0230263   -0.4153315    0.3256156
24 months   ki1148112-LCNI-5            MALAWI                         Wealth Q3_24 months   Control              NA                -0.1738437   -0.8768624    0.2658444
24 months   kiGH5241-JiVitA-3           BANGLADESH                     Wealth Q4_24 months   Control              NA                -0.0476190   -0.4725714    0.2547012
24 months   kiGH5241-JiVitA-3           BANGLADESH                     Wealth Q1_24 months   Control              NA                 0.2090909   -0.3287057    0.5292131
24 months   kiGH5241-JiVitA-3           BANGLADESH                     Wealth Q2_24 months   Control              NA                 0.4375000   -0.7809440    0.8223379
24 months   kiGH5241-JiVitA-3           BANGLADESH                     Wealth Q3_24 months   Control              NA                -0.1764706   -0.7167198    0.1937630
24 months   kiGH5241-JiVitA-4           BANGLADESH                     Wealth Q4_24 months   Control              NA                -0.0154291   -0.4069767    0.2671547
24 months   kiGH5241-JiVitA-4           BANGLADESH                     Wealth Q1_24 months   Control              NA                -0.1658570   -0.4319484    0.0507880
24 months   kiGH5241-JiVitA-4           BANGLADESH                     Wealth Q2_24 months   Control              NA                 0.3053405    0.0741368    0.4788086
24 months   kiGH5241-JiVitA-4           BANGLADESH                     Wealth Q3_24 months   Control              NA                -0.3191661   -0.6103456   -0.0806370
