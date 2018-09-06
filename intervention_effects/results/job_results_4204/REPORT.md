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
* intXmage

## Data Summary

agecat        studyid                     country                        intXmage               ever_stunted   n_cell       n
------------  --------------------------  -----------------------------  --------------------  -------------  -------  ------
0-6 months    iLiNS_DYADM_LNS             MALAWI                         <25_0-6 months                    0       18      23
0-6 months    iLiNS_DYADM_LNS             MALAWI                         <25_0-6 months                    1        5      23
0-6 months    iLiNS_DYADM_LNS             MALAWI                         [25-30)_0-6 months                0        8      11
0-6 months    iLiNS_DYADM_LNS             MALAWI                         [25-30)_0-6 months                1        3      11
0-6 months    iLiNS_DYADM_LNS             MALAWI                         >=30_0-6 months                   0        7       9
0-6 months    iLiNS_DYADM_LNS             MALAWI                         >=30_0-6 months                   1        2       9
0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     <25_0-6 months                    0      129     146
0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     <25_0-6 months                    1       17     146
0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     [25-30)_0-6 months                0       56      61
0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     [25-30)_0-6 months                1        5      61
0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     >=30_0-6 months                   0       24      25
0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     >=30_0-6 months                   1        1      25
0-6 months    ki1000111-WASH-Kenya        KENYA                          <25_0-6 months                    0       51      55
0-6 months    ki1000111-WASH-Kenya        KENYA                          <25_0-6 months                    1        4      55
0-6 months    ki1000111-WASH-Kenya        KENYA                          [25-30)_0-6 months                0       17      18
0-6 months    ki1000111-WASH-Kenya        KENYA                          [25-30)_0-6 months                1        1      18
0-6 months    ki1000111-WASH-Kenya        KENYA                          >=30_0-6 months                   0       17      19
0-6 months    ki1000111-WASH-Kenya        KENYA                          >=30_0-6 months                   1        2      19
0-6 months    ki1000125-AgaKhanUniv       PAKISTAN                       <25_0-6 months                    0       20      25
0-6 months    ki1000125-AgaKhanUniv       PAKISTAN                       <25_0-6 months                    1        5      25
0-6 months    ki1000125-AgaKhanUniv       PAKISTAN                       [25-30)_0-6 months                0       28      29
0-6 months    ki1000125-AgaKhanUniv       PAKISTAN                       [25-30)_0-6 months                1        1      29
0-6 months    ki1000125-AgaKhanUniv       PAKISTAN                       >=30_0-6 months                   0       26      40
0-6 months    ki1000125-AgaKhanUniv       PAKISTAN                       >=30_0-6 months                   1       14      40
0-6 months    ki1000304-EU                INDIA                          <25_0-6 months                    0        4       8
0-6 months    ki1000304-EU                INDIA                          <25_0-6 months                    1        4       8
0-6 months    ki1000304-EU                INDIA                          [25-30)_0-6 months                0        3       6
0-6 months    ki1000304-EU                INDIA                          [25-30)_0-6 months                1        3       6
0-6 months    ki1000304-VITAMIN-A         INDIA                          <25_0-6 months                    0      105     167
0-6 months    ki1000304-VITAMIN-A         INDIA                          <25_0-6 months                    1       62     167
0-6 months    ki1000304-VITAMIN-A         INDIA                          [25-30)_0-6 months                0       85     113
0-6 months    ki1000304-VITAMIN-A         INDIA                          [25-30)_0-6 months                1       28     113
0-6 months    ki1000304-VITAMIN-A         INDIA                          >=30_0-6 months                   0       36      53
0-6 months    ki1000304-VITAMIN-A         INDIA                          >=30_0-6 months                   1       17      53
0-6 months    ki1000304-Vitamin-B12       INDIA                          >=30_0-6 months                   0        1       1
0-6 months    ki1000304-Vitamin-B12       INDIA                          >=30_0-6 months                   1        0       1
0-6 months    ki1000304b-SAS-CompFeed     INDIA                          <25_0-6 months                    0      363     485
0-6 months    ki1000304b-SAS-CompFeed     INDIA                          <25_0-6 months                    1      122     485
0-6 months    ki1000304b-SAS-CompFeed     INDIA                          [25-30)_0-6 months                0      142     213
0-6 months    ki1000304b-SAS-CompFeed     INDIA                          [25-30)_0-6 months                1       71     213
0-6 months    ki1000304b-SAS-CompFeed     INDIA                          >=30_0-6 months                   0       64      94
0-6 months    ki1000304b-SAS-CompFeed     INDIA                          >=30_0-6 months                   1       30      94
0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          <25_0-6 months                    0      113     183
0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          <25_0-6 months                    1       70     183
0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          [25-30)_0-6 months                0       81     142
0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          [25-30)_0-6 months                1       61     142
0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          >=30_0-6 months                   0       63      91
0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          >=30_0-6 months                   1       28      91
0-6 months    ki1017093b-PROVIDE          BANGLADESH                     <25_0-6 months                    0      283     329
0-6 months    ki1017093b-PROVIDE          BANGLADESH                     <25_0-6 months                    1       46     329
0-6 months    ki1017093b-PROVIDE          BANGLADESH                     [25-30)_0-6 months                0      168     193
0-6 months    ki1017093b-PROVIDE          BANGLADESH                     [25-30)_0-6 months                1       25     193
0-6 months    ki1017093b-PROVIDE          BANGLADESH                     >=30_0-6 months                   0      100     118
0-6 months    ki1017093b-PROVIDE          BANGLADESH                     >=30_0-6 months                   1       18     118
0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   <25_0-6 months                    0      782     847
0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   <25_0-6 months                    1       65     847
0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   [25-30)_0-6 months                0      707     762
0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   [25-30)_0-6 months                1       55     762
0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   >=30_0-6 months                   0      571     607
0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   >=30_0-6 months                   1       36     607
0-6 months    ki1112895-Burkina Faso Zn   BURKINA FASO                   <25_0-6 months                    0        9      11
0-6 months    ki1112895-Burkina Faso Zn   BURKINA FASO                   <25_0-6 months                    1        2      11
0-6 months    ki1112895-Burkina Faso Zn   BURKINA FASO                   [25-30)_0-6 months                0       16      19
0-6 months    ki1112895-Burkina Faso Zn   BURKINA FASO                   [25-30)_0-6 months                1        3      19
0-6 months    ki1112895-Burkina Faso Zn   BURKINA FASO                   >=30_0-6 months                   0        8       8
0-6 months    ki1112895-Burkina Faso Zn   BURKINA FASO                   >=30_0-6 months                   1        0       8
0-6 months    ki1112895-Guatemala BSC     GUATEMALA                      <25_0-6 months                    0       95     130
0-6 months    ki1112895-Guatemala BSC     GUATEMALA                      <25_0-6 months                    1       35     130
0-6 months    ki1112895-Guatemala BSC     GUATEMALA                      [25-30)_0-6 months                0       47      57
0-6 months    ki1112895-Guatemala BSC     GUATEMALA                      [25-30)_0-6 months                1       10      57
0-6 months    ki1112895-Guatemala BSC     GUATEMALA                      >=30_0-6 months                   0       38      48
0-6 months    ki1112895-Guatemala BSC     GUATEMALA                      >=30_0-6 months                   1       10      48
0-6 months    ki1119695-PROBIT            BELARUS                        <25_0-6 months                    0     8119    8733
0-6 months    ki1119695-PROBIT            BELARUS                        <25_0-6 months                    1      614    8733
0-6 months    ki1119695-PROBIT            BELARUS                        [25-30)_0-6 months                0     4286    4548
0-6 months    ki1119695-PROBIT            BELARUS                        [25-30)_0-6 months                1      262    4548
0-6 months    ki1119695-PROBIT            BELARUS                        >=30_0-6 months                   0     2728    2904
0-6 months    ki1119695-PROBIT            BELARUS                        >=30_0-6 months                   1      176    2904
0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       <25_0-6 months                    0     4203    5117
0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       <25_0-6 months                    1      914    5117
0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       [25-30)_0-6 months                0     1934    2327
0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       [25-30)_0-6 months                1      393    2327
0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       >=30_0-6 months                   0     1350    1636
0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       >=30_0-6 months                   1      286    1636
0-6 months    ki1135781-COHORTS           GUATEMALA                      <25_0-6 months                    0       80     112
0-6 months    ki1135781-COHORTS           GUATEMALA                      <25_0-6 months                    1       32     112
0-6 months    ki1135781-COHORTS           GUATEMALA                      [25-30)_0-6 months                0       50      69
0-6 months    ki1135781-COHORTS           GUATEMALA                      [25-30)_0-6 months                1       19      69
0-6 months    ki1135781-COHORTS           GUATEMALA                      >=30_0-6 months                   0       75     117
0-6 months    ki1135781-COHORTS           GUATEMALA                      >=30_0-6 months                   1       42     117
0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         <25_0-6 months                    0      422     591
0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         <25_0-6 months                    1      169     591
0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         [25-30)_0-6 months                0      206     282
0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         [25-30)_0-6 months                1       76     282
0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         >=30_0-6 months                   0      190     282
0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         >=30_0-6 months                   1       92     282
0-6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         <25_0-6 months                    0       28      36
0-6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         <25_0-6 months                    1        8      36
0-6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         [25-30)_0-6 months                0       13      18
0-6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         [25-30)_0-6 months                1        5      18
0-6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         >=30_0-6 months                   0       13      16
0-6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         >=30_0-6 months                   1        3      16
0-6 months    ki1148112-LCNI-5            MALAWI                         <25_0-6 months                    0       72     101
0-6 months    ki1148112-LCNI-5            MALAWI                         <25_0-6 months                    1       29     101
0-6 months    ki1148112-LCNI-5            MALAWI                         [25-30)_0-6 months                0       28      54
0-6 months    ki1148112-LCNI-5            MALAWI                         [25-30)_0-6 months                1       26      54
0-6 months    ki1148112-LCNI-5            MALAWI                         >=30_0-6 months                   0       42      65
0-6 months    ki1148112-LCNI-5            MALAWI                         >=30_0-6 months                   1       23      65
0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     <25_0-6 months                    0    21628   29366
0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     <25_0-6 months                    1     7738   29366
0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     [25-30)_0-6 months                0     4816    6218
0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     [25-30)_0-6 months                1     1402    6218
0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     >=30_0-6 months                   0     2352    3116
0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     >=30_0-6 months                   1      764    3116
6-24 months   iLiNS_DYADM_LNS             MALAWI                         <25_6-24 months                   0      193     257
6-24 months   iLiNS_DYADM_LNS             MALAWI                         <25_6-24 months                   1       64     257
6-24 months   iLiNS_DYADM_LNS             MALAWI                         [25-30)_6-24 months               0       87     123
6-24 months   iLiNS_DYADM_LNS             MALAWI                         [25-30)_6-24 months               1       36     123
6-24 months   iLiNS_DYADM_LNS             MALAWI                         >=30_6-24 months                  0       74     114
6-24 months   iLiNS_DYADM_LNS             MALAWI                         >=30_6-24 months                  1       40     114
6-24 months   iLiNS-Zinc_ZvLNS            BURKINA FASO                   <25_6-24 months                   0      672    1022
6-24 months   iLiNS-Zinc_ZvLNS            BURKINA FASO                   <25_6-24 months                   1      350    1022
6-24 months   iLiNS-Zinc_ZvLNS            BURKINA FASO                   [25-30)_6-24 months               0      414     584
6-24 months   iLiNS-Zinc_ZvLNS            BURKINA FASO                   [25-30)_6-24 months               1      170     584
6-24 months   iLiNS-Zinc_ZvLNS            BURKINA FASO                   >=30_6-24 months                  0      548     792
6-24 months   iLiNS-Zinc_ZvLNS            BURKINA FASO                   >=30_6-24 months                  1      244     792
6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     <25_6-24 months                   0     1695    2691
6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     <25_6-24 months                   1      996    2691
6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     [25-30)_6-24 months               0      817    1317
6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     [25-30)_6-24 months               1      500    1317
6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     >=30_6-24 months                  0      437     755
6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     >=30_6-24 months                  1      318     755
6-24 months   ki1000111-WASH-Kenya        KENYA                          <25_6-24 months                   0     2157    2922
6-24 months   ki1000111-WASH-Kenya        KENYA                          <25_6-24 months                   1      765    2922
6-24 months   ki1000111-WASH-Kenya        KENYA                          [25-30)_6-24 months               0     1371    1810
6-24 months   ki1000111-WASH-Kenya        KENYA                          [25-30)_6-24 months               1      439    1810
6-24 months   ki1000111-WASH-Kenya        KENYA                          >=30_6-24 months                  0     1375    1838
6-24 months   ki1000111-WASH-Kenya        KENYA                          >=30_6-24 months                  1      463    1838
6-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       <25_6-24 months                   0       16      18
6-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       <25_6-24 months                   1        2      18
6-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       [25-30)_6-24 months               0       19      21
6-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       [25-30)_6-24 months               1        2      21
6-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       >=30_6-24 months                  0       24      29
6-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       >=30_6-24 months                  1        5      29
6-24 months   ki1000304-EU                INDIA                          <25_6-24 months                   0      569    1056
6-24 months   ki1000304-EU                INDIA                          <25_6-24 months                   1      487    1056
6-24 months   ki1000304-EU                INDIA                          [25-30)_6-24 months               0      356     675
6-24 months   ki1000304-EU                INDIA                          [25-30)_6-24 months               1      319     675
6-24 months   ki1000304-EU                INDIA                          >=30_6-24 months                  0      143     269
6-24 months   ki1000304-EU                INDIA                          >=30_6-24 months                  1      126     269
6-24 months   ki1000304-VITAMIN-A         INDIA                          <25_6-24 months                   0      967    1436
6-24 months   ki1000304-VITAMIN-A         INDIA                          <25_6-24 months                   1      469    1436
6-24 months   ki1000304-VITAMIN-A         INDIA                          [25-30)_6-24 months               0      632     981
6-24 months   ki1000304-VITAMIN-A         INDIA                          [25-30)_6-24 months               1      349     981
6-24 months   ki1000304-VITAMIN-A         INDIA                          >=30_6-24 months                  0      212     368
6-24 months   ki1000304-VITAMIN-A         INDIA                          >=30_6-24 months                  1      156     368
6-24 months   ki1000304-Vitamin-B12       INDIA                          <25_6-24 months                   0      190     365
6-24 months   ki1000304-Vitamin-B12       INDIA                          <25_6-24 months                   1      175     365
6-24 months   ki1000304-Vitamin-B12       INDIA                          [25-30)_6-24 months               0      158     290
6-24 months   ki1000304-Vitamin-B12       INDIA                          [25-30)_6-24 months               1      132     290
6-24 months   ki1000304-Vitamin-B12       INDIA                          >=30_6-24 months                  0       75     148
6-24 months   ki1000304-Vitamin-B12       INDIA                          >=30_6-24 months                  1       73     148
6-24 months   ki1000304b-SAS-CompFeed     INDIA                          <25_6-24 months                   0      233     392
6-24 months   ki1000304b-SAS-CompFeed     INDIA                          <25_6-24 months                   1      159     392
6-24 months   ki1000304b-SAS-CompFeed     INDIA                          [25-30)_6-24 months               0       85     169
6-24 months   ki1000304b-SAS-CompFeed     INDIA                          [25-30)_6-24 months               1       84     169
6-24 months   ki1000304b-SAS-CompFeed     INDIA                          >=30_6-24 months                  0       35      66
6-24 months   ki1000304b-SAS-CompFeed     INDIA                          >=30_6-24 months                  1       31      66
6-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          <25_6-24 months                   0       46     109
6-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          <25_6-24 months                   1       63     109
6-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          [25-30)_6-24 months               0       31      75
6-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          [25-30)_6-24 months               1       44      75
6-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          >=30_6-24 months                  0       16      59
6-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          >=30_6-24 months                  1       43      59
6-24 months   ki1017093b-PROVIDE          BANGLADESH                     <25_6-24 months                   0      156     177
6-24 months   ki1017093b-PROVIDE          BANGLADESH                     <25_6-24 months                   1       21     177
6-24 months   ki1017093b-PROVIDE          BANGLADESH                     [25-30)_6-24 months               0      101     108
6-24 months   ki1017093b-PROVIDE          BANGLADESH                     [25-30)_6-24 months               1        7     108
6-24 months   ki1017093b-PROVIDE          BANGLADESH                     >=30_6-24 months                  0       48      57
6-24 months   ki1017093b-PROVIDE          BANGLADESH                     >=30_6-24 months                  1        9      57
6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   <25_6-24 months                   0      557     674
6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   <25_6-24 months                   1      117     674
6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   [25-30)_6-24 months               0      499     616
6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   [25-30)_6-24 months               1      117     616
6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   >=30_6-24 months                  0      410     502
6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   >=30_6-24 months                  1       92     502
6-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   <25_6-24 months                   0      476     800
6-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   <25_6-24 months                   1      324     800
6-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   [25-30)_6-24 months               0     1857    2838
6-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   [25-30)_6-24 months               1      981    2838
6-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   >=30_6-24 months                  0     1412    2146
6-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   >=30_6-24 months                  1      734    2146
6-24 months   ki1112895-Guatemala BSC     GUATEMALA                      <25_6-24 months                   0       60      91
6-24 months   ki1112895-Guatemala BSC     GUATEMALA                      <25_6-24 months                   1       31      91
6-24 months   ki1112895-Guatemala BSC     GUATEMALA                      [25-30)_6-24 months               0       37      47
6-24 months   ki1112895-Guatemala BSC     GUATEMALA                      [25-30)_6-24 months               1       10      47
6-24 months   ki1112895-Guatemala BSC     GUATEMALA                      >=30_6-24 months                  0       25      37
6-24 months   ki1112895-Guatemala BSC     GUATEMALA                      >=30_6-24 months                  1       12      37
6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   <25_6-24 months                   0      871    1341
6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   <25_6-24 months                   1      470    1341
6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   [25-30)_6-24 months               0      552     804
6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   [25-30)_6-24 months               1      252     804
6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   >=30_6-24 months                  0      701    1032
6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   >=30_6-24 months                  1      331    1032
6-24 months   ki1119695-PROBIT            BELARUS                        <25_6-24 months                   0     7144    7641
6-24 months   ki1119695-PROBIT            BELARUS                        <25_6-24 months                   1      497    7641
6-24 months   ki1119695-PROBIT            BELARUS                        [25-30)_6-24 months               0     3782    3991
6-24 months   ki1119695-PROBIT            BELARUS                        [25-30)_6-24 months               1      209    3991
6-24 months   ki1119695-PROBIT            BELARUS                        >=30_6-24 months                  0     2436    2575
6-24 months   ki1119695-PROBIT            BELARUS                        >=30_6-24 months                  1      139    2575
6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       <25_6-24 months                   0     3746    4769
6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       <25_6-24 months                   1     1023    4769
6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       [25-30)_6-24 months               0     1643    2121
6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       [25-30)_6-24 months               1      478    2121
6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       >=30_6-24 months                  0     1179    1498
6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       >=30_6-24 months                  1      319    1498
6-24 months   ki1135781-COHORTS           GUATEMALA                      <25_6-24 months                   0       74     214
6-24 months   ki1135781-COHORTS           GUATEMALA                      <25_6-24 months                   1      140     214
6-24 months   ki1135781-COHORTS           GUATEMALA                      [25-30)_6-24 months               0       33      95
6-24 months   ki1135781-COHORTS           GUATEMALA                      [25-30)_6-24 months               1       62      95
6-24 months   ki1135781-COHORTS           GUATEMALA                      >=30_6-24 months                  0       70     165
6-24 months   ki1135781-COHORTS           GUATEMALA                      >=30_6-24 months                  1       95     165
6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         <25_6-24 months                   0      416     710
6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         <25_6-24 months                   1      294     710
6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         [25-30)_6-24 months               0      219     347
6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         [25-30)_6-24 months               1      128     347
6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         >=30_6-24 months                  0      201     363
6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         >=30_6-24 months                  1      162     363
6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         <25_6-24 months                   0      283     377
6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         <25_6-24 months                   1       94     377
6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         [25-30)_6-24 months               0      142     209
6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         [25-30)_6-24 months               1       67     209
6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         >=30_6-24 months                  0      113     175
6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         >=30_6-24 months                  1       62     175
6-24 months   ki1148112-LCNI-5            MALAWI                         <25_6-24 months                   0      126     263
6-24 months   ki1148112-LCNI-5            MALAWI                         <25_6-24 months                   1      137     263
6-24 months   ki1148112-LCNI-5            MALAWI                         [25-30)_6-24 months               0       69     145
6-24 months   ki1148112-LCNI-5            MALAWI                         [25-30)_6-24 months               1       76     145
6-24 months   ki1148112-LCNI-5            MALAWI                         >=30_6-24 months                  0       74     173
6-24 months   ki1148112-LCNI-5            MALAWI                         >=30_6-24 months                  1       99     173
6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     <25_6-24 months                   0    11246   13617
6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     <25_6-24 months                   1     2371   13617
6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     [25-30)_6-24 months               0     2409    2926
6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     [25-30)_6-24 months               1      517    2926
6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     >=30_6-24 months                  0     1047    1238
6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     >=30_6-24 months                  1      191    1238


The following strata were considered:

* agecat: 0-6 months, studyid: iLiNS_DYADM_LNS, country: MALAWI, intXmage: [25-30)_0-6 months
* agecat: 0-6 months, studyid: iLiNS_DYADM_LNS, country: MALAWI, intXmage: <25_0-6 months
* agecat: 0-6 months, studyid: iLiNS_DYADM_LNS, country: MALAWI, intXmage: >=30_0-6 months
* agecat: 0-6 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH, intXmage: [25-30)_0-6 months
* agecat: 0-6 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH, intXmage: <25_0-6 months
* agecat: 0-6 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH, intXmage: >=30_0-6 months
* agecat: 0-6 months, studyid: ki1000111-WASH-Kenya, country: KENYA, intXmage: [25-30)_0-6 months
* agecat: 0-6 months, studyid: ki1000111-WASH-Kenya, country: KENYA, intXmage: <25_0-6 months
* agecat: 0-6 months, studyid: ki1000111-WASH-Kenya, country: KENYA, intXmage: >=30_0-6 months
* agecat: 0-6 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN, intXmage: [25-30)_0-6 months
* agecat: 0-6 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN, intXmage: <25_0-6 months
* agecat: 0-6 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN, intXmage: >=30_0-6 months
* agecat: 0-6 months, studyid: ki1000304-EU, country: INDIA, intXmage: [25-30)_0-6 months
* agecat: 0-6 months, studyid: ki1000304-EU, country: INDIA, intXmage: <25_0-6 months
* agecat: 0-6 months, studyid: ki1000304-VITAMIN-A, country: INDIA, intXmage: [25-30)_0-6 months
* agecat: 0-6 months, studyid: ki1000304-VITAMIN-A, country: INDIA, intXmage: <25_0-6 months
* agecat: 0-6 months, studyid: ki1000304-VITAMIN-A, country: INDIA, intXmage: >=30_0-6 months
* agecat: 0-6 months, studyid: ki1000304-Vitamin-B12, country: INDIA, intXmage: >=30_0-6 months
* agecat: 0-6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA, intXmage: [25-30)_0-6 months
* agecat: 0-6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA, intXmage: <25_0-6 months
* agecat: 0-6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA, intXmage: >=30_0-6 months
* agecat: 0-6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA, intXmage: [25-30)_0-6 months
* agecat: 0-6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA, intXmage: <25_0-6 months
* agecat: 0-6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA, intXmage: >=30_0-6 months
* agecat: 0-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH, intXmage: [25-30)_0-6 months
* agecat: 0-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH, intXmage: <25_0-6 months
* agecat: 0-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH, intXmage: >=30_0-6 months
* agecat: 0-6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF, intXmage: [25-30)_0-6 months
* agecat: 0-6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF, intXmage: <25_0-6 months
* agecat: 0-6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF, intXmage: >=30_0-6 months
* agecat: 0-6 months, studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO, intXmage: [25-30)_0-6 months
* agecat: 0-6 months, studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO, intXmage: <25_0-6 months
* agecat: 0-6 months, studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO, intXmage: >=30_0-6 months
* agecat: 0-6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA, intXmage: [25-30)_0-6 months
* agecat: 0-6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA, intXmage: <25_0-6 months
* agecat: 0-6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA, intXmage: >=30_0-6 months
* agecat: 0-6 months, studyid: ki1119695-PROBIT, country: BELARUS, intXmage: [25-30)_0-6 months
* agecat: 0-6 months, studyid: ki1119695-PROBIT, country: BELARUS, intXmage: <25_0-6 months
* agecat: 0-6 months, studyid: ki1119695-PROBIT, country: BELARUS, intXmage: >=30_0-6 months
* agecat: 0-6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE, intXmage: [25-30)_0-6 months
* agecat: 0-6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE, intXmage: <25_0-6 months
* agecat: 0-6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE, intXmage: >=30_0-6 months
* agecat: 0-6 months, studyid: ki1135781-COHORTS, country: GUATEMALA, intXmage: [25-30)_0-6 months
* agecat: 0-6 months, studyid: ki1135781-COHORTS, country: GUATEMALA, intXmage: <25_0-6 months
* agecat: 0-6 months, studyid: ki1135781-COHORTS, country: GUATEMALA, intXmage: >=30_0-6 months
* agecat: 0-6 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI, intXmage: [25-30)_0-6 months
* agecat: 0-6 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI, intXmage: <25_0-6 months
* agecat: 0-6 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI, intXmage: >=30_0-6 months
* agecat: 0-6 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI, intXmage: [25-30)_0-6 months
* agecat: 0-6 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI, intXmage: <25_0-6 months
* agecat: 0-6 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI, intXmage: >=30_0-6 months
* agecat: 0-6 months, studyid: ki1148112-LCNI-5, country: MALAWI, intXmage: [25-30)_0-6 months
* agecat: 0-6 months, studyid: ki1148112-LCNI-5, country: MALAWI, intXmage: <25_0-6 months
* agecat: 0-6 months, studyid: ki1148112-LCNI-5, country: MALAWI, intXmage: >=30_0-6 months
* agecat: 0-6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH, intXmage: [25-30)_0-6 months
* agecat: 0-6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH, intXmage: <25_0-6 months
* agecat: 0-6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH, intXmage: >=30_0-6 months
* agecat: 6-24 months, studyid: iLiNS_DYADM_LNS, country: MALAWI, intXmage: [25-30)_6-24 months
* agecat: 6-24 months, studyid: iLiNS_DYADM_LNS, country: MALAWI, intXmage: <25_6-24 months
* agecat: 6-24 months, studyid: iLiNS_DYADM_LNS, country: MALAWI, intXmage: >=30_6-24 months
* agecat: 6-24 months, studyid: iLiNS-Zinc_ZvLNS, country: BURKINA FASO, intXmage: [25-30)_6-24 months
* agecat: 6-24 months, studyid: iLiNS-Zinc_ZvLNS, country: BURKINA FASO, intXmage: <25_6-24 months
* agecat: 6-24 months, studyid: iLiNS-Zinc_ZvLNS, country: BURKINA FASO, intXmage: >=30_6-24 months
* agecat: 6-24 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH, intXmage: [25-30)_6-24 months
* agecat: 6-24 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH, intXmage: <25_6-24 months
* agecat: 6-24 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH, intXmage: >=30_6-24 months
* agecat: 6-24 months, studyid: ki1000111-WASH-Kenya, country: KENYA, intXmage: [25-30)_6-24 months
* agecat: 6-24 months, studyid: ki1000111-WASH-Kenya, country: KENYA, intXmage: <25_6-24 months
* agecat: 6-24 months, studyid: ki1000111-WASH-Kenya, country: KENYA, intXmage: >=30_6-24 months
* agecat: 6-24 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN, intXmage: [25-30)_6-24 months
* agecat: 6-24 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN, intXmage: <25_6-24 months
* agecat: 6-24 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN, intXmage: >=30_6-24 months
* agecat: 6-24 months, studyid: ki1000304-EU, country: INDIA, intXmage: [25-30)_6-24 months
* agecat: 6-24 months, studyid: ki1000304-EU, country: INDIA, intXmage: <25_6-24 months
* agecat: 6-24 months, studyid: ki1000304-EU, country: INDIA, intXmage: >=30_6-24 months
* agecat: 6-24 months, studyid: ki1000304-VITAMIN-A, country: INDIA, intXmage: [25-30)_6-24 months
* agecat: 6-24 months, studyid: ki1000304-VITAMIN-A, country: INDIA, intXmage: <25_6-24 months
* agecat: 6-24 months, studyid: ki1000304-VITAMIN-A, country: INDIA, intXmage: >=30_6-24 months
* agecat: 6-24 months, studyid: ki1000304-Vitamin-B12, country: INDIA, intXmage: [25-30)_6-24 months
* agecat: 6-24 months, studyid: ki1000304-Vitamin-B12, country: INDIA, intXmage: <25_6-24 months
* agecat: 6-24 months, studyid: ki1000304-Vitamin-B12, country: INDIA, intXmage: >=30_6-24 months
* agecat: 6-24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA, intXmage: [25-30)_6-24 months
* agecat: 6-24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA, intXmage: <25_6-24 months
* agecat: 6-24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA, intXmage: >=30_6-24 months
* agecat: 6-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA, intXmage: [25-30)_6-24 months
* agecat: 6-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA, intXmage: <25_6-24 months
* agecat: 6-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA, intXmage: >=30_6-24 months
* agecat: 6-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH, intXmage: [25-30)_6-24 months
* agecat: 6-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH, intXmage: <25_6-24 months
* agecat: 6-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH, intXmage: >=30_6-24 months
* agecat: 6-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF, intXmage: [25-30)_6-24 months
* agecat: 6-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF, intXmage: <25_6-24 months
* agecat: 6-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF, intXmage: >=30_6-24 months
* agecat: 6-24 months, studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO, intXmage: [25-30)_6-24 months
* agecat: 6-24 months, studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO, intXmage: <25_6-24 months
* agecat: 6-24 months, studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO, intXmage: >=30_6-24 months
* agecat: 6-24 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA, intXmage: [25-30)_6-24 months
* agecat: 6-24 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA, intXmage: <25_6-24 months
* agecat: 6-24 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA, intXmage: >=30_6-24 months
* agecat: 6-24 months, studyid: ki1112895-iLiNS-Zinc, country: BURKINA FASO, intXmage: [25-30)_6-24 months
* agecat: 6-24 months, studyid: ki1112895-iLiNS-Zinc, country: BURKINA FASO, intXmage: <25_6-24 months
* agecat: 6-24 months, studyid: ki1112895-iLiNS-Zinc, country: BURKINA FASO, intXmage: >=30_6-24 months
* agecat: 6-24 months, studyid: ki1119695-PROBIT, country: BELARUS, intXmage: [25-30)_6-24 months
* agecat: 6-24 months, studyid: ki1119695-PROBIT, country: BELARUS, intXmage: <25_6-24 months
* agecat: 6-24 months, studyid: ki1119695-PROBIT, country: BELARUS, intXmage: >=30_6-24 months
* agecat: 6-24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE, intXmage: [25-30)_6-24 months
* agecat: 6-24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE, intXmage: <25_6-24 months
* agecat: 6-24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE, intXmage: >=30_6-24 months
* agecat: 6-24 months, studyid: ki1135781-COHORTS, country: GUATEMALA, intXmage: [25-30)_6-24 months
* agecat: 6-24 months, studyid: ki1135781-COHORTS, country: GUATEMALA, intXmage: <25_6-24 months
* agecat: 6-24 months, studyid: ki1135781-COHORTS, country: GUATEMALA, intXmage: >=30_6-24 months
* agecat: 6-24 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI, intXmage: [25-30)_6-24 months
* agecat: 6-24 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI, intXmage: <25_6-24 months
* agecat: 6-24 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI, intXmage: >=30_6-24 months
* agecat: 6-24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI, intXmage: [25-30)_6-24 months
* agecat: 6-24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI, intXmage: <25_6-24 months
* agecat: 6-24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI, intXmage: >=30_6-24 months
* agecat: 6-24 months, studyid: ki1148112-LCNI-5, country: MALAWI, intXmage: [25-30)_6-24 months
* agecat: 6-24 months, studyid: ki1148112-LCNI-5, country: MALAWI, intXmage: <25_6-24 months
* agecat: 6-24 months, studyid: ki1148112-LCNI-5, country: MALAWI, intXmage: >=30_6-24 months
* agecat: 6-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH, intXmage: [25-30)_6-24 months
* agecat: 6-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH, intXmage: <25_6-24 months
* agecat: 6-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH, intXmage: >=30_6-24 months

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-6 months, studyid: iLiNS_DYADM_LNS, country: MALAWI, intXmage: [25-30)_0-6 months
* agecat: 0-6 months, studyid: iLiNS_DYADM_LNS, country: MALAWI, intXmage: >=30_0-6 months
* agecat: 0-6 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH, intXmage: >=30_0-6 months
* agecat: 0-6 months, studyid: ki1000111-WASH-Kenya, country: KENYA, intXmage: <25_0-6 months
* agecat: 0-6 months, studyid: ki1000111-WASH-Kenya, country: KENYA, intXmage: [25-30)_0-6 months
* agecat: 0-6 months, studyid: ki1000111-WASH-Kenya, country: KENYA, intXmage: >=30_0-6 months
* agecat: 0-6 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN, intXmage: [25-30)_0-6 months
* agecat: 0-6 months, studyid: ki1000304-EU, country: INDIA, intXmage: <25_0-6 months
* agecat: 0-6 months, studyid: ki1000304-EU, country: INDIA, intXmage: [25-30)_0-6 months
* agecat: 0-6 months, studyid: ki1000304-Vitamin-B12, country: INDIA, intXmage: >=30_0-6 months
* agecat: 0-6 months, studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO, intXmage: <25_0-6 months
* agecat: 0-6 months, studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO, intXmage: [25-30)_0-6 months
* agecat: 0-6 months, studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO, intXmage: >=30_0-6 months
* agecat: 0-6 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI, intXmage: >=30_0-6 months
* agecat: 6-24 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN, intXmage: <25_6-24 months
* agecat: 6-24 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN, intXmage: [25-30)_6-24 months

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
## tr           0   1
##   Control    0   0
##   LNS        0   0
##   Maternal   0   0
##   Other      0   0
##   VitA       0   0
##   Zinc     476 324
##           ever_stunted
## tr            0    1
##   Control     0    0
##   LNS         0    0
##   Maternal    0    0
##   Other       0    0
##   VitA        0    0
##   Zinc     1857  981
##           ever_stunted
## tr            0    1
##   Control     0    0
##   LNS         0    0
##   Maternal    0    0
##   Other       0    0
##   VitA        0    0
##   Zinc     1412  734
```




# Results Detail

## Results Plots
![](/tmp/a14b3166-7df6-434a-afd9-0a3ca40758dd/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/a14b3166-7df6-434a-afd9-0a3ca40758dd/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/a14b3166-7df6-434a-afd9-0a3ca40758dd/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/a14b3166-7df6-434a-afd9-0a3ca40758dd/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                     country                        intXmage              intervention_level   baseline_level     estimate     ci_lower    ci_upper
------------  --------------------------  -----------------------------  --------------------  -------------------  ---------------  ----------  -----------  ----------
0-6 months    iLiNS_DYADM_LNS             MALAWI                         <25_0-6 months        Control              NA                0.0909091   -0.0827956   0.2646138
0-6 months    iLiNS_DYADM_LNS             MALAWI                         <25_0-6 months        LNS                  NA                0.3333333    0.0606216   0.6060450
0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     <25_0-6 months        Control              NA                0.1851852    0.0381602   0.3322102
0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     <25_0-6 months        LNS                  NA                0.1250000    0.0311187   0.2188813
0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     <25_0-6 months        Other                NA                0.0845070    0.0195860   0.1494281
0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     [25-30)_0-6 months    Control              NA                0.0833333   -0.0743413   0.2410080
0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     [25-30)_0-6 months    LNS                  NA                0.0588235   -0.0539544   0.1716014
0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     [25-30)_0-6 months    Other                NA                0.0937500   -0.0080791   0.1955791
0-6 months    ki1000125-AgaKhanUniv       PAKISTAN                       <25_0-6 months        Control              NA                0.2000000   -0.0530303   0.4530303
0-6 months    ki1000125-AgaKhanUniv       PAKISTAN                       <25_0-6 months        Maternal             NA                0.2000000   -0.0065983   0.4065983
0-6 months    ki1000125-AgaKhanUniv       PAKISTAN                       >=30_0-6 months       Control              NA                0.4500000    0.2291902   0.6708098
0-6 months    ki1000125-AgaKhanUniv       PAKISTAN                       >=30_0-6 months       Maternal             NA                0.2500000    0.0578097   0.4421903
0-6 months    ki1000304-VITAMIN-A         INDIA                          <25_0-6 months        Control              NA                0.3617021    0.2642760   0.4591283
0-6 months    ki1000304-VITAMIN-A         INDIA                          <25_0-6 months        VitA                 NA                0.3835616    0.2716814   0.4954419
0-6 months    ki1000304-VITAMIN-A         INDIA                          [25-30)_0-6 months    Control              NA                0.2777778    0.1577821   0.3977735
0-6 months    ki1000304-VITAMIN-A         INDIA                          [25-30)_0-6 months    VitA                 NA                0.2203390    0.1141081   0.3265699
0-6 months    ki1000304-VITAMIN-A         INDIA                          >=30_0-6 months       Control              NA                0.1739130    0.0175265   0.3302996
0-6 months    ki1000304-VITAMIN-A         INDIA                          >=30_0-6 months       VitA                 NA                0.4333333    0.2543145   0.6123521
0-6 months    ki1000304b-SAS-CompFeed     INDIA                          <25_0-6 months        Control              NA                0.2311111    0.1849776   0.2772447
0-6 months    ki1000304b-SAS-CompFeed     INDIA                          <25_0-6 months        Other                NA                0.2692308    0.2300097   0.3084518
0-6 months    ki1000304b-SAS-CompFeed     INDIA                          [25-30)_0-6 months    Control              NA                0.3711340    0.2345010   0.5077670
0-6 months    ki1000304b-SAS-CompFeed     INDIA                          [25-30)_0-6 months    Other                NA                0.3017241    0.2629660   0.3404823
0-6 months    ki1000304b-SAS-CompFeed     INDIA                          >=30_0-6 months       Control              NA                0.3333333    0.1705950   0.4960716
0-6 months    ki1000304b-SAS-CompFeed     INDIA                          >=30_0-6 months       Other                NA                0.3061224    0.2006398   0.4116051
0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          <25_0-6 months        Control              NA                0.3541667    0.2184974   0.4898359
0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          <25_0-6 months        Other                NA                0.3925926    0.3099922   0.4751930
0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          [25-30)_0-6 months    Control              NA                0.5135135    0.3518942   0.6751328
0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          [25-30)_0-6 months    Other                NA                0.4000000    0.3059641   0.4940359
0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          >=30_0-6 months       Control              NA                0.3000000    0.0980508   0.5019492
0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          >=30_0-6 months       Other                NA                0.3098592    0.2016985   0.4180198
0-6 months    ki1017093b-PROVIDE          BANGLADESH                     <25_0-6 months        Control              NA                0.1222222    0.0544495   0.1899950
0-6 months    ki1017093b-PROVIDE          BANGLADESH                     <25_0-6 months        Other                NA                0.1464435    0.1015523   0.1913347
0-6 months    ki1017093b-PROVIDE          BANGLADESH                     [25-30)_0-6 months    Control              NA                0.1395349    0.0356984   0.2433714
0-6 months    ki1017093b-PROVIDE          BANGLADESH                     [25-30)_0-6 months    Other                NA                0.1266667    0.0733023   0.1800311
0-6 months    ki1017093b-PROVIDE          BANGLADESH                     >=30_0-6 months       Control              NA                0.2121212    0.0720461   0.3521963
0-6 months    ki1017093b-PROVIDE          BANGLADESH                     >=30_0-6 months       Other                NA                0.1294118    0.0577512   0.2010723
0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   <25_0-6 months        Control              NA                0.1009615    0.0599940   0.1419291
0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   <25_0-6 months        Other                NA                0.0593607    0.0280464   0.0906751
0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   <25_0-6 months        Zinc                 NA                0.0738095    0.0487896   0.0988295
0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   [25-30)_0-6 months    Control              NA                0.0655738    0.0296861   0.1014614
0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   [25-30)_0-6 months    Other                NA                0.0681818    0.0309189   0.1054447
0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   [25-30)_0-6 months    Zinc                 NA                0.0769231    0.0508899   0.1029563
0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   >=30_0-6 months       Control              NA                0.0365854    0.0078283   0.0653424
0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   >=30_0-6 months       Other                NA                0.0649351    0.0259852   0.1038850
0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   >=30_0-6 months       Zinc                 NA                0.0692042    0.0399188   0.0984895
0-6 months    ki1112895-Guatemala BSC     GUATEMALA                      <25_0-6 months        Control              NA                0.2794118    0.1723495   0.3864740
0-6 months    ki1112895-Guatemala BSC     GUATEMALA                      <25_0-6 months        Other                NA                0.2580645    0.1487252   0.3674038
0-6 months    ki1112895-Guatemala BSC     GUATEMALA                      [25-30)_0-6 months    Control              NA                0.2000000    0.0418091   0.3581909
0-6 months    ki1112895-Guatemala BSC     GUATEMALA                      [25-30)_0-6 months    Other                NA                0.1562500    0.0293290   0.2831710
0-6 months    ki1112895-Guatemala BSC     GUATEMALA                      >=30_0-6 months       Control              NA                0.2727273    0.0846565   0.4607981
0-6 months    ki1112895-Guatemala BSC     GUATEMALA                      >=30_0-6 months       Other                NA                0.1538462    0.0136936   0.2939987
0-6 months    ki1119695-PROBIT            BELARUS                        <25_0-6 months        Control              NA                0.0710889    0.0491097   0.0930681
0-6 months    ki1119695-PROBIT            BELARUS                        <25_0-6 months        Maternal             NA                0.0695825    0.0543120   0.0848530
0-6 months    ki1119695-PROBIT            BELARUS                        [25-30)_0-6 months    Control              NA                0.0625850    0.0445986   0.0805715
0-6 months    ki1119695-PROBIT            BELARUS                        [25-30)_0-6 months    Maternal             NA                0.0529236    0.0383505   0.0674967
0-6 months    ki1119695-PROBIT            BELARUS                        >=30_0-6 months       Control              NA                0.0687679    0.0483284   0.0892074
0-6 months    ki1119695-PROBIT            BELARUS                        >=30_0-6 months       Maternal             NA                0.0530504    0.0322265   0.0738743
0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       <25_0-6 months        Control              NA                0.1806099    0.1595250   0.2016947
0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       <25_0-6 months        VitA                 NA                0.1779573    0.1658557   0.1900589
0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       [25-30)_0-6 months    Control              NA                0.1567657    0.1278119   0.1857194
0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       [25-30)_0-6 months    VitA                 NA                0.1731551    0.1552746   0.1910357
0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       >=30_0-6 months       Control              NA                0.1569620    0.1210778   0.1928462
0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       >=30_0-6 months       VitA                 NA                0.1804996    0.1590950   0.2019042
0-6 months    ki1135781-COHORTS           GUATEMALA                      <25_0-6 months        Control              NA                0.2711864    0.1572371   0.3851358
0-6 months    ki1135781-COHORTS           GUATEMALA                      <25_0-6 months        Other                NA                0.3018868    0.1777380   0.4260356
0-6 months    ki1135781-COHORTS           GUATEMALA                      [25-30)_0-6 months    Control              NA                0.3448276    0.1705675   0.5190877
0-6 months    ki1135781-COHORTS           GUATEMALA                      [25-30)_0-6 months    Other                NA                0.2250000    0.0946442   0.3553558
0-6 months    ki1135781-COHORTS           GUATEMALA                      >=30_0-6 months       Control              NA                0.4150943    0.2818679   0.5483208
0-6 months    ki1135781-COHORTS           GUATEMALA                      >=30_0-6 months       Other                NA                0.3125000    0.1984531   0.4265469
0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         <25_0-6 months        Control              NA                0.3191489    0.2248353   0.4134626
0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         <25_0-6 months        LNS                  NA                0.2796781    0.2401842   0.3191720
0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         [25-30)_0-6 months    Control              NA                0.3529412    0.1920238   0.5138586
0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         [25-30)_0-6 months    LNS                  NA                0.2580645    0.2035087   0.3126203
0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         >=30_0-6 months       Control              NA                0.3076923    0.1820240   0.4333606
0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         >=30_0-6 months       LNS                  NA                0.3304348    0.2695379   0.3913316
0-6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         <25_0-6 months        Control              NA                0.0909091   -0.0813873   0.2632055
0-6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         <25_0-6 months        Maternal             NA                0.2800000    0.1014990   0.4585010
0-6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         [25-30)_0-6 months    Control              NA                0.3333333   -0.0547974   0.7214640
0-6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         [25-30)_0-6 months    Maternal             NA                0.2500000   -0.0020983   0.5020983
0-6 months    ki1148112-LCNI-5            MALAWI                         <25_0-6 months        Control              NA                0.3548387    0.1855697   0.5241078
0-6 months    ki1148112-LCNI-5            MALAWI                         <25_0-6 months        LNS                  NA                0.2926829    0.1527169   0.4326489
0-6 months    ki1148112-LCNI-5            MALAWI                         <25_0-6 months        Other                NA                0.2068966    0.0587296   0.3550635
0-6 months    ki1148112-LCNI-5            MALAWI                         [25-30)_0-6 months    Control              NA                0.5000000    0.1871926   0.8128074
0-6 months    ki1148112-LCNI-5            MALAWI                         [25-30)_0-6 months    LNS                  NA                0.4117647    0.2447835   0.5787459
0-6 months    ki1148112-LCNI-5            MALAWI                         [25-30)_0-6 months    Other                NA                0.7000000    0.4133073   0.9866927
0-6 months    ki1148112-LCNI-5            MALAWI                         >=30_0-6 months       Control              NA                0.3846154    0.1180954   0.6511354
0-6 months    ki1148112-LCNI-5            MALAWI                         >=30_0-6 months       LNS                  NA                0.2285714    0.0883741   0.3687687
0-6 months    ki1148112-LCNI-5            MALAWI                         >=30_0-6 months       Other                NA                0.5882353    0.3524643   0.8240063
0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     <25_0-6 months        Control              NA                0.2829082    0.2709613   0.2948551
0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     <25_0-6 months        Maternal             NA                0.2441513    0.2337429   0.2545596
0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     [25-30)_0-6 months    Control              NA                0.2488326    0.2220418   0.2756233
0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     [25-30)_0-6 months    Maternal             NA                0.2037267    0.1816566   0.2257968
0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     >=30_0-6 months       Control              NA                0.2764016    0.2348976   0.3179056
0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     >=30_0-6 months       Maternal             NA                0.2149178    0.1813934   0.2484423
6-24 months   iLiNS_DYADM_LNS             MALAWI                         <25_6-24 months       Control              NA                0.1824818    0.1176791   0.2472844
6-24 months   iLiNS_DYADM_LNS             MALAWI                         <25_6-24 months       LNS                  NA                0.3250000    0.2410351   0.4089649
6-24 months   iLiNS_DYADM_LNS             MALAWI                         [25-30)_6-24 months   Control              NA                0.2982456    0.1789944   0.4174969
6-24 months   iLiNS_DYADM_LNS             MALAWI                         [25-30)_6-24 months   LNS                  NA                0.2878788    0.1781980   0.3975596
6-24 months   iLiNS_DYADM_LNS             MALAWI                         >=30_6-24 months      Control              NA                0.4193548    0.2948876   0.5438221
6-24 months   iLiNS_DYADM_LNS             MALAWI                         >=30_6-24 months      LNS                  NA                0.2692308    0.1475007   0.3909608
6-24 months   iLiNS-Zinc_ZvLNS            BURKINA FASO                   <25_6-24 months       Control              NA                0.3450980    0.2661198   0.4240763
6-24 months   iLiNS-Zinc_ZvLNS            BURKINA FASO                   <25_6-24 months       Zinc                 NA                0.3415906    0.2501335   0.4330477
6-24 months   iLiNS-Zinc_ZvLNS            BURKINA FASO                   [25-30)_6-24 months   Control              NA                0.2911392    0.1979593   0.3843192
6-24 months   iLiNS-Zinc_ZvLNS            BURKINA FASO                   [25-30)_6-24 months   Zinc                 NA                0.2910798    0.2133087   0.3688509
6-24 months   iLiNS-Zinc_ZvLNS            BURKINA FASO                   >=30_6-24 months      Control              NA                0.3068182    0.1803440   0.4332923
6-24 months   iLiNS-Zinc_ZvLNS            BURKINA FASO                   >=30_6-24 months      Zinc                 NA                0.3084416    0.2393448   0.3775383
6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     <25_6-24 months       Control              NA                0.3728324    0.3367974   0.4088674
6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     <25_6-24 months       LNS                  NA                0.3081395    0.2736317   0.3426474
6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     <25_6-24 months       Other                NA                0.4012204    0.3746834   0.4277575
6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     [25-30)_6-24 months   Control              NA                0.4247492    0.3686996   0.4807987
6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     [25-30)_6-24 months   LNS                  NA                0.3639241    0.3108565   0.4169916
6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     [25-30)_6-24 months   Other                NA                0.3675214    0.3318427   0.4032000
6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     >=30_6-24 months      Control              NA                0.4195402    0.3461676   0.4929129
6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     >=30_6-24 months      LNS                  NA                0.3507853    0.2830627   0.4185080
6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     >=30_6-24 months      Other                NA                0.4564103    0.4069431   0.5058774
6-24 months   ki1000111-WASH-Kenya        KENYA                          <25_6-24 months       Control              NA                0.2693798    0.2423084   0.2964513
6-24 months   ki1000111-WASH-Kenya        KENYA                          <25_6-24 months       LNS                  NA                0.2009967    0.1689788   0.2330146
6-24 months   ki1000111-WASH-Kenya        KENYA                          <25_6-24 months       Other                NA                0.2841615    0.2595264   0.3087966
6-24 months   ki1000111-WASH-Kenya        KENYA                          [25-30)_6-24 months   Control              NA                0.2316476    0.1982411   0.2650542
6-24 months   ki1000111-WASH-Kenya        KENYA                          [25-30)_6-24 months   LNS                  NA                0.2183099    0.1790709   0.2575488
6-24 months   ki1000111-WASH-Kenya        KENYA                          [25-30)_6-24 months   Other                NA                0.2645914    0.2334461   0.2957368
6-24 months   ki1000111-WASH-Kenya        KENYA                          >=30_6-24 months      Control              NA                0.2471170    0.2127938   0.2814401
6-24 months   ki1000111-WASH-Kenya        KENYA                          >=30_6-24 months      LNS                  NA                0.2330097    0.1921778   0.2738416
6-24 months   ki1000111-WASH-Kenya        KENYA                          >=30_6-24 months      Other                NA                0.2649573    0.2347252   0.2951894
6-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       >=30_6-24 months      Control              NA                0.1176471   -0.0382204   0.2735145
6-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       >=30_6-24 months      Maternal             NA                0.2500000    0.0006680   0.4993320
6-24 months   ki1000304-EU                INDIA                          <25_6-24 months       Control              NA                0.4926199    0.4505107   0.5347291
6-24 months   ki1000304-EU                INDIA                          <25_6-24 months       Zinc                 NA                0.4280156    0.3852205   0.4708107
6-24 months   ki1000304-EU                INDIA                          [25-30)_6-24 months   Control              NA                0.4844193    0.4322468   0.5365918
6-24 months   ki1000304-EU                INDIA                          [25-30)_6-24 months   Zinc                 NA                0.4596273    0.4051530   0.5141016
6-24 months   ki1000304-EU                INDIA                          >=30_6-24 months      Control              NA                0.4609375    0.3744223   0.5474527
6-24 months   ki1000304-EU                INDIA                          >=30_6-24 months      Zinc                 NA                0.4751773    0.3925961   0.5577586
6-24 months   ki1000304-VITAMIN-A         INDIA                          <25_6-24 months       Control              NA                0.3342697    0.2996074   0.3689319
6-24 months   ki1000304-VITAMIN-A         INDIA                          <25_6-24 months       VitA                 NA                0.3190608    0.2850966   0.3530249
6-24 months   ki1000304-VITAMIN-A         INDIA                          [25-30)_6-24 months   Control              NA                0.3765432    0.3334447   0.4196417
6-24 months   ki1000304-VITAMIN-A         INDIA                          [25-30)_6-24 months   VitA                 NA                0.3353535    0.2937420   0.3769651
6-24 months   ki1000304-VITAMIN-A         INDIA                          >=30_6-24 months      Control              NA                0.3969072    0.3279667   0.4658478
6-24 months   ki1000304-VITAMIN-A         INDIA                          >=30_6-24 months      VitA                 NA                0.4540230    0.3799448   0.5281012
6-24 months   ki1000304-Vitamin-B12       INDIA                          <25_6-24 months       Control              NA                0.4565217    0.3545988   0.5584446
6-24 months   ki1000304-Vitamin-B12       INDIA                          <25_6-24 months       Other                NA                0.4871795    0.4278064   0.5465526
6-24 months   ki1000304-Vitamin-B12       INDIA                          [25-30)_6-24 months   Control              NA                0.5070423    0.3905503   0.6235342
6-24 months   ki1000304-Vitamin-B12       INDIA                          [25-30)_6-24 months   Other                NA                0.4383562    0.3725267   0.5041856
6-24 months   ki1000304-Vitamin-B12       INDIA                          >=30_6-24 months      Control              NA                0.6000000    0.4371485   0.7628515
6-24 months   ki1000304-Vitamin-B12       INDIA                          >=30_6-24 months      Other                NA                0.4601770    0.3679689   0.5523851
6-24 months   ki1000304b-SAS-CompFeed     INDIA                          <25_6-24 months       Control              NA                0.4315789    0.3708909   0.4922670
6-24 months   ki1000304b-SAS-CompFeed     INDIA                          <25_6-24 months       Other                NA                0.3811881    0.2765045   0.4858717
6-24 months   ki1000304b-SAS-CompFeed     INDIA                          [25-30)_6-24 months   Control              NA                0.5135135    0.3514883   0.6755387
6-24 months   ki1000304b-SAS-CompFeed     INDIA                          [25-30)_6-24 months   Other                NA                0.4842105    0.3735840   0.5948371
6-24 months   ki1000304b-SAS-CompFeed     INDIA                          >=30_6-24 months      Control              NA                0.4193548    0.3494601   0.4892495
6-24 months   ki1000304b-SAS-CompFeed     INDIA                          >=30_6-24 months      Other                NA                0.5142857    0.4975146   0.5310568
6-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          <25_6-24 months       Control              NA                0.6333333    0.4600963   0.8065704
6-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          <25_6-24 months       Other                NA                0.5569620    0.4469173   0.6670067
6-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          [25-30)_6-24 months   Control              NA                0.6666667    0.4474264   0.8859069
6-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          [25-30)_6-24 months   Other                NA                0.5614035    0.4317168   0.6910902
6-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          >=30_6-24 months      Control              NA                0.9230769    0.7769818   1.0691720
6-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          >=30_6-24 months      Other                NA                0.6739130    0.5372819   0.8105442
6-24 months   ki1017093b-PROVIDE          BANGLADESH                     <25_6-24 months       Control              NA                0.1250000    0.0311754   0.2188246
6-24 months   ki1017093b-PROVIDE          BANGLADESH                     <25_6-24 months       Other                NA                0.1162791    0.0608048   0.1717534
6-24 months   ki1017093b-PROVIDE          BANGLADESH                     [25-30)_6-24 months   Control              NA                0.1071429   -0.0079535   0.2222392
6-24 months   ki1017093b-PROVIDE          BANGLADESH                     [25-30)_6-24 months   Other                NA                0.0500000    0.0020189   0.0979811
6-24 months   ki1017093b-PROVIDE          BANGLADESH                     >=30_6-24 months      Control              NA                0.2666667    0.0408890   0.4924443
6-24 months   ki1017093b-PROVIDE          BANGLADESH                     >=30_6-24 months      Other                NA                0.1190476    0.0202370   0.2178582
6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   <25_6-24 months       Control              NA                0.1717791    0.1138316   0.2297267
6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   <25_6-24 months       Other                NA                0.1534091    0.1001276   0.2066906
6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   <25_6-24 months       Zinc                 NA                0.1850746    0.1434567   0.2266926
6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   [25-30)_6-24 months   Control              NA                0.1946309    0.1310083   0.2582534
6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   [25-30)_6-24 months   Other                NA                0.1862069    0.1227948   0.2496189
6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   [25-30)_6-24 months   Zinc                 NA                0.1894410    0.1466057   0.2322763
6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   >=30_6-24 months      Control              NA                0.1857143    0.1212338   0.2501947
6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   >=30_6-24 months      Other                NA                0.1612903    0.0964895   0.2260911
6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   >=30_6-24 months      Zinc                 NA                0.1932773    0.1430610   0.2434937
6-24 months   ki1112895-Guatemala BSC     GUATEMALA                      <25_6-24 months       Control              NA                0.3529412    0.2210592   0.4848232
6-24 months   ki1112895-Guatemala BSC     GUATEMALA                      <25_6-24 months       Other                NA                0.3250000    0.1790476   0.4709524
6-24 months   ki1112895-Guatemala BSC     GUATEMALA                      [25-30)_6-24 months   Control              NA                0.1363636   -0.0085875   0.2813147
6-24 months   ki1112895-Guatemala BSC     GUATEMALA                      [25-30)_6-24 months   Other                NA                0.2800000    0.1020929   0.4579071
6-24 months   ki1112895-Guatemala BSC     GUATEMALA                      >=30_6-24 months      Control              NA                0.0666667   -0.0613082   0.1946416
6-24 months   ki1112895-Guatemala BSC     GUATEMALA                      >=30_6-24 months      Other                NA                0.5000000    0.2881852   0.7118148
6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   <25_6-24 months       Control              NA                0.3761755    0.3268936   0.4254575
6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   <25_6-24 months       LNS                  NA                0.3424658    0.2700418   0.4148897
6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   [25-30)_6-24 months   Control              NA                0.3727273    0.2935702   0.4518843
6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   [25-30)_6-24 months   LNS                  NA                0.2910959    0.2313225   0.3508692
6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   >=30_6-24 months      Control              NA                0.3625000    0.3112887   0.4137113
6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   >=30_6-24 months      LNS                  NA                0.3080808    0.2493104   0.3668513
6-24 months   ki1119695-PROBIT            BELARUS                        <25_6-24 months       Control              NA                0.0738699    0.0488570   0.0988828
6-24 months   ki1119695-PROBIT            BELARUS                        <25_6-24 months       Maternal             NA                0.0570645    0.0435381   0.0705910
6-24 months   ki1119695-PROBIT            BELARUS                        [25-30)_6-24 months   Control              NA                0.0579557    0.0443857   0.0715258
6-24 months   ki1119695-PROBIT            BELARUS                        [25-30)_6-24 months   Maternal             NA                0.0473005    0.0346796   0.0599214
6-24 months   ki1119695-PROBIT            BELARUS                        >=30_6-24 months      Control              NA                0.0620347    0.0369692   0.0871003
6-24 months   ki1119695-PROBIT            BELARUS                        >=30_6-24 months      Maternal             NA                0.0468521    0.0320127   0.0616916
6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       <25_6-24 months       Control              NA                0.2075630    0.1845180   0.2306081
6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       <25_6-24 months       VitA                 NA                0.2168203    0.2033185   0.2303222
6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       [25-30)_6-24 months   Control              NA                0.2357143    0.2005520   0.2708766
6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       [25-30)_6-24 months   VitA                 NA                0.2216528    0.2010431   0.2422625
6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       >=30_6-24 months      Control              NA                0.1983471    0.1573129   0.2393813
6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       >=30_6-24 months      VitA                 NA                0.2176211    0.1936077   0.2416346
6-24 months   ki1135781-COHORTS           GUATEMALA                      <25_6-24 months       Control              NA                0.6981132    0.6105146   0.7857118
6-24 months   ki1135781-COHORTS           GUATEMALA                      <25_6-24 months       Other                NA                0.6111111    0.5189546   0.7032677
6-24 months   ki1135781-COHORTS           GUATEMALA                      [25-30)_6-24 months   Control              NA                0.7272727    0.5949810   0.8595644
6-24 months   ki1135781-COHORTS           GUATEMALA                      [25-30)_6-24 months   Other                NA                0.5882353    0.4524474   0.7240232
6-24 months   ki1135781-COHORTS           GUATEMALA                      >=30_6-24 months      Control              NA                0.6891892    0.5834175   0.7949609
6-24 months   ki1135781-COHORTS           GUATEMALA                      >=30_6-24 months      Other                NA                0.4835165    0.3805297   0.5865032
6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         <25_6-24 months       Control              NA                0.4180328    0.3304480   0.5056176
6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         <25_6-24 months       LNS                  NA                0.4132653    0.3734362   0.4530944
6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         [25-30)_6-24 months   Control              NA                0.3191489    0.1856897   0.4526082
6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         [25-30)_6-24 months   LNS                  NA                0.3766667    0.3217565   0.4315769
6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         >=30_6-24 months      Control              NA                0.4307692    0.3102221   0.5513164
6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         >=30_6-24 months      LNS                  NA                0.4496644    0.3931060   0.5062228
6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         <25_6-24 months       Control              NA                0.1824818    0.1177193   0.2472442
6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         <25_6-24 months       Maternal             NA                0.2875000    0.2301636   0.3448364
6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         [25-30)_6-24 months   Control              NA                0.2982456    0.1791950   0.4172963
6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         [25-30)_6-24 months   Maternal             NA                0.3289474    0.2540771   0.4038176
6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         >=30_6-24 months      Control              NA                0.4193548    0.2954641   0.5432456
6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         >=30_6-24 months      Maternal             NA                0.3185841    0.2321148   0.4050534
6-24 months   ki1148112-LCNI-5            MALAWI                         <25_6-24 months       Control              NA                0.5692308    0.4486203   0.6898413
6-24 months   ki1148112-LCNI-5            MALAWI                         <25_6-24 months       LNS                  NA                0.5250000    0.4354818   0.6145182
6-24 months   ki1148112-LCNI-5            MALAWI                         <25_6-24 months       Other                NA                0.4743590    0.3633326   0.5853854
6-24 months   ki1148112-LCNI-5            MALAWI                         [25-30)_6-24 months   Control              NA                0.4615385    0.3045384   0.6185385
6-24 months   ki1148112-LCNI-5            MALAWI                         [25-30)_6-24 months   LNS                  NA                0.5142857    0.3967974   0.6317740
6-24 months   ki1148112-LCNI-5            MALAWI                         [25-30)_6-24 months   Other                NA                0.6111111    0.4513127   0.7709095
6-24 months   ki1148112-LCNI-5            MALAWI                         >=30_6-24 months      Control              NA                0.5128205    0.3554940   0.6701470
6-24 months   ki1148112-LCNI-5            MALAWI                         >=30_6-24 months      LNS                  NA                0.5918367    0.4942453   0.6894282
6-24 months   ki1148112-LCNI-5            MALAWI                         >=30_6-24 months      Other                NA                0.5833333    0.4218200   0.7448467
6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     <25_6-24 months       Control              NA                0.1733672    0.1572874   0.1894470
6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     <25_6-24 months       Maternal             NA                0.1748484    0.1608399   0.1888569
6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     [25-30)_6-24 months   Control              NA                0.1792035    0.1427894   0.2156177
6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     [25-30)_6-24 months   Maternal             NA                0.1745223    0.1457107   0.2033339
6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     >=30_6-24 months      Control              NA                0.1293706    0.0823566   0.1763846
6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     >=30_6-24 months      Maternal             NA                0.1756757    0.1292005   0.2221508


### Parameter: E(Y)


agecat        studyid                     country                        intXmage              intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  --------------------------  -----------------------------  --------------------  -------------------  ---------------  ----------  ----------  ----------
0-6 months    iLiNS_DYADM_LNS             MALAWI                         <25_0-6 months        NA                   NA                0.2173913   0.0450338   0.3897488
0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     <25_0-6 months        NA                   NA                0.1164384   0.0642311   0.1686456
0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     [25-30)_0-6 months    NA                   NA                0.0819672   0.0125573   0.1513771
0-6 months    ki1000125-AgaKhanUniv       PAKISTAN                       <25_0-6 months        NA                   NA                0.2000000   0.0399696   0.3600304
0-6 months    ki1000125-AgaKhanUniv       PAKISTAN                       >=30_0-6 months       NA                   NA                0.3500000   0.2003053   0.4996947
0-6 months    ki1000304-VITAMIN-A         INDIA                          <25_0-6 months        NA                   NA                0.3712575   0.2977607   0.4447542
0-6 months    ki1000304-VITAMIN-A         INDIA                          [25-30)_0-6 months    NA                   NA                0.2477876   0.1678320   0.3277433
0-6 months    ki1000304-VITAMIN-A         INDIA                          >=30_0-6 months       NA                   NA                0.3207547   0.1938884   0.4476210
0-6 months    ki1000304b-SAS-CompFeed     INDIA                          <25_0-6 months        NA                   NA                0.2515464   0.2161419   0.2869509
0-6 months    ki1000304b-SAS-CompFeed     INDIA                          [25-30)_0-6 months    NA                   NA                0.3333333   0.2666933   0.3999734
0-6 months    ki1000304b-SAS-CompFeed     INDIA                          >=30_0-6 months       NA                   NA                0.3191489   0.2222439   0.4160540
0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          <25_0-6 months        NA                   NA                0.3825137   0.3119064   0.4531210
0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          [25-30)_0-6 months    NA                   NA                0.4295775   0.3478708   0.5112842
0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          >=30_0-6 months       NA                   NA                0.3076923   0.2123392   0.4030454
0-6 months    ki1017093b-PROVIDE          BANGLADESH                     <25_0-6 months        NA                   NA                0.1398176   0.1022869   0.1773484
0-6 months    ki1017093b-PROVIDE          BANGLADESH                     [25-30)_0-6 months    NA                   NA                0.1295337   0.0820368   0.1770305
0-6 months    ki1017093b-PROVIDE          BANGLADESH                     >=30_0-6 months       NA                   NA                0.1525424   0.0873931   0.2176916
0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   <25_0-6 months        NA                   NA                0.0767414   0.0588049   0.0946780
0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   [25-30)_0-6 months    NA                   NA                0.0721785   0.0537923   0.0905647
0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   >=30_0-6 months       NA                   NA                0.0593081   0.0405022   0.0781139
0-6 months    ki1112895-Guatemala BSC     GUATEMALA                      <25_0-6 months        NA                   NA                0.2692308   0.1926877   0.3457738
0-6 months    ki1112895-Guatemala BSC     GUATEMALA                      [25-30)_0-6 months    NA                   NA                0.1754386   0.0758228   0.2750544
0-6 months    ki1112895-Guatemala BSC     GUATEMALA                      >=30_0-6 months       NA                   NA                0.2083333   0.0922287   0.3244380
0-6 months    ki1119695-PROBIT            BELARUS                        <25_0-6 months        NA                   NA                0.0703080   0.0570439   0.0835722
0-6 months    ki1119695-PROBIT            BELARUS                        [25-30)_0-6 months    NA                   NA                0.0576077   0.0457795   0.0694360
0-6 months    ki1119695-PROBIT            BELARUS                        >=30_0-6 months       NA                   NA                0.0606061   0.0456143   0.0755979
0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       <25_0-6 months        NA                   NA                0.1786203   0.1681244   0.1891162
0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       [25-30)_0-6 months    NA                   NA                0.1688870   0.1536615   0.1841125
0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       >=30_0-6 months       NA                   NA                0.1748166   0.1564065   0.1932267
0-6 months    ki1135781-COHORTS           GUATEMALA                      <25_0-6 months        NA                   NA                0.2857143   0.2016738   0.3697548
0-6 months    ki1135781-COHORTS           GUATEMALA                      [25-30)_0-6 months    NA                   NA                0.2753623   0.1691912   0.3815334
0-6 months    ki1135781-COHORTS           GUATEMALA                      >=30_0-6 months       NA                   NA                0.3589744   0.2716795   0.4462692
0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         <25_0-6 months        NA                   NA                0.2859560   0.2494945   0.3224175
0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         [25-30)_0-6 months    NA                   NA                0.2695035   0.2176252   0.3213819
0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         >=30_0-6 months       NA                   NA                0.3262411   0.2714240   0.3810583
0-6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         <25_0-6 months        NA                   NA                0.2222222   0.0844900   0.3599545
0-6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         [25-30)_0-6 months    NA                   NA                0.2777778   0.0648620   0.4906935
0-6 months    ki1148112-LCNI-5            MALAWI                         <25_0-6 months        NA                   NA                0.2871287   0.1984556   0.3758018
0-6 months    ki1148112-LCNI-5            MALAWI                         [25-30)_0-6 months    NA                   NA                0.4814815   0.3469630   0.6160000
0-6 months    ki1148112-LCNI-5            MALAWI                         >=30_0-6 months       NA                   NA                0.3538462   0.2366986   0.4709937
0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     <25_0-6 months        NA                   NA                0.2635020   0.2554360   0.2715680
0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     [25-30)_0-6 months    NA                   NA                0.2254744   0.2080758   0.2428731
0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     >=30_0-6 months       NA                   NA                0.2451861   0.2183997   0.2719725
6-24 months   iLiNS_DYADM_LNS             MALAWI                         <25_6-24 months       NA                   NA                0.2490272   0.1960531   0.3020013
6-24 months   iLiNS_DYADM_LNS             MALAWI                         [25-30)_6-24 months   NA                   NA                0.2926829   0.2119457   0.3734202
6-24 months   iLiNS_DYADM_LNS             MALAWI                         >=30_6-24 months      NA                   NA                0.3508772   0.2623142   0.4394401
6-24 months   iLiNS-Zinc_ZvLNS            BURKINA FASO                   <25_6-24 months       NA                   NA                0.3424658   0.2671951   0.4177364
6-24 months   iLiNS-Zinc_ZvLNS            BURKINA FASO                   [25-30)_6-24 months   NA                   NA                0.2910959   0.2310451   0.3511466
6-24 months   iLiNS-Zinc_ZvLNS            BURKINA FASO                   >=30_6-24 months      NA                   NA                0.3080808   0.2457177   0.3704439
6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     <25_6-24 months       NA                   NA                0.3701226   0.3518764   0.3883688
6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     [25-30)_6-24 months   NA                   NA                0.3796507   0.3534309   0.4058706
6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     >=30_6-24 months      NA                   NA                0.4211921   0.3859493   0.4564348
6-24 months   ki1000111-WASH-Kenya        KENYA                          <25_6-24 months       NA                   NA                0.2618070   0.2458644   0.2777495
6-24 months   ki1000111-WASH-Kenya        KENYA                          [25-30)_6-24 months   NA                   NA                0.2425414   0.2227899   0.2622930
6-24 months   ki1000111-WASH-Kenya        KENYA                          >=30_6-24 months      NA                   NA                0.2519042   0.2320529   0.2717556
6-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       >=30_6-24 months      NA                   NA                0.1724138   0.0324996   0.3123280
6-24 months   ki1000304-EU                INDIA                          <25_6-24 months       NA                   NA                0.4611742   0.4310942   0.4912543
6-24 months   ki1000304-EU                INDIA                          [25-30)_6-24 months   NA                   NA                0.4725926   0.4349018   0.5102833
6-24 months   ki1000304-EU                INDIA                          >=30_6-24 months      NA                   NA                0.4684015   0.4086592   0.5281438
6-24 months   ki1000304-VITAMIN-A         INDIA                          <25_6-24 months       NA                   NA                0.3266017   0.3023374   0.3508659
6-24 months   ki1000304-VITAMIN-A         INDIA                          [25-30)_6-24 months   NA                   NA                0.3557594   0.3257859   0.3857329
6-24 months   ki1000304-VITAMIN-A         INDIA                          >=30_6-24 months      NA                   NA                0.4239130   0.3733542   0.4744719
6-24 months   ki1000304-Vitamin-B12       INDIA                          <25_6-24 months       NA                   NA                0.4794521   0.4281304   0.5307737
6-24 months   ki1000304-Vitamin-B12       INDIA                          [25-30)_6-24 months   NA                   NA                0.4551724   0.3977586   0.5125863
6-24 months   ki1000304-Vitamin-B12       INDIA                          >=30_6-24 months      NA                   NA                0.4932432   0.4124231   0.5740634
6-24 months   ki1000304b-SAS-CompFeed     INDIA                          <25_6-24 months       NA                   NA                0.4056122   0.3396119   0.4716125
6-24 months   ki1000304b-SAS-CompFeed     INDIA                          [25-30)_6-24 months   NA                   NA                0.4970414   0.4026956   0.5913873
6-24 months   ki1000304b-SAS-CompFeed     INDIA                          >=30_6-24 months      NA                   NA                0.4696970   0.4210695   0.5183244
6-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          <25_6-24 months       NA                   NA                0.5779817   0.4848368   0.6711265
6-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          [25-30)_6-24 months   NA                   NA                0.5866667   0.4744705   0.6988629
6-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          >=30_6-24 months      NA                   NA                0.7288136   0.6144003   0.8432268
6-24 months   ki1017093b-PROVIDE          BANGLADESH                     <25_6-24 months       NA                   NA                0.1186441   0.0708702   0.1664179
6-24 months   ki1017093b-PROVIDE          BANGLADESH                     [25-30)_6-24 months   NA                   NA                0.0648148   0.0181658   0.1114638
6-24 months   ki1017093b-PROVIDE          BANGLADESH                     >=30_6-24 months      NA                   NA                0.1578947   0.0623908   0.2533986
6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   <25_6-24 months       NA                   NA                0.1735905   0.1449750   0.2022060
6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   [25-30)_6-24 months   NA                   NA                0.1899351   0.1589343   0.2209359
6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   >=30_6-24 months      NA                   NA                0.1832669   0.1493894   0.2171444
6-24 months   ki1112895-Guatemala BSC     GUATEMALA                      <25_6-24 months       NA                   NA                0.3406593   0.2427460   0.4385727
6-24 months   ki1112895-Guatemala BSC     GUATEMALA                      [25-30)_6-24 months   NA                   NA                0.2127660   0.0944966   0.3310353
6-24 months   ki1112895-Guatemala BSC     GUATEMALA                      >=30_6-24 months      NA                   NA                0.3243243   0.1714073   0.4772413
6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   <25_6-24 months       NA                   NA                0.3504847   0.2942199   0.4067496
6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   [25-30)_6-24 months   NA                   NA                0.3134328   0.2647850   0.3620807
6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   >=30_6-24 months      NA                   NA                0.3207364   0.2732714   0.3682014
6-24 months   ki1119695-PROBIT            BELARUS                        <25_6-24 months       NA                   NA                0.0650438   0.0502970   0.0797907
6-24 months   ki1119695-PROBIT            BELARUS                        [25-30)_6-24 months   NA                   NA                0.0523678   0.0427508   0.0619848
6-24 months   ki1119695-PROBIT            BELARUS                        >=30_6-24 months      NA                   NA                0.0539806   0.0395876   0.0683735
6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       <25_6-24 months       NA                   NA                0.2145104   0.2028591   0.2261617
6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       [25-30)_6-24 months   NA                   NA                0.2253654   0.2075796   0.2431511
6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       >=30_6-24 months      NA                   NA                0.2129506   0.1922121   0.2336891
6-24 months   ki1135781-COHORTS           GUATEMALA                      <25_6-24 months       NA                   NA                0.6542056   0.5903316   0.7180796
6-24 months   ki1135781-COHORTS           GUATEMALA                      [25-30)_6-24 months   NA                   NA                0.6526316   0.5563788   0.7488844
6-24 months   ki1135781-COHORTS           GUATEMALA                      >=30_6-24 months      NA                   NA                0.5757576   0.5001173   0.6513978
6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         <25_6-24 months       NA                   NA                0.4140845   0.3778279   0.4503411
6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         [25-30)_6-24 months   NA                   NA                0.3688761   0.3180358   0.4197163
6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         >=30_6-24 months      NA                   NA                0.4462810   0.3950724   0.4974896
6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         <25_6-24 months       NA                   NA                0.2493369   0.2056078   0.2930659
6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         [25-30)_6-24 months   NA                   NA                0.3205742   0.2571504   0.3839979
6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         >=30_6-24 months      NA                   NA                0.3542857   0.2829215   0.4256500
6-24 months   ki1148112-LCNI-5            MALAWI                         <25_6-24 months       NA                   NA                0.5209125   0.4604220   0.5814031
6-24 months   ki1148112-LCNI-5            MALAWI                         [25-30)_6-24 months   NA                   NA                0.5241379   0.4425680   0.6057079
6-24 months   ki1148112-LCNI-5            MALAWI                         >=30_6-24 months      NA                   NA                0.5722543   0.4983157   0.6461929
6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     <25_6-24 months       NA                   NA                0.1741206   0.1634791   0.1847621
6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     [25-30)_6-24 months   NA                   NA                0.1766917   0.1538070   0.1995765
6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     >=30_6-24 months      NA                   NA                0.1542811   0.1210744   0.1874878


### Parameter: RR


agecat        studyid                     country                        intXmage              intervention_level   baseline_level     estimate    ci_lower     ci_upper
------------  --------------------------  -----------------------------  --------------------  -------------------  ---------------  ----------  ----------  -----------
0-6 months    iLiNS_DYADM_LNS             MALAWI                         <25_0-6 months        Control              Control           1.0000000   1.0000000    1.0000000
0-6 months    iLiNS_DYADM_LNS             MALAWI                         <25_0-6 months        LNS                  Control           3.6666667   0.4587478   29.3068283
0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     <25_0-6 months        Control              Control           1.0000000   1.0000000    1.0000000
0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     <25_0-6 months        LNS                  Control           0.6750000   0.2262911    2.0134460
0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     <25_0-6 months        Other                Control           0.4563380   0.1511791    1.3774679
0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     [25-30)_0-6 months    Control              Control           1.0000000   1.0000000    1.0000000
0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     [25-30)_0-6 months    LNS                  Control           0.7058824   0.0477412   10.4369030
0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     [25-30)_0-6 months    Other                Control           1.1250000   0.1269559    9.9690108
0-6 months    ki1000125-AgaKhanUniv       PAKISTAN                       <25_0-6 months        Control              Control           1.0000000   1.0000000    1.0000000
0-6 months    ki1000125-AgaKhanUniv       PAKISTAN                       <25_0-6 months        Maternal             Control           1.0000000   0.1952834    5.1207623
0-6 months    ki1000125-AgaKhanUniv       PAKISTAN                       >=30_0-6 months       Control              Control           1.0000000   1.0000000    1.0000000
0-6 months    ki1000125-AgaKhanUniv       PAKISTAN                       >=30_0-6 months       Maternal             Control           0.5555556   0.2231747    1.3829612
0-6 months    ki1000304-VITAMIN-A         INDIA                          <25_0-6 months        Control              Control           1.0000000   1.0000000    1.0000000
0-6 months    ki1000304-VITAMIN-A         INDIA                          <25_0-6 months        VitA                 Control           1.0604351   0.7129445    1.5772934
0-6 months    ki1000304-VITAMIN-A         INDIA                          [25-30)_0-6 months    Control              Control           1.0000000   1.0000000    1.0000000
0-6 months    ki1000304-VITAMIN-A         INDIA                          [25-30)_0-6 months    VitA                 Control           0.7932203   0.4151984    1.5154165
0-6 months    ki1000304-VITAMIN-A         INDIA                          >=30_0-6 months       Control              Control           1.0000000   1.0000000    1.0000000
0-6 months    ki1000304-VITAMIN-A         INDIA                          >=30_0-6 months       VitA                 Control           2.4916667   0.9262336    6.7028474
0-6 months    ki1000304b-SAS-CompFeed     INDIA                          <25_0-6 months        Control              Control           1.0000000   1.0000000    1.0000000
0-6 months    ki1000304b-SAS-CompFeed     INDIA                          <25_0-6 months        Other                Control           1.1649408   0.9113507    1.4890943
0-6 months    ki1000304b-SAS-CompFeed     INDIA                          [25-30)_0-6 months    Control              Control           1.0000000   1.0000000    1.0000000
0-6 months    ki1000304b-SAS-CompFeed     INDIA                          [25-30)_0-6 months    Other                Control           0.8129789   0.5515288    1.1983684
0-6 months    ki1000304b-SAS-CompFeed     INDIA                          >=30_0-6 months       Control              Control           1.0000000   1.0000000    1.0000000
0-6 months    ki1000304b-SAS-CompFeed     INDIA                          >=30_0-6 months       Other                Control           0.9183673   0.5057799    1.6675208
0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          <25_0-6 months        Control              Control           1.0000000   1.0000000    1.0000000
0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          <25_0-6 months        Other                Control           1.1084967   0.7160264    1.7160890
0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          [25-30)_0-6 months    Control              Control           1.0000000   1.0000000    1.0000000
0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          [25-30)_0-6 months    Other                Control           0.7789474   0.5258958    1.1537628
0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          >=30_0-6 months       Control              Control           1.0000000   1.0000000    1.0000000
0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          >=30_0-6 months       Other                Control           1.0328638   0.4838651    2.2047629
0-6 months    ki1017093b-PROVIDE          BANGLADESH                     <25_0-6 months        Control              Control           1.0000000   1.0000000    1.0000000
0-6 months    ki1017093b-PROVIDE          BANGLADESH                     <25_0-6 months        Other                Control           1.1981742   0.6358472    2.2578088
0-6 months    ki1017093b-PROVIDE          BANGLADESH                     [25-30)_0-6 months    Control              Control           1.0000000   1.0000000    1.0000000
0-6 months    ki1017093b-PROVIDE          BANGLADESH                     [25-30)_0-6 months    Other                Control           0.9077778   0.3860077    2.1348289
0-6 months    ki1017093b-PROVIDE          BANGLADESH                     >=30_0-6 months       Control              Control           1.0000000   1.0000000    1.0000000
0-6 months    ki1017093b-PROVIDE          BANGLADESH                     >=30_0-6 months       Other                Control           0.6100840   0.2577006    1.4443213
0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   <25_0-6 months        Control              Control           1.0000000   1.0000000    1.0000000
0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   <25_0-6 months        Other                Control           0.5879539   0.3022074    1.1438827
0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   <25_0-6 months        Zinc                 Control           0.7310658   0.4308540    1.2404600
0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   [25-30)_0-6 months    Control              Control           1.0000000   1.0000000    1.0000000
0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   [25-30)_0-6 months    Other                Control           1.0397727   0.4797749    2.2534055
0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   [25-30)_0-6 months    Zinc                 Control           1.1730769   0.6164092    2.2324609
0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   >=30_0-6 months       Control              Control           1.0000000   1.0000000    1.0000000
0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   >=30_0-6 months       Other                Control           1.7748918   0.6603316    4.7706949
0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   >=30_0-6 months       Zinc                 Control           1.8915802   0.7746938    4.6186963
0-6 months    ki1112895-Guatemala BSC     GUATEMALA                      <25_0-6 months        Control              Control           1.0000000   1.0000000    1.0000000
0-6 months    ki1112895-Guatemala BSC     GUATEMALA                      <25_0-6 months        Other                Control           0.9235993   0.5216637    1.6352214
0-6 months    ki1112895-Guatemala BSC     GUATEMALA                      [25-30)_0-6 months    Control              Control           1.0000000   1.0000000    1.0000000
0-6 months    ki1112895-Guatemala BSC     GUATEMALA                      [25-30)_0-6 months    Other                Control           0.7812500   0.2514205    2.4276129
0-6 months    ki1112895-Guatemala BSC     GUATEMALA                      >=30_0-6 months       Control              Control           1.0000000   1.0000000    1.0000000
0-6 months    ki1112895-Guatemala BSC     GUATEMALA                      >=30_0-6 months       Other                Control           0.5641026   0.1799494    1.7683400
0-6 months    ki1119695-PROBIT            BELARUS                        <25_0-6 months        Control              Control           1.0000000   1.0000000    1.0000000
0-6 months    ki1119695-PROBIT            BELARUS                        <25_0-6 months        Maternal             Control           0.9788094   0.6701445    1.4296436
0-6 months    ki1119695-PROBIT            BELARUS                        [25-30)_0-6 months    Control              Control           1.0000000   1.0000000    1.0000000
0-6 months    ki1119695-PROBIT            BELARUS                        [25-30)_0-6 months    Maternal             Control           0.8456271   0.5681341    1.2586557
0-6 months    ki1119695-PROBIT            BELARUS                        >=30_0-6 months       Control              Control           1.0000000   1.0000000    1.0000000
0-6 months    ki1119695-PROBIT            BELARUS                        >=30_0-6 months       Maternal             Control           0.7714412   0.4714679    1.2622737
0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       <25_0-6 months        Control              Control           1.0000000   1.0000000    1.0000000
0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       <25_0-6 months        VitA                 Control           0.9853132   0.8607937    1.1278452
0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       [25-30)_0-6 months    Control              Control           1.0000000   1.0000000    1.0000000
0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       [25-30)_0-6 months    VitA                 Control           1.1045476   0.8938959    1.3648405
0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       >=30_0-6 months       Control              Control           1.0000000   1.0000000    1.0000000
0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       >=30_0-6 months       VitA                 Control           1.1499571   0.8888577    1.4877537
0-6 months    ki1135781-COHORTS           GUATEMALA                      <25_0-6 months        Control              Control           1.0000000   1.0000000    1.0000000
0-6 months    ki1135781-COHORTS           GUATEMALA                      <25_0-6 months        Other                Control           1.1132075   0.6183509    2.0040902
0-6 months    ki1135781-COHORTS           GUATEMALA                      [25-30)_0-6 months    Control              Control           1.0000000   1.0000000    1.0000000
0-6 months    ki1135781-COHORTS           GUATEMALA                      [25-30)_0-6 months    Other                Control           0.6525000   0.3024815    1.4075450
0-6 months    ki1135781-COHORTS           GUATEMALA                      >=30_0-6 months       Control              Control           1.0000000   1.0000000    1.0000000
0-6 months    ki1135781-COHORTS           GUATEMALA                      >=30_0-6 months       Other                Control           0.7528409   0.4630567    1.2239742
0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         <25_0-6 months        Control              Control           1.0000000   1.0000000    1.0000000
0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         <25_0-6 months        LNS                  Control           0.8763246   0.6315737    1.2159228
0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         [25-30)_0-6 months    Control              Control           1.0000000   1.0000000    1.0000000
0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         [25-30)_0-6 months    LNS                  Control           0.7311828   0.4423511    1.2086062
0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         >=30_0-6 months       Control              Control           1.0000000   1.0000000    1.0000000
0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         >=30_0-6 months       LNS                  Control           1.0739130   0.6860757    1.6809942
0-6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         <25_0-6 months        Control              Control           1.0000000   1.0000000    1.0000000
0-6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         <25_0-6 months        Maternal             Control           3.0799997   0.4169970   22.7493216
0-6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         [25-30)_0-6 months    Control              Control           1.0000000   1.0000000    1.0000000
0-6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         [25-30)_0-6 months    Maternal             Control           0.7500000   0.1607302    3.4996533
0-6 months    ki1148112-LCNI-5            MALAWI                         <25_0-6 months        Control              Control           1.0000000   1.0000000    1.0000000
0-6 months    ki1148112-LCNI-5            MALAWI                         <25_0-6 months        LNS                  Control           0.8248337   0.4197750    1.6207508
0-6 months    ki1148112-LCNI-5            MALAWI                         <25_0-6 months        Other                Control           0.5830721   0.2466171    1.3785463
0-6 months    ki1148112-LCNI-5            MALAWI                         [25-30)_0-6 months    Control              Control           1.0000000   1.0000000    1.0000000
0-6 months    ki1148112-LCNI-5            MALAWI                         [25-30)_0-6 months    LNS                  Control           0.8235294   0.3907426    1.7356712
0-6 months    ki1148112-LCNI-5            MALAWI                         [25-30)_0-6 months    Other                Control           1.4000000   0.6628010    2.9571471
0-6 months    ki1148112-LCNI-5            MALAWI                         >=30_0-6 months       Control              Control           1.0000000   1.0000000    1.0000000
0-6 months    ki1148112-LCNI-5            MALAWI                         >=30_0-6 months       LNS                  Control           0.5942857   0.2355547    1.4993354
0-6 months    ki1148112-LCNI-5            MALAWI                         >=30_0-6 months       Other                Control           1.5294118   0.6868520    3.4055375
0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     <25_0-6 months        Control              Control           1.0000000   1.0000000    1.0000000
0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     <25_0-6 months        Maternal             Control           0.8630052   0.8127227    0.9163986
0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     [25-30)_0-6 months    Control              Control           1.0000000   1.0000000    1.0000000
0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     [25-30)_0-6 months    Maternal             Control           0.8187301   0.7027717    0.9538219
0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     >=30_0-6 months       Control              Control           1.0000000   1.0000000    1.0000000
0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     >=30_0-6 months       Maternal             Control           0.7775565   0.6262009    0.9654954
6-24 months   iLiNS_DYADM_LNS             MALAWI                         <25_6-24 months       Control              Control           1.0000000   1.0000000    1.0000000
6-24 months   iLiNS_DYADM_LNS             MALAWI                         <25_6-24 months       LNS                  Control           1.7810000   1.1480004    2.7630314
6-24 months   iLiNS_DYADM_LNS             MALAWI                         [25-30)_6-24 months   Control              Control           1.0000000   1.0000000    1.0000000
6-24 months   iLiNS_DYADM_LNS             MALAWI                         [25-30)_6-24 months   LNS                  Control           0.9652406   0.5556176    1.6768539
6-24 months   iLiNS_DYADM_LNS             MALAWI                         >=30_6-24 months      Control              Control           1.0000000   1.0000000    1.0000000
6-24 months   iLiNS_DYADM_LNS             MALAWI                         >=30_6-24 months      LNS                  Control           0.6420118   0.3738113    1.1026398
6-24 months   iLiNS-Zinc_ZvLNS            BURKINA FASO                   <25_6-24 months       Control              Control           1.0000000   1.0000000    1.0000000
6-24 months   iLiNS-Zinc_ZvLNS            BURKINA FASO                   <25_6-24 months       Zinc                 Control           0.9898364   0.7238413    1.3535788
6-24 months   iLiNS-Zinc_ZvLNS            BURKINA FASO                   [25-30)_6-24 months   Control              Control           1.0000000   1.0000000    1.0000000
6-24 months   iLiNS-Zinc_ZvLNS            BURKINA FASO                   [25-30)_6-24 months   Zinc                 Control           0.9997959   0.6475657    1.5436144
6-24 months   iLiNS-Zinc_ZvLNS            BURKINA FASO                   >=30_6-24 months      Control              Control           1.0000000   1.0000000    1.0000000
6-24 months   iLiNS-Zinc_ZvLNS            BURKINA FASO                   >=30_6-24 months      Zinc                 Control           1.0052910   0.6378124    1.5844940
6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     <25_6-24 months       Control              Control           1.0000000   1.0000000    1.0000000
6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     <25_6-24 months       LNS                  Control           0.8264828   0.7128354    0.9582489
6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     <25_6-24 months       Other                Control           1.0761417   0.9572084    1.2098523
6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     [25-30)_6-24 months   Control              Control           1.0000000   1.0000000    1.0000000
6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     [25-30)_6-24 months   LNS                  Control           0.8567976   0.7038303    1.0430100
6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     [25-30)_6-24 months   Other                Control           0.8652668   0.7345191    1.0192882
6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     >=30_6-24 months      Control              Control           1.0000000   1.0000000    1.0000000
6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     >=30_6-24 months      LNS                  Control           0.8361185   0.6443709    1.0849251
6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     >=30_6-24 months      Other                Control           1.0878820   0.8855763    1.3364034
6-24 months   ki1000111-WASH-Kenya        KENYA                          <25_6-24 months       Control              Control           1.0000000   1.0000000    1.0000000
6-24 months   ki1000111-WASH-Kenya        KENYA                          <25_6-24 months       LNS                  Control           0.7461459   0.6180533    0.9007861
6-24 months   ki1000111-WASH-Kenya        KENYA                          <25_6-24 months       Other                Control           1.0548729   0.9237610    1.2045938
6-24 months   ki1000111-WASH-Kenya        KENYA                          [25-30)_6-24 months   Control              Control           1.0000000   1.0000000    1.0000000
6-24 months   ki1000111-WASH-Kenya        KENYA                          [25-30)_6-24 months   LNS                  Control           0.9424221   0.7484548    1.1866574
6-24 months   ki1000111-WASH-Kenya        KENYA                          [25-30)_6-24 months   Other                Control           1.1422152   0.9482052    1.3759211
6-24 months   ki1000111-WASH-Kenya        KENYA                          >=30_6-24 months      Control              Control           1.0000000   1.0000000    1.0000000
6-24 months   ki1000111-WASH-Kenya        KENYA                          >=30_6-24 months      LNS                  Control           0.9429126   0.7539814    1.1791858
6-24 months   ki1000111-WASH-Kenya        KENYA                          >=30_6-24 months      Other                Control           1.0721937   0.8957934    1.2833309
6-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       >=30_6-24 months      Control              Control           1.0000000   1.0000000    1.0000000
6-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       >=30_6-24 months      Maternal             Control           2.1250000   0.4047336   11.1570288
6-24 months   ki1000304-EU                INDIA                          <25_6-24 months       Control              Control           1.0000000   1.0000000    1.0000000
6-24 months   ki1000304-EU                INDIA                          <25_6-24 months       Zinc                 Control           0.8688556   0.7617610    0.9910063
6-24 months   ki1000304-EU                INDIA                          [25-30)_6-24 months   Control              Control           1.0000000   1.0000000    1.0000000
6-24 months   ki1000304-EU                INDIA                          [25-30)_6-24 months   Zinc                 Control           0.9488213   0.8084157    1.1136127
6-24 months   ki1000304-EU                INDIA                          >=30_6-24 months      Control              Control           1.0000000   1.0000000    1.0000000
6-24 months   ki1000304-EU                INDIA                          >=30_6-24 months      Zinc                 Control           1.0308931   0.7982196    1.3313888
6-24 months   ki1000304-VITAMIN-A         INDIA                          <25_6-24 months       Control              Control           1.0000000   1.0000000    1.0000000
6-24 months   ki1000304-VITAMIN-A         INDIA                          <25_6-24 months       VitA                 Control           0.9545011   0.8226908    1.1074300
6-24 months   ki1000304-VITAMIN-A         INDIA                          [25-30)_6-24 months   Control              Control           1.0000000   1.0000000    1.0000000
6-24 months   ki1000304-VITAMIN-A         INDIA                          [25-30)_6-24 months   VitA                 Control           0.8906110   0.7522710    1.0543913
6-24 months   ki1000304-VITAMIN-A         INDIA                          >=30_6-24 months      Control              Control           1.0000000   1.0000000    1.0000000
6-24 months   ki1000304-VITAMIN-A         INDIA                          >=30_6-24 months      VitA                 Control           1.1439021   0.9013489    1.4517264
6-24 months   ki1000304-Vitamin-B12       INDIA                          <25_6-24 months       Control              Control           1.0000000   1.0000000    1.0000000
6-24 months   ki1000304-Vitamin-B12       INDIA                          <25_6-24 months       Other                Control           1.0671551   0.8274880    1.3762373
6-24 months   ki1000304-Vitamin-B12       INDIA                          [25-30)_6-24 months   Control              Control           1.0000000   1.0000000    1.0000000
6-24 months   ki1000304-Vitamin-B12       INDIA                          [25-30)_6-24 months   Other                Control           0.8645358   0.6570225    1.1375898
6-24 months   ki1000304-Vitamin-B12       INDIA                          >=30_6-24 months      Control              Control           1.0000000   1.0000000    1.0000000
6-24 months   ki1000304-Vitamin-B12       INDIA                          >=30_6-24 months      Other                Control           0.7669617   0.5473380    1.0747110
6-24 months   ki1000304b-SAS-CompFeed     INDIA                          <25_6-24 months       Control              Control           1.0000000   1.0000000    1.0000000
6-24 months   ki1000304b-SAS-CompFeed     INDIA                          <25_6-24 months       Other                Control           0.8832408   0.6490949    1.2018493
6-24 months   ki1000304b-SAS-CompFeed     INDIA                          [25-30)_6-24 months   Control              Control           1.0000000   1.0000000    1.0000000
6-24 months   ki1000304b-SAS-CompFeed     INDIA                          [25-30)_6-24 months   Other                Control           0.9429363   0.6381683    1.3932513
6-24 months   ki1000304b-SAS-CompFeed     INDIA                          >=30_6-24 months      Control              Control           1.0000000   1.0000000    1.0000000
6-24 months   ki1000304b-SAS-CompFeed     INDIA                          >=30_6-24 months      Other                Control           1.2263736   1.0345491    1.4537660
6-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          <25_6-24 months       Control              Control           1.0000000   1.0000000    1.0000000
6-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          <25_6-24 months       Other                Control           0.8794137   0.6275524    1.2323568
6-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          [25-30)_6-24 months   Control              Control           1.0000000   1.0000000    1.0000000
6-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          [25-30)_6-24 months   Other                Control           0.8421053   0.5634165    1.2586448
6-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          >=30_6-24 months      Control              Control           1.0000000   1.0000000    1.0000000
6-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          >=30_6-24 months      Other                Control           0.7300725   0.5644995    0.9442095
6-24 months   ki1017093b-PROVIDE          BANGLADESH                     <25_6-24 months       Control              Control           1.0000000   1.0000000    1.0000000
6-24 months   ki1017093b-PROVIDE          BANGLADESH                     <25_6-24 months       Other                Control           0.9302326   0.3822415    2.2638372
6-24 months   ki1017093b-PROVIDE          BANGLADESH                     [25-30)_6-24 months   Control              Control           1.0000000   1.0000000    1.0000000
6-24 months   ki1017093b-PROVIDE          BANGLADESH                     [25-30)_6-24 months   Other                Control           0.4666667   0.1105183    1.9705126
6-24 months   ki1017093b-PROVIDE          BANGLADESH                     >=30_6-24 months      Control              Control           1.0000000   1.0000000    1.0000000
6-24 months   ki1017093b-PROVIDE          BANGLADESH                     >=30_6-24 months      Other                Control           0.4464286   0.1364056    1.4610728
6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   <25_6-24 months       Control              Control           1.0000000   1.0000000    1.0000000
6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   <25_6-24 months       Other                Control           0.8930601   0.5503085    1.4492895
6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   <25_6-24 months       Zinc                 Control           1.0773987   0.7182998    1.6160216
6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   [25-30)_6-24 months   Control              Control           1.0000000   1.0000000    1.0000000
6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   [25-30)_6-24 months   Other                Control           0.9567182   0.5967287    1.5338790
6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   [25-30)_6-24 months   Zinc                 Control           0.9733348   0.6540975    1.4483782
6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   >=30_6-24 months      Control              Control           1.0000000   1.0000000    1.0000000
6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   >=30_6-24 months      Other                Control           0.8684864   0.5106827    1.4769807
6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   >=30_6-24 months      Zinc                 Control           1.0407240   0.6745330    1.6057130
6-24 months   ki1112895-Guatemala BSC     GUATEMALA                      <25_6-24 months       Control              Control           1.0000000   1.0000000    1.0000000
6-24 months   ki1112895-Guatemala BSC     GUATEMALA                      <25_6-24 months       Other                Control           0.9208333   0.5134065    1.6515841
6-24 months   ki1112895-Guatemala BSC     GUATEMALA                      [25-30)_6-24 months   Control              Control           1.0000000   1.0000000    1.0000000
6-24 months   ki1112895-Guatemala BSC     GUATEMALA                      [25-30)_6-24 months   Other                Control           2.0533333   0.5951557    7.0841590
6-24 months   ki1112895-Guatemala BSC     GUATEMALA                      >=30_6-24 months      Control              Control           1.0000000   1.0000000    1.0000000
6-24 months   ki1112895-Guatemala BSC     GUATEMALA                      >=30_6-24 months      Other                Control           7.5000000   1.0503159   53.5553166
6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   <25_6-24 months       Control              Control           1.0000000   1.0000000    1.0000000
6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   <25_6-24 months       LNS                  Control           0.9103881   0.7105075    1.1664994
6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   [25-30)_6-24 months   Control              Control           1.0000000   1.0000000    1.0000000
6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   [25-30)_6-24 months   LNS                  Control           0.7809890   0.5813721    1.0491452
6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   >=30_6-24 months      Control              Control           1.0000000   1.0000000    1.0000000
6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   >=30_6-24 months      LNS                  Control           0.8498781   0.6701837    1.0777535
6-24 months   ki1119695-PROBIT            BELARUS                        <25_6-24 months       Control              Control           1.0000000   1.0000000    1.0000000
6-24 months   ki1119695-PROBIT            BELARUS                        <25_6-24 months       Maternal             Control           0.7725006   0.5124137    1.1646003
6-24 months   ki1119695-PROBIT            BELARUS                        [25-30)_6-24 months   Control              Control           1.0000000   1.0000000    1.0000000
6-24 months   ki1119695-PROBIT            BELARUS                        [25-30)_6-24 months   Maternal             Control           0.8161491   0.5712248    1.1660896
6-24 months   ki1119695-PROBIT            BELARUS                        >=30_6-24 months      Control              Control           1.0000000   1.0000000    1.0000000
6-24 months   ki1119695-PROBIT            BELARUS                        >=30_6-24 months      Maternal             Control           0.7552562   0.4519120    1.2622191
6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       <25_6-24 months       Control              Control           1.0000000   1.0000000    1.0000000
6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       <25_6-24 months       VitA                 Control           1.0446000   0.9197404    1.1864100
6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       [25-30)_6-24 months   Control              Control           1.0000000   1.0000000    1.0000000
6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       [25-30)_6-24 months   VitA                 Control           0.9403452   0.7887644    1.1210559
6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       >=30_6-24 months      Control              Control           1.0000000   1.0000000    1.0000000
6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       >=30_6-24 months      VitA                 Control           1.0971733   0.8678540    1.3870873
6-24 months   ki1135781-COHORTS           GUATEMALA                      <25_6-24 months       Control              Control           1.0000000   1.0000000    1.0000000
6-24 months   ki1135781-COHORTS           GUATEMALA                      <25_6-24 months       Other                Control           0.8753754   0.7194406    1.0651081
6-24 months   ki1135781-COHORTS           GUATEMALA                      [25-30)_6-24 months   Control              Control           1.0000000   1.0000000    1.0000000
6-24 months   ki1135781-COHORTS           GUATEMALA                      [25-30)_6-24 months   Other                Control           0.8088235   0.6028599    1.0851535
6-24 months   ki1135781-COHORTS           GUATEMALA                      >=30_6-24 months      Control              Control           1.0000000   1.0000000    1.0000000
6-24 months   ki1135781-COHORTS           GUATEMALA                      >=30_6-24 months      Other                Control           0.7015729   0.5395832    0.9121940
6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         <25_6-24 months       Control              Control           1.0000000   1.0000000    1.0000000
6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         <25_6-24 months       LNS                  Control           0.9885954   0.7849854    1.2450181
6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         [25-30)_6-24 months   Control              Control           1.0000000   1.0000000    1.0000000
6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         [25-30)_6-24 months   LNS                  Control           1.1802222   0.7579399    1.8377770
6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         >=30_6-24 months      Control              Control           1.0000000   1.0000000    1.0000000
6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         >=30_6-24 months      LNS                  Control           1.0438639   0.7680658    1.4186958
6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         <25_6-24 months       Control              Control           1.0000000   1.0000000    1.0000000
6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         <25_6-24 months       Maternal             Control           1.5755000   1.0486241    2.3671021
6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         [25-30)_6-24 months   Control              Control           1.0000000   1.0000000    1.0000000
6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         [25-30)_6-24 months   Maternal             Control           1.1029412   0.6966165    1.7462681
6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         >=30_6-24 months      Control              Control           1.0000000   1.0000000    1.0000000
6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         >=30_6-24 months      Maternal             Control           0.7597005   0.5086406    1.1346809
6-24 months   ki1148112-LCNI-5            MALAWI                         <25_6-24 months       Control              Control           1.0000000   1.0000000    1.0000000
6-24 months   ki1148112-LCNI-5            MALAWI                         <25_6-24 months       LNS                  Control           0.9222973   0.7026762    1.2105609
6-24 months   ki1148112-LCNI-5            MALAWI                         <25_6-24 months       Other                Control           0.8333333   0.6077221    1.1427006
6-24 months   ki1148112-LCNI-5            MALAWI                         [25-30)_6-24 months   Control              Control           1.0000000   1.0000000    1.0000000
6-24 months   ki1148112-LCNI-5            MALAWI                         [25-30)_6-24 months   LNS                  Control           1.1142857   0.7396741    1.6786212
6-24 months   ki1148112-LCNI-5            MALAWI                         [25-30)_6-24 months   Other                Control           1.3240741   0.8621352    2.0335236
6-24 months   ki1148112-LCNI-5            MALAWI                         >=30_6-24 months      Control              Control           1.0000000   1.0000000    1.0000000
6-24 months   ki1148112-LCNI-5            MALAWI                         >=30_6-24 months      LNS                  Control           1.1540816   0.8146562    1.6349282
6-24 months   ki1148112-LCNI-5            MALAWI                         >=30_6-24 months      Other                Control           1.1375000   0.7524481    1.7195953
6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     <25_6-24 months       Control              Control           1.0000000   1.0000000    1.0000000
6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     <25_6-24 months       Maternal             Control           1.0085436   0.8922568    1.1399860
6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     [25-30)_6-24 months   Control              Control           1.0000000   1.0000000    1.0000000
6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     [25-30)_6-24 months   Maternal             Control           0.9738775   0.7495297    1.2653766
6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     >=30_6-24 months      Control              Control           1.0000000   1.0000000    1.0000000
6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     >=30_6-24 months      Maternal             Control           1.3579255   0.8661933    2.1288107


### Parameter: PAR


agecat        studyid                     country                        intXmage              intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  --------------------------  -----------------------------  --------------------  -------------------  ---------------  -----------  -----------  -----------
0-6 months    iLiNS_DYADM_LNS             MALAWI                         <25_0-6 months        Control              NA                 0.1264822   -0.0496399    0.3026043
0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     <25_0-6 months        Control              NA                -0.0687468   -0.1966017    0.0591080
0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     [25-30)_0-6 months    Control              NA                -0.0013661   -0.1424248    0.1396925
0-6 months    ki1000125-AgaKhanUniv       PAKISTAN                       <25_0-6 months        Control              NA                 0.0000000   -0.1959964    0.1959964
0-6 months    ki1000125-AgaKhanUniv       PAKISTAN                       >=30_0-6 months       Control              NA                -0.1000000   -0.2496947    0.0496947
0-6 months    ki1000304-VITAMIN-A         INDIA                          <25_0-6 months        Control              NA                 0.0095554   -0.0553152    0.0744259
0-6 months    ki1000304-VITAMIN-A         INDIA                          [25-30)_0-6 months    Control              NA                -0.0299902   -0.1138354    0.0538551
0-6 months    ki1000304-VITAMIN-A         INDIA                          >=30_0-6 months       Control              NA                 0.1468417    0.0078266    0.2858568
0-6 months    ki1000304b-SAS-CompFeed     INDIA                          <25_0-6 months        Control              NA                 0.0204353   -0.0143287    0.0551992
0-6 months    ki1000304b-SAS-CompFeed     INDIA                          [25-30)_0-6 months    Control              NA                -0.0378007   -0.1216227    0.0460214
0-6 months    ki1000304b-SAS-CompFeed     INDIA                          >=30_0-6 months       Control              NA                -0.0141844   -0.1156531    0.0872843
0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          <25_0-6 months        Control              NA                 0.0283470   -0.0888531    0.1455470
0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          [25-30)_0-6 months    Control              NA                -0.0839360   -0.2224443    0.0545722
0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          >=30_0-6 months       Control              NA                 0.0076923   -0.1710502    0.1864348
0-6 months    ki1017093b-PROVIDE          BANGLADESH                     <25_0-6 months        Control              NA                 0.0175954   -0.0414701    0.0766609
0-6 months    ki1017093b-PROVIDE          BANGLADESH                     [25-30)_0-6 months    Control              NA                -0.0100012   -0.1007401    0.0807377
0-6 months    ki1017093b-PROVIDE          BANGLADESH                     >=30_0-6 months       Control              NA                -0.0595788   -0.1731173    0.0539596
0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   <25_0-6 months        Control              NA                -0.0242201   -0.0585093    0.0100691
0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   [25-30)_0-6 months    Control              NA                 0.0066047   -0.0251343    0.0383438
0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   >=30_0-6 months       Control              NA                 0.0227227   -0.0043654    0.0498108
0-6 months    ki1112895-Guatemala BSC     GUATEMALA                      <25_0-6 months        Control              NA                -0.0101810   -0.0831865    0.0628245
0-6 months    ki1112895-Guatemala BSC     GUATEMALA                      [25-30)_0-6 months    Control              NA                -0.0245614   -0.1385635    0.0894407
0-6 months    ki1112895-Guatemala BSC     GUATEMALA                      >=30_0-6 months       Control              NA                -0.0643939   -0.1925651    0.0637772
0-6 months    ki1119695-PROBIT            BELARUS                        <25_0-6 months        Control              NA                -0.0007809   -0.0146163    0.0130545
0-6 months    ki1119695-PROBIT            BELARUS                        [25-30)_0-6 months    Control              NA                -0.0049773   -0.0168520    0.0068974
0-6 months    ki1119695-PROBIT            BELARUS                        >=30_0-6 months       Control              NA                -0.0081618   -0.0236965    0.0073729
0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       <25_0-6 months        Control              NA                -0.0019896   -0.0202240    0.0162448
0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       [25-30)_0-6 months    Control              NA                 0.0121213   -0.0130482    0.0372908
0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       >=30_0-6 months       Control              NA                 0.0178546   -0.0138441    0.0495533
0-6 months    ki1135781-COHORTS           GUATEMALA                      <25_0-6 months        Control              NA                 0.0145278   -0.0652669    0.0943226
0-6 months    ki1135781-COHORTS           GUATEMALA                      [25-30)_0-6 months    Control              NA                -0.0694653   -0.1964037    0.0574731
0-6 months    ki1135781-COHORTS           GUATEMALA                      >=30_0-6 months       Control              NA                -0.0561200   -0.1525001    0.0402601
0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         <25_0-6 months        Control              NA                -0.0331929   -0.1191868    0.0528009
0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         [25-30)_0-6 months    Control              NA                -0.0834376   -0.2329092    0.0660339
0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         >=30_0-6 months       Control              NA                 0.0185488   -0.0953513    0.1324490
0-6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         <25_0-6 months        Control              NA                 0.1313131   -0.0433716    0.3059978
0-6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         [25-30)_0-6 months    Control              NA                -0.0555556   -0.3646644    0.2535533
0-6 months    ki1148112-LCNI-5            MALAWI                         <25_0-6 months        Control              NA                -0.0677100   -0.2052839    0.0698639
0-6 months    ki1148112-LCNI-5            MALAWI                         [25-30)_0-6 months    Control              NA                -0.0185185   -0.3008367    0.2637996
0-6 months    ki1148112-LCNI-5            MALAWI                         >=30_0-6 months       Control              NA                -0.0307692   -0.2681366    0.2065982
0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     <25_0-6 months        Control              NA                -0.0194062   -0.0275570   -0.0112554
0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     [25-30)_0-6 months    Control              NA                -0.0233581   -0.0414653   -0.0052510
0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     >=30_0-6 months       Control              NA                -0.0312154   -0.0584124   -0.0040185
6-24 months   iLiNS_DYADM_LNS             MALAWI                         <25_6-24 months       Control              NA                 0.0665455    0.0162615    0.1168294
6-24 months   iLiNS_DYADM_LNS             MALAWI                         [25-30)_6-24 months   Control              NA                -0.0055627   -0.0925055    0.0813801
6-24 months   iLiNS_DYADM_LNS             MALAWI                         >=30_6-24 months      Control              NA                -0.0684776   -0.1490037    0.0120484
6-24 months   iLiNS-Zinc_ZvLNS            BURKINA FASO                   <25_6-24 months       Control              NA                -0.0026323   -0.0831450    0.0778804
6-24 months   iLiNS-Zinc_ZvLNS            BURKINA FASO                   [25-30)_6-24 months   Control              NA                -0.0000434   -0.0922768    0.0921901
6-24 months   iLiNS-Zinc_ZvLNS            BURKINA FASO                   >=30_6-24 months      Control              NA                 0.0012626   -0.1074228    0.1099481
6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     <25_6-24 months       Control              NA                -0.0027097   -0.0337518    0.0283323
6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     [25-30)_6-24 months   Control              NA                -0.0450984   -0.0941145    0.0039176
6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     >=30_6-24 months      Control              NA                 0.0016518   -0.0627234    0.0660271
6-24 months   ki1000111-WASH-Kenya        KENYA                          <25_6-24 months       Control              NA                -0.0075729   -0.0292375    0.0140918
6-24 months   ki1000111-WASH-Kenya        KENYA                          [25-30)_6-24 months   Control              NA                 0.0108938   -0.0164960    0.0382836
6-24 months   ki1000111-WASH-Kenya        KENYA                          >=30_6-24 months      Control              NA                 0.0047873   -0.0233913    0.0329659
6-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       >=30_6-24 months      Control              NA                 0.0547667   -0.0692786    0.1788121
6-24 months   ki1000304-EU                INDIA                          <25_6-24 months       Control              NA                -0.0314457   -0.0607338   -0.0021576
6-24 months   ki1000304-EU                INDIA                          [25-30)_6-24 months   Control              NA                -0.0118267   -0.0478209    0.0241675
6-24 months   ki1000304-EU                INDIA                          >=30_6-24 months      Control              NA                 0.0074640   -0.0552326    0.0701606
6-24 months   ki1000304-VITAMIN-A         INDIA                          <25_6-24 months       Control              NA                -0.0076680   -0.0321383    0.0168023
6-24 months   ki1000304-VITAMIN-A         INDIA                          [25-30)_6-24 months   Control              NA                -0.0207838   -0.0510402    0.0094726
6-24 months   ki1000304-VITAMIN-A         INDIA                          >=30_6-24 months      Control              NA                 0.0270058   -0.0209306    0.0749422
6-24 months   ki1000304-Vitamin-B12       INDIA                          <25_6-24 months       Control              NA                 0.0229303   -0.0653043    0.1111650
6-24 months   ki1000304-Vitamin-B12       INDIA                          [25-30)_6-24 months   Control              NA                -0.0518698   -0.1529734    0.0492337
6-24 months   ki1000304-Vitamin-B12       INDIA                          >=30_6-24 months      Control              NA                -0.1067568   -0.2499663    0.0364528
6-24 months   ki1000304b-SAS-CompFeed     INDIA                          <25_6-24 months       Control              NA                -0.0259667   -0.0917554    0.0398220
6-24 months   ki1000304b-SAS-CompFeed     INDIA                          [25-30)_6-24 months   Control              NA                -0.0164721   -0.1286417    0.0956975
6-24 months   ki1000304b-SAS-CompFeed     INDIA                          >=30_6-24 months      Control              NA                 0.0503421    0.0007172    0.0999670
6-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          <25_6-24 months       Control              NA                -0.0553517   -0.2042381    0.0935348
6-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          [25-30)_6-24 months   Control              NA                -0.0800000   -0.2738620    0.1138620
6-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          >=30_6-24 months      Control              NA                -0.1942634   -0.3524672   -0.0360596
6-24 months   ki1017093b-PROVIDE          BANGLADESH                     <25_6-24 months       Control              NA                -0.0063559   -0.0857969    0.0730850
6-24 months   ki1017093b-PROVIDE          BANGLADESH                     [25-30)_6-24 months   Control              NA                -0.0423280   -0.1348180    0.0501619
6-24 months   ki1017093b-PROVIDE          BANGLADESH                     >=30_6-24 months      Control              NA                -0.1087719   -0.2911652    0.0736213
6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   <25_6-24 months       Control              NA                 0.0018114   -0.0487120    0.0523347
6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   [25-30)_6-24 months   Control              NA                -0.0046958   -0.0599287    0.0505371
6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   >=30_6-24 months      Control              NA                -0.0024474   -0.0570950    0.0522003
6-24 months   ki1112895-Guatemala BSC     GUATEMALA                      <25_6-24 months       Control              NA                -0.0122818   -0.0987954    0.0742317
6-24 months   ki1112895-Guatemala BSC     GUATEMALA                      [25-30)_6-24 months   Control              NA                 0.0764023   -0.0474070    0.2002117
6-24 months   ki1112895-Guatemala BSC     GUATEMALA                      >=30_6-24 months      Control              NA                 0.2576577    0.0949245    0.4203908
6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   <25_6-24 months       Control              NA                -0.0256908   -0.0923928    0.0410111
6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   [25-30)_6-24 months   Control              NA                -0.0592944   -0.1348805    0.0162916
6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   >=30_6-24 months      Control              NA                -0.0417636   -0.1026820    0.0191549
6-24 months   ki1119695-PROBIT            BELARUS                        <25_6-24 months       Control              NA                -0.0088261   -0.0237455    0.0060934
6-24 months   ki1119695-PROBIT            BELARUS                        [25-30)_6-24 months   Control              NA                -0.0055879   -0.0151721    0.0039963
6-24 months   ki1119695-PROBIT            BELARUS                        >=30_6-24 months      Control              NA                -0.0080542   -0.0236541    0.0075458
6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       <25_6-24 months       Control              NA                 0.0069474   -0.0130974    0.0269921
6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       [25-30)_6-24 months   Control              NA                -0.0103489   -0.0403463    0.0196485
6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       >=30_6-24 months      Control              NA                 0.0146035   -0.0214221    0.0506291
6-24 months   ki1135781-COHORTS           GUATEMALA                      <25_6-24 months       Control              NA                -0.0439076   -0.1083406    0.0205254
6-24 months   ki1135781-COHORTS           GUATEMALA                      [25-30)_6-24 months   Control              NA                -0.0746411   -0.1773746    0.0280923
6-24 months   ki1135781-COHORTS           GUATEMALA                      >=30_6-24 months      Control              NA                -0.1134316   -0.1963419   -0.0305213
6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         <25_6-24 months       Control              NA                -0.0039483   -0.0836312    0.0757347
6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         [25-30)_6-24 months   Control              NA                 0.0497271   -0.0750571    0.1745114
6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         >=30_6-24 months      Control              NA                 0.0155118   -0.0938033    0.1248268
6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         <25_6-24 months       Control              NA                 0.0668551    0.0115549    0.1221554
6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         [25-30)_6-24 months   Control              NA                 0.0223285   -0.0799694    0.1246265
6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         >=30_6-24 months      Control              NA                -0.0650691   -0.1628749    0.0327366
6-24 months   ki1148112-LCNI-5            MALAWI                         <25_6-24 months       Control              NA                -0.0483182   -0.1532731    0.0566366
6-24 months   ki1148112-LCNI-5            MALAWI                         [25-30)_6-24 months   Control              NA                 0.0625995   -0.0717255    0.1969245
6-24 months   ki1148112-LCNI-5            MALAWI                         >=30_6-24 months      Control              NA                 0.0594338   -0.0786200    0.1974876
6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     <25_6-24 months       Control              NA                 0.0007534   -0.0100900    0.0115968
6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     [25-30)_6-24 months   Control              NA                -0.0025118   -0.0274346    0.0224109
6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     >=30_6-24 months      Control              NA                 0.0249105   -0.0108133    0.0606343


### Parameter: PAF


agecat        studyid                     country                        intXmage              intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  --------------------------  -----------------------------  --------------------  -------------------  ---------------  -----------  -----------  -----------
0-6 months    iLiNS_DYADM_LNS             MALAWI                         <25_0-6 months        Control              NA                 0.5818182   -1.2416323    0.9219872
0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     <25_0-6 months        Control              NA                -0.5904139   -2.1350862    0.1931908
0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     [25-30)_0-6 months    Control              NA                -0.0166667   -4.5244649    0.8129029
0-6 months    ki1000125-AgaKhanUniv       PAKISTAN                       <25_0-6 months        Control              NA                 0.0000000   -1.6644083    0.6246821
0-6 months    ki1000125-AgaKhanUniv       PAKISTAN                       >=30_0-6 months       Control              NA                -0.2857143   -0.8024579    0.0828850
0-6 months    ki1000304-VITAMIN-A         INDIA                          <25_0-6 months        Control              NA                 0.0257378   -0.1656566    0.1857063
0-6 months    ki1000304-VITAMIN-A         INDIA                          [25-30)_0-6 months    Control              NA                -0.1210317   -0.5152286    0.1706122
0-6 months    ki1000304-VITAMIN-A         INDIA                          >=30_0-6 months       Control              NA                 0.4578005   -0.1646487    0.7475803
0-6 months    ki1000304b-SAS-CompFeed     INDIA                          <25_0-6 months        Control              NA                 0.0812386   -0.0666418    0.2086168
0-6 months    ki1000304b-SAS-CompFeed     INDIA                          [25-30)_0-6 months    Control              NA                -0.1134021   -0.3781156    0.1004643
0-6 months    ki1000304b-SAS-CompFeed     INDIA                          >=30_0-6 months       Control              NA                -0.0444444   -0.4101134    0.2263997
0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          <25_0-6 months        Control              NA                 0.0741071   -0.2891325    0.3349966
0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          [25-30)_0-6 months    Control              NA                -0.1953921   -0.5677340    0.0885174
0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          >=30_0-6 months       Control              NA                 0.0250000   -0.7691223    0.4626573
0-6 months    ki1017093b-PROVIDE          BANGLADESH                     <25_0-6 months        Control              NA                 0.1258454   -0.4157483    0.4602528
0-6 months    ki1017093b-PROVIDE          BANGLADESH                     [25-30)_0-6 months    Control              NA                -0.0772093   -1.0633030    0.4376105
0-6 months    ki1017093b-PROVIDE          BANGLADESH                     >=30_0-6 months       Control              NA                -0.3905724   -1.3589408    0.1802713
0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   <25_0-6 months        Control              NA                -0.3156065   -0.8409634    0.0598290
0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   [25-30)_0-6 months    Control              NA                 0.0915052   -0.4732490    0.4397670
0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   >=30_0-6 months       Control              NA                 0.3831301   -0.2620649    0.6984874
0-6 months    ki1112895-Guatemala BSC     GUATEMALA                      <25_0-6 months        Control              NA                -0.0378151   -0.3476364    0.2007783
0-6 months    ki1112895-Guatemala BSC     GUATEMALA                      [25-30)_0-6 months    Control              NA                -0.1400000   -1.0114145    0.3538875
0-6 months    ki1112895-Guatemala BSC     GUATEMALA                      >=30_0-6 months       Control              NA                -0.3090909   -1.0824173    0.1770530
0-6 months    ki1119695-PROBIT            BELARUS                        <25_0-6 months        Control              NA                -0.0111067   -0.2275537    0.1671754
0-6 months    ki1119695-PROBIT            BELARUS                        [25-30)_0-6 months    Control              NA                -0.0863997   -0.3110461    0.0997537
0-6 months    ki1119695-PROBIT            BELARUS                        >=30_0-6 months       Control              NA                -0.1346705   -0.4292393    0.0991871
0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       <25_0-6 months        Control              NA                -0.0111385   -0.1185532    0.0859611
0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       [25-30)_0-6 months    Control              NA                 0.0717717   -0.0897878    0.2093802
0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       >=30_0-6 months       Control              NA                 0.1021333   -0.0985569    0.2661604
0-6 months    ki1135781-COHORTS           GUATEMALA                      <25_0-6 months        Control              NA                 0.0508475   -0.2737381    0.2927192
0-6 months    ki1135781-COHORTS           GUATEMALA                      [25-30)_0-6 months    Control              NA                -0.2522686   -0.8088338    0.1330455
0-6 months    ki1135781-COHORTS           GUATEMALA                      >=30_0-6 months       Control              NA                -0.1563342   -0.4595514    0.0838905
0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         <25_0-6 months        Control              NA                -0.1160770   -0.4611630    0.1475092
0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         [25-30)_0-6 months    Control              NA                -0.3095975   -0.9999859    0.1424711
0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         >=30_0-6 months       Control              NA                 0.0568562   -0.3656453    0.3486447
0-6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         <25_0-6 months        Control              NA                 0.5909091   -1.3646960    0.9292275
0-6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         [25-30)_0-6 months    Control              NA                -0.2000000   -2.0312374    0.5249465
0-6 months    ki1148112-LCNI-5            MALAWI                         <25_0-6 months        Control              NA                -0.2358176   -0.8210639    0.1613446
0-6 months    ki1148112-LCNI-5            MALAWI                         [25-30)_0-6 months    Control              NA                -0.0384615   -0.8266152    0.4096171
0-6 months    ki1148112-LCNI-5            MALAWI                         >=30_0-6 months       Control              NA                -0.0869565   -1.0150523    0.4136755
0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     <25_0-6 months        Control              NA                -0.0736472   -0.1049159   -0.0432635
0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     [25-30)_0-6 months    Control              NA                -0.1035955   -0.1861320   -0.0268022
0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     >=30_0-6 months       Control              NA                -0.1273132   -0.2420318   -0.0231904
6-24 months   iLiNS_DYADM_LNS             MALAWI                         <25_6-24 months       Control              NA                 0.2672217    0.0401968    0.4405478
6-24 months   iLiNS_DYADM_LNS             MALAWI                         [25-30)_6-24 months   Control              NA                -0.0190058   -0.3638813    0.2386633
6-24 months   iLiNS_DYADM_LNS             MALAWI                         >=30_6-24 months      Control              NA                -0.1951613   -0.4497060    0.0146895
6-24 months   iLiNS-Zinc_ZvLNS            BURKINA FASO                   <25_6-24 months       Control              NA                -0.0076863   -0.2735177    0.2026560
6-24 months   iLiNS-Zinc_ZvLNS            BURKINA FASO                   [25-30)_6-24 months   Control              NA                -0.0001489   -0.3729480    0.2714233
6-24 months   iLiNS-Zinc_ZvLNS            BURKINA FASO                   >=30_6-24 months      Control              NA                 0.0040984   -0.4192752    0.3011785
6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     <25_6-24 months       Control              NA                -0.0073212   -0.0947813    0.0731519
6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     [25-30)_6-24 months   Control              NA                -0.1187893   -0.2557502    0.0032337
6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     >=30_6-24 months      Control              NA                 0.0039218   -0.1612686    0.1456139
6-24 months   ki1000111-WASH-Kenya        KENYA                          <25_6-24 months       Control              NA                -0.0289254   -0.1150891    0.0505804
6-24 months   ki1000111-WASH-Kenya        KENYA                          [25-30)_6-24 months   Control              NA                 0.0449152   -0.0749348    0.1514025
6-24 months   ki1000111-WASH-Kenya        KENYA                          >=30_6-24 months      Control              NA                 0.0190043   -0.0994814    0.1247215
6-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       >=30_6-24 months      Control              NA                 0.3176471   -0.8637248    0.7501747
6-24 months   ki1000304-EU                INDIA                          <25_6-24 months       Control              NA                -0.0681861   -0.1337565   -0.0064080
6-24 months   ki1000304-EU                INDIA                          [25-30)_6-24 months   Control              NA                -0.0250251   -0.1041130    0.0483977
6-24 months   ki1000304-EU                INDIA                          >=30_6-24 months      Control              NA                 0.0159350   -0.1274606    0.1410929
6-24 months   ki1000304-VITAMIN-A         INDIA                          <25_6-24 months       Control              NA                -0.0234781   -0.1012125    0.0487690
6-24 months   ki1000304-VITAMIN-A         INDIA                          [25-30)_6-24 months   Control              NA                -0.0584209   -0.1470047    0.0233215
6-24 months   ki1000304-VITAMIN-A         INDIA                          >=30_6-24 months      Control              NA                 0.0637061   -0.0565955    0.1703104
6-24 months   ki1000304-Vitamin-B12       INDIA                          <25_6-24 months       Control              NA                 0.0478261   -0.1552592    0.2152106
6-24 months   ki1000304-Vitamin-B12       INDIA                          [25-30)_6-24 months   Control              NA                -0.1139565   -0.3602601    0.0877487
6-24 months   ki1000304-Vitamin-B12       INDIA                          >=30_6-24 months      Control              NA                -0.2164384   -0.5481077    0.0441736
6-24 months   ki1000304b-SAS-CompFeed     INDIA                          <25_6-24 months       Control              NA                -0.0640185   -0.2464887    0.0917403
6-24 months   ki1000304b-SAS-CompFeed     INDIA                          [25-30)_6-24 months   Control              NA                -0.0331403   -0.2837015    0.1685148
6-24 months   ki1000304b-SAS-CompFeed     INDIA                          >=30_6-24 months      Control              NA                 0.1071800   -0.0057819    0.2074549
6-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          <25_6-24 months       Control              NA                -0.0957672   -0.3873308    0.1345209
6-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          [25-30)_6-24 months   Control              NA                -0.1363636   -0.5229283    0.1520794
6-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          >=30_6-24 months      Control              NA                -0.2665474   -0.5300079   -0.0484537
6-24 months   ki1017093b-PROVIDE          BANGLADESH                     <25_6-24 months       Control              NA                -0.0535714   -0.9886915    0.4418376
6-24 months   ki1017093b-PROVIDE          BANGLADESH                     [25-30)_6-24 months   Control              NA                -0.6530612   -2.7771994    0.2765509
6-24 months   ki1017093b-PROVIDE          BANGLADESH                     >=30_6-24 months      Control              NA                -0.6888889   -2.2921163    0.1335829
6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   <25_6-24 months       Control              NA                 0.0104347   -0.3279355    0.2625851
6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   [25-30)_6-24 months   Control              NA                -0.0247232   -0.3609614    0.2284442
6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   >=30_6-24 months      Control              NA                -0.0133540   -0.3600433    0.2449605
6-24 months   ki1112895-Guatemala BSC     GUATEMALA                      <25_6-24 months       Control              NA                -0.0360531   -0.3238637    0.1891868
6-24 months   ki1112895-Guatemala BSC     GUATEMALA                      [25-30)_6-24 months   Control              NA                 0.3590909   -0.5333556    0.7321140
6-24 months   ki1112895-Guatemala BSC     GUATEMALA                      >=30_6-24 months      Control              NA                 0.7944444   -0.2619420    0.9665174
6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   <25_6-24 months       Control              NA                -0.0733009   -0.2914943    0.1080295
6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   [25-30)_6-24 months   Control              NA                -0.1891775   -0.4674267    0.0363109
6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   >=30_6-24 months      Control              NA                -0.1302115   -0.3510070    0.0544993
6-24 months   ki1119695-PROBIT            BELARUS                        <25_6-24 months       Control              NA                -0.1356940   -0.3762529    0.0628170
6-24 months   ki1119695-PROBIT            BELARUS                        [25-30)_6-24 months   Control              NA                -0.1067051   -0.3069833    0.0628830
6-24 months   ki1119695-PROBIT            BELARUS                        >=30_6-24 months      Control              NA                -0.1492047   -0.4607551    0.0958981
6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       <25_6-24 months       Control              NA                 0.0323870   -0.0657093    0.1214538
6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       [25-30)_6-24 months   Control              NA                -0.0459205   -0.1878447    0.0790465
6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       >=30_6-24 months      Control              NA                 0.0685769   -0.1168554    0.2232217
6-24 months   ki1135781-COHORTS           GUATEMALA                      <25_6-24 months       Control              NA                -0.0671159   -0.1710186    0.0275677
6-24 months   ki1135781-COHORTS           GUATEMALA                      [25-30)_6-24 months   Control              NA                -0.1143695   -0.2867361    0.0349075
6-24 months   ki1135781-COHORTS           GUATEMALA                      >=30_6-24 months      Control              NA                -0.1970128   -0.3558439   -0.0567881
6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         <25_6-24 months       Control              NA                -0.0095350   -0.2215306    0.1656690
6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         [25-30)_6-24 months   Control              NA                 0.1348072   -0.2791484    0.4147992
6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         >=30_6-24 months      Control              NA                 0.0347578   -0.2440964    0.2511091
6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         <25_6-24 months       Control              NA                 0.2681317    0.0125504    0.4575610
6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         [25-30)_6-24 months   Control              NA                 0.0696517   -0.3109651    0.3397628
6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         >=30_6-24 months      Control              NA                -0.1836629   -0.4953965    0.0630861
6-24 months   ki1148112-LCNI-5            MALAWI                         <25_6-24 months       Control              NA                -0.0927569   -0.3144865    0.0915711
6-24 months   ki1148112-LCNI-5            MALAWI                         [25-30)_6-24 months   Control              NA                 0.1194332   -0.1788819    0.3422599
6-24 months   ki1148112-LCNI-5            MALAWI                         >=30_6-24 months      Control              NA                 0.1038591   -0.1736620    0.3157583
6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     <25_6-24 months       Control              NA                 0.0043267   -0.0599717    0.0647248
6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     [25-30)_6-24 months   Control              NA                -0.0142158   -0.1652249    0.1172231
6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     >=30_6-24 months      Control              NA                 0.1614616   -0.1053987    0.3638977
