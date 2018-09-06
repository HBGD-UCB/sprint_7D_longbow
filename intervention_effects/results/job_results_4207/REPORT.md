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
* intXmeducyrs

## Data Summary

agecat        studyid                     country                        intXmeducyrs          ever_stunted   n_cell       n
------------  --------------------------  -----------------------------  -------------------  -------------  -------  ------
0-6 months    iLiNS_DYADM_LNS             MALAWI                         Low_0-6 months                   0       10      13
0-6 months    iLiNS_DYADM_LNS             MALAWI                         Low_0-6 months                   1        3      13
0-6 months    iLiNS_DYADM_LNS             MALAWI                         Medium_0-6 months                0       11      16
0-6 months    iLiNS_DYADM_LNS             MALAWI                         Medium_0-6 months                1        5      16
0-6 months    iLiNS_DYADM_LNS             MALAWI                         High_0-6 months                  0       12      14
0-6 months    iLiNS_DYADM_LNS             MALAWI                         High_0-6 months                  1        2      14
0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Low_0-6 months                   0       50      62
0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Low_0-6 months                   1       12      62
0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Medium_0-6 months                0       80      86
0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Medium_0-6 months                1        6      86
0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     High_0-6 months                  0       79      84
0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     High_0-6 months                  1        5      84
0-6 months    ki1000111-WASH-Kenya        KENYA                          Low_0-6 months                   0       48      53
0-6 months    ki1000111-WASH-Kenya        KENYA                          Low_0-6 months                   1        5      53
0-6 months    ki1000111-WASH-Kenya        KENYA                          Medium_0-6 months                0       18      19
0-6 months    ki1000111-WASH-Kenya        KENYA                          Medium_0-6 months                1        1      19
0-6 months    ki1000111-WASH-Kenya        KENYA                          High_0-6 months                  0       19      20
0-6 months    ki1000111-WASH-Kenya        KENYA                          High_0-6 months                  1        1      20
0-6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Low_0-6 months                   0       50      65
0-6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Low_0-6 months                   1       15      65
0-6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Medium_0-6 months                0       12      15
0-6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Medium_0-6 months                1        3      15
0-6 months    ki1000125-AgaKhanUniv       PAKISTAN                       High_0-6 months                  0       14      17
0-6 months    ki1000125-AgaKhanUniv       PAKISTAN                       High_0-6 months                  1        3      17
0-6 months    ki1000304-EU                INDIA                          Low_0-6 months                   0        2       6
0-6 months    ki1000304-EU                INDIA                          Low_0-6 months                   1        4       6
0-6 months    ki1000304-EU                INDIA                          Medium_0-6 months                0        2       5
0-6 months    ki1000304-EU                INDIA                          Medium_0-6 months                1        3       5
0-6 months    ki1000304-EU                INDIA                          High_0-6 months                  0        3       3
0-6 months    ki1000304-EU                INDIA                          High_0-6 months                  1        0       3
0-6 months    ki1000304-VITAMIN-A         INDIA                          Low_0-6 months                   0       91     156
0-6 months    ki1000304-VITAMIN-A         INDIA                          Low_0-6 months                   1       65     156
0-6 months    ki1000304-VITAMIN-A         INDIA                          Medium_0-6 months                0       81     113
0-6 months    ki1000304-VITAMIN-A         INDIA                          Medium_0-6 months                1       32     113
0-6 months    ki1000304-VITAMIN-A         INDIA                          High_0-6 months                  0       55      65
0-6 months    ki1000304-VITAMIN-A         INDIA                          High_0-6 months                  1       10      65
0-6 months    ki1000304-Vitamin-B12       INDIA                          Low_0-6 months                   0        1       1
0-6 months    ki1000304-Vitamin-B12       INDIA                          Low_0-6 months                   1        0       1
0-6 months    ki1000304-ZnMort            INDIA                          Low_0-6 months                   0       41      77
0-6 months    ki1000304-ZnMort            INDIA                          Low_0-6 months                   1       36      77
0-6 months    ki1000304-ZnMort            INDIA                          Medium_0-6 months                0       37      60
0-6 months    ki1000304-ZnMort            INDIA                          Medium_0-6 months                1       23      60
0-6 months    ki1000304-ZnMort            INDIA                          High_0-6 months                  0       31      44
0-6 months    ki1000304-ZnMort            INDIA                          High_0-6 months                  1       13      44
0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Low_0-6 months                   0      225     346
0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Low_0-6 months                   1      121     346
0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Medium_0-6 months                0      190     264
0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Medium_0-6 months                1       74     264
0-6 months    ki1000304b-SAS-CompFeed     INDIA                          High_0-6 months                  0      154     182
0-6 months    ki1000304b-SAS-CompFeed     INDIA                          High_0-6 months                  1       28     182
0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Low_0-6 months                   0      203     331
0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Low_0-6 months                   1      128     331
0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Medium_0-6 months                0       28      45
0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Medium_0-6 months                1       17      45
0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          High_0-6 months                  0       26      40
0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          High_0-6 months                  1       14      40
0-6 months    ki1017093b-PROVIDE          BANGLADESH                     Low_0-6 months                   0      167     196
0-6 months    ki1017093b-PROVIDE          BANGLADESH                     Low_0-6 months                   1       29     196
0-6 months    ki1017093b-PROVIDE          BANGLADESH                     Medium_0-6 months                0      189     224
0-6 months    ki1017093b-PROVIDE          BANGLADESH                     Medium_0-6 months                1       35     224
0-6 months    ki1017093b-PROVIDE          BANGLADESH                     High_0-6 months                  0      195     220
0-6 months    ki1017093b-PROVIDE          BANGLADESH                     High_0-6 months                  1       25     220
0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Low_0-6 months                   0       71      77
0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Low_0-6 months                   1        6      77
0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Medium_0-6 months                0     1463    1577
0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Medium_0-6 months                1      114    1577
0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   High_0-6 months                  0      535     572
0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   High_0-6 months                  1       37     572
0-6 months    ki1112895-Burkina Faso Zn   BURKINA FASO                   Low_0-6 months                   0       25      29
0-6 months    ki1112895-Burkina Faso Zn   BURKINA FASO                   Low_0-6 months                   1        4      29
0-6 months    ki1112895-Burkina Faso Zn   BURKINA FASO                   Medium_0-6 months                0        6       7
0-6 months    ki1112895-Burkina Faso Zn   BURKINA FASO                   Medium_0-6 months                1        1       7
0-6 months    ki1112895-Burkina Faso Zn   BURKINA FASO                   High_0-6 months                  0        1       1
0-6 months    ki1112895-Burkina Faso Zn   BURKINA FASO                   High_0-6 months                  1        0       1
0-6 months    ki1112895-Guatemala BSC     GUATEMALA                      Low_0-6 months                   0       50      65
0-6 months    ki1112895-Guatemala BSC     GUATEMALA                      Low_0-6 months                   1       15      65
0-6 months    ki1112895-Guatemala BSC     GUATEMALA                      Medium_0-6 months                0       55      70
0-6 months    ki1112895-Guatemala BSC     GUATEMALA                      Medium_0-6 months                1       15      70
0-6 months    ki1112895-Guatemala BSC     GUATEMALA                      High_0-6 months                  0       76     101
0-6 months    ki1112895-Guatemala BSC     GUATEMALA                      High_0-6 months                  1       25     101
0-6 months    ki1119695-PROBIT            BELARUS                        Low_0-6 months                   0     5338    5814
0-6 months    ki1119695-PROBIT            BELARUS                        Low_0-6 months                   1      476    5814
0-6 months    ki1119695-PROBIT            BELARUS                        Medium_0-6 months                0     7209    7651
0-6 months    ki1119695-PROBIT            BELARUS                        Medium_0-6 months                1      442    7651
0-6 months    ki1119695-PROBIT            BELARUS                        High_0-6 months                  0     2586    2720
0-6 months    ki1119695-PROBIT            BELARUS                        High_0-6 months                  1      134    2720
0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Low_0-6 months                   0     1519    1886
0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Low_0-6 months                   1      367    1886
0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Medium_0-6 months                0     1826    2265
0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Medium_0-6 months                1      439    2265
0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       High_0-6 months                  0     4148    4937
0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       High_0-6 months                  1      789    4937
0-6 months    ki1135781-COHORTS           GUATEMALA                      Low_0-6 months                   0       91     143
0-6 months    ki1135781-COHORTS           GUATEMALA                      Low_0-6 months                   1       52     143
0-6 months    ki1135781-COHORTS           GUATEMALA                      Medium_0-6 months                0       71      93
0-6 months    ki1135781-COHORTS           GUATEMALA                      Medium_0-6 months                1       22      93
0-6 months    ki1135781-COHORTS           GUATEMALA                      High_0-6 months                  0       43      60
0-6 months    ki1135781-COHORTS           GUATEMALA                      High_0-6 months                  1       17      60
0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         Low_0-6 months                   0      227     343
0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         Low_0-6 months                   1      116     343
0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         Medium_0-6 months                0      259     373
0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         Medium_0-6 months                1      114     373
0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         High_0-6 months                  0      335     444
0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         High_0-6 months                  1      109     444
0-6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Low_0-6 months                   0       15      19
0-6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Low_0-6 months                   1        4      19
0-6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Medium_0-6 months                0       19      27
0-6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Medium_0-6 months                1        8      27
0-6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         High_0-6 months                  0       20      24
0-6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         High_0-6 months                  1        4      24
0-6 months    ki1148112-LCNI-5            MALAWI                         Low_0-6 months                   0       49      92
0-6 months    ki1148112-LCNI-5            MALAWI                         Low_0-6 months                   1       43      92
0-6 months    ki1148112-LCNI-5            MALAWI                         Medium_0-6 months                0       58      88
0-6 months    ki1148112-LCNI-5            MALAWI                         Medium_0-6 months                1       30      88
0-6 months    ki1148112-LCNI-5            MALAWI                         High_0-6 months                  0       65      87
0-6 months    ki1148112-LCNI-5            MALAWI                         High_0-6 months                  1       22      87
0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Low_0-6 months                   0     9528   13558
0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Low_0-6 months                   1     4030   13558
0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Medium_0-6 months                0     8534   11880
0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Medium_0-6 months                1     3346   11880
0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     High_0-6 months                  0    10710   13236
0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     High_0-6 months                  1     2526   13236
0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     Low_0-6 months                   0     2694    3610
0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     Low_0-6 months                   1      916    3610
0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     Medium_0-6 months                0      102     134
0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     Medium_0-6 months                1       32     134
0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     High_0-6 months                  0       82     130
0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     High_0-6 months                  1       48     130
6-24 months   iLiNS_DYADM_LNS             MALAWI                         Low_6-24 months                  0      101     163
6-24 months   iLiNS_DYADM_LNS             MALAWI                         Low_6-24 months                  1       62     163
6-24 months   iLiNS_DYADM_LNS             MALAWI                         Medium_6-24 months               0      139     189
6-24 months   iLiNS_DYADM_LNS             MALAWI                         Medium_6-24 months               1       50     189
6-24 months   iLiNS_DYADM_LNS             MALAWI                         High_6-24 months                 0      114     142
6-24 months   iLiNS_DYADM_LNS             MALAWI                         High_6-24 months                 1       28     142
6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Low_6-24 months                  0      715    1378
6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Low_6-24 months                  1      663    1378
6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Medium_6-24 months               0      953    1640
6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Medium_6-24 months               1      687    1640
6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     High_6-24 months                 0     1293    1765
6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     High_6-24 months                 1      472    1765
6-24 months   ki1000111-WASH-Kenya        KENYA                          Low_6-24 months                  0     2493    3499
6-24 months   ki1000111-WASH-Kenya        KENYA                          Low_6-24 months                  1     1006    3499
6-24 months   ki1000111-WASH-Kenya        KENYA                          Medium_6-24 months               0     1143    1524
6-24 months   ki1000111-WASH-Kenya        KENYA                          Medium_6-24 months               1      381    1524
6-24 months   ki1000111-WASH-Kenya        KENYA                          High_6-24 months                 0     1296    1593
6-24 months   ki1000111-WASH-Kenya        KENYA                          High_6-24 months                 1      297    1593
6-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Low_6-24 months                  0       37      43
6-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Low_6-24 months                  1        6      43
6-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Medium_6-24 months               0       14      17
6-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Medium_6-24 months               1        3      17
6-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       High_6-24 months                 0        8       8
6-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       High_6-24 months                 1        0       8
6-24 months   ki1000304-EU                INDIA                          Low_6-24 months                  0      319     696
6-24 months   ki1000304-EU                INDIA                          Low_6-24 months                  1      377     696
6-24 months   ki1000304-EU                INDIA                          Medium_6-24 months               0      405     779
6-24 months   ki1000304-EU                INDIA                          Medium_6-24 months               1      374     779
6-24 months   ki1000304-EU                INDIA                          High_6-24 months                 0      344     525
6-24 months   ki1000304-EU                INDIA                          High_6-24 months                 1      181     525
6-24 months   ki1000304-VITAMIN-A         INDIA                          Low_6-24 months                  0      750    1321
6-24 months   ki1000304-VITAMIN-A         INDIA                          Low_6-24 months                  1      571    1321
6-24 months   ki1000304-VITAMIN-A         INDIA                          Medium_6-24 months               0      612     918
6-24 months   ki1000304-VITAMIN-A         INDIA                          Medium_6-24 months               1      306     918
6-24 months   ki1000304-VITAMIN-A         INDIA                          High_6-24 months                 0      451     548
6-24 months   ki1000304-VITAMIN-A         INDIA                          High_6-24 months                 1       97     548
6-24 months   ki1000304-Vitamin-B12       INDIA                          Low_6-24 months                  0      139     324
6-24 months   ki1000304-Vitamin-B12       INDIA                          Low_6-24 months                  1      185     324
6-24 months   ki1000304-Vitamin-B12       INDIA                          Medium_6-24 months               0      118     246
6-24 months   ki1000304-Vitamin-B12       INDIA                          Medium_6-24 months               1      128     246
6-24 months   ki1000304-Vitamin-B12       INDIA                          High_6-24 months                 0      166     233
6-24 months   ki1000304-Vitamin-B12       INDIA                          High_6-24 months                 1       67     233
6-24 months   ki1000304-ZnMort            INDIA                          Low_6-24 months                  0      297     751
6-24 months   ki1000304-ZnMort            INDIA                          Low_6-24 months                  1      454     751
6-24 months   ki1000304-ZnMort            INDIA                          Medium_6-24 months               0      293     622
6-24 months   ki1000304-ZnMort            INDIA                          Medium_6-24 months               1      329     622
6-24 months   ki1000304-ZnMort            INDIA                          High_6-24 months                 0      296     482
6-24 months   ki1000304-ZnMort            INDIA                          High_6-24 months                 1      186     482
6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Low_6-24 months                  0      115     250
6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Low_6-24 months                  1      135     250
6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Medium_6-24 months               0      129     217
6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Medium_6-24 months               1       88     217
6-24 months   ki1000304b-SAS-CompFeed     INDIA                          High_6-24 months                 0      109     160
6-24 months   ki1000304b-SAS-CompFeed     INDIA                          High_6-24 months                 1       51     160
6-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Low_6-24 months                  0       69     192
6-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Low_6-24 months                  1      123     192
6-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Medium_6-24 months               0       12      24
6-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Medium_6-24 months               1       12      24
6-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          High_6-24 months                 0       12      27
6-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          High_6-24 months                 1       15      27
6-24 months   ki1017093b-PROVIDE          BANGLADESH                     Low_6-24 months                  0       78      92
6-24 months   ki1017093b-PROVIDE          BANGLADESH                     Low_6-24 months                  1       14      92
6-24 months   ki1017093b-PROVIDE          BANGLADESH                     Medium_6-24 months               0      103     117
6-24 months   ki1017093b-PROVIDE          BANGLADESH                     Medium_6-24 months               1       14     117
6-24 months   ki1017093b-PROVIDE          BANGLADESH                     High_6-24 months                 0      124     133
6-24 months   ki1017093b-PROVIDE          BANGLADESH                     High_6-24 months                 1        9     133
6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Low_6-24 months                  0       50      62
6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Low_6-24 months                  1       12      62
6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Medium_6-24 months               0     1029    1279
6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Medium_6-24 months               1      250    1279
6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   High_6-24 months                 0      392     459
6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   High_6-24 months                 1       67     459
6-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Low_6-24 months                  0     2830    4463
6-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Low_6-24 months                  1     1633    4463
6-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Medium_6-24 months               0      537     812
6-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Medium_6-24 months               1      275     812
6-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   High_6-24 months                 0      181     235
6-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   High_6-24 months                 1       54     235
6-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Low_6-24 months                  0       23      46
6-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Low_6-24 months                  1       23      46
6-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Medium_6-24 months               0       39      58
6-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Medium_6-24 months               1       19      58
6-24 months   ki1112895-Guatemala BSC     GUATEMALA                      High_6-24 months                 0       61      72
6-24 months   ki1112895-Guatemala BSC     GUATEMALA                      High_6-24 months                 1       11      72
6-24 months   ki1119695-PROBIT            BELARUS                        Low_6-24 months                  0     4597    4980
6-24 months   ki1119695-PROBIT            BELARUS                        Low_6-24 months                  1      383    4980
6-24 months   ki1119695-PROBIT            BELARUS                        Medium_6-24 months               0     6429    6787
6-24 months   ki1119695-PROBIT            BELARUS                        Medium_6-24 months               1      358    6787
6-24 months   ki1119695-PROBIT            BELARUS                        High_6-24 months                 0     2336    2440
6-24 months   ki1119695-PROBIT            BELARUS                        High_6-24 months                 1      104    2440
6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Low_6-24 months                  0     1283    1746
6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Low_6-24 months                  1      463    1746
6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Medium_6-24 months               0     1548    2050
6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Medium_6-24 months               1      502    2050
6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       High_6-24 months                 0     3740    4599
6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       High_6-24 months                 1      859    4599
6-24 months   ki1135781-COHORTS           GUATEMALA                      Low_6-24 months                  0       74     205
6-24 months   ki1135781-COHORTS           GUATEMALA                      Low_6-24 months                  1      131     205
6-24 months   ki1135781-COHORTS           GUATEMALA                      Medium_6-24 months               0       71     162
6-24 months   ki1135781-COHORTS           GUATEMALA                      Medium_6-24 months               1       91     162
6-24 months   ki1135781-COHORTS           GUATEMALA                      High_6-24 months                 0       28      98
6-24 months   ki1135781-COHORTS           GUATEMALA                      High_6-24 months                 1       70      98
6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Low_6-24 months                  0      252     457
6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Low_6-24 months                  1      205     457
6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Medium_6-24 months               0      238     409
6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Medium_6-24 months               1      171     409
6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         High_6-24 months                 0      352     569
6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         High_6-24 months                 1      217     569
6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Low_6-24 months                  0      164     257
6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Low_6-24 months                  1       93     257
6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Medium_6-24 months               0      208     281
6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Medium_6-24 months               1       73     281
6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         High_6-24 months                 0      166     223
6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         High_6-24 months                 1       57     223
6-24 months   ki1148112-LCNI-5            MALAWI                         Low_6-24 months                  0       97     216
6-24 months   ki1148112-LCNI-5            MALAWI                         Low_6-24 months                  1      119     216
6-24 months   ki1148112-LCNI-5            MALAWI                         Medium_6-24 months               0       98     221
6-24 months   ki1148112-LCNI-5            MALAWI                         Medium_6-24 months               1      123     221
6-24 months   ki1148112-LCNI-5            MALAWI                         High_6-24 months                 0      142     271
6-24 months   ki1148112-LCNI-5            MALAWI                         High_6-24 months                 1      129     271
6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Low_6-24 months                  0     4129    5291
6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Low_6-24 months                  1     1162    5291
6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Medium_6-24 months               0     4309    5186
6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Medium_6-24 months               1      877    5186
6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     High_6-24 months                 0     6262    7298
6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     High_6-24 months                 1     1036    7298
6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Low_6-24 months                  0     1875    2564
6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Low_6-24 months                  1      689    2564
6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Medium_6-24 months               0       67      93
6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Medium_6-24 months               1       26      93
6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     High_6-24 months                 0       49      73
6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     High_6-24 months                 1       24      73


The following strata were considered:

* agecat: 0-6 months, studyid: iLiNS_DYADM_LNS, country: MALAWI, intXmeducyrs: High_0-6 months
* agecat: 0-6 months, studyid: iLiNS_DYADM_LNS, country: MALAWI, intXmeducyrs: Low_0-6 months
* agecat: 0-6 months, studyid: iLiNS_DYADM_LNS, country: MALAWI, intXmeducyrs: Medium_0-6 months
* agecat: 0-6 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH, intXmeducyrs: High_0-6 months
* agecat: 0-6 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH, intXmeducyrs: Low_0-6 months
* agecat: 0-6 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH, intXmeducyrs: Medium_0-6 months
* agecat: 0-6 months, studyid: ki1000111-WASH-Kenya, country: KENYA, intXmeducyrs: High_0-6 months
* agecat: 0-6 months, studyid: ki1000111-WASH-Kenya, country: KENYA, intXmeducyrs: Low_0-6 months
* agecat: 0-6 months, studyid: ki1000111-WASH-Kenya, country: KENYA, intXmeducyrs: Medium_0-6 months
* agecat: 0-6 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN, intXmeducyrs: High_0-6 months
* agecat: 0-6 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN, intXmeducyrs: Low_0-6 months
* agecat: 0-6 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN, intXmeducyrs: Medium_0-6 months
* agecat: 0-6 months, studyid: ki1000304-EU, country: INDIA, intXmeducyrs: High_0-6 months
* agecat: 0-6 months, studyid: ki1000304-EU, country: INDIA, intXmeducyrs: Low_0-6 months
* agecat: 0-6 months, studyid: ki1000304-EU, country: INDIA, intXmeducyrs: Medium_0-6 months
* agecat: 0-6 months, studyid: ki1000304-VITAMIN-A, country: INDIA, intXmeducyrs: High_0-6 months
* agecat: 0-6 months, studyid: ki1000304-VITAMIN-A, country: INDIA, intXmeducyrs: Low_0-6 months
* agecat: 0-6 months, studyid: ki1000304-VITAMIN-A, country: INDIA, intXmeducyrs: Medium_0-6 months
* agecat: 0-6 months, studyid: ki1000304-Vitamin-B12, country: INDIA, intXmeducyrs: Low_0-6 months
* agecat: 0-6 months, studyid: ki1000304-ZnMort, country: INDIA, intXmeducyrs: High_0-6 months
* agecat: 0-6 months, studyid: ki1000304-ZnMort, country: INDIA, intXmeducyrs: Low_0-6 months
* agecat: 0-6 months, studyid: ki1000304-ZnMort, country: INDIA, intXmeducyrs: Medium_0-6 months
* agecat: 0-6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA, intXmeducyrs: High_0-6 months
* agecat: 0-6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA, intXmeducyrs: Low_0-6 months
* agecat: 0-6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA, intXmeducyrs: Medium_0-6 months
* agecat: 0-6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA, intXmeducyrs: High_0-6 months
* agecat: 0-6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA, intXmeducyrs: Low_0-6 months
* agecat: 0-6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA, intXmeducyrs: Medium_0-6 months
* agecat: 0-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH, intXmeducyrs: High_0-6 months
* agecat: 0-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH, intXmeducyrs: Low_0-6 months
* agecat: 0-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH, intXmeducyrs: Medium_0-6 months
* agecat: 0-6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF, intXmeducyrs: High_0-6 months
* agecat: 0-6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF, intXmeducyrs: Low_0-6 months
* agecat: 0-6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF, intXmeducyrs: Medium_0-6 months
* agecat: 0-6 months, studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO, intXmeducyrs: High_0-6 months
* agecat: 0-6 months, studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO, intXmeducyrs: Low_0-6 months
* agecat: 0-6 months, studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO, intXmeducyrs: Medium_0-6 months
* agecat: 0-6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA, intXmeducyrs: High_0-6 months
* agecat: 0-6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA, intXmeducyrs: Low_0-6 months
* agecat: 0-6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA, intXmeducyrs: Medium_0-6 months
* agecat: 0-6 months, studyid: ki1119695-PROBIT, country: BELARUS, intXmeducyrs: High_0-6 months
* agecat: 0-6 months, studyid: ki1119695-PROBIT, country: BELARUS, intXmeducyrs: Low_0-6 months
* agecat: 0-6 months, studyid: ki1119695-PROBIT, country: BELARUS, intXmeducyrs: Medium_0-6 months
* agecat: 0-6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE, intXmeducyrs: High_0-6 months
* agecat: 0-6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE, intXmeducyrs: Low_0-6 months
* agecat: 0-6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE, intXmeducyrs: Medium_0-6 months
* agecat: 0-6 months, studyid: ki1135781-COHORTS, country: GUATEMALA, intXmeducyrs: High_0-6 months
* agecat: 0-6 months, studyid: ki1135781-COHORTS, country: GUATEMALA, intXmeducyrs: Low_0-6 months
* agecat: 0-6 months, studyid: ki1135781-COHORTS, country: GUATEMALA, intXmeducyrs: Medium_0-6 months
* agecat: 0-6 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI, intXmeducyrs: High_0-6 months
* agecat: 0-6 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI, intXmeducyrs: Low_0-6 months
* agecat: 0-6 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI, intXmeducyrs: Medium_0-6 months
* agecat: 0-6 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI, intXmeducyrs: High_0-6 months
* agecat: 0-6 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI, intXmeducyrs: Low_0-6 months
* agecat: 0-6 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI, intXmeducyrs: Medium_0-6 months
* agecat: 0-6 months, studyid: ki1148112-LCNI-5, country: MALAWI, intXmeducyrs: High_0-6 months
* agecat: 0-6 months, studyid: ki1148112-LCNI-5, country: MALAWI, intXmeducyrs: Low_0-6 months
* agecat: 0-6 months, studyid: ki1148112-LCNI-5, country: MALAWI, intXmeducyrs: Medium_0-6 months
* agecat: 0-6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH, intXmeducyrs: High_0-6 months
* agecat: 0-6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH, intXmeducyrs: Low_0-6 months
* agecat: 0-6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH, intXmeducyrs: Medium_0-6 months
* agecat: 0-6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH, intXmeducyrs: High_0-6 months
* agecat: 0-6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH, intXmeducyrs: Low_0-6 months
* agecat: 0-6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH, intXmeducyrs: Medium_0-6 months
* agecat: 6-24 months, studyid: iLiNS_DYADM_LNS, country: MALAWI, intXmeducyrs: High_6-24 months
* agecat: 6-24 months, studyid: iLiNS_DYADM_LNS, country: MALAWI, intXmeducyrs: Low_6-24 months
* agecat: 6-24 months, studyid: iLiNS_DYADM_LNS, country: MALAWI, intXmeducyrs: Medium_6-24 months
* agecat: 6-24 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH, intXmeducyrs: High_6-24 months
* agecat: 6-24 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH, intXmeducyrs: Low_6-24 months
* agecat: 6-24 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH, intXmeducyrs: Medium_6-24 months
* agecat: 6-24 months, studyid: ki1000111-WASH-Kenya, country: KENYA, intXmeducyrs: High_6-24 months
* agecat: 6-24 months, studyid: ki1000111-WASH-Kenya, country: KENYA, intXmeducyrs: Low_6-24 months
* agecat: 6-24 months, studyid: ki1000111-WASH-Kenya, country: KENYA, intXmeducyrs: Medium_6-24 months
* agecat: 6-24 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN, intXmeducyrs: High_6-24 months
* agecat: 6-24 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN, intXmeducyrs: Low_6-24 months
* agecat: 6-24 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN, intXmeducyrs: Medium_6-24 months
* agecat: 6-24 months, studyid: ki1000304-EU, country: INDIA, intXmeducyrs: High_6-24 months
* agecat: 6-24 months, studyid: ki1000304-EU, country: INDIA, intXmeducyrs: Low_6-24 months
* agecat: 6-24 months, studyid: ki1000304-EU, country: INDIA, intXmeducyrs: Medium_6-24 months
* agecat: 6-24 months, studyid: ki1000304-VITAMIN-A, country: INDIA, intXmeducyrs: High_6-24 months
* agecat: 6-24 months, studyid: ki1000304-VITAMIN-A, country: INDIA, intXmeducyrs: Low_6-24 months
* agecat: 6-24 months, studyid: ki1000304-VITAMIN-A, country: INDIA, intXmeducyrs: Medium_6-24 months
* agecat: 6-24 months, studyid: ki1000304-Vitamin-B12, country: INDIA, intXmeducyrs: High_6-24 months
* agecat: 6-24 months, studyid: ki1000304-Vitamin-B12, country: INDIA, intXmeducyrs: Low_6-24 months
* agecat: 6-24 months, studyid: ki1000304-Vitamin-B12, country: INDIA, intXmeducyrs: Medium_6-24 months
* agecat: 6-24 months, studyid: ki1000304-ZnMort, country: INDIA, intXmeducyrs: High_6-24 months
* agecat: 6-24 months, studyid: ki1000304-ZnMort, country: INDIA, intXmeducyrs: Low_6-24 months
* agecat: 6-24 months, studyid: ki1000304-ZnMort, country: INDIA, intXmeducyrs: Medium_6-24 months
* agecat: 6-24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA, intXmeducyrs: High_6-24 months
* agecat: 6-24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA, intXmeducyrs: Low_6-24 months
* agecat: 6-24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA, intXmeducyrs: Medium_6-24 months
* agecat: 6-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA, intXmeducyrs: High_6-24 months
* agecat: 6-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA, intXmeducyrs: Low_6-24 months
* agecat: 6-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA, intXmeducyrs: Medium_6-24 months
* agecat: 6-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH, intXmeducyrs: High_6-24 months
* agecat: 6-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH, intXmeducyrs: Low_6-24 months
* agecat: 6-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH, intXmeducyrs: Medium_6-24 months
* agecat: 6-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF, intXmeducyrs: High_6-24 months
* agecat: 6-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF, intXmeducyrs: Low_6-24 months
* agecat: 6-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF, intXmeducyrs: Medium_6-24 months
* agecat: 6-24 months, studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO, intXmeducyrs: High_6-24 months
* agecat: 6-24 months, studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO, intXmeducyrs: Low_6-24 months
* agecat: 6-24 months, studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO, intXmeducyrs: Medium_6-24 months
* agecat: 6-24 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA, intXmeducyrs: High_6-24 months
* agecat: 6-24 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA, intXmeducyrs: Low_6-24 months
* agecat: 6-24 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA, intXmeducyrs: Medium_6-24 months
* agecat: 6-24 months, studyid: ki1119695-PROBIT, country: BELARUS, intXmeducyrs: High_6-24 months
* agecat: 6-24 months, studyid: ki1119695-PROBIT, country: BELARUS, intXmeducyrs: Low_6-24 months
* agecat: 6-24 months, studyid: ki1119695-PROBIT, country: BELARUS, intXmeducyrs: Medium_6-24 months
* agecat: 6-24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE, intXmeducyrs: High_6-24 months
* agecat: 6-24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE, intXmeducyrs: Low_6-24 months
* agecat: 6-24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE, intXmeducyrs: Medium_6-24 months
* agecat: 6-24 months, studyid: ki1135781-COHORTS, country: GUATEMALA, intXmeducyrs: High_6-24 months
* agecat: 6-24 months, studyid: ki1135781-COHORTS, country: GUATEMALA, intXmeducyrs: Low_6-24 months
* agecat: 6-24 months, studyid: ki1135781-COHORTS, country: GUATEMALA, intXmeducyrs: Medium_6-24 months
* agecat: 6-24 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI, intXmeducyrs: High_6-24 months
* agecat: 6-24 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI, intXmeducyrs: Low_6-24 months
* agecat: 6-24 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI, intXmeducyrs: Medium_6-24 months
* agecat: 6-24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI, intXmeducyrs: High_6-24 months
* agecat: 6-24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI, intXmeducyrs: Low_6-24 months
* agecat: 6-24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI, intXmeducyrs: Medium_6-24 months
* agecat: 6-24 months, studyid: ki1148112-LCNI-5, country: MALAWI, intXmeducyrs: High_6-24 months
* agecat: 6-24 months, studyid: ki1148112-LCNI-5, country: MALAWI, intXmeducyrs: Low_6-24 months
* agecat: 6-24 months, studyid: ki1148112-LCNI-5, country: MALAWI, intXmeducyrs: Medium_6-24 months
* agecat: 6-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH, intXmeducyrs: High_6-24 months
* agecat: 6-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH, intXmeducyrs: Low_6-24 months
* agecat: 6-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH, intXmeducyrs: Medium_6-24 months
* agecat: 6-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH, intXmeducyrs: High_6-24 months
* agecat: 6-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH, intXmeducyrs: Low_6-24 months
* agecat: 6-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH, intXmeducyrs: Medium_6-24 months

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-6 months, studyid: iLiNS_DYADM_LNS, country: MALAWI, intXmeducyrs: Low_0-6 months
* agecat: 0-6 months, studyid: iLiNS_DYADM_LNS, country: MALAWI, intXmeducyrs: High_0-6 months
* agecat: 0-6 months, studyid: ki1000111-WASH-Kenya, country: KENYA, intXmeducyrs: Medium_0-6 months
* agecat: 0-6 months, studyid: ki1000111-WASH-Kenya, country: KENYA, intXmeducyrs: High_0-6 months
* agecat: 0-6 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN, intXmeducyrs: Medium_0-6 months
* agecat: 0-6 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN, intXmeducyrs: High_0-6 months
* agecat: 0-6 months, studyid: ki1000304-EU, country: INDIA, intXmeducyrs: Low_0-6 months
* agecat: 0-6 months, studyid: ki1000304-EU, country: INDIA, intXmeducyrs: Medium_0-6 months
* agecat: 0-6 months, studyid: ki1000304-EU, country: INDIA, intXmeducyrs: High_0-6 months
* agecat: 0-6 months, studyid: ki1000304-Vitamin-B12, country: INDIA, intXmeducyrs: Low_0-6 months
* agecat: 0-6 months, studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO, intXmeducyrs: Low_0-6 months
* agecat: 0-6 months, studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO, intXmeducyrs: Medium_0-6 months
* agecat: 0-6 months, studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO, intXmeducyrs: High_0-6 months
* agecat: 0-6 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI, intXmeducyrs: Low_0-6 months
* agecat: 0-6 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI, intXmeducyrs: High_0-6 months
* agecat: 6-24 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN, intXmeducyrs: Medium_6-24 months
* agecat: 6-24 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN, intXmeducyrs: High_6-24 months

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
##           ever_stunted
## tr            0    1
##   Control     0    0
##   LNS         0    0
##   Maternal    0    0
##   Other       0    0
##   VitA        0    0
##   Zinc     2830 1633
##           ever_stunted
## tr           0   1
##   Control    0   0
##   LNS        0   0
##   Maternal   0   0
##   Other      0   0
##   VitA       0   0
##   Zinc     537 275
##           ever_stunted
## tr           0   1
##   Control    0   0
##   LNS        0   0
##   Maternal   0   0
##   Other      0   0
##   VitA       0   0
##   Zinc     181  54
```




# Results Detail

## Results Plots
![](/tmp/8c74761e-c140-468f-b18e-4f6af3c6f109/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/8c74761e-c140-468f-b18e-4f6af3c6f109/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/8c74761e-c140-468f-b18e-4f6af3c6f109/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/8c74761e-c140-468f-b18e-4f6af3c6f109/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                     country                        intXmeducyrs         intervention_level   baseline_level     estimate     ci_lower    ci_upper
------------  --------------------------  -----------------------------  -------------------  -------------------  ---------------  ----------  -----------  ----------
0-6 months    iLiNS_DYADM_LNS             MALAWI                         Medium_0-6 months    Control              NA                0.2857143   -0.0599189   0.6313474
0-6 months    iLiNS_DYADM_LNS             MALAWI                         Medium_0-6 months    LNS                  NA                0.3333333    0.0152544   0.6514123
0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Low_0-6 months       Control              NA                0.2500000    0.0030045   0.4969955
0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Low_0-6 months       LNS                  NA                0.1500000   -0.0077681   0.3077681
0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Low_0-6 months       Other                NA                0.2000000    0.0556960   0.3443040
0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Medium_0-6 months    Control              NA                0.0833333   -0.0739607   0.2406274
0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Medium_0-6 months    LNS                  NA                0.1111111   -0.0081252   0.2303474
0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Medium_0-6 months    Other                NA                0.0425532   -0.0154915   0.1005979
0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     High_0-6 months      Control              NA                0.1052632   -0.0335587   0.2440850
0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     High_0-6 months      LNS                  NA                0.0454545   -0.0421092   0.1330183
0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     High_0-6 months      Other                NA                0.0465116   -0.0168101   0.1098334
0-6 months    ki1000111-WASH-Kenya        KENYA                          Low_0-6 months       Control              NA                0.1428571   -0.0421966   0.3279109
0-6 months    ki1000111-WASH-Kenya        KENYA                          Low_0-6 months       LNS                  NA                0.0000000    0.0000000   0.0000000
0-6 months    ki1000111-WASH-Kenya        KENYA                          Low_0-6 months       Other                NA                0.1153846   -0.0085946   0.2393638
0-6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Low_0-6 months       Control              NA                0.3125000    0.1506543   0.4743457
0-6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Low_0-6 months       Maternal             NA                0.1515152    0.0282308   0.2747995
0-6 months    ki1000304-VITAMIN-A         INDIA                          Low_0-6 months       Control              NA                0.4133333    0.3015287   0.5251380
0-6 months    ki1000304-VITAMIN-A         INDIA                          Low_0-6 months       VitA                 NA                0.4197531    0.3119316   0.5275746
0-6 months    ki1000304-VITAMIN-A         INDIA                          Medium_0-6 months    Control              NA                0.2459016    0.1373571   0.3544462
0-6 months    ki1000304-VITAMIN-A         INDIA                          Medium_0-6 months    VitA                 NA                0.3269231    0.1988577   0.4549885
0-6 months    ki1000304-VITAMIN-A         INDIA                          High_0-6 months      Control              NA                0.2000000    0.0664510   0.3335490
0-6 months    ki1000304-VITAMIN-A         INDIA                          High_0-6 months      VitA                 NA                0.1000000   -0.0081871   0.2081871
0-6 months    ki1000304-ZnMort            INDIA                          Low_0-6 months       Control              NA                0.4594595    0.2978289   0.6210900
0-6 months    ki1000304-ZnMort            INDIA                          Low_0-6 months       Zinc                 NA                0.4750000    0.3192303   0.6307697
0-6 months    ki1000304-ZnMort            INDIA                          Medium_0-6 months    Control              NA                0.3461538    0.1617443   0.5305634
0-6 months    ki1000304-ZnMort            INDIA                          Medium_0-6 months    Zinc                 NA                0.4117647    0.2449408   0.5785886
0-6 months    ki1000304-ZnMort            INDIA                          High_0-6 months      Control              NA                0.3461538    0.1611734   0.5311343
0-6 months    ki1000304-ZnMort            INDIA                          High_0-6 months      Zinc                 NA                0.2222222    0.0279434   0.4165010
0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Low_0-6 months       Control              NA                0.3483871    0.3228982   0.3738760
0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Low_0-6 months       Other                NA                0.3507853    0.2975059   0.4040648
0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Medium_0-6 months    Control              NA                0.2635659    0.2278399   0.2992918
0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Medium_0-6 months    Other                NA                0.2962963    0.2739955   0.3185971
0-6 months    ki1000304b-SAS-CompFeed     INDIA                          High_0-6 months      Control              NA                0.1807229    0.0595673   0.3018785
0-6 months    ki1000304b-SAS-CompFeed     INDIA                          High_0-6 months      Other                NA                0.1313131    0.0416495   0.2209767
0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Low_0-6 months       Control              NA                0.4166667    0.3110778   0.5222556
0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Low_0-6 months       Other                NA                0.3765182    0.3160034   0.4370330
0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Medium_0-6 months    Control              NA                0.3571429    0.1033133   0.6109724
0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Medium_0-6 months    Other                NA                0.3870968    0.2136953   0.5604983
0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          High_0-6 months      Control              NA                0.2857143   -0.0532069   0.6246355
0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          High_0-6 months      Other                NA                0.3636364    0.1974195   0.5298533
0-6 months    ki1017093b-PROVIDE          BANGLADESH                     Low_0-6 months       Control              NA                0.1666667    0.0609674   0.2723659
0-6 months    ki1017093b-PROVIDE          BANGLADESH                     Low_0-6 months       Other                NA                0.1418919    0.0855310   0.1982528
0-6 months    ki1017093b-PROVIDE          BANGLADESH                     Medium_0-6 months    Control              NA                0.1406250    0.0552654   0.2259846
0-6 months    ki1017093b-PROVIDE          BANGLADESH                     Medium_0-6 months    Other                NA                0.1625000    0.1052100   0.2197900
0-6 months    ki1017093b-PROVIDE          BANGLADESH                     High_0-6 months      Control              NA                0.1296296    0.0398362   0.2194231
0-6 months    ki1017093b-PROVIDE          BANGLADESH                     High_0-6 months      Other                NA                0.1084337    0.0610267   0.1558407
0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Low_0-6 months       Control              NA                0.1111111   -0.0350234   0.2572457
0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Low_0-6 months       Other                NA                0.1363636   -0.0079775   0.2807048
0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Low_0-6 months       Zinc                 NA                0.0270270   -0.0255669   0.0796209
0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Medium_0-6 months    Control              NA                0.0714286    0.0463694   0.0964877
0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Medium_0-6 months    Other                NA                0.0629921    0.0385894   0.0873948
0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Medium_0-6 months    Zinc                 NA                0.0772152    0.0585954   0.0958349
0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   High_0-6 months      Control              NA                0.0681818    0.0251449   0.1112187
0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   High_0-6 months      Other                NA                0.0536913    0.0174667   0.0899158
0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   High_0-6 months      Zinc                 NA                0.0687285    0.0396355   0.0978215
0-6 months    ki1112895-Guatemala BSC     GUATEMALA                      Low_0-6 months       Control              NA                0.2857143    0.1348860   0.4365425
0-6 months    ki1112895-Guatemala BSC     GUATEMALA                      Low_0-6 months       Other                NA                0.1666667    0.0322702   0.3010632
0-6 months    ki1112895-Guatemala BSC     GUATEMALA                      Medium_0-6 months    Control              NA                0.2432432    0.1040012   0.3824852
0-6 months    ki1112895-Guatemala BSC     GUATEMALA                      Medium_0-6 months    Other                NA                0.1818182    0.0492745   0.3143619
0-6 months    ki1112895-Guatemala BSC     GUATEMALA                      High_0-6 months      Control              NA                0.2500000    0.1214171   0.3785829
0-6 months    ki1112895-Guatemala BSC     GUATEMALA                      High_0-6 months      Other                NA                0.2456140    0.1333102   0.3579179
0-6 months    ki1119695-PROBIT            BELARUS                        Low_0-6 months       Control              NA                0.0856375    0.0589425   0.1123325
0-6 months    ki1119695-PROBIT            BELARUS                        Low_0-6 months       Maternal             NA                0.0788162    0.0620272   0.0956052
0-6 months    ki1119695-PROBIT            BELARUS                        Medium_0-6 months    Control              NA                0.0606747    0.0421812   0.0791682
0-6 months    ki1119695-PROBIT            BELARUS                        Medium_0-6 months    Maternal             NA                0.0546344    0.0390152   0.0702536
0-6 months    ki1119695-PROBIT            BELARUS                        High_0-6 months      Control              NA                0.0560520    0.0421313   0.0699727
0-6 months    ki1119695-PROBIT            BELARUS                        High_0-6 months      Maternal             NA                0.0436535    0.0315005   0.0558064
0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Low_0-6 months       Control              NA                0.2180294    0.1809650   0.2550937
0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Low_0-6 months       VitA                 NA                0.1866572    0.1663071   0.2070073
0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Medium_0-6 months    Control              NA                0.1848592    0.1529286   0.2167897
0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Medium_0-6 months    VitA                 NA                0.1968179    0.1778970   0.2157388
0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       High_0-6 months      Control              NA                0.1444713    0.1248935   0.1640492
0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       High_0-6 months      VitA                 NA                0.1649540    0.1529909   0.1769172
0-6 months    ki1135781-COHORTS           GUATEMALA                      Low_0-6 months       Control              NA                0.3870968    0.2654272   0.5087663
0-6 months    ki1135781-COHORTS           GUATEMALA                      Low_0-6 months       Other                NA                0.3456790    0.2417441   0.4496139
0-6 months    ki1135781-COHORTS           GUATEMALA                      Medium_0-6 months    Control              NA                0.3181818    0.1798120   0.4565516
0-6 months    ki1135781-COHORTS           GUATEMALA                      Medium_0-6 months    Other                NA                0.1632653    0.0592162   0.2673144
0-6 months    ki1135781-COHORTS           GUATEMALA                      High_0-6 months      Control              NA                0.2424242    0.0949753   0.3898732
0-6 months    ki1135781-COHORTS           GUATEMALA                      High_0-6 months      Other                NA                0.3333333    0.1540212   0.5126454
0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         Low_0-6 months       Control              NA                0.3793103    0.2542549   0.5043658
0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         Low_0-6 months       LNS                  NA                0.3298246    0.2751613   0.3844878
0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         Medium_0-6 months    Control              NA                0.4150943    0.2822603   0.5479284
0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         Medium_0-6 months    LNS                  NA                0.2875000    0.2378445   0.3371555
0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         High_0-6 months      Control              NA                0.2028986    0.1079016   0.2978955
0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         High_0-6 months      LNS                  NA                0.2533333    0.2092645   0.2974022
0-6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Medium_0-6 months    Control              NA                0.2857143   -0.0553186   0.6267472
0-6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Medium_0-6 months    Maternal             NA                0.3000000    0.0953377   0.5046623
0-6 months    ki1148112-LCNI-5            MALAWI                         Low_0-6 months       Control              NA                0.3600000    0.1708125   0.5491875
0-6 months    ki1148112-LCNI-5            MALAWI                         Low_0-6 months       LNS                  NA                0.4693878    0.3288873   0.6098882
0-6 months    ki1148112-LCNI-5            MALAWI                         Low_0-6 months       Other                NA                0.6111111    0.3846686   0.8375536
0-6 months    ki1148112-LCNI-5            MALAWI                         Medium_0-6 months    Control              NA                0.4117647    0.1764736   0.6470558
0-6 months    ki1148112-LCNI-5            MALAWI                         Medium_0-6 months    LNS                  NA                0.2500000    0.1268003   0.3731997
0-6 months    ki1148112-LCNI-5            MALAWI                         Medium_0-6 months    Other                NA                0.4782609    0.2729438   0.6835779
0-6 months    ki1148112-LCNI-5            MALAWI                         High_0-6 months      Control              NA                0.3200000    0.1360847   0.5039153
0-6 months    ki1148112-LCNI-5            MALAWI                         High_0-6 months      LNS                  NA                0.2307692    0.0977717   0.3637667
0-6 months    ki1148112-LCNI-5            MALAWI                         High_0-6 months      Other                NA                0.2173913    0.0478451   0.3869375
0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Low_0-6 months       Control              NA                0.3282374    0.3087556   0.3477192
0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Low_0-6 months       Maternal             NA                0.2672088    0.2500447   0.2843729
0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Medium_0-6 months    Control              NA                0.3014731    0.2824445   0.3205017
0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Medium_0-6 months    Maternal             NA                0.2624959    0.2460109   0.2789808
0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     High_0-6 months      Control              NA                0.2048590    0.1903759   0.2193422
0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     High_0-6 months      Maternal             NA                0.1766139    0.1619498   0.1912780
0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     Low_0-6 months       Control              NA                0.2494802    0.2060999   0.2928606
0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     Low_0-6 months       LNS                  NA                0.2361702    0.1933920   0.2789484
0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     Low_0-6 months       Other                NA                0.2658080    0.2299304   0.3016855
0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     Medium_0-6 months    Control              NA                0.2000000   -0.0260084   0.4260084
0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     Medium_0-6 months    LNS                  NA                0.2608696    0.0861103   0.4356288
0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     Medium_0-6 months    Other                NA                0.2413793    0.0880279   0.3947307
0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     High_0-6 months      Control              NA                0.2941176    0.0800550   0.5081803
0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     High_0-6 months      LNS                  NA                0.3333333    0.1153498   0.5513169
0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     High_0-6 months      Other                NA                0.4333333    0.2563459   0.6103207
6-24 months   iLiNS_DYADM_LNS             MALAWI                         Low_6-24 months      Control              NA                0.3678161    0.2661768   0.4694554
6-24 months   iLiNS_DYADM_LNS             MALAWI                         Low_6-24 months      LNS                  NA                0.3947368    0.2845059   0.5049678
6-24 months   iLiNS_DYADM_LNS             MALAWI                         Medium_6-24 months   Control              NA                0.2600000    0.1738009   0.3461991
6-24 months   iLiNS_DYADM_LNS             MALAWI                         Medium_6-24 months   LNS                  NA                0.2696629    0.1772192   0.3621066
6-24 months   iLiNS_DYADM_LNS             MALAWI                         High_6-24 months     Control              NA                0.1449275    0.0609786   0.2288765
6-24 months   iLiNS_DYADM_LNS             MALAWI                         High_6-24 months     LNS                  NA                0.2465753    0.1468711   0.3462796
6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Low_6-24 months      Control              NA                0.4808260    0.4276205   0.5340314
6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Low_6-24 months      LNS                  NA                0.4459834    0.3946886   0.4972781
6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Low_6-24 months      Other                NA                0.5000000    0.4623504   0.5376496
6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Medium_6-24 months   Control              NA                0.4122137    0.3635332   0.4608943
6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Medium_6-24 months   LNS                  NA                0.3691932    0.3224095   0.4159768
6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Medium_6-24 months   Other                NA                0.4463007    0.4126333   0.4799681
6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     High_6-24 months     Control              NA                0.3073394    0.2640186   0.3506603
6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     High_6-24 months     LNS                  NA                0.1953488    0.1578648   0.2328329
6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     High_6-24 months     Other                NA                0.2825362    0.2530968   0.3119755
6-24 months   ki1000111-WASH-Kenya        KENYA                          Low_6-24 months      Control              NA                0.2872517    0.2617319   0.3127714
6-24 months   ki1000111-WASH-Kenya        KENYA                          Low_6-24 months      LNS                  NA                0.2357616    0.2054794   0.2660438
6-24 months   ki1000111-WASH-Kenya        KENYA                          Low_6-24 months      Other                NA                0.3131510    0.2899546   0.3363475
6-24 months   ki1000111-WASH-Kenya        KENYA                          Medium_6-24 months   Control              NA                0.2359551    0.1999309   0.2719792
6-24 months   ki1000111-WASH-Kenya        KENYA                          Medium_6-24 months   LNS                  NA                0.2276657    0.1835313   0.2718001
6-24 months   ki1000111-WASH-Kenya        KENYA                          Medium_6-24 months   Other                NA                0.2737170    0.2392432   0.3081907
6-24 months   ki1000111-WASH-Kenya        KENYA                          High_6-24 months     Control              NA                0.1912879    0.1577289   0.2248468
6-24 months   ki1000111-WASH-Kenya        KENYA                          High_6-24 months     LNS                  NA                0.1704545    0.1311595   0.2097496
6-24 months   ki1000111-WASH-Kenya        KENYA                          High_6-24 months     Other                NA                0.1907433    0.1618959   0.2195908
6-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Low_6-24 months      Control              NA                0.1304348   -0.0088301   0.2696996
6-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Low_6-24 months      Maternal             NA                0.1500000   -0.0083426   0.3083426
6-24 months   ki1000304-EU                INDIA                          Low_6-24 months      Control              NA                0.5487465    0.4972344   0.6002586
6-24 months   ki1000304-EU                INDIA                          Low_6-24 months      Zinc                 NA                0.5341246    0.4808278   0.5874215
6-24 months   ki1000304-EU                INDIA                          Medium_6-24 months   Control              NA                0.5108959    0.4626546   0.5591372
6-24 months   ki1000304-EU                INDIA                          Medium_6-24 months   Zinc                 NA                0.4453552    0.3944048   0.4963055
6-24 months   ki1000304-EU                INDIA                          High_6-24 months     Control              NA                0.3545817    0.2953432   0.4138202
6-24 months   ki1000304-EU                INDIA                          High_6-24 months     Zinc                 NA                0.3357664    0.2797951   0.3917378
6-24 months   ki1000304-VITAMIN-A         INDIA                          Low_6-24 months      Control              NA                0.4404762    0.4029272   0.4780252
6-24 months   ki1000304-VITAMIN-A         INDIA                          Low_6-24 months      VitA                 NA                0.4237288    0.3856969   0.4617607
6-24 months   ki1000304-VITAMIN-A         INDIA                          Medium_6-24 months   Control              NA                0.3318386    0.2881144   0.3755627
6-24 months   ki1000304-VITAMIN-A         INDIA                          Medium_6-24 months   VitA                 NA                0.3347458    0.2921501   0.3773414
6-24 months   ki1000304-VITAMIN-A         INDIA                          High_6-24 months     Control              NA                0.1963636    0.1493700   0.2433572
6-24 months   ki1000304-VITAMIN-A         INDIA                          High_6-24 months     VitA                 NA                0.1575092    0.1142579   0.2007604
6-24 months   ki1000304-Vitamin-B12       INDIA                          Low_6-24 months      Control              NA                0.5568182    0.4528679   0.6607685
6-24 months   ki1000304-Vitamin-B12       INDIA                          Low_6-24 months      Other                NA                0.5762712    0.5131288   0.6394135
6-24 months   ki1000304-Vitamin-B12       INDIA                          Medium_6-24 months   Control              NA                0.5312500    0.4087425   0.6537575
6-24 months   ki1000304-Vitamin-B12       INDIA                          Medium_6-24 months   Other                NA                0.5164835    0.4437339   0.5892331
6-24 months   ki1000304-Vitamin-B12       INDIA                          High_6-24 months     Control              NA                0.3478261    0.2098938   0.4857584
6-24 months   ki1000304-Vitamin-B12       INDIA                          High_6-24 months     Other                NA                0.2727273    0.2087576   0.3366970
6-24 months   ki1000304-ZnMort            INDIA                          Low_6-24 months      Control              NA                0.6191710    0.5706964   0.6676456
6-24 months   ki1000304-ZnMort            INDIA                          Low_6-24 months      Zinc                 NA                0.5890411    0.5385328   0.6395494
6-24 months   ki1000304-ZnMort            INDIA                          Medium_6-24 months   Control              NA                0.5119454    0.4546645   0.5692263
6-24 months   ki1000304-ZnMort            INDIA                          Medium_6-24 months   Zinc                 NA                0.5440729    0.4902118   0.5979341
6-24 months   ki1000304-ZnMort            INDIA                          High_6-24 months     Control              NA                0.4040816    0.3425719   0.4655914
6-24 months   ki1000304-ZnMort            INDIA                          High_6-24 months     Zinc                 NA                0.3670886    0.3056584   0.4285188
6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Low_6-24 months      Control              NA                0.5289256    0.4269029   0.6309484
6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Low_6-24 months      Other                NA                0.5503876    0.4534291   0.6473461
6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Medium_6-24 months   Control              NA                0.4600000    0.3775612   0.5424388
6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Medium_6-24 months   Other                NA                0.3589744    0.2643457   0.4536031
6-24 months   ki1000304b-SAS-CompFeed     INDIA                          High_6-24 months     Control              NA                0.3108108    0.1379057   0.4837159
6-24 months   ki1000304b-SAS-CompFeed     INDIA                          High_6-24 months     Other                NA                0.3255814    0.2427824   0.4083804
6-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Low_6-24 months      Control              NA                0.7142857    0.5874662   0.8411052
6-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Low_6-24 months      Other                NA                0.6153846    0.5354379   0.6953313
6-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Medium_6-24 months   Control              NA                0.7142857    0.3724301   1.0561413
6-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Medium_6-24 months   Other                NA                0.4117647    0.1727826   0.6507468
6-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          High_6-24 months     Control              NA                0.6000000    0.1624135   1.0375865
6-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          High_6-24 months     Other                NA                0.5454545    0.3334233   0.7574858
6-24 months   ki1017093b-PROVIDE          BANGLADESH                     Low_6-24 months      Control              NA                0.2727273    0.0856061   0.4598484
6-24 months   ki1017093b-PROVIDE          BANGLADESH                     Low_6-24 months      Other                NA                0.1142857    0.0393455   0.1892260
6-24 months   ki1017093b-PROVIDE          BANGLADESH                     Medium_6-24 months   Control              NA                0.1578947    0.0414587   0.2743307
6-24 months   ki1017093b-PROVIDE          BANGLADESH                     Medium_6-24 months   Other                NA                0.1012658    0.0344552   0.1680765
6-24 months   ki1017093b-PROVIDE          BANGLADESH                     High_6-24 months     Control              NA                0.0322581   -0.0301736   0.0946897
6-24 months   ki1017093b-PROVIDE          BANGLADESH                     High_6-24 months     Other                NA                0.0784314    0.0260598   0.1308029
6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Low_6-24 months      Control              NA                0.3076923    0.0547536   0.5606310
6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Low_6-24 months      Other                NA                0.1578947   -0.0074039   0.3231934
6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Low_6-24 months      Zinc                 NA                0.1666667    0.0322193   0.3011140
6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Medium_6-24 months   Control              NA                0.1858407    0.1444176   0.2272639
6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Medium_6-24 months   Other                NA                0.1883117    0.1446324   0.2319910
6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Medium_6-24 months   Zinc                 NA                0.2041139    0.1726784   0.2355495
6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   High_6-24 months     Control              NA                0.1584158    0.0871290   0.2297026
6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   High_6-24 months     Other                NA                0.1157025    0.0586467   0.1727582
6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   High_6-24 months     Zinc                 NA                0.1561181    0.1098571   0.2023791
6-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Low_6-24 months      Control              NA                0.4166667    0.2172470   0.6160863
6-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Low_6-24 months      Other                NA                0.5909091    0.3831884   0.7986297
6-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Medium_6-24 months   Control              NA                0.2903226    0.1291413   0.4515039
6-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Medium_6-24 months   Other                NA                0.3703704    0.1866305   0.5541103
6-24 months   ki1112895-Guatemala BSC     GUATEMALA                      High_6-24 months     Control              NA                0.0882353   -0.0077729   0.1842435
6-24 months   ki1112895-Guatemala BSC     GUATEMALA                      High_6-24 months     Other                NA                0.2105263    0.0799948   0.3410578
6-24 months   ki1119695-PROBIT            BELARUS                        Low_6-24 months      Control              NA                0.0956084    0.0661278   0.1250890
6-24 months   ki1119695-PROBIT            BELARUS                        Low_6-24 months      Maternal             NA                0.0622763    0.0487709   0.0757817
6-24 months   ki1119695-PROBIT            BELARUS                        Medium_6-24 months   Control              NA                0.0541163    0.0398695   0.0683631
6-24 months   ki1119695-PROBIT            BELARUS                        Medium_6-24 months   Maternal             NA                0.0513130    0.0394922   0.0631338
6-24 months   ki1119695-PROBIT            BELARUS                        High_6-24 months     Control              NA                0.0520930    0.0271402   0.0770458
6-24 months   ki1119695-PROBIT            BELARUS                        High_6-24 months     Maternal             NA                0.0351648    0.0196083   0.0507213
6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Low_6-24 months      Control              NA                0.2367257    0.1975274   0.2759239
6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Low_6-24 months      VitA                 NA                0.2751159    0.2507772   0.2994546
6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Medium_6-24 months   Control              NA                0.2292490    0.1926146   0.2658835
6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Medium_6-24 months   VitA                 NA                0.2500000    0.2283962   0.2716038
6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       High_6-24 months     Control              NA                0.1967213    0.1738331   0.2196096
6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       High_6-24 months     VitA                 NA                0.1834302    0.1704958   0.1963647
6-24 months   ki1135781-COHORTS           GUATEMALA                      Low_6-24 months      Control              NA                0.7126437    0.6173209   0.8079665
6-24 months   ki1135781-COHORTS           GUATEMALA                      Low_6-24 months      Other                NA                0.5847458    0.4956187   0.6738728
6-24 months   ki1135781-COHORTS           GUATEMALA                      Medium_6-24 months   Control              NA                0.7121212    0.6025485   0.8216939
6-24 months   ki1135781-COHORTS           GUATEMALA                      Medium_6-24 months   Other                NA                0.4583333    0.3583532   0.5583135
6-24 months   ki1135781-COHORTS           GUATEMALA                      High_6-24 months     Control              NA                0.6969697    0.5855266   0.8084128
6-24 months   ki1135781-COHORTS           GUATEMALA                      High_6-24 months     Other                NA                0.7500000    0.5992002   0.9007998
6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Low_6-24 months      Control              NA                0.3766234    0.2682788   0.4849680
6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Low_6-24 months      LNS                  NA                0.4631579    0.4129676   0.5133482
6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Medium_6-24 months   Control              NA                0.3650794    0.2460476   0.4841111
6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Medium_6-24 months   LNS                  NA                0.4277457    0.3755507   0.4799407
6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         High_6-24 months     Control              NA                0.4479167    0.3483543   0.5474791
6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         High_6-24 months     LNS                  NA                0.3678647    0.3243688   0.4113606
6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Low_6-24 months      Control              NA                0.3678161    0.2662913   0.4693409
6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Low_6-24 months      Maternal             NA                0.3588235    0.2865799   0.4310671
6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Medium_6-24 months   Control              NA                0.2600000    0.1738759   0.3461241
6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Medium_6-24 months   Maternal             NA                0.2596685    0.1956795   0.3236576
6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         High_6-24 months     Control              NA                0.1449275    0.0613032   0.2285519
6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         High_6-24 months     Maternal             NA                0.3051948    0.2320780   0.3783116
6-24 months   ki1148112-LCNI-5            MALAWI                         Low_6-24 months      Control              NA                0.5714286    0.4415151   0.7013421
6-24 months   ki1148112-LCNI-5            MALAWI                         Low_6-24 months      LNS                  NA                0.5517241    0.4610130   0.6424352
6-24 months   ki1148112-LCNI-5            MALAWI                         Low_6-24 months      Other                NA                0.5227273    0.3747993   0.6706552
6-24 months   ki1148112-LCNI-5            MALAWI                         Medium_6-24 months   Control              NA                0.5000000    0.3637924   0.6362076
6-24 months   ki1148112-LCNI-5            MALAWI                         Medium_6-24 months   LNS                  NA                0.5765766    0.4844495   0.6687037
6-24 months   ki1148112-LCNI-5            MALAWI                         Medium_6-24 months   Other                NA                0.5689655    0.4412282   0.6967029
6-24 months   ki1148112-LCNI-5            MALAWI                         High_6-24 months     Control              NA                0.4126984    0.2909039   0.5344929
6-24 months   ki1148112-LCNI-5            MALAWI                         High_6-24 months     LNS                  NA                0.4626866    0.3781089   0.5472642
6-24 months   ki1148112-LCNI-5            MALAWI                         High_6-24 months     Other                NA                0.5540541    0.4405916   0.6675165
6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Low_6-24 months      Control              NA                0.2201581    0.1888294   0.2514868
6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Low_6-24 months      Maternal             NA                0.2191235    0.1956200   0.2426270
6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Medium_6-24 months   Control              NA                0.1706026    0.1436775   0.1975277
6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Medium_6-24 months   Maternal             NA                0.1677656    0.1448602   0.1906709
6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     High_6-24 months     Control              NA                0.1375034    0.1173213   0.1576856
6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     High_6-24 months     Maternal             NA                0.1463614    0.1254888   0.1672340
6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Low_6-24 months      Control              NA                0.3028986    0.2452928   0.3605043
6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Low_6-24 months      LNS                  NA                0.2350299    0.1783785   0.2916814
6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Low_6-24 months      Other                NA                0.2678275    0.2271805   0.3084746
6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Medium_6-24 months   Control              NA                0.3043478    0.0371161   0.5715795
6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Medium_6-24 months   LNS                  NA                0.0740741   -0.0600704   0.2082185
6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Medium_6-24 months   Other                NA                0.3953488    0.1951716   0.5955261
6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     High_6-24 months     Control              NA                0.2500000   -0.0177920   0.5177920
6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     High_6-24 months     LNS                  NA                0.2631579   -0.0138007   0.5401165
6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     High_6-24 months     Other                NA                0.4117647    0.1824486   0.6410808


### Parameter: E(Y)


agecat        studyid                     country                        intXmeducyrs         intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  --------------------------  -----------------------------  -------------------  -------------------  ---------------  ----------  ----------  ----------
0-6 months    iLiNS_DYADM_LNS             MALAWI                         Medium_0-6 months    NA                   NA                0.3125000   0.0779347   0.5470653
0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Low_0-6 months       NA                   NA                0.1935484   0.0944042   0.2926925
0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Medium_0-6 months    NA                   NA                0.0697674   0.0156097   0.1239252
0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     High_0-6 months      NA                   NA                0.0595238   0.0086226   0.1104250
0-6 months    ki1000111-WASH-Kenya        KENYA                          Low_0-6 months       NA                   NA                0.0943396   0.0148929   0.1737864
0-6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Low_0-6 months       NA                   NA                0.2307692   0.1275465   0.3339920
0-6 months    ki1000304-VITAMIN-A         INDIA                          Low_0-6 months       NA                   NA                0.4166667   0.3390536   0.4942798
0-6 months    ki1000304-VITAMIN-A         INDIA                          Medium_0-6 months    NA                   NA                0.2831858   0.1997451   0.3666266
0-6 months    ki1000304-VITAMIN-A         INDIA                          High_0-6 months      NA                   NA                0.1538462   0.0654515   0.2422408
0-6 months    ki1000304-ZnMort            INDIA                          Low_0-6 months       NA                   NA                0.4675325   0.3553581   0.5797069
0-6 months    ki1000304-ZnMort            INDIA                          Medium_0-6 months    NA                   NA                0.3833333   0.2592722   0.5073944
0-6 months    ki1000304-ZnMort            INDIA                          High_0-6 months      NA                   NA                0.2954545   0.1590862   0.4318229
0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Low_0-6 months       NA                   NA                0.3497110   0.3177157   0.3817062
0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Medium_0-6 months    NA                   NA                0.2803030   0.2547665   0.3058396
0-6 months    ki1000304b-SAS-CompFeed     INDIA                          High_0-6 months      NA                   NA                0.1538462   0.0759638   0.2317285
0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Low_0-6 months       NA                   NA                0.3867069   0.3341638   0.4392501
0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Medium_0-6 months    NA                   NA                0.3777778   0.2345218   0.5210337
0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          High_0-6 months      NA                   NA                0.3500000   0.2003053   0.4996947
0-6 months    ki1017093b-PROVIDE          BANGLADESH                     Low_0-6 months       NA                   NA                0.1479592   0.0981245   0.1977939
0-6 months    ki1017093b-PROVIDE          BANGLADESH                     Medium_0-6 months    NA                   NA                0.1562500   0.1085946   0.2039054
0-6 months    ki1017093b-PROVIDE          BANGLADESH                     High_0-6 months      NA                   NA                0.1136364   0.0716033   0.1556694
0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Low_0-6 months       NA                   NA                0.0779221   0.0176584   0.1381857
0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Medium_0-6 months    NA                   NA                0.0722892   0.0595038   0.0850745
0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   High_0-6 months      NA                   NA                0.0646853   0.0445104   0.0848602
0-6 months    ki1112895-Guatemala BSC     GUATEMALA                      Low_0-6 months       NA                   NA                0.2307692   0.1275465   0.3339920
0-6 months    ki1112895-Guatemala BSC     GUATEMALA                      Medium_0-6 months    NA                   NA                0.2142857   0.1174685   0.3111029
0-6 months    ki1112895-Guatemala BSC     GUATEMALA                      High_0-6 months      NA                   NA                0.2475248   0.1629378   0.3321117
0-6 months    ki1119695-PROBIT            BELARUS                        Low_0-6 months       NA                   NA                0.0818713   0.0666782   0.0970645
0-6 months    ki1119695-PROBIT            BELARUS                        Medium_0-6 months    NA                   NA                0.0577702   0.0453564   0.0701840
0-6 months    ki1119695-PROBIT            BELARUS                        High_0-6 months      NA                   NA                0.0492647   0.0395447   0.0589847
0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Low_0-6 months       NA                   NA                0.1945917   0.1767202   0.2124633
0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Medium_0-6 months    NA                   NA                0.1938190   0.1775364   0.2101016
0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       High_0-6 months      NA                   NA                0.1598137   0.1495912   0.1700361
0-6 months    ki1135781-COHORTS           GUATEMALA                      Low_0-6 months       NA                   NA                0.3636364   0.2845156   0.4427571
0-6 months    ki1135781-COHORTS           GUATEMALA                      Medium_0-6 months    NA                   NA                0.2365591   0.1497208   0.3233975
0-6 months    ki1135781-COHORTS           GUATEMALA                      High_0-6 months      NA                   NA                0.2833333   0.1683514   0.3983152
0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         Low_0-6 months       NA                   NA                0.3381924   0.2880526   0.3883322
0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         Medium_0-6 months    NA                   NA                0.3056300   0.2588166   0.3524434
0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         High_0-6 months      NA                   NA                0.2454955   0.2054182   0.2855728
0-6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Medium_0-6 months    NA                   NA                0.2962963   0.1207792   0.4718134
0-6 months    ki1148112-LCNI-5            MALAWI                         Low_0-6 months       NA                   NA                0.4673913   0.3648800   0.5699026
0-6 months    ki1148112-LCNI-5            MALAWI                         Medium_0-6 months    NA                   NA                0.3409091   0.2413043   0.4405139
0-6 months    ki1148112-LCNI-5            MALAWI                         High_0-6 months      NA                   NA                0.2528736   0.1610091   0.3447380
0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Low_0-6 months       NA                   NA                0.2972415   0.2840556   0.3104273
0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Medium_0-6 months    NA                   NA                0.2816498   0.2690520   0.2942477
0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     High_0-6 months      NA                   NA                0.1908432   0.1804615   0.2012248
0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     Low_0-6 months       NA                   NA                0.2537396   0.2303438   0.2771354
0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     Medium_0-6 months    NA                   NA                0.2388060   0.1360334   0.3415785
0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     High_0-6 months      NA                   NA                0.3692308   0.2521268   0.4863348
6-24 months   iLiNS_DYADM_LNS             MALAWI                         Low_6-24 months      NA                   NA                0.3803681   0.3056098   0.4551264
6-24 months   iLiNS_DYADM_LNS             MALAWI                         Medium_6-24 months   NA                   NA                0.2645503   0.2014981   0.3276024
6-24 months   iLiNS_DYADM_LNS             MALAWI                         High_6-24 months     NA                   NA                0.1971831   0.1311011   0.2632651
6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Low_6-24 months      NA                   NA                0.4811321   0.4547419   0.5075222
6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Medium_6-24 months   NA                   NA                0.4189024   0.3950167   0.4427882
6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     High_6-24 months     NA                   NA                0.2674221   0.2467671   0.2880771
6-24 months   ki1000111-WASH-Kenya        KENYA                          Low_6-24 months      NA                   NA                0.2875107   0.2725120   0.3025094
6-24 months   ki1000111-WASH-Kenya        KENYA                          Medium_6-24 months   NA                   NA                0.2500000   0.2282530   0.2717470
6-24 months   ki1000111-WASH-Kenya        KENYA                          High_6-24 months     NA                   NA                0.1864407   0.1673095   0.2055718
6-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Low_6-24 months      NA                   NA                0.1395349   0.0347421   0.2443277
6-24 months   ki1000304-EU                INDIA                          Low_6-24 months      NA                   NA                0.5416667   0.5046231   0.5787102
6-24 months   ki1000304-EU                INDIA                          Medium_6-24 months   NA                   NA                0.4801027   0.4449965   0.5152089
6-24 months   ki1000304-EU                INDIA                          High_6-24 months     NA                   NA                0.3447619   0.3040668   0.3854570
6-24 months   ki1000304-VITAMIN-A         INDIA                          Low_6-24 months      NA                   NA                0.4322483   0.4055240   0.4589726
6-24 months   ki1000304-VITAMIN-A         INDIA                          Medium_6-24 months   NA                   NA                0.3333333   0.3028223   0.3638444
6-24 months   ki1000304-VITAMIN-A         INDIA                          High_6-24 months     NA                   NA                0.1770073   0.1450222   0.2089924
6-24 months   ki1000304-Vitamin-B12       INDIA                          Low_6-24 months      NA                   NA                0.5709877   0.5170124   0.6249630
6-24 months   ki1000304-Vitamin-B12       INDIA                          Medium_6-24 months   NA                   NA                0.5203252   0.4577682   0.5828822
6-24 months   ki1000304-Vitamin-B12       INDIA                          High_6-24 months     NA                   NA                0.2875536   0.2293112   0.3457961
6-24 months   ki1000304-ZnMort            INDIA                          Low_6-24 months      NA                   NA                0.6045273   0.5695341   0.6395205
6-24 months   ki1000304-ZnMort            INDIA                          Medium_6-24 months   NA                   NA                0.5289389   0.4896795   0.5681983
6-24 months   ki1000304-ZnMort            INDIA                          High_6-24 months     NA                   NA                0.3858921   0.3423880   0.4293963
6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Low_6-24 months      NA                   NA                0.5400000   0.4698602   0.6101398
6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Medium_6-24 months   NA                   NA                0.4055300   0.3293143   0.4817456
6-24 months   ki1000304b-SAS-CompFeed     INDIA                          High_6-24 months     NA                   NA                0.3187500   0.2283595   0.4091405
6-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Low_6-24 months      NA                   NA                0.6406250   0.5725783   0.7086717
6-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Medium_6-24 months   NA                   NA                0.5000000   0.2956596   0.7043404
6-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          High_6-24 months     NA                   NA                0.5555556   0.3645553   0.7465558
6-24 months   ki1017093b-PROVIDE          BANGLADESH                     Low_6-24 months      NA                   NA                0.1521739   0.0783748   0.2259730
6-24 months   ki1017093b-PROVIDE          BANGLADESH                     Medium_6-24 months   NA                   NA                0.1196581   0.0605951   0.1787212
6-24 months   ki1017093b-PROVIDE          BANGLADESH                     High_6-24 months     NA                   NA                0.0676692   0.0248201   0.1105183
6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Low_6-24 months      NA                   NA                0.1935484   0.0944042   0.2926925
6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Medium_6-24 months   NA                   NA                0.1954652   0.1737237   0.2172067
6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   High_6-24 months     NA                   NA                0.1459695   0.1136337   0.1783053
6-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Low_6-24 months      NA                   NA                0.5000000   0.3539129   0.6460871
6-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Medium_6-24 months   NA                   NA                0.3275862   0.2057457   0.4494267
6-24 months   ki1112895-Guatemala BSC     GUATEMALA                      High_6-24 months     NA                   NA                0.1527778   0.0690928   0.2364628
6-24 months   ki1119695-PROBIT            BELARUS                        Low_6-24 months      NA                   NA                0.0769076   0.0606153   0.0932000
6-24 months   ki1119695-PROBIT            BELARUS                        Medium_6-24 months   NA                   NA                0.0527479   0.0432623   0.0622335
6-24 months   ki1119695-PROBIT            BELARUS                        High_6-24 months     NA                   NA                0.0426230   0.0281653   0.0570806
6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Low_6-24 months      NA                   NA                0.2651775   0.2444661   0.2858890
6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Medium_6-24 months   NA                   NA                0.2448780   0.2262589   0.2634972
6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       High_6-24 months     NA                   NA                0.1867797   0.1755147   0.1980448
6-24 months   ki1135781-COHORTS           GUATEMALA                      Low_6-24 months      NA                   NA                0.6390244   0.5731175   0.7049313
6-24 months   ki1135781-COHORTS           GUATEMALA                      Medium_6-24 months   NA                   NA                0.5617284   0.4850858   0.6383710
6-24 months   ki1135781-COHORTS           GUATEMALA                      High_6-24 months     NA                   NA                0.7142857   0.6243848   0.8041866
6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Low_6-24 months      NA                   NA                0.4485777   0.4029292   0.4942262
6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Medium_6-24 months   NA                   NA                0.4180929   0.3702320   0.4659539
6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         High_6-24 months     NA                   NA                0.3813708   0.3414258   0.4213159
6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Low_6-24 months      NA                   NA                0.3618677   0.3030025   0.4207329
6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Medium_6-24 months   NA                   NA                0.2597865   0.2084228   0.3111501
6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         High_6-24 months     NA                   NA                0.2556054   0.1980112   0.3131995
6-24 months   ki1148112-LCNI-5            MALAWI                         Low_6-24 months      NA                   NA                0.5509259   0.4844393   0.6174126
6-24 months   ki1148112-LCNI-5            MALAWI                         Medium_6-24 months   NA                   NA                0.5565611   0.4909148   0.6222074
6-24 months   ki1148112-LCNI-5            MALAWI                         High_6-24 months     NA                   NA                0.4760148   0.4164436   0.5355859
6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Low_6-24 months      NA                   NA                0.2196182   0.2002445   0.2389919
6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Medium_6-24 months   NA                   NA                0.1691091   0.1515587   0.1866596
6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     High_6-24 months     NA                   NA                0.1419567   0.1274359   0.1564775
6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Low_6-24 months      NA                   NA                0.2687207   0.2400284   0.2974131
6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Medium_6-24 months   NA                   NA                0.2795699   0.1546722   0.4044676
6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     High_6-24 months     NA                   NA                0.3287671   0.1790724   0.4784618


### Parameter: RR


agecat        studyid                     country                        intXmeducyrs         intervention_level   baseline_level     estimate    ci_lower     ci_upper
------------  --------------------------  -----------------------------  -------------------  -------------------  ---------------  ----------  ----------  -----------
0-6 months    iLiNS_DYADM_LNS             MALAWI                         Medium_0-6 months    Control              Control           1.0000000   1.0000000    1.0000000
0-6 months    iLiNS_DYADM_LNS             MALAWI                         Medium_0-6 months    LNS                  Control           1.1666667   0.2499181    5.4462293
0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Low_0-6 months       Control              Control           1.0000000   1.0000000    1.0000000
0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Low_0-6 months       LNS                  Control           0.6000000   0.1417251    2.5401279
0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Low_0-6 months       Other                Control           0.8000000   0.2353832    2.7189701
0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Medium_0-6 months    Control              Control           1.0000000   1.0000000    1.0000000
0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Medium_0-6 months    LNS                  Control           1.3333333   0.1520453   11.6924231
0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Medium_0-6 months    Other                Control           0.5106383   0.0497417    5.2421141
0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     High_0-6 months      Control              Control           1.0000000   1.0000000    1.0000000
0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     High_0-6 months      LNS                  Control           0.4318182   0.0418220    4.4585898
0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     High_0-6 months      Other                Control           0.4418605   0.0663902    2.9408058
0-6 months    ki1000111-WASH-Kenya        KENYA                          Low_0-6 months       Control              Control           1.0000000   1.0000000    1.0000000
0-6 months    ki1000111-WASH-Kenya        KENYA                          Low_0-6 months       LNS                  Control           0.0000000   0.0000000    0.0000001
0-6 months    ki1000111-WASH-Kenya        KENYA                          Low_0-6 months       Other                Control           0.8076923   0.1500805    4.3467805
0-6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Low_0-6 months       Control              Control           1.0000000   1.0000000    1.0000000
0-6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Low_0-6 months       Maternal             Control           0.4848485   0.1848080    1.2720120
0-6 months    ki1000304-VITAMIN-A         INDIA                          Low_0-6 months       Control              Control           1.0000000   1.0000000    1.0000000
0-6 months    ki1000304-VITAMIN-A         INDIA                          Low_0-6 months       VitA                 Control           1.0155317   0.6993424    1.4746776
0-6 months    ki1000304-VITAMIN-A         INDIA                          Medium_0-6 months    Control              Control           1.0000000   1.0000000    1.0000000
0-6 months    ki1000304-VITAMIN-A         INDIA                          Medium_0-6 months    VitA                 Control           1.3294872   0.7368469    2.3987834
0-6 months    ki1000304-VITAMIN-A         INDIA                          High_0-6 months      Control              Control           1.0000000   1.0000000    1.0000000
0-6 months    ki1000304-VITAMIN-A         INDIA                          High_0-6 months      VitA                 Control           0.5000000   0.1402265    1.7828296
0-6 months    ki1000304-ZnMort            INDIA                          Low_0-6 months       Control              Control           1.0000000   1.0000000    1.0000000
0-6 months    ki1000304-ZnMort            INDIA                          Low_0-6 months       Zinc                 Control           1.0338235   0.6391177    1.6722914
0-6 months    ki1000304-ZnMort            INDIA                          Medium_0-6 months    Control              Control           1.0000000   1.0000000    1.0000000
0-6 months    ki1000304-ZnMort            INDIA                          Medium_0-6 months    Zinc                 Control           1.1895425   0.6091301    2.3230035
0-6 months    ki1000304-ZnMort            INDIA                          High_0-6 months      Control              Control           1.0000000   1.0000000    1.0000000
0-6 months    ki1000304-ZnMort            INDIA                          High_0-6 months      Zinc                 Control           0.6419753   0.2304209    1.7886066
0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Low_0-6 months       Control              Control           1.0000000   1.0000000    1.0000000
0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Low_0-6 months       Other                Control           1.0068838   0.8521045    1.1897779
0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Medium_0-6 months    Control              Control           1.0000000   1.0000000    1.0000000
0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Medium_0-6 months    Other                Control           1.1241830   0.9633029    1.3119315
0-6 months    ki1000304b-SAS-CompFeed     INDIA                          High_0-6 months      Control              Control           1.0000000   1.0000000    1.0000000
0-6 months    ki1000304b-SAS-CompFeed     INDIA                          High_0-6 months      Other                Control           0.7265993   0.2787669    1.8938639
0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Low_0-6 months       Control              Control           1.0000000   1.0000000    1.0000000
0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Low_0-6 months       Other                Control           0.9036437   0.6693801    1.2198929
0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Medium_0-6 months    Control              Control           1.0000000   1.0000000    1.0000000
0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Medium_0-6 months    Other                Control           1.0838710   0.4678657    2.5109263
0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          High_0-6 months      Control              Control           1.0000000   1.0000000    1.0000000
0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          High_0-6 months      Other                Control           1.2727273   0.3569772    4.5376419
0-6 months    ki1017093b-PROVIDE          BANGLADESH                     Low_0-6 months       Control              Control           1.0000000   1.0000000    1.0000000
0-6 months    ki1017093b-PROVIDE          BANGLADESH                     Low_0-6 months       Other                Control           0.8513514   0.4028269    1.7992819
0-6 months    ki1017093b-PROVIDE          BANGLADESH                     Medium_0-6 months    Control              Control           1.0000000   1.0000000    1.0000000
0-6 months    ki1017093b-PROVIDE          BANGLADESH                     Medium_0-6 months    Other                Control           1.1555556   0.5727094    2.3315638
0-6 months    ki1017093b-PROVIDE          BANGLADESH                     High_0-6 months      Control              Control           1.0000000   1.0000000    1.0000000
0-6 months    ki1017093b-PROVIDE          BANGLADESH                     High_0-6 months      Other                Control           0.8364888   0.3687389    1.8975853
0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Low_0-6 months       Control              Control           1.0000000   1.0000000    1.0000000
0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Low_0-6 months       Other                Control           1.2272727   0.2268513    6.6395852
0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Low_0-6 months       Zinc                 Control           0.2432432   0.0232271    2.5473405
0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Medium_0-6 months    Control              Control           1.0000000   1.0000000    1.0000000
0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Medium_0-6 months    Other                Control           0.8818898   0.5229186    1.4872860
0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Medium_0-6 months    Zinc                 Control           1.0810127   0.7062315    1.6546818
0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   High_0-6 months      Control              Control           1.0000000   1.0000000    1.0000000
0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   High_0-6 months      Other                Control           0.7874720   0.3125962    1.9837482
0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   High_0-6 months      Zinc                 Control           1.0080183   0.4714136    2.1554339
0-6 months    ki1112895-Guatemala BSC     GUATEMALA                      Low_0-6 months       Control              Control           1.0000000   1.0000000    1.0000000
0-6 months    ki1112895-Guatemala BSC     GUATEMALA                      Low_0-6 months       Other                Control           0.5833333   0.2225055    1.5293008
0-6 months    ki1112895-Guatemala BSC     GUATEMALA                      Medium_0-6 months    Control              Control           1.0000000   1.0000000    1.0000000
0-6 months    ki1112895-Guatemala BSC     GUATEMALA                      Medium_0-6 months    Other                Control           0.7474747   0.2958393    1.8885875
0-6 months    ki1112895-Guatemala BSC     GUATEMALA                      High_0-6 months      Control              Control           1.0000000   1.0000000    1.0000000
0-6 months    ki1112895-Guatemala BSC     GUATEMALA                      High_0-6 months      Other                Control           0.9824561   0.4936702    1.9551920
0-6 months    ki1119695-PROBIT            BELARUS                        Low_0-6 months       Control              Control           1.0000000   1.0000000    1.0000000
0-6 months    ki1119695-PROBIT            BELARUS                        Low_0-6 months       Maternal             Control           0.9203470   0.6305896    1.3432487
0-6 months    ki1119695-PROBIT            BELARUS                        Medium_0-6 months    Control              Control           1.0000000   1.0000000    1.0000000
0-6 months    ki1119695-PROBIT            BELARUS                        Medium_0-6 months    Maternal             Control           0.9004476   0.5936898    1.3657063
0-6 months    ki1119695-PROBIT            BELARUS                        High_0-6 months      Control              Control           1.0000000   1.0000000    1.0000000
0-6 months    ki1119695-PROBIT            BELARUS                        High_0-6 months      Maternal             Control           0.7788030   0.5369858    1.1295163
0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Low_0-6 months       Control              Control           1.0000000   1.0000000    1.0000000
0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Low_0-6 months       VitA                 Control           0.8561104   0.6995559    1.0477005
0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Medium_0-6 months    Control              Control           1.0000000   1.0000000    1.0000000
0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Medium_0-6 months    VitA                 Control           1.0646912   0.8737206    1.2974025
0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       High_0-6 months      Control              Control           1.0000000   1.0000000    1.0000000
0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       High_0-6 months      VitA                 Control           1.1417768   0.9791070    1.3314726
0-6 months    ki1135781-COHORTS           GUATEMALA                      Low_0-6 months       Control              Control           1.0000000   1.0000000    1.0000000
0-6 months    ki1135781-COHORTS           GUATEMALA                      Low_0-6 months       Other                Control           0.8930041   0.5780304    1.3796098
0-6 months    ki1135781-COHORTS           GUATEMALA                      Medium_0-6 months    Control              Control           1.0000000   1.0000000    1.0000000
0-6 months    ki1135781-COHORTS           GUATEMALA                      Medium_0-6 months    Other                Control           0.5131195   0.2372161    1.1099234
0-6 months    ki1135781-COHORTS           GUATEMALA                      High_0-6 months      Control              Control           1.0000000   1.0000000    1.0000000
0-6 months    ki1135781-COHORTS           GUATEMALA                      High_0-6 months      Other                Control           1.3750000   0.6104684    3.0970073
0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         Low_0-6 months       Control              Control           1.0000000   1.0000000    1.0000000
0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         Low_0-6 months       LNS                  Control           0.8695375   0.6012175    1.2576072
0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         Medium_0-6 months    Control              Control           1.0000000   1.0000000    1.0000000
0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         Medium_0-6 months    LNS                  Control           0.6926136   0.4814629    0.9963668
0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         High_0-6 months      Control              Control           1.0000000   1.0000000    1.0000000
0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         High_0-6 months      LNS                  Control           1.2485714   0.7576978    2.0574570
0-6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Medium_0-6 months    Control              Control           1.0000000   1.0000000    1.0000000
0-6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Medium_0-6 months    Maternal             Control           1.0500000   0.2655299    4.1520746
0-6 months    ki1148112-LCNI-5            MALAWI                         Low_0-6 months       Control              Control           1.0000000   1.0000000    1.0000000
0-6 months    ki1148112-LCNI-5            MALAWI                         Low_0-6 months       LNS                  Control           1.3038549   0.7121525    2.3871819
0-6 months    ki1148112-LCNI-5            MALAWI                         Low_0-6 months       Other                Control           1.6975309   0.8923967    3.2290697
0-6 months    ki1148112-LCNI-5            MALAWI                         Medium_0-6 months    Control              Control           1.0000000   1.0000000    1.0000000
0-6 months    ki1148112-LCNI-5            MALAWI                         Medium_0-6 months    LNS                  Control           0.6071429   0.2854869    1.2912063
0-6 months    ki1148112-LCNI-5            MALAWI                         Medium_0-6 months    Other                Control           1.1614907   0.5683530    2.3736313
0-6 months    ki1148112-LCNI-5            MALAWI                         High_0-6 months      Control              Control           1.0000000   1.0000000    1.0000000
0-6 months    ki1148112-LCNI-5            MALAWI                         High_0-6 months      LNS                  Control           0.7211538   0.3195555    1.6274573
0-6 months    ki1148112-LCNI-5            MALAWI                         High_0-6 months      Other                Control           0.6793478   0.2578370    1.7899425
0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Low_0-6 months       Control              Control           1.0000000   1.0000000    1.0000000
0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Low_0-6 months       Maternal             Control           0.8140718   0.7458713    0.8885084
0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Medium_0-6 months    Control              Control           1.0000000   1.0000000    1.0000000
0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Medium_0-6 months    Maternal             Control           0.8707107   0.7965363    0.9517923
0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     High_0-6 months      Control              Control           1.0000000   1.0000000    1.0000000
0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     High_0-6 months      Maternal             Control           0.8621240   0.7730563    0.9614536
0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     Low_0-6 months       Control              Control           1.0000000   1.0000000    1.0000000
0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     Low_0-6 months       LNS                  Control           0.9466489   0.7364629    1.2168219
0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     Low_0-6 months       Other                Control           1.0654469   0.8549583    1.3277574
0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     Medium_0-6 months    Control              Control           1.0000000   1.0000000    1.0000000
0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     Medium_0-6 months    LNS                  Control           1.3043478   0.3507589    4.8504062
0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     Medium_0-6 months    Other                Control           1.2068966   0.3301152    4.4123973
0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     High_0-6 months      Control              Control           1.0000000   1.0000000    1.0000000
0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     High_0-6 months      LNS                  Control           1.1333333   0.4259765    3.0152942
0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     High_0-6 months      Other                Control           1.4733333   0.6394849    3.3944684
6-24 months   iLiNS_DYADM_LNS             MALAWI                         Low_6-24 months      Control              Control           1.0000000   1.0000000    1.0000000
6-24 months   iLiNS_DYADM_LNS             MALAWI                         Low_6-24 months      LNS                  Control           1.0731908   0.7245343    1.5896259
6-24 months   iLiNS_DYADM_LNS             MALAWI                         Medium_6-24 months   Control              Control           1.0000000   1.0000000    1.0000000
6-24 months   iLiNS_DYADM_LNS             MALAWI                         Medium_6-24 months   LNS                  Control           1.0371651   0.6437718    1.6709513
6-24 months   iLiNS_DYADM_LNS             MALAWI                         High_6-24 months     Control              Control           1.0000000   1.0000000    1.0000000
6-24 months   iLiNS_DYADM_LNS             MALAWI                         High_6-24 months     LNS                  Control           1.7013699   0.8394671    3.4482107
6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Low_6-24 months      Control              Control           1.0000000   1.0000000    1.0000000
6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Low_6-24 months      LNS                  Control           0.9275360   0.7907086    1.0880405
6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Low_6-24 months      Other                Control           1.0398773   0.9096077    1.1888034
6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Medium_6-24 months   Control              Control           1.0000000   1.0000000    1.0000000
6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Medium_6-24 months   LNS                  Control           0.8956352   0.7531891    1.0650214
6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Medium_6-24 months   Other                Control           1.0826925   0.9411227    1.2455581
6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     High_6-24 months     Control              Control           1.0000000   1.0000000    1.0000000
6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     High_6-24 months     LNS                  Control           0.6356126   0.5009463    0.8064805
6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     High_6-24 months     Other                Control           0.9192967   0.7714895    1.0954219
6-24 months   ki1000111-WASH-Kenya        KENYA                          Low_6-24 months      Control              Control           1.0000000   1.0000000    1.0000000
6-24 months   ki1000111-WASH-Kenya        KENYA                          Low_6-24 months      LNS                  Control           0.8207493   0.7020767    0.9594812
6-24 months   ki1000111-WASH-Kenya        KENYA                          Low_6-24 months      Other                Control           1.0901627   0.9710825    1.2238453
6-24 months   ki1000111-WASH-Kenya        KENYA                          Medium_6-24 months   Control              Control           1.0000000   1.0000000    1.0000000
6-24 months   ki1000111-WASH-Kenya        KENYA                          Medium_6-24 months   LNS                  Control           0.9648689   0.7538807    1.2349063
6-24 months   ki1000111-WASH-Kenya        KENYA                          Medium_6-24 months   Other                Control           1.1600385   0.9517377    1.4139288
6-24 months   ki1000111-WASH-Kenya        KENYA                          High_6-24 months     Control              Control           1.0000000   1.0000000    1.0000000
6-24 months   ki1000111-WASH-Kenya        KENYA                          High_6-24 months     LNS                  Control           0.8910891   0.6669737    1.1905114
6-24 months   ki1000111-WASH-Kenya        KENYA                          High_6-24 months     Other                Control           0.9971533   0.7909844    1.2570598
6-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Low_6-24 months      Control              Control           1.0000000   1.0000000    1.0000000
6-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Low_6-24 months      Maternal             Control           1.1500000   0.2562319    5.1613407
6-24 months   ki1000304-EU                INDIA                          Low_6-24 months      Control              Control           1.0000000   1.0000000    1.0000000
6-24 months   ki1000304-EU                INDIA                          Low_6-24 months      Zinc                 Control           0.9733540   0.8487365    1.1162688
6-24 months   ki1000304-EU                INDIA                          Medium_6-24 months   Control              Control           1.0000000   1.0000000    1.0000000
6-24 months   ki1000304-EU                INDIA                          Medium_6-24 months   Zinc                 Control           0.8717142   0.7515390    1.0111060
6-24 months   ki1000304-EU                INDIA                          High_6-24 months     Control              Control           1.0000000   1.0000000    1.0000000
6-24 months   ki1000304-EU                INDIA                          High_6-24 months     Zinc                 Control           0.9469368   0.7478676    1.1989946
6-24 months   ki1000304-VITAMIN-A         INDIA                          Low_6-24 months      Control              Control           1.0000000   1.0000000    1.0000000
6-24 months   ki1000304-VITAMIN-A         INDIA                          Low_6-24 months      VitA                 Control           0.9619789   0.8499748    1.0887423
6-24 months   ki1000304-VITAMIN-A         INDIA                          Medium_6-24 months   Control              Control           1.0000000   1.0000000    1.0000000
6-24 months   ki1000304-VITAMIN-A         INDIA                          Medium_6-24 months   VitA                 Control           1.0087609   0.8399158    1.2115482
6-24 months   ki1000304-VITAMIN-A         INDIA                          High_6-24 months     Control              Control           1.0000000   1.0000000    1.0000000
6-24 months   ki1000304-VITAMIN-A         INDIA                          High_6-24 months     VitA                 Control           0.8021300   0.5572551    1.1546103
6-24 months   ki1000304-Vitamin-B12       INDIA                          Low_6-24 months      Control              Control           1.0000000   1.0000000    1.0000000
6-24 months   ki1000304-Vitamin-B12       INDIA                          Low_6-24 months      Other                Control           1.0349360   0.8334961    1.2850600
6-24 months   ki1000304-Vitamin-B12       INDIA                          Medium_6-24 months   Control              Control           1.0000000   1.0000000    1.0000000
6-24 months   ki1000304-Vitamin-B12       INDIA                          Medium_6-24 months   Other                Control           0.9722043   0.7419990    1.2738307
6-24 months   ki1000304-Vitamin-B12       INDIA                          High_6-24 months     Control              Control           1.0000000   1.0000000    1.0000000
6-24 months   ki1000304-Vitamin-B12       INDIA                          High_6-24 months     Other                Control           0.7840909   0.4946224    1.2429654
6-24 months   ki1000304-ZnMort            INDIA                          Low_6-24 months      Control              Control           1.0000000   1.0000000    1.0000000
6-24 months   ki1000304-ZnMort            INDIA                          Low_6-24 months      Zinc                 Control           0.9513383   0.8470493    1.0684675
6-24 months   ki1000304-ZnMort            INDIA                          Medium_6-24 months   Control              Control           1.0000000   1.0000000    1.0000000
6-24 months   ki1000304-ZnMort            INDIA                          Medium_6-24 months   Zinc                 Control           1.0627558   0.9152746    1.2340012
6-24 months   ki1000304-ZnMort            INDIA                          High_6-24 months     Control              Control           1.0000000   1.0000000    1.0000000
6-24 months   ki1000304-ZnMort            INDIA                          High_6-24 months     Zinc                 Control           0.9084516   0.7245291    1.1390631
6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Low_6-24 months      Control              Control           1.0000000   1.0000000    1.0000000
6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Low_6-24 months      Other                Control           1.0405766   0.8010921    1.3516542
6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Medium_6-24 months   Control              Control           1.0000000   1.0000000    1.0000000
6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Medium_6-24 months   Other                Control           0.7803790   0.5655637    1.0767867
6-24 months   ki1000304b-SAS-CompFeed     INDIA                          High_6-24 months     Control              Control           1.0000000   1.0000000    1.0000000
6-24 months   ki1000304b-SAS-CompFeed     INDIA                          High_6-24 months     Other                Control           1.0475228   0.5657524    1.9395480
6-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Low_6-24 months      Control              Control           1.0000000   1.0000000    1.0000000
6-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Low_6-24 months      Other                Control           0.8615385   0.6914000    1.0735443
6-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Medium_6-24 months   Control              Control           1.0000000   1.0000000    1.0000000
6-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Medium_6-24 months   Other                Control           0.5764706   0.2716893    1.2231558
6-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          High_6-24 months     Control              Control           1.0000000   1.0000000    1.0000000
6-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          High_6-24 months     Other                Control           0.9090909   0.3978228    2.0774233
6-24 months   ki1017093b-PROVIDE          BANGLADESH                     Low_6-24 months      Control              Control           1.0000000   1.0000000    1.0000000
6-24 months   ki1017093b-PROVIDE          BANGLADESH                     Low_6-24 months      Other                Control           0.4190476   0.1622143    1.0825239
6-24 months   ki1017093b-PROVIDE          BANGLADESH                     Medium_6-24 months   Control              Control           1.0000000   1.0000000    1.0000000
6-24 months   ki1017093b-PROVIDE          BANGLADESH                     Medium_6-24 months   Other                Control           0.6413502   0.2384340    1.7251317
6-24 months   ki1017093b-PROVIDE          BANGLADESH                     High_6-24 months     Control              Control           1.0000000   1.0000000    1.0000000
6-24 months   ki1017093b-PROVIDE          BANGLADESH                     High_6-24 months     Other                Control           2.4313725   0.3138380   18.8363809
6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Low_6-24 months      Control              Control           1.0000000   1.0000000    1.0000000
6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Low_6-24 months      Other                Control           0.5131579   0.1355734    1.9423505
6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Low_6-24 months      Zinc                 Control           0.5416667   0.1712133    1.7136679
6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Medium_6-24 months   Control              Control           1.0000000   1.0000000    1.0000000
6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Medium_6-24 months   Other                Control           1.0132962   0.7345616    1.3977987
6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Medium_6-24 months   Zinc                 Control           1.0983273   0.8376633    1.4401047
6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   High_6-24 months     Control              Control           1.0000000   1.0000000    1.0000000
6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   High_6-24 months     Other                Control           0.7303719   0.3746411    1.4238777
6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   High_6-24 months     Zinc                 Control           0.9854958   0.5749863    1.6890870
6-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Low_6-24 months      Control              Control           1.0000000   1.0000000    1.0000000
6-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Low_6-24 months      Other                Control           1.4181818   0.7831303    2.5682055
6-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Medium_6-24 months   Control              Control           1.0000000   1.0000000    1.0000000
6-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Medium_6-24 months   Other                Control           1.2757202   0.6059075    2.6859905
6-24 months   ki1112895-Guatemala BSC     GUATEMALA                      High_6-24 months     Control              Control           1.0000000   1.0000000    1.0000000
6-24 months   ki1112895-Guatemala BSC     GUATEMALA                      High_6-24 months     Other                Control           2.3859649   0.6819869    8.3474159
6-24 months   ki1119695-PROBIT            BELARUS                        Low_6-24 months      Control              Control           1.0000000   1.0000000    1.0000000
6-24 months   ki1119695-PROBIT            BELARUS                        Low_6-24 months      Maternal             Control           0.6513684   0.4465857    0.9500547
6-24 months   ki1119695-PROBIT            BELARUS                        Medium_6-24 months   Control              Control           1.0000000   1.0000000    1.0000000
6-24 months   ki1119695-PROBIT            BELARUS                        Medium_6-24 months   Maternal             Control           0.9481989   0.6698279    1.3422569
6-24 months   ki1119695-PROBIT            BELARUS                        High_6-24 months     Control              Control           1.0000000   1.0000000    1.0000000
6-24 months   ki1119695-PROBIT            BELARUS                        High_6-24 months     Maternal             Control           0.6750392   0.3495362    1.3036645
6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Low_6-24 months      Control              Control           1.0000000   1.0000000    1.0000000
6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Low_6-24 months      VitA                 Control           1.1621719   0.9632470    1.4021778
6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Medium_6-24 months   Control              Control           1.0000000   1.0000000    1.0000000
6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Medium_6-24 months   VitA                 Control           1.0905172   0.9093559    1.3077694
6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       High_6-24 months     Control              Control           1.0000000   1.0000000    1.0000000
6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       High_6-24 months     VitA                 Control           0.9324370   0.8138311    1.0683283
6-24 months   ki1135781-COHORTS           GUATEMALA                      Low_6-24 months      Control              Control           1.0000000   1.0000000    1.0000000
6-24 months   ki1135781-COHORTS           GUATEMALA                      Low_6-24 months      Other                Control           0.8205303   0.6699222    1.0049974
6-24 months   ki1135781-COHORTS           GUATEMALA                      Medium_6-24 months   Control              Control           1.0000000   1.0000000    1.0000000
6-24 months   ki1135781-COHORTS           GUATEMALA                      Medium_6-24 months   Other                Control           0.6436170   0.4928272    0.8405439
6-24 months   ki1135781-COHORTS           GUATEMALA                      High_6-24 months     Control              Control           1.0000000   1.0000000    1.0000000
6-24 months   ki1135781-COHORTS           GUATEMALA                      High_6-24 months     Other                Control           1.0760870   0.8322994    1.3912819
6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Low_6-24 months      Control              Control           1.0000000   1.0000000    1.0000000
6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Low_6-24 months      LNS                  Control           1.2297641   0.9043084    1.6723495
6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Medium_6-24 months   Control              Control           1.0000000   1.0000000    1.0000000
6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Medium_6-24 months   LNS                  Control           1.1716512   0.8271946    1.6595448
6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         High_6-24 months     Control              Control           1.0000000   1.0000000    1.0000000
6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         High_6-24 months     LNS                  Control           0.8212793   0.6384816    1.0564121
6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Low_6-24 months      Control              Control           1.0000000   1.0000000    1.0000000
6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Low_6-24 months      Maternal             Control           0.9755515   0.6932256    1.3728585
6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Medium_6-24 months   Control              Control           1.0000000   1.0000000    1.0000000
6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Medium_6-24 months   Maternal             Control           0.9987250   0.6609139    1.5092007
6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         High_6-24 months     Control              Control           1.0000000   1.0000000    1.0000000
6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         High_6-24 months     Maternal             Control           2.1058442   1.1274397    3.9333186
6-24 months   ki1148112-LCNI-5            MALAWI                         Low_6-24 months      Control              Control           1.0000000   1.0000000    1.0000000
6-24 months   ki1148112-LCNI-5            MALAWI                         Low_6-24 months      LNS                  Control           0.9655172   0.7293067    1.2782326
6-24 months   ki1148112-LCNI-5            MALAWI                         Low_6-24 months      Other                Control           0.9147727   0.6363007    1.3151159
6-24 months   ki1148112-LCNI-5            MALAWI                         Medium_6-24 months   Control              Control           1.0000000   1.0000000    1.0000000
6-24 months   ki1148112-LCNI-5            MALAWI                         Medium_6-24 months   LNS                  Control           1.1531532   0.8408708    1.5814108
6-24 months   ki1148112-LCNI-5            MALAWI                         Medium_6-24 months   Other                Control           1.1379310   0.7994789    1.6196638
6-24 months   ki1148112-LCNI-5            MALAWI                         High_6-24 months     Control              Control           1.0000000   1.0000000    1.0000000
6-24 months   ki1148112-LCNI-5            MALAWI                         High_6-24 months     LNS                  Control           1.1211251   0.7923031    1.5864151
6-24 months   ki1148112-LCNI-5            MALAWI                         High_6-24 months     Other                Control           1.3425156   0.9373820    1.9227467
6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Low_6-24 months      Control              Control           1.0000000   1.0000000    1.0000000
6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Low_6-24 months      Maternal             Control           0.9953007   0.8329252    1.1893306
6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Medium_6-24 months   Control              Control           1.0000000   1.0000000    1.0000000
6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Medium_6-24 months   Maternal             Control           0.9833705   0.7981451    1.2115812
6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     High_6-24 months     Control              Control           1.0000000   1.0000000    1.0000000
6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     High_6-24 months     Maternal             Control           1.0644199   0.8674173    1.3061646
6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Low_6-24 months      Control              Control           1.0000000   1.0000000    1.0000000
6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Low_6-24 months      LNS                  Control           0.7759362   0.5708705    1.0546647
6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Low_6-24 months      Other                Control           0.8842153   0.6933247    1.1276631
6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Medium_6-24 months   Control              Control           1.0000000   1.0000000    1.0000000
6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Medium_6-24 months   LNS                  Control           0.2433862   0.0325310    1.8209336
6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Medium_6-24 months   Other                Control           1.2990033   0.4718614    3.5760708
6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     High_6-24 months     Control              Control           1.0000000   1.0000000    1.0000000
6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     High_6-24 months     LNS                  Control           1.0526316   0.2342915    4.7292926
6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     High_6-24 months     Other                Control           1.6470588   0.4923968    5.5093836


### Parameter: PAR


agecat        studyid                     country                        intXmeducyrs         intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  --------------------------  -----------------------------  -------------------  -------------------  ---------------  -----------  -----------  -----------
0-6 months    iLiNS_DYADM_LNS             MALAWI                         Medium_0-6 months    Control              NA                 0.0267857   -0.2377019    0.2912733
0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Low_0-6 months       Control              NA                -0.0564516   -0.2737551    0.1608519
0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Medium_0-6 months    Control              NA                -0.0135659   -0.1576836    0.1305518
0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     High_0-6 months      Control              NA                -0.0457393   -0.1603883    0.0689096
0-6 months    ki1000111-WASH-Kenya        KENYA                          Low_0-6 months       Control              NA                -0.0485175   -0.1984009    0.1013659
0-6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Low_0-6 months       Control              NA                -0.0817308   -0.1868874    0.0234259
0-6 months    ki1000304-VITAMIN-A         INDIA                          Low_0-6 months       Control              NA                 0.0033333   -0.0773176    0.0839843
0-6 months    ki1000304-VITAMIN-A         INDIA                          Medium_0-6 months    Control              NA                 0.0372842   -0.0403301    0.1148985
0-6 months    ki1000304-VITAMIN-A         INDIA                          High_0-6 months      Control              NA                -0.0461538   -0.1264139    0.0341062
0-6 months    ki1000304-ZnMort            INDIA                          Low_0-6 months       Control              NA                 0.0080730   -0.1085500    0.1246960
0-6 months    ki1000304-ZnMort            INDIA                          Medium_0-6 months    Control              NA                 0.0371795   -0.1039779    0.1783369
0-6 months    ki1000304-ZnMort            INDIA                          High_0-6 months      Control              NA                -0.0506993   -0.1619419    0.0605433
0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Low_0-6 months       Control              NA                 0.0013239   -0.0309683    0.0336161
0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Medium_0-6 months    Control              NA                 0.0167371   -0.0081624    0.0416367
0-6 months    ki1000304b-SAS-CompFeed     INDIA                          High_0-6 months      Control              NA                -0.0268767   -0.1084030    0.0546495
0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Low_0-6 months       Control              NA                -0.0299597   -0.1207952    0.0608758
0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Medium_0-6 months    Control              NA                 0.0206349   -0.1911723    0.2324421
0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          High_0-6 months      Control              NA                 0.0642857   -0.2472788    0.3758502
0-6 months    ki1017093b-PROVIDE          BANGLADESH                     Low_0-6 months       Control              NA                -0.0187075   -0.1091711    0.0717561
0-6 months    ki1017093b-PROVIDE          BANGLADESH                     Medium_0-6 months    Control              NA                 0.0156250   -0.0578170    0.0890670
0-6 months    ki1017093b-PROVIDE          BANGLADESH                     High_0-6 months      Control              NA                -0.0159933   -0.0926190    0.0606325
0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Low_0-6 months       Control              NA                -0.0331890   -0.1556746    0.0892965
0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Medium_0-6 months    Control              NA                 0.0008606   -0.0207748    0.0224959
0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   High_0-6 months      Control              NA                -0.0034965   -0.0409712    0.0339782
0-6 months    ki1112895-Guatemala BSC     GUATEMALA                      Low_0-6 months       Control              NA                -0.0549451   -0.1493114    0.0394212
0-6 months    ki1112895-Guatemala BSC     GUATEMALA                      Medium_0-6 months    Control              NA                -0.0289575   -0.1198732    0.0619582
0-6 months    ki1112895-Guatemala BSC     GUATEMALA                      High_0-6 months      Control              NA                -0.0024752   -0.0988238    0.0938733
0-6 months    ki1119695-PROBIT            BELARUS                        Low_0-6 months       Control              NA                -0.0037661   -0.0211417    0.0136095
0-6 months    ki1119695-PROBIT            BELARUS                        Medium_0-6 months    Control              NA                -0.0029045   -0.0144918    0.0086828
0-6 months    ki1119695-PROBIT            BELARUS                        High_0-6 months      Control              NA                -0.0067873   -0.0169995    0.0034249
0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Low_0-6 months       Control              NA                -0.0234376   -0.0550329    0.0081577
0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Medium_0-6 months    Control              NA                 0.0089598   -0.0188490    0.0367686
0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       High_0-6 months      Control              NA                 0.0153423   -0.0018451    0.0325297
0-6 months    ki1135781-COHORTS           GUATEMALA                      Low_0-6 months       Control              NA                -0.0234604   -0.1141631    0.0672423
0-6 months    ki1135781-COHORTS           GUATEMALA                      Medium_0-6 months    Control              NA                -0.0816227   -0.1741984    0.0109531
0-6 months    ki1135781-COHORTS           GUATEMALA                      High_0-6 months      Control              NA                 0.0409091   -0.0641943    0.1460125
0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         Low_0-6 months       Control              NA                -0.0411179   -0.1545372    0.0723013
0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         Medium_0-6 months    Control              NA                -0.1094643   -0.2312100    0.0122814
0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         High_0-6 months      Control              NA                 0.0425969   -0.0458662    0.1310600
0-6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Medium_0-6 months    Control              NA                 0.0105820   -0.2840435    0.3052075
0-6 months    ki1148112-LCNI-5            MALAWI                         Low_0-6 months       Control              NA                 0.1073913   -0.0564634    0.2712460
0-6 months    ki1148112-LCNI-5            MALAWI                         Medium_0-6 months    Control              NA                -0.0708556   -0.2803626    0.1386514
0-6 months    ki1148112-LCNI-5            MALAWI                         High_0-6 months      Control              NA                -0.0671264   -0.2182038    0.0839509
0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Low_0-6 months       Control              NA                -0.0309959   -0.0445141   -0.0174778
0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Medium_0-6 months    Control              NA                -0.0198233   -0.0327808   -0.0068657
0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     High_0-6 months      Control              NA                -0.0140159   -0.0243117   -0.0037201
0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     Low_0-6 months       Control              NA                 0.0042594   -0.0334916    0.0420104
0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     Medium_0-6 months    Control              NA                 0.0388060   -0.1582438    0.2358558
0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     High_0-6 months      Control              NA                 0.0751131   -0.1131733    0.2633995
6-24 months   iLiNS_DYADM_LNS             MALAWI                         Low_6-24 months      Control              NA                 0.0125520   -0.0573883    0.0824924
6-24 months   iLiNS_DYADM_LNS             MALAWI                         Medium_6-24 months   Control              NA                 0.0045503   -0.0549739    0.0640744
6-24 months   iLiNS_DYADM_LNS             MALAWI                         High_6-24 months     Control              NA                 0.0522556   -0.0153118    0.1198229
6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Low_6-24 months      Control              NA                 0.0003061   -0.0458940    0.0465062
6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Medium_6-24 months   Control              NA                 0.0066887   -0.0357914    0.0491688
6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     High_6-24 months     Control              NA                -0.0399174   -0.0770137   -0.0028210
6-24 months   ki1000111-WASH-Kenya        KENYA                          Low_6-24 months      Control              NA                 0.0002591   -0.0203937    0.0209118
6-24 months   ki1000111-WASH-Kenya        KENYA                          Medium_6-24 months   Control              NA                 0.0140449   -0.0153018    0.0433917
6-24 months   ki1000111-WASH-Kenya        KENYA                          High_6-24 months     Control              NA                -0.0048472   -0.0321537    0.0224593
6-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Low_6-24 months      Control              NA                 0.0091001   -0.0890244    0.1072246
6-24 months   ki1000304-EU                INDIA                          Low_6-24 months      Control              NA                -0.0070799   -0.0429734    0.0288137
6-24 months   ki1000304-EU                INDIA                          Medium_6-24 months   Control              NA                -0.0307932   -0.0638392    0.0022528
6-24 months   ki1000304-EU                INDIA                          High_6-24 months     Control              NA                -0.0098198   -0.0523618    0.0327223
6-24 months   ki1000304-VITAMIN-A         INDIA                          Low_6-24 months      Control              NA                -0.0082279   -0.0344889    0.0180331
6-24 months   ki1000304-VITAMIN-A         INDIA                          Medium_6-24 months   Control              NA                 0.0014948   -0.0298911    0.0328806
6-24 months   ki1000304-VITAMIN-A         INDIA                          High_6-24 months     Control              NA                -0.0193563   -0.0512152    0.0125025
6-24 months   ki1000304-Vitamin-B12       INDIA                          Low_6-24 months      Control              NA                 0.0141695   -0.0744265    0.1027655
6-24 months   ki1000304-Vitamin-B12       INDIA                          Medium_6-24 months   Control              NA                -0.0109248   -0.1163401    0.0944905
6-24 months   ki1000304-Vitamin-B12       INDIA                          High_6-24 months     Control              NA                -0.0602724   -0.1823599    0.0618151
6-24 months   ki1000304-ZnMort            INDIA                          Low_6-24 months      Control              NA                -0.0146437   -0.0486851    0.0193977
6-24 months   ki1000304-ZnMort            INDIA                          Medium_6-24 months   Control              NA                 0.0169935   -0.0246142    0.0586012
6-24 months   ki1000304-ZnMort            INDIA                          High_6-24 months     Control              NA                -0.0181895   -0.0609659    0.0245868
6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Low_6-24 months      Control              NA                 0.0110744   -0.0613290    0.0834778
6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Medium_6-24 months   Control              NA                -0.0544700   -0.1393131    0.0303730
6-24 months   ki1000304b-SAS-CompFeed     INDIA                          High_6-24 months     Control              NA                 0.0079392   -0.0971061    0.1129845
6-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Low_6-24 months      Control              NA                -0.0736607   -0.1854839    0.0381624
6-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Medium_6-24 months   Control              NA                -0.2142857   -0.5150329    0.0864614
6-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          High_6-24 months     Control              NA                -0.0444444   -0.4407320    0.3518431
6-24 months   ki1017093b-PROVIDE          BANGLADESH                     Low_6-24 months      Control              NA                -0.1205534   -0.2745490    0.0334423
6-24 months   ki1017093b-PROVIDE          BANGLADESH                     Medium_6-24 months   Control              NA                -0.0382366   -0.1290072    0.0525340
6-24 months   ki1017093b-PROVIDE          BANGLADESH                     High_6-24 months     Control              NA                 0.0354111   -0.0271731    0.0979953
6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Low_6-24 months      Control              NA                -0.1141439   -0.3308882    0.1026003
6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Medium_6-24 months   Control              NA                 0.0096245   -0.0261384    0.0453874
6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   High_6-24 months     Control              NA                -0.0124463   -0.0748240    0.0499313
6-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Low_6-24 months      Control              NA                 0.0833333   -0.0567109    0.2233776
6-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Medium_6-24 months   Control              NA                 0.0372636   -0.0769880    0.1515152
6-24 months   ki1112895-Guatemala BSC     GUATEMALA                      High_6-24 months     Control              NA                 0.0645425   -0.0221482    0.1512331
6-24 months   ki1119695-PROBIT            BELARUS                        Low_6-24 months      Control              NA                -0.0187008   -0.0382372    0.0008356
6-24 months   ki1119695-PROBIT            BELARUS                        Medium_6-24 months   Control              NA                -0.0013684   -0.0102788    0.0075420
6-24 months   ki1119695-PROBIT            BELARUS                        High_6-24 months     Control              NA                -0.0094701   -0.0256982    0.0067580
6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Low_6-24 months      Control              NA                 0.0284519   -0.0057524    0.0626562
6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Medium_6-24 months   Control              NA                 0.0156290   -0.0164057    0.0476638
6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       High_6-24 months     Control              NA                -0.0099416   -0.0296070    0.0097239
6-24 months   ki1135781-COHORTS           GUATEMALA                      Low_6-24 months      Control              NA                -0.0736193   -0.1492352    0.0019966
6-24 months   ki1135781-COHORTS           GUATEMALA                      Medium_6-24 months   Control              NA                -0.1503928   -0.2403786   -0.0604070
6-24 months   ki1135781-COHORTS           GUATEMALA                      High_6-24 months     Control              NA                 0.0173160   -0.0441116    0.0787436
6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Low_6-24 months      Control              NA                 0.0719543   -0.0273769    0.1712855
6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Medium_6-24 months   Control              NA                 0.0530135   -0.0569607    0.1629878
6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         High_6-24 months     Control              NA                -0.0665458   -0.1568974    0.0238057
6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Low_6-24 months      Control              NA                -0.0059484   -0.0883736    0.0764768
6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Medium_6-24 months   Control              NA                -0.0002135   -0.0693245    0.0688974
6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         High_6-24 months     Control              NA                 0.1106778    0.0333306    0.1880251
6-24 months   ki1148112-LCNI-5            MALAWI                         Low_6-24 months      Control              NA                -0.0205026   -0.1325146    0.0915094
6-24 months   ki1148112-LCNI-5            MALAWI                         Medium_6-24 months   Control              NA                 0.0565611   -0.0623142    0.1754364
6-24 months   ki1148112-LCNI-5            MALAWI                         High_6-24 months     Control              NA                 0.0633163   -0.0438549    0.1704876
6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Low_6-24 months      Control              NA                -0.0005399   -0.0209657    0.0198859
6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Medium_6-24 months   Control              NA                -0.0014935   -0.0201013    0.0171144
6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     High_6-24 months     Control              NA                 0.0044533   -0.0101560    0.0190625
6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Low_6-24 months      Control              NA                -0.0341778   -0.0827624    0.0144068
6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Medium_6-24 months   Control              NA                -0.0247779   -0.2516651    0.2021092
6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     High_6-24 months     Control              NA                 0.0787671   -0.1562814    0.3138157


### Parameter: PAF


agecat        studyid                     country                        intXmeducyrs         intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  --------------------------  -----------------------------  -------------------  -------------------  ---------------  -----------  -----------  -----------
0-6 months    iLiNS_DYADM_LNS             MALAWI                         Medium_0-6 months    Control              NA                 0.0857143   -1.3062958    0.6375494
0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Low_0-6 months       Control              NA                -0.2916667   -2.0716594    0.4568399
0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Medium_0-6 months    Control              NA                -0.1944444   -5.7079902    0.7873137
0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     High_0-6 months      Control              NA                -0.7684210   -3.9972725    0.3741960
0-6 months    ki1000111-WASH-Kenya        KENYA                          Low_0-6 months       Control              NA                -0.5142857   -3.2084512    0.4551294
0-6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Low_0-6 months       Control              NA                -0.3541667   -0.8886321    0.0290500
0-6 months    ki1000304-VITAMIN-A         INDIA                          Low_0-6 months       Control              NA                 0.0080000   -0.2057400    0.1838506
0-6 months    ki1000304-VITAMIN-A         INDIA                          Medium_0-6 months    Control              NA                 0.1316598   -0.1894197    0.3660651
0-6 months    ki1000304-VITAMIN-A         INDIA                          High_0-6 months      Control              NA                -0.3000000   -0.9192671    0.1194556
0-6 months    ki1000304-ZnMort            INDIA                          Low_0-6 months       Control              NA                 0.0172673   -0.2667238    0.2375894
0-6 months    ki1000304-ZnMort            INDIA                          Medium_0-6 months    Control              NA                 0.0969900   -0.3579118    0.3994992
0-6 months    ki1000304-ZnMort            INDIA                          High_0-6 months      Control              NA                -0.1715976   -0.6154481    0.1503033
0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Low_0-6 months       Control              NA                 0.0037857   -0.0927087    0.0917588
0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Medium_0-6 months    Control              NA                 0.0597109   -0.0336541    0.1446426
0-6 months    ki1000304b-SAS-CompFeed     INDIA                          High_0-6 months      Control              NA                -0.1746988   -0.8343951    0.2477535
0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Low_0-6 months       Control              NA                -0.0774740   -0.3400448    0.1336483
0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Medium_0-6 months    Control              NA                 0.0546218   -0.7107806    0.4775836
0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          High_0-6 months      Control              NA                 0.1836735   -1.4278874    0.7255272
0-6 months    ki1017093b-PROVIDE          BANGLADESH                     Low_0-6 months       Control              NA                -0.1264368   -0.9368037    0.3448692
0-6 months    ki1017093b-PROVIDE          BANGLADESH                     Medium_0-6 months    Control              NA                 0.1000000   -0.5161285    0.4657445
0-6 months    ki1017093b-PROVIDE          BANGLADESH                     High_0-6 months      Control              NA                -0.1407407   -1.0576059    0.3675711
0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Low_0-6 months       Control              NA                -0.4259259   -3.2150613    0.5176192
0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Medium_0-6 months    Control              NA                 0.0119048   -0.3376473    0.2701124
0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   High_0-6 months      Control              NA                -0.0540541   -0.8259011    0.3915169
0-6 months    ki1112895-Guatemala BSC     GUATEMALA                      Low_0-6 months       Control              NA                -0.2380952   -0.7176604    0.1075769
0-6 months    ki1112895-Guatemala BSC     GUATEMALA                      Medium_0-6 months    Control              NA                -0.1351351   -0.6471383    0.2177149
0-6 months    ki1112895-Guatemala BSC     GUATEMALA                      High_0-6 months      Control              NA                -0.0100000   -0.4848881    0.3130122
0-6 months    ki1119695-PROBIT            BELARUS                        Low_0-6 months       Control              NA                -0.0460007   -0.2779253    0.1438331
0-6 months    ki1119695-PROBIT            BELARUS                        Medium_0-6 months    Control              NA                -0.0502767   -0.2691900    0.1308778
0-6 months    ki1119695-PROBIT            BELARUS                        High_0-6 months      Control              NA                -0.1377717   -0.3680903    0.0537727
0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Low_0-6 months       Control              NA                -0.1204451   -0.2949666    0.0305563
0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Medium_0-6 months    Control              NA                 0.0462278   -0.1085713    0.1794110
0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       High_0-6 months      Control              NA                 0.0960012   -0.0180744    0.1972946
0-6 months    ki1135781-COHORTS           GUATEMALA                      Low_0-6 months       Control              NA                -0.0645161   -0.3457024    0.1579159
0-6 months    ki1135781-COHORTS           GUATEMALA                      Medium_0-6 months    Control              NA                -0.3450413   -0.7946847   -0.0080524
0-6 months    ki1135781-COHORTS           GUATEMALA                      High_0-6 months      Control              NA                 0.1443850   -0.3176681    0.4444147
0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         Low_0-6 months       Control              NA                -0.1215815   -0.5125807    0.1683452
0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         Medium_0-6 months    Control              NA                -0.3581595   -0.8220650   -0.0123664
0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         High_0-6 months      Control              NA                 0.1735142   -0.2773673    0.4652448
0-6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Medium_0-6 months    Control              NA                 0.0357143   -1.7041234    0.6561374
0-6 months    ki1148112-LCNI-5            MALAWI                         Low_0-6 months       Control              NA                 0.2297674   -0.2162115    0.5122080
0-6 months    ki1148112-LCNI-5            MALAWI                         Medium_0-6 months    Control              NA                -0.2078431   -1.0102485    0.2742763
0-6 months    ki1148112-LCNI-5            MALAWI                         High_0-6 months      Control              NA                -0.2654545   -1.0272200    0.2100634
0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Low_0-6 months       Control              NA                -0.1042786   -0.1506417   -0.0597836
0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Medium_0-6 months    Control              NA                -0.0703827   -0.1171463   -0.0255766
0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     High_0-6 months      Control              NA                -0.0734418   -0.1290037   -0.0206143
0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     Low_0-6 months       Control              NA                 0.0167864   -0.1437555    0.1547939
0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     Medium_0-6 months    Control              NA                 0.1625000   -1.2589742    0.6895023
0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     High_0-6 months      Control              NA                 0.2034314   -0.5094058    0.5796216
6-24 months   iLiNS_DYADM_LNS             MALAWI                         Low_6-24 months      Control              NA                 0.0329996   -0.1695465    0.2004681
6-24 months   iLiNS_DYADM_LNS             MALAWI                         Medium_6-24 months   Control              NA                 0.0172000   -0.2356265    0.2182947
6-24 months   iLiNS_DYADM_LNS             MALAWI                         High_6-24 months     Control              NA                 0.2650104   -0.1599370    0.5342766
6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Low_6-24 months      Control              NA                 0.0006362   -0.1001521    0.0921910
6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Medium_6-24 months   Control              NA                 0.0159672   -0.0908522    0.1123265
6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     High_6-24 months     Control              NA                -0.1492672   -0.2966177   -0.0186620
6-24 months   ki1000111-WASH-Kenya        KENYA                          Low_6-24 months      Control              NA                 0.0009011   -0.0735773    0.0702126
6-24 months   ki1000111-WASH-Kenya        KENYA                          Medium_6-24 months   Control              NA                 0.0561798   -0.0687767    0.1665269
6-24 months   ki1000111-WASH-Kenya        KENYA                          High_6-24 months     Control              NA                -0.0259986   -0.1834153    0.1104787
6-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Low_6-24 months      Control              NA                 0.0652174   -0.9809447    0.5588880
6-24 months   ki1000304-EU                INDIA                          Low_6-24 months      Control              NA                -0.0130705   -0.0815598    0.0510817
6-24 months   ki1000304-EU                INDIA                          Medium_6-24 months   Control              NA                -0.0641388   -0.1354091    0.0026579
6-24 months   ki1000304-EU                INDIA                          High_6-24 months     Control              NA                -0.0284828   -0.1595899    0.0878010
6-24 months   ki1000304-VITAMIN-A         INDIA                          Low_6-24 months      Control              NA                -0.0190351   -0.0816439    0.0399497
6-24 months   ki1000304-VITAMIN-A         INDIA                          Medium_6-24 months   Control              NA                 0.0044843   -0.0942698    0.0943262
6-24 months   ki1000304-VITAMIN-A         INDIA                          High_6-24 months     Control              NA                -0.1093533   -0.3040953    0.0563076
6-24 months   ki1000304-Vitamin-B12       INDIA                          Low_6-24 months      Control              NA                 0.0248157   -0.1434058    0.1682880
6-24 months   ki1000304-Vitamin-B12       INDIA                          Medium_6-24 months   Control              NA                -0.0209961   -0.2451129    0.1627803
6-24 months   ki1000304-Vitamin-B12       INDIA                          High_6-24 months     Control              NA                -0.2096042   -0.7181590    0.1484244
6-24 months   ki1000304-ZnMort            INDIA                          Low_6-24 months      Control              NA                -0.0242234   -0.0821502    0.0306027
6-24 months   ki1000304-ZnMort            INDIA                          Medium_6-24 months   Control              NA                 0.0321276   -0.0498661    0.1077176
6-24 months   ki1000304-ZnMort            INDIA                          High_6-24 months     Control              NA                -0.0471363   -0.1641116    0.0580848
6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Low_6-24 months      Control              NA                 0.0205081   -0.1232872    0.1458957
6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Medium_6-24 months   Control              NA                -0.1343182   -0.3800711    0.0676728
6-24 months   ki1000304b-SAS-CompFeed     INDIA                          High_6-24 months     Control              NA                 0.0249073   -0.3728371    0.3074154
6-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Low_6-24 months      Control              NA                -0.1149826   -0.3054231    0.0476757
6-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Medium_6-24 months   Control              NA                -0.4285714   -1.2471450    0.0918181
6-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          High_6-24 months     Control              NA                -0.0800000   -1.0923218    0.4425332
6-24 months   ki1017093b-PROVIDE          BANGLADESH                     Low_6-24 months      Control              NA                -0.7922078   -2.1061832   -0.0340693
6-24 months   ki1017093b-PROVIDE          BANGLADESH                     Medium_6-24 months   Control              NA                -0.3195489   -1.3259889    0.2514112
6-24 months   ki1017093b-PROVIDE          BANGLADESH                     High_6-24 months     Control              NA                 0.5232975   -1.9436647    0.9228019
6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Low_6-24 months      Control              NA                -0.5897436   -2.1959760    0.2092291
6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Medium_6-24 months   Control              NA                 0.0492389   -0.1524606    0.2156378
6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   High_6-24 months     Control              NA                -0.0852667   -0.6085653    0.2677923
6-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Low_6-24 months      Control              NA                 0.1666667   -0.1701760    0.4065470
6-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Medium_6-24 months   Control              NA                 0.1137521   -0.3130850    0.4018397
6-24 months   ki1112895-Guatemala BSC     GUATEMALA                      High_6-24 months     Control              NA                 0.4224599   -0.4427516    0.7688080
6-24 months   ki1119695-PROBIT            BELARUS                        Low_6-24 months      Control              NA                -0.2431591   -0.5090412   -0.0241234
6-24 months   ki1119695-PROBIT            BELARUS                        Medium_6-24 months   Control              NA                -0.0259421   -0.2085496    0.1290740
6-24 months   ki1119695-PROBIT            BELARUS                        High_6-24 months     Control              NA                -0.2221825   -0.6457615    0.0923776
6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Low_6-24 months      Control              NA                 0.1072937   -0.0313648    0.2273107
6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Medium_6-24 months   Control              NA                 0.0638238   -0.0765361    0.1858833
6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       High_6-24 months     Control              NA                -0.0532262   -0.1639275    0.0469462
6-24 months   ki1135781-COHORTS           GUATEMALA                      Low_6-24 months      Control              NA                -0.1152058   -0.2419848   -0.0013681
6-24 months   ki1135781-COHORTS           GUATEMALA                      Medium_6-24 months   Control              NA                -0.2677323   -0.4488634   -0.1092454
6-24 months   ki1135781-COHORTS           GUATEMALA                      High_6-24 months     Control              NA                 0.0242424   -0.0658888    0.1067522
6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Low_6-24 months      Control              NA                 0.1604054   -0.0932636    0.3552159
6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Medium_6-24 months   Control              NA                 0.1267985   -0.1802919    0.3539895
6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         High_6-24 months     Control              NA                -0.1744912   -0.4373755    0.0403138
6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Low_6-24 months      Control              NA                -0.0164380   -0.2717582    0.1876237
6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Medium_6-24 months   Control              NA                -0.0008219   -0.3055612    0.2327862
6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         High_6-24 months     Control              NA                 0.4330028    0.0495199    0.6617648
6-24 months   ki1148112-LCNI-5            MALAWI                         Low_6-24 months      Control              NA                -0.0372149   -0.2619195    0.1474776
6-24 months   ki1148112-LCNI-5            MALAWI                         Medium_6-24 months   Control              NA                 0.1016260   -0.1400262    0.2920551
6-24 months   ki1148112-LCNI-5            MALAWI                         High_6-24 months     Control              NA                 0.1330134   -0.1245246    0.3315702
6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Low_6-24 months      Control              NA                -0.0024583   -0.0998587    0.0863166
6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Medium_6-24 months   Control              NA                -0.0088314   -0.1249845    0.0953291
6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     High_6-24 months     Control              NA                 0.0313705   -0.0771215    0.1289348
6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Low_6-24 months      Control              NA                -0.1271871   -0.3231226    0.0397333
6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Medium_6-24 months   Control              NA                -0.0886288   -1.2898990    0.4824608
6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     High_6-24 months     Control              NA                 0.2395833   -0.9447478    0.7026692
