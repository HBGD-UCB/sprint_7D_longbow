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
* intXmeducyrs

## Data Summary

agecat      studyid                     country                        intXmeducyrs        sstunted   n_cell       n
----------  --------------------------  -----------------------------  -----------------  ---------  -------  ------
Birth       iLiNS_DYADM_LNS             MALAWI                         High_Birth                 0        0       1
Birth       iLiNS_DYADM_LNS             MALAWI                         High_Birth                 1        1       1
Birth       ki1000125-AgaKhanUniv       PAKISTAN                       Low_Birth                  0        3       3
Birth       ki1000125-AgaKhanUniv       PAKISTAN                       Low_Birth                  1        0       3
Birth       ki1000125-AgaKhanUniv       PAKISTAN                       Medium_Birth               0        1       1
Birth       ki1000125-AgaKhanUniv       PAKISTAN                       Medium_Birth               1        0       1
Birth       ki1000304b-SAS-CompFeed     INDIA                          Low_Birth                  0       55      62
Birth       ki1000304b-SAS-CompFeed     INDIA                          Low_Birth                  1        7      62
Birth       ki1000304b-SAS-CompFeed     INDIA                          Medium_Birth               0       54      56
Birth       ki1000304b-SAS-CompFeed     INDIA                          Medium_Birth               1        2      56
Birth       ki1000304b-SAS-CompFeed     INDIA                          High_Birth                 0       24      26
Birth       ki1000304b-SAS-CompFeed     INDIA                          High_Birth                 1        2      26
Birth       ki1119695-PROBIT            BELARUS                        Low_Birth                  0     4961    4962
Birth       ki1119695-PROBIT            BELARUS                        Low_Birth                  1        1    4962
Birth       ki1119695-PROBIT            BELARUS                        Medium_Birth               0     6670    6674
Birth       ki1119695-PROBIT            BELARUS                        Medium_Birth               1        4    6674
Birth       ki1119695-PROBIT            BELARUS                        High_Birth                 0     2248    2248
Birth       ki1119695-PROBIT            BELARUS                        High_Birth                 1        0    2248
Birth       ki1126311-ZVITAMBO          ZIMBABWE                       Low_Birth                  0     2794    2904
Birth       ki1126311-ZVITAMBO          ZIMBABWE                       Low_Birth                  1      110    2904
Birth       ki1126311-ZVITAMBO          ZIMBABWE                       Medium_Birth               0     3301    3419
Birth       ki1126311-ZVITAMBO          ZIMBABWE                       Medium_Birth               1      118    3419
Birth       ki1126311-ZVITAMBO          ZIMBABWE                       High_Birth                 0     7274    7487
Birth       ki1126311-ZVITAMBO          ZIMBABWE                       High_Birth                 1      213    7487
Birth       ki1135781-COHORTS           GUATEMALA                      Low_Birth                  0      384     391
Birth       ki1135781-COHORTS           GUATEMALA                      Low_Birth                  1        7     391
Birth       ki1135781-COHORTS           GUATEMALA                      Medium_Birth               0      270     273
Birth       ki1135781-COHORTS           GUATEMALA                      Medium_Birth               1        3     273
Birth       ki1135781-COHORTS           GUATEMALA                      High_Birth                 0      177     178
Birth       ki1135781-COHORTS           GUATEMALA                      High_Birth                 1        1     178
Birth       ki1148112-iLiNS-DYAD-M      MALAWI                         High_Birth                 0        0       1
Birth       ki1148112-iLiNS-DYAD-M      MALAWI                         High_Birth                 1        1       1
Birth       kiGH5241-JiVitA-3           BANGLADESH                     Low_Birth                  0    13972   15794
Birth       kiGH5241-JiVitA-3           BANGLADESH                     Low_Birth                  1     1822   15794
Birth       kiGH5241-JiVitA-3           BANGLADESH                     Medium_Birth               0    10874   12276
Birth       kiGH5241-JiVitA-3           BANGLADESH                     Medium_Birth               1     1402   12276
Birth       kiGH5241-JiVitA-3           BANGLADESH                     High_Birth                 0    10246   11104
Birth       kiGH5241-JiVitA-3           BANGLADESH                     High_Birth                 1      858   11104
Birth       kiGH5241-JiVitA-4           BANGLADESH                     Low_Birth                  0      658     708
Birth       kiGH5241-JiVitA-4           BANGLADESH                     Low_Birth                  1       50     708
Birth       kiGH5241-JiVitA-4           BANGLADESH                     Medium_Birth               0       10      10
Birth       kiGH5241-JiVitA-4           BANGLADESH                     Medium_Birth               1        0      10
Birth       kiGH5241-JiVitA-4           BANGLADESH                     High_Birth                 0       12      16
Birth       kiGH5241-JiVitA-4           BANGLADESH                     High_Birth                 1        4      16
6 months    iLiNS_DYADM_LNS             MALAWI                         Low_6 months               0      233     240
6 months    iLiNS_DYADM_LNS             MALAWI                         Low_6 months               1        7     240
6 months    iLiNS_DYADM_LNS             MALAWI                         Medium_6 months            0      249     269
6 months    iLiNS_DYADM_LNS             MALAWI                         Medium_6 months            1       20     269
6 months    iLiNS_DYADM_LNS             MALAWI                         High_6 months              0      168     174
6 months    iLiNS_DYADM_LNS             MALAWI                         High_6 months              1        6     174
6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Low_6 months               0      193     207
6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Low_6 months               1       14     207
6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Medium_6 months            0      222     232
6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Medium_6 months            1       10     232
6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     High_6 months              0      239     243
6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     High_6 months              1        4     243
6 months    ki1000111-WASH-Kenya        KENYA                          Low_6 months               0       33      35
6 months    ki1000111-WASH-Kenya        KENYA                          Low_6 months               1        2      35
6 months    ki1000111-WASH-Kenya        KENYA                          Medium_6 months            0       23      24
6 months    ki1000111-WASH-Kenya        KENYA                          Medium_6 months            1        1      24
6 months    ki1000111-WASH-Kenya        KENYA                          High_6 months              0       15      15
6 months    ki1000111-WASH-Kenya        KENYA                          High_6 months              1        0      15
6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Low_6 months               0      113     122
6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Low_6 months               1        9     122
6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Medium_6 months            0       34      35
6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Medium_6 months            1        1      35
6 months    ki1000125-AgaKhanUniv       PAKISTAN                       High_6 months              0       27      27
6 months    ki1000125-AgaKhanUniv       PAKISTAN                       High_6 months              1        0      27
6 months    ki1000304-EU                INDIA                          Low_6 months               0      104     121
6 months    ki1000304-EU                INDIA                          Low_6 months               1       17     121
6 months    ki1000304-EU                INDIA                          Medium_6 months            0      130     146
6 months    ki1000304-EU                INDIA                          Medium_6 months            1       16     146
6 months    ki1000304-EU                INDIA                          High_6 months              0       89      95
6 months    ki1000304-EU                INDIA                          High_6 months              1        6      95
6 months    ki1000304-VITAMIN-A         INDIA                          Low_6 months               0     1042    1191
6 months    ki1000304-VITAMIN-A         INDIA                          Low_6 months               1      149    1191
6 months    ki1000304-VITAMIN-A         INDIA                          Medium_6 months            0      752     830
6 months    ki1000304-VITAMIN-A         INDIA                          Medium_6 months            1       78     830
6 months    ki1000304-VITAMIN-A         INDIA                          High_6 months              0      467     485
6 months    ki1000304-VITAMIN-A         INDIA                          High_6 months              1       18     485
6 months    ki1000304-Vitamin-B12       INDIA                          Low_6 months               0       21      24
6 months    ki1000304-Vitamin-B12       INDIA                          Low_6 months               1        3      24
6 months    ki1000304-Vitamin-B12       INDIA                          Medium_6 months            0       23      25
6 months    ki1000304-Vitamin-B12       INDIA                          Medium_6 months            1        2      25
6 months    ki1000304-Vitamin-B12       INDIA                          High_6 months              0       30      32
6 months    ki1000304-Vitamin-B12       INDIA                          High_6 months              1        2      32
6 months    ki1000304-ZnMort            INDIA                          Low_6 months               0       53      56
6 months    ki1000304-ZnMort            INDIA                          Low_6 months               1        3      56
6 months    ki1000304-ZnMort            INDIA                          Medium_6 months            0       41      48
6 months    ki1000304-ZnMort            INDIA                          Medium_6 months            1        7      48
6 months    ki1000304-ZnMort            INDIA                          High_6 months              0       38      41
6 months    ki1000304-ZnMort            INDIA                          High_6 months              1        3      41
6 months    ki1000304b-SAS-CompFeed     INDIA                          Low_6 months               0      234     269
6 months    ki1000304b-SAS-CompFeed     INDIA                          Low_6 months               1       35     269
6 months    ki1000304b-SAS-CompFeed     INDIA                          Medium_6 months            0      193     207
6 months    ki1000304b-SAS-CompFeed     INDIA                          Medium_6 months            1       14     207
6 months    ki1000304b-SAS-CompFeed     INDIA                          High_6 months              0      135     141
6 months    ki1000304b-SAS-CompFeed     INDIA                          High_6 months              1        6     141
6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Low_6 months               0      239     284
6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Low_6 months               1       45     284
6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Medium_6 months            0       33      38
6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Medium_6 months            1        5      38
6 months    ki1000304b-SAS-FoodSuppl    INDIA                          High_6 months              0       31      33
6 months    ki1000304b-SAS-FoodSuppl    INDIA                          High_6 months              1        2      33
6 months    ki1017093b-PROVIDE          BANGLADESH                     Low_6 months               0       15      16
6 months    ki1017093b-PROVIDE          BANGLADESH                     Low_6 months               1        1      16
6 months    ki1017093b-PROVIDE          BANGLADESH                     Medium_6 months            0       19      19
6 months    ki1017093b-PROVIDE          BANGLADESH                     Medium_6 months            1        0      19
6 months    ki1017093b-PROVIDE          BANGLADESH                     High_6 months              0       11      11
6 months    ki1017093b-PROVIDE          BANGLADESH                     High_6 months              1        0      11
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Low_6 months               0       62      62
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Low_6 months               1        0      62
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Medium_6 months            0     1195    1212
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Medium_6 months            1       17    1212
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   High_6 months              0      420     427
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   High_6 months              1        7     427
6 months    ki1112895-Burkina Faso Zn   BURKINA FASO                   Low_6 months               0      390     402
6 months    ki1112895-Burkina Faso Zn   BURKINA FASO                   Low_6 months               1       12     402
6 months    ki1112895-Burkina Faso Zn   BURKINA FASO                   Medium_6 months            0       80      81
6 months    ki1112895-Burkina Faso Zn   BURKINA FASO                   Medium_6 months            1        1      81
6 months    ki1112895-Burkina Faso Zn   BURKINA FASO                   High_6 months              0       18      18
6 months    ki1112895-Burkina Faso Zn   BURKINA FASO                   High_6 months              1        0      18
6 months    ki1112895-Guatemala BSC     GUATEMALA                      Low_6 months               0       48      54
6 months    ki1112895-Guatemala BSC     GUATEMALA                      Low_6 months               1        6      54
6 months    ki1112895-Guatemala BSC     GUATEMALA                      Medium_6 months            0       63      67
6 months    ki1112895-Guatemala BSC     GUATEMALA                      Medium_6 months            1        4      67
6 months    ki1112895-Guatemala BSC     GUATEMALA                      High_6 months              0       81      91
6 months    ki1112895-Guatemala BSC     GUATEMALA                      High_6 months              1       10      91
6 months    ki1119695-PROBIT            BELARUS                        Low_6 months               0     5067    5179
6 months    ki1119695-PROBIT            BELARUS                        Low_6 months               1      112    5179
6 months    ki1119695-PROBIT            BELARUS                        Medium_6 months            0     6779    6872
6 months    ki1119695-PROBIT            BELARUS                        Medium_6 months            1       93    6872
6 months    ki1119695-PROBIT            BELARUS                        High_6 months              0     2424    2449
6 months    ki1119695-PROBIT            BELARUS                        High_6 months              1       25    2449
6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Low_6 months               0     1541    1617
6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Low_6 months               1       76    1617
6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Medium_6 months            0     1857    1955
6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Medium_6 months            1       98    1955
6 months    ki1126311-ZVITAMBO          ZIMBABWE                       High_6 months              0     4036    4193
6 months    ki1126311-ZVITAMBO          ZIMBABWE                       High_6 months              1      157    4193
6 months    ki1135781-COHORTS           GUATEMALA                      Low_6 months               0      367     435
6 months    ki1135781-COHORTS           GUATEMALA                      Low_6 months               1       68     435
6 months    ki1135781-COHORTS           GUATEMALA                      Medium_6 months            0      279     309
6 months    ki1135781-COHORTS           GUATEMALA                      Medium_6 months            1       30     309
6 months    ki1135781-COHORTS           GUATEMALA                      High_6 months              0      156     179
6 months    ki1135781-COHORTS           GUATEMALA                      High_6 months              1       23     179
6 months    ki1148112-iLiNS-DOSE        MALAWI                         Low_6 months               0      551     592
6 months    ki1148112-iLiNS-DOSE        MALAWI                         Low_6 months               1       41     592
6 months    ki1148112-iLiNS-DOSE        MALAWI                         Medium_6 months            0      523     565
6 months    ki1148112-iLiNS-DOSE        MALAWI                         Medium_6 months            1       42     565
6 months    ki1148112-iLiNS-DOSE        MALAWI                         High_6 months              0      669     709
6 months    ki1148112-iLiNS-DOSE        MALAWI                         High_6 months              1       40     709
6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Low_6 months               0      349     363
6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Low_6 months               1       14     363
6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Medium_6 months            0      368     399
6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Medium_6 months            1       31     399
6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         High_6 months              0      259     267
6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         High_6 months              1        8     267
6 months    ki1148112-LCNI-5            MALAWI                         Low_6 months               0      233     261
6 months    ki1148112-LCNI-5            MALAWI                         Low_6 months               1       28     261
6 months    ki1148112-LCNI-5            MALAWI                         Medium_6 months            0      236     254
6 months    ki1148112-LCNI-5            MALAWI                         Medium_6 months            1       18     254
6 months    ki1148112-LCNI-5            MALAWI                         High_6 months              0      279     298
6 months    ki1148112-LCNI-5            MALAWI                         High_6 months              1       19     298
6 months    kiGH5241-JiVitA-3           BANGLADESH                     Low_6 months               0    10362   11199
6 months    kiGH5241-JiVitA-3           BANGLADESH                     Low_6 months               1      837   11199
6 months    kiGH5241-JiVitA-3           BANGLADESH                     Medium_6 months            0     9766   10461
6 months    kiGH5241-JiVitA-3           BANGLADESH                     Medium_6 months            1      695   10461
6 months    kiGH5241-JiVitA-3           BANGLADESH                     High_6 months              0    11292   11789
6 months    kiGH5241-JiVitA-3           BANGLADESH                     High_6 months              1      497   11789
6 months    kiGH5241-JiVitA-4           BANGLADESH                     Low_6 months               0     3498    3704
6 months    kiGH5241-JiVitA-4           BANGLADESH                     Low_6 months               1      206    3704
6 months    kiGH5241-JiVitA-4           BANGLADESH                     Medium_6 months            0      122     130
6 months    kiGH5241-JiVitA-4           BANGLADESH                     Medium_6 months            1        8     130
6 months    kiGH5241-JiVitA-4           BANGLADESH                     High_6 months              0      121     131
6 months    kiGH5241-JiVitA-4           BANGLADESH                     High_6 months              1       10     131
24 months   iLiNS_DYADM_LNS             MALAWI                         Low_24 months              0       14      15
24 months   iLiNS_DYADM_LNS             MALAWI                         Low_24 months              1        1      15
24 months   iLiNS_DYADM_LNS             MALAWI                         Medium_24 months           0       11      12
24 months   iLiNS_DYADM_LNS             MALAWI                         Medium_24 months           1        1      12
24 months   iLiNS_DYADM_LNS             MALAWI                         High_24 months             0        6       8
24 months   iLiNS_DYADM_LNS             MALAWI                         High_24 months             1        2       8
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Low_24 months              0      270     317
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Low_24 months              1       47     317
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Medium_24 months           0      351     411
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Medium_24 months           1       60     411
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     High_24 months             0      427     459
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     High_24 months             1       32     459
24 months   ki1000111-WASH-Kenya        KENYA                          Low_24 months              0     1070    1208
24 months   ki1000111-WASH-Kenya        KENYA                          Low_24 months              1      138    1208
24 months   ki1000111-WASH-Kenya        KENYA                          Medium_24 months           0      471     498
24 months   ki1000111-WASH-Kenya        KENYA                          Medium_24 months           1       27     498
24 months   ki1000111-WASH-Kenya        KENYA                          High_24 months             0      538     555
24 months   ki1000111-WASH-Kenya        KENYA                          High_24 months             1       17     555
24 months   ki1000304-EU                INDIA                          Low_24 months              0       66      88
24 months   ki1000304-EU                INDIA                          Low_24 months              1       22      88
24 months   ki1000304-EU                INDIA                          Medium_24 months           0       74     101
24 months   ki1000304-EU                INDIA                          Medium_24 months           1       27     101
24 months   ki1000304-EU                INDIA                          High_24 months             0       56      62
24 months   ki1000304-EU                INDIA                          High_24 months             1        6      62
24 months   ki1000304-Vitamin-B12       INDIA                          Low_24 months              0       39      55
24 months   ki1000304-Vitamin-B12       INDIA                          Low_24 months              1       16      55
24 months   ki1000304-Vitamin-B12       INDIA                          Medium_24 months           0       33      40
24 months   ki1000304-Vitamin-B12       INDIA                          Medium_24 months           1        7      40
24 months   ki1000304-Vitamin-B12       INDIA                          High_24 months             0       35      37
24 months   ki1000304-Vitamin-B12       INDIA                          High_24 months             1        2      37
24 months   ki1000304-ZnMort            INDIA                          Low_24 months              0       33      54
24 months   ki1000304-ZnMort            INDIA                          Low_24 months              1       21      54
24 months   ki1000304-ZnMort            INDIA                          Medium_24 months           0       42      52
24 months   ki1000304-ZnMort            INDIA                          Medium_24 months           1       10      52
24 months   ki1000304-ZnMort            INDIA                          High_24 months             0       31      34
24 months   ki1000304-ZnMort            INDIA                          High_24 months             1        3      34
24 months   ki1017093b-PROVIDE          BANGLADESH                     Medium_24 months           0        1       1
24 months   ki1017093b-PROVIDE          BANGLADESH                     Medium_24 months           1        0       1
24 months   ki1017093b-PROVIDE          BANGLADESH                     High_24 months             0        1       1
24 months   ki1017093b-PROVIDE          BANGLADESH                     High_24 months             1        0       1
24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Medium_24 months           0        3       4
24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Medium_24 months           1        1       4
24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Low_24 months              0      707     805
24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Low_24 months              1       98     805
24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Medium_24 months           0      137     152
24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Medium_24 months           1       15     152
24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   High_24 months             0       35      38
24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   High_24 months             1        3      38
24 months   ki1119695-PROBIT            BELARUS                        Low_24 months              0      294     305
24 months   ki1119695-PROBIT            BELARUS                        Low_24 months              1       11     305
24 months   ki1119695-PROBIT            BELARUS                        Medium_24 months           0      396     402
24 months   ki1119695-PROBIT            BELARUS                        Medium_24 months           1        6     402
24 months   ki1119695-PROBIT            BELARUS                        High_24 months             0      133     134
24 months   ki1119695-PROBIT            BELARUS                        High_24 months             1        1     134
24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Low_24 months              0        4       9
24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Low_24 months              1        5       9
24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Medium_24 months           0        4       8
24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Medium_24 months           1        4       8
24 months   ki1126311-ZVITAMBO          ZIMBABWE                       High_24 months             0       14      20
24 months   ki1126311-ZVITAMBO          ZIMBABWE                       High_24 months             1        6      20
24 months   ki1135781-COHORTS           GUATEMALA                      Low_24 months              0       86     156
24 months   ki1135781-COHORTS           GUATEMALA                      Low_24 months              1       70     156
24 months   ki1135781-COHORTS           GUATEMALA                      Medium_24 months           0       65     103
24 months   ki1135781-COHORTS           GUATEMALA                      Medium_24 months           1       38     103
24 months   ki1135781-COHORTS           GUATEMALA                      High_24 months             0       36      67
24 months   ki1135781-COHORTS           GUATEMALA                      High_24 months             1       31      67
24 months   ki1148112-iLiNS-DOSE        MALAWI                         Low_24 months              0      203     247
24 months   ki1148112-iLiNS-DOSE        MALAWI                         Low_24 months              1       44     247
24 months   ki1148112-iLiNS-DOSE        MALAWI                         Medium_24 months           0      177     231
24 months   ki1148112-iLiNS-DOSE        MALAWI                         Medium_24 months           1       54     231
24 months   ki1148112-iLiNS-DOSE        MALAWI                         High_24 months             0      250     291
24 months   ki1148112-iLiNS-DOSE        MALAWI                         High_24 months             1       41     291
24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Low_24 months              0       19      23
24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Low_24 months              1        4      23
24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Medium_24 months           0       18      22
24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Medium_24 months           1        4      22
24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         High_24 months             0       18      20
24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         High_24 months             1        2      20
24 months   ki1148112-LCNI-5            MALAWI                         Low_24 months              0      108     126
24 months   ki1148112-LCNI-5            MALAWI                         Low_24 months              1       18     126
24 months   ki1148112-LCNI-5            MALAWI                         Medium_24 months           0      104     117
24 months   ki1148112-LCNI-5            MALAWI                         Medium_24 months           1       13     117
24 months   ki1148112-LCNI-5            MALAWI                         High_24 months             0      131     138
24 months   ki1148112-LCNI-5            MALAWI                         High_24 months             1        7     138
24 months   kiGH5241-JiVitA-3           BANGLADESH                     Low_24 months              0       28      40
24 months   kiGH5241-JiVitA-3           BANGLADESH                     Low_24 months              1       12      40
24 months   kiGH5241-JiVitA-3           BANGLADESH                     Medium_24 months           0       26      39
24 months   kiGH5241-JiVitA-3           BANGLADESH                     Medium_24 months           1       13      39
24 months   kiGH5241-JiVitA-3           BANGLADESH                     High_24 months             0       64      79
24 months   kiGH5241-JiVitA-3           BANGLADESH                     High_24 months             1       15      79
24 months   kiGH5241-JiVitA-4           BANGLADESH                     Low_24 months              0      716     797
24 months   kiGH5241-JiVitA-4           BANGLADESH                     Low_24 months              1       81     797
24 months   kiGH5241-JiVitA-4           BANGLADESH                     Medium_24 months           0       26      29
24 months   kiGH5241-JiVitA-4           BANGLADESH                     Medium_24 months           1        3      29
24 months   kiGH5241-JiVitA-4           BANGLADESH                     High_24 months             0       25      31
24 months   kiGH5241-JiVitA-4           BANGLADESH                     High_24 months             1        6      31


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
* agecat: Birth, studyid: ki1000304b-SAS-CompFeed, country: INDIA, intXmeducyrs: Medium_Birth
* agecat: Birth, studyid: ki1000304b-SAS-CompFeed, country: INDIA, intXmeducyrs: High_Birth
* agecat: Birth, studyid: ki1119695-PROBIT, country: BELARUS, intXmeducyrs: Low_Birth
* agecat: Birth, studyid: ki1119695-PROBIT, country: BELARUS, intXmeducyrs: Medium_Birth
* agecat: Birth, studyid: ki1119695-PROBIT, country: BELARUS, intXmeducyrs: High_Birth
* agecat: Birth, studyid: ki1135781-COHORTS, country: GUATEMALA, intXmeducyrs: Medium_Birth
* agecat: Birth, studyid: ki1135781-COHORTS, country: GUATEMALA, intXmeducyrs: High_Birth
* agecat: Birth, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI, intXmeducyrs: High_Birth
* agecat: Birth, studyid: kiGH5241-JiVitA-4, country: BANGLADESH, intXmeducyrs: Medium_Birth
* agecat: Birth, studyid: kiGH5241-JiVitA-4, country: BANGLADESH, intXmeducyrs: High_Birth
* agecat: 6 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH, intXmeducyrs: High_6 months
* agecat: 6 months, studyid: ki1000111-WASH-Kenya, country: KENYA, intXmeducyrs: Low_6 months
* agecat: 6 months, studyid: ki1000111-WASH-Kenya, country: KENYA, intXmeducyrs: Medium_6 months
* agecat: 6 months, studyid: ki1000111-WASH-Kenya, country: KENYA, intXmeducyrs: High_6 months
* agecat: 6 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN, intXmeducyrs: Medium_6 months
* agecat: 6 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN, intXmeducyrs: High_6 months
* agecat: 6 months, studyid: ki1000304-Vitamin-B12, country: INDIA, intXmeducyrs: Low_6 months
* agecat: 6 months, studyid: ki1000304-Vitamin-B12, country: INDIA, intXmeducyrs: Medium_6 months
* agecat: 6 months, studyid: ki1000304-Vitamin-B12, country: INDIA, intXmeducyrs: High_6 months
* agecat: 6 months, studyid: ki1000304-ZnMort, country: INDIA, intXmeducyrs: Low_6 months
* agecat: 6 months, studyid: ki1000304-ZnMort, country: INDIA, intXmeducyrs: High_6 months
* agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA, intXmeducyrs: High_6 months
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH, intXmeducyrs: Low_6 months
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH, intXmeducyrs: Medium_6 months
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH, intXmeducyrs: High_6 months
* agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF, intXmeducyrs: Low_6 months
* agecat: 6 months, studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO, intXmeducyrs: Medium_6 months
* agecat: 6 months, studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO, intXmeducyrs: High_6 months
* agecat: 6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA, intXmeducyrs: Medium_6 months
* agecat: 24 months, studyid: iLiNS_DYADM_LNS, country: MALAWI, intXmeducyrs: Low_24 months
* agecat: 24 months, studyid: iLiNS_DYADM_LNS, country: MALAWI, intXmeducyrs: Medium_24 months
* agecat: 24 months, studyid: iLiNS_DYADM_LNS, country: MALAWI, intXmeducyrs: High_24 months
* agecat: 24 months, studyid: ki1000304-Vitamin-B12, country: INDIA, intXmeducyrs: High_24 months
* agecat: 24 months, studyid: ki1000304-ZnMort, country: INDIA, intXmeducyrs: High_24 months
* agecat: 24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH, intXmeducyrs: Medium_24 months
* agecat: 24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH, intXmeducyrs: High_24 months
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF, intXmeducyrs: Medium_24 months
* agecat: 24 months, studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO, intXmeducyrs: High_24 months
* agecat: 24 months, studyid: ki1119695-PROBIT, country: BELARUS, intXmeducyrs: High_24 months
* agecat: 24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE, intXmeducyrs: Low_24 months
* agecat: 24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE, intXmeducyrs: Medium_24 months
* agecat: 24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI, intXmeducyrs: Low_24 months
* agecat: 24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI, intXmeducyrs: Medium_24 months
* agecat: 24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI, intXmeducyrs: High_24 months
* agecat: 24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH, intXmeducyrs: Medium_24 months

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
##   Zinc     390  12
##           sstunted
## tr           0   1
##   Control    0   0
##   LNS        0   0
##   Maternal   0   0
##   Other      0   0
##   VitA       0   0
##   Zinc     707  98
##           sstunted
## tr           0   1
##   Control    0   0
##   LNS        0   0
##   Maternal   0   0
##   Other      0   0
##   VitA       0   0
##   Zinc     137  15
```




# Results Detail

## Results Plots
![](/tmp/6417b179-b3af-4896-8839-b24296b41a49/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/6417b179-b3af-4896-8839-b24296b41a49/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/6417b179-b3af-4896-8839-b24296b41a49/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/6417b179-b3af-4896-8839-b24296b41a49/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                     country                        intXmeducyrs       intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------  --------------------------  -----------------------------  -----------------  -------------------  ---------------  ----------  -----------  ----------
Birth       ki1000304b-SAS-CompFeed     INDIA                          Low_Birth          Control              NA                0.0714286   -0.0370475   0.1799046
Birth       ki1000304b-SAS-CompFeed     INDIA                          Low_Birth          Other                NA                0.1470588    0.0543999   0.2397178
Birth       ki1126311-ZVITAMBO          ZIMBABWE                       Low_Birth          Control              NA                0.0433018    0.0286246   0.0579789
Birth       ki1126311-ZVITAMBO          ZIMBABWE                       Low_Birth          VitA                 NA                0.0360277    0.0281764   0.0438791
Birth       ki1126311-ZVITAMBO          ZIMBABWE                       Medium_Birth       Control              NA                0.0310263    0.0192851   0.0427674
Birth       ki1126311-ZVITAMBO          ZIMBABWE                       Medium_Birth       VitA                 NA                0.0356451    0.0284913   0.0427989
Birth       ki1126311-ZVITAMBO          ZIMBABWE                       High_Birth         Control              NA                0.0288925    0.0212980   0.0364869
Birth       ki1126311-ZVITAMBO          ZIMBABWE                       High_Birth         VitA                 NA                0.0283019    0.0239652   0.0326386
Birth       ki1135781-COHORTS           GUATEMALA                      Low_Birth          Control              NA                0.0176471   -0.0021705   0.0374646
Birth       ki1135781-COHORTS           GUATEMALA                      Low_Birth          Other                NA                0.0180995    0.0005010   0.0356980
Birth       kiGH5241-JiVitA-3           BANGLADESH                     Low_Birth          Control              NA                0.1239458    0.1126785   0.1352132
Birth       kiGH5241-JiVitA-3           BANGLADESH                     Low_Birth          Maternal             NA                0.1069277    0.0953623   0.1184932
Birth       kiGH5241-JiVitA-3           BANGLADESH                     Medium_Birth       Control              NA                0.1181337    0.1046667   0.1316006
Birth       kiGH5241-JiVitA-3           BANGLADESH                     Medium_Birth       Maternal             NA                0.1103979    0.0981716   0.1226243
Birth       kiGH5241-JiVitA-3           BANGLADESH                     High_Birth         Control              NA                0.0909091    0.0791897   0.1026285
Birth       kiGH5241-JiVitA-3           BANGLADESH                     High_Birth         Maternal             NA                0.0634518    0.0538116   0.0730920
Birth       kiGH5241-JiVitA-4           BANGLADESH                     Low_Birth          Control              NA                0.0404040    0.0099061   0.0709020
Birth       kiGH5241-JiVitA-4           BANGLADESH                     Low_Birth          LNS                  NA                0.0752688    0.0176400   0.1328977
Birth       kiGH5241-JiVitA-4           BANGLADESH                     Low_Birth          Other                NA                0.0864198    0.0436836   0.1291560
6 months    iLiNS_DYADM_LNS             MALAWI                         Low_6 months       Control              NA                0.0420168    0.0058948   0.0781388
6 months    iLiNS_DYADM_LNS             MALAWI                         Low_6 months       LNS                  NA                0.0165289   -0.0062359   0.0392938
6 months    iLiNS_DYADM_LNS             MALAWI                         Medium_6 months    Control              NA                0.0909091    0.0437032   0.1381150
6 months    iLiNS_DYADM_LNS             MALAWI                         Medium_6 months    LNS                  NA                0.0555556    0.0154852   0.0956259
6 months    iLiNS_DYADM_LNS             MALAWI                         High_6 months      Control              NA                0.0449438    0.0017766   0.0881110
6 months    iLiNS_DYADM_LNS             MALAWI                         High_6 months      LNS                  NA                0.0235294   -0.0087872   0.0558460
6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Low_6 months       Control              NA                0.0625000   -0.0061443   0.1311443
6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Low_6 months       LNS                  NA                0.0615385    0.0029753   0.1201016
6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Low_6 months       Other                NA                0.0744681    0.0212675   0.1276687
6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Medium_6 months    Control              NA                0.0576923   -0.0058173   0.1212020
6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Medium_6 months    LNS                  NA                0.0338983   -0.0123782   0.0801748
6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Medium_6 months    Other                NA                0.0413223    0.0057819   0.0768627
6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Low_6 months       Control              NA                0.0634921    0.0030303   0.1239538
6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Low_6 months       Maternal             NA                0.0847458    0.0133883   0.1561032
6 months    ki1000304-EU                INDIA                          Low_6 months       Control              NA                0.1076923    0.0320189   0.1833657
6 months    ki1000304-EU                INDIA                          Low_6 months       Zinc                 NA                0.1785714    0.0778442   0.2792987
6 months    ki1000304-EU                INDIA                          Medium_6 months    Control              NA                0.1315789    0.0553198   0.2078381
6 months    ki1000304-EU                INDIA                          Medium_6 months    Zinc                 NA                0.0857143    0.0199093   0.1515193
6 months    ki1000304-EU                INDIA                          High_6 months      Control              NA                0.0701754    0.0035099   0.1368410
6 months    ki1000304-EU                INDIA                          High_6 months      Zinc                 NA                0.0526316   -0.0187419   0.1240051
6 months    ki1000304-VITAMIN-A         INDIA                          Low_6 months       Control              NA                0.1198686    0.0940610   0.1456763
6 months    ki1000304-VITAMIN-A         INDIA                          Low_6 months       VitA                 NA                0.1305842    0.1031982   0.1579702
6 months    ki1000304-VITAMIN-A         INDIA                          Medium_6 months    Control              NA                0.0946602    0.0663755   0.1229448
6 months    ki1000304-VITAMIN-A         INDIA                          Medium_6 months    VitA                 NA                0.0933014    0.0654019   0.1212010
6 months    ki1000304-VITAMIN-A         INDIA                          High_6 months      Control              NA                0.0329218    0.0104641   0.0553795
6 months    ki1000304-VITAMIN-A         INDIA                          High_6 months      VitA                 NA                0.0413223    0.0162198   0.0664248
6 months    ki1000304-ZnMort            INDIA                          Medium_6 months    Control              NA                0.0800000   -0.0274704   0.1874704
6 months    ki1000304-ZnMort            INDIA                          Medium_6 months    Zinc                 NA                0.2173913    0.0470385   0.3877441
6 months    ki1000304b-SAS-CompFeed     INDIA                          Low_6 months       Control              NA                0.1323529    0.0745787   0.1901272
6 months    ki1000304b-SAS-CompFeed     INDIA                          Low_6 months       Other                NA                0.1278195    0.1062444   0.1493947
6 months    ki1000304b-SAS-CompFeed     INDIA                          Medium_6 months    Control              NA                0.0752688    0.0146958   0.1358418
6 months    ki1000304b-SAS-CompFeed     INDIA                          Medium_6 months    Other                NA                0.0614035    0.0081341   0.1146729
6 months    ki1000304b-SAS-CompFeed     INDIA                          High_6 months      Control              NA                0.0454545    0.0085302   0.0823789
6 months    ki1000304b-SAS-CompFeed     INDIA                          High_6 months      Other                NA                0.0400000    0.0047628   0.0752372
6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Low_6 months       Control              NA                0.1621622    0.0780318   0.2462926
6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Low_6 months       Other                NA                0.1571429    0.1078336   0.2064521
6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Medium_6 months    Control              NA                0.3000000    0.0121616   0.5878384
6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Medium_6 months    Other                NA                0.0714286   -0.0252441   0.1681012
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Medium_6 months    Control              NA                0.0223642    0.0059764   0.0387520
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Medium_6 months    Other                NA                0.0137457    0.0003625   0.0271289
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Medium_6 months    Zinc                 NA                0.0098684    0.0020080   0.0177288
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   High_6 months      Control              NA                0.0303030   -0.0035035   0.0641096
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   High_6 months      Other                NA                0.0000000    0.0000000   0.0000000
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   High_6 months      Zinc                 NA                0.0184332    0.0005153   0.0363511
6 months    ki1112895-Guatemala BSC     GUATEMALA                      Low_6 months       Control              NA                0.1379310    0.0112505   0.2646116
6 months    ki1112895-Guatemala BSC     GUATEMALA                      Low_6 months       Other                NA                0.0800000   -0.0273435   0.1873435
6 months    ki1112895-Guatemala BSC     GUATEMALA                      High_6 months      Control              NA                0.1500000    0.0387314   0.2612686
6 months    ki1112895-Guatemala BSC     GUATEMALA                      High_6 months      Other                NA                0.0784314    0.0042370   0.1526258
6 months    ki1119695-PROBIT            BELARUS                        Low_6 months       Control              NA                0.0266047    0.0116468   0.0415627
6 months    ki1119695-PROBIT            BELARUS                        Low_6 months       Maternal             NA                0.0174315    0.0100756   0.0247874
6 months    ki1119695-PROBIT            BELARUS                        Medium_6 months    Control              NA                0.0168508    0.0071759   0.0265257
6 months    ki1119695-PROBIT            BELARUS                        Medium_6 months    Maternal             NA                0.0098401    0.0057222   0.0139580
6 months    ki1119695-PROBIT            BELARUS                        High_6 months      Control              NA                0.0124555    0.0051381   0.0197730
6 months    ki1119695-PROBIT            BELARUS                        High_6 months      Maternal             NA                0.0083019    0.0041970   0.0124068
6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Low_6 months       Control              NA                0.0416667    0.0222710   0.0610624
6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Low_6 months       VitA                 NA                0.0488007    0.0366523   0.0609490
6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Medium_6 months    Control              NA                0.0409836    0.0233895   0.0585777
6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Medium_6 months    VitA                 NA                0.0531697    0.0416852   0.0646542
6 months    ki1126311-ZVITAMBO          ZIMBABWE                       High_6 months      Control              NA                0.0304220    0.0198757   0.0409682
6 months    ki1126311-ZVITAMBO          ZIMBABWE                       High_6 months      VitA                 NA                0.0396975    0.0329042   0.0464909
6 months    ki1135781-COHORTS           GUATEMALA                      Low_6 months       Control              NA                0.1752577    0.1216972   0.2288182
6 months    ki1135781-COHORTS           GUATEMALA                      Low_6 months       Other                NA                0.1410788    0.0970794   0.1850783
6 months    ki1135781-COHORTS           GUATEMALA                      Medium_6 months    Control              NA                0.1470588    0.0874394   0.2066782
6 months    ki1135781-COHORTS           GUATEMALA                      Medium_6 months    Other                NA                0.0578035    0.0229716   0.0926353
6 months    ki1135781-COHORTS           GUATEMALA                      High_6 months      Control              NA                0.1367521    0.0743202   0.1991840
6 months    ki1135781-COHORTS           GUATEMALA                      High_6 months      Other                NA                0.1129032    0.0339068   0.1918997
6 months    ki1148112-iLiNS-DOSE        MALAWI                         Low_6 months       Control              NA                0.0700000    0.0199498   0.1200502
6 months    ki1148112-iLiNS-DOSE        MALAWI                         Low_6 months       LNS                  NA                0.0691057    0.0466752   0.0915362
6 months    ki1148112-iLiNS-DOSE        MALAWI                         Medium_6 months    Control              NA                0.0674157    0.0152768   0.1195547
6 months    ki1148112-iLiNS-DOSE        MALAWI                         Medium_6 months    LNS                  NA                0.0756303    0.0518564   0.0994041
6 months    ki1148112-iLiNS-DOSE        MALAWI                         High_6 months      Control              NA                0.0854701    0.0347748   0.1361654
6 months    ki1148112-iLiNS-DOSE        MALAWI                         High_6 months      LNS                  NA                0.0506757    0.0329949   0.0683564
6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Low_6 months       Control              NA                0.0420168    0.0059204   0.0781132
6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Low_6 months       Maternal             NA                0.0368852    0.0132033   0.0605672
6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Medium_6 months    Control              NA                0.0909091    0.0437319   0.1380863
6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Medium_6 months    Maternal             NA                0.0703125    0.0389538   0.1016712
6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         High_6 months      Control              NA                0.0449438    0.0018200   0.0880677
6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         High_6 months      Maternal             NA                0.0224719    0.0006578   0.0442860
6 months    ki1148112-LCNI-5            MALAWI                         Low_6 months       Control              NA                0.1230769    0.0430578   0.2030961
6 months    ki1148112-LCNI-5            MALAWI                         Low_6 months       LNS                  NA                0.0928571    0.0446886   0.1410256
6 months    ki1148112-LCNI-5            MALAWI                         Low_6 months       Other                NA                0.1250000    0.0382146   0.2117854
6 months    ki1148112-LCNI-5            MALAWI                         Medium_6 months    Control              NA                0.0327869   -0.0119897   0.0775635
6 months    ki1148112-LCNI-5            MALAWI                         Medium_6 months    LNS                  NA                0.0887097    0.0385670   0.1388524
6 months    ki1148112-LCNI-5            MALAWI                         Medium_6 months    Other                NA                0.0724638    0.0111715   0.1337561
6 months    ki1148112-LCNI-5            MALAWI                         High_6 months      Control              NA                0.0270270   -0.0099823   0.0640364
6 months    ki1148112-LCNI-5            MALAWI                         High_6 months      LNS                  NA                0.0965517    0.0483985   0.1447050
6 months    ki1148112-LCNI-5            MALAWI                         High_6 months      Other                NA                0.0379747   -0.0042440   0.0801934
6 months    kiGH5241-JiVitA-3           BANGLADESH                     Low_6 months       Control              NA                0.0824347    0.0708899   0.0939794
6 months    kiGH5241-JiVitA-3           BANGLADESH                     Low_6 months       Maternal             NA                0.0673883    0.0563284   0.0784482
6 months    kiGH5241-JiVitA-3           BANGLADESH                     Medium_6 months    Control              NA                0.0717201    0.0600454   0.0833948
6 months    kiGH5241-JiVitA-3           BANGLADESH                     Medium_6 months    Maternal             NA                0.0613243    0.0515054   0.0711432
6 months    kiGH5241-JiVitA-3           BANGLADESH                     High_6 months      Control              NA                0.0457758    0.0377371   0.0538145
6 months    kiGH5241-JiVitA-3           BANGLADESH                     High_6 months      Maternal             NA                0.0384813    0.0315375   0.0454251
6 months    kiGH5241-JiVitA-4           BANGLADESH                     Low_6 months       Control              NA                0.0712851    0.0469795   0.0955907
6 months    kiGH5241-JiVitA-4           BANGLADESH                     Low_6 months       LNS                  NA                0.0596234    0.0309854   0.0882615
6 months    kiGH5241-JiVitA-4           BANGLADESH                     Low_6 months       Other                NA                0.0445205    0.0265224   0.0625187
6 months    kiGH5241-JiVitA-4           BANGLADESH                     Medium_6 months    Control              NA                0.0645161   -0.0646057   0.1936379
6 months    kiGH5241-JiVitA-4           BANGLADESH                     Medium_6 months    LNS                  NA                0.0487805   -0.0497143   0.1472753
6 months    kiGH5241-JiVitA-4           BANGLADESH                     Medium_6 months    Other                NA                0.0689655   -0.0282538   0.1661848
6 months    kiGH5241-JiVitA-4           BANGLADESH                     High_6 months      Control              NA                0.0555556   -0.0535997   0.1647109
6 months    kiGH5241-JiVitA-4           BANGLADESH                     High_6 months      LNS                  NA                0.1212121   -0.0083711   0.2507953
6 months    kiGH5241-JiVitA-4           BANGLADESH                     High_6 months      Other                NA                0.0645161   -0.0245904   0.1536226
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Low_24 months      Control              NA                0.1323529    0.0516818   0.2130241
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Low_24 months      LNS                  NA                0.1807229    0.0978109   0.2636348
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Low_24 months      Other                NA                0.1385542    0.0859157   0.1911928
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Medium_24 months   Control              NA                0.1702128    0.0941464   0.2462791
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Medium_24 months   LNS                  NA                0.1403509    0.0765109   0.2041909
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Medium_24 months   Other                NA                0.1379310    0.0904379   0.1854242
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     High_24 months     Control              NA                0.0825688    0.0308435   0.1342941
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     High_24 months     LNS                  NA                0.0454545    0.0064862   0.0844229
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     High_24 months     Other                NA                0.0750000    0.0416407   0.1083593
24 months   ki1000111-WASH-Kenya        KENYA                          Low_24 months      Control              NA                0.1475000    0.1127351   0.1822649
24 months   ki1000111-WASH-Kenya        KENYA                          Low_24 months      LNS                  NA                0.0739437    0.0434971   0.1043902
24 months   ki1000111-WASH-Kenya        KENYA                          Low_24 months      Other                NA                0.1106870    0.0838127   0.1375614
24 months   ki1000111-WASH-Kenya        KENYA                          Medium_24 months   Control              NA                0.0517241    0.0187841   0.0846642
24 months   ki1000111-WASH-Kenya        KENYA                          Medium_24 months   LNS                  NA                0.0571429    0.0127008   0.1015849
24 months   ki1000111-WASH-Kenya        KENYA                          Medium_24 months   Other                NA                0.0547945    0.0246232   0.0849658
24 months   ki1000111-WASH-Kenya        KENYA                          High_24 months     Control              NA                0.0382514    0.0104370   0.0660657
24 months   ki1000111-WASH-Kenya        KENYA                          High_24 months     LNS                  NA                0.0090090   -0.0085845   0.0266025
24 months   ki1000111-WASH-Kenya        KENYA                          High_24 months     Other                NA                0.0344828    0.0123263   0.0566392
24 months   ki1000304-EU                INDIA                          Low_24 months      Control              NA                0.2619048    0.1281735   0.3956361
24 months   ki1000304-EU                INDIA                          Low_24 months      Zinc                 NA                0.2391304    0.1151585   0.3631024
24 months   ki1000304-EU                INDIA                          Medium_24 months   Control              NA                0.2545455    0.1388488   0.3702421
24 months   ki1000304-EU                INDIA                          Medium_24 months   Zinc                 NA                0.2826087    0.1518409   0.4133765
24 months   ki1000304-EU                INDIA                          High_24 months     Control              NA                0.1071429   -0.0083546   0.2226404
24 months   ki1000304-EU                INDIA                          High_24 months     Zinc                 NA                0.0882353   -0.0078821   0.1843527
24 months   ki1000304-Vitamin-B12       INDIA                          Low_24 months      Control              NA                0.1111111   -0.0354095   0.2576317
24 months   ki1000304-Vitamin-B12       INDIA                          Low_24 months      Other                NA                0.3783784    0.2206689   0.5360879
24 months   ki1000304-Vitamin-B12       INDIA                          Medium_24 months   Control              NA                0.1111111   -0.0968236   0.3190458
24 months   ki1000304-Vitamin-B12       INDIA                          Medium_24 months   Other                NA                0.1935484    0.0527010   0.3343958
24 months   ki1000304-ZnMort            INDIA                          Low_24 months      Control              NA                0.4642857    0.2778250   0.6507464
24 months   ki1000304-ZnMort            INDIA                          Low_24 months      Zinc                 NA                0.3076923    0.1286201   0.4867645
24 months   ki1000304-ZnMort            INDIA                          Medium_24 months   Control              NA                0.1875000    0.0509468   0.3240532
24 months   ki1000304-ZnMort            INDIA                          Medium_24 months   Zinc                 NA                0.2000000    0.0229852   0.3770148
24 months   ki1119695-PROBIT            BELARUS                        Low_24 months      Control              NA                0.0353982   -0.0316077   0.1024042
24 months   ki1119695-PROBIT            BELARUS                        Low_24 months      Maternal             NA                0.0364583    0.0070425   0.0658742
24 months   ki1119695-PROBIT            BELARUS                        Medium_24 months   Control              NA                0.0103093   -0.0033838   0.0240024
24 months   ki1119695-PROBIT            BELARUS                        Medium_24 months   Maternal             NA                0.0192308   -0.0132626   0.0517242
24 months   ki1126311-ZVITAMBO          ZIMBABWE                       High_24 months     Control              NA                0.1250000   -0.1101258   0.3601258
24 months   ki1126311-ZVITAMBO          ZIMBABWE                       High_24 months     VitA                 NA                0.4166667    0.1304806   0.7028527
24 months   ki1135781-COHORTS           GUATEMALA                      Low_24 months      Control              NA                0.5342466    0.4194492   0.6490440
24 months   ki1135781-COHORTS           GUATEMALA                      Low_24 months      Other                NA                0.3734940    0.2690917   0.4778962
24 months   ki1135781-COHORTS           GUATEMALA                      Medium_24 months   Control              NA                0.3454545    0.2191699   0.4717392
24 months   ki1135781-COHORTS           GUATEMALA                      Medium_24 months   Other                NA                0.3958333    0.2568123   0.5348544
24 months   ki1135781-COHORTS           GUATEMALA                      High_24 months     Control              NA                0.5135135    0.3512488   0.6757782
24 months   ki1135781-COHORTS           GUATEMALA                      High_24 months     Other                NA                0.4000000    0.2233724   0.5766276
24 months   ki1148112-iLiNS-DOSE        MALAWI                         Low_24 months      Control              NA                0.1707317    0.0553222   0.2861412
24 months   ki1148112-iLiNS-DOSE        MALAWI                         Low_24 months      LNS                  NA                0.1796117    0.1270859   0.2321374
24 months   ki1148112-iLiNS-DOSE        MALAWI                         Medium_24 months   Control              NA                0.2647059    0.1160907   0.4133210
24 months   ki1148112-iLiNS-DOSE        MALAWI                         Medium_24 months   LNS                  NA                0.2284264    0.1696749   0.2871779
24 months   ki1148112-iLiNS-DOSE        MALAWI                         High_24 months     Control              NA                0.1568627    0.0568813   0.2568442
24 months   ki1148112-iLiNS-DOSE        MALAWI                         High_24 months     LNS                  NA                0.1375000    0.0938564   0.1811436
24 months   ki1148112-LCNI-5            MALAWI                         Low_24 months      Control              NA                0.2195122    0.0923088   0.3467156
24 months   ki1148112-LCNI-5            MALAWI                         Low_24 months      LNS                  NA                0.0952381    0.0224634   0.1680128
24 months   ki1148112-LCNI-5            MALAWI                         Low_24 months      Other                NA                0.1363636   -0.0076096   0.2803369
24 months   ki1148112-LCNI-5            MALAWI                         Medium_24 months   Control              NA                0.0555556   -0.0195916   0.1307027
24 months   ki1148112-LCNI-5            MALAWI                         Medium_24 months   LNS                  NA                0.1458333    0.0455587   0.2461080
24 months   ki1148112-LCNI-5            MALAWI                         Medium_24 months   Other                NA                0.1212121    0.0093791   0.2330452
24 months   ki1148112-LCNI-5            MALAWI                         High_24 months     Control              NA                0.1250000    0.0099964   0.2400036
24 months   ki1148112-LCNI-5            MALAWI                         High_24 months     LNS                  NA                0.0447761   -0.0049250   0.0944772
24 months   ki1148112-LCNI-5            MALAWI                         High_24 months     Other                NA                0.0000000    0.0000000   0.0000000
24 months   kiGH5241-JiVitA-3           BANGLADESH                     Low_24 months      Control              NA                0.1904762   -0.0536513   0.4346036
24 months   kiGH5241-JiVitA-3           BANGLADESH                     Low_24 months      Maternal             NA                0.4210526    0.1693240   0.6727813
24 months   kiGH5241-JiVitA-3           BANGLADESH                     Medium_24 months   Control              NA                0.4545455    0.0669172   0.8421737
24 months   kiGH5241-JiVitA-3           BANGLADESH                     Medium_24 months   Maternal             NA                0.2857143    0.0674122   0.5040163
24 months   kiGH5241-JiVitA-3           BANGLADESH                     High_24 months     Control              NA                0.2820513    0.1044980   0.4596045
24 months   kiGH5241-JiVitA-3           BANGLADESH                     High_24 months     Maternal             NA                0.1000000   -0.0404272   0.2404272
24 months   kiGH5241-JiVitA-4           BANGLADESH                     Low_24 months      Control              NA                0.1233480    0.0563478   0.1903482
24 months   kiGH5241-JiVitA-4           BANGLADESH                     Low_24 months      LNS                  NA                0.1126761    0.0444676   0.1808845
24 months   kiGH5241-JiVitA-4           BANGLADESH                     Low_24 months      Other                NA                0.0812325    0.0401740   0.1222910
24 months   kiGH5241-JiVitA-4           BANGLADESH                     High_24 months     Control              NA                0.0000000    0.0000000   0.0000000
24 months   kiGH5241-JiVitA-4           BANGLADESH                     High_24 months     LNS                  NA                0.4444444   -0.0052643   0.8941532
24 months   kiGH5241-JiVitA-4           BANGLADESH                     High_24 months     Other                NA                0.1428571   -0.1034836   0.3891979


### Parameter: E(Y)


agecat      studyid                     country                        intXmeducyrs       intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------  --------------------------  -----------------------------  -----------------  -------------------  ---------------  ----------  -----------  ----------
Birth       ki1000304b-SAS-CompFeed     INDIA                          Low_Birth          NA                   NA                0.1129032    0.0410311   0.1847753
Birth       ki1126311-ZVITAMBO          ZIMBABWE                       Low_Birth          NA                   NA                0.0378788    0.0309343   0.0448232
Birth       ki1126311-ZVITAMBO          ZIMBABWE                       Medium_Birth       NA                   NA                0.0345130    0.0283934   0.0406327
Birth       ki1126311-ZVITAMBO          ZIMBABWE                       High_Birth         NA                   NA                0.0284493    0.0246832   0.0322154
Birth       ki1135781-COHORTS           GUATEMALA                      Low_Birth          NA                   NA                0.0179028    0.0047429   0.0310627
Birth       kiGH5241-JiVitA-3           BANGLADESH                     Low_Birth          NA                   NA                0.1153603    0.1072851   0.1234354
Birth       kiGH5241-JiVitA-3           BANGLADESH                     Medium_Birth       NA                   NA                0.1142066    0.1051210   0.1232921
Birth       kiGH5241-JiVitA-3           BANGLADESH                     High_Birth         NA                   NA                0.0772695    0.0695893   0.0849496
Birth       kiGH5241-JiVitA-4           BANGLADESH                     Low_Birth          NA                   NA                0.0706215    0.0443462   0.0968967
6 months    iLiNS_DYADM_LNS             MALAWI                         Low_6 months       NA                   NA                0.0291667    0.0078330   0.0505003
6 months    iLiNS_DYADM_LNS             MALAWI                         Medium_6 months    NA                   NA                0.0743494    0.0429412   0.1057576
6 months    iLiNS_DYADM_LNS             MALAWI                         High_6 months      NA                   NA                0.0344828    0.0072930   0.0616726
6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Low_6 months       NA                   NA                0.0676329    0.0333413   0.1019244
6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Medium_6 months    NA                   NA                0.0431034    0.0169137   0.0692932
6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Low_6 months       NA                   NA                0.0737705    0.0271951   0.1203458
6 months    ki1000304-EU                INDIA                          Low_6 months       NA                   NA                0.1404959    0.0783212   0.2026705
6 months    ki1000304-EU                INDIA                          Medium_6 months    NA                   NA                0.1095890    0.0587447   0.1604334
6 months    ki1000304-EU                INDIA                          High_6 months      NA                   NA                0.0631579    0.0139844   0.1123314
6 months    ki1000304-VITAMIN-A         INDIA                          Low_6 months       NA                   NA                0.1251050    0.1063079   0.1439020
6 months    ki1000304-VITAMIN-A         INDIA                          Medium_6 months    NA                   NA                0.0939759    0.0741127   0.1138391
6 months    ki1000304-VITAMIN-A         INDIA                          High_6 months      NA                   NA                0.0371134    0.0202720   0.0539548
6 months    ki1000304-ZnMort            INDIA                          Medium_6 months    NA                   NA                0.1458333    0.0449315   0.2467351
6 months    ki1000304b-SAS-CompFeed     INDIA                          Low_6 months       NA                   NA                0.1301115    0.0989549   0.1612681
6 months    ki1000304b-SAS-CompFeed     INDIA                          Medium_6 months    NA                   NA                0.0676329    0.0277137   0.1075520
6 months    ki1000304b-SAS-CompFeed     INDIA                          High_6 months      NA                   NA                0.0425532    0.0167564   0.0683500
6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Low_6 months       NA                   NA                0.1584507    0.1159064   0.2009950
6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Medium_6 months    NA                   NA                0.1315789    0.0226595   0.2404984
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Medium_6 months    NA                   NA                0.0140264    0.0074030   0.0206498
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   High_6 months      NA                   NA                0.0163934    0.0043351   0.0284518
6 months    ki1112895-Guatemala BSC     GUATEMALA                      Low_6 months       NA                   NA                0.1111111    0.0265029   0.1957193
6 months    ki1112895-Guatemala BSC     GUATEMALA                      High_6 months      NA                   NA                0.1098901    0.0452759   0.1745043
6 months    ki1119695-PROBIT            BELARUS                        Low_6 months       NA                   NA                0.0216258    0.0133752   0.0298764
6 months    ki1119695-PROBIT            BELARUS                        Medium_6 months    NA                   NA                0.0135332    0.0077029   0.0193635
6 months    ki1119695-PROBIT            BELARUS                        High_6 months      NA                   NA                0.0102082    0.0061021   0.0143144
6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Low_6 months       NA                   NA                0.0470006    0.0366819   0.0573193
6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Medium_6 months    NA                   NA                0.0501279    0.0404527   0.0598030
6 months    ki1126311-ZVITAMBO          ZIMBABWE                       High_6 months      NA                   NA                0.0374434    0.0316964   0.0431903
6 months    ki1135781-COHORTS           GUATEMALA                      Low_6 months       NA                   NA                0.1563218    0.1221553   0.1904884
6 months    ki1135781-COHORTS           GUATEMALA                      Medium_6 months    NA                   NA                0.0970874    0.0640217   0.1301530
6 months    ki1135781-COHORTS           GUATEMALA                      High_6 months      NA                   NA                0.1284916    0.0793317   0.1776516
6 months    ki1148112-iLiNS-DOSE        MALAWI                         Low_6 months       NA                   NA                0.0692568    0.0487876   0.0897259
6 months    ki1148112-iLiNS-DOSE        MALAWI                         Medium_6 months    NA                   NA                0.0743363    0.0526874   0.0959852
6 months    ki1148112-iLiNS-DOSE        MALAWI                         High_6 months      NA                   NA                0.0564175    0.0394222   0.0734128
6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Low_6 months       NA                   NA                0.0385675    0.0187310   0.0584039
6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Medium_6 months    NA                   NA                0.0776942    0.0513953   0.1039932
6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         High_6 months      NA                   NA                0.0299625    0.0094750   0.0504501
6 months    ki1148112-LCNI-5            MALAWI                         Low_6 months       NA                   NA                0.1072797    0.0696632   0.1448962
6 months    ki1148112-LCNI-5            MALAWI                         Medium_6 months    NA                   NA                0.0708661    0.0392473   0.1024850
6 months    ki1148112-LCNI-5            MALAWI                         High_6 months      NA                   NA                0.0637584    0.0359720   0.0915448
6 months    kiGH5241-JiVitA-3           BANGLADESH                     Low_6 months       NA                   NA                0.0747388    0.0667311   0.0827465
6 months    kiGH5241-JiVitA-3           BANGLADESH                     Medium_6 months    NA                   NA                0.0664372    0.0588130   0.0740615
6 months    kiGH5241-JiVitA-3           BANGLADESH                     High_6 months      NA                   NA                0.0421579    0.0368298   0.0474861
6 months    kiGH5241-JiVitA-4           BANGLADESH                     Low_6 months       NA                   NA                0.0556156    0.0425677   0.0686634
6 months    kiGH5241-JiVitA-4           BANGLADESH                     Medium_6 months    NA                   NA                0.0615385   -0.0001119   0.1231888
6 months    kiGH5241-JiVitA-4           BANGLADESH                     High_6 months      NA                   NA                0.0763359    0.0151174   0.1375544
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Low_24 months      NA                   NA                0.1482650    0.1090839   0.1874460
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Medium_24 months   NA                   NA                0.1459854    0.1118076   0.1801632
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     High_24 months     NA                   NA                0.0697168    0.0463934   0.0930402
24 months   ki1000111-WASH-Kenya        KENYA                          Low_24 months      NA                   NA                0.1142384    0.0962928   0.1321841
24 months   ki1000111-WASH-Kenya        KENYA                          Medium_24 months   NA                   NA                0.0542169    0.0343086   0.0741251
24 months   ki1000111-WASH-Kenya        KENYA                          High_24 months     NA                   NA                0.0306306    0.0162818   0.0449794
24 months   ki1000304-EU                INDIA                          Low_24 months      NA                   NA                0.2500000    0.1590110   0.3409890
24 months   ki1000304-EU                INDIA                          Medium_24 months   NA                   NA                0.2673267    0.1805857   0.3540677
24 months   ki1000304-EU                INDIA                          High_24 months     NA                   NA                0.0967742    0.0225815   0.1709669
24 months   ki1000304-Vitamin-B12       INDIA                          Low_24 months      NA                   NA                0.2909091    0.1697710   0.4120472
24 months   ki1000304-Vitamin-B12       INDIA                          Medium_24 months   NA                   NA                0.1750000    0.0557491   0.2942509
24 months   ki1000304-ZnMort            INDIA                          Low_24 months      NA                   NA                0.3888889    0.2576438   0.5201340
24 months   ki1000304-ZnMort            INDIA                          Medium_24 months   NA                   NA                0.1923077    0.0841433   0.3004721
24 months   ki1119695-PROBIT            BELARUS                        Low_24 months      NA                   NA                0.0360656    0.0050719   0.0670592
24 months   ki1119695-PROBIT            BELARUS                        Medium_24 months   NA                   NA                0.0149254   -0.0033050   0.0331557
24 months   ki1126311-ZVITAMBO          ZIMBABWE                       High_24 months     NA                   NA                0.3000000    0.0939461   0.5060539
24 months   ki1135781-COHORTS           GUATEMALA                      Low_24 months      NA                   NA                0.4487179    0.3704190   0.5270169
24 months   ki1135781-COHORTS           GUATEMALA                      Medium_24 months   NA                   NA                0.3689320    0.2752925   0.4625716
24 months   ki1135781-COHORTS           GUATEMALA                      High_24 months     NA                   NA                0.4626866    0.3423955   0.5829776
24 months   ki1148112-iLiNS-DOSE        MALAWI                         Low_24 months      NA                   NA                0.1781377    0.1303233   0.2259520
24 months   ki1148112-iLiNS-DOSE        MALAWI                         Medium_24 months   NA                   NA                0.2337662    0.1790702   0.2884623
24 months   ki1148112-iLiNS-DOSE        MALAWI                         High_24 months     NA                   NA                0.1408935    0.1008513   0.1809357
24 months   ki1148112-LCNI-5            MALAWI                         Low_24 months      NA                   NA                0.1428571    0.0815133   0.2042009
24 months   ki1148112-LCNI-5            MALAWI                         Medium_24 months   NA                   NA                0.1111111    0.0539209   0.1683013
24 months   ki1148112-LCNI-5            MALAWI                         High_24 months     NA                   NA                0.0507246    0.0139801   0.0874692
24 months   kiGH5241-JiVitA-3           BANGLADESH                     Low_24 months      NA                   NA                0.3000000    0.1232410   0.4767590
24 months   kiGH5241-JiVitA-3           BANGLADESH                     Medium_24 months   NA                   NA                0.3333333    0.1406794   0.5259873
24 months   kiGH5241-JiVitA-3           BANGLADESH                     High_24 months     NA                   NA                0.1898734    0.0769055   0.3028413
24 months   kiGH5241-JiVitA-4           BANGLADESH                     Low_24 months      NA                   NA                0.1016311    0.0693348   0.1339274
24 months   kiGH5241-JiVitA-4           BANGLADESH                     High_24 months     NA                   NA                0.1935484    0.0067540   0.3803428


### Parameter: RR


agecat      studyid                     country                        intXmeducyrs       intervention_level   baseline_level            estimate           ci_lower            ci_upper
----------  --------------------------  -----------------------------  -----------------  -------------------  ---------------  -----------------  -----------------  ------------------
Birth       ki1000304b-SAS-CompFeed     INDIA                          Low_Birth          Control              Control                  1.0000000          1.0000000           1.0000000
Birth       ki1000304b-SAS-CompFeed     INDIA                          Low_Birth          Other                Control                  2.0588235          0.4007975          10.5757992
Birth       ki1126311-ZVITAMBO          ZIMBABWE                       Low_Birth          Control              Control                  1.0000000          1.0000000           1.0000000
Birth       ki1126311-ZVITAMBO          ZIMBABWE                       Low_Birth          VitA                 Control                  0.8320150          0.5560668           1.2449026
Birth       ki1126311-ZVITAMBO          ZIMBABWE                       Medium_Birth       Control              Control                  1.0000000          1.0000000           1.0000000
Birth       ki1126311-ZVITAMBO          ZIMBABWE                       Medium_Birth       VitA                 Control                  1.1488690          0.7485831           1.7631976
Birth       ki1126311-ZVITAMBO          ZIMBABWE                       High_Birth         Control              Control                  1.0000000          1.0000000           1.0000000
Birth       ki1126311-ZVITAMBO          ZIMBABWE                       High_Birth         VitA                 Control                  0.9795597          0.7225941           1.3279064
Birth       ki1135781-COHORTS           GUATEMALA                      Low_Birth          Control              Control                  1.0000000          1.0000000           1.0000000
Birth       ki1135781-COHORTS           GUATEMALA                      Low_Birth          Other                Control                  1.0256410          0.2322092           4.5301367
Birth       kiGH5241-JiVitA-3           BANGLADESH                     Low_Birth          Control              Control                  1.0000000          1.0000000           1.0000000
Birth       kiGH5241-JiVitA-3           BANGLADESH                     Low_Birth          Maternal             Control                  0.8626972          0.7490830           0.9935434
Birth       kiGH5241-JiVitA-3           BANGLADESH                     Medium_Birth       Control              Control                  1.0000000          1.0000000           1.0000000
Birth       kiGH5241-JiVitA-3           BANGLADESH                     Medium_Birth       Maternal             Control                  0.9345171          0.7971610           1.0955405
Birth       kiGH5241-JiVitA-3           BANGLADESH                     High_Birth         Control              Control                  1.0000000          1.0000000           1.0000000
Birth       kiGH5241-JiVitA-3           BANGLADESH                     High_Birth         Maternal             Control                  0.6979695          0.5718655           0.8518812
Birth       kiGH5241-JiVitA-4           BANGLADESH                     Low_Birth          Control              Control                  1.0000000          1.0000000           1.0000000
Birth       kiGH5241-JiVitA-4           BANGLADESH                     Low_Birth          LNS                  Control                  1.8629030          0.6356510           5.4596117
Birth       kiGH5241-JiVitA-4           BANGLADESH                     Low_Birth          Other                Control                  2.1388886          0.8669334           5.2770424
6 months    iLiNS_DYADM_LNS             MALAWI                         Low_6 months       Control              Control                  1.0000000          1.0000000           1.0000000
6 months    iLiNS_DYADM_LNS             MALAWI                         Low_6 months       LNS                  Control                  0.3933885          0.0775737           1.9949341
6 months    iLiNS_DYADM_LNS             MALAWI                         Medium_6 months    Control              Control                  1.0000000          1.0000000           1.0000000
6 months    iLiNS_DYADM_LNS             MALAWI                         Medium_6 months    LNS                  Control                  0.6111111          0.2512723           1.4862635
6 months    iLiNS_DYADM_LNS             MALAWI                         High_6 months      Control              Control                  1.0000000          1.0000000           1.0000000
6 months    iLiNS_DYADM_LNS             MALAWI                         High_6 months      LNS                  Control                  0.5235294          0.0979661           2.7977334
6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Low_6 months       Control              Control                  1.0000000          1.0000000           1.0000000
6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Low_6 months       LNS                  Control                  0.9846154          0.2302130           4.2111752
6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Low_6 months       Other                Control                  1.1914894          0.3214188           4.4168141
6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Medium_6 months    Control              Control                  1.0000000          1.0000000           1.0000000
6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Medium_6 months    LNS                  Control                  0.5875706          0.1017267           3.3937931
6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Medium_6 months    Other                Control                  0.7162534          0.1771592           2.8958080
6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Low_6 months       Control              Control                  1.0000000          1.0000000           1.0000000
6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Low_6 months       Maternal             Control                  1.3347458          0.3744090           4.7582897
6 months    ki1000304-EU                INDIA                          Low_6 months       Control              Control                  1.0000000          1.0000000           1.0000000
6 months    ki1000304-EU                INDIA                          Low_6 months       Zinc                 Control                  1.6581633          0.6734334           4.0828169
6 months    ki1000304-EU                INDIA                          Medium_6 months    Control              Control                  1.0000000          1.0000000           1.0000000
6 months    ki1000304-EU                INDIA                          Medium_6 months    Zinc                 Control                  0.6514286          0.2489472           1.7046150
6 months    ki1000304-EU                INDIA                          High_6 months      Control              Control                  1.0000000          1.0000000           1.0000000
6 months    ki1000304-EU                INDIA                          High_6 months      Zinc                 Control                  0.7500000          0.1432134           3.9277055
6 months    ki1000304-VITAMIN-A         INDIA                          Low_6 months       Control              Control                  1.0000000          1.0000000           1.0000000
6 months    ki1000304-VITAMIN-A         INDIA                          Low_6 months       VitA                 Control                  1.0893942          0.8065919           1.4713508
6 months    ki1000304-VITAMIN-A         INDIA                          Medium_6 months    Control              Control                  1.0000000          1.0000000           1.0000000
6 months    ki1000304-VITAMIN-A         INDIA                          Medium_6 months    VitA                 Control                  0.9856459          0.6458511           1.5042135
6 months    ki1000304-VITAMIN-A         INDIA                          High_6 months      Control              Control                  1.0000000          1.0000000           1.0000000
6 months    ki1000304-VITAMIN-A         INDIA                          High_6 months      VitA                 Control                  1.2551653          0.5035012           3.1289698
6 months    ki1000304-ZnMort            INDIA                          Medium_6 months    Control              Control                  1.0000000          1.0000000           1.0000000
6 months    ki1000304-ZnMort            INDIA                          Medium_6 months    Zinc                 Control                  2.7173913          0.5737535          12.8700129
6 months    ki1000304b-SAS-CompFeed     INDIA                          Low_6 months       Control              Control                  1.0000000          1.0000000           1.0000000
6 months    ki1000304b-SAS-CompFeed     INDIA                          Low_6 months       Other                Control                  0.9657477          0.6043891           1.5431593
6 months    ki1000304b-SAS-CompFeed     INDIA                          Medium_6 months    Control              Control                  1.0000000          1.0000000           1.0000000
6 months    ki1000304b-SAS-CompFeed     INDIA                          Medium_6 months    Other                Control                  0.8157895          0.2506350           2.6553057
6 months    ki1000304b-SAS-CompFeed     INDIA                          High_6 months      Control              Control                  1.0000000          1.0000000           1.0000000
6 months    ki1000304b-SAS-CompFeed     INDIA                          High_6 months      Other                Control                  0.8800000          0.2659990           2.9112895
6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Low_6 months       Control              Control                  1.0000000          1.0000000           1.0000000
6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Low_6 months       Other                Control                  0.9690476          0.5284760           1.7769082
6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Medium_6 months    Control              Control                  1.0000000          1.0000000           1.0000000
6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Medium_6 months    Other                Control                  0.2380952          0.0453162           1.2509739
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Medium_6 months    Control              Control                  1.0000000          1.0000000           1.0000000
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Medium_6 months    Other                Control                  0.6146294          0.1817181           2.0788755
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Medium_6 months    Zinc                 Control                  0.4412594          0.1495037           1.3023745
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   High_6 months      Control              Control                  1.0000000          1.0000000           1.0000000
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   High_6 months      Other                Control                  0.0000000          0.0000000           0.0000001
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   High_6 months      Zinc                 Control                  0.6082949          0.1385142           2.6713701
6 months    ki1112895-Guatemala BSC     GUATEMALA                      Low_6 months       Control              Control                  1.0000000          1.0000000           1.0000000
6 months    ki1112895-Guatemala BSC     GUATEMALA                      Low_6 months       Other                Control                  0.5800000          0.1140926           2.9484820
6 months    ki1112895-Guatemala BSC     GUATEMALA                      High_6 months      Control              Control                  1.0000000          1.0000000           1.0000000
6 months    ki1112895-Guatemala BSC     GUATEMALA                      High_6 months      Other                Control                  0.5228758          0.1571513           1.7397196
6 months    ki1119695-PROBIT            BELARUS                        Low_6 months       Control              Control                  1.0000000          1.0000000           1.0000000
6 months    ki1119695-PROBIT            BELARUS                        Low_6 months       Maternal             Control                  0.6552038          0.3249284           1.3211897
6 months    ki1119695-PROBIT            BELARUS                        Medium_6 months    Control              Control                  1.0000000          1.0000000           1.0000000
6 months    ki1119695-PROBIT            BELARUS                        Medium_6 months    Maternal             Control                  0.5839534          0.2882821           1.1828745
6 months    ki1119695-PROBIT            BELARUS                        High_6 months      Control              Control                  1.0000000          1.0000000           1.0000000
6 months    ki1119695-PROBIT            BELARUS                        High_6 months      Maternal             Control                  0.6665229          0.3090801           1.4373389
6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Low_6 months       Control              Control                  1.0000000          1.0000000           1.0000000
6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Low_6 months       VitA                 Control                  1.1712158          0.6908465           1.9856022
6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Medium_6 months    Control              Control                  1.0000000          1.0000000           1.0000000
6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Medium_6 months    VitA                 Control                  1.2973414          0.8023137           2.0978012
6 months    ki1126311-ZVITAMBO          ZIMBABWE                       High_6 months      Control              Control                  1.0000000          1.0000000           1.0000000
6 months    ki1126311-ZVITAMBO          ZIMBABWE                       High_6 months      VitA                 Control                  1.3048966          0.8864962           1.9207699
6 months    ki1135781-COHORTS           GUATEMALA                      Low_6 months       Control              Control                  1.0000000          1.0000000           1.0000000
6 months    ki1135781-COHORTS           GUATEMALA                      Low_6 months       Other                Control                  0.8049793          0.5201743           1.2457202
6 months    ki1135781-COHORTS           GUATEMALA                      Medium_6 months    Control              Control                  1.0000000          1.0000000           1.0000000
6 months    ki1135781-COHORTS           GUATEMALA                      Medium_6 months    Other                Control                  0.3930636          0.1901278           0.8126057
6 months    ki1135781-COHORTS           GUATEMALA                      High_6 months      Control              Control                  1.0000000          1.0000000           1.0000000
6 months    ki1135781-COHORTS           GUATEMALA                      High_6 months      Other                Control                  0.8256048          0.3580474           1.9037240
6 months    ki1148112-iLiNS-DOSE        MALAWI                         Low_6 months       Control              Control                  1.0000000          1.0000000           1.0000000
6 months    ki1148112-iLiNS-DOSE        MALAWI                         Low_6 months       LNS                  Control                  0.9872242          0.4501897           2.1648906
6 months    ki1148112-iLiNS-DOSE        MALAWI                         Medium_6 months    Control              Control                  1.0000000          1.0000000           1.0000000
6 months    ki1148112-iLiNS-DOSE        MALAWI                         Medium_6 months    LNS                  Control                  1.1218487          0.4868214           2.5852287
6 months    ki1148112-iLiNS-DOSE        MALAWI                         High_6 months      Control              Control                  1.0000000          1.0000000           1.0000000
6 months    ki1148112-iLiNS-DOSE        MALAWI                         High_6 months      LNS                  Control                  0.5929054          0.2979400           1.1798914
6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Low_6 months       Control              Control                  1.0000000          1.0000000           1.0000000
6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Low_6 months       Maternal             Control                  0.8778689          0.3003635           2.5657370
6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Medium_6 months    Control              Control                  1.0000000          1.0000000           1.0000000
6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Medium_6 months    Maternal             Control                  0.7734375          0.3901698           1.5331929
6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         High_6 months      Control              Control                  1.0000000          1.0000000           1.0000000
6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         High_6 months      Maternal             Control                  0.5000000          0.1277026           1.9576737
6 months    ki1148112-LCNI-5            MALAWI                         Low_6 months       Control              Control                  1.0000000          1.0000000           1.0000000
6 months    ki1148112-LCNI-5            MALAWI                         Low_6 months       LNS                  Control                  0.7544643          0.3284117           1.7332402
6 months    ki1148112-LCNI-5            MALAWI                         Low_6 months       Other                Control                  1.0156250          0.3923230           2.6291959
6 months    ki1148112-LCNI-5            MALAWI                         Medium_6 months    Control              Control                  1.0000000          1.0000000           1.0000000
6 months    ki1148112-LCNI-5            MALAWI                         Medium_6 months    LNS                  Control                  2.7056452          0.6171157          11.8624679
6 months    ki1148112-LCNI-5            MALAWI                         Medium_6 months    Other                Control                  2.2101449          0.4433723          11.0172447
6 months    ki1148112-LCNI-5            MALAWI                         High_6 months      Control              Control                  1.0000000          1.0000000           1.0000000
6 months    ki1148112-LCNI-5            MALAWI                         High_6 months      LNS                  Control                  3.5724138          0.8318533          15.3418163
6 months    ki1148112-LCNI-5            MALAWI                         High_6 months      Other                Control                  1.4050633          0.2408084           8.1982319
6 months    kiGH5241-JiVitA-3           BANGLADESH                     Low_6 months       Control              Control                  1.0000000          1.0000000           1.0000000
6 months    kiGH5241-JiVitA-3           BANGLADESH                     Low_6 months       Maternal             Control                  0.8174750          0.6588299           1.0143214
6 months    kiGH5241-JiVitA-3           BANGLADESH                     Medium_6 months    Control              Control                  1.0000000          1.0000000           1.0000000
6 months    kiGH5241-JiVitA-3           BANGLADESH                     Medium_6 months    Maternal             Control                  0.8550503          0.6805055           1.0743644
6 months    kiGH5241-JiVitA-3           BANGLADESH                     High_6 months      Control              Control                  1.0000000          1.0000000           1.0000000
6 months    kiGH5241-JiVitA-3           BANGLADESH                     High_6 months      Maternal             Control                  0.8406460          0.6534878           1.0814063
6 months    kiGH5241-JiVitA-4           BANGLADESH                     Low_6 months       Control              Control                  1.0000000          1.0000000           1.0000000
6 months    kiGH5241-JiVitA-4           BANGLADESH                     Low_6 months       LNS                  Control                  0.8364076          0.4641040           1.5073726
6 months    kiGH5241-JiVitA-4           BANGLADESH                     Low_6 months       Other                Control                  0.6245418          0.3680508           1.0597789
6 months    kiGH5241-JiVitA-4           BANGLADESH                     Medium_6 months    Control              Control                  1.0000000          1.0000000           1.0000000
6 months    kiGH5241-JiVitA-4           BANGLADESH                     Medium_6 months    LNS                  Control                  0.7560976          0.0440435          12.9799629
6 months    kiGH5241-JiVitA-4           BANGLADESH                     Medium_6 months    Other                Control                  1.0689655          0.0924228          12.3636894
6 months    kiGH5241-JiVitA-4           BANGLADESH                     High_6 months      Control              Control                  1.0000000          1.0000000           1.0000000
6 months    kiGH5241-JiVitA-4           BANGLADESH                     High_6 months      LNS                  Control                  2.1818182          0.2330156          20.4292398
6 months    kiGH5241-JiVitA-4           BANGLADESH                     High_6 months      Other                Control                  1.1612903          0.1051745          12.8224497
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Low_24 months      Control              Control                  1.0000000          1.0000000           1.0000000
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Low_24 months      LNS                  Control                  1.3654618          0.6367436           2.9281582
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Low_24 months      Other                Control                  1.0468541          0.5104655           2.1468709
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Medium_24 months   Control              Control                  1.0000000          1.0000000           1.0000000
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Medium_24 months   LNS                  Control                  0.8245614          0.4358043           1.5601073
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Medium_24 months   Other                Control                  0.8103448          0.4609572           1.4245547
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     High_24 months     Control              Control                  1.0000000          1.0000000           1.0000000
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     High_24 months     LNS                  Control                  0.5505051          0.1903834           1.5918188
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     High_24 months     Other                Control                  0.9083333          0.4212870           1.9584497
24 months   ki1000111-WASH-Kenya        KENYA                          Low_24 months      Control              Control                  1.0000000          1.0000000           1.0000000
24 months   ki1000111-WASH-Kenya        KENYA                          Low_24 months      LNS                  Control                  0.5013130          0.3119339           0.8056664
24 months   ki1000111-WASH-Kenya        KENYA                          Low_24 months      Other                Control                  0.7504205          0.5349925           1.0525958
24 months   ki1000111-WASH-Kenya        KENYA                          Medium_24 months   Control              Control                  1.0000000          1.0000000           1.0000000
24 months   ki1000111-WASH-Kenya        KENYA                          Medium_24 months   LNS                  Control                  1.1047619          0.4043090           3.0187275
24 months   ki1000111-WASH-Kenya        KENYA                          Medium_24 months   Other                Control                  1.0593607          0.4564800           2.4584761
24 months   ki1000111-WASH-Kenya        KENYA                          High_24 months     Control              Control                  1.0000000          1.0000000           1.0000000
24 months   ki1000111-WASH-Kenya        KENYA                          High_24 months     LNS                  Control                  0.2355212          0.0293104           1.8925094
24 months   ki1000111-WASH-Kenya        KENYA                          High_24 months     Other                Control                  0.9014778          0.3416125           2.3789008
24 months   ki1000304-EU                INDIA                          Low_24 months      Control              Control                  1.0000000          1.0000000           1.0000000
24 months   ki1000304-EU                INDIA                          Low_24 months      Zinc                 Control                  0.9130435          0.4410342           1.8902127
24 months   ki1000304-EU                INDIA                          Medium_24 months   Control              Control                  1.0000000          1.0000000           1.0000000
24 months   ki1000304-EU                INDIA                          Medium_24 months   Zinc                 Control                  1.1102484          0.5804056           2.1237762
24 months   ki1000304-EU                INDIA                          High_24 months     Control              Control                  1.0000000          1.0000000           1.0000000
24 months   ki1000304-EU                INDIA                          High_24 months     Zinc                 Control                  0.8235294          0.1778713           3.8128725
24 months   ki1000304-Vitamin-B12       INDIA                          Low_24 months      Control              Control                  1.0000000          1.0000000           1.0000000
24 months   ki1000304-Vitamin-B12       INDIA                          Low_24 months      Other                Control                  3.4054054          0.8541704          13.5766654
24 months   ki1000304-Vitamin-B12       INDIA                          Medium_24 months   Control              Control                  1.0000000          1.0000000           1.0000000
24 months   ki1000304-Vitamin-B12       INDIA                          Medium_24 months   Other                Control                  1.7419355          0.2338852          12.9736240
24 months   ki1000304-ZnMort            INDIA                          Low_24 months      Control              Control                  1.0000000          1.0000000           1.0000000
24 months   ki1000304-ZnMort            INDIA                          Low_24 months      Zinc                 Control                  0.6627219          0.3267686           1.3440714
24 months   ki1000304-ZnMort            INDIA                          Medium_24 months   Control              Control                  1.0000000          1.0000000           1.0000000
24 months   ki1000304-ZnMort            INDIA                          Medium_24 months   Zinc                 Control                  1.0666667          0.3390348           3.3559320
24 months   ki1119695-PROBIT            BELARUS                        Low_24 months      Control              Control                  1.0000000          1.0000000           1.0000000
24 months   ki1119695-PROBIT            BELARUS                        Low_24 months      Maternal             Control                  1.0299479          0.1318563           8.0450635
24 months   ki1119695-PROBIT            BELARUS                        Medium_24 months   Control              Control                  1.0000000          1.0000000           1.0000000
24 months   ki1119695-PROBIT            BELARUS                        Medium_24 months   Maternal             Control                  1.8653846          0.2175673          15.9934844
24 months   ki1126311-ZVITAMBO          ZIMBABWE                       High_24 months     Control              Control                  1.0000000          1.0000000           1.0000000
24 months   ki1126311-ZVITAMBO          ZIMBABWE                       High_24 months     VitA                 Control                  3.3333333          0.4499982          24.6914548
24 months   ki1135781-COHORTS           GUATEMALA                      Low_24 months      Control              Control                  1.0000000          1.0000000           1.0000000
24 months   ki1135781-COHORTS           GUATEMALA                      Low_24 months      Other                Control                  0.6991041          0.4913839           0.9946329
24 months   ki1135781-COHORTS           GUATEMALA                      Medium_24 months   Control              Control                  1.0000000          1.0000000           1.0000000
24 months   ki1135781-COHORTS           GUATEMALA                      Medium_24 months   Other                Control                  1.1458333          0.6901794           1.9023083
24 months   ki1135781-COHORTS           GUATEMALA                      High_24 months     Control              Control                  1.0000000          1.0000000           1.0000000
24 months   ki1135781-COHORTS           GUATEMALA                      High_24 months     Other                Control                  0.7789474          0.4525774           1.3406744
24 months   ki1148112-iLiNS-DOSE        MALAWI                         Low_24 months      Control              Control                  1.0000000          1.0000000           1.0000000
24 months   ki1148112-iLiNS-DOSE        MALAWI                         Low_24 months      LNS                  Control                  1.0520111          0.5036804           2.1972809
24 months   ki1148112-iLiNS-DOSE        MALAWI                         Medium_24 months   Control              Control                  1.0000000          1.0000000           1.0000000
24 months   ki1148112-iLiNS-DOSE        MALAWI                         Medium_24 months   LNS                  Control                  0.8629442          0.4653572           1.6002174
24 months   ki1148112-iLiNS-DOSE        MALAWI                         High_24 months     Control              Control                  1.0000000          1.0000000           1.0000000
24 months   ki1148112-iLiNS-DOSE        MALAWI                         High_24 months     LNS                  Control                  0.8765625          0.4300778           1.7865647
24 months   ki1148112-LCNI-5            MALAWI                         Low_24 months      Control              Control                  1.0000000          1.0000000           1.0000000
24 months   ki1148112-LCNI-5            MALAWI                         Low_24 months      LNS                  Control                  0.4338625          0.1662873           1.1319965
24 months   ki1148112-LCNI-5            MALAWI                         Low_24 months      Other                Control                  0.6212121          0.1862885           2.0715419
24 months   ki1148112-LCNI-5            MALAWI                         Medium_24 months   Control              Control                  1.0000000          1.0000000           1.0000000
24 months   ki1148112-LCNI-5            MALAWI                         Medium_24 months   LNS                  Control                  2.6250000          0.5756232          11.9707210
24 months   ki1148112-LCNI-5            MALAWI                         Medium_24 months   Other                Control                  2.1818182          0.4243551          11.2177993
24 months   ki1148112-LCNI-5            MALAWI                         High_24 months     Control              Control                  1.0000000          1.0000000           1.0000000
24 months   ki1148112-LCNI-5            MALAWI                         High_24 months     LNS                  Control                  0.3582090          0.0847245           1.5144808
24 months   ki1148112-LCNI-5            MALAWI                         High_24 months     Other                Control                  0.0000000          0.0000000           0.0000001
24 months   kiGH5241-JiVitA-3           BANGLADESH                     Low_24 months      Control              Control                  1.0000000          1.0000000           1.0000000
24 months   kiGH5241-JiVitA-3           BANGLADESH                     Low_24 months      Maternal             Control                  2.2105263          0.5387031           9.0707231
24 months   kiGH5241-JiVitA-3           BANGLADESH                     Medium_24 months   Control              Control                  1.0000000          1.0000000           1.0000000
24 months   kiGH5241-JiVitA-3           BANGLADESH                     Medium_24 months   Maternal             Control                  0.6285714          0.2000769           1.9747511
24 months   kiGH5241-JiVitA-3           BANGLADESH                     High_24 months     Control              Control                  1.0000000          1.0000000           1.0000000
24 months   kiGH5241-JiVitA-3           BANGLADESH                     High_24 months     Maternal             Control                  0.3545455          0.0764515           1.6442119
24 months   kiGH5241-JiVitA-4           BANGLADESH                     Low_24 months      Control              Control                  1.0000000          1.0000000           1.0000000
24 months   kiGH5241-JiVitA-4           BANGLADESH                     Low_24 months      LNS                  Control                  0.9134809          0.4049946           2.0603914
24 months   kiGH5241-JiVitA-4           BANGLADESH                     Low_24 months      Other                Control                  0.6585634          0.3136203           1.3829010
24 months   kiGH5241-JiVitA-4           BANGLADESH                     High_24 months     Control              Control                  1.0000000          1.0000000           1.0000000
24 months   kiGH5241-JiVitA-4           BANGLADESH                     High_24 months     LNS                  Control           51399463.9968508   13864608.8379546   190550265.7912210
24 months   kiGH5241-JiVitA-4           BANGLADESH                     High_24 months     Other                Control           16521256.2847021    2426677.8530674   112479663.8662987


### Parameter: PAR


agecat      studyid                     country                        intXmeducyrs       intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------------------  -----------------------------  -----------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000304b-SAS-CompFeed     INDIA                          Low_Birth          Control              NA                 0.0414747   -0.0427146    0.1256639
Birth       ki1126311-ZVITAMBO          ZIMBABWE                       Low_Birth          Control              NA                -0.0054230   -0.0178329    0.0069869
Birth       ki1126311-ZVITAMBO          ZIMBABWE                       Medium_Birth       Control              NA                 0.0034868   -0.0068924    0.0138660
Birth       ki1126311-ZVITAMBO          ZIMBABWE                       High_Birth         Control              NA                -0.0004431   -0.0070055    0.0061192
Birth       ki1135781-COHORTS           GUATEMALA                      Low_Birth          Control              NA                 0.0002558   -0.0147246    0.0152361
Birth       kiGH5241-JiVitA-3           BANGLADESH                     Low_Birth          Control              NA                -0.0085856   -0.0167670   -0.0004041
Birth       kiGH5241-JiVitA-3           BANGLADESH                     Medium_Birth       Control              NA                -0.0039271   -0.0131779    0.0053237
Birth       kiGH5241-JiVitA-3           BANGLADESH                     High_Birth         Control              NA                -0.0136396   -0.0212813   -0.0059979
Birth       kiGH5241-JiVitA-4           BANGLADESH                     Low_Birth          Control              NA                 0.0302174   -0.0027966    0.0632315
6 months    iLiNS_DYADM_LNS             MALAWI                         Low_6 months       Control              NA                -0.0128501   -0.0344371    0.0087368
6 months    iLiNS_DYADM_LNS             MALAWI                         Medium_6 months    Control              NA                -0.0165596   -0.0456397    0.0125204
6 months    iLiNS_DYADM_LNS             MALAWI                         High_6 months      Control              NA                -0.0104611   -0.0368514    0.0159292
6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Low_6 months       Control              NA                 0.0051329   -0.0557166    0.0659823
6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Medium_6 months    Control              NA                -0.0145889   -0.0685450    0.0393673
6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Low_6 months       Control              NA                 0.0102784   -0.0349919    0.0555488
6 months    ki1000304-EU                INDIA                          Low_6 months       Control              NA                 0.0328036   -0.0258458    0.0914529
6 months    ki1000304-EU                INDIA                          Medium_6 months    Control              NA                -0.0219899   -0.0704271    0.0264473
6 months    ki1000304-EU                INDIA                          High_6 months      Control              NA                -0.0070175   -0.0461222    0.0320871
6 months    ki1000304-VITAMIN-A         INDIA                          Low_6 months       Control              NA                 0.0052363   -0.0131547    0.0236274
6 months    ki1000304-VITAMIN-A         INDIA                          Medium_6 months    Control              NA                -0.0006843   -0.0206925    0.0193239
6 months    ki1000304-VITAMIN-A         INDIA                          High_6 months      Control              NA                 0.0041916   -0.0126189    0.0210021
6 months    ki1000304-ZnMort            INDIA                          Medium_6 months    Control              NA                 0.0658333   -0.0326549    0.1643215
6 months    ki1000304b-SAS-CompFeed     INDIA                          Low_6 months       Control              NA                -0.0022414   -0.0326843    0.0282014
6 months    ki1000304b-SAS-CompFeed     INDIA                          Medium_6 months    Control              NA                -0.0076360   -0.0523410    0.0370691
6 months    ki1000304b-SAS-CompFeed     INDIA                          High_6 months      Control              NA                -0.0029014   -0.0301607    0.0243580
6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Low_6 months       Control              NA                -0.0037115   -0.0758187    0.0683957
6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Medium_6 months    Control              NA                -0.1684211   -0.3944932    0.0576511
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Medium_6 months    Control              NA                -0.0083378   -0.0215180    0.0048424
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   High_6 months      Control              NA                -0.0139096   -0.0414474    0.0136282
6 months    ki1112895-Guatemala BSC     GUATEMALA                      Low_6 months       Control              NA                -0.0268199   -0.1040845    0.0504447
6 months    ki1112895-Guatemala BSC     GUATEMALA                      High_6 months      Control              NA                -0.0401099   -0.1154197    0.0351999
6 months    ki1119695-PROBIT            BELARUS                        Low_6 months       Control              NA                -0.0049789   -0.0141281    0.0041702
6 months    ki1119695-PROBIT            BELARUS                        Medium_6 months    Control              NA                -0.0033177   -0.0082951    0.0016598
6 months    ki1119695-PROBIT            BELARUS                        High_6 months      Control              NA                -0.0022473   -0.0068898    0.0023953
6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Low_6 months       Control              NA                 0.0053339   -0.0117782    0.0224461
6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Medium_6 months    Control              NA                 0.0091443   -0.0066235    0.0249120
6 months    ki1126311-ZVITAMBO          ZIMBABWE                       High_6 months      Control              NA                 0.0070214   -0.0024755    0.0165183
6 months    ki1135781-COHORTS           GUATEMALA                      Low_6 months       Control              NA                -0.0189359   -0.0573717    0.0194999
6 months    ki1135781-COHORTS           GUATEMALA                      Medium_6 months    Control              NA                -0.0499714   -0.0889452   -0.0109977
6 months    ki1135781-COHORTS           GUATEMALA                      High_6 months      Control              NA                -0.0082605   -0.0431757    0.0266547
6 months    ki1148112-iLiNS-DOSE        MALAWI                         Low_6 months       Control              NA                -0.0007432   -0.0463252    0.0448387
6 months    ki1148112-iLiNS-DOSE        MALAWI                         Medium_6 months    Control              NA                 0.0069206   -0.0413568    0.0551980
6 months    ki1148112-iLiNS-DOSE        MALAWI                         High_6 months      Control              NA                -0.0290526   -0.0738928    0.0157876
6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Low_6 months       Control              NA                -0.0034493   -0.0324693    0.0255707
6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Medium_6 months    Control              NA                -0.0132149   -0.0495737    0.0231440
6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         High_6 months      Control              NA                -0.0149813   -0.0472246    0.0172620
6 months    ki1148112-LCNI-5            MALAWI                         Low_6 months       Control              NA                -0.0157972   -0.0838325    0.0522380
6 months    ki1148112-LCNI-5            MALAWI                         Medium_6 months    Control              NA                 0.0380793   -0.0071058    0.0832643
6 months    ki1148112-LCNI-5            MALAWI                         High_6 months      Control              NA                 0.0367314   -0.0014986    0.0749613
6 months    kiGH5241-JiVitA-3           BANGLADESH                     Low_6 months       Control              NA                -0.0076958   -0.0159004    0.0005088
6 months    kiGH5241-JiVitA-3           BANGLADESH                     Medium_6 months    Control              NA                -0.0052829   -0.0130499    0.0024842
6 months    kiGH5241-JiVitA-3           BANGLADESH                     High_6 months      Control              NA                -0.0036179   -0.0089048    0.0016690
6 months    kiGH5241-JiVitA-4           BANGLADESH                     Low_6 months       Control              NA                -0.0156696   -0.0367477    0.0054085
6 months    kiGH5241-JiVitA-4           BANGLADESH                     Medium_6 months    Control              NA                -0.0029777   -0.1148776    0.1089222
6 months    kiGH5241-JiVitA-4           BANGLADESH                     High_6 months      Control              NA                 0.0207803   -0.0746867    0.1162473
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Low_24 months      Control              NA                 0.0159120   -0.0565516    0.0883757
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Medium_24 months   Control              NA                -0.0242274   -0.0898591    0.0414044
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     High_24 months     Control              NA                -0.0128520   -0.0569969    0.0312928
24 months   ki1000111-WASH-Kenya        KENYA                          Low_24 months      Control              NA                -0.0332616   -0.0602847   -0.0062385
24 months   ki1000111-WASH-Kenya        KENYA                          Medium_24 months   Control              NA                 0.0024927   -0.0243989    0.0293843
24 months   ki1000111-WASH-Kenya        KENYA                          High_24 months     Control              NA                -0.0076207   -0.0292851    0.0140436
24 months   ki1000304-EU                INDIA                          Low_24 months      Control              NA                -0.0119048   -0.1072563    0.0834468
24 months   ki1000304-EU                INDIA                          Medium_24 months   Control              NA                 0.0127813   -0.0667877    0.0923502
24 months   ki1000304-EU                INDIA                          High_24 months     Control              NA                -0.0103687   -0.0928034    0.0720661
24 months   ki1000304-Vitamin-B12       INDIA                          Low_24 months      Control              NA                 0.1797980    0.0311684    0.3284276
24 months   ki1000304-Vitamin-B12       INDIA                          Medium_24 months   Control              NA                 0.0638889   -0.1310497    0.2588275
24 months   ki1000304-ZnMort            INDIA                          Low_24 months      Control              NA                -0.0753968   -0.2016410    0.0508473
24 months   ki1000304-ZnMort            INDIA                          Medium_24 months   Control              NA                 0.0048077   -0.0811948    0.0908102
24 months   ki1119695-PROBIT            BELARUS                        Low_24 months      Control              NA                 0.0006673   -0.0453681    0.0467028
24 months   ki1119695-PROBIT            BELARUS                        Medium_24 months   Control              NA                 0.0046161   -0.0137761    0.0230083
24 months   ki1126311-ZVITAMBO          ZIMBABWE                       High_24 months     Control              NA                 0.1750000   -0.0563332    0.4063332
24 months   ki1135781-COHORTS           GUATEMALA                      Low_24 months      Control              NA                -0.0855286   -0.1690481   -0.0020092
24 months   ki1135781-COHORTS           GUATEMALA                      Medium_24 months   Control              NA                 0.0234775   -0.0641840    0.1111389
24 months   ki1135781-COHORTS           GUATEMALA                      High_24 months     Control              NA                -0.0508269   -0.1590816    0.0574277
24 months   ki1148112-iLiNS-DOSE        MALAWI                         Low_24 months      Control              NA                 0.0074059   -0.0983473    0.1131592
24 months   ki1148112-iLiNS-DOSE        MALAWI                         Medium_24 months   Control              NA                -0.0309396   -0.1672352    0.1053559
24 months   ki1148112-iLiNS-DOSE        MALAWI                         High_24 months     Control              NA                -0.0159693   -0.1059460    0.0740075
24 months   ki1148112-LCNI-5            MALAWI                         Low_24 months      Control              NA                -0.0766551   -0.1736781    0.0203680
24 months   ki1148112-LCNI-5            MALAWI                         Medium_24 months   Control              NA                 0.0555556   -0.0182190    0.1293301
24 months   ki1148112-LCNI-5            MALAWI                         High_24 months     Control              NA                -0.0742754   -0.1661572    0.0176065
24 months   kiGH5241-JiVitA-3           BANGLADESH                     Low_24 months      Control              NA                 0.1095238   -0.0603327    0.2793803
24 months   kiGH5241-JiVitA-3           BANGLADESH                     Medium_24 months   Control              NA                -0.1212121   -0.4431301    0.2007058
24 months   kiGH5241-JiVitA-3           BANGLADESH                     High_24 months     Control              NA                -0.0921779   -0.2104714    0.0261157
24 months   kiGH5241-JiVitA-4           BANGLADESH                     Low_24 months      Control              NA                -0.0217169   -0.0761605    0.0327267
24 months   kiGH5241-JiVitA-4           BANGLADESH                     High_24 months     Control              NA                 0.1935484    0.0067540    0.3803428


### Parameter: PAF


agecat      studyid                     country                        intXmeducyrs       intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------------------  -----------------------------  -----------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000304b-SAS-CompFeed     INDIA                          Low_Birth          Control              NA                 0.3673469   -1.1450405    0.8134068
Birth       ki1126311-ZVITAMBO          ZIMBABWE                       Low_Birth          Control              NA                -0.1431664   -0.5212844    0.1409696
Birth       ki1126311-ZVITAMBO          ZIMBABWE                       Medium_Birth       Control              NA                 0.1010275   -0.2554215    0.3562707
Birth       ki1126311-ZVITAMBO          ZIMBABWE                       High_Birth         Control              NA                -0.0155766   -0.2745294    0.1907634
Birth       ki1135781-COHORTS           GUATEMALA                      Low_Birth          Control              NA                 0.0142857   -1.3035048    0.5781938
Birth       kiGH5241-JiVitA-3           BANGLADESH                     Low_Birth          Control              NA                -0.0744239   -0.1481596   -0.0054235
Birth       kiGH5241-JiVitA-3           BANGLADESH                     Medium_Birth       Control              NA                -0.0343860   -0.1184590    0.0433674
Birth       kiGH5241-JiVitA-3           BANGLADESH                     High_Birth         Control              NA                -0.1765204   -0.2781293   -0.0829893
Birth       kiGH5241-JiVitA-4           BANGLADESH                     Low_Birth          Control              NA                 0.4278787   -0.1785148    0.7222583
6 months    iLiNS_DYADM_LNS             MALAWI                         Low_6 months       Control              NA                -0.4405762   -1.2984053    0.0970871
6 months    iLiNS_DYADM_LNS             MALAWI                         Medium_6 months    Control              NA                -0.2227273   -0.6710262    0.1053031
6 months    iLiNS_DYADM_LNS             MALAWI                         High_6 months      Control              NA                -0.3033708   -1.2830742    0.2559263
6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Low_6 months       Control              NA                 0.0758929   -1.4446275    0.6506732
6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Medium_6 months    Control              NA                -0.3384615   -2.3723006    0.4687664
6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Low_6 months       Control              NA                 0.1393298   -0.7447564    0.5754403
6 months    ki1000304-EU                INDIA                          Low_6 months       Control              NA                 0.2334842   -0.3048036    0.5497050
6 months    ki1000304-EU                INDIA                          Medium_6 months    Control              NA                -0.2006579   -0.7249429    0.1642741
6 months    ki1000304-EU                INDIA                          High_6 months      Control              NA                -0.1111111   -0.9308459    0.3606077
6 months    ki1000304-VITAMIN-A         INDIA                          Low_6 months       Control              NA                 0.0418554   -0.1169124    0.1780545
6 months    ki1000304-VITAMIN-A         INDIA                          Medium_6 months    Control              NA                -0.0072816   -0.2443582    0.1846269
6 months    ki1000304-VITAMIN-A         INDIA                          High_6 months      Control              NA                 0.1129401   -0.4736202    0.4660258
6 months    ki1000304-ZnMort            INDIA                          Medium_6 months    Control              NA                 0.4514286   -0.6796043    0.8208324
6 months    ki1000304b-SAS-CompFeed     INDIA                          Low_6 months       Control              NA                -0.0172269   -0.2763812    0.1893092
6 months    ki1000304b-SAS-CompFeed     INDIA                          Medium_6 months    Control              NA                -0.1129032   -1.0190647    0.3865706
6 months    ki1000304b-SAS-CompFeed     INDIA                          High_6 months      Control              NA                -0.0681818   -0.9506215    0.4150519
6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Low_6 months       Control              NA                -0.0234234   -0.5964594    0.3439260
6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Medium_6 months    Control              NA                -1.2800000   -3.6277638   -0.1233071
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Medium_6 months    Control              NA                -0.5944371   -1.8016366    0.0925912
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   High_6 months      Control              NA                -0.8484848   -3.3155151    0.2082298
6 months    ki1112895-Guatemala BSC     GUATEMALA                      Low_6 months       Control              NA                -0.2413793   -1.1441203    0.2812798
6 months    ki1112895-Guatemala BSC     GUATEMALA                      High_6 months      Control              NA                -0.3650000   -1.2180400    0.1599678
6 months    ki1119695-PROBIT            BELARUS                        Low_6 months       Control              NA                -0.2302312   -0.6876816    0.1032261
6 months    ki1119695-PROBIT            BELARUS                        Medium_6 months    Control              NA                -0.2451494   -0.6047545    0.0338728
6 months    ki1119695-PROBIT            BELARUS                        High_6 months      Control              NA                -0.2201423   -0.7320137    0.1404529
6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Low_6 months       Control              NA                 0.1134868   -0.3355656    0.4115559
6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Medium_6 months    Control              NA                 0.1824188   -0.1985590    0.4422978
6 months    ki1126311-ZVITAMBO          ZIMBABWE                       High_6 months      Control              NA                 0.1875199   -0.1080698    0.4042579
6 months    ki1135781-COHORTS           GUATEMALA                      Low_6 months       Control              NA                -0.1211340   -0.3950166    0.0989774
6 months    ki1135781-COHORTS           GUATEMALA                      Medium_6 months    Control              NA                -0.5147059   -0.9398670   -0.1827275
6 months    ki1135781-COHORTS           GUATEMALA                      High_6 months      Control              NA                -0.0642884   -0.3728719    0.1749342
6 months    ki1148112-iLiNS-DOSE        MALAWI                         Low_6 months       Control              NA                -0.0107317   -0.9383543    0.4729660
6 months    ki1148112-iLiNS-DOSE        MALAWI                         Medium_6 months    Control              NA                 0.0930979   -0.8549553    0.5566085
6 months    ki1148112-iLiNS-DOSE        MALAWI                         High_6 months      Control              NA                -0.5149573   -1.5389985    0.0960627
6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Low_6 months       Control              NA                -0.0894358   -1.1709323    0.4532900
6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Medium_6 months    Control              NA                -0.1700880   -0.7412253    0.2137113
6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         High_6 months      Control              NA                -0.5000000   -1.9720099    0.2429366
6 months    ki1148112-LCNI-5            MALAWI                         Low_6 months       Control              NA                -0.1472527   -0.9913808    0.3390572
6 months    ki1148112-LCNI-5            MALAWI                         Medium_6 months    Control              NA                 0.5373406   -0.6713715    0.8719293
6 months    ki1148112-LCNI-5            MALAWI                         High_6 months      Control              NA                 0.5761024   -0.5436183    0.8835922
6 months    kiGH5241-JiVitA-3           BANGLADESH                     Low_6 months       Control              NA                -0.1029698   -0.2188364    0.0018822
6 months    kiGH5241-JiVitA-3           BANGLADESH                     Medium_6 months    Control              NA                -0.0795167   -0.2018509    0.0303653
6 months    kiGH5241-JiVitA-3           BANGLADESH                     High_6 months      Control              NA                -0.0858175   -0.2174857    0.0316111
6 months    kiGH5241-JiVitA-4           BANGLADESH                     Low_6 months       Control              NA                -0.2817483   -0.7342292    0.0526749
6 months    kiGH5241-JiVitA-4           BANGLADESH                     Medium_6 months    Control              NA                -0.0483871   -4.9366476    0.8148592
6 months    kiGH5241-JiVitA-4           BANGLADESH                     High_6 months      Control              NA                 0.2722222   -3.0654725    0.8697174
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Low_24 months      Control              NA                 0.1073217   -0.5423983    0.4833535
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Medium_24 months   Control              NA                -0.1659574   -0.7130276    0.2064011
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     High_24 months     Control              NA                -0.1843463   -1.0172687    0.3046656
24 months   ki1000111-WASH-Kenya        KENYA                          Low_24 months      Control              NA                -0.2911594   -0.5472042   -0.0774871
24 months   ki1000111-WASH-Kenya        KENYA                          Medium_24 months   Control              NA                 0.0459770   -0.6041094    0.4326074
24 months   ki1000111-WASH-Kenya        KENYA                          High_24 months     Control              NA                -0.2487946   -1.1845692    0.2861348
24 months   ki1000304-EU                INDIA                          Low_24 months      Control              NA                -0.0476190   -0.5075355    0.2719868
24 months   ki1000304-EU                INDIA                          Medium_24 months   Control              NA                 0.0478114   -0.3014389    0.3033380
24 months   ki1000304-EU                INDIA                          High_24 months     Control              NA                -0.1071429   -1.3831914    0.4856622
24 months   ki1000304-Vitamin-B12       INDIA                          Low_24 months      Control              NA                 0.6180556   -0.2879925    0.8867373
24 months   ki1000304-Vitamin-B12       INDIA                          Medium_24 months   Control              NA                 0.3650794   -2.5534795    0.8865551
24 months   ki1000304-ZnMort            INDIA                          Low_24 months      Control              NA                -0.1938776   -0.5714066    0.0929505
24 months   ki1000304-ZnMort            INDIA                          Medium_24 months   Control              NA                 0.0250000   -0.5422474    0.3836106
24 months   ki1119695-PROBIT            BELARUS                        Low_24 months      Control              NA                 0.0185036   -2.6324427    0.7347969
24 months   ki1119695-PROBIT            BELARUS                        Medium_24 months   Control              NA                 0.3092784   -1.9178149    0.8364885
24 months   ki1126311-ZVITAMBO          ZIMBABWE                       High_24 months     Control              NA                 0.5833333   -1.2410728    0.9225321
24 months   ki1135781-COHORTS           GUATEMALA                      Low_24 months      Control              NA                -0.1906067   -0.3953128   -0.0159329
24 months   ki1135781-COHORTS           GUATEMALA                      Medium_24 months   Control              NA                 0.0636364   -0.2069072    0.2735342
24 months   ki1135781-COHORTS           GUATEMALA                      High_24 months     Control              NA                -0.1098518   -0.3722678    0.1023830
24 months   ki1148112-iLiNS-DOSE        MALAWI                         Low_24 months      Control              NA                 0.0415743   -0.7804835    0.4840840
24 months   ki1148112-iLiNS-DOSE        MALAWI                         Medium_24 months   Control              NA                -0.1323529   -0.8945236    0.3231949
24 months   ki1148112-iLiNS-DOSE        MALAWI                         High_24 months     Control              NA                -0.1133429   -0.9748759    0.3723492
24 months   ki1148112-LCNI-5            MALAWI                         Low_24 months      Control              NA                -0.5365853   -1.3607261   -0.0001561
24 months   ki1148112-LCNI-5            MALAWI                         Medium_24 months   Control              NA                 0.5000000   -0.7236388    0.8549580
24 months   ki1148112-LCNI-5            MALAWI                         High_24 months     Control              NA                -1.4642857   -3.6523540   -0.3052970
24 months   kiGH5241-JiVitA-3           BANGLADESH                     Low_24 months      Control              NA                 0.3650794   -0.6438723    0.7547716
24 months   kiGH5241-JiVitA-3           BANGLADESH                     Medium_24 months   Control              NA                -0.3636364   -1.7823948    0.3316893
24 months   kiGH5241-JiVitA-3           BANGLADESH                     High_24 months     Control              NA                -0.4854701   -1.2827497    0.0333494
24 months   kiGH5241-JiVitA-4           BANGLADESH                     Low_24 months      Control              NA                -0.2136836   -0.8793052    0.2161849
24 months   kiGH5241-JiVitA-4           BANGLADESH                     High_24 months     Control              NA                 1.0000000    0.9999999    1.0000000
