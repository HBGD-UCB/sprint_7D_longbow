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
* intXmeducyrs

## Data Summary

agecat      studyid                     country                        intXmeducyrs        stunted   n_cell       n
----------  --------------------------  -----------------------------  -----------------  --------  -------  ------
Birth       iLiNS_DYADM_LNS             MALAWI                         High_Birth                0        0       1
Birth       iLiNS_DYADM_LNS             MALAWI                         High_Birth                1        1       1
Birth       ki1000125-AgaKhanUniv       PAKISTAN                       Low_Birth                 0        3       3
Birth       ki1000125-AgaKhanUniv       PAKISTAN                       Low_Birth                 1        0       3
Birth       ki1000125-AgaKhanUniv       PAKISTAN                       Medium_Birth              0        1       1
Birth       ki1000125-AgaKhanUniv       PAKISTAN                       Medium_Birth              1        0       1
Birth       ki1000304b-SAS-CompFeed     INDIA                          Low_Birth                 0       41      62
Birth       ki1000304b-SAS-CompFeed     INDIA                          Low_Birth                 1       21      62
Birth       ki1000304b-SAS-CompFeed     INDIA                          Medium_Birth              0       44      56
Birth       ki1000304b-SAS-CompFeed     INDIA                          Medium_Birth              1       12      56
Birth       ki1000304b-SAS-CompFeed     INDIA                          High_Birth                0       21      26
Birth       ki1000304b-SAS-CompFeed     INDIA                          High_Birth                1        5      26
Birth       ki1119695-PROBIT            BELARUS                        Low_Birth                 0     4944    4962
Birth       ki1119695-PROBIT            BELARUS                        Low_Birth                 1       18    4962
Birth       ki1119695-PROBIT            BELARUS                        Medium_Birth              0     6661    6674
Birth       ki1119695-PROBIT            BELARUS                        Medium_Birth              1       13    6674
Birth       ki1119695-PROBIT            BELARUS                        High_Birth                0     2246    2248
Birth       ki1119695-PROBIT            BELARUS                        High_Birth                1        2    2248
Birth       ki1126311-ZVITAMBO          ZIMBABWE                       Low_Birth                 0     2584    2904
Birth       ki1126311-ZVITAMBO          ZIMBABWE                       Low_Birth                 1      320    2904
Birth       ki1126311-ZVITAMBO          ZIMBABWE                       Medium_Birth              0     3040    3419
Birth       ki1126311-ZVITAMBO          ZIMBABWE                       Medium_Birth              1      379    3419
Birth       ki1126311-ZVITAMBO          ZIMBABWE                       High_Birth                0     6754    7487
Birth       ki1126311-ZVITAMBO          ZIMBABWE                       High_Birth                1      733    7487
Birth       ki1135781-COHORTS           GUATEMALA                      Low_Birth                 0      361     391
Birth       ki1135781-COHORTS           GUATEMALA                      Low_Birth                 1       30     391
Birth       ki1135781-COHORTS           GUATEMALA                      Medium_Birth              0      264     273
Birth       ki1135781-COHORTS           GUATEMALA                      Medium_Birth              1        9     273
Birth       ki1135781-COHORTS           GUATEMALA                      High_Birth                0      168     178
Birth       ki1135781-COHORTS           GUATEMALA                      High_Birth                1       10     178
Birth       ki1148112-iLiNS-DYAD-M      MALAWI                         High_Birth                0        0       1
Birth       ki1148112-iLiNS-DYAD-M      MALAWI                         High_Birth                1        1       1
Birth       kiGH5241-JiVitA-3           BANGLADESH                     Low_Birth                 0    10372   15794
Birth       kiGH5241-JiVitA-3           BANGLADESH                     Low_Birth                 1     5422   15794
Birth       kiGH5241-JiVitA-3           BANGLADESH                     Medium_Birth              0     8058   12276
Birth       kiGH5241-JiVitA-3           BANGLADESH                     Medium_Birth              1     4218   12276
Birth       kiGH5241-JiVitA-3           BANGLADESH                     High_Birth                0     8080   11104
Birth       kiGH5241-JiVitA-3           BANGLADESH                     High_Birth                1     3024   11104
Birth       kiGH5241-JiVitA-4           BANGLADESH                     Low_Birth                 0      498     708
Birth       kiGH5241-JiVitA-4           BANGLADESH                     Low_Birth                 1      210     708
Birth       kiGH5241-JiVitA-4           BANGLADESH                     Medium_Birth              0        6      10
Birth       kiGH5241-JiVitA-4           BANGLADESH                     Medium_Birth              1        4      10
Birth       kiGH5241-JiVitA-4           BANGLADESH                     High_Birth                0        6      16
Birth       kiGH5241-JiVitA-4           BANGLADESH                     High_Birth                1       10      16
6 months    iLiNS_DYADM_LNS             MALAWI                         Low_6 months              0      184     240
6 months    iLiNS_DYADM_LNS             MALAWI                         Low_6 months              1       56     240
6 months    iLiNS_DYADM_LNS             MALAWI                         Medium_6 months           0      198     269
6 months    iLiNS_DYADM_LNS             MALAWI                         Medium_6 months           1       71     269
6 months    iLiNS_DYADM_LNS             MALAWI                         High_6 months             0      146     174
6 months    iLiNS_DYADM_LNS             MALAWI                         High_6 months             1       28     174
6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Low_6 months              0      161     207
6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Low_6 months              1       46     207
6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Medium_6 months           0      202     232
6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Medium_6 months           1       30     232
6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     High_6 months             0      219     243
6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     High_6 months             1       24     243
6 months    ki1000111-WASH-Kenya        KENYA                          Low_6 months              0       27      35
6 months    ki1000111-WASH-Kenya        KENYA                          Low_6 months              1        8      35
6 months    ki1000111-WASH-Kenya        KENYA                          Medium_6 months           0       21      24
6 months    ki1000111-WASH-Kenya        KENYA                          Medium_6 months           1        3      24
6 months    ki1000111-WASH-Kenya        KENYA                          High_6 months             0       15      15
6 months    ki1000111-WASH-Kenya        KENYA                          High_6 months             1        0      15
6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Low_6 months              0       90     122
6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Low_6 months              1       32     122
6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Medium_6 months           0       28      35
6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Medium_6 months           1        7      35
6 months    ki1000125-AgaKhanUniv       PAKISTAN                       High_6 months             0       23      27
6 months    ki1000125-AgaKhanUniv       PAKISTAN                       High_6 months             1        4      27
6 months    ki1000304-EU                INDIA                          Low_6 months              0       75     121
6 months    ki1000304-EU                INDIA                          Low_6 months              1       46     121
6 months    ki1000304-EU                INDIA                          Medium_6 months           0       99     146
6 months    ki1000304-EU                INDIA                          Medium_6 months           1       47     146
6 months    ki1000304-EU                INDIA                          High_6 months             0       72      95
6 months    ki1000304-EU                INDIA                          High_6 months             1       23      95
6 months    ki1000304-VITAMIN-A         INDIA                          Low_6 months              0      700    1191
6 months    ki1000304-VITAMIN-A         INDIA                          Low_6 months              1      491    1191
6 months    ki1000304-VITAMIN-A         INDIA                          Medium_6 months           0      561     830
6 months    ki1000304-VITAMIN-A         INDIA                          Medium_6 months           1      269     830
6 months    ki1000304-VITAMIN-A         INDIA                          High_6 months             0      383     485
6 months    ki1000304-VITAMIN-A         INDIA                          High_6 months             1      102     485
6 months    ki1000304-Vitamin-B12       INDIA                          Low_6 months              0       15      24
6 months    ki1000304-Vitamin-B12       INDIA                          Low_6 months              1        9      24
6 months    ki1000304-Vitamin-B12       INDIA                          Medium_6 months           0       18      25
6 months    ki1000304-Vitamin-B12       INDIA                          Medium_6 months           1        7      25
6 months    ki1000304-Vitamin-B12       INDIA                          High_6 months             0       25      32
6 months    ki1000304-Vitamin-B12       INDIA                          High_6 months             1        7      32
6 months    ki1000304-ZnMort            INDIA                          Low_6 months              0       33      56
6 months    ki1000304-ZnMort            INDIA                          Low_6 months              1       23      56
6 months    ki1000304-ZnMort            INDIA                          Medium_6 months           0       31      48
6 months    ki1000304-ZnMort            INDIA                          Medium_6 months           1       17      48
6 months    ki1000304-ZnMort            INDIA                          High_6 months             0       29      41
6 months    ki1000304-ZnMort            INDIA                          High_6 months             1       12      41
6 months    ki1000304b-SAS-CompFeed     INDIA                          Low_6 months              0      170     269
6 months    ki1000304b-SAS-CompFeed     INDIA                          Low_6 months              1       99     269
6 months    ki1000304b-SAS-CompFeed     INDIA                          Medium_6 months           0      149     207
6 months    ki1000304b-SAS-CompFeed     INDIA                          Medium_6 months           1       58     207
6 months    ki1000304b-SAS-CompFeed     INDIA                          High_6 months             0      125     141
6 months    ki1000304b-SAS-CompFeed     INDIA                          High_6 months             1       16     141
6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Low_6 months              0      161     284
6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Low_6 months              1      123     284
6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Medium_6 months           0       21      38
6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Medium_6 months           1       17      38
6 months    ki1000304b-SAS-FoodSuppl    INDIA                          High_6 months             0       22      33
6 months    ki1000304b-SAS-FoodSuppl    INDIA                          High_6 months             1       11      33
6 months    ki1017093b-PROVIDE          BANGLADESH                     Low_6 months              0       12      16
6 months    ki1017093b-PROVIDE          BANGLADESH                     Low_6 months              1        4      16
6 months    ki1017093b-PROVIDE          BANGLADESH                     Medium_6 months           0       15      19
6 months    ki1017093b-PROVIDE          BANGLADESH                     Medium_6 months           1        4      19
6 months    ki1017093b-PROVIDE          BANGLADESH                     High_6 months             0        9      11
6 months    ki1017093b-PROVIDE          BANGLADESH                     High_6 months             1        2      11
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Low_6 months              0       55      62
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Low_6 months              1        7      62
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Medium_6 months           0     1077    1212
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Medium_6 months           1      135    1212
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   High_6 months             0      384     427
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   High_6 months             1       43     427
6 months    ki1112895-Burkina Faso Zn   BURKINA FASO                   Low_6 months              0      351     402
6 months    ki1112895-Burkina Faso Zn   BURKINA FASO                   Low_6 months              1       51     402
6 months    ki1112895-Burkina Faso Zn   BURKINA FASO                   Medium_6 months           0       72      81
6 months    ki1112895-Burkina Faso Zn   BURKINA FASO                   Medium_6 months           1        9      81
6 months    ki1112895-Burkina Faso Zn   BURKINA FASO                   High_6 months             0       17      18
6 months    ki1112895-Burkina Faso Zn   BURKINA FASO                   High_6 months             1        1      18
6 months    ki1112895-Guatemala BSC     GUATEMALA                      Low_6 months              0       32      54
6 months    ki1112895-Guatemala BSC     GUATEMALA                      Low_6 months              1       22      54
6 months    ki1112895-Guatemala BSC     GUATEMALA                      Medium_6 months           0       48      67
6 months    ki1112895-Guatemala BSC     GUATEMALA                      Medium_6 months           1       19      67
6 months    ki1112895-Guatemala BSC     GUATEMALA                      High_6 months             0       67      91
6 months    ki1112895-Guatemala BSC     GUATEMALA                      High_6 months             1       24      91
6 months    ki1119695-PROBIT            BELARUS                        Low_6 months              0     4729    5179
6 months    ki1119695-PROBIT            BELARUS                        Low_6 months              1      450    5179
6 months    ki1119695-PROBIT            BELARUS                        Medium_6 months           0     6503    6872
6 months    ki1119695-PROBIT            BELARUS                        Medium_6 months           1      369    6872
6 months    ki1119695-PROBIT            BELARUS                        High_6 months             0     2344    2449
6 months    ki1119695-PROBIT            BELARUS                        High_6 months             1      105    2449
6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Low_6 months              0     1316    1617
6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Low_6 months              1      301    1617
6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Medium_6 months           0     1588    1955
6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Medium_6 months           1      367    1955
6 months    ki1126311-ZVITAMBO          ZIMBABWE                       High_6 months             0     3571    4193
6 months    ki1126311-ZVITAMBO          ZIMBABWE                       High_6 months             1      622    4193
6 months    ki1135781-COHORTS           GUATEMALA                      Low_6 months              0      239     435
6 months    ki1135781-COHORTS           GUATEMALA                      Low_6 months              1      196     435
6 months    ki1135781-COHORTS           GUATEMALA                      Medium_6 months           0      191     309
6 months    ki1135781-COHORTS           GUATEMALA                      Medium_6 months           1      118     309
6 months    ki1135781-COHORTS           GUATEMALA                      High_6 months             0      110     179
6 months    ki1135781-COHORTS           GUATEMALA                      High_6 months             1       69     179
6 months    ki1148112-iLiNS-DOSE        MALAWI                         Low_6 months              0      388     592
6 months    ki1148112-iLiNS-DOSE        MALAWI                         Low_6 months              1      204     592
6 months    ki1148112-iLiNS-DOSE        MALAWI                         Medium_6 months           0      399     565
6 months    ki1148112-iLiNS-DOSE        MALAWI                         Medium_6 months           1      166     565
6 months    ki1148112-iLiNS-DOSE        MALAWI                         High_6 months             0      513     709
6 months    ki1148112-iLiNS-DOSE        MALAWI                         High_6 months             1      196     709
6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Low_6 months              0      274     363
6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Low_6 months              1       89     363
6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Medium_6 months           0      300     399
6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Medium_6 months           1       99     399
6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         High_6 months             0      222     267
6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         High_6 months             1       45     267
6 months    ki1148112-LCNI-5            MALAWI                         Low_6 months              0      149     261
6 months    ki1148112-LCNI-5            MALAWI                         Low_6 months              1      112     261
6 months    ki1148112-LCNI-5            MALAWI                         Medium_6 months           0      162     254
6 months    ki1148112-LCNI-5            MALAWI                         Medium_6 months           1       92     254
6 months    ki1148112-LCNI-5            MALAWI                         High_6 months             0      207     298
6 months    ki1148112-LCNI-5            MALAWI                         High_6 months             1       91     298
6 months    kiGH5241-JiVitA-3           BANGLADESH                     Low_6 months              0     7950   11199
6 months    kiGH5241-JiVitA-3           BANGLADESH                     Low_6 months              1     3249   11199
6 months    kiGH5241-JiVitA-3           BANGLADESH                     Medium_6 months           0     7571   10461
6 months    kiGH5241-JiVitA-3           BANGLADESH                     Medium_6 months           1     2890   10461
6 months    kiGH5241-JiVitA-3           BANGLADESH                     High_6 months             0     9516   11789
6 months    kiGH5241-JiVitA-3           BANGLADESH                     High_6 months             1     2273   11789
6 months    kiGH5241-JiVitA-4           BANGLADESH                     Low_6 months              0     2760    3704
6 months    kiGH5241-JiVitA-4           BANGLADESH                     Low_6 months              1      944    3704
6 months    kiGH5241-JiVitA-4           BANGLADESH                     Medium_6 months           0       96     130
6 months    kiGH5241-JiVitA-4           BANGLADESH                     Medium_6 months           1       34     130
6 months    kiGH5241-JiVitA-4           BANGLADESH                     High_6 months             0       80     131
6 months    kiGH5241-JiVitA-4           BANGLADESH                     High_6 months             1       51     131
24 months   iLiNS_DYADM_LNS             MALAWI                         Low_24 months             0       10      15
24 months   iLiNS_DYADM_LNS             MALAWI                         Low_24 months             1        5      15
24 months   iLiNS_DYADM_LNS             MALAWI                         Medium_24 months          0        6      12
24 months   iLiNS_DYADM_LNS             MALAWI                         Medium_24 months          1        6      12
24 months   iLiNS_DYADM_LNS             MALAWI                         High_24 months            0        4       8
24 months   iLiNS_DYADM_LNS             MALAWI                         High_24 months            1        4       8
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Low_24 months             0      155     317
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Low_24 months             1      162     317
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Medium_24 months          0      228     411
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Medium_24 months          1      183     411
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     High_24 months            0      321     459
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     High_24 months            1      138     459
24 months   ki1000111-WASH-Kenya        KENYA                          Low_24 months             0      755    1208
24 months   ki1000111-WASH-Kenya        KENYA                          Low_24 months             1      453    1208
24 months   ki1000111-WASH-Kenya        KENYA                          Medium_24 months          0      370     498
24 months   ki1000111-WASH-Kenya        KENYA                          Medium_24 months          1      128     498
24 months   ki1000111-WASH-Kenya        KENYA                          High_24 months            0      438     555
24 months   ki1000111-WASH-Kenya        KENYA                          High_24 months            1      117     555
24 months   ki1000304-EU                INDIA                          Low_24 months             0       28      88
24 months   ki1000304-EU                INDIA                          Low_24 months             1       60      88
24 months   ki1000304-EU                INDIA                          Medium_24 months          0       40     101
24 months   ki1000304-EU                INDIA                          Medium_24 months          1       61     101
24 months   ki1000304-EU                INDIA                          High_24 months            0       33      62
24 months   ki1000304-EU                INDIA                          High_24 months            1       29      62
24 months   ki1000304-Vitamin-B12       INDIA                          Low_24 months             0       23      55
24 months   ki1000304-Vitamin-B12       INDIA                          Low_24 months             1       32      55
24 months   ki1000304-Vitamin-B12       INDIA                          Medium_24 months          0       19      40
24 months   ki1000304-Vitamin-B12       INDIA                          Medium_24 months          1       21      40
24 months   ki1000304-Vitamin-B12       INDIA                          High_24 months            0       31      37
24 months   ki1000304-Vitamin-B12       INDIA                          High_24 months            1        6      37
24 months   ki1000304-ZnMort            INDIA                          Low_24 months             0       12      54
24 months   ki1000304-ZnMort            INDIA                          Low_24 months             1       42      54
24 months   ki1000304-ZnMort            INDIA                          Medium_24 months          0       21      52
24 months   ki1000304-ZnMort            INDIA                          Medium_24 months          1       31      52
24 months   ki1000304-ZnMort            INDIA                          High_24 months            0       24      34
24 months   ki1000304-ZnMort            INDIA                          High_24 months            1       10      34
24 months   ki1017093b-PROVIDE          BANGLADESH                     Medium_24 months          0        1       1
24 months   ki1017093b-PROVIDE          BANGLADESH                     Medium_24 months          1        0       1
24 months   ki1017093b-PROVIDE          BANGLADESH                     High_24 months            0        1       1
24 months   ki1017093b-PROVIDE          BANGLADESH                     High_24 months            1        0       1
24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Medium_24 months          0        3       4
24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Medium_24 months          1        1       4
24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Low_24 months             0      510     805
24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Low_24 months             1      295     805
24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Medium_24 months          0      105     152
24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Medium_24 months          1       47     152
24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   High_24 months            0       29      38
24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   High_24 months            1        9      38
24 months   ki1119695-PROBIT            BELARUS                        Low_24 months             0      261     305
24 months   ki1119695-PROBIT            BELARUS                        Low_24 months             1       44     305
24 months   ki1119695-PROBIT            BELARUS                        Medium_24 months          0      355     402
24 months   ki1119695-PROBIT            BELARUS                        Medium_24 months          1       47     402
24 months   ki1119695-PROBIT            BELARUS                        High_24 months            0      125     134
24 months   ki1119695-PROBIT            BELARUS                        High_24 months            1        9     134
24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Low_24 months             0        2       9
24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Low_24 months             1        7       9
24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Medium_24 months          0        4       8
24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Medium_24 months          1        4       8
24 months   ki1126311-ZVITAMBO          ZIMBABWE                       High_24 months            0        8      20
24 months   ki1126311-ZVITAMBO          ZIMBABWE                       High_24 months            1       12      20
24 months   ki1135781-COHORTS           GUATEMALA                      Low_24 months             0       35     156
24 months   ki1135781-COHORTS           GUATEMALA                      Low_24 months             1      121     156
24 months   ki1135781-COHORTS           GUATEMALA                      Medium_24 months          0       20     103
24 months   ki1135781-COHORTS           GUATEMALA                      Medium_24 months          1       83     103
24 months   ki1135781-COHORTS           GUATEMALA                      High_24 months            0       18      67
24 months   ki1135781-COHORTS           GUATEMALA                      High_24 months            1       49      67
24 months   ki1148112-iLiNS-DOSE        MALAWI                         Low_24 months             0      114     247
24 months   ki1148112-iLiNS-DOSE        MALAWI                         Low_24 months             1      133     247
24 months   ki1148112-iLiNS-DOSE        MALAWI                         Medium_24 months          0      104     231
24 months   ki1148112-iLiNS-DOSE        MALAWI                         Medium_24 months          1      127     231
24 months   ki1148112-iLiNS-DOSE        MALAWI                         High_24 months            0      163     291
24 months   ki1148112-iLiNS-DOSE        MALAWI                         High_24 months            1      128     291
24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Low_24 months             0       13      23
24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Low_24 months             1       10      23
24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Medium_24 months          0       11      22
24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Medium_24 months          1       11      22
24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         High_24 months            0       14      20
24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         High_24 months            1        6      20
24 months   ki1148112-LCNI-5            MALAWI                         Low_24 months             0       72     126
24 months   ki1148112-LCNI-5            MALAWI                         Low_24 months             1       54     126
24 months   ki1148112-LCNI-5            MALAWI                         Medium_24 months          0       71     117
24 months   ki1148112-LCNI-5            MALAWI                         Medium_24 months          1       46     117
24 months   ki1148112-LCNI-5            MALAWI                         High_24 months            0       97     138
24 months   ki1148112-LCNI-5            MALAWI                         High_24 months            1       41     138
24 months   kiGH5241-JiVitA-3           BANGLADESH                     Low_24 months             0       15      40
24 months   kiGH5241-JiVitA-3           BANGLADESH                     Low_24 months             1       25      40
24 months   kiGH5241-JiVitA-3           BANGLADESH                     Medium_24 months          0       14      39
24 months   kiGH5241-JiVitA-3           BANGLADESH                     Medium_24 months          1       25      39
24 months   kiGH5241-JiVitA-3           BANGLADESH                     High_24 months            0       46      79
24 months   kiGH5241-JiVitA-3           BANGLADESH                     High_24 months            1       33      79
24 months   kiGH5241-JiVitA-4           BANGLADESH                     Low_24 months             0      457     797
24 months   kiGH5241-JiVitA-4           BANGLADESH                     Low_24 months             1      340     797
24 months   kiGH5241-JiVitA-4           BANGLADESH                     Medium_24 months          0       17      29
24 months   kiGH5241-JiVitA-4           BANGLADESH                     Medium_24 months          1       12      29
24 months   kiGH5241-JiVitA-4           BANGLADESH                     High_24 months            0       15      31
24 months   kiGH5241-JiVitA-4           BANGLADESH                     High_24 months            1       16      31


The following strata were considered:

* agecat: 24 months, studyid: iLiNS_DYADM_LNS, country: MALAWI, intXmeducyrs: High_24 months
* agecat: 24 months, studyid: iLiNS_DYADM_LNS, country: MALAWI, intXmeducyrs: Low_24 months
* agecat: 24 months, studyid: iLiNS_DYADM_LNS, country: MALAWI, intXmeducyrs: Medium_24 months
* agecat: 24 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH, intXmeducyrs: High_24 months
* agecat: 24 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH, intXmeducyrs: Low_24 months
* agecat: 24 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH, intXmeducyrs: Medium_24 months
* agecat: 24 months, studyid: ki1000111-WASH-Kenya, country: KENYA, intXmeducyrs: High_24 months
* agecat: 24 months, studyid: ki1000111-WASH-Kenya, country: KENYA, intXmeducyrs: Low_24 months
* agecat: 24 months, studyid: ki1000111-WASH-Kenya, country: KENYA, intXmeducyrs: Medium_24 months
* agecat: 24 months, studyid: ki1000304-EU, country: INDIA, intXmeducyrs: High_24 months
* agecat: 24 months, studyid: ki1000304-EU, country: INDIA, intXmeducyrs: Low_24 months
* agecat: 24 months, studyid: ki1000304-EU, country: INDIA, intXmeducyrs: Medium_24 months
* agecat: 24 months, studyid: ki1000304-Vitamin-B12, country: INDIA, intXmeducyrs: High_24 months
* agecat: 24 months, studyid: ki1000304-Vitamin-B12, country: INDIA, intXmeducyrs: Low_24 months
* agecat: 24 months, studyid: ki1000304-Vitamin-B12, country: INDIA, intXmeducyrs: Medium_24 months
* agecat: 24 months, studyid: ki1000304-ZnMort, country: INDIA, intXmeducyrs: High_24 months
* agecat: 24 months, studyid: ki1000304-ZnMort, country: INDIA, intXmeducyrs: Low_24 months
* agecat: 24 months, studyid: ki1000304-ZnMort, country: INDIA, intXmeducyrs: Medium_24 months
* agecat: 24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH, intXmeducyrs: High_24 months
* agecat: 24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH, intXmeducyrs: Medium_24 months
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF, intXmeducyrs: Medium_24 months
* agecat: 24 months, studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO, intXmeducyrs: High_24 months
* agecat: 24 months, studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO, intXmeducyrs: Low_24 months
* agecat: 24 months, studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO, intXmeducyrs: Medium_24 months
* agecat: 24 months, studyid: ki1119695-PROBIT, country: BELARUS, intXmeducyrs: High_24 months
* agecat: 24 months, studyid: ki1119695-PROBIT, country: BELARUS, intXmeducyrs: Low_24 months
* agecat: 24 months, studyid: ki1119695-PROBIT, country: BELARUS, intXmeducyrs: Medium_24 months
* agecat: 24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE, intXmeducyrs: High_24 months
* agecat: 24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE, intXmeducyrs: Low_24 months
* agecat: 24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE, intXmeducyrs: Medium_24 months
* agecat: 24 months, studyid: ki1135781-COHORTS, country: GUATEMALA, intXmeducyrs: High_24 months
* agecat: 24 months, studyid: ki1135781-COHORTS, country: GUATEMALA, intXmeducyrs: Low_24 months
* agecat: 24 months, studyid: ki1135781-COHORTS, country: GUATEMALA, intXmeducyrs: Medium_24 months
* agecat: 24 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI, intXmeducyrs: High_24 months
* agecat: 24 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI, intXmeducyrs: Low_24 months
* agecat: 24 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI, intXmeducyrs: Medium_24 months
* agecat: 24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI, intXmeducyrs: High_24 months
* agecat: 24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI, intXmeducyrs: Low_24 months
* agecat: 24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI, intXmeducyrs: Medium_24 months
* agecat: 24 months, studyid: ki1148112-LCNI-5, country: MALAWI, intXmeducyrs: High_24 months
* agecat: 24 months, studyid: ki1148112-LCNI-5, country: MALAWI, intXmeducyrs: Low_24 months
* agecat: 24 months, studyid: ki1148112-LCNI-5, country: MALAWI, intXmeducyrs: Medium_24 months
* agecat: 24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH, intXmeducyrs: High_24 months
* agecat: 24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH, intXmeducyrs: Low_24 months
* agecat: 24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH, intXmeducyrs: Medium_24 months
* agecat: 24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH, intXmeducyrs: High_24 months
* agecat: 24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH, intXmeducyrs: Low_24 months
* agecat: 24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH, intXmeducyrs: Medium_24 months
* agecat: 6 months, studyid: iLiNS_DYADM_LNS, country: MALAWI, intXmeducyrs: High_6 months
* agecat: 6 months, studyid: iLiNS_DYADM_LNS, country: MALAWI, intXmeducyrs: Low_6 months
* agecat: 6 months, studyid: iLiNS_DYADM_LNS, country: MALAWI, intXmeducyrs: Medium_6 months
* agecat: 6 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH, intXmeducyrs: High_6 months
* agecat: 6 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH, intXmeducyrs: Low_6 months
* agecat: 6 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH, intXmeducyrs: Medium_6 months
* agecat: 6 months, studyid: ki1000111-WASH-Kenya, country: KENYA, intXmeducyrs: High_6 months
* agecat: 6 months, studyid: ki1000111-WASH-Kenya, country: KENYA, intXmeducyrs: Low_6 months
* agecat: 6 months, studyid: ki1000111-WASH-Kenya, country: KENYA, intXmeducyrs: Medium_6 months
* agecat: 6 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN, intXmeducyrs: High_6 months
* agecat: 6 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN, intXmeducyrs: Low_6 months
* agecat: 6 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN, intXmeducyrs: Medium_6 months
* agecat: 6 months, studyid: ki1000304-EU, country: INDIA, intXmeducyrs: High_6 months
* agecat: 6 months, studyid: ki1000304-EU, country: INDIA, intXmeducyrs: Low_6 months
* agecat: 6 months, studyid: ki1000304-EU, country: INDIA, intXmeducyrs: Medium_6 months
* agecat: 6 months, studyid: ki1000304-VITAMIN-A, country: INDIA, intXmeducyrs: High_6 months
* agecat: 6 months, studyid: ki1000304-VITAMIN-A, country: INDIA, intXmeducyrs: Low_6 months
* agecat: 6 months, studyid: ki1000304-VITAMIN-A, country: INDIA, intXmeducyrs: Medium_6 months
* agecat: 6 months, studyid: ki1000304-Vitamin-B12, country: INDIA, intXmeducyrs: High_6 months
* agecat: 6 months, studyid: ki1000304-Vitamin-B12, country: INDIA, intXmeducyrs: Low_6 months
* agecat: 6 months, studyid: ki1000304-Vitamin-B12, country: INDIA, intXmeducyrs: Medium_6 months
* agecat: 6 months, studyid: ki1000304-ZnMort, country: INDIA, intXmeducyrs: High_6 months
* agecat: 6 months, studyid: ki1000304-ZnMort, country: INDIA, intXmeducyrs: Low_6 months
* agecat: 6 months, studyid: ki1000304-ZnMort, country: INDIA, intXmeducyrs: Medium_6 months
* agecat: 6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA, intXmeducyrs: High_6 months
* agecat: 6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA, intXmeducyrs: Low_6 months
* agecat: 6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA, intXmeducyrs: Medium_6 months
* agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA, intXmeducyrs: High_6 months
* agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA, intXmeducyrs: Low_6 months
* agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA, intXmeducyrs: Medium_6 months
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH, intXmeducyrs: High_6 months
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH, intXmeducyrs: Low_6 months
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH, intXmeducyrs: Medium_6 months
* agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF, intXmeducyrs: High_6 months
* agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF, intXmeducyrs: Low_6 months
* agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF, intXmeducyrs: Medium_6 months
* agecat: 6 months, studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO, intXmeducyrs: High_6 months
* agecat: 6 months, studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO, intXmeducyrs: Low_6 months
* agecat: 6 months, studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO, intXmeducyrs: Medium_6 months
* agecat: 6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA, intXmeducyrs: High_6 months
* agecat: 6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA, intXmeducyrs: Low_6 months
* agecat: 6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA, intXmeducyrs: Medium_6 months
* agecat: 6 months, studyid: ki1119695-PROBIT, country: BELARUS, intXmeducyrs: High_6 months
* agecat: 6 months, studyid: ki1119695-PROBIT, country: BELARUS, intXmeducyrs: Low_6 months
* agecat: 6 months, studyid: ki1119695-PROBIT, country: BELARUS, intXmeducyrs: Medium_6 months
* agecat: 6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE, intXmeducyrs: High_6 months
* agecat: 6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE, intXmeducyrs: Low_6 months
* agecat: 6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE, intXmeducyrs: Medium_6 months
* agecat: 6 months, studyid: ki1135781-COHORTS, country: GUATEMALA, intXmeducyrs: High_6 months
* agecat: 6 months, studyid: ki1135781-COHORTS, country: GUATEMALA, intXmeducyrs: Low_6 months
* agecat: 6 months, studyid: ki1135781-COHORTS, country: GUATEMALA, intXmeducyrs: Medium_6 months
* agecat: 6 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI, intXmeducyrs: High_6 months
* agecat: 6 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI, intXmeducyrs: Low_6 months
* agecat: 6 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI, intXmeducyrs: Medium_6 months
* agecat: 6 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI, intXmeducyrs: High_6 months
* agecat: 6 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI, intXmeducyrs: Low_6 months
* agecat: 6 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI, intXmeducyrs: Medium_6 months
* agecat: 6 months, studyid: ki1148112-LCNI-5, country: MALAWI, intXmeducyrs: High_6 months
* agecat: 6 months, studyid: ki1148112-LCNI-5, country: MALAWI, intXmeducyrs: Low_6 months
* agecat: 6 months, studyid: ki1148112-LCNI-5, country: MALAWI, intXmeducyrs: Medium_6 months
* agecat: 6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH, intXmeducyrs: High_6 months
* agecat: 6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH, intXmeducyrs: Low_6 months
* agecat: 6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH, intXmeducyrs: Medium_6 months
* agecat: 6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH, intXmeducyrs: High_6 months
* agecat: 6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH, intXmeducyrs: Low_6 months
* agecat: 6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH, intXmeducyrs: Medium_6 months
* agecat: Birth, studyid: iLiNS_DYADM_LNS, country: MALAWI, intXmeducyrs: High_Birth
* agecat: Birth, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN, intXmeducyrs: Low_Birth
* agecat: Birth, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN, intXmeducyrs: Medium_Birth
* agecat: Birth, studyid: ki1000304b-SAS-CompFeed, country: INDIA, intXmeducyrs: High_Birth
* agecat: Birth, studyid: ki1000304b-SAS-CompFeed, country: INDIA, intXmeducyrs: Low_Birth
* agecat: Birth, studyid: ki1000304b-SAS-CompFeed, country: INDIA, intXmeducyrs: Medium_Birth
* agecat: Birth, studyid: ki1119695-PROBIT, country: BELARUS, intXmeducyrs: High_Birth
* agecat: Birth, studyid: ki1119695-PROBIT, country: BELARUS, intXmeducyrs: Low_Birth
* agecat: Birth, studyid: ki1119695-PROBIT, country: BELARUS, intXmeducyrs: Medium_Birth
* agecat: Birth, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE, intXmeducyrs: High_Birth
* agecat: Birth, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE, intXmeducyrs: Low_Birth
* agecat: Birth, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE, intXmeducyrs: Medium_Birth
* agecat: Birth, studyid: ki1135781-COHORTS, country: GUATEMALA, intXmeducyrs: High_Birth
* agecat: Birth, studyid: ki1135781-COHORTS, country: GUATEMALA, intXmeducyrs: Low_Birth
* agecat: Birth, studyid: ki1135781-COHORTS, country: GUATEMALA, intXmeducyrs: Medium_Birth
* agecat: Birth, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI, intXmeducyrs: High_Birth
* agecat: Birth, studyid: kiGH5241-JiVitA-3, country: BANGLADESH, intXmeducyrs: High_Birth
* agecat: Birth, studyid: kiGH5241-JiVitA-3, country: BANGLADESH, intXmeducyrs: Low_Birth
* agecat: Birth, studyid: kiGH5241-JiVitA-3, country: BANGLADESH, intXmeducyrs: Medium_Birth
* agecat: Birth, studyid: kiGH5241-JiVitA-4, country: BANGLADESH, intXmeducyrs: High_Birth
* agecat: Birth, studyid: kiGH5241-JiVitA-4, country: BANGLADESH, intXmeducyrs: Low_Birth
* agecat: Birth, studyid: kiGH5241-JiVitA-4, country: BANGLADESH, intXmeducyrs: Medium_Birth

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: iLiNS_DYADM_LNS, country: MALAWI, intXmeducyrs: High_Birth
* agecat: Birth, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN, intXmeducyrs: Low_Birth
* agecat: Birth, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN, intXmeducyrs: Medium_Birth
* agecat: Birth, studyid: ki1119695-PROBIT, country: BELARUS, intXmeducyrs: High_Birth
* agecat: Birth, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI, intXmeducyrs: High_Birth
* agecat: Birth, studyid: kiGH5241-JiVitA-4, country: BANGLADESH, intXmeducyrs: Medium_Birth
* agecat: 6 months, studyid: ki1000111-WASH-Kenya, country: KENYA, intXmeducyrs: Medium_6 months
* agecat: 6 months, studyid: ki1000111-WASH-Kenya, country: KENYA, intXmeducyrs: High_6 months
* agecat: 6 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN, intXmeducyrs: High_6 months
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH, intXmeducyrs: Low_6 months
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH, intXmeducyrs: Medium_6 months
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH, intXmeducyrs: High_6 months
* agecat: 6 months, studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO, intXmeducyrs: High_6 months
* agecat: 24 months, studyid: iLiNS_DYADM_LNS, country: MALAWI, intXmeducyrs: High_24 months
* agecat: 24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH, intXmeducyrs: Medium_24 months
* agecat: 24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH, intXmeducyrs: High_24 months
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF, intXmeducyrs: Medium_24 months
* agecat: 24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE, intXmeducyrs: Low_24 months
* agecat: 24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE, intXmeducyrs: Medium_24 months

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
##   Zinc     351  51
##           stunted
## tr          0  1
##   Control   0  0
##   LNS       0  0
##   Maternal  0  0
##   Other     0  0
##   VitA      0  0
##   Zinc     72  9
##           stunted
## tr           0   1
##   Control    0   0
##   LNS        0   0
##   Maternal   0   0
##   Other      0   0
##   VitA       0   0
##   Zinc     510 295
##           stunted
## tr           0   1
##   Control    0   0
##   LNS        0   0
##   Maternal   0   0
##   Other      0   0
##   VitA       0   0
##   Zinc     105  47
##           stunted
## tr          0  1
##   Control   0  0
##   LNS       0  0
##   Maternal  0  0
##   Other     0  0
##   VitA      0  0
##   Zinc     29  9
```




# Results Detail

## Results Plots
![](/tmp/aad4c0ed-bdd7-4b06-a9fe-f86917f8bdaf/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/aad4c0ed-bdd7-4b06-a9fe-f86917f8bdaf/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/aad4c0ed-bdd7-4b06-a9fe-f86917f8bdaf/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/aad4c0ed-bdd7-4b06-a9fe-f86917f8bdaf/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                     country                        intXmeducyrs       intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------  --------------------------  -----------------------------  -----------------  -------------------  ---------------  ----------  -----------  ----------
Birth       ki1000304b-SAS-CompFeed     INDIA                          Low_Birth          Control              NA                0.2857143    0.0818271   0.4896015
Birth       ki1000304b-SAS-CompFeed     INDIA                          Low_Birth          Other                NA                0.3823529    0.2725646   0.4921413
Birth       ki1000304b-SAS-CompFeed     INDIA                          Medium_Birth       Control              NA                0.3000000    0.1647385   0.4352615
Birth       ki1000304b-SAS-CompFeed     INDIA                          Medium_Birth       Other                NA                0.1153846    0.0343246   0.1964446
Birth       ki1000304b-SAS-CompFeed     INDIA                          High_Birth         Control              NA                0.0000000    0.0000000   0.0000000
Birth       ki1000304b-SAS-CompFeed     INDIA                          High_Birth         Other                NA                0.3571429   -0.0648492   0.7791349
Birth       ki1119695-PROBIT            BELARUS                        Low_Birth          Control              NA                0.0049706   -0.0009223   0.0108636
Birth       ki1119695-PROBIT            BELARUS                        Low_Birth          Maternal             NA                0.0025464    0.0000843   0.0050084
Birth       ki1119695-PROBIT            BELARUS                        Medium_Birth       Control              NA                0.0025575    0.0011965   0.0039186
Birth       ki1119695-PROBIT            BELARUS                        Medium_Birth       Maternal             NA                0.0012678   -0.0004927   0.0030284
Birth       ki1126311-ZVITAMBO          ZIMBABWE                       Low_Birth          Control              NA                0.0987821    0.0772665   0.1202978
Birth       ki1126311-ZVITAMBO          ZIMBABWE                       Low_Birth          VitA                 NA                0.1140878    0.1006938   0.1274817
Birth       ki1126311-ZVITAMBO          ZIMBABWE                       Medium_Birth       Control              NA                0.1002387    0.0799024   0.1205749
Birth       ki1126311-ZVITAMBO          ZIMBABWE                       Medium_Birth       VitA                 NA                0.1142968    0.1020202   0.1265734
Birth       ki1126311-ZVITAMBO          ZIMBABWE                       High_Birth         Control              NA                0.1086142    0.0945068   0.1227217
Birth       ki1126311-ZVITAMBO          ZIMBABWE                       High_Birth         VitA                 NA                0.0943396    0.0866957   0.1019835
Birth       ki1135781-COHORTS           GUATEMALA                      Low_Birth          Control              NA                0.0588235    0.0234082   0.0942388
Birth       ki1135781-COHORTS           GUATEMALA                      Low_Birth          Other                NA                0.0904977    0.0526248   0.1283707
Birth       ki1135781-COHORTS           GUATEMALA                      Medium_Birth       Control              NA                0.0317460    0.0010771   0.0624150
Birth       ki1135781-COHORTS           GUATEMALA                      Medium_Birth       Other                NA                0.0340136    0.0046575   0.0633697
Birth       ki1135781-COHORTS           GUATEMALA                      High_Birth         Control              NA                0.0476190    0.0067709   0.0884672
Birth       ki1135781-COHORTS           GUATEMALA                      High_Birth         Other                NA                0.0684932    0.0103864   0.1265999
Birth       kiGH5241-JiVitA-3           BANGLADESH                     Low_Birth          Control              NA                0.3595707    0.3418608   0.3772805
Birth       kiGH5241-JiVitA-3           BANGLADESH                     Low_Birth          Maternal             NA                0.3273092    0.3102067   0.3444118
Birth       kiGH5241-JiVitA-3           BANGLADESH                     Medium_Birth       Control              NA                0.3630046    0.3440449   0.3819643
Birth       kiGH5241-JiVitA-3           BANGLADESH                     Medium_Birth       Maternal             NA                0.3247754    0.3056225   0.3439282
Birth       kiGH5241-JiVitA-3           BANGLADESH                     High_Birth         Control              NA                0.2924123    0.2723288   0.3124958
Birth       kiGH5241-JiVitA-3           BANGLADESH                     High_Birth         Maternal             NA                0.2519942    0.2326030   0.2713854
Birth       kiGH5241-JiVitA-4           BANGLADESH                     Low_Birth          Control              NA                0.2929293    0.2033709   0.3824877
Birth       kiGH5241-JiVitA-4           BANGLADESH                     Low_Birth          LNS                  NA                0.2688172    0.1739323   0.3637021
Birth       kiGH5241-JiVitA-4           BANGLADESH                     Low_Birth          Other                NA                0.3148148    0.2374952   0.3921345
Birth       kiGH5241-JiVitA-4           BANGLADESH                     High_Birth         Control              NA                0.6666667    0.0964011   1.2369323
Birth       kiGH5241-JiVitA-4           BANGLADESH                     High_Birth         LNS                  NA                0.6666667    0.0964011   1.2369323
Birth       kiGH5241-JiVitA-4           BANGLADESH                     High_Birth         Other                NA                0.5000000   -0.2407968   1.2407968
6 months    iLiNS_DYADM_LNS             MALAWI                         Low_6 months       Control              NA                0.2352941    0.1589221   0.3116661
6 months    iLiNS_DYADM_LNS             MALAWI                         Low_6 months       LNS                  NA                0.2314050    0.1561046   0.3067053
6 months    iLiNS_DYADM_LNS             MALAWI                         Medium_6 months    Control              NA                0.2867133    0.2124550   0.3609716
6 months    iLiNS_DYADM_LNS             MALAWI                         Medium_6 months    LNS                  NA                0.2380952    0.1635882   0.3126023
6 months    iLiNS_DYADM_LNS             MALAWI                         High_6 months      Control              NA                0.1460674    0.0724818   0.2196531
6 months    iLiNS_DYADM_LNS             MALAWI                         High_6 months      LNS                  NA                0.1764706    0.0951939   0.2577473
6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Low_6 months       Control              NA                0.1666667    0.0609818   0.2723515
6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Low_6 months       LNS                  NA                0.2461538    0.1411784   0.3511293
6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Low_6 months       Other                NA                0.2340426    0.1482429   0.3198422
6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Medium_6 months    Control              NA                0.2500000    0.1320535   0.3679465
6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Medium_6 months    LNS                  NA                0.1016949    0.0244052   0.1789846
6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Medium_6 months    Other                NA                0.0909091    0.0395756   0.1422426
6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     High_6 months      Control              NA                0.1311475    0.0462624   0.2160327
6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     High_6 months      LNS                  NA                0.1093750    0.0327518   0.1859982
6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     High_6 months      Other                NA                0.0762712    0.0282807   0.1242617
6 months    ki1000111-WASH-Kenya        KENYA                          Low_6 months       Control              NA                0.1000000   -0.0886531   0.2886531
6 months    ki1000111-WASH-Kenya        KENYA                          Low_6 months       LNS                  NA                0.3750000    0.0346284   0.7153716
6 months    ki1000111-WASH-Kenya        KENYA                          Low_6 months       Other                NA                0.2352941    0.0307105   0.4398778
6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Low_6 months       Control              NA                0.2857143    0.1737017   0.3977269
6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Low_6 months       Maternal             NA                0.2372881    0.1282879   0.3462884
6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Medium_6 months    Control              NA                0.1666667   -0.0080121   0.3413454
6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Medium_6 months    Maternal             NA                0.2352941    0.0307105   0.4398778
6 months    ki1000304-EU                INDIA                          Low_6 months       Control              NA                0.3538462    0.2371199   0.4705724
6 months    ki1000304-EU                INDIA                          Low_6 months       Zinc                 NA                0.4107143    0.2813278   0.5401008
6 months    ki1000304-EU                INDIA                          Medium_6 months    Control              NA                0.3684211    0.2595983   0.4772438
6 months    ki1000304-EU                INDIA                          Medium_6 months    Zinc                 NA                0.2714286    0.1668951   0.3759620
6 months    ki1000304-EU                INDIA                          High_6 months      Control              NA                0.3157895    0.1944779   0.4371010
6 months    ki1000304-EU                INDIA                          High_6 months      Zinc                 NA                0.1315789    0.0235320   0.2396259
6 months    ki1000304-VITAMIN-A         INDIA                          Low_6 months       Control              NA                0.4187192    0.3795201   0.4579183
6 months    ki1000304-VITAMIN-A         INDIA                          Low_6 months       VitA                 NA                0.4054983    0.3655921   0.4454045
6 months    ki1000304-VITAMIN-A         INDIA                          Medium_6 months    Control              NA                0.3422330    0.2963916   0.3880744
6 months    ki1000304-VITAMIN-A         INDIA                          Medium_6 months    VitA                 NA                0.3062201    0.2620072   0.3504330
6 months    ki1000304-VITAMIN-A         INDIA                          High_6 months      Control              NA                0.2263374    0.1736694   0.2790055
6 months    ki1000304-VITAMIN-A         INDIA                          High_6 months      VitA                 NA                0.1942149    0.1443219   0.2441079
6 months    ki1000304-Vitamin-B12       INDIA                          Low_6 months       Control              NA                0.5000000   -0.0005296   1.0005296
6 months    ki1000304-Vitamin-B12       INDIA                          Low_6 months       Other                NA                0.3500000    0.1364668   0.5635332
6 months    ki1000304-Vitamin-B12       INDIA                          Medium_6 months    Control              NA                0.4285714    0.0544126   0.8027303
6 months    ki1000304-Vitamin-B12       INDIA                          Medium_6 months    Other                NA                0.2222222    0.0262034   0.4182410
6 months    ki1000304-Vitamin-B12       INDIA                          High_6 months      Control              NA                0.1666667   -0.1363038   0.4696372
6 months    ki1000304-Vitamin-B12       INDIA                          High_6 months      Other                NA                0.2307692    0.0662287   0.3953097
6 months    ki1000304-ZnMort            INDIA                          Low_6 months       Control              NA                0.4375000    0.2640653   0.6109347
6 months    ki1000304-ZnMort            INDIA                          Low_6 months       Zinc                 NA                0.3750000    0.1795612   0.5704388
6 months    ki1000304-ZnMort            INDIA                          Medium_6 months    Control              NA                0.2800000    0.1021331   0.4578669
6 months    ki1000304-ZnMort            INDIA                          Medium_6 months    Zinc                 NA                0.4347826    0.2300440   0.6395212
6 months    ki1000304-ZnMort            INDIA                          High_6 months      Control              NA                0.3448276    0.1696858   0.5199694
6 months    ki1000304-ZnMort            INDIA                          High_6 months      Zinc                 NA                0.1666667   -0.0468113   0.3801447
6 months    ki1000304b-SAS-CompFeed     INDIA                          Low_6 months       Control              NA                0.3382353    0.3042214   0.3722492
6 months    ki1000304b-SAS-CompFeed     INDIA                          Low_6 months       Other                NA                0.3984962    0.3479011   0.4490914
6 months    ki1000304b-SAS-CompFeed     INDIA                          Medium_6 months    Control              NA                0.2903226    0.1790518   0.4015934
6 months    ki1000304b-SAS-CompFeed     INDIA                          Medium_6 months    Other                NA                0.2719298    0.1795400   0.3643196
6 months    ki1000304b-SAS-CompFeed     INDIA                          High_6 months      Control              NA                0.1363636    0.0611450   0.2115823
6 months    ki1000304b-SAS-CompFeed     INDIA                          High_6 months      Other                NA                0.0933333    0.0240866   0.1625801
6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Low_6 months       Control              NA                0.5135135    0.3994335   0.6275935
6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Low_6 months       Other                NA                0.4047619    0.3382576   0.4712662
6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Medium_6 months    Control              NA                0.7000000    0.4121616   0.9878384
6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Medium_6 months    Other                NA                0.3571429    0.1772813   0.5370044
6 months    ki1000304b-SAS-FoodSuppl    INDIA                          High_6 months      Control              NA                0.3333333   -0.0497102   0.7163769
6 months    ki1000304b-SAS-FoodSuppl    INDIA                          High_6 months      Other                NA                0.3333333    0.1527649   0.5139018
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Low_6 months       Control              NA                0.2307692   -0.0001311   0.4616696
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Low_6 months       Other                NA                0.1000000   -0.0325517   0.2325517
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Low_6 months       Zinc                 NA                0.0689655   -0.0240122   0.1619432
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Medium_6 months    Control              NA                0.1054313    0.0713947   0.1394680
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Medium_6 months    Other                NA                0.1237113    0.0858663   0.1615564
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Medium_6 months    Zinc                 NA                0.1085526    0.0838158   0.1332894
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   High_6 months      Control              NA                0.1111111    0.0491325   0.1730898
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   High_6 months      Other                NA                0.0630631    0.0177901   0.1083360
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   High_6 months      Zinc                 NA                0.1152074    0.0726781   0.1577367
6 months    ki1112895-Guatemala BSC     GUATEMALA                      Low_6 months       Control              NA                0.4482759    0.2655745   0.6309772
6 months    ki1112895-Guatemala BSC     GUATEMALA                      Low_6 months       Other                NA                0.3600000    0.1700767   0.5499233
6 months    ki1112895-Guatemala BSC     GUATEMALA                      Medium_6 months    Control              NA                0.3235294    0.1650928   0.4819660
6 months    ki1112895-Guatemala BSC     GUATEMALA                      Medium_6 months    Other                NA                0.2424242    0.0951056   0.3897429
6 months    ki1112895-Guatemala BSC     GUATEMALA                      High_6 months      Control              NA                0.2500000    0.1150670   0.3849330
6 months    ki1112895-Guatemala BSC     GUATEMALA                      High_6 months      Other                NA                0.2745098    0.1513534   0.3976663
6 months    ki1119695-PROBIT            BELARUS                        Low_6 months       Control              NA                0.1030405    0.0713860   0.1346951
6 months    ki1119695-PROBIT            BELARUS                        Low_6 months       Maternal             NA                0.0732835    0.0553468   0.0912202
6 months    ki1119695-PROBIT            BELARUS                        Medium_6 months    Control              NA                0.0582873    0.0374635   0.0791111
6 months    ki1119695-PROBIT            BELARUS                        Medium_6 months    Maternal             NA                0.0485855    0.0329623   0.0642087
6 months    ki1119695-PROBIT            BELARUS                        High_6 months      Control              NA                0.0542705    0.0283596   0.0801813
6 months    ki1119695-PROBIT            BELARUS                        High_6 months      Maternal             NA                0.0332075    0.0182129   0.0482022
6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Low_6 months       Control              NA                0.1887255    0.1507458   0.2267052
6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Low_6 months       VitA                 NA                0.1852771    0.1633700   0.2071842
6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Medium_6 months    Control              NA                0.1700820    0.1367396   0.2034243
6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Medium_6 months    VitA                 NA                0.1935924    0.1733684   0.2138163
6 months    ki1126311-ZVITAMBO          ZIMBABWE                       High_6 months      Control              NA                0.1501472    0.1282119   0.1720825
6 months    ki1126311-ZVITAMBO          ZIMBABWE                       High_6 months      VitA                 NA                0.1477631    0.1354161   0.1601100
6 months    ki1135781-COHORTS           GUATEMALA                      Low_6 months       Control              NA                0.4845361    0.4141302   0.5549420
6 months    ki1135781-COHORTS           GUATEMALA                      Low_6 months       Other                NA                0.4232365    0.3607869   0.4856861
6 months    ki1135781-COHORTS           GUATEMALA                      Medium_6 months    Control              NA                0.4852941    0.4011615   0.5694268
6 months    ki1135781-COHORTS           GUATEMALA                      Medium_6 months    Other                NA                0.3005780    0.2321432   0.3690129
6 months    ki1135781-COHORTS           GUATEMALA                      High_6 months      Control              NA                0.4017094    0.3126287   0.4907901
6 months    ki1135781-COHORTS           GUATEMALA                      High_6 months      Other                NA                0.3548387    0.2354073   0.4742701
6 months    ki1148112-iLiNS-DOSE        MALAWI                         Low_6 months       Control              NA                0.3800000    0.2847856   0.4752144
6 months    ki1148112-iLiNS-DOSE        MALAWI                         Low_6 months       LNS                  NA                0.3373984    0.2955835   0.3792132
6 months    ki1148112-iLiNS-DOSE        MALAWI                         Medium_6 months    Control              NA                0.3595506    0.2597667   0.4593344
6 months    ki1148112-iLiNS-DOSE        MALAWI                         Medium_6 months    LNS                  NA                0.2815126    0.2410748   0.3219504
6 months    ki1148112-iLiNS-DOSE        MALAWI                         High_6 months      Control              NA                0.2649573    0.1849359   0.3449786
6 months    ki1148112-iLiNS-DOSE        MALAWI                         High_6 months      LNS                  NA                0.2787162    0.2425729   0.3148595
6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Low_6 months       Control              NA                0.2352941    0.1589762   0.3116120
6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Low_6 months       Maternal             NA                0.2500000    0.1955932   0.3044068
6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Medium_6 months    Control              NA                0.2867133    0.2125001   0.3609265
6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Medium_6 months    Maternal             NA                0.2265625    0.1752197   0.2779053
6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         High_6 months      Control              NA                0.1460674    0.0725557   0.2195791
6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         High_6 months      Maternal             NA                0.1797753    0.1232576   0.2362930
6 months    ki1148112-LCNI-5            MALAWI                         Low_6 months       Control              NA                0.4461538    0.3250768   0.5672309
6 months    ki1148112-LCNI-5            MALAWI                         Low_6 months       LNS                  NA                0.4214286    0.3394768   0.5033803
6 months    ki1148112-LCNI-5            MALAWI                         Low_6 months       Other                NA                0.4285714    0.2987100   0.5584329
6 months    ki1148112-LCNI-5            MALAWI                         Medium_6 months    Control              NA                0.3114754    0.1950329   0.4279179
6 months    ki1148112-LCNI-5            MALAWI                         Medium_6 months    LNS                  NA                0.3387097    0.2552448   0.4221745
6 months    ki1148112-LCNI-5            MALAWI                         Medium_6 months    Other                NA                0.4492754    0.3316763   0.5668744
6 months    ki1148112-LCNI-5            MALAWI                         High_6 months      Control              NA                0.2567568    0.1570583   0.3564552
6 months    ki1148112-LCNI-5            MALAWI                         High_6 months      LNS                  NA                0.3103448    0.2349169   0.3857728
6 months    ki1148112-LCNI-5            MALAWI                         High_6 months      Other                NA                0.3417722    0.2370060   0.4465383
6 months    kiGH5241-JiVitA-3           BANGLADESH                     Low_6 months       Control              NA                0.3014074    0.2816005   0.3212144
6 months    kiGH5241-JiVitA-3           BANGLADESH                     Low_6 months       Maternal             NA                0.2793296    0.2582114   0.3004478
6 months    kiGH5241-JiVitA-3           BANGLADESH                     Medium_6 months    Control              NA                0.2876579    0.2658001   0.3095157
6 months    kiGH5241-JiVitA-3           BANGLADESH                     Medium_6 months    Maternal             NA                0.2652370    0.2466283   0.2838457
6 months    kiGH5241-JiVitA-3           BANGLADESH                     High_6 months      Control              NA                0.2039717    0.1867381   0.2212054
6 months    kiGH5241-JiVitA-3           BANGLADESH                     High_6 months      Maternal             NA                0.1814606    0.1652764   0.1976448
6 months    kiGH5241-JiVitA-4           BANGLADESH                     Low_6 months       Control              NA                0.2590361    0.2184687   0.2996036
6 months    kiGH5241-JiVitA-4           BANGLADESH                     Low_6 months       LNS                  NA                0.2343096    0.1892204   0.2793989
6 months    kiGH5241-JiVitA-4           BANGLADESH                     Low_6 months       Other                NA                0.2636986    0.2274531   0.2999442
6 months    kiGH5241-JiVitA-4           BANGLADESH                     Medium_6 months    Control              NA                0.3225806    0.0785221   0.5666392
6 months    kiGH5241-JiVitA-4           BANGLADESH                     Medium_6 months    LNS                  NA                0.1463415    0.0054586   0.2872243
6 months    kiGH5241-JiVitA-4           BANGLADESH                     Medium_6 months    Other                NA                0.3103448    0.1635151   0.4571746
6 months    kiGH5241-JiVitA-4           BANGLADESH                     High_6 months      Control              NA                0.3055556    0.0806357   0.5304754
6 months    kiGH5241-JiVitA-4           BANGLADESH                     High_6 months      LNS                  NA                0.3939394    0.1610924   0.6267864
6 months    kiGH5241-JiVitA-4           BANGLADESH                     High_6 months      Other                NA                0.4354839    0.2645836   0.6063841
24 months   iLiNS_DYADM_LNS             MALAWI                         Low_24 months      Control              NA                0.4000000   -0.0444781   0.8444781
24 months   iLiNS_DYADM_LNS             MALAWI                         Low_24 months      LNS                  NA                0.3000000    0.0060054   0.5939946
24 months   iLiNS_DYADM_LNS             MALAWI                         Medium_24 months   Control              NA                0.6666667    0.1095124   1.2238210
24 months   iLiNS_DYADM_LNS             MALAWI                         Medium_24 months   LNS                  NA                0.4444444    0.1053711   0.7835178
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Low_24 months      Control              NA                0.5294118    0.4105897   0.6482338
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Low_24 months      LNS                  NA                0.4939759    0.3862467   0.6017051
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Low_24 months      Other                NA                0.5120482    0.4358887   0.5882077
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Medium_24 months   Control              NA                0.4680851    0.3670909   0.5690794
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Medium_24 months   LNS                  NA                0.4385965    0.3473965   0.5297965
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Medium_24 months   Other                NA                0.4384236    0.3700828   0.5067645
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     High_24 months     Control              NA                0.3211009    0.2333540   0.4088478
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     High_24 months     LNS                  NA                0.2272727    0.1488734   0.3056720
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     High_24 months     Other                NA                0.3250000    0.2656788   0.3843212
24 months   ki1000111-WASH-Kenya        KENYA                          Low_24 months      Control              NA                0.4075000    0.3593268   0.4556732
24 months   ki1000111-WASH-Kenya        KENYA                          Low_24 months      LNS                  NA                0.3309859    0.2762350   0.3857368
24 months   ki1000111-WASH-Kenya        KENYA                          Low_24 months      Other                NA                0.3740458    0.3325985   0.4154931
24 months   ki1000111-WASH-Kenya        KENYA                          Medium_24 months   Control              NA                0.1954023    0.1364278   0.2543768
24 months   ki1000111-WASH-Kenya        KENYA                          Medium_24 months   LNS                  NA                0.2952381    0.2079013   0.3825749
24 months   ki1000111-WASH-Kenya        KENYA                          Medium_24 months   Other                NA                0.2876712    0.2276575   0.3476850
24 months   ki1000111-WASH-Kenya        KENYA                          High_24 months     Control              NA                0.1912568    0.1342236   0.2482901
24 months   ki1000111-WASH-Kenya        KENYA                          High_24 months     LNS                  NA                0.1891892    0.1162626   0.2621158
24 months   ki1000111-WASH-Kenya        KENYA                          High_24 months     Other                NA                0.2337165    0.1823288   0.2851041
24 months   ki1000304-EU                INDIA                          Low_24 months      Control              NA                0.7380952    0.6043639   0.8718265
24 months   ki1000304-EU                INDIA                          Low_24 months      Zinc                 NA                0.6304348    0.4901481   0.7707215
24 months   ki1000304-EU                INDIA                          Medium_24 months   Control              NA                0.6545455    0.5282485   0.7808424
24 months   ki1000304-EU                INDIA                          Medium_24 months   Zinc                 NA                0.5434783    0.3988172   0.6881393
24 months   ki1000304-EU                INDIA                          High_24 months     Control              NA                0.4285714    0.2437754   0.6133674
24 months   ki1000304-EU                INDIA                          High_24 months     Zinc                 NA                0.5000000    0.3305625   0.6694375
24 months   ki1000304-Vitamin-B12       INDIA                          Low_24 months      Control              NA                0.3888889    0.1616047   0.6161730
24 months   ki1000304-Vitamin-B12       INDIA                          Low_24 months      Other                NA                0.6756757    0.5234491   0.8279023
24 months   ki1000304-Vitamin-B12       INDIA                          Medium_24 months   Control              NA                0.5555556    0.2267819   0.8843292
24 months   ki1000304-Vitamin-B12       INDIA                          Medium_24 months   Other                NA                0.5161290    0.3379696   0.6942885
24 months   ki1000304-Vitamin-B12       INDIA                          High_24 months     Control              NA                0.1818182   -0.0492525   0.4128889
24 months   ki1000304-Vitamin-B12       INDIA                          High_24 months     Other                NA                0.1538462    0.0132482   0.2944441
24 months   ki1000304-ZnMort            INDIA                          Low_24 months      Control              NA                0.7857143    0.6323031   0.9391254
24 months   ki1000304-ZnMort            INDIA                          Low_24 months      Zinc                 NA                0.7692308    0.6057609   0.9327006
24 months   ki1000304-ZnMort            INDIA                          Medium_24 months   Control              NA                0.6250000    0.4556266   0.7943734
24 months   ki1000304-ZnMort            INDIA                          Medium_24 months   Zinc                 NA                0.5500000    0.3298406   0.7701594
24 months   ki1000304-ZnMort            INDIA                          High_24 months     Control              NA                0.4000000    0.1483537   0.6516463
24 months   ki1000304-ZnMort            INDIA                          High_24 months     Zinc                 NA                0.2105263    0.0244566   0.3965961
24 months   ki1119695-PROBIT            BELARUS                        Low_24 months      Control              NA                0.1681416    0.0098600   0.3264232
24 months   ki1119695-PROBIT            BELARUS                        Low_24 months      Maternal             NA                0.1302083    0.0837103   0.1767064
24 months   ki1119695-PROBIT            BELARUS                        Medium_24 months   Control              NA                0.1237113    0.0583232   0.1890995
24 months   ki1119695-PROBIT            BELARUS                        Medium_24 months   Maternal             NA                0.1105769   -0.0107147   0.2318685
24 months   ki1119695-PROBIT            BELARUS                        High_24 months     Control              NA                0.0597015   -0.0467617   0.1661647
24 months   ki1119695-PROBIT            BELARUS                        High_24 months     Maternal             NA                0.0746269   -0.1002182   0.2494719
24 months   ki1126311-ZVITAMBO          ZIMBABWE                       High_24 months     Control              NA                0.3750000    0.0308110   0.7191890
24 months   ki1126311-ZVITAMBO          ZIMBABWE                       High_24 months     VitA                 NA                0.7500000    0.4986399   1.0013601
24 months   ki1135781-COHORTS           GUATEMALA                      Low_24 months      Control              NA                0.8493151    0.7669861   0.9316440
24 months   ki1135781-COHORTS           GUATEMALA                      Low_24 months      Other                NA                0.7108434    0.6129938   0.8086930
24 months   ki1135781-COHORTS           GUATEMALA                      Medium_24 months   Control              NA                0.8000000    0.6937705   0.9062295
24 months   ki1135781-COHORTS           GUATEMALA                      Medium_24 months   Other                NA                0.8125000    0.7015421   0.9234579
24 months   ki1135781-COHORTS           GUATEMALA                      High_24 months     Control              NA                0.7027027    0.5543164   0.8510891
24 months   ki1135781-COHORTS           GUATEMALA                      High_24 months     Other                NA                0.7666667    0.6141755   0.9191578
24 months   ki1148112-iLiNS-DOSE        MALAWI                         Low_24 months      Control              NA                0.5121951    0.3588825   0.6655077
24 months   ki1148112-iLiNS-DOSE        MALAWI                         Low_24 months      LNS                  NA                0.5436893    0.4755338   0.6118449
24 months   ki1148112-iLiNS-DOSE        MALAWI                         Medium_24 months   Control              NA                0.5588235    0.3915627   0.7260843
24 months   ki1148112-iLiNS-DOSE        MALAWI                         Medium_24 months   LNS                  NA                0.5482234    0.4785771   0.6178696
24 months   ki1148112-iLiNS-DOSE        MALAWI                         High_24 months     Control              NA                0.4705882    0.3333649   0.6078115
24 months   ki1148112-iLiNS-DOSE        MALAWI                         High_24 months     LNS                  NA                0.4333333    0.3705326   0.4961341
24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Low_24 months      Control              NA                0.4000000   -0.0390574   0.8390574
24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Low_24 months      Maternal             NA                0.4444444    0.2097316   0.6791573
24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Medium_24 months   Control              NA                0.6666667    0.1206789   1.2126544
24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Medium_24 months   Maternal             NA                0.4736842    0.2438892   0.7034792
24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         High_24 months     Control              NA                0.7500000    0.3146316   1.1853684
24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         High_24 months     Maternal             NA                0.1875000   -0.0087179   0.3837179
24 months   ki1148112-LCNI-5            MALAWI                         Low_24 months      Control              NA                0.5365854    0.3833388   0.6898319
24 months   ki1148112-LCNI-5            MALAWI                         Low_24 months      LNS                  NA                0.3968254    0.2755342   0.5181166
24 months   ki1148112-LCNI-5            MALAWI                         Low_24 months      Other                NA                0.3181818    0.1227753   0.5135883
24 months   ki1148112-LCNI-5            MALAWI                         Medium_24 months   Control              NA                0.2500000    0.1079434   0.3920566
24 months   ki1148112-LCNI-5            MALAWI                         Medium_24 months   LNS                  NA                0.4583333    0.3167708   0.5998958
24 months   ki1148112-LCNI-5            MALAWI                         Medium_24 months   Other                NA                0.4545455    0.2839282   0.6251627
24 months   ki1148112-LCNI-5            MALAWI                         High_24 months     Control              NA                0.2812500    0.1249037   0.4375963
24 months   ki1148112-LCNI-5            MALAWI                         High_24 months     LNS                  NA                0.3283582    0.2155001   0.4412163
24 months   ki1148112-LCNI-5            MALAWI                         High_24 months     Other                NA                0.2564103    0.1188701   0.3939504
24 months   kiGH5241-JiVitA-3           BANGLADESH                     Low_24 months      Control              NA                0.4761905    0.1787786   0.7736024
24 months   kiGH5241-JiVitA-3           BANGLADESH                     Low_24 months      Maternal             NA                0.7894737    0.6098235   0.9691238
24 months   kiGH5241-JiVitA-3           BANGLADESH                     Medium_24 months   Control              NA                0.4545455    0.0669172   0.8421737
24 months   kiGH5241-JiVitA-3           BANGLADESH                     Medium_24 months   Maternal             NA                0.7142857    0.4959837   0.9325878
24 months   kiGH5241-JiVitA-3           BANGLADESH                     High_24 months     Control              NA                0.4871795    0.2744790   0.6998800
24 months   kiGH5241-JiVitA-3           BANGLADESH                     High_24 months     Maternal             NA                0.3500000    0.1723604   0.5276396
24 months   kiGH5241-JiVitA-4           BANGLADESH                     Low_24 months      Control              NA                0.4713656    0.3765120   0.5662192
24 months   kiGH5241-JiVitA-4           BANGLADESH                     Low_24 months      LNS                  NA                0.4507042    0.3446477   0.5567607
24 months   kiGH5241-JiVitA-4           BANGLADESH                     Low_24 months      Other                NA                0.3837535    0.3095308   0.4579762
24 months   kiGH5241-JiVitA-4           BANGLADESH                     Medium_24 months   Control              NA                0.7142857    0.2868007   1.1417708
24 months   kiGH5241-JiVitA-4           BANGLADESH                     Medium_24 months   LNS                  NA                0.1818182   -0.1043428   0.4679792
24 months   kiGH5241-JiVitA-4           BANGLADESH                     Medium_24 months   Other                NA                0.4545455    0.0439991   0.8650918
24 months   kiGH5241-JiVitA-4           BANGLADESH                     High_24 months     Control              NA                0.0000000    0.0000000   0.0000000
24 months   kiGH5241-JiVitA-4           BANGLADESH                     High_24 months     LNS                  NA                1.0000000    1.0000000   1.0000000
24 months   kiGH5241-JiVitA-4           BANGLADESH                     High_24 months     Other                NA                0.5000000    0.1278549   0.8721451


### Parameter: E(Y)


agecat      studyid                     country                        intXmeducyrs       intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------  --------------------------  -----------------------------  -----------------  -------------------  ---------------  ----------  -----------  ----------
Birth       ki1000304b-SAS-CompFeed     INDIA                          Low_Birth          NA                   NA                0.3387097    0.2284723   0.4489471
Birth       ki1000304b-SAS-CompFeed     INDIA                          Medium_Birth       NA                   NA                0.2142857    0.1015692   0.3270023
Birth       ki1000304b-SAS-CompFeed     INDIA                          High_Birth         NA                   NA                0.1923077   -0.0807571   0.4653725
Birth       ki1119695-PROBIT            BELARUS                        Low_Birth          NA                   NA                0.0036276    0.0006387   0.0066164
Birth       ki1119695-PROBIT            BELARUS                        Medium_Birth       NA                   NA                0.0019479    0.0008541   0.0030416
Birth       ki1126311-ZVITAMBO          ZIMBABWE                       Low_Birth          NA                   NA                0.1101928    0.0988022   0.1215835
Birth       ki1126311-ZVITAMBO          ZIMBABWE                       Medium_Birth       NA                   NA                0.1108511    0.1003262   0.1213761
Birth       ki1126311-ZVITAMBO          ZIMBABWE                       High_Birth         NA                   NA                0.0979030    0.0911710   0.1046351
Birth       ki1135781-COHORTS           GUATEMALA                      Low_Birth          NA                   NA                0.0767263    0.0503112   0.1031415
Birth       ki1135781-COHORTS           GUATEMALA                      Medium_Birth       NA                   NA                0.0329670    0.0117481   0.0541860
Birth       ki1135781-COHORTS           GUATEMALA                      High_Birth         NA                   NA                0.0561798    0.0222566   0.0901029
Birth       kiGH5241-JiVitA-3           BANGLADESH                     Low_Birth          NA                   NA                0.3432949    0.3309274   0.3556624
Birth       kiGH5241-JiVitA-3           BANGLADESH                     Medium_Birth       NA                   NA                0.3435973    0.3300319   0.3571627
Birth       kiGH5241-JiVitA-3           BANGLADESH                     High_Birth         NA                   NA                0.2723343    0.2582411   0.2864275
Birth       kiGH5241-JiVitA-4           BANGLADESH                     Low_Birth          NA                   NA                0.2966102    0.2465266   0.3466938
Birth       kiGH5241-JiVitA-4           BANGLADESH                     High_Birth         NA                   NA                0.6250000    0.2663633   0.9836367
6 months    iLiNS_DYADM_LNS             MALAWI                         Low_6 months       NA                   NA                0.2333333    0.1797116   0.2869551
6 months    iLiNS_DYADM_LNS             MALAWI                         Medium_6 months    NA                   NA                0.2639405    0.2111701   0.3167109
6 months    iLiNS_DYADM_LNS             MALAWI                         High_6 months      NA                   NA                0.1609195    0.1061636   0.2156755
6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Low_6 months       NA                   NA                0.2222222    0.1654500   0.2789945
6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Medium_6 months    NA                   NA                0.1293103    0.0860400   0.1725807
6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     High_6 months      NA                   NA                0.0987654    0.0611763   0.1363545
6 months    ki1000111-WASH-Kenya        KENYA                          Low_6 months       NA                   NA                0.2285714    0.0874258   0.3697171
6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Low_6 months       NA                   NA                0.2622951    0.1839175   0.3406727
6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Medium_6 months    NA                   NA                0.2000000    0.0655476   0.3344524
6 months    ki1000304-EU                INDIA                          Low_6 months       NA                   NA                0.3801653    0.2933129   0.4670177
6 months    ki1000304-EU                INDIA                          Medium_6 months    NA                   NA                0.3219178    0.2458716   0.3979641
6 months    ki1000304-EU                INDIA                          High_6 months      NA                   NA                0.2421053    0.1555107   0.3286998
6 months    ki1000304-VITAMIN-A         INDIA                          Low_6 months       NA                   NA                0.4122586    0.3842912   0.4402260
6 months    ki1000304-VITAMIN-A         INDIA                          Medium_6 months    NA                   NA                0.3240964    0.2922361   0.3559567
6 months    ki1000304-VITAMIN-A         INDIA                          High_6 months      NA                   NA                0.2103093    0.1740029   0.2466157
6 months    ki1000304-Vitamin-B12       INDIA                          Low_6 months       NA                   NA                0.3750000    0.1771483   0.5728517
6 months    ki1000304-Vitamin-B12       INDIA                          Medium_6 months    NA                   NA                0.2800000    0.1003663   0.4596337
6 months    ki1000304-Vitamin-B12       INDIA                          High_6 months      NA                   NA                0.2187500    0.0732254   0.3642746
6 months    ki1000304-ZnMort            INDIA                          Low_6 months       NA                   NA                0.4107143    0.2806974   0.5407311
6 months    ki1000304-ZnMort            INDIA                          Medium_6 months    NA                   NA                0.3541667    0.2174368   0.4908965
6 months    ki1000304-ZnMort            INDIA                          High_6 months      NA                   NA                0.2926829    0.1516814   0.4336845
6 months    ki1000304b-SAS-CompFeed     INDIA                          Low_6 months       NA                   NA                0.3680297    0.3276351   0.4084244
6 months    ki1000304b-SAS-CompFeed     INDIA                          Medium_6 months    NA                   NA                0.2801932    0.2085923   0.3517941
6 months    ki1000304b-SAS-CompFeed     INDIA                          High_6 months      NA                   NA                0.1134752    0.0611515   0.1657989
6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Low_6 months       NA                   NA                0.4330986    0.3753685   0.4908287
6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Medium_6 months    NA                   NA                0.4473684    0.2871554   0.6075814
6 months    ki1000304b-SAS-FoodSuppl    INDIA                          High_6 months      NA                   NA                0.3333333    0.1700030   0.4966637
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Low_6 months       NA                   NA                0.1129032    0.0334847   0.1923218
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Medium_6 months    NA                   NA                0.1113861    0.0936668   0.1291055
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   High_6 months      NA                   NA                0.1007026    0.0721257   0.1292795
6 months    ki1112895-Guatemala BSC     GUATEMALA                      Low_6 months       NA                   NA                0.4074074    0.2751248   0.5396900
6 months    ki1112895-Guatemala BSC     GUATEMALA                      Medium_6 months    NA                   NA                0.2835821    0.1748397   0.3923244
6 months    ki1112895-Guatemala BSC     GUATEMALA                      High_6 months      NA                   NA                0.2637363    0.1726971   0.3547755
6 months    ki1119695-PROBIT            BELARUS                        Low_6 months       NA                   NA                0.0868894    0.0682505   0.1055282
6 months    ki1119695-PROBIT            BELARUS                        Medium_6 months    NA                   NA                0.0536962    0.0399371   0.0674553
6 months    ki1119695-PROBIT            BELARUS                        High_6 months      NA                   NA                0.0428746    0.0275549   0.0581944
6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Low_6 months       NA                   NA                0.1861472    0.1671701   0.2051242
6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Medium_6 months    NA                   NA                0.1877238    0.1704098   0.2050378
6 months    ki1126311-ZVITAMBO          ZIMBABWE                       High_6 months      NA                   NA                0.1483425    0.1375827   0.1591022
6 months    ki1135781-COHORTS           GUATEMALA                      Low_6 months       NA                   NA                0.4505747    0.4037645   0.4973850
6 months    ki1135781-COHORTS           GUATEMALA                      Medium_6 months    NA                   NA                0.3818770    0.3276180   0.4361360
6 months    ki1135781-COHORTS           GUATEMALA                      High_6 months      NA                   NA                0.3854749    0.3139749   0.4569748
6 months    ki1148112-iLiNS-DOSE        MALAWI                         Low_6 months       NA                   NA                0.3445946    0.3062801   0.3829091
6 months    ki1148112-iLiNS-DOSE        MALAWI                         Medium_6 months    NA                   NA                0.2938053    0.2562129   0.3313978
6 months    ki1148112-iLiNS-DOSE        MALAWI                         High_6 months      NA                   NA                0.2764457    0.2435020   0.3093894
6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Low_6 months       NA                   NA                0.2451791    0.2008634   0.2894947
6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Medium_6 months    NA                   NA                0.2481203    0.2056865   0.2905541
6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         High_6 months      NA                   NA                0.1685393    0.1235532   0.2135255
6 months    ki1148112-LCNI-5            MALAWI                         Low_6 months       NA                   NA                0.4291188    0.3689567   0.4892809
6 months    ki1148112-LCNI-5            MALAWI                         Medium_6 months    NA                   NA                0.3622047    0.3029797   0.4214298
6 months    ki1148112-LCNI-5            MALAWI                         High_6 months      NA                   NA                0.3053691    0.2529899   0.3577484
6 months    kiGH5241-JiVitA-3           BANGLADESH                     Low_6 months       NA                   NA                0.2901152    0.2755977   0.3046327
6 months    kiGH5241-JiVitA-3           BANGLADESH                     Medium_6 months    NA                   NA                0.2762642    0.2619419   0.2905865
6 months    kiGH5241-JiVitA-3           BANGLADESH                     High_6 months      NA                   NA                0.1928069    0.1809197   0.2046940
6 months    kiGH5241-JiVitA-4           BANGLADESH                     Low_6 months       NA                   NA                0.2548596    0.2313914   0.2783278
6 months    kiGH5241-JiVitA-4           BANGLADESH                     Medium_6 months    NA                   NA                0.2615385    0.1614691   0.3616078
6 months    kiGH5241-JiVitA-4           BANGLADESH                     High_6 months      NA                   NA                0.3893130    0.2714132   0.5072128
24 months   iLiNS_DYADM_LNS             MALAWI                         Low_24 months      NA                   NA                0.3333333    0.0864011   0.5802656
24 months   iLiNS_DYADM_LNS             MALAWI                         Medium_24 months   NA                   NA                0.5000000    0.2045243   0.7954757
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Low_24 months      NA                   NA                0.5110410    0.4559262   0.5661559
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Medium_24 months   NA                   NA                0.4452555    0.3971486   0.4933624
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     High_24 months     NA                   NA                0.3006536    0.2586589   0.3426483
24 months   ki1000111-WASH-Kenya        KENYA                          Low_24 months      NA                   NA                0.3750000    0.3476882   0.4023118
24 months   ki1000111-WASH-Kenya        KENYA                          Medium_24 months   NA                   NA                0.2570281    0.2186091   0.2954471
24 months   ki1000111-WASH-Kenya        KENYA                          High_24 months     NA                   NA                0.2108108    0.1768459   0.2447757
24 months   ki1000304-EU                INDIA                          Low_24 months      NA                   NA                0.6818182    0.5839457   0.7796906
24 months   ki1000304-EU                INDIA                          Medium_24 months   NA                   NA                0.6039604    0.5081039   0.6998169
24 months   ki1000304-EU                INDIA                          High_24 months     NA                   NA                0.4677419    0.3425295   0.5929544
24 months   ki1000304-Vitamin-B12       INDIA                          Low_24 months      NA                   NA                0.5818182    0.4502571   0.7133793
24 months   ki1000304-Vitamin-B12       INDIA                          Medium_24 months   NA                   NA                0.5250000    0.3682736   0.6817264
24 months   ki1000304-Vitamin-B12       INDIA                          High_24 months     NA                   NA                0.1621622    0.0417552   0.2825691
24 months   ki1000304-ZnMort            INDIA                          Low_24 months      NA                   NA                0.7777778    0.6658516   0.8897040
24 months   ki1000304-ZnMort            INDIA                          Medium_24 months   NA                   NA                0.5961538    0.4614903   0.7308174
24 months   ki1000304-ZnMort            INDIA                          High_24 months     NA                   NA                0.2941176    0.1386579   0.4495773
24 months   ki1119695-PROBIT            BELARUS                        Low_24 months      NA                   NA                0.1442623    0.0755784   0.2129462
24 months   ki1119695-PROBIT            BELARUS                        Medium_24 months   NA                   NA                0.1169154    0.0464848   0.1873460
24 months   ki1119695-PROBIT            BELARUS                        High_24 months     NA                   NA                0.0671642   -0.0340253   0.1683537
24 months   ki1126311-ZVITAMBO          ZIMBABWE                       High_24 months     NA                   NA                0.6000000    0.3797191   0.8202809
24 months   ki1135781-COHORTS           GUATEMALA                      Low_24 months      NA                   NA                0.7756410    0.7099684   0.8413136
24 months   ki1135781-COHORTS           GUATEMALA                      Medium_24 months   NA                   NA                0.8058252    0.7290600   0.8825905
24 months   ki1135781-COHORTS           GUATEMALA                      High_24 months     NA                   NA                0.7313433    0.6244044   0.8382822
24 months   ki1148112-iLiNS-DOSE        MALAWI                         Low_24 months      NA                   NA                0.5384615    0.4761653   0.6007578
24 months   ki1148112-iLiNS-DOSE        MALAWI                         Medium_24 months   NA                   NA                0.5497835    0.4854865   0.6140806
24 months   ki1148112-iLiNS-DOSE        MALAWI                         High_24 months     NA                   NA                0.4398625    0.3827338   0.4969913
24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Low_24 months      NA                   NA                0.4347826    0.2276347   0.6419305
24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Medium_24 months   NA                   NA                0.5000000    0.2861504   0.7138496
24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         High_24 months     NA                   NA                0.3000000    0.0939461   0.5060539
24 months   ki1148112-LCNI-5            MALAWI                         Low_24 months      NA                   NA                0.4285714    0.3418182   0.5153247
24 months   ki1148112-LCNI-5            MALAWI                         Medium_24 months   NA                   NA                0.3931624    0.3042748   0.4820500
24 months   ki1148112-LCNI-5            MALAWI                         High_24 months     NA                   NA                0.2971014    0.2205794   0.3736235
24 months   kiGH5241-JiVitA-3           BANGLADESH                     Low_24 months      NA                   NA                0.6250000    0.4340468   0.8159532
24 months   kiGH5241-JiVitA-3           BANGLADESH                     Medium_24 months   NA                   NA                0.6410256    0.4431739   0.8388774
24 months   kiGH5241-JiVitA-3           BANGLADESH                     High_24 months     NA                   NA                0.4177215    0.2788894   0.5565536
24 months   kiGH5241-JiVitA-4           BANGLADESH                     Low_24 months      NA                   NA                0.4265997    0.3751880   0.4780115
24 months   kiGH5241-JiVitA-4           BANGLADESH                     Medium_24 months   NA                   NA                0.4137931    0.1726426   0.6549436
24 months   kiGH5241-JiVitA-4           BANGLADESH                     High_24 months     NA                   NA                0.5161290    0.2715578   0.7607003


### Parameter: RR


agecat      studyid                     country                        intXmeducyrs       intervention_level   baseline_level             estimate            ci_lower            ci_upper
----------  --------------------------  -----------------------------  -----------------  -------------------  ---------------  ------------------  ------------------  ------------------
Birth       ki1000304b-SAS-CompFeed     INDIA                          Low_Birth          Control              Control                   1.0000000           1.0000000           1.0000000
Birth       ki1000304b-SAS-CompFeed     INDIA                          Low_Birth          Other                Control                   1.3382353           0.6227243           2.8758691
Birth       ki1000304b-SAS-CompFeed     INDIA                          Medium_Birth       Control              Control                   1.0000000           1.0000000           1.0000000
Birth       ki1000304b-SAS-CompFeed     INDIA                          Medium_Birth       Other                Control                   0.3846154           0.1674440           0.8834538
Birth       ki1000304b-SAS-CompFeed     INDIA                          High_Birth         Control              Control                   1.0000000           1.0000000           1.0000000
Birth       ki1000304b-SAS-CompFeed     INDIA                          High_Birth         Other                Control           112273577.2122065    26917425.1877161   468297248.0509698
Birth       ki1119695-PROBIT            BELARUS                        Low_Birth          Control              Control                   1.0000000           1.0000000           1.0000000
Birth       ki1119695-PROBIT            BELARUS                        Low_Birth          Maternal             Control                   0.5122855           0.1109281           2.3658247
Birth       ki1119695-PROBIT            BELARUS                        Medium_Birth       Control              Control                   1.0000000           1.0000000           1.0000000
Birth       ki1119695-PROBIT            BELARUS                        Medium_Birth       Maternal             Control                   0.4957211           0.1124811           2.1847172
Birth       ki1126311-ZVITAMBO          ZIMBABWE                       Low_Birth          Control              Control                   1.0000000           1.0000000           1.0000000
Birth       ki1126311-ZVITAMBO          ZIMBABWE                       Low_Birth          VitA                 Control                   1.1549432           0.9017814           1.4791764
Birth       ki1126311-ZVITAMBO          ZIMBABWE                       Medium_Birth       Control              Control                   1.0000000           1.0000000           1.0000000
Birth       ki1126311-ZVITAMBO          ZIMBABWE                       Medium_Birth       VitA                 Control                   1.1402465           0.9063654           1.4344789
Birth       ki1126311-ZVITAMBO          ZIMBABWE                       High_Birth         Control              Control                   1.0000000           1.0000000           1.0000000
Birth       ki1126311-ZVITAMBO          ZIMBABWE                       High_Birth         VitA                 Control                   0.8685751           0.7452857           1.0122599
Birth       ki1135781-COHORTS           GUATEMALA                      Low_Birth          Control              Control                   1.0000000           1.0000000           1.0000000
Birth       ki1135781-COHORTS           GUATEMALA                      Low_Birth          Other                Control                   1.5384615           0.7390133           3.2027350
Birth       ki1135781-COHORTS           GUATEMALA                      Medium_Birth       Control              Control                   1.0000000           1.0000000           1.0000000
Birth       ki1135781-COHORTS           GUATEMALA                      Medium_Birth       Other                Control                   1.0714286           0.2933308           3.9135313
Birth       ki1135781-COHORTS           GUATEMALA                      High_Birth         Control              Control                   1.0000000           1.0000000           1.0000000
Birth       ki1135781-COHORTS           GUATEMALA                      High_Birth         Other                Control                   1.4383561           0.4304337           4.8064742
Birth       kiGH5241-JiVitA-3           BANGLADESH                     Low_Birth          Control              Control                   1.0000000           1.0000000           1.0000000
Birth       kiGH5241-JiVitA-3           BANGLADESH                     Low_Birth          Maternal             Control                   0.9102779           0.8471821           0.9780729
Birth       kiGH5241-JiVitA-3           BANGLADESH                     Medium_Birth       Control              Control                   1.0000000           1.0000000           1.0000000
Birth       kiGH5241-JiVitA-3           BANGLADESH                     Medium_Birth       Maternal             Control                   0.8946865           0.8268784           0.9680552
Birth       kiGH5241-JiVitA-3           BANGLADESH                     High_Birth         Control              Control                   1.0000000           1.0000000           1.0000000
Birth       kiGH5241-JiVitA-3           BANGLADESH                     High_Birth         Maternal             Control                   0.8617770           0.7773293           0.9553989
Birth       kiGH5241-JiVitA-4           BANGLADESH                     Low_Birth          Control              Control                   1.0000000           1.0000000           1.0000000
Birth       kiGH5241-JiVitA-4           BANGLADESH                     Low_Birth          LNS                  Control                   0.9176863           0.5752687           1.4639215
Birth       kiGH5241-JiVitA-4           BANGLADESH                     Low_Birth          Other                Control                   1.0747126           0.7260804           1.5907430
Birth       kiGH5241-JiVitA-4           BANGLADESH                     High_Birth         Control              Control                   1.0000000           1.0000000           1.0000000
Birth       kiGH5241-JiVitA-4           BANGLADESH                     High_Birth         LNS                  Control                   1.0000000           0.2982820           3.3525325
Birth       kiGH5241-JiVitA-4           BANGLADESH                     High_Birth         Other                Control                   0.7500000           0.1355413           4.1500266
6 months    iLiNS_DYADM_LNS             MALAWI                         Low_6 months       Control              Control                   1.0000000           1.0000000           1.0000000
6 months    iLiNS_DYADM_LNS             MALAWI                         Low_6 months       LNS                  Control                   0.9834711           0.6210914           1.5572834
6 months    iLiNS_DYADM_LNS             MALAWI                         Medium_6 months    Control              Control                   1.0000000           1.0000000           1.0000000
6 months    iLiNS_DYADM_LNS             MALAWI                         Medium_6 months    LNS                  Control                   0.8304297           0.5532086           1.2465705
6 months    iLiNS_DYADM_LNS             MALAWI                         High_6 months      Control              Control                   1.0000000           1.0000000           1.0000000
6 months    iLiNS_DYADM_LNS             MALAWI                         High_6 months      LNS                  Control                   1.2081448           0.6104895           2.3908910
6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Low_6 months       Control              Control                   1.0000000           1.0000000           1.0000000
6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Low_6 months       LNS                  Control                   1.4769231           0.6878290           3.1712850
6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Low_6 months       Other                Control                   1.4042553           0.6750646           2.9211026
6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Medium_6 months    Control              Control                   1.0000000           1.0000000           1.0000000
6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Medium_6 months    LNS                  Control                   0.4067797           0.1662894           0.9950706
6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Medium_6 months    Other                Control                   0.3636364           0.1742226           0.7589798
6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     High_6 months      Control              Control                   1.0000000           1.0000000           1.0000000
6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     High_6 months      LNS                  Control                   0.8339844           0.3213171           2.1646219
6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     High_6 months      Other                Control                   0.5815678           0.2358145           1.4342676
6 months    ki1000111-WASH-Kenya        KENYA                          Low_6 months       Control              Control                   1.0000000           1.0000000           1.0000000
6 months    ki1000111-WASH-Kenya        KENYA                          Low_6 months       LNS                  Control                   3.7499999           0.4621953          30.4254478
6 months    ki1000111-WASH-Kenya        KENYA                          Low_6 months       Other                Control                   2.3529411           0.2947610          18.7824455
6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Low_6 months       Control              Control                   1.0000000           1.0000000           1.0000000
6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Low_6 months       Maternal             Control                   0.8305085           0.4540135           1.5192154
6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Medium_6 months    Control              Control                   1.0000000           1.0000000           1.0000000
6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Medium_6 months    Maternal             Control                   1.4117647           0.3616992           5.5103241
6 months    ki1000304-EU                INDIA                          Low_6 months       Control              Control                   1.0000000           1.0000000           1.0000000
6 months    ki1000304-EU                INDIA                          Low_6 months       Zinc                 Control                   1.1607143           0.7355747           1.8315715
6 months    ki1000304-EU                INDIA                          Medium_6 months    Control              Control                   1.0000000           1.0000000           1.0000000
6 months    ki1000304-EU                INDIA                          Medium_6 months    Zinc                 Control                   0.7367347           0.4534457           1.1970079
6 months    ki1000304-EU                INDIA                          High_6 months      Control              Control                   1.0000000           1.0000000           1.0000000
6 months    ki1000304-EU                INDIA                          High_6 months      Zinc                 Control                   0.4166667           0.1682944           1.0315918
6 months    ki1000304-VITAMIN-A         INDIA                          Low_6 months       Control              Control                   1.0000000           1.0000000           1.0000000
6 months    ki1000304-VITAMIN-A         INDIA                          Low_6 months       VitA                 Control                   0.9684253           0.8454286           1.1093161
6 months    ki1000304-VITAMIN-A         INDIA                          Medium_6 months    Control              Control                   1.0000000           1.0000000           1.0000000
6 months    ki1000304-VITAMIN-A         INDIA                          Medium_6 months    VitA                 Control                   0.8947708           0.7348156           1.0895451
6 months    ki1000304-VITAMIN-A         INDIA                          High_6 months      Control              Control                   1.0000000           1.0000000           1.0000000
6 months    ki1000304-VITAMIN-A         INDIA                          High_6 months      VitA                 Control                   0.8580766           0.6067255           1.2135563
6 months    ki1000304-Vitamin-B12       INDIA                          Low_6 months       Control              Control                   1.0000000           1.0000000           1.0000000
6 months    ki1000304-Vitamin-B12       INDIA                          Low_6 months       Other                Control                   0.7000000           0.2167533           2.2606348
6 months    ki1000304-Vitamin-B12       INDIA                          Medium_6 months    Control              Control                   1.0000000           1.0000000           1.0000000
6 months    ki1000304-Vitamin-B12       INDIA                          Medium_6 months    Other                Control                   0.5185185           0.1498898           1.7937270
6 months    ki1000304-Vitamin-B12       INDIA                          High_6 months      Control              Control                   1.0000000           1.0000000           1.0000000
6 months    ki1000304-Vitamin-B12       INDIA                          High_6 months      Other                Control                   1.3846154           0.1964725           9.7579038
6 months    ki1000304-ZnMort            INDIA                          Low_6 months       Control              Control                   1.0000000           1.0000000           1.0000000
6 months    ki1000304-ZnMort            INDIA                          Low_6 months       Zinc                 Control                   0.8571429           0.4453231           1.6497995
6 months    ki1000304-ZnMort            INDIA                          Medium_6 months    Control              Control                   1.0000000           1.0000000           1.0000000
6 months    ki1000304-ZnMort            INDIA                          Medium_6 months    Zinc                 Control                   1.5527950           0.7042048           3.4239649
6 months    ki1000304-ZnMort            INDIA                          High_6 months      Control              Control                   1.0000000           1.0000000           1.0000000
6 months    ki1000304-ZnMort            INDIA                          High_6 months      Zinc                 Control                   0.4833333           0.1218524           1.9171641
6 months    ki1000304b-SAS-CompFeed     INDIA                          Low_6 months       Control              Control                   1.0000000           1.0000000           1.0000000
6 months    ki1000304b-SAS-CompFeed     INDIA                          Low_6 months       Other                Control                   1.1781628           1.0028826           1.3840778
6 months    ki1000304b-SAS-CompFeed     INDIA                          Medium_6 months    Control              Control                   1.0000000           1.0000000           1.0000000
6 months    ki1000304b-SAS-CompFeed     INDIA                          Medium_6 months    Other                Control                   0.9366472           0.5611921           1.5632935
6 months    ki1000304b-SAS-CompFeed     INDIA                          High_6 months      Control              Control                   1.0000000           1.0000000           1.0000000
6 months    ki1000304b-SAS-CompFeed     INDIA                          High_6 months      Other                Control                   0.6844444           0.2700452           1.7347620
6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Low_6 months       Control              Control                   1.0000000           1.0000000           1.0000000
6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Low_6 months       Other                Control                   0.7882206           0.5979244           1.0390806
6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Medium_6 months    Control              Control                   1.0000000           1.0000000           1.0000000
6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Medium_6 months    Other                Control                   0.5102041           0.2663071           0.9774737
6 months    ki1000304b-SAS-FoodSuppl    INDIA                          High_6 months      Control              Control                   1.0000000           1.0000000           1.0000000
6 months    ki1000304b-SAS-FoodSuppl    INDIA                          High_6 months      Other                Control                   1.0000000           0.2807160           3.5623194
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Low_6 months       Control              Control                   1.0000000           1.0000000           1.0000000
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Low_6 months       Other                Control                   0.4333333           0.0823308           2.2807730
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Low_6 months       Zinc                 Control                   0.2988506           0.0557591           1.6017427
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Medium_6 months    Control              Control                   1.0000000           1.0000000           1.0000000
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Medium_6 months    Other                Control                   1.1733833           0.7521190           1.8305991
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Medium_6 months    Zinc                 Control                   1.0296053           0.6935153           1.5285704
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   High_6 months      Control              Control                   1.0000000           1.0000000           1.0000000
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   High_6 months      Other                Control                   0.5675676           0.2286571           1.4088035
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   High_6 months      Zinc                 Control                   1.0368664           0.5311584           2.0240512
6 months    ki1112895-Guatemala BSC     GUATEMALA                      Low_6 months       Control              Control                   1.0000000           1.0000000           1.0000000
6 months    ki1112895-Guatemala BSC     GUATEMALA                      Low_6 months       Other                Control                   0.8030769           0.4123169           1.5641673
6 months    ki1112895-Guatemala BSC     GUATEMALA                      Medium_6 months    Control              Control                   1.0000000           1.0000000           1.0000000
6 months    ki1112895-Guatemala BSC     GUATEMALA                      Medium_6 months    Other                Control                   0.7493113           0.3433336           1.6353406
6 months    ki1112895-Guatemala BSC     GUATEMALA                      High_6 months      Control              Control                   1.0000000           1.0000000           1.0000000
6 months    ki1112895-Guatemala BSC     GUATEMALA                      High_6 months      Other                Control                   1.0980392           0.5442638           2.2152680
6 months    ki1119695-PROBIT            BELARUS                        Low_6 months       Control              Control                   1.0000000           1.0000000           1.0000000
6 months    ki1119695-PROBIT            BELARUS                        Low_6 months       Maternal             Control                   0.7112106           0.4801865           1.0533837
6 months    ki1119695-PROBIT            BELARUS                        Medium_6 months    Control              Control                   1.0000000           1.0000000           1.0000000
6 months    ki1119695-PROBIT            BELARUS                        Medium_6 months    Maternal             Control                   0.8335519           0.5171403           1.3435596
6 months    ki1119695-PROBIT            BELARUS                        High_6 months      Control              Control                   1.0000000           1.0000000           1.0000000
6 months    ki1119695-PROBIT            BELARUS                        High_6 months      Maternal             Control                   0.6118899           0.3176716           1.1786048
6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Low_6 months       Control              Control                   1.0000000           1.0000000           1.0000000
6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Low_6 months       VitA                 Control                   0.9817279           0.7773619           1.2398212
6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Medium_6 months    Control              Control                   1.0000000           1.0000000           1.0000000
6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Medium_6 months    VitA                 Control                   1.1382298           0.9115032           1.4213523
6 months    ki1126311-ZVITAMBO          ZIMBABWE                       High_6 months      Control              Control                   1.0000000           1.0000000           1.0000000
6 months    ki1126311-ZVITAMBO          ZIMBABWE                       High_6 months      VitA                 Control                   0.9841214           0.8316811           1.1645027
6 months    ki1135781-COHORTS           GUATEMALA                      Low_6 months       Control              Control                   1.0000000           1.0000000           1.0000000
6 months    ki1135781-COHORTS           GUATEMALA                      Low_6 months       Other                Control                   0.8734881           0.7101004           1.0744700
6 months    ki1135781-COHORTS           GUATEMALA                      Medium_6 months    Control              Control                   1.0000000           1.0000000           1.0000000
6 months    ki1135781-COHORTS           GUATEMALA                      Medium_6 months    Other                Control                   0.6193729           0.4652335           0.8245812
6 months    ki1135781-COHORTS           GUATEMALA                      High_6 months      Control              Control                   1.0000000           1.0000000           1.0000000
6 months    ki1135781-COHORTS           GUATEMALA                      High_6 months      Other                Control                   0.8833219           0.5902970           1.3218051
6 months    ki1148112-iLiNS-DOSE        MALAWI                         Low_6 months       Control              Control                   1.0000000           1.0000000           1.0000000
6 months    ki1148112-iLiNS-DOSE        MALAWI                         Low_6 months       LNS                  Control                   0.8878905           0.6713628           1.1742526
6 months    ki1148112-iLiNS-DOSE        MALAWI                         Medium_6 months    Control              Control                   1.0000000           1.0000000           1.0000000
6 months    ki1148112-iLiNS-DOSE        MALAWI                         Medium_6 months    LNS                  Control                   0.7829569           0.5728263           1.0701702
6 months    ki1148112-iLiNS-DOSE        MALAWI                         High_6 months      Control              Control                   1.0000000           1.0000000           1.0000000
6 months    ki1148112-iLiNS-DOSE        MALAWI                         High_6 months      LNS                  Control                   1.0519289           0.7572562           1.4612684
6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Low_6 months       Control              Control                   1.0000000           1.0000000           1.0000000
6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Low_6 months       Maternal             Control                   1.0625000           0.7189444           1.5702275
6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Medium_6 months    Control              Control                   1.0000000           1.0000000           1.0000000
6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Medium_6 months    Maternal             Control                   0.7902058           0.5601853           1.1146762
6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         High_6 months      Control              Control                   1.0000000           1.0000000           1.0000000
6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         High_6 months      Maternal             Control                   1.2307692           0.6799367           2.2278440
6 months    ki1148112-LCNI-5            MALAWI                         Low_6 months       Control              Control                   1.0000000           1.0000000           1.0000000
6 months    ki1148112-LCNI-5            MALAWI                         Low_6 months       LNS                  Control                   0.9445813           0.6764659           1.3189634
6 months    ki1148112-LCNI-5            MALAWI                         Low_6 months       Other                Control                   0.9605911           0.6395589           1.4427684
6 months    ki1148112-LCNI-5            MALAWI                         Medium_6 months    Control              Control                   1.0000000           1.0000000           1.0000000
6 months    ki1148112-LCNI-5            MALAWI                         Medium_6 months    LNS                  Control                   1.0874363           0.6949416           1.7016074
6 months    ki1148112-LCNI-5            MALAWI                         Medium_6 months    Other                Control                   1.4424104           0.9138830           2.2766017
6 months    ki1148112-LCNI-5            MALAWI                         High_6 months      Control              Control                   1.0000000           1.0000000           1.0000000
6 months    ki1148112-LCNI-5            MALAWI                         High_6 months      LNS                  Control                   1.2087114           0.7644976           1.9110371
6 months    ki1148112-LCNI-5            MALAWI                         High_6 months      Other                Control                   1.3311126           0.8116396           2.1830633
6 months    kiGH5241-JiVitA-3           BANGLADESH                     Low_6 months       Control              Control                   1.0000000           1.0000000           1.0000000
6 months    kiGH5241-JiVitA-3           BANGLADESH                     Low_6 months       Maternal             Control                   0.9267509           0.8384160           1.0243928
6 months    kiGH5241-JiVitA-3           BANGLADESH                     Medium_6 months    Control              Control                   1.0000000           1.0000000           1.0000000
6 months    kiGH5241-JiVitA-3           BANGLADESH                     Medium_6 months    Maternal             Control                   0.9220571           0.8314807           1.0225003
6 months    kiGH5241-JiVitA-3           BANGLADESH                     High_6 months      Control              Control                   1.0000000           1.0000000           1.0000000
6 months    kiGH5241-JiVitA-3           BANGLADESH                     High_6 months      Maternal             Control                   0.8896359           0.7868028           1.0059091
6 months    kiGH5241-JiVitA-4           BANGLADESH                     Low_6 months       Control              Control                   1.0000000           1.0000000           1.0000000
6 months    kiGH5241-JiVitA-4           BANGLADESH                     Low_6 months       LNS                  Control                   0.9045441           0.7057834           1.1592792
6 months    kiGH5241-JiVitA-4           BANGLADESH                     Low_6 months       Other                Control                   1.0179994           0.8266902           1.2535805
6 months    kiGH5241-JiVitA-4           BANGLADESH                     Medium_6 months    Control              Control                   1.0000000           1.0000000           1.0000000
6 months    kiGH5241-JiVitA-4           BANGLADESH                     Medium_6 months    LNS                  Control                   0.4536585           0.1333775           1.5430341
6 months    kiGH5241-JiVitA-4           BANGLADESH                     Medium_6 months    Other                Control                   0.9620690           0.3943101           2.3473317
6 months    kiGH5241-JiVitA-4           BANGLADESH                     High_6 months      Control              Control                   1.0000000           1.0000000           1.0000000
6 months    kiGH5241-JiVitA-4           BANGLADESH                     High_6 months      LNS                  Control                   1.2892562           0.5014951           3.3144525
6 months    kiGH5241-JiVitA-4           BANGLADESH                     High_6 months      Other                Control                   1.4252199           0.6188957           3.2820582
24 months   iLiNS_DYADM_LNS             MALAWI                         Low_24 months      Control              Control                   1.0000000           1.0000000           1.0000000
24 months   iLiNS_DYADM_LNS             MALAWI                         Low_24 months      LNS                  Control                   0.7500000           0.1704564           3.2999636
24 months   iLiNS_DYADM_LNS             MALAWI                         Medium_24 months   Control              Control                   1.0000000           1.0000000           1.0000000
24 months   iLiNS_DYADM_LNS             MALAWI                         Medium_24 months   LNS                  Control                   0.6666667           0.2150143           2.0670462
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Low_24 months      Control              Control                   1.0000000           1.0000000           1.0000000
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Low_24 months      LNS                  Control                   0.9330656           0.6823406           1.2759192
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Low_24 months      Other                Control                   0.9672021           0.7388954           1.2660519
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Medium_24 months   Control              Control                   1.0000000           1.0000000           1.0000000
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Medium_24 months   LNS                  Control                   0.9370016           0.6943911           1.2643769
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Medium_24 months   Other                Control                   0.9366323           0.7177439           1.2222745
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     High_24 months     Control              Control                   1.0000000           1.0000000           1.0000000
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     High_24 months     LNS                  Control                   0.7077922           0.4558071           1.0990829
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     High_24 months     Other                Control                   1.0121429           0.7286575           1.4059186
24 months   ki1000111-WASH-Kenya        KENYA                          Low_24 months      Control              Control                   1.0000000           1.0000000           1.0000000
24 months   ki1000111-WASH-Kenya        KENYA                          Low_24 months      LNS                  Control                   0.8122354           0.6627994           0.9953635
24 months   ki1000111-WASH-Kenya        KENYA                          Low_24 months      Other                Control                   0.9179038           0.7806002           1.0793585
24 months   ki1000111-WASH-Kenya        KENYA                          Medium_24 months   Control              Control                   1.0000000           1.0000000           1.0000000
24 months   ki1000111-WASH-Kenya        KENYA                          Medium_24 months   LNS                  Control                   1.5109244           0.9901617           2.3055754
24 months   ki1000111-WASH-Kenya        KENYA                          Medium_24 months   Other                Control                   1.4721998           1.0200617           2.1247463
24 months   ki1000111-WASH-Kenya        KENYA                          High_24 months     Control              Control                   1.0000000           1.0000000           1.0000000
24 months   ki1000111-WASH-Kenya        KENYA                          High_24 months     LNS                  Control                   0.9891892           0.6076107           1.6103983
24 months   ki1000111-WASH-Kenya        KENYA                          High_24 months     Other                Control                   1.2220033           0.8436600           1.7700164
24 months   ki1000304-EU                INDIA                          Low_24 months      Control              Control                   1.0000000           1.0000000           1.0000000
24 months   ki1000304-EU                INDIA                          Low_24 months      Zinc                 Control                   0.8541374           0.6410674           1.1380250
24 months   ki1000304-EU                INDIA                          Medium_24 months   Control              Control                   1.0000000           1.0000000           1.0000000
24 months   ki1000304-EU                INDIA                          Medium_24 months   Zinc                 Control                   0.8303140           0.5976751           1.1535053
24 months   ki1000304-EU                INDIA                          High_24 months     Control              Control                   1.0000000           1.0000000           1.0000000
24 months   ki1000304-EU                INDIA                          High_24 months     Zinc                 Control                   1.1666667           0.6741742           2.0189309
24 months   ki1000304-Vitamin-B12       INDIA                          Low_24 months      Control              Control                   1.0000000           1.0000000           1.0000000
24 months   ki1000304-Vitamin-B12       INDIA                          Low_24 months      Other                Control                   1.7374517           0.9287217           3.2504231
24 months   ki1000304-Vitamin-B12       INDIA                          Medium_24 months   Control              Control                   1.0000000           1.0000000           1.0000000
24 months   ki1000304-Vitamin-B12       INDIA                          Medium_24 months   Other                Control                   0.9290323           0.4682664           1.8431836
24 months   ki1000304-Vitamin-B12       INDIA                          High_24 months     Control              Control                   1.0000000           1.0000000           1.0000000
24 months   ki1000304-Vitamin-B12       INDIA                          High_24 months     Other                Control                   0.8461538           0.1768572           4.0483306
24 months   ki1000304-ZnMort            INDIA                          Low_24 months      Control              Control                   1.0000000           1.0000000           1.0000000
24 months   ki1000304-ZnMort            INDIA                          Low_24 months      Zinc                 Control                   0.9790210           0.7336001           1.3065457
24 months   ki1000304-ZnMort            INDIA                          Medium_24 months   Control              Control                   1.0000000           1.0000000           1.0000000
24 months   ki1000304-ZnMort            INDIA                          Medium_24 months   Zinc                 Control                   0.8800000           0.5426833           1.4269832
24 months   ki1000304-ZnMort            INDIA                          High_24 months     Control              Control                   1.0000000           1.0000000           1.0000000
24 months   ki1000304-ZnMort            INDIA                          High_24 months     Zinc                 Control                   0.5263158           0.1778660           1.5573986
24 months   ki1119695-PROBIT            BELARUS                        Low_24 months      Control              Control                   1.0000000           1.0000000           1.0000000
24 months   ki1119695-PROBIT            BELARUS                        Low_24 months      Maternal             Control                   0.7743969           0.2865782           2.0925896
24 months   ki1119695-PROBIT            BELARUS                        Medium_24 months   Control              Control                   1.0000000           1.0000000           1.0000000
24 months   ki1119695-PROBIT            BELARUS                        Medium_24 months   Maternal             Control                   0.8938301           0.2673951           2.9878345
24 months   ki1119695-PROBIT            BELARUS                        High_24 months     Control              Control                   1.0000000           1.0000000           1.0000000
24 months   ki1119695-PROBIT            BELARUS                        High_24 months     Maternal             Control                   1.2500000           0.0633720          24.6560045
24 months   ki1126311-ZVITAMBO          ZIMBABWE                       High_24 months     Control              Control                   1.0000000           1.0000000           1.0000000
24 months   ki1126311-ZVITAMBO          ZIMBABWE                       High_24 months     VitA                 Control                   2.0000000           0.7527929           5.3135466
24 months   ki1135781-COHORTS           GUATEMALA                      Low_24 months      Control              Control                   1.0000000           1.0000000           1.0000000
24 months   ki1135781-COHORTS           GUATEMALA                      Low_24 months      Other                Control                   0.8369607           0.7072739           0.9904272
24 months   ki1135781-COHORTS           GUATEMALA                      Medium_24 months   Control              Control                   1.0000000           1.0000000           1.0000000
24 months   ki1135781-COHORTS           GUATEMALA                      Medium_24 months   Other                Control                   1.0156250           0.8394788           1.2287317
24 months   ki1135781-COHORTS           GUATEMALA                      High_24 months     Control              Control                   1.0000000           1.0000000           1.0000000
24 months   ki1135781-COHORTS           GUATEMALA                      High_24 months     Other                Control                   1.0910256           0.8163008           1.4582087
24 months   ki1148112-iLiNS-DOSE        MALAWI                         Low_24 months      Control              Control                   1.0000000           1.0000000           1.0000000
24 months   ki1148112-iLiNS-DOSE        MALAWI                         Low_24 months      LNS                  Control                   1.0614887           0.7673270           1.4684199
24 months   ki1148112-iLiNS-DOSE        MALAWI                         Medium_24 months   Control              Control                   1.0000000           1.0000000           1.0000000
24 months   ki1148112-iLiNS-DOSE        MALAWI                         Medium_24 months   LNS                  Control                   0.9810313           0.7087130           1.3579860
24 months   ki1148112-iLiNS-DOSE        MALAWI                         High_24 months     Control              Control                   1.0000000           1.0000000           1.0000000
24 months   ki1148112-iLiNS-DOSE        MALAWI                         High_24 months     LNS                  Control                   0.9208333           0.6649097           1.2752619
24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Low_24 months      Control              Control                   1.0000000           1.0000000           1.0000000
24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Low_24 months      Maternal             Control                   1.1111111           0.3286645           3.7563168
24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Medium_24 months   Control              Control                   1.0000000           1.0000000           1.0000000
24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Medium_24 months   Maternal             Control                   0.7105263           0.2742736           1.8406715
24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         High_24 months     Control              Control                   1.0000000           1.0000000           1.0000000
24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         High_24 months     Maternal             Control                   0.2500000           0.0755464           0.8273057
24 months   ki1148112-LCNI-5            MALAWI                         Low_24 months      Control              Control                   1.0000000           1.0000000           1.0000000
24 months   ki1148112-LCNI-5            MALAWI                         Low_24 months      LNS                  Control                   0.7395382           0.4867296           1.1236563
24 months   ki1148112-LCNI-5            MALAWI                         Low_24 months      Other                Control                   0.5929752           0.3012255           1.1672969
24 months   ki1148112-LCNI-5            MALAWI                         Medium_24 months   Control              Control                   1.0000000           1.0000000           1.0000000
24 months   ki1148112-LCNI-5            MALAWI                         Medium_24 months   LNS                  Control                   1.8333333           0.9602051           3.5004094
24 months   ki1148112-LCNI-5            MALAWI                         Medium_24 months   Other                Control                   1.8181818           0.9201918           3.5924958
24 months   ki1148112-LCNI-5            MALAWI                         High_24 months     Control              Control                   1.0000000           1.0000000           1.0000000
24 months   ki1148112-LCNI-5            MALAWI                         High_24 months     LNS                  Control                   1.1674959           0.6073137           2.2443864
24 months   ki1148112-LCNI-5            MALAWI                         High_24 months     Other                Control                   0.9116809           0.4210667           1.9739440
24 months   kiGH5241-JiVitA-3           BANGLADESH                     Low_24 months      Control              Control                   1.0000000           1.0000000           1.0000000
24 months   kiGH5241-JiVitA-3           BANGLADESH                     Low_24 months      Maternal             Control                   1.6578947           0.8520435           3.2259092
24 months   kiGH5241-JiVitA-3           BANGLADESH                     Medium_24 months   Control              Control                   1.0000000           1.0000000           1.0000000
24 months   kiGH5241-JiVitA-3           BANGLADESH                     Medium_24 months   Maternal             Control                   1.5714286           0.6350608           3.8884276
24 months   kiGH5241-JiVitA-3           BANGLADESH                     High_24 months     Control              Control                   1.0000000           1.0000000           1.0000000
24 months   kiGH5241-JiVitA-3           BANGLADESH                     High_24 months     Maternal             Control                   0.7184211           0.3675651           1.4041835
24 months   kiGH5241-JiVitA-4           BANGLADESH                     Low_24 months      Control              Control                   1.0000000           1.0000000           1.0000000
24 months   kiGH5241-JiVitA-4           BANGLADESH                     Low_24 months      LNS                  Control                   0.9561669           0.7015208           1.3032474
24 months   kiGH5241-JiVitA-4           BANGLADESH                     Low_24 months      Other                Control                   0.8141313           0.6158847           1.0761913
24 months   kiGH5241-JiVitA-4           BANGLADESH                     Medium_24 months   Control              Control                   1.0000000           1.0000000           1.0000000
24 months   kiGH5241-JiVitA-4           BANGLADESH                     Medium_24 months   LNS                  Control                   0.2545455           0.0472846           1.3702839
24 months   kiGH5241-JiVitA-4           BANGLADESH                     Medium_24 months   Other                Control                   0.6363636           0.2154977           1.8791787
24 months   kiGH5241-JiVitA-4           BANGLADESH                     High_24 months     Control              Control                   1.0000000           1.0000000           1.0000000
24 months   kiGH5241-JiVitA-4           BANGLADESH                     High_24 months     LNS                  Control           314366015.1941802   140492798.8293646   703423893.1284766
24 months   kiGH5241-JiVitA-4           BANGLADESH                     High_24 months     Other                Control           157183008.0970901    52497283.3687834   470624315.1839208


### Parameter: PAR


agecat      studyid                     country                        intXmeducyrs       intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------------------  -----------------------------  -----------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000304b-SAS-CompFeed     INDIA                          Low_Birth          Control              NA                 0.0529954   -0.0805279    0.1865187
Birth       ki1000304b-SAS-CompFeed     INDIA                          Medium_Birth       Control              NA                -0.0857143   -0.1870200    0.0155915
Birth       ki1000304b-SAS-CompFeed     INDIA                          High_Birth         Control              NA                 0.1923077   -0.0807571    0.4653725
Birth       ki1119695-PROBIT            BELARUS                        Low_Birth          Control              NA                -0.0013431   -0.0049000    0.0022138
Birth       ki1119695-PROBIT            BELARUS                        Medium_Birth       Control              NA                -0.0006097   -0.0016980    0.0004787
Birth       ki1126311-ZVITAMBO          ZIMBABWE                       Low_Birth          Control              NA                 0.0114107   -0.0074855    0.0303069
Birth       ki1126311-ZVITAMBO          ZIMBABWE                       Medium_Birth       Control              NA                 0.0106125   -0.0073210    0.0285459
Birth       ki1126311-ZVITAMBO          ZIMBABWE                       High_Birth         Control              NA                -0.0107112   -0.0227518    0.0013294
Birth       ki1135781-COHORTS           GUATEMALA                      Low_Birth          Control              NA                 0.0179028   -0.0114461    0.0472517
Birth       ki1135781-COHORTS           GUATEMALA                      Medium_Birth       Control              NA                 0.0012210   -0.0216394    0.0240814
Birth       ki1135781-COHORTS           GUATEMALA                      High_Birth         Control              NA                 0.0085607   -0.0206079    0.0377294
Birth       kiGH5241-JiVitA-3           BANGLADESH                     Low_Birth          Control              NA                -0.0162757   -0.0288198   -0.0037317
Birth       kiGH5241-JiVitA-3           BANGLADESH                     Medium_Birth       Control              NA                -0.0194074   -0.0332498   -0.0055649
Birth       kiGH5241-JiVitA-3           BANGLADESH                     High_Birth         Control              NA                -0.0200780   -0.0340486   -0.0061074
Birth       kiGH5241-JiVitA-4           BANGLADESH                     Low_Birth          Control              NA                 0.0036809   -0.0740436    0.0814054
Birth       kiGH5241-JiVitA-4           BANGLADESH                     High_Birth         Control              NA                -0.0416667   -0.4998380    0.4165047
6 months    iLiNS_DYADM_LNS             MALAWI                         Low_6 months       Control              NA                -0.0019608   -0.0560338    0.0521123
6 months    iLiNS_DYADM_LNS             MALAWI                         Medium_6 months    Control              NA                -0.0227728   -0.0721309    0.0265854
6 months    iLiNS_DYADM_LNS             MALAWI                         High_6 months      Control              NA                 0.0148521   -0.0387551    0.0684593
6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Low_6 months       Control              NA                 0.0555556   -0.0404258    0.1515369
6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Medium_6 months    Control              NA                -0.1206897   -0.2184013   -0.0229780
6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     High_6 months      Control              NA                -0.0323821   -0.1030989    0.0383346
6 months    ki1000111-WASH-Kenya        KENYA                          Low_6 months       Control              NA                 0.1285714   -0.0589784    0.3161213
6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Low_6 months       Control              NA                -0.0234192   -0.0991270    0.0522886
6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Medium_6 months    Control              NA                 0.0333333   -0.0978370    0.1645037
6 months    ki1000304-EU                INDIA                          Low_6 months       Control              NA                 0.0263191   -0.0544887    0.1071269
6 months    ki1000304-EU                INDIA                          Medium_6 months    Control              NA                -0.0465032   -0.1192793    0.0262728
6 months    ki1000304-EU                INDIA                          High_6 months      Control              NA                -0.0736842   -0.1411773   -0.0061911
6 months    ki1000304-VITAMIN-A         INDIA                          Low_6 months       Control              NA                -0.0064606   -0.0337982    0.0208770
6 months    ki1000304-VITAMIN-A         INDIA                          Medium_6 months    Control              NA                -0.0181366   -0.0502345    0.0139612
6 months    ki1000304-VITAMIN-A         INDIA                          High_6 months      Control              NA                -0.0160282   -0.0522557    0.0201994
6 months    ki1000304-Vitamin-B12       INDIA                          Low_6 months       Control              NA                -0.1250000   -0.5790542    0.3290542
6 months    ki1000304-Vitamin-B12       INDIA                          Medium_6 months    Control              NA                -0.1485714   -0.4549470    0.1578041
6 months    ki1000304-Vitamin-B12       INDIA                          High_6 months      Control              NA                 0.0520833   -0.2281788    0.3323454
6 months    ki1000304-ZnMort            INDIA                          Low_6 months       Control              NA                -0.0267857   -0.1390679    0.0854965
6 months    ki1000304-ZnMort            INDIA                          Medium_6 months    Control              NA                 0.0741667   -0.0576546    0.2059879
6 months    ki1000304-ZnMort            INDIA                          High_6 months      Control              NA                -0.0521447   -0.1367773    0.0324879
6 months    ki1000304b-SAS-CompFeed     INDIA                          Low_6 months       Control              NA                 0.0297944   -0.0069619    0.0665508
6 months    ki1000304b-SAS-CompFeed     INDIA                          Medium_6 months    Control              NA                -0.0101293   -0.0899252    0.0696665
6 months    ki1000304b-SAS-CompFeed     INDIA                          High_6 months      Control              NA                -0.0228885   -0.0773565    0.0315796
6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Low_6 months       Control              NA                -0.0804149   -0.1782154    0.0173856
6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Medium_6 months    Control              NA                -0.2526316   -0.5074126    0.0021495
6 months    ki1000304b-SAS-FoodSuppl    INDIA                          High_6 months      Control              NA                 0.0000000   -0.3464760    0.3464760
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Low_6 months       Control              NA                -0.1178660   -0.3109059    0.0751739
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Medium_6 months    Control              NA                 0.0059548   -0.0236104    0.0355201
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   High_6 months      Control              NA                -0.0104085   -0.0640439    0.0432269
6 months    ki1112895-Guatemala BSC     GUATEMALA                      Low_6 months       Control              NA                -0.0408685   -0.1634495    0.0817126
6 months    ki1112895-Guatemala BSC     GUATEMALA                      Medium_6 months    Control              NA                -0.0399473   -0.1469531    0.0670585
6 months    ki1112895-Guatemala BSC     GUATEMALA                      High_6 months      Control              NA                 0.0137363   -0.0886794    0.1161520
6 months    ki1119695-PROBIT            BELARUS                        Low_6 months       Control              NA                -0.0161512   -0.0369657    0.0046634
6 months    ki1119695-PROBIT            BELARUS                        Medium_6 months    Control              NA                -0.0045911   -0.0167614    0.0075791
6 months    ki1119695-PROBIT            BELARUS                        High_6 months      Control              NA                -0.0113958   -0.0277371    0.0049455
6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Low_6 months       Control              NA                -0.0025783   -0.0353604    0.0302038
6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Medium_6 months    Control              NA                 0.0176418   -0.0116239    0.0469076
6 months    ki1126311-ZVITAMBO          ZIMBABWE                       High_6 months      Control              NA                -0.0018047   -0.0208590    0.0172495
6 months    ki1135781-COHORTS           GUATEMALA                      Low_6 months       Control              NA                -0.0339614   -0.0861800    0.0182572
6 months    ki1135781-COHORTS           GUATEMALA                      Medium_6 months    Control              NA                -0.1034171   -0.1649931   -0.0418411
6 months    ki1135781-COHORTS           GUATEMALA                      High_6 months      Control              NA                -0.0162345   -0.0679453    0.0354762
6 months    ki1148112-iLiNS-DOSE        MALAWI                         Low_6 months       Control              NA                -0.0354054   -0.1218405    0.0510297
6 months    ki1148112-iLiNS-DOSE        MALAWI                         Medium_6 months    Control              NA                -0.0657453   -0.1564821    0.0249916
6 months    ki1148112-iLiNS-DOSE        MALAWI                         High_6 months      Control              NA                 0.0114884   -0.0618280    0.0848049
6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Low_6 months       Control              NA                 0.0098849   -0.0531193    0.0728892
6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Medium_6 months    Control              NA                -0.0385930   -0.0965621    0.0193762
6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         High_6 months      Control              NA                 0.0224719   -0.0393753    0.0843191
6 months    ki1148112-LCNI-5            MALAWI                         Low_6 months       Control              NA                -0.0170351   -0.1218081    0.0877380
6 months    ki1148112-LCNI-5            MALAWI                         Medium_6 months    Control              NA                 0.0507293   -0.0520030    0.1534617
6 months    ki1148112-LCNI-5            MALAWI                         High_6 months      Control              NA                 0.0486124   -0.0394037    0.1366285
6 months    kiGH5241-JiVitA-3           BANGLADESH                     Low_6 months       Control              NA                -0.0112922   -0.0261385    0.0035540
6 months    kiGH5241-JiVitA-3           BANGLADESH                     Medium_6 months    Control              NA                -0.0113937   -0.0260098    0.0032224
6 months    kiGH5241-JiVitA-3           BANGLADESH                     High_6 months      Control              NA                -0.0111649   -0.0229182    0.0005885
6 months    kiGH5241-JiVitA-4           BANGLADESH                     Low_6 months       Control              NA                -0.0041765   -0.0403743    0.0320213
6 months    kiGH5241-JiVitA-4           BANGLADESH                     Medium_6 months    Control              NA                -0.0610422   -0.2636385    0.1415541
6 months    kiGH5241-JiVitA-4           BANGLADESH                     High_6 months      Control              NA                 0.0837574   -0.1085435    0.2760583
24 months   iLiNS_DYADM_LNS             MALAWI                         Low_24 months      Control              NA                -0.0666667   -0.4227974    0.2894641
24 months   iLiNS_DYADM_LNS             MALAWI                         Medium_24 months   Control              NA                -0.1666667   -0.6591261    0.3257928
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Low_24 months      Control              NA                -0.0183708   -0.1237230    0.0869815
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Medium_24 months   Control              NA                -0.0228296   -0.1114213    0.0657621
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     High_24 months     Control              NA                -0.0204473   -0.0966459    0.0557513
24 months   ki1000111-WASH-Kenya        KENYA                          Low_24 months      Control              NA                -0.0325000   -0.0716118    0.0066118
24 months   ki1000111-WASH-Kenya        KENYA                          Medium_24 months   Control              NA                 0.0616258    0.0113903    0.1118614
24 months   ki1000111-WASH-Kenya        KENYA                          High_24 months     Control              NA                 0.0195540   -0.0279994    0.0671073
24 months   ki1000304-EU                INDIA                          Low_24 months      Control              NA                -0.0562771   -0.1582179    0.0456637
24 months   ki1000304-EU                INDIA                          Medium_24 months   Control              NA                -0.0505851   -0.1387162    0.0375461
24 months   ki1000304-EU                INDIA                          High_24 months     Control              NA                 0.0391705   -0.0986081    0.1769491
24 months   ki1000304-Vitamin-B12       INDIA                          Low_24 months      Control              NA                 0.1929293    0.0054357    0.3804229
24 months   ki1000304-Vitamin-B12       INDIA                          Medium_24 months   Control              NA                -0.0305556   -0.3204070    0.2592959
24 months   ki1000304-Vitamin-B12       INDIA                          High_24 months     Control              NA                -0.0196560   -0.2097716    0.1704595
24 months   ki1000304-ZnMort            INDIA                          Low_24 months      Control              NA                -0.0079365   -0.1158986    0.1000255
24 months   ki1000304-ZnMort            INDIA                          Medium_24 months   Control              NA                -0.0288462   -0.1361500    0.0784577
24 months   ki1000304-ZnMort            INDIA                          High_24 months     Control              NA                -0.1058824   -0.2836964    0.0719317
24 months   ki1119695-PROBIT            BELARUS                        Low_24 months      Control              NA                -0.0238793   -0.1262475    0.0784889
24 months   ki1119695-PROBIT            BELARUS                        Medium_24 months   Control              NA                -0.0067959   -0.0772826    0.0636907
24 months   ki1119695-PROBIT            BELARUS                        High_24 months     Control              NA                 0.0074627   -0.0967812    0.1117065
24 months   ki1126311-ZVITAMBO          ZIMBABWE                       High_24 months     Control              NA                 0.2250000   -0.0437320    0.4937320
24 months   ki1135781-COHORTS           GUATEMALA                      Low_24 months      Control              NA                -0.0736740   -0.1425753   -0.0047728
24 months   ki1135781-COHORTS           GUATEMALA                      Medium_24 months   Control              NA                 0.0058252   -0.0657707    0.0774212
24 months   ki1135781-COHORTS           GUATEMALA                      High_24 months     Control              NA                 0.0286406   -0.0669391    0.1242203
24 months   ki1148112-iLiNS-DOSE        MALAWI                         Low_24 months      Control              NA                 0.0262664   -0.1136706    0.1662035
24 months   ki1148112-iLiNS-DOSE        MALAWI                         Medium_24 months   Control              NA                -0.0090400   -0.1635549    0.1454750
24 months   ki1148112-iLiNS-DOSE        MALAWI                         High_24 months     Control              NA                -0.0307257   -0.1551991    0.0937478
24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Low_24 months      Control              NA                 0.0347826   -0.3549198    0.4244851
24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Medium_24 months   Control              NA                -0.1666667   -0.6790470    0.3457136
24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         High_24 months     Control              NA                -0.4500000   -0.8452033   -0.0547967
24 months   ki1148112-LCNI-5            MALAWI                         Low_24 months      Control              NA                -0.1080139   -0.2334215    0.0173936
24 months   ki1148112-LCNI-5            MALAWI                         Medium_24 months   Control              NA                 0.1431624    0.0180122    0.2683126
24 months   ki1148112-LCNI-5            MALAWI                         High_24 months     Control              NA                 0.0158514   -0.1218561    0.1535590
24 months   kiGH5241-JiVitA-3           BANGLADESH                     Low_24 months      Control              NA                 0.1488095   -0.0339932    0.3316122
24 months   kiGH5241-JiVitA-3           BANGLADESH                     Medium_24 months   Control              NA                 0.1864802   -0.1345245    0.5074849
24 months   kiGH5241-JiVitA-3           BANGLADESH                     High_24 months     Control              NA                -0.0694580   -0.2128438    0.0739278
24 months   kiGH5241-JiVitA-4           BANGLADESH                     Low_24 months      Control              NA                -0.0447659   -0.1255668    0.0360350
24 months   kiGH5241-JiVitA-4           BANGLADESH                     Medium_24 months   Control              NA                -0.3004926   -0.6845217    0.0835364
24 months   kiGH5241-JiVitA-4           BANGLADESH                     High_24 months     Control              NA                 0.5161290    0.2715578    0.7607003


### Parameter: PAF


agecat      studyid                     country                        intXmeducyrs       intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------------------  -----------------------------  -----------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000304b-SAS-CompFeed     INDIA                          Low_Birth          Control              NA                 0.1564626   -0.3827462    0.4854042
Birth       ki1000304b-SAS-CompFeed     INDIA                          Medium_Birth       Control              NA                -0.4000000   -1.0817074    0.0584652
Birth       ki1000304b-SAS-CompFeed     INDIA                          High_Birth         Control              NA                 1.0000000    0.9999999    1.0000000
Birth       ki1119695-PROBIT            BELARUS                        Low_Birth          Control              NA                -0.3702365   -1.5064675    0.2509187
Birth       ki1119695-PROBIT            BELARUS                        Medium_Birth       Control              NA                -0.3130041   -1.1083321    0.1823016
Birth       ki1126311-ZVITAMBO          ZIMBABWE                       Low_Birth          Control              NA                 0.1035521   -0.0851150    0.2594159
Birth       ki1126311-ZVITAMBO          ZIMBABWE                       Medium_Birth       Control              NA                 0.0957362   -0.0811814    0.2437041
Birth       ki1126311-ZVITAMBO          ZIMBABWE                       High_Birth         Control              NA                -0.1094062   -0.2392722    0.0068508
Birth       ki1135781-COHORTS           GUATEMALA                      Low_Birth          Control              NA                 0.2333333   -0.2504874    0.5299611
Birth       ki1135781-COHORTS           GUATEMALA                      Medium_Birth       Control              NA                 0.0370370   -0.9777585    0.5311370
Birth       ki1135781-COHORTS           GUATEMALA                      High_Birth         Control              NA                 0.1523809   -0.5503923    0.5365960
Birth       kiGH5241-JiVitA-3           BANGLADESH                     Low_Birth          Control              NA                -0.0474104   -0.0846178   -0.0114793
Birth       kiGH5241-JiVitA-3           BANGLADESH                     Medium_Birth       Control              NA                -0.0564829   -0.0977112   -0.0168031
Birth       kiGH5241-JiVitA-3           BANGLADESH                     High_Birth         Control              NA                -0.0737256   -0.1263220   -0.0235854
Birth       kiGH5241-JiVitA-4           BANGLADESH                     Low_Birth          Control              NA                 0.0124098   -0.2875127    0.2424662
Birth       kiGH5241-JiVitA-4           BANGLADESH                     High_Birth         Control              NA                -0.0666667   -1.1258735    0.4647952
6 months    iLiNS_DYADM_LNS             MALAWI                         Low_6 months       Control              NA                -0.0084034   -0.2689321    0.1986353
6 months    iLiNS_DYADM_LNS             MALAWI                         Medium_6 months    Control              NA                -0.0862799   -0.2901372    0.0853655
6 months    iLiNS_DYADM_LNS             MALAWI                         High_6 months      Control              NA                 0.0922953   -0.3087892    0.3704657
6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Low_6 months       Control              NA                 0.2500000   -0.3292259    0.5768214
6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Medium_6 months    Control              NA                -0.9333333   -1.8168267   -0.3269463
6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     High_6 months      Control              NA                -0.3278689   -1.2635932    0.2210457
6 months    ki1000111-WASH-Kenya        KENYA                          Low_6 months       Control              NA                 0.5625000   -1.5090635    0.9237141
6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Low_6 months       Control              NA                -0.0892857   -0.4194142    0.1640612
6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Medium_6 months    Control              NA                 0.1666667   -0.8184280    0.6181073
6 months    ki1000304-EU                INDIA                          Low_6 months       Control              NA                 0.0692308   -0.1696629    0.2593324
6 months    ki1000304-EU                INDIA                          Medium_6 months    Control              NA                -0.1444569   -0.3946733    0.0608685
6 months    ki1000304-EU                INDIA                          High_6 months      Control              NA                -0.3043478   -0.6107473   -0.0562323
6 months    ki1000304-VITAMIN-A         INDIA                          Low_6 months       Control              NA                -0.0156712   -0.0841994    0.0485255
6 months    ki1000304-VITAMIN-A         INDIA                          Medium_6 months    Control              NA                -0.0559606   -0.1597937    0.0385766
6 months    ki1000304-VITAMIN-A         INDIA                          High_6 months      Control              NA                -0.0762124   -0.2627708    0.0827844
6 months    ki1000304-Vitamin-B12       INDIA                          Low_6 months       Control              NA                -0.3333333   -2.3251673    0.4653569
6 months    ki1000304-Vitamin-B12       INDIA                          Medium_6 months    Control              NA                -0.5306122   -2.1490591    0.2560401
6 months    ki1000304-Vitamin-B12       INDIA                          High_6 months      Control              NA                 0.2380952   -3.0643546    0.8571732
6 months    ki1000304-ZnMort            INDIA                          Low_6 months       Control              NA                -0.0652174   -0.3773736    0.1761944
6 months    ki1000304-ZnMort            INDIA                          Medium_6 months    Control              NA                 0.2094118   -0.2640666    0.5055405
6 months    ki1000304-ZnMort            INDIA                          High_6 months      Control              NA                -0.1781609   -0.5054910    0.0779997
6 months    ki1000304b-SAS-CompFeed     INDIA                          Low_6 months       Control              NA                 0.0809566   -0.0187608    0.1709136
6 months    ki1000304b-SAS-CompFeed     INDIA                          Medium_6 months    Control              NA                -0.0361513   -0.3631764    0.2124207
6 months    ki1000304b-SAS-CompFeed     INDIA                          High_6 months      Control              NA                -0.2017045   -0.8061985    0.2004789
6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Low_6 months       Control              NA                -0.1856735   -0.4357548    0.0208484
6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Medium_6 months    Control              NA                -0.5647059   -1.3286851   -0.0513678
6 months    ki1000304b-SAS-FoodSuppl    INDIA                          High_6 months      Control              NA                 0.0000000   -1.8275988    0.6463430
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Low_6 months       Control              NA                -1.0439560   -3.5427118    0.0803387
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Medium_6 months    Control              NA                 0.0534611   -0.2527851    0.2848447
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   High_6 months      Control              NA                -0.1033592   -0.7869791    0.3187377
6 months    ki1112895-Guatemala BSC     GUATEMALA                      Low_6 months       Control              NA                -0.1003135   -0.4475402    0.1636227
6 months    ki1112895-Guatemala BSC     GUATEMALA                      Medium_6 months    Control              NA                -0.1408669   -0.5875712    0.1801456
6 months    ki1112895-Guatemala BSC     GUATEMALA                      High_6 months      Control              NA                 0.0520833   -0.4276549    0.3706140
6 months    ki1119695-PROBIT            BELARUS                        Low_6 months       Control              NA                -0.1858821   -0.4413469    0.0243040
6 months    ki1119695-PROBIT            BELARUS                        Medium_6 months    Control              NA                -0.0855021   -0.3310413    0.1147421
6 months    ki1119695-PROBIT            BELARUS                        High_6 months      Control              NA                -0.2657939   -0.6825010    0.0477068
6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Low_6 months       Control              NA                -0.0138509   -0.2061765    0.1478083
6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Medium_6 months    Control              NA                 0.0939775   -0.0759700    0.2370822
6 months    ki1126311-ZVITAMBO          ZIMBABWE                       High_6 months      Control              NA                -0.0121660   -0.1491175    0.1084638
6 months    ki1135781-COHORTS           GUATEMALA                      Low_6 months       Control              NA                -0.0753734   -0.1979671    0.0346746
6 months    ki1135781-COHORTS           GUATEMALA                      Medium_6 months    Control              NA                -0.2708126   -0.4456861   -0.1170922
6 months    ki1135781-COHORTS           GUATEMALA                      High_6 months      Control              NA                -0.0421157   -0.1853604    0.0838186
6 months    ki1148112-iLiNS-DOSE        MALAWI                         Low_6 months       Control              NA                -0.1027451   -0.3844474    0.1216374
6 months    ki1148112-iLiNS-DOSE        MALAWI                         Medium_6 months    Control              NA                -0.2237715   -0.5751004    0.0491929
6 months    ki1148112-iLiNS-DOSE        MALAWI                         High_6 months      Control              NA                 0.0415576   -0.2639626    0.2732287
6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Low_6 months       Control              NA                 0.0403173   -0.2542966    0.2657311
6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Medium_6 months    Control              NA                -0.1555414   -0.4140286    0.0556938
6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         High_6 months      Control              NA                 0.1333333   -0.3218350    0.4317664
6 months    ki1148112-LCNI-5            MALAWI                         Low_6 months       Control              NA                -0.0396978   -0.3149525    0.1779388
6 months    ki1148112-LCNI-5            MALAWI                         Medium_6 months    Control              NA                 0.1400570   -0.1959140    0.3816429
6 months    ki1148112-LCNI-5            MALAWI                         High_6 months      Control              NA                 0.1591922   -0.1841274    0.4029715
6 months    kiGH5241-JiVitA-3           BANGLADESH                     Low_6 months       Control              NA                -0.0389233   -0.0916011    0.0112125
6 months    kiGH5241-JiVitA-3           BANGLADESH                     Medium_6 months    Control              NA                -0.0412420   -0.0952433    0.0100967
6 months    kiGH5241-JiVitA-3           BANGLADESH                     High_6 months      Control              NA                -0.0579070   -0.1205299    0.0012161
6 months    kiGH5241-JiVitA-4           BANGLADESH                     Low_6 months       Control              NA                -0.0163876   -0.1690494    0.1163387
6 months    kiGH5241-JiVitA-4           BANGLADESH                     Medium_6 months    Control              NA                -0.2333966   -1.2857808    0.3344650
6 months    kiGH5241-JiVitA-4           BANGLADESH                     High_6 months      Control              NA                 0.2151416   -0.4799662    0.5837725
24 months   iLiNS_DYADM_LNS             MALAWI                         Low_24 months      Control              NA                -0.2000000   -1.9281153    0.5082161
24 months   iLiNS_DYADM_LNS             MALAWI                         Medium_24 months   Control              NA                -0.3333333   -1.8593577    0.3782597
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Low_24 months      Control              NA                -0.0359477   -0.2640950    0.1510229
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Medium_24 months   Control              NA                -0.0512731   -0.2703805    0.1300440
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     High_24 months     Control              NA                -0.0680096   -0.3540326    0.1575945
24 months   ki1000111-WASH-Kenya        KENYA                          Low_24 months      Control              NA                -0.0866667   -0.1961980    0.0128353
24 months   ki1000111-WASH-Kenya        KENYA                          Medium_24 months   Control              NA                 0.2397629    0.0189129    0.4108980
24 months   ki1000111-WASH-Kenya        KENYA                          High_24 months     Control              NA                 0.0927561   -0.1630092    0.2922742
24 months   ki1000304-EU                INDIA                          Low_24 months      Control              NA                -0.0825397   -0.2448220    0.0585866
24 months   ki1000304-EU                INDIA                          Medium_24 months   Control              NA                -0.0837556   -0.2415482    0.0539826
24 months   ki1000304-EU                INDIA                          High_24 months     Control              NA                 0.0837438   -0.2643927    0.3360249
24 months   ki1000304-Vitamin-B12       INDIA                          Low_24 months      Control              NA                 0.3315972   -0.0945647    0.5918356
24 months   ki1000304-Vitamin-B12       INDIA                          Medium_24 months   Control              NA                -0.0582011   -0.7836267    0.3721839
24 months   ki1000304-Vitamin-B12       INDIA                          High_24 months     Control              NA                -0.1212121   -2.1845168    0.6052410
24 months   ki1000304-ZnMort            INDIA                          Low_24 months      Control              NA                -0.0102041   -0.1590553    0.1195310
24 months   ki1000304-ZnMort            INDIA                          Medium_24 months   Control              NA                -0.0483871   -0.2455797    0.1175872
24 months   ki1000304-ZnMort            INDIA                          High_24 months     Control              NA                -0.3600000   -1.1274963    0.1306213
24 months   ki1119695-PROBIT            BELARUS                        Low_24 months      Control              NA                -0.1655270   -1.0476018    0.3365638
24 months   ki1119695-PROBIT            BELARUS                        Medium_24 months   Control              NA                -0.0581268   -0.9073931    0.4130039
24 months   ki1119695-PROBIT            BELARUS                        High_24 months     Control              NA                 0.1111111   -3.7088696    0.8322053
24 months   ki1126311-ZVITAMBO          ZIMBABWE                       High_24 months     Control              NA                 0.3750000   -0.3173878    0.7034852
24 months   ki1135781-COHORTS           GUATEMALA                      Low_24 months      Control              NA                -0.0949847   -0.1900819   -0.0074866
24 months   ki1135781-COHORTS           GUATEMALA                      Medium_24 months   Control              NA                 0.0072289   -0.0857373    0.0922349
24 months   ki1135781-COHORTS           GUATEMALA                      High_24 months     Control              NA                 0.0391616   -0.1014413    0.1618160
24 months   ki1148112-iLiNS-DOSE        MALAWI                         Low_24 months      Control              NA                 0.0487805   -0.2501688    0.2762429
24 months   ki1148112-iLiNS-DOSE        MALAWI                         Medium_24 months   Control              NA                -0.0164428   -0.3402004    0.2291034
24 months   ki1148112-iLiNS-DOSE        MALAWI                         High_24 months     Control              NA                -0.0698529   -0.3939197    0.1788729
24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Low_24 months      Control              NA                 0.0800000   -1.4381520    0.6528518
24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Medium_24 months   Control              NA                -0.3333333   -1.9111565    0.3893225
24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         High_24 months     Control              NA                -1.5000000   -3.9685956   -0.2579007
24 months   ki1148112-LCNI-5            MALAWI                         Low_24 months      Control              NA                -0.2520325   -0.5865801    0.0119721
24 months   ki1148112-LCNI-5            MALAWI                         Medium_24 months   Control              NA                 0.3641304   -0.0459054    0.6134162
24 months   ki1148112-LCNI-5            MALAWI                         High_24 months     Control              NA                 0.0533537   -0.5445831    0.4198180
24 months   kiGH5241-JiVitA-3           BANGLADESH                     Low_24 months      Control              NA                 0.2380952   -0.1590189    0.4991463
24 months   kiGH5241-JiVitA-3           BANGLADESH                     Medium_24 months   Control              NA                 0.2909091   -0.4645863    0.6566881
24 months   kiGH5241-JiVitA-3           BANGLADESH                     High_24 months     Control              NA                -0.1662782   -0.5612744    0.1287856
24 months   kiGH5241-JiVitA-4           BANGLADESH                     Low_24 months      Control              NA                -0.1049365   -0.3123616    0.0697040
24 months   kiGH5241-JiVitA-4           BANGLADESH                     Medium_24 months   Control              NA                -0.7261905   -2.2019850    0.0694105
24 months   kiGH5241-JiVitA-4           BANGLADESH                     High_24 months     Control              NA                 1.0000000    1.0000000    1.0000000
