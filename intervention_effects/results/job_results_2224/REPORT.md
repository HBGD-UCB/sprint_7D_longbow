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
      W: []
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
        value: FALSE        
      baseline_level:
        input: 'character'
        value: "[1,2)"
  output_directory:
    value: ''

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

* meducyrs
* agecat
* studyid
* country

## Data Summary

meducyrs   agecat      studyid                     country                        tr          stunted   n_cell       n
---------  ----------  --------------------------  -----------------------------  ---------  --------  -------  ------
Q4         24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control           0       61     332
Q4         24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control           1       26     332
Q4         24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS               0       60     332
Q4         24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS               1       17     332
Q4         24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other             0      115     332
Q4         24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other             1       53     332
Q3         24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control           0       41     338
Q3         24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control           1       27     338
Q3         24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS               0       64     338
Q3         24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS               1       35     338
Q3         24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other             0      111     338
Q3         24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other             1       60     338
Q1         24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control           0       24     251
Q1         24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control           1       31     251
Q1         24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS               0       33     251
Q1         24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS               1       27     251
Q1         24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other             0       71     251
Q1         24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other             1       65     251
Q2         24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control           0       30     266
Q2         24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control           1       31     266
Q2         24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS               0       34     266
Q2         24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS               1       37     266
Q2         24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other             0       60     266
Q2         24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other             1       74     266
Q3         6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Control           0       30     170
Q3         6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Control           1        6     170
Q3         6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     LNS               0       35     170
Q3         6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     LNS               1        5     170
Q3         6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Other             0       84     170
Q3         6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Other             1       10     170
Q4         6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Control           0       39     187
Q4         6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Control           1        7     187
Q4         6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     LNS               0       48     187
Q4         6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     LNS               1        5     187
Q4         6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Other             0       82     187
Q4         6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Other             1        6     187
Q2         6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Control           0       36     180
Q2         6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Control           1       12     180
Q2         6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     LNS               0       45     180
Q2         6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     LNS               1        5     180
Q2         6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Other             0       73     180
Q2         6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Other             1        9     180
Q1         6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Control           0       27     145
Q1         6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Control           1        4     145
Q1         6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     LNS               0       31     145
Q1         6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     LNS               1       14     145
Q1         6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Other             0       52     145
Q1         6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Other             1       17     145
Q1         24 months   ki1000111-WASH-Kenya        KENYA                          Control           0      237    1208
Q1         24 months   ki1000111-WASH-Kenya        KENYA                          Control           1      163    1208
Q1         24 months   ki1000111-WASH-Kenya        KENYA                          LNS               0      190    1208
Q1         24 months   ki1000111-WASH-Kenya        KENYA                          LNS               1       94    1208
Q1         24 months   ki1000111-WASH-Kenya        KENYA                          Other             0      328    1208
Q1         24 months   ki1000111-WASH-Kenya        KENYA                          Other             1      196    1208
Q4         24 months   ki1000111-WASH-Kenya        KENYA                          Control           0      148     555
Q4         24 months   ki1000111-WASH-Kenya        KENYA                          Control           1       35     555
Q4         24 months   ki1000111-WASH-Kenya        KENYA                          LNS               0       90     555
Q4         24 months   ki1000111-WASH-Kenya        KENYA                          LNS               1       21     555
Q4         24 months   ki1000111-WASH-Kenya        KENYA                          Other             0      200     555
Q4         24 months   ki1000111-WASH-Kenya        KENYA                          Other             1       61     555
Q1         6 months    ki1000111-WASH-Kenya        KENYA                          Control           0        9      35
Q1         6 months    ki1000111-WASH-Kenya        KENYA                          Control           1        1      35
Q1         6 months    ki1000111-WASH-Kenya        KENYA                          LNS               0        5      35
Q1         6 months    ki1000111-WASH-Kenya        KENYA                          LNS               1        3      35
Q1         6 months    ki1000111-WASH-Kenya        KENYA                          Other             0       13      35
Q1         6 months    ki1000111-WASH-Kenya        KENYA                          Other             1        4      35
Q3         24 months   ki1000111-WASH-Kenya        KENYA                          Control           0      140     498
Q3         24 months   ki1000111-WASH-Kenya        KENYA                          Control           1       34     498
Q3         24 months   ki1000111-WASH-Kenya        KENYA                          LNS               0       74     498
Q3         24 months   ki1000111-WASH-Kenya        KENYA                          LNS               1       31     498
Q3         24 months   ki1000111-WASH-Kenya        KENYA                          Other             0      156     498
Q3         24 months   ki1000111-WASH-Kenya        KENYA                          Other             1       63     498
Q3         6 months    ki1000111-WASH-Kenya        KENYA                          Control           0        8      24
Q3         6 months    ki1000111-WASH-Kenya        KENYA                          Control           1        1      24
Q3         6 months    ki1000111-WASH-Kenya        KENYA                          LNS               0        3      24
Q3         6 months    ki1000111-WASH-Kenya        KENYA                          LNS               1        0      24
Q3         6 months    ki1000111-WASH-Kenya        KENYA                          Other             0       10      24
Q3         6 months    ki1000111-WASH-Kenya        KENYA                          Other             1        2      24
Q4         6 months    ki1000111-WASH-Kenya        KENYA                          Control           0        6      15
Q4         6 months    ki1000111-WASH-Kenya        KENYA                          LNS               0        4      15
Q4         6 months    ki1000111-WASH-Kenya        KENYA                          Other             0        5      15
Q1         6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Control           0       45     122
Q1         6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Control           1       18     122
Q1         6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Maternal          0       45     122
Q1         6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Maternal          1       14     122
Q3         6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Control           0       17      30
Q3         6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Control           1        4      30
Q3         6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Maternal          0        8      30
Q3         6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Maternal          1        1      30
Q4         6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Control           0        7      15
Q4         6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Control           1        0      15
Q4         6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Maternal          0        7      15
Q4         6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Maternal          1        1      15
Q2         6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Control           0        4      17
Q2         6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Control           1        1      17
Q2         6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Maternal          0        8      17
Q2         6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Maternal          1        4      17
Q1         Birth       ki1000125-AgaKhanUniv       PAKISTAN                       Control           0        1       3
Q1         Birth       ki1000125-AgaKhanUniv       PAKISTAN                       Maternal          0        2       3
Q3         Birth       ki1000125-AgaKhanUniv       PAKISTAN                       Control           0        1       1
Q1         24 months   ki1000304-EU                INDIA                          Control           0       14     103
Q1         24 months   ki1000304-EU                INDIA                          Control           1       36     103
Q1         24 months   ki1000304-EU                INDIA                          Zinc              0       20     103
Q1         24 months   ki1000304-EU                INDIA                          Zinc              1       33     103
Q3         6 months    ki1000304-EU                INDIA                          Control           0       27      58
Q3         6 months    ki1000304-EU                INDIA                          Control           1        8      58
Q3         6 months    ki1000304-EU                INDIA                          Zinc              0       21      58
Q3         6 months    ki1000304-EU                INDIA                          Zinc              1        2      58
Q3         24 months   ki1000304-EU                INDIA                          Control           0       10      38
Q3         24 months   ki1000304-EU                INDIA                          Control           1        9      38
Q3         24 months   ki1000304-EU                INDIA                          Zinc              0       11      38
Q3         24 months   ki1000304-EU                INDIA                          Zinc              1        8      38
Q2         24 months   ki1000304-EU                INDIA                          Control           0       17     100
Q2         24 months   ki1000304-EU                INDIA                          Control           1       34     100
Q2         24 months   ki1000304-EU                INDIA                          Zinc              0       20     100
Q2         24 months   ki1000304-EU                INDIA                          Zinc              1       29     100
Q2         6 months    ki1000304-EU                INDIA                          Control           0       57     159
Q2         6 months    ki1000304-EU                INDIA                          Control           1       34     159
Q2         6 months    ki1000304-EU                INDIA                          Zinc              0       49     159
Q2         6 months    ki1000304-EU                INDIA                          Zinc              1       19     159
Q4         6 months    ki1000304-EU                INDIA                          Control           0        1       9
Q4         6 months    ki1000304-EU                INDIA                          Control           1        2       9
Q4         6 months    ki1000304-EU                INDIA                          Zinc              0        6       9
Q4         6 months    ki1000304-EU                INDIA                          Zinc              1        0       9
Q1         6 months    ki1000304-EU                INDIA                          Control           0       44     136
Q1         6 months    ki1000304-EU                INDIA                          Control           1       25     136
Q1         6 months    ki1000304-EU                INDIA                          Zinc              0       41     136
Q1         6 months    ki1000304-EU                INDIA                          Zinc              1       26     136
Q4         24 months   ki1000304-EU                INDIA                          Control           0        5      10
Q4         24 months   ki1000304-EU                INDIA                          Control           1        0      10
Q4         24 months   ki1000304-EU                INDIA                          Zinc              0        4      10
Q4         24 months   ki1000304-EU                INDIA                          Zinc              1        1      10
Q1         6 months    ki1000304-VITAMIN-A         INDIA                          Control           0      378    1265
Q1         6 months    ki1000304-VITAMIN-A         INDIA                          Control           1      268    1265
Q1         6 months    ki1000304-VITAMIN-A         INDIA                          VitA              0      372    1265
Q1         6 months    ki1000304-VITAMIN-A         INDIA                          VitA              1      247    1265
Q2         6 months    ki1000304-VITAMIN-A         INDIA                          Control           0      274     817
Q2         6 months    ki1000304-VITAMIN-A         INDIA                          Control           1      132     817
Q2         6 months    ki1000304-VITAMIN-A         INDIA                          VitA              0      288     817
Q2         6 months    ki1000304-VITAMIN-A         INDIA                          VitA              1      123     817
Q3         6 months    ki1000304-VITAMIN-A         INDIA                          Control           0      144     377
Q3         6 months    ki1000304-VITAMIN-A         INDIA                          Control           1       48     377
Q3         6 months    ki1000304-VITAMIN-A         INDIA                          VitA              0      149     377
Q3         6 months    ki1000304-VITAMIN-A         INDIA                          VitA              1       36     377
Q4         6 months    ki1000304-VITAMIN-A         INDIA                          Control           0       17      47
Q4         6 months    ki1000304-VITAMIN-A         INDIA                          Control           1        3      47
Q4         6 months    ki1000304-VITAMIN-A         INDIA                          VitA              0       22      47
Q4         6 months    ki1000304-VITAMIN-A         INDIA                          VitA              1        5      47
Q4         6 months    ki1000304-Vitamin-B12       INDIA                          Control           0        5      32
Q4         6 months    ki1000304-Vitamin-B12       INDIA                          Control           1        1      32
Q4         6 months    ki1000304-Vitamin-B12       INDIA                          Other             0       20      32
Q4         6 months    ki1000304-Vitamin-B12       INDIA                          Other             1        6      32
Q3         24 months   ki1000304-Vitamin-B12       INDIA                          Control           0        4      33
Q3         24 months   ki1000304-Vitamin-B12       INDIA                          Control           1        4      33
Q3         24 months   ki1000304-Vitamin-B12       INDIA                          Other             0       10      33
Q3         24 months   ki1000304-Vitamin-B12       INDIA                          Other             1       15      33
Q1         6 months    ki1000304-Vitamin-B12       INDIA                          Control           0        0      15
Q1         6 months    ki1000304-Vitamin-B12       INDIA                          Control           1        1      15
Q1         6 months    ki1000304-Vitamin-B12       INDIA                          Other             0        9      15
Q1         6 months    ki1000304-Vitamin-B12       INDIA                          Other             1        5      15
Q2         6 months    ki1000304-Vitamin-B12       INDIA                          Control           0        3      12
Q2         6 months    ki1000304-Vitamin-B12       INDIA                          Control           1        2      12
Q2         6 months    ki1000304-Vitamin-B12       INDIA                          Other             0        4      12
Q2         6 months    ki1000304-Vitamin-B12       INDIA                          Other             1        3      12
Q4         24 months   ki1000304-Vitamin-B12       INDIA                          Control           0        9      37
Q4         24 months   ki1000304-Vitamin-B12       INDIA                          Control           1        2      37
Q4         24 months   ki1000304-Vitamin-B12       INDIA                          Other             0       22      37
Q4         24 months   ki1000304-Vitamin-B12       INDIA                          Other             1        4      37
Q1         24 months   ki1000304-Vitamin-B12       INDIA                          Control           0        8      36
Q1         24 months   ki1000304-Vitamin-B12       INDIA                          Control           1        3      36
Q1         24 months   ki1000304-Vitamin-B12       INDIA                          Other             0        4      36
Q1         24 months   ki1000304-Vitamin-B12       INDIA                          Other             1       21      36
Q2         24 months   ki1000304-Vitamin-B12       INDIA                          Control           0        3      26
Q2         24 months   ki1000304-Vitamin-B12       INDIA                          Control           1        5      26
Q2         24 months   ki1000304-Vitamin-B12       INDIA                          Other             0       13      26
Q2         24 months   ki1000304-Vitamin-B12       INDIA                          Other             1        5      26
Q3         6 months    ki1000304-Vitamin-B12       INDIA                          Control           0        3      22
Q3         6 months    ki1000304-Vitamin-B12       INDIA                          Control           1        2      22
Q3         6 months    ki1000304-Vitamin-B12       INDIA                          Other             0       14      22
Q3         6 months    ki1000304-Vitamin-B12       INDIA                          Other             1        3      22
Q1         6 months    ki1000304-ZnMort            INDIA                          Control           0       27      76
Q1         6 months    ki1000304-ZnMort            INDIA                          Control           1       18      76
Q1         6 months    ki1000304-ZnMort            INDIA                          Zinc              0       18      76
Q1         6 months    ki1000304-ZnMort            INDIA                          Zinc              1       13      76
Q3         6 months    ki1000304-ZnMort            INDIA                          Control           0       12      22
Q3         6 months    ki1000304-ZnMort            INDIA                          Control           1        4      22
Q3         6 months    ki1000304-ZnMort            INDIA                          Zinc              0        5      22
Q3         6 months    ki1000304-ZnMort            INDIA                          Zinc              1        1      22
Q2         24 months   ki1000304-ZnMort            INDIA                          Control           0       10      39
Q2         24 months   ki1000304-ZnMort            INDIA                          Control           1       13      39
Q2         24 months   ki1000304-ZnMort            INDIA                          Zinc              0       10      39
Q2         24 months   ki1000304-ZnMort            INDIA                          Zinc              1        6      39
Q1         24 months   ki1000304-ZnMort            INDIA                          Control           0       11      81
Q1         24 months   ki1000304-ZnMort            INDIA                          Control           1       32      81
Q1         24 months   ki1000304-ZnMort            INDIA                          Zinc              0       11      81
Q1         24 months   ki1000304-ZnMort            INDIA                          Zinc              1       27      81
Q3         24 months   ki1000304-ZnMort            INDIA                          Control           0        6      19
Q3         24 months   ki1000304-ZnMort            INDIA                          Control           1        3      19
Q3         24 months   ki1000304-ZnMort            INDIA                          Zinc              0        9      19
Q3         24 months   ki1000304-ZnMort            INDIA                          Zinc              1        1      19
Q2         6 months    ki1000304-ZnMort            INDIA                          Control           0       16      47
Q2         6 months    ki1000304-ZnMort            INDIA                          Control           1        9      47
Q2         6 months    ki1000304-ZnMort            INDIA                          Zinc              0       15      47
Q2         6 months    ki1000304-ZnMort            INDIA                          Zinc              1        7      47
Q4         24 months   ki1000304-ZnMort            INDIA                          Zinc              1        1       1
Q2         6 months    ki1000304b-SAS-CompFeed     INDIA                          Control           0       63     192
Q2         6 months    ki1000304b-SAS-CompFeed     INDIA                          Control           1       26     192
Q2         6 months    ki1000304b-SAS-CompFeed     INDIA                          Other             0       74     192
Q2         6 months    ki1000304b-SAS-CompFeed     INDIA                          Other             1       29     192
Q1         6 months    ki1000304b-SAS-CompFeed     INDIA                          Control           0       93     284
Q1         6 months    ki1000304b-SAS-CompFeed     INDIA                          Control           1       47     284
Q1         6 months    ki1000304b-SAS-CompFeed     INDIA                          Other             0       89     284
Q1         6 months    ki1000304b-SAS-CompFeed     INDIA                          Other             1       55     284
Q2         Birth       ki1000304b-SAS-CompFeed     INDIA                          Control           0       20      55
Q2         Birth       ki1000304b-SAS-CompFeed     INDIA                          Control           1        9      55
Q2         Birth       ki1000304b-SAS-CompFeed     INDIA                          Other             0       23      55
Q2         Birth       ki1000304b-SAS-CompFeed     INDIA                          Other             1        3      55
Q3         6 months    ki1000304b-SAS-CompFeed     INDIA                          Control           0       49     124
Q3         6 months    ki1000304b-SAS-CompFeed     INDIA                          Control           1        9     124
Q3         6 months    ki1000304b-SAS-CompFeed     INDIA                          Other             0       61     124
Q3         6 months    ki1000304b-SAS-CompFeed     INDIA                          Other             1        5     124
Q3         Birth       ki1000304b-SAS-CompFeed     INDIA                          Control           0       12      25
Q3         Birth       ki1000304b-SAS-CompFeed     INDIA                          Control           1        0      25
Q3         Birth       ki1000304b-SAS-CompFeed     INDIA                          Other             0        9      25
Q3         Birth       ki1000304b-SAS-CompFeed     INDIA                          Other             1        4      25
Q4         6 months    ki1000304b-SAS-CompFeed     INDIA                          Control           0        8      17
Q4         6 months    ki1000304b-SAS-CompFeed     INDIA                          Control           1        0      17
Q4         6 months    ki1000304b-SAS-CompFeed     INDIA                          Other             0        7      17
Q4         6 months    ki1000304b-SAS-CompFeed     INDIA                          Other             1        2      17
Q1         Birth       ki1000304b-SAS-CompFeed     INDIA                          Control           0       21      63
Q1         Birth       ki1000304b-SAS-CompFeed     INDIA                          Control           1        8      63
Q1         Birth       ki1000304b-SAS-CompFeed     INDIA                          Other             0       21      63
Q1         Birth       ki1000304b-SAS-CompFeed     INDIA                          Other             1       13      63
Q4         Birth       ki1000304b-SAS-CompFeed     INDIA                          Other             1        1       1
Q1         6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Control           0       37     288
Q1         6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Control           1       38     288
Q1         6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Other             0      128     288
Q1         6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Other             1       85     288
Q4         6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Control           0        2      13
Q4         6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Control           1        0      13
Q4         6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Other             0        8      13
Q4         6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Other             1        3      13
Q3         6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Control           0        2      20
Q3         6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Control           1        2      20
Q3         6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Other             0       10      20
Q3         6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Other             1        6      20
Q2         6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Control           0        2      34
Q2         6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Control           1        7      34
Q2         6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Other             0       15      34
Q2         6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Other             1       10      34
Q1         6 months    ki1017093b-PROVIDE          BANGLADESH                     Control           0        5      21
Q1         6 months    ki1017093b-PROVIDE          BANGLADESH                     Control           1        0      21
Q1         6 months    ki1017093b-PROVIDE          BANGLADESH                     Other             0       12      21
Q1         6 months    ki1017093b-PROVIDE          BANGLADESH                     Other             1        4      21
Q2         6 months    ki1017093b-PROVIDE          BANGLADESH                     Control           0        2      18
Q2         6 months    ki1017093b-PROVIDE          BANGLADESH                     Control           1        1      18
Q2         6 months    ki1017093b-PROVIDE          BANGLADESH                     Other             0       12      18
Q2         6 months    ki1017093b-PROVIDE          BANGLADESH                     Other             1        3      18
Q4         6 months    ki1017093b-PROVIDE          BANGLADESH                     Control           1        1       1
Q3         6 months    ki1017093b-PROVIDE          BANGLADESH                     Control           0        1       6
Q3         6 months    ki1017093b-PROVIDE          BANGLADESH                     Control           1        0       6
Q3         6 months    ki1017093b-PROVIDE          BANGLADESH                     Other             0        4       6
Q3         6 months    ki1017093b-PROVIDE          BANGLADESH                     Other             1        1       6
Q3         24 months   ki1017093b-PROVIDE          BANGLADESH                     Other             0        1       1
Q2         24 months   ki1017093b-PROVIDE          BANGLADESH                     Other             0        1       1
Q2         6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control           0      353    1574
Q2         6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control           1       42    1574
Q2         6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other             0      346    1574
Q2         6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other             1       43    1574
Q2         6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc              0      702    1574
Q2         6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc              1       88    1574
Q3         6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control           0       16      69
Q3         6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control           1        2      69
Q3         6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other             0       15      69
Q3         6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other             1        0      69
Q3         6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc              0       33      69
Q3         6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc              1        3      69
Q1         6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control           0        8      55
Q1         6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control           1        3      55
Q1         6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other             0       15      55
Q1         6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other             1        2      55
Q1         6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc              0       25      55
Q1         6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc              1        2      55
Q2         24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control           0        1       4
Q2         24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control           1        0       4
Q2         24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other             0        2       4
Q2         24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other             1        0       4
Q2         24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc              0        0       4
Q2         24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc              1        1       4
Q4         6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control           0        1       3
Q4         6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other             0        1       3
Q4         6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc              0        1       3
Q1         6 months    ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc              0      351     402
Q1         6 months    ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc              1       51     402
Q1         24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc              0      510     805
Q1         24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc              1      295     805
Q2         6 months    ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc              0       72      81
Q2         6 months    ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc              1        9      81
Q4         24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc              0       29      38
Q4         24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc              1        9      38
Q2         24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc              0      105     152
Q2         24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc              1       47     152
Q4         6 months    ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc              0       17      18
Q4         6 months    ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc              1        1      18
Q4         6 months    ki1112895-Guatemala BSC     GUATEMALA                      Control           0       30      91
Q4         6 months    ki1112895-Guatemala BSC     GUATEMALA                      Control           1       10      91
Q4         6 months    ki1112895-Guatemala BSC     GUATEMALA                      Other             0       37      91
Q4         6 months    ki1112895-Guatemala BSC     GUATEMALA                      Other             1       14      91
Q1         6 months    ki1112895-Guatemala BSC     GUATEMALA                      Control           0        8      32
Q1         6 months    ki1112895-Guatemala BSC     GUATEMALA                      Control           1        8      32
Q1         6 months    ki1112895-Guatemala BSC     GUATEMALA                      Other             0        7      32
Q1         6 months    ki1112895-Guatemala BSC     GUATEMALA                      Other             1        9      32
Q2         6 months    ki1112895-Guatemala BSC     GUATEMALA                      Control           0       21      62
Q2         6 months    ki1112895-Guatemala BSC     GUATEMALA                      Control           1       11      62
Q2         6 months    ki1112895-Guatemala BSC     GUATEMALA                      Other             0       23      62
Q2         6 months    ki1112895-Guatemala BSC     GUATEMALA                      Other             1        7      62
Q3         6 months    ki1112895-Guatemala BSC     GUATEMALA                      Control           0       10      27
Q3         6 months    ki1112895-Guatemala BSC     GUATEMALA                      Control           1        5      27
Q3         6 months    ki1112895-Guatemala BSC     GUATEMALA                      Other             0       11      27
Q3         6 months    ki1112895-Guatemala BSC     GUATEMALA                      Other             1        1      27
Q3         Birth       ki1119695-PROBIT            BELARUS                        Control           0     5511   11124
Q3         Birth       ki1119695-PROBIT            BELARUS                        Control           1       19   11124
Q3         Birth       ki1119695-PROBIT            BELARUS                        Maternal          0     5585   11124
Q3         Birth       ki1119695-PROBIT            BELARUS                        Maternal          1        9   11124
Q3         6 months    ki1119695-PROBIT            BELARUS                        Control           0     5338   11489
Q3         6 months    ki1119695-PROBIT            BELARUS                        Control           1      422   11489
Q3         6 months    ki1119695-PROBIT            BELARUS                        Maternal          0     5398   11489
Q3         6 months    ki1119695-PROBIT            BELARUS                        Maternal          1      331   11489
Q4         Birth       ki1119695-PROBIT            BELARUS                        Control           0     1046    2248
Q4         Birth       ki1119695-PROBIT            BELARUS                        Control           1        1    2248
Q4         Birth       ki1119695-PROBIT            BELARUS                        Maternal          0     1200    2248
Q4         Birth       ki1119695-PROBIT            BELARUS                        Maternal          1        1    2248
Q4         6 months    ki1119695-PROBIT            BELARUS                        Control           0     1063    2449
Q4         6 months    ki1119695-PROBIT            BELARUS                        Control           1       61    2449
Q4         6 months    ki1119695-PROBIT            BELARUS                        Maternal          0     1281    2449
Q4         6 months    ki1119695-PROBIT            BELARUS                        Maternal          1       44    2449
Q2         Birth       ki1119695-PROBIT            BELARUS                        Control           0      194     483
Q2         Birth       ki1119695-PROBIT            BELARUS                        Control           1        1     483
Q2         Birth       ki1119695-PROBIT            BELARUS                        Maternal          0      286     483
Q2         Birth       ki1119695-PROBIT            BELARUS                        Maternal          1        2     483
Q3         24 months   ki1119695-PROBIT            BELARUS                        Control           0      260     685
Q3         24 months   ki1119695-PROBIT            BELARUS                        Control           1       42     685
Q3         24 months   ki1119695-PROBIT            BELARUS                        Maternal          0      338     685
Q3         24 months   ki1119695-PROBIT            BELARUS                        Maternal          1       45     685
Q2         6 months    ki1119695-PROBIT            BELARUS                        Control           0      193     539
Q2         6 months    ki1119695-PROBIT            BELARUS                        Control           1       31     539
Q2         6 months    ki1119695-PROBIT            BELARUS                        Maternal          0      284     539
Q2         6 months    ki1119695-PROBIT            BELARUS                        Maternal          1       31     539
Q4         24 months   ki1119695-PROBIT            BELARUS                        Control           0       63     134
Q4         24 months   ki1119695-PROBIT            BELARUS                        Control           1        4     134
Q4         24 months   ki1119695-PROBIT            BELARUS                        Maternal          0       62     134
Q4         24 months   ki1119695-PROBIT            BELARUS                        Maternal          1        5     134
Q2         24 months   ki1119695-PROBIT            BELARUS                        Control           0        4      22
Q2         24 months   ki1119695-PROBIT            BELARUS                        Control           1        1      22
Q2         24 months   ki1119695-PROBIT            BELARUS                        Maternal          0       14      22
Q2         24 months   ki1119695-PROBIT            BELARUS                        Maternal          1        3      22
Q1         Birth       ki1119695-PROBIT            BELARUS                        Control           0        7      29
Q1         Birth       ki1119695-PROBIT            BELARUS                        Maternal          0       22      29
Q1         6 months    ki1119695-PROBIT            BELARUS                        Control           0        2      23
Q1         6 months    ki1119695-PROBIT            BELARUS                        Control           1        2      23
Q1         6 months    ki1119695-PROBIT            BELARUS                        Maternal          0       17      23
Q1         6 months    ki1119695-PROBIT            BELARUS                        Maternal          1        2      23
Q3         Birth       ki1126311-ZVITAMBO          ZIMBABWE                       Control           0     1019    4485
Q3         Birth       ki1126311-ZVITAMBO          ZIMBABWE                       Control           1       99    4485
Q3         Birth       ki1126311-ZVITAMBO          ZIMBABWE                       VitA              0     2969    4485
Q3         Birth       ki1126311-ZVITAMBO          ZIMBABWE                       VitA              1      398    4485
Q3         6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control           0      519    2532
Q3         6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control           1      109    2532
Q3         6 months    ki1126311-ZVITAMBO          ZIMBABWE                       VitA              0     1543    2532
Q3         6 months    ki1126311-ZVITAMBO          ZIMBABWE                       VitA              1      361    2532
Q4         Birth       ki1126311-ZVITAMBO          ZIMBABWE                       Control           0     1927    8697
Q4         Birth       ki1126311-ZVITAMBO          ZIMBABWE                       Control           1      243    8697
Q4         Birth       ki1126311-ZVITAMBO          ZIMBABWE                       VitA              0     5912    8697
Q4         Birth       ki1126311-ZVITAMBO          ZIMBABWE                       VitA              1      615    8697
Q4         6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control           0     1008    4882
Q4         6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control           1      183    4882
Q4         6 months    ki1126311-ZVITAMBO          ZIMBABWE                       VitA              0     3118    4882
Q4         6 months    ki1126311-ZVITAMBO          ZIMBABWE                       VitA              1      573    4882
Q1         Birth       ki1126311-ZVITAMBO          ZIMBABWE                       Control           0       48     208
Q1         Birth       ki1126311-ZVITAMBO          ZIMBABWE                       Control           1        7     208
Q1         Birth       ki1126311-ZVITAMBO          ZIMBABWE                       VitA              0      138     208
Q1         Birth       ki1126311-ZVITAMBO          ZIMBABWE                       VitA              1       15     208
Q2         Birth       ki1126311-ZVITAMBO          ZIMBABWE                       Control           0       92     420
Q2         Birth       ki1126311-ZVITAMBO          ZIMBABWE                       Control           1       11     420
Q2         Birth       ki1126311-ZVITAMBO          ZIMBABWE                       VitA              0      273     420
Q2         Birth       ki1126311-ZVITAMBO          ZIMBABWE                       VitA              1       44     420
Q2         6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control           0       52     233
Q2         6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control           1       14     233
Q2         6 months    ki1126311-ZVITAMBO          ZIMBABWE                       VitA              0      142     233
Q2         6 months    ki1126311-ZVITAMBO          ZIMBABWE                       VitA              1       25     233
Q4         24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control           0        5      23
Q4         24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control           1        3      23
Q4         24 months   ki1126311-ZVITAMBO          ZIMBABWE                       VitA              0        5      23
Q4         24 months   ki1126311-ZVITAMBO          ZIMBABWE                       VitA              1       10      23
Q1         6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control           0       23     118
Q1         6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control           1        7     118
Q1         6 months    ki1126311-ZVITAMBO          ZIMBABWE                       VitA              0       70     118
Q1         6 months    ki1126311-ZVITAMBO          ZIMBABWE                       VitA              1       18     118
Q3         24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control           0        1       9
Q3         24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control           1        1       9
Q3         24 months   ki1126311-ZVITAMBO          ZIMBABWE                       VitA              0        2       9
Q3         24 months   ki1126311-ZVITAMBO          ZIMBABWE                       VitA              1        5       9
Q2         24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control           0        0       4
Q2         24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control           1        1       4
Q2         24 months   ki1126311-ZVITAMBO          ZIMBABWE                       VitA              0        1       4
Q2         24 months   ki1126311-ZVITAMBO          ZIMBABWE                       VitA              1        2       4
Q1         24 months   ki1126311-ZVITAMBO          ZIMBABWE                       VitA              1        1       1
Q1         24 months   ki1135781-COHORTS           GUATEMALA                      Control           0       22     259
Q1         24 months   ki1135781-COHORTS           GUATEMALA                      Control           1      106     259
Q1         24 months   ki1135781-COHORTS           GUATEMALA                      Other             0       33     259
Q1         24 months   ki1135781-COHORTS           GUATEMALA                      Other             1       98     259
Q2         6 months    ki1135781-COHORTS           GUATEMALA                      Control           0       60     154
Q2         6 months    ki1135781-COHORTS           GUATEMALA                      Control           1       38     154
Q2         6 months    ki1135781-COHORTS           GUATEMALA                      Other             0       34     154
Q2         6 months    ki1135781-COHORTS           GUATEMALA                      Other             1       22     154
Q2         Birth       ki1135781-COHORTS           GUATEMALA                      Control           0       86     155
Q2         Birth       ki1135781-COHORTS           GUATEMALA                      Control           1        4     155
Q2         Birth       ki1135781-COHORTS           GUATEMALA                      Other             0       61     155
Q2         Birth       ki1135781-COHORTS           GUATEMALA                      Other             1        4     155
Q1         Birth       ki1135781-COHORTS           GUATEMALA                      Control           0      282     664
Q1         Birth       ki1135781-COHORTS           GUATEMALA                      Control           1       14     664
Q1         Birth       ki1135781-COHORTS           GUATEMALA                      Other             0      343     664
Q1         Birth       ki1135781-COHORTS           GUATEMALA                      Other             1       25     664
Q1         6 months    ki1135781-COHORTS           GUATEMALA                      Control           0      170     744
Q1         6 months    ki1135781-COHORTS           GUATEMALA                      Control           1      160     744
Q1         6 months    ki1135781-COHORTS           GUATEMALA                      Other             0      260     744
Q1         6 months    ki1135781-COHORTS           GUATEMALA                      Other             1      154     744
Q2         24 months   ki1135781-COHORTS           GUATEMALA                      Control           0        8      55
Q2         24 months   ki1135781-COHORTS           GUATEMALA                      Control           1       21      55
Q2         24 months   ki1135781-COHORTS           GUATEMALA                      Other             0        6      55
Q2         24 months   ki1135781-COHORTS           GUATEMALA                      Other             1       20      55
Q4         24 months   ki1135781-COHORTS           GUATEMALA                      Control           0        1       3
Q4         24 months   ki1135781-COHORTS           GUATEMALA                      Control           1        2       3
Q4         6 months    ki1135781-COHORTS           GUATEMALA                      Control           0        1       1
Q3         Birth       ki1135781-COHORTS           GUATEMALA                      Control           0       14      23
Q3         Birth       ki1135781-COHORTS           GUATEMALA                      Control           1        1      23
Q3         Birth       ki1135781-COHORTS           GUATEMALA                      Other             0        7      23
Q3         Birth       ki1135781-COHORTS           GUATEMALA                      Other             1        1      23
Q3         6 months    ki1135781-COHORTS           GUATEMALA                      Control           0        9      24
Q3         6 months    ki1135781-COHORTS           GUATEMALA                      Control           1        9      24
Q3         6 months    ki1135781-COHORTS           GUATEMALA                      Other             0        6      24
Q3         6 months    ki1135781-COHORTS           GUATEMALA                      Other             1        0      24
Q3         24 months   ki1135781-COHORTS           GUATEMALA                      Control           0        2       9
Q3         24 months   ki1135781-COHORTS           GUATEMALA                      Control           1        3       9
Q3         24 months   ki1135781-COHORTS           GUATEMALA                      Other             0        1       9
Q3         24 months   ki1135781-COHORTS           GUATEMALA                      Other             1        3       9
Q1         6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control           0       43     420
Q1         6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control           1       27     420
Q1         6 months    ki1148112-iLiNS-DOSE        MALAWI                         LNS               0      233     420
Q1         6 months    ki1148112-iLiNS-DOSE        MALAWI                         LNS               1      117     420
Q3         6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control           0       59     542
Q3         6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control           1       28     542
Q3         6 months    ki1148112-iLiNS-DOSE        MALAWI                         LNS               0      333     542
Q3         6 months    ki1148112-iLiNS-DOSE        MALAWI                         LNS               1      122     542
Q3         24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control           0       15     216
Q3         24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control           1       19     216
Q3         24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS               0       87     216
Q3         24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS               1       95     216
Q4         6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control           0       68     551
Q4         6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control           1       24     551
Q4         6 months    ki1148112-iLiNS-DOSE        MALAWI                         LNS               0      330     551
Q4         6 months    ki1148112-iLiNS-DOSE        MALAWI                         LNS               1      129     551
Q4         24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control           0       22     230
Q4         24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control           1       17     230
Q4         24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS               0      110     230
Q4         24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS               1       81     230
Q1         24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control           0       15     175
Q1         24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control           1       14     175
Q1         24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS               0       67     175
Q1         24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS               1       79     175
Q2         6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control           0       35     353
Q2         6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control           1       22     353
Q2         6 months    ki1148112-iLiNS-DOSE        MALAWI                         LNS               0      199     353
Q2         6 months    ki1148112-iLiNS-DOSE        MALAWI                         LNS               1       97     353
Q2         24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control           0       10     148
Q2         24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control           1       14     148
Q2         24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS               0       55     148
Q2         24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS               1       69     148
Q1         6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Control           0       68     262
Q1         6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Control           1       22     262
Q1         6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Maternal          0      129     262
Q1         6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Maternal          1       43     262
Q3         6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Control           0       69     281
Q3         6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Control           1       27     281
Q3         6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Maternal          0      139     281
Q3         6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Maternal          1       46     281
Q4         6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Control           0       76     267
Q4         6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Control           1       13     267
Q4         6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Maternal          0      146     267
Q4         6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Maternal          1       32     267
Q4         Birth       ki1148112-iLiNS-DYAD-M      MALAWI                         Maternal          1        1       1
Q2         6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Control           0       56     219
Q2         6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Control           1       20     219
Q2         6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Maternal          0      113     219
Q2         6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Maternal          1       30     219
Q2         24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control           0        1      14
Q2         24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control           1        1      14
Q2         24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Maternal          0        8      14
Q2         24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Maternal          1        4      14
Q1         24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control           0        2      16
Q1         24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control           1        1      16
Q1         24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Maternal          0        6      16
Q1         24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Maternal          1        7      16
Q4         24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control           0        1      20
Q4         24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control           1        3      20
Q4         24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Maternal          0       13      20
Q4         24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Maternal          1        3      20
Q3         24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control           0        1      15
Q3         24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control           1        2      15
Q3         24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Maternal          0        6      15
Q3         24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Maternal          1        6      15
Q1         6 months    ki1148112-LCNI-5            MALAWI                         Control           0       89     574
Q1         6 months    ki1148112-LCNI-5            MALAWI                         Control           1       51     574
Q1         6 months    ki1148112-LCNI-5            MALAWI                         LNS               0      179     574
Q1         6 months    ki1148112-LCNI-5            MALAWI                         LNS               1      110     574
Q1         6 months    ki1148112-LCNI-5            MALAWI                         Other             0       84     574
Q1         6 months    ki1148112-LCNI-5            MALAWI                         Other             1       61     574
Q1         24 months   ki1148112-LCNI-5            MALAWI                         Control           0       52     273
Q1         24 months   ki1148112-LCNI-5            MALAWI                         Control           1       31     273
Q1         24 months   ki1148112-LCNI-5            MALAWI                         LNS               0       72     273
Q1         24 months   ki1148112-LCNI-5            MALAWI                         LNS               1       51     273
Q1         24 months   ki1148112-LCNI-5            MALAWI                         Other             0       42     273
Q1         24 months   ki1148112-LCNI-5            MALAWI                         Other             1       25     273
Q2         6 months    ki1148112-LCNI-5            MALAWI                         Control           0       37     216
Q2         6 months    ki1148112-LCNI-5            MALAWI                         Control           1       15     216
Q2         6 months    ki1148112-LCNI-5            MALAWI                         LNS               0       78     216
Q2         6 months    ki1148112-LCNI-5            MALAWI                         LNS               1       32     216
Q2         6 months    ki1148112-LCNI-5            MALAWI                         Other             0       36     216
Q2         6 months    ki1148112-LCNI-5            MALAWI                         Other             1       18     216
Q2         24 months   ki1148112-LCNI-5            MALAWI                         Control           0       15      97
Q2         24 months   ki1148112-LCNI-5            MALAWI                         Control           1        9      97
Q2         24 months   ki1148112-LCNI-5            MALAWI                         LNS               0       34      97
Q2         24 months   ki1148112-LCNI-5            MALAWI                         LNS               1       15      97
Q2         24 months   ki1148112-LCNI-5            MALAWI                         Other             0       19      97
Q2         24 months   ki1148112-LCNI-5            MALAWI                         Other             1        5      97
Q3         6 months    ki1148112-LCNI-5            MALAWI                         Control           0        7      22
Q3         6 months    ki1148112-LCNI-5            MALAWI                         Control           1        1      22
Q3         6 months    ki1148112-LCNI-5            MALAWI                         LNS               0        5      22
Q3         6 months    ki1148112-LCNI-5            MALAWI                         LNS               1        4      22
Q3         6 months    ki1148112-LCNI-5            MALAWI                         Other             0        2      22
Q3         6 months    ki1148112-LCNI-5            MALAWI                         Other             1        3      22
Q3         24 months   ki1148112-LCNI-5            MALAWI                         Control           0        2      10
Q3         24 months   ki1148112-LCNI-5            MALAWI                         Control           1        0      10
Q3         24 months   ki1148112-LCNI-5            MALAWI                         LNS               0        2      10
Q3         24 months   ki1148112-LCNI-5            MALAWI                         LNS               1        3      10
Q3         24 months   ki1148112-LCNI-5            MALAWI                         Other             0        1      10
Q3         24 months   ki1148112-LCNI-5            MALAWI                         Other             1        2      10
Q4         6 months    ki1148112-LCNI-5            MALAWI                         LNS               0        1       1
Q4         24 months   ki1148112-LCNI-5            MALAWI                         LNS               0        1       1
Q3         Birth       kiGH5241-JiVitA-3           BANGLADESH                     Control           0     2180    6363
Q3         Birth       kiGH5241-JiVitA-3           BANGLADESH                     Control           1     1012    6363
Q3         Birth       kiGH5241-JiVitA-3           BANGLADESH                     Maternal          0     2305    6363
Q3         Birth       kiGH5241-JiVitA-3           BANGLADESH                     Maternal          1      866    6363
Q3         6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control           0     2402    6197
Q3         6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control           1      735    6197
Q3         6 months    kiGH5241-JiVitA-3           BANGLADESH                     Maternal          0     2412    6197
Q3         6 months    kiGH5241-JiVitA-3           BANGLADESH                     Maternal          1      648    6197
Q1         Birth       kiGH5241-JiVitA-3           BANGLADESH                     Control           0     2506    7897
Q1         Birth       kiGH5241-JiVitA-3           BANGLADESH                     Control           1     1407    7897
Q1         Birth       kiGH5241-JiVitA-3           BANGLADESH                     Maternal          0     2680    7897
Q1         Birth       kiGH5241-JiVitA-3           BANGLADESH                     Maternal          1     1304    7897
Q1         6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control           0     1912    5604
Q1         6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control           1      825    5604
Q1         6 months    kiGH5241-JiVitA-3           BANGLADESH                     Maternal          0     2066    5604
Q1         6 months    kiGH5241-JiVitA-3           BANGLADESH                     Maternal          1      801    5604
Q2         6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control           0     1344    3864
Q2         6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control           1      558    3864
Q2         6 months    kiGH5241-JiVitA-3           BANGLADESH                     Maternal          0     1430    3864
Q2         6 months    kiGH5241-JiVitA-3           BANGLADESH                     Maternal          1      532    3864
Q4         Birth       kiGH5241-JiVitA-3           BANGLADESH                     Control           0      272     704
Q4         Birth       kiGH5241-JiVitA-3           BANGLADESH                     Control           1       61     704
Q4         Birth       kiGH5241-JiVitA-3           BANGLADESH                     Maternal          0      307     704
Q4         Birth       kiGH5241-JiVitA-3           BANGLADESH                     Maternal          1       64     704
Q4         6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control           0      458    1082
Q4         6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control           1       54    1082
Q4         6 months    kiGH5241-JiVitA-3           BANGLADESH                     Maternal          0      512    1082
Q4         6 months    kiGH5241-JiVitA-3           BANGLADESH                     Maternal          1       58    1082
Q2         Birth       kiGH5241-JiVitA-3           BANGLADESH                     Control           0     1450    4623
Q2         Birth       kiGH5241-JiVitA-3           BANGLADESH                     Control           1      841    4623
Q2         Birth       kiGH5241-JiVitA-3           BANGLADESH                     Maternal          0     1555    4623
Q2         Birth       kiGH5241-JiVitA-3           BANGLADESH                     Maternal          1      777    4623
Q3         24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control           0        9      44
Q3         24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control           1       10      44
Q3         24 months   kiGH5241-JiVitA-3           BANGLADESH                     Maternal          0       11      44
Q3         24 months   kiGH5241-JiVitA-3           BANGLADESH                     Maternal          1       14      44
Q4         24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control           0        6      13
Q4         24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control           1        1      13
Q4         24 months   kiGH5241-JiVitA-3           BANGLADESH                     Maternal          0        6      13
Q4         24 months   kiGH5241-JiVitA-3           BANGLADESH                     Maternal          1        0      13
Q1         24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control           0        7      25
Q1         24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control           1        7      25
Q1         24 months   kiGH5241-JiVitA-3           BANGLADESH                     Maternal          0        2      25
Q1         24 months   kiGH5241-JiVitA-3           BANGLADESH                     Maternal          1        9      25
Q2         24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control           0        2      16
Q2         24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control           1        3      16
Q2         24 months   kiGH5241-JiVitA-3           BANGLADESH                     Maternal          0        4      16
Q2         24 months   kiGH5241-JiVitA-3           BANGLADESH                     Maternal          1        7      16
Q1         6 months    kiGH5241-JiVitA-4           BANGLADESH                     Control           0      378    1896
Q1         6 months    kiGH5241-JiVitA-4           BANGLADESH                     Control           1      131    1896
Q1         6 months    kiGH5241-JiVitA-4           BANGLADESH                     LNS               0      378    1896
Q1         6 months    kiGH5241-JiVitA-4           BANGLADESH                     LNS               1      114    1896
Q1         6 months    kiGH5241-JiVitA-4           BANGLADESH                     Other             0      659    1896
Q1         6 months    kiGH5241-JiVitA-4           BANGLADESH                     Other             1      236    1896
Q1         Birth       kiGH5241-JiVitA-4           BANGLADESH                     Control           0       70     354
Q1         Birth       kiGH5241-JiVitA-4           BANGLADESH                     Control           1       29     354
Q1         Birth       kiGH5241-JiVitA-4           BANGLADESH                     LNS               0       68     354
Q1         Birth       kiGH5241-JiVitA-4           BANGLADESH                     LNS               1       25     354
Q1         Birth       kiGH5241-JiVitA-4           BANGLADESH                     Other             0      111     354
Q1         Birth       kiGH5241-JiVitA-4           BANGLADESH                     Other             1       51     354
Q1         24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control           0       66     435
Q1         24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control           1       58     435
Q1         24 months   kiGH5241-JiVitA-4           BANGLADESH                     LNS               0       65     435
Q1         24 months   kiGH5241-JiVitA-4           BANGLADESH                     LNS               1       52     435
Q1         24 months   kiGH5241-JiVitA-4           BANGLADESH                     Other             0      120     435
Q1         24 months   kiGH5241-JiVitA-4           BANGLADESH                     Other             1       74     435
Q2         24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control           0        1      14
Q2         24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control           1        2      14
Q2         24 months   kiGH5241-JiVitA-4           BANGLADESH                     LNS               0        5      14
Q2         24 months   kiGH5241-JiVitA-4           BANGLADESH                     LNS               1        0      14
Q2         24 months   kiGH5241-JiVitA-4           BANGLADESH                     Other             0        3      14
Q2         24 months   kiGH5241-JiVitA-4           BANGLADESH                     Other             1        3      14
Q4         6 months    kiGH5241-JiVitA-4           BANGLADESH                     Control           0        3      16
Q4         6 months    kiGH5241-JiVitA-4           BANGLADESH                     Control           1        3      16
Q4         6 months    kiGH5241-JiVitA-4           BANGLADESH                     LNS               0        3      16
Q4         6 months    kiGH5241-JiVitA-4           BANGLADESH                     LNS               1        1      16
Q4         6 months    kiGH5241-JiVitA-4           BANGLADESH                     Other             0        2      16
Q4         6 months    kiGH5241-JiVitA-4           BANGLADESH                     Other             1        4      16
Q4         24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control           0        1       3
Q4         24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control           1        0       3
Q4         24 months   kiGH5241-JiVitA-4           BANGLADESH                     LNS               0        0       3
Q4         24 months   kiGH5241-JiVitA-4           BANGLADESH                     LNS               1        1       3
Q4         24 months   kiGH5241-JiVitA-4           BANGLADESH                     Other             0        0       3
Q4         24 months   kiGH5241-JiVitA-4           BANGLADESH                     Other             1        1       3
Q2         6 months    kiGH5241-JiVitA-4           BANGLADESH                     Control           0        6      48
Q2         6 months    kiGH5241-JiVitA-4           BANGLADESH                     Control           1        5      48
Q2         6 months    kiGH5241-JiVitA-4           BANGLADESH                     LNS               0       12      48
Q2         6 months    kiGH5241-JiVitA-4           BANGLADESH                     LNS               1        2      48
Q2         6 months    kiGH5241-JiVitA-4           BANGLADESH                     Other             0       16      48
Q2         6 months    kiGH5241-JiVitA-4           BANGLADESH                     Other             1        7      48
Q3         6 months    kiGH5241-JiVitA-4           BANGLADESH                     Control           0       14      65
Q3         6 months    kiGH5241-JiVitA-4           BANGLADESH                     Control           1        3      65
Q3         6 months    kiGH5241-JiVitA-4           BANGLADESH                     LNS               0       11      65
Q3         6 months    kiGH5241-JiVitA-4           BANGLADESH                     LNS               1        6      65
Q3         6 months    kiGH5241-JiVitA-4           BANGLADESH                     Other             0       20      65
Q3         6 months    kiGH5241-JiVitA-4           BANGLADESH                     Other             1       11      65
Q3         Birth       kiGH5241-JiVitA-4           BANGLADESH                     Control           0        2       9
Q3         Birth       kiGH5241-JiVitA-4           BANGLADESH                     Control           1        2       9
Q3         Birth       kiGH5241-JiVitA-4           BANGLADESH                     LNS               0        1       9
Q3         Birth       kiGH5241-JiVitA-4           BANGLADESH                     LNS               1        2       9
Q3         Birth       kiGH5241-JiVitA-4           BANGLADESH                     Other             0        1       9
Q3         Birth       kiGH5241-JiVitA-4           BANGLADESH                     Other             1        1       9
Q3         24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control           0        4      17
Q3         24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control           1        1      17
Q3         24 months   kiGH5241-JiVitA-4           BANGLADESH                     LNS               0        0      17
Q3         24 months   kiGH5241-JiVitA-4           BANGLADESH                     LNS               1        4      17
Q3         24 months   kiGH5241-JiVitA-4           BANGLADESH                     Other             0        5      17
Q3         24 months   kiGH5241-JiVitA-4           BANGLADESH                     Other             1        3      17
Q2         Birth       kiGH5241-JiVitA-4           BANGLADESH                     Control           0        0       4
Q2         Birth       kiGH5241-JiVitA-4           BANGLADESH                     Control           1        1       4
Q2         Birth       kiGH5241-JiVitA-4           BANGLADESH                     LNS               0        1       4
Q2         Birth       kiGH5241-JiVitA-4           BANGLADESH                     LNS               1        1       4
Q2         Birth       kiGH5241-JiVitA-4           BANGLADESH                     Other             0        1       4
Q2         Birth       kiGH5241-JiVitA-4           BANGLADESH                     Other             1        0       4
Q3         6 months    iLiNS_DYADM_LNS             MALAWI                         Control           0       69     187
Q3         6 months    iLiNS_DYADM_LNS             MALAWI                         Control           1       27     187
Q3         6 months    iLiNS_DYADM_LNS             MALAWI                         LNS               0       69     187
Q3         6 months    iLiNS_DYADM_LNS             MALAWI                         LNS               1       22     187
Q4         6 months    iLiNS_DYADM_LNS             MALAWI                         Control           0       76     174
Q4         6 months    iLiNS_DYADM_LNS             MALAWI                         Control           1       13     174
Q4         6 months    iLiNS_DYADM_LNS             MALAWI                         LNS               0       70     174
Q4         6 months    iLiNS_DYADM_LNS             MALAWI                         LNS               1       15     174
Q4         Birth       iLiNS_DYADM_LNS             MALAWI                         LNS               1        1       1
Q2         6 months    iLiNS_DYADM_LNS             MALAWI                         Control           0       56     149
Q2         6 months    iLiNS_DYADM_LNS             MALAWI                         Control           1       20     149
Q2         6 months    iLiNS_DYADM_LNS             MALAWI                         LNS               0       58     149
Q2         6 months    iLiNS_DYADM_LNS             MALAWI                         LNS               1       15     149
Q1         6 months    iLiNS_DYADM_LNS             MALAWI                         Control           0       68     173
Q1         6 months    iLiNS_DYADM_LNS             MALAWI                         Control           1       22     173
Q1         6 months    iLiNS_DYADM_LNS             MALAWI                         LNS               0       62     173
Q1         6 months    iLiNS_DYADM_LNS             MALAWI                         LNS               1       21     173
Q2         24 months   iLiNS_DYADM_LNS             MALAWI                         Control           0        1       8
Q2         24 months   iLiNS_DYADM_LNS             MALAWI                         Control           1        1       8
Q2         24 months   iLiNS_DYADM_LNS             MALAWI                         LNS               0        4       8
Q2         24 months   iLiNS_DYADM_LNS             MALAWI                         LNS               1        2       8
Q1         24 months   iLiNS_DYADM_LNS             MALAWI                         Control           0        2      10
Q1         24 months   iLiNS_DYADM_LNS             MALAWI                         Control           1        1      10
Q1         24 months   iLiNS_DYADM_LNS             MALAWI                         LNS               0        4      10
Q1         24 months   iLiNS_DYADM_LNS             MALAWI                         LNS               1        3      10
Q4         24 months   iLiNS_DYADM_LNS             MALAWI                         Control           0        1       8
Q4         24 months   iLiNS_DYADM_LNS             MALAWI                         Control           1        3       8
Q4         24 months   iLiNS_DYADM_LNS             MALAWI                         LNS               0        3       8
Q4         24 months   iLiNS_DYADM_LNS             MALAWI                         LNS               1        1       8
Q3         24 months   iLiNS_DYADM_LNS             MALAWI                         Control           0        1       9
Q3         24 months   iLiNS_DYADM_LNS             MALAWI                         Control           1        2       9
Q3         24 months   iLiNS_DYADM_LNS             MALAWI                         LNS               0        4       9
Q3         24 months   iLiNS_DYADM_LNS             MALAWI                         LNS               1        2       9


The following strata were considered:

* meducyrs: Q1, agecat: 24 months, studyid: iLiNS_DYADM_LNS, country: MALAWI
* meducyrs: Q1, agecat: 24 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* meducyrs: Q1, agecat: 24 months, studyid: ki1000111-WASH-Kenya, country: KENYA
* meducyrs: Q1, agecat: 24 months, studyid: ki1000304-EU, country: INDIA
* meducyrs: Q1, agecat: 24 months, studyid: ki1000304-Vitamin-B12, country: INDIA
* meducyrs: Q1, agecat: 24 months, studyid: ki1000304-ZnMort, country: INDIA
* meducyrs: Q1, agecat: 24 months, studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO
* meducyrs: Q1, agecat: 24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* meducyrs: Q1, agecat: 24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* meducyrs: Q1, agecat: 24 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* meducyrs: Q1, agecat: 24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* meducyrs: Q1, agecat: 24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* meducyrs: Q1, agecat: 24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* meducyrs: Q1, agecat: 24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* meducyrs: Q1, agecat: 6 months, studyid: iLiNS_DYADM_LNS, country: MALAWI
* meducyrs: Q1, agecat: 6 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* meducyrs: Q1, agecat: 6 months, studyid: ki1000111-WASH-Kenya, country: KENYA
* meducyrs: Q1, agecat: 6 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* meducyrs: Q1, agecat: 6 months, studyid: ki1000304-EU, country: INDIA
* meducyrs: Q1, agecat: 6 months, studyid: ki1000304-VITAMIN-A, country: INDIA
* meducyrs: Q1, agecat: 6 months, studyid: ki1000304-Vitamin-B12, country: INDIA
* meducyrs: Q1, agecat: 6 months, studyid: ki1000304-ZnMort, country: INDIA
* meducyrs: Q1, agecat: 6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* meducyrs: Q1, agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* meducyrs: Q1, agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* meducyrs: Q1, agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* meducyrs: Q1, agecat: 6 months, studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO
* meducyrs: Q1, agecat: 6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* meducyrs: Q1, agecat: 6 months, studyid: ki1119695-PROBIT, country: BELARUS
* meducyrs: Q1, agecat: 6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* meducyrs: Q1, agecat: 6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* meducyrs: Q1, agecat: 6 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* meducyrs: Q1, agecat: 6 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* meducyrs: Q1, agecat: 6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* meducyrs: Q1, agecat: 6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* meducyrs: Q1, agecat: 6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* meducyrs: Q1, agecat: Birth, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* meducyrs: Q1, agecat: Birth, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* meducyrs: Q1, agecat: Birth, studyid: ki1119695-PROBIT, country: BELARUS
* meducyrs: Q1, agecat: Birth, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* meducyrs: Q1, agecat: Birth, studyid: ki1135781-COHORTS, country: GUATEMALA
* meducyrs: Q1, agecat: Birth, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* meducyrs: Q1, agecat: Birth, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* meducyrs: Q2, agecat: 24 months, studyid: iLiNS_DYADM_LNS, country: MALAWI
* meducyrs: Q2, agecat: 24 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* meducyrs: Q2, agecat: 24 months, studyid: ki1000304-EU, country: INDIA
* meducyrs: Q2, agecat: 24 months, studyid: ki1000304-Vitamin-B12, country: INDIA
* meducyrs: Q2, agecat: 24 months, studyid: ki1000304-ZnMort, country: INDIA
* meducyrs: Q2, agecat: 24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* meducyrs: Q2, agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* meducyrs: Q2, agecat: 24 months, studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO
* meducyrs: Q2, agecat: 24 months, studyid: ki1119695-PROBIT, country: BELARUS
* meducyrs: Q2, agecat: 24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* meducyrs: Q2, agecat: 24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* meducyrs: Q2, agecat: 24 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* meducyrs: Q2, agecat: 24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* meducyrs: Q2, agecat: 24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* meducyrs: Q2, agecat: 24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* meducyrs: Q2, agecat: 24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* meducyrs: Q2, agecat: 6 months, studyid: iLiNS_DYADM_LNS, country: MALAWI
* meducyrs: Q2, agecat: 6 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* meducyrs: Q2, agecat: 6 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* meducyrs: Q2, agecat: 6 months, studyid: ki1000304-EU, country: INDIA
* meducyrs: Q2, agecat: 6 months, studyid: ki1000304-VITAMIN-A, country: INDIA
* meducyrs: Q2, agecat: 6 months, studyid: ki1000304-Vitamin-B12, country: INDIA
* meducyrs: Q2, agecat: 6 months, studyid: ki1000304-ZnMort, country: INDIA
* meducyrs: Q2, agecat: 6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* meducyrs: Q2, agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* meducyrs: Q2, agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* meducyrs: Q2, agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* meducyrs: Q2, agecat: 6 months, studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO
* meducyrs: Q2, agecat: 6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* meducyrs: Q2, agecat: 6 months, studyid: ki1119695-PROBIT, country: BELARUS
* meducyrs: Q2, agecat: 6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* meducyrs: Q2, agecat: 6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* meducyrs: Q2, agecat: 6 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* meducyrs: Q2, agecat: 6 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* meducyrs: Q2, agecat: 6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* meducyrs: Q2, agecat: 6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* meducyrs: Q2, agecat: 6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* meducyrs: Q2, agecat: Birth, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* meducyrs: Q2, agecat: Birth, studyid: ki1119695-PROBIT, country: BELARUS
* meducyrs: Q2, agecat: Birth, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* meducyrs: Q2, agecat: Birth, studyid: ki1135781-COHORTS, country: GUATEMALA
* meducyrs: Q2, agecat: Birth, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* meducyrs: Q2, agecat: Birth, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* meducyrs: Q3, agecat: 24 months, studyid: iLiNS_DYADM_LNS, country: MALAWI
* meducyrs: Q3, agecat: 24 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* meducyrs: Q3, agecat: 24 months, studyid: ki1000111-WASH-Kenya, country: KENYA
* meducyrs: Q3, agecat: 24 months, studyid: ki1000304-EU, country: INDIA
* meducyrs: Q3, agecat: 24 months, studyid: ki1000304-Vitamin-B12, country: INDIA
* meducyrs: Q3, agecat: 24 months, studyid: ki1000304-ZnMort, country: INDIA
* meducyrs: Q3, agecat: 24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* meducyrs: Q3, agecat: 24 months, studyid: ki1119695-PROBIT, country: BELARUS
* meducyrs: Q3, agecat: 24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* meducyrs: Q3, agecat: 24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* meducyrs: Q3, agecat: 24 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* meducyrs: Q3, agecat: 24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* meducyrs: Q3, agecat: 24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* meducyrs: Q3, agecat: 24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* meducyrs: Q3, agecat: 24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* meducyrs: Q3, agecat: 6 months, studyid: iLiNS_DYADM_LNS, country: MALAWI
* meducyrs: Q3, agecat: 6 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* meducyrs: Q3, agecat: 6 months, studyid: ki1000111-WASH-Kenya, country: KENYA
* meducyrs: Q3, agecat: 6 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* meducyrs: Q3, agecat: 6 months, studyid: ki1000304-EU, country: INDIA
* meducyrs: Q3, agecat: 6 months, studyid: ki1000304-VITAMIN-A, country: INDIA
* meducyrs: Q3, agecat: 6 months, studyid: ki1000304-Vitamin-B12, country: INDIA
* meducyrs: Q3, agecat: 6 months, studyid: ki1000304-ZnMort, country: INDIA
* meducyrs: Q3, agecat: 6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* meducyrs: Q3, agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* meducyrs: Q3, agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* meducyrs: Q3, agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* meducyrs: Q3, agecat: 6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* meducyrs: Q3, agecat: 6 months, studyid: ki1119695-PROBIT, country: BELARUS
* meducyrs: Q3, agecat: 6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* meducyrs: Q3, agecat: 6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* meducyrs: Q3, agecat: 6 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* meducyrs: Q3, agecat: 6 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* meducyrs: Q3, agecat: 6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* meducyrs: Q3, agecat: 6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* meducyrs: Q3, agecat: 6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* meducyrs: Q3, agecat: Birth, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* meducyrs: Q3, agecat: Birth, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* meducyrs: Q3, agecat: Birth, studyid: ki1119695-PROBIT, country: BELARUS
* meducyrs: Q3, agecat: Birth, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* meducyrs: Q3, agecat: Birth, studyid: ki1135781-COHORTS, country: GUATEMALA
* meducyrs: Q3, agecat: Birth, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* meducyrs: Q3, agecat: Birth, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* meducyrs: Q4, agecat: 24 months, studyid: iLiNS_DYADM_LNS, country: MALAWI
* meducyrs: Q4, agecat: 24 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* meducyrs: Q4, agecat: 24 months, studyid: ki1000111-WASH-Kenya, country: KENYA
* meducyrs: Q4, agecat: 24 months, studyid: ki1000304-EU, country: INDIA
* meducyrs: Q4, agecat: 24 months, studyid: ki1000304-Vitamin-B12, country: INDIA
* meducyrs: Q4, agecat: 24 months, studyid: ki1000304-ZnMort, country: INDIA
* meducyrs: Q4, agecat: 24 months, studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO
* meducyrs: Q4, agecat: 24 months, studyid: ki1119695-PROBIT, country: BELARUS
* meducyrs: Q4, agecat: 24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* meducyrs: Q4, agecat: 24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* meducyrs: Q4, agecat: 24 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* meducyrs: Q4, agecat: 24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* meducyrs: Q4, agecat: 24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* meducyrs: Q4, agecat: 24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* meducyrs: Q4, agecat: 24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* meducyrs: Q4, agecat: 6 months, studyid: iLiNS_DYADM_LNS, country: MALAWI
* meducyrs: Q4, agecat: 6 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* meducyrs: Q4, agecat: 6 months, studyid: ki1000111-WASH-Kenya, country: KENYA
* meducyrs: Q4, agecat: 6 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* meducyrs: Q4, agecat: 6 months, studyid: ki1000304-EU, country: INDIA
* meducyrs: Q4, agecat: 6 months, studyid: ki1000304-VITAMIN-A, country: INDIA
* meducyrs: Q4, agecat: 6 months, studyid: ki1000304-Vitamin-B12, country: INDIA
* meducyrs: Q4, agecat: 6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* meducyrs: Q4, agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* meducyrs: Q4, agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* meducyrs: Q4, agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* meducyrs: Q4, agecat: 6 months, studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO
* meducyrs: Q4, agecat: 6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* meducyrs: Q4, agecat: 6 months, studyid: ki1119695-PROBIT, country: BELARUS
* meducyrs: Q4, agecat: 6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* meducyrs: Q4, agecat: 6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* meducyrs: Q4, agecat: 6 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* meducyrs: Q4, agecat: 6 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* meducyrs: Q4, agecat: 6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* meducyrs: Q4, agecat: 6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* meducyrs: Q4, agecat: 6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* meducyrs: Q4, agecat: Birth, studyid: iLiNS_DYADM_LNS, country: MALAWI
* meducyrs: Q4, agecat: Birth, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* meducyrs: Q4, agecat: Birth, studyid: ki1119695-PROBIT, country: BELARUS
* meducyrs: Q4, agecat: Birth, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* meducyrs: Q4, agecat: Birth, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* meducyrs: Q4, agecat: Birth, studyid: kiGH5241-JiVitA-3, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* meducyrs: Q1, agecat: 6 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* meducyrs: Q1, agecat: 6 months, studyid: ki1000111-WASH-Kenya, country: KENYA
* meducyrs: Q3, agecat: 6 months, studyid: ki1000111-WASH-Kenya, country: KENYA
* meducyrs: Q4, agecat: 6 months, studyid: ki1000111-WASH-Kenya, country: KENYA
* meducyrs: Q3, agecat: 6 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* meducyrs: Q4, agecat: 6 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* meducyrs: Q2, agecat: 6 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* meducyrs: Q1, agecat: Birth, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* meducyrs: Q3, agecat: Birth, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* meducyrs: Q3, agecat: 6 months, studyid: ki1000304-EU, country: INDIA
* meducyrs: Q4, agecat: 6 months, studyid: ki1000304-EU, country: INDIA
* meducyrs: Q4, agecat: 24 months, studyid: ki1000304-EU, country: INDIA
* meducyrs: Q4, agecat: 6 months, studyid: ki1000304-VITAMIN-A, country: INDIA
* meducyrs: Q4, agecat: 6 months, studyid: ki1000304-Vitamin-B12, country: INDIA
* meducyrs: Q3, agecat: 24 months, studyid: ki1000304-Vitamin-B12, country: INDIA
* meducyrs: Q1, agecat: 6 months, studyid: ki1000304-Vitamin-B12, country: INDIA
* meducyrs: Q2, agecat: 6 months, studyid: ki1000304-Vitamin-B12, country: INDIA
* meducyrs: Q4, agecat: 24 months, studyid: ki1000304-Vitamin-B12, country: INDIA
* meducyrs: Q1, agecat: 24 months, studyid: ki1000304-Vitamin-B12, country: INDIA
* meducyrs: Q2, agecat: 24 months, studyid: ki1000304-Vitamin-B12, country: INDIA
* meducyrs: Q3, agecat: 6 months, studyid: ki1000304-Vitamin-B12, country: INDIA
* meducyrs: Q3, agecat: 6 months, studyid: ki1000304-ZnMort, country: INDIA
* meducyrs: Q3, agecat: 24 months, studyid: ki1000304-ZnMort, country: INDIA
* meducyrs: Q4, agecat: 24 months, studyid: ki1000304-ZnMort, country: INDIA
* meducyrs: Q2, agecat: Birth, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* meducyrs: Q3, agecat: Birth, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* meducyrs: Q4, agecat: 6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* meducyrs: Q4, agecat: Birth, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* meducyrs: Q4, agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* meducyrs: Q3, agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* meducyrs: Q2, agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* meducyrs: Q1, agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* meducyrs: Q2, agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* meducyrs: Q4, agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* meducyrs: Q3, agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* meducyrs: Q3, agecat: 24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* meducyrs: Q2, agecat: 24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* meducyrs: Q3, agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* meducyrs: Q1, agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* meducyrs: Q2, agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* meducyrs: Q4, agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* meducyrs: Q4, agecat: 6 months, studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO
* meducyrs: Q3, agecat: 6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* meducyrs: Q4, agecat: Birth, studyid: ki1119695-PROBIT, country: BELARUS
* meducyrs: Q2, agecat: Birth, studyid: ki1119695-PROBIT, country: BELARUS
* meducyrs: Q4, agecat: 24 months, studyid: ki1119695-PROBIT, country: BELARUS
* meducyrs: Q2, agecat: 24 months, studyid: ki1119695-PROBIT, country: BELARUS
* meducyrs: Q1, agecat: 6 months, studyid: ki1119695-PROBIT, country: BELARUS
* meducyrs: Q4, agecat: 24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* meducyrs: Q3, agecat: 24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* meducyrs: Q2, agecat: 24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* meducyrs: Q1, agecat: 24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* meducyrs: Q2, agecat: Birth, studyid: ki1135781-COHORTS, country: GUATEMALA
* meducyrs: Q4, agecat: 24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* meducyrs: Q4, agecat: 6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* meducyrs: Q3, agecat: Birth, studyid: ki1135781-COHORTS, country: GUATEMALA
* meducyrs: Q3, agecat: 6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* meducyrs: Q3, agecat: 24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* meducyrs: Q4, agecat: Birth, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* meducyrs: Q2, agecat: 24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* meducyrs: Q1, agecat: 24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* meducyrs: Q4, agecat: 24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* meducyrs: Q3, agecat: 24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* meducyrs: Q3, agecat: 6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* meducyrs: Q3, agecat: 24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* meducyrs: Q4, agecat: 6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* meducyrs: Q4, agecat: 24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* meducyrs: Q4, agecat: 24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* meducyrs: Q1, agecat: 24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* meducyrs: Q2, agecat: 24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* meducyrs: Q2, agecat: 24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* meducyrs: Q4, agecat: 6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* meducyrs: Q4, agecat: 24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* meducyrs: Q2, agecat: 6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* meducyrs: Q3, agecat: 6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* meducyrs: Q3, agecat: Birth, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* meducyrs: Q3, agecat: 24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* meducyrs: Q2, agecat: Birth, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* meducyrs: Q4, agecat: Birth, studyid: iLiNS_DYADM_LNS, country: MALAWI
* meducyrs: Q2, agecat: 24 months, studyid: iLiNS_DYADM_LNS, country: MALAWI
* meducyrs: Q1, agecat: 24 months, studyid: iLiNS_DYADM_LNS, country: MALAWI
* meducyrs: Q4, agecat: 24 months, studyid: iLiNS_DYADM_LNS, country: MALAWI
* meducyrs: Q3, agecat: 24 months, studyid: iLiNS_DYADM_LNS, country: MALAWI

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness



```
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
##   Zinc     351  51
##           stunted
## tr          0
##   Control   7
##   LNS       0
##   Maternal 22
##   Other     0
##   VitA      0
##   Zinc      0
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
##   Zinc     72  9
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
![](/tmp/f6a6c953-88ff-4e10-b862-e64fd77d7212/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/f6a6c953-88ff-4e10-b862-e64fd77d7212/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/f6a6c953-88ff-4e10-b862-e64fd77d7212/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/f6a6c953-88ff-4e10-b862-e64fd77d7212/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


meducyrs   agecat      studyid                     country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------  ----------  --------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Q4         Birth       ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                0.1119816   0.1086709   0.1152923
Q4         Birth       ki1126311-ZVITAMBO          ZIMBABWE                       VitA                 NA                0.0942240   0.0889047   0.0995433
Q4         Birth       kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                0.1831832   0.1605947   0.2057717
Q4         Birth       kiGH5241-JiVitA-3           BANGLADESH                     Maternal             NA                0.1725067   0.1498427   0.1951707
Q4         6 months    iLiNS_DYADM_LNS             MALAWI                         Control              NA                0.1460674   0.1084288   0.1837061
Q4         6 months    iLiNS_DYADM_LNS             MALAWI                         LNS                  NA                0.1764706   0.1367665   0.2161747
Q4         6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                0.1521739   0.0480964   0.2562514
Q4         6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                  NA                0.0943396   0.0154347   0.1732446
Q4         6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Other                NA                0.0681818   0.0153773   0.1209863
Q4         6 months    ki1112895-Guatemala BSC     GUATEMALA                      Control              NA                0.2500000   0.1906888   0.3093112
Q4         6 months    ki1112895-Guatemala BSC     GUATEMALA                      Other                NA                0.2745098   0.2054881   0.3435315
Q4         6 months    ki1119695-PROBIT            BELARUS                        Control              NA                0.0542705   0.0423784   0.0661626
Q4         6 months    ki1119695-PROBIT            BELARUS                        Maternal             NA                0.0332075   0.0250949   0.0413202
Q4         6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                0.1536524   0.1486556   0.1586492
Q4         6 months    ki1126311-ZVITAMBO          ZIMBABWE                       VitA                 NA                0.1552425   0.1464089   0.1640761
Q4         6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                0.2608696   0.2458742   0.2758649
Q4         6 months    ki1148112-iLiNS-DOSE        MALAWI                         LNS                  NA                0.2810458   0.2467582   0.3153333
Q4         6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Control              NA                0.1460674   0.1215635   0.1705713
Q4         6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Maternal             NA                0.1797753   0.1420968   0.2174537
Q4         6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                0.1054688   0.0887513   0.1221862
Q4         6 months    kiGH5241-JiVitA-3           BANGLADESH                     Maternal             NA                0.1017544   0.0862004   0.1173084
Q4         24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                0.2988506   0.2025174   0.3951837
Q4         24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                  NA                0.2207792   0.1279965   0.3135619
Q4         24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                NA                0.3154762   0.2450999   0.3858524
Q4         24 months   ki1000111-WASH-Kenya        KENYA                          Control              NA                0.1912568   0.1342236   0.2482901
Q4         24 months   ki1000111-WASH-Kenya        KENYA                          LNS                  NA                0.1891892   0.1162626   0.2621158
Q4         24 months   ki1000111-WASH-Kenya        KENYA                          Other                NA                0.2337165   0.1823288   0.2851041
Q4         24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                0.4358974   0.4094508   0.4623440
Q4         24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS                  NA                0.4240838   0.3657542   0.4824133
Q1         Birth       ki1000304b-SAS-CompFeed     INDIA                          Control              NA                0.2758621   0.1837105   0.3680136
Q1         Birth       ki1000304b-SAS-CompFeed     INDIA                          Other                NA                0.3823529   0.3221464   0.4425595
Q1         Birth       ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                0.1272727   0.1039263   0.1506191
Q1         Birth       ki1126311-ZVITAMBO          ZIMBABWE                       VitA                 NA                0.0980392   0.0632959   0.1327825
Q1         Birth       ki1135781-COHORTS           GUATEMALA                      Control              NA                0.0472973   0.0365091   0.0580855
Q1         Birth       ki1135781-COHORTS           GUATEMALA                      Other                NA                0.0679348   0.0536754   0.0821942
Q1         Birth       kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                0.3595707   0.3507953   0.3683460
Q1         Birth       kiGH5241-JiVitA-3           BANGLADESH                     Maternal             NA                0.3273092   0.3186811   0.3359374
Q1         Birth       kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                0.2929293   0.2033709   0.3824877
Q1         Birth       kiGH5241-JiVitA-4           BANGLADESH                     LNS                  NA                0.2688172   0.1739323   0.3637021
Q1         Birth       kiGH5241-JiVitA-4           BANGLADESH                     Other                NA                0.3148148   0.2374952   0.3921345
Q1         6 months    iLiNS_DYADM_LNS             MALAWI                         Control              NA                0.2444444   0.1981205   0.2907684
Q1         6 months    iLiNS_DYADM_LNS             MALAWI                         LNS                  NA                0.2530120   0.2080105   0.2980136
Q1         6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Control              NA                0.2857143   0.2278717   0.3435569
Q1         6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Maternal             NA                0.2372881   0.1845749   0.2900014
Q1         6 months    ki1000304-EU                INDIA                          Control              NA                0.3623188   0.2484845   0.4761532
Q1         6 months    ki1000304-EU                INDIA                          Zinc                 NA                0.3880597   0.2709435   0.5051759
Q1         6 months    ki1000304-VITAMIN-A         INDIA                          Control              NA                0.4148607   0.3954506   0.4342707
Q1         6 months    ki1000304-VITAMIN-A         INDIA                          VitA                 NA                0.3990307   0.3801463   0.4179151
Q1         6 months    ki1000304-ZnMort            INDIA                          Control              NA                0.4000000   0.2559134   0.5440866
Q1         6 months    ki1000304-ZnMort            INDIA                          Zinc                 NA                0.4193548   0.2444952   0.5942145
Q1         6 months    ki1000304b-SAS-CompFeed     INDIA                          Control              NA                0.3357143   0.3146813   0.3567473
Q1         6 months    ki1000304b-SAS-CompFeed     INDIA                          Other                NA                0.3819444   0.3480176   0.4158713
Q1         6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Control              NA                0.5066667   0.4771496   0.5361837
Q1         6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Other                NA                0.3990610   0.3503379   0.4477842
Q1         6 months    ki1112895-Guatemala BSC     GUATEMALA                      Control              NA                0.5000000   0.3755422   0.6244578
Q1         6 months    ki1112895-Guatemala BSC     GUATEMALA                      Other                NA                0.5625000   0.4390183   0.6859817
Q1         6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                0.2333333   0.1946907   0.2719759
Q1         6 months    ki1126311-ZVITAMBO          ZIMBABWE                       VitA                 NA                0.2045455   0.1414267   0.2676642
Q1         6 months    ki1135781-COHORTS           GUATEMALA                      Control              NA                0.4848485   0.4609156   0.5087814
Q1         6 months    ki1135781-COHORTS           GUATEMALA                      Other                NA                0.3719807   0.3460560   0.3979054
Q1         6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                0.3857143   0.3666867   0.4047419
Q1         6 months    ki1148112-iLiNS-DOSE        MALAWI                         LNS                  NA                0.3342857   0.2930519   0.3755195
Q1         6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Control              NA                0.2444444   0.2138867   0.2750022
Q1         6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Maternal             NA                0.2500000   0.2074360   0.2925640
Q1         6 months    ki1148112-LCNI-5            MALAWI                         Control              NA                0.3642857   0.2845019   0.4440695
Q1         6 months    ki1148112-LCNI-5            MALAWI                         LNS                  NA                0.3806228   0.3245951   0.4366505
Q1         6 months    ki1148112-LCNI-5            MALAWI                         Other                NA                0.4206897   0.3402668   0.5011125
Q1         6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                0.3014249   0.2917522   0.3110976
Q1         6 months    kiGH5241-JiVitA-3           BANGLADESH                     Maternal             NA                0.2793861   0.2685775   0.2901947
Q1         6 months    kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                0.2573674   0.2169245   0.2978103
Q1         6 months    kiGH5241-JiVitA-4           BANGLADESH                     LNS                  NA                0.2317073   0.1870628   0.2763518
Q1         6 months    kiGH5241-JiVitA-4           BANGLADESH                     Other                NA                0.2636872   0.2274608   0.2999135
Q1         24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                0.5636364   0.4323083   0.6949644
Q1         24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                  NA                0.4500000   0.3238675   0.5761325
Q1         24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                NA                0.4779412   0.3938225   0.5620599
Q1         24 months   ki1000111-WASH-Kenya        KENYA                          Control              NA                0.4075000   0.3593268   0.4556732
Q1         24 months   ki1000111-WASH-Kenya        KENYA                          LNS                  NA                0.3309859   0.2762350   0.3857368
Q1         24 months   ki1000111-WASH-Kenya        KENYA                          Other                NA                0.3740458   0.3325985   0.4154931
Q1         24 months   ki1000304-EU                INDIA                          Control              NA                0.7200000   0.5949376   0.8450624
Q1         24 months   ki1000304-EU                INDIA                          Zinc                 NA                0.6226415   0.4915046   0.7537784
Q1         24 months   ki1000304-ZnMort            INDIA                          Control              NA                0.7441860   0.6129617   0.8754103
Q1         24 months   ki1000304-ZnMort            INDIA                          Zinc                 NA                0.7105263   0.5654327   0.8556200
Q1         24 months   ki1135781-COHORTS           GUATEMALA                      Control              NA                0.8281250   0.7957621   0.8604879
Q1         24 months   ki1135781-COHORTS           GUATEMALA                      Other                NA                0.7480916   0.7104193   0.7857640
Q1         24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                0.4827586   0.4525337   0.5129835
Q1         24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS                  NA                0.5410959   0.4734675   0.6087243
Q1         24 months   ki1148112-LCNI-5            MALAWI                         Control              NA                0.3734940   0.2692357   0.4777522
Q1         24 months   ki1148112-LCNI-5            MALAWI                         LNS                  NA                0.4146341   0.3274096   0.5018587
Q1         24 months   ki1148112-LCNI-5            MALAWI                         Other                NA                0.3731343   0.2571158   0.4891529
Q1         24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                0.4677419   0.3733698   0.5621140
Q1         24 months   kiGH5241-JiVitA-4           BANGLADESH                     LNS                  NA                0.4444444   0.3392596   0.5496293
Q1         24 months   kiGH5241-JiVitA-4           BANGLADESH                     Other                NA                0.3814433   0.3071975   0.4556891
Q2         Birth       ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                0.1067961   0.0921512   0.1214411
Q2         Birth       ki1126311-ZVITAMBO          ZIMBABWE                       VitA                 NA                0.1388013   0.1100409   0.1675616
Q2         Birth       kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                0.3670886   0.3562472   0.3779300
Q2         Birth       kiGH5241-JiVitA-3           BANGLADESH                     Maternal             NA                0.3331904   0.3212486   0.3451322
Q2         6 months    iLiNS_DYADM_LNS             MALAWI                         Control              NA                0.2631579   0.2124908   0.3138250
Q2         6 months    iLiNS_DYADM_LNS             MALAWI                         LNS                  NA                0.2054795   0.1599154   0.2510435
Q2         6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                0.2500000   0.1271606   0.3728394
Q2         6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                  NA                0.1000000   0.0166138   0.1833862
Q2         6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Other                NA                0.1097561   0.0419108   0.1776014
Q2         6 months    ki1000304-EU                INDIA                          Control              NA                0.3736264   0.2739177   0.4733350
Q2         6 months    ki1000304-EU                INDIA                          Zinc                 NA                0.2794118   0.1724251   0.3863984
Q2         6 months    ki1000304-VITAMIN-A         INDIA                          Control              NA                0.3251232   0.3024667   0.3477796
Q2         6 months    ki1000304-VITAMIN-A         INDIA                          VitA                 NA                0.2992701   0.2769847   0.3215554
Q2         6 months    ki1000304-ZnMort            INDIA                          Control              NA                0.3600000   0.1698093   0.5501907
Q2         6 months    ki1000304-ZnMort            INDIA                          Zinc                 NA                0.3181818   0.1214481   0.5149155
Q2         6 months    ki1000304b-SAS-CompFeed     INDIA                          Control              NA                0.2921348   0.2473334   0.3369363
Q2         6 months    ki1000304b-SAS-CompFeed     INDIA                          Other                NA                0.2815534   0.2174218   0.3456850
Q2         6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              NA                0.1063291   0.0759201   0.1367381
Q2         6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                NA                0.1105398   0.0793700   0.1417096
Q2         6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                 NA                0.1113924   0.0894464   0.1333384
Q2         6 months    ki1112895-Guatemala BSC     GUATEMALA                      Control              NA                0.3437500   0.2581215   0.4293785
Q2         6 months    ki1112895-Guatemala BSC     GUATEMALA                      Other                NA                0.2333333   0.1595022   0.3071645
Q2         6 months    ki1119695-PROBIT            BELARUS                        Control              NA                0.1383929   0.1024963   0.1742894
Q2         6 months    ki1119695-PROBIT            BELARUS                        Maternal             NA                0.0984127   0.0778482   0.1189772
Q2         6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                0.2121212   0.1841237   0.2401188
Q2         6 months    ki1126311-ZVITAMBO          ZIMBABWE                       VitA                 NA                0.1497006   0.1108335   0.1885677
Q2         6 months    ki1135781-COHORTS           GUATEMALA                      Control              NA                0.3877551   0.3261671   0.4493431
Q2         6 months    ki1135781-COHORTS           GUATEMALA                      Other                NA                0.3928571   0.3461913   0.4395230
Q2         6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                0.3859649   0.3655288   0.4064010
Q2         6 months    ki1148112-iLiNS-DOSE        MALAWI                         LNS                  NA                0.3277027   0.2828017   0.3726037
Q2         6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Control              NA                0.2631579   0.2287229   0.2975929
Q2         6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Maternal             NA                0.2097902   0.1661155   0.2534649
Q2         6 months    ki1148112-LCNI-5            MALAWI                         Control              NA                0.2884615   0.1650382   0.4118849
Q2         6 months    ki1148112-LCNI-5            MALAWI                         LNS                  NA                0.2909091   0.2058366   0.3759816
Q2         6 months    ki1148112-LCNI-5            MALAWI                         Other                NA                0.3333333   0.2073095   0.4593571
Q2         6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                0.2933754   0.2801423   0.3066085
Q2         6 months    kiGH5241-JiVitA-3           BANGLADESH                     Maternal             NA                0.2711519   0.2592899   0.2830139
Q2         24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                0.5081967   0.3825033   0.6338902
Q2         24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                  NA                0.5211268   0.4047091   0.6375444
Q2         24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                NA                0.5522388   0.4678859   0.6365918
Q2         24 months   ki1000304-EU                INDIA                          Control              NA                0.6666667   0.5366380   0.7966953
Q2         24 months   ki1000304-EU                INDIA                          Zinc                 NA                0.5918367   0.4535278   0.7301457
Q2         24 months   ki1000304-ZnMort            INDIA                          Control              NA                0.5652174   0.3599743   0.7704605
Q2         24 months   ki1000304-ZnMort            INDIA                          Zinc                 NA                0.3750000   0.1346831   0.6153169
Q2         24 months   ki1135781-COHORTS           GUATEMALA                      Control              NA                0.7241379   0.6375763   0.8106996
Q2         24 months   ki1135781-COHORTS           GUATEMALA                      Other                NA                0.7692308   0.6919674   0.8464942
Q2         24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                0.5833333   0.5512398   0.6154268
Q2         24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS                  NA                0.5564516   0.4829404   0.6299628
Q2         24 months   ki1148112-LCNI-5            MALAWI                         Control              NA                0.3750000   0.1803079   0.5696921
Q2         24 months   ki1148112-LCNI-5            MALAWI                         LNS                  NA                0.3061224   0.1764077   0.4358372
Q2         24 months   ki1148112-LCNI-5            MALAWI                         Other                NA                0.2083333   0.0450119   0.3716548
Q3         Birth       ki1119695-PROBIT            BELARUS                        Control              NA                0.0034358   0.0020777   0.0047939
Q3         Birth       ki1119695-PROBIT            BELARUS                        Maternal             NA                0.0016089   0.0008418   0.0023760
Q3         Birth       ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                0.0885510   0.0843994   0.0927026
Q3         Birth       ki1126311-ZVITAMBO          ZIMBABWE                       VitA                 NA                0.1182061   0.1100185   0.1263938
Q3         Birth       kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                0.3170426   0.3083475   0.3257377
Q3         Birth       kiGH5241-JiVitA-3           BANGLADESH                     Maternal             NA                0.2731000   0.2641307   0.2820692
Q3         6 months    iLiNS_DYADM_LNS             MALAWI                         Control              NA                0.2812500   0.2349542   0.3275458
Q3         6 months    iLiNS_DYADM_LNS             MALAWI                         LNS                  NA                0.2417582   0.1988356   0.2846808
Q3         6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                0.1666667   0.0445678   0.2887656
Q3         6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                  NA                0.1250000   0.0222083   0.2277917
Q3         6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Other                NA                0.1063830   0.0438690   0.1688969
Q3         6 months    ki1000304-VITAMIN-A         INDIA                          Control              NA                0.2500000   0.2187655   0.2812345
Q3         6 months    ki1000304-VITAMIN-A         INDIA                          VitA                 NA                0.1945946   0.1665634   0.2226258
Q3         6 months    ki1000304b-SAS-CompFeed     INDIA                          Control              NA                0.1551724   0.1188936   0.1914513
Q3         6 months    ki1000304b-SAS-CompFeed     INDIA                          Other                NA                0.0757576   0.0378681   0.1136470
Q3         6 months    ki1119695-PROBIT            BELARUS                        Control              NA                0.0732639   0.0615817   0.0849460
Q3         6 months    ki1119695-PROBIT            BELARUS                        Maternal             NA                0.0577762   0.0497063   0.0658462
Q3         6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                0.1735669   0.1662186   0.1809152
Q3         6 months    ki1126311-ZVITAMBO          ZIMBABWE                       VitA                 NA                0.1896008   0.1763582   0.2028434
Q3         6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                0.3218391   0.3060668   0.3376114
Q3         6 months    ki1148112-iLiNS-DOSE        MALAWI                         LNS                  NA                0.2681319   0.2339303   0.3023334
Q3         6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Control              NA                0.2812500   0.2504687   0.3120313
Q3         6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Maternal             NA                0.2486486   0.2075700   0.2897273
Q3         6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                0.2343003   0.2253296   0.2432710
Q3         6 months    kiGH5241-JiVitA-3           BANGLADESH                     Maternal             NA                0.2117647   0.2035081   0.2200213
Q3         24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                0.3970588   0.2805921   0.5135256
Q3         24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                  NA                0.3535354   0.2592243   0.4478464
Q3         24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                NA                0.3508772   0.2792407   0.4225137
Q3         24 months   ki1000111-WASH-Kenya        KENYA                          Control              NA                0.1954023   0.1364278   0.2543768
Q3         24 months   ki1000111-WASH-Kenya        KENYA                          LNS                  NA                0.2952381   0.2079013   0.3825749
Q3         24 months   ki1000111-WASH-Kenya        KENYA                          Other                NA                0.2876712   0.2276575   0.3476850
Q3         24 months   ki1000304-EU                INDIA                          Control              NA                0.4736842   0.2461588   0.7012096
Q3         24 months   ki1000304-EU                INDIA                          Zinc                 NA                0.4210526   0.1960695   0.6460358
Q3         24 months   ki1119695-PROBIT            BELARUS                        Control              NA                0.1390728   0.1040870   0.1740587
Q3         24 months   ki1119695-PROBIT            BELARUS                        Maternal             NA                0.1174935   0.0888690   0.1461180
Q3         24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                0.5588235   0.5324915   0.5851556
Q3         24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS                  NA                0.5219780   0.4606883   0.5832678
Q3         24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                0.5263158   0.4235687   0.6290629
Q3         24 months   kiGH5241-JiVitA-3           BANGLADESH                     Maternal             NA                0.5600000   0.4501417   0.6698583


### Parameter: E(Y)


meducyrs   agecat      studyid                     country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------  ----------  --------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Q4         Birth       ki1126311-ZVITAMBO          ZIMBABWE                       NA                   NA                0.0986547   0.0923872   0.1049222
Q4         Birth       kiGH5241-JiVitA-3           BANGLADESH                     NA                   NA                0.1775568   0.1455615   0.2095522
Q4         6 months    iLiNS_DYADM_LNS             MALAWI                         NA                   NA                0.1609195   0.1061636   0.2156755
Q4         6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     NA                   NA                0.0962567   0.0538700   0.1386434
Q4         6 months    ki1112895-Guatemala BSC     GUATEMALA                      NA                   NA                0.2637363   0.1726971   0.3547755
Q4         6 months    ki1119695-PROBIT            BELARUS                        NA                   NA                0.0428746   0.0275549   0.0581944
Q4         6 months    ki1126311-ZVITAMBO          ZIMBABWE                       NA                   NA                0.1548546   0.1447056   0.1650035
Q4         6 months    ki1148112-iLiNS-DOSE        MALAWI                         NA                   NA                0.2776770   0.2402485   0.3151054
Q4         6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         NA                   NA                0.1685393   0.1235532   0.2135255
Q4         6 months    kiGH5241-JiVitA-3           BANGLADESH                     NA                   NA                0.1035120   0.0806768   0.1263472
Q4         24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     NA                   NA                0.2891566   0.2403153   0.3379980
Q4         24 months   ki1000111-WASH-Kenya        KENYA                          NA                   NA                0.2108108   0.1768459   0.2447757
Q4         24 months   ki1148112-iLiNS-DOSE        MALAWI                         NA                   NA                0.4260870   0.3620394   0.4901345
Q1         Birth       ki1000304b-SAS-CompFeed     INDIA                          NA                   NA                0.3333333   0.2222179   0.4444487
Q1         Birth       ki1126311-ZVITAMBO          ZIMBABWE                       NA                   NA                0.1057692   0.0638737   0.1476647
Q1         Birth       ki1135781-COHORTS           GUATEMALA                      NA                   NA                0.0587349   0.0408373   0.0766326
Q1         Birth       kiGH5241-JiVitA-3           BANGLADESH                     NA                   NA                0.3432949   0.3309274   0.3556624
Q1         Birth       kiGH5241-JiVitA-4           BANGLADESH                     NA                   NA                0.2966102   0.2465266   0.3466938
Q1         6 months    iLiNS_DYADM_LNS             MALAWI                         NA                   NA                0.2485549   0.1839681   0.3131417
Q1         6 months    ki1000125-AgaKhanUniv       PAKISTAN                       NA                   NA                0.2622951   0.1839175   0.3406727
Q1         6 months    ki1000304-EU                INDIA                          NA                   NA                0.3750000   0.2933348   0.4566652
Q1         6 months    ki1000304-VITAMIN-A         INDIA                          NA                   NA                0.4071146   0.3800303   0.4341990
Q1         6 months    ki1000304-ZnMort            INDIA                          NA                   NA                0.4078947   0.2966727   0.5191168
Q1         6 months    ki1000304b-SAS-CompFeed     INDIA                          NA                   NA                0.3591549   0.3133210   0.4049889
Q1         6 months    ki1000304b-SAS-FoodSuppl    INDIA                          NA                   NA                0.4270833   0.3698553   0.4843114
Q1         6 months    ki1112895-Guatemala BSC     GUATEMALA                      NA                   NA                0.5312500   0.3555841   0.7069159
Q1         6 months    ki1126311-ZVITAMBO          ZIMBABWE                       NA                   NA                0.2118644   0.1378213   0.2859075
Q1         6 months    ki1135781-COHORTS           GUATEMALA                      NA                   NA                0.4220430   0.3865306   0.4575554
Q1         6 months    ki1148112-iLiNS-DOSE        MALAWI                         NA                   NA                0.3428571   0.2974078   0.3883065
Q1         6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         NA                   NA                0.2480916   0.1956934   0.3004898
Q1         6 months    ki1148112-LCNI-5            MALAWI                         NA                   NA                0.3867596   0.3468840   0.4266351
Q1         6 months    kiGH5241-JiVitA-3           BANGLADESH                     NA                   NA                0.2901499   0.2756293   0.3046705
Q1         6 months    kiGH5241-JiVitA-4           BANGLADESH                     NA                   NA                0.2536920   0.2303002   0.2770837
Q1         24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     NA                   NA                0.4900398   0.4280726   0.5520070
Q1         24 months   ki1000111-WASH-Kenya        KENYA                          NA                   NA                0.3750000   0.3476882   0.4023118
Q1         24 months   ki1000304-EU                INDIA                          NA                   NA                0.6699029   0.5786441   0.7611617
Q1         24 months   ki1000304-ZnMort            INDIA                          NA                   NA                0.7283951   0.6309285   0.8258616
Q1         24 months   ki1135781-COHORTS           GUATEMALA                      NA                   NA                0.7876448   0.7377408   0.8375487
Q1         24 months   ki1148112-iLiNS-DOSE        MALAWI                         NA                   NA                0.5314286   0.4572832   0.6055739
Q1         24 months   ki1148112-LCNI-5            MALAWI                         NA                   NA                0.3919414   0.3339255   0.4499573
Q1         24 months   kiGH5241-JiVitA-4           BANGLADESH                     NA                   NA                0.4229885   0.3717465   0.4742305
Q2         Birth       ki1126311-ZVITAMBO          ZIMBABWE                       NA                   NA                0.1309524   0.0986511   0.1632536
Q2         Birth       kiGH5241-JiVitA-3           BANGLADESH                     NA                   NA                0.3499892   0.3338074   0.3661709
Q2         6 months    iLiNS_DYADM_LNS             MALAWI                         NA                   NA                0.2348993   0.1665998   0.3031988
Q2         6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     NA                   NA                0.1444444   0.0929458   0.1959431
Q2         6 months    ki1000304-EU                INDIA                          NA                   NA                0.3333333   0.2598289   0.4068377
Q2         6 months    ki1000304-VITAMIN-A         INDIA                          NA                   NA                0.3121175   0.2803254   0.3439096
Q2         6 months    ki1000304-ZnMort            INDIA                          NA                   NA                0.3404255   0.2034913   0.4773598
Q2         6 months    ki1000304b-SAS-CompFeed     INDIA                          NA                   NA                0.2864583   0.2081397   0.3647770
Q2         6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1099111   0.0944542   0.1253679
Q2         6 months    ki1112895-Guatemala BSC     GUATEMALA                      NA                   NA                0.2903226   0.1764146   0.4042305
Q2         6 months    ki1119695-PROBIT            BELARUS                        NA                   NA                0.1150278   0.0716081   0.1584476
Q2         6 months    ki1126311-ZVITAMBO          ZIMBABWE                       NA                   NA                0.1673820   0.1193444   0.2154196
Q2         6 months    ki1135781-COHORTS           GUATEMALA                      NA                   NA                0.3896104   0.3123386   0.4668822
Q2         6 months    ki1148112-iLiNS-DOSE        MALAWI                         NA                   NA                0.3371105   0.2877268   0.3864942
Q2         6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         NA                   NA                0.2283105   0.1725914   0.2840296
Q2         6 months    ki1148112-LCNI-5            MALAWI                         NA                   NA                0.3009259   0.2396175   0.3622344
Q2         6 months    kiGH5241-JiVitA-3           BANGLADESH                     NA                   NA                0.2820911   0.2643098   0.2998724
Q2         24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     NA                   NA                0.5338346   0.4737728   0.5938964
Q2         24 months   ki1000304-EU                INDIA                          NA                   NA                0.6300000   0.5348954   0.7251046
Q2         24 months   ki1000304-ZnMort            INDIA                          NA                   NA                0.4871795   0.3282577   0.6461013
Q2         24 months   ki1135781-COHORTS           GUATEMALA                      NA                   NA                0.7454545   0.6292710   0.8616380
Q2         24 months   ki1148112-iLiNS-DOSE        MALAWI                         NA                   NA                0.5608108   0.4805833   0.6410383
Q2         24 months   ki1148112-LCNI-5            MALAWI                         NA                   NA                0.2989691   0.2073904   0.3905477
Q3         Birth       ki1119695-PROBIT            BELARUS                        NA                   NA                0.0025171   0.0009315   0.0041027
Q3         Birth       ki1126311-ZVITAMBO          ZIMBABWE                       NA                   NA                0.1108138   0.1016261   0.1200016
Q3         Birth       kiGH5241-JiVitA-3           BANGLADESH                     NA                   NA                0.2951438   0.2824903   0.3077973
Q3         6 months    iLiNS_DYADM_LNS             MALAWI                         NA                   NA                0.2620321   0.1988364   0.3252278
Q3         6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     NA                   NA                0.1235294   0.0739206   0.1731382
Q3         6 months    ki1000304-VITAMIN-A         INDIA                          NA                   NA                0.2228117   0.1807500   0.2648733
Q3         6 months    ki1000304b-SAS-CompFeed     INDIA                          NA                   NA                0.1129032   0.0551541   0.1706524
Q3         6 months    ki1119695-PROBIT            BELARUS                        NA                   NA                0.0655410   0.0505835   0.0804984
Q3         6 months    ki1126311-ZVITAMBO          ZIMBABWE                       NA                   NA                0.1856240   0.1704768   0.2007712
Q3         6 months    ki1148112-iLiNS-DOSE        MALAWI                         NA                   NA                0.2767528   0.2390530   0.3144525
Q3         6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         NA                   NA                0.2597865   0.2084228   0.3111501
Q3         6 months    kiGH5241-JiVitA-3           BANGLADESH                     NA                   NA                0.2231725   0.2109180   0.2354270
Q3         24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     NA                   NA                0.3609467   0.3096697   0.4122238
Q3         24 months   ki1000111-WASH-Kenya        KENYA                          NA                   NA                0.2570281   0.2186091   0.2954471
Q3         24 months   ki1000304-EU                INDIA                          NA                   NA                0.4473684   0.2871554   0.6075814
Q3         24 months   ki1119695-PROBIT            BELARUS                        NA                   NA                0.1270073   0.0816298   0.1723848
Q3         24 months   ki1148112-iLiNS-DOSE        MALAWI                         NA                   NA                0.5277778   0.4610468   0.5945088
Q3         24 months   kiGH5241-JiVitA-3           BANGLADESH                     NA                   NA                0.5454545   0.3947582   0.6961509


### Parameter: RR


meducyrs   agecat      studyid                     country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------  ----------  --------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Q4         Birth       ki1126311-ZVITAMBO          ZIMBABWE                       Control              Control           1.0000000   1.0000000   1.0000000
Q4         Birth       ki1126311-ZVITAMBO          ZIMBABWE                       VitA                 Control           0.8414241   0.7894761   0.8967904
Q4         Birth       kiGH5241-JiVitA-3           BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
Q4         Birth       kiGH5241-JiVitA-3           BANGLADESH                     Maternal             Control           0.9417171   0.7864360   1.1276584
Q4         6 months    iLiNS_DYADM_LNS             MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
Q4         6 months    iLiNS_DYADM_LNS             MALAWI                         LNS                  Control           1.2081448   0.8581339   1.7009161
Q4         6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
Q4         6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                  Control           0.6199461   0.2104409   1.8263232
Q4         6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Other                Control           0.4480519   0.1594415   1.2590862
Q4         6 months    ki1112895-Guatemala BSC     GUATEMALA                      Control              Control           1.0000000   1.0000000   1.0000000
Q4         6 months    ki1112895-Guatemala BSC     GUATEMALA                      Other                Control           1.0980392   0.7771131   1.5514989
Q4         6 months    ki1119695-PROBIT            BELARUS                        Control              Control           1.0000000   1.0000000   1.0000000
Q4         6 months    ki1119695-PROBIT            BELARUS                        Maternal             Control           0.6118899   0.4410581   0.8488887
Q4         6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control              Control           1.0000000   1.0000000   1.0000000
Q4         6 months    ki1126311-ZVITAMBO          ZIMBABWE                       VitA                 Control           1.0103486   0.9462543   1.0787844
Q4         6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
Q4         6 months    ki1148112-iLiNS-DOSE        MALAWI                         LNS                  Control           1.0773420   0.9414193   1.2328894
Q4         6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
Q4         6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Maternal             Control           1.2307692   0.9409951   1.6097777
Q4         6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
Q4         6 months    kiGH5241-JiVitA-3           BANGLADESH                     Maternal             Control           0.9647823   0.7740800   1.2024660
Q4         24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
Q4         24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                  Control           0.7387612   0.4349954   1.2546526
Q4         24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                Control           1.0556319   0.7132883   1.5622836
Q4         24 months   ki1000111-WASH-Kenya        KENYA                          Control              Control           1.0000000   1.0000000   1.0000000
Q4         24 months   ki1000111-WASH-Kenya        KENYA                          LNS                  Control           0.9891892   0.6076107   1.6103983
Q4         24 months   ki1000111-WASH-Kenya        KENYA                          Other                Control           1.2220033   0.8436600   1.7700164
Q4         24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
Q4         24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS                  Control           0.9728981   0.8371052   1.1307189
Q1         Birth       ki1000304b-SAS-CompFeed     INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
Q1         Birth       ki1000304b-SAS-CompFeed     INDIA                          Other                Control           1.3860294   0.9600745   2.0009671
Q1         Birth       ki1126311-ZVITAMBO          ZIMBABWE                       Control              Control           1.0000000   1.0000000   1.0000000
Q1         Birth       ki1126311-ZVITAMBO          ZIMBABWE                       VitA                 Control           0.7703081   0.5168477   1.1480648
Q1         Birth       ki1135781-COHORTS           GUATEMALA                      Control              Control           1.0000000   1.0000000   1.0000000
Q1         Birth       ki1135781-COHORTS           GUATEMALA                      Other                Control           1.4363354   1.0535030   1.9582852
Q1         Birth       kiGH5241-JiVitA-3           BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
Q1         Birth       kiGH5241-JiVitA-3           BANGLADESH                     Maternal             Control           0.9102779   0.8781455   0.9435861
Q1         Birth       kiGH5241-JiVitA-4           BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
Q1         Birth       kiGH5241-JiVitA-4           BANGLADESH                     LNS                  Control           0.9176863   0.5752687   1.4639215
Q1         Birth       kiGH5241-JiVitA-4           BANGLADESH                     Other                Control           1.0747126   0.7260804   1.5907430
Q1         6 months    iLiNS_DYADM_LNS             MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
Q1         6 months    iLiNS_DYADM_LNS             MALAWI                         LNS                  Control           1.0350493   0.7981559   1.3422528
Q1         6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Control              Control           1.0000000   1.0000000   1.0000000
Q1         6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Maternal             Control           0.8305085   0.6149120   1.1216959
Q1         6 months    ki1000304-EU                INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
Q1         6 months    ki1000304-EU                INDIA                          Zinc                 Control           1.0710448   0.6927967   1.6558060
Q1         6 months    ki1000304-VITAMIN-A         INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
Q1         6 months    ki1000304-VITAMIN-A         INDIA                          VitA                 Control           0.9618426   0.8999166   1.0280300
Q1         6 months    ki1000304-ZnMort            INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
Q1         6 months    ki1000304-ZnMort            INDIA                          Zinc                 Control           1.0483871   0.6042504   1.8189736
Q1         6 months    ki1000304b-SAS-CompFeed     INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
Q1         6 months    ki1000304b-SAS-CompFeed     INDIA                          Other                Control           1.1377069   1.0211325   1.2675895
Q1         6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
Q1         6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Other                Control           0.7876205   0.6879631   0.9017141
Q1         6 months    ki1112895-Guatemala BSC     GUATEMALA                      Control              Control           1.0000000   1.0000000   1.0000000
Q1         6 months    ki1112895-Guatemala BSC     GUATEMALA                      Other                Control           1.1250000   0.8072640   1.5677957
Q1         6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control              Control           1.0000000   1.0000000   1.0000000
Q1         6 months    ki1126311-ZVITAMBO          ZIMBABWE                       VitA                 Control           0.8766234   0.6176147   1.2442523
Q1         6 months    ki1135781-COHORTS           GUATEMALA                      Control              Control           1.0000000   1.0000000   1.0000000
Q1         6 months    ki1135781-COHORTS           GUATEMALA                      Other                Control           0.7672101   0.7044076   0.8356120
Q1         6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
Q1         6 months    ki1148112-iLiNS-DOSE        MALAWI                         LNS                  Control           0.8666667   0.7588520   0.9897992
Q1         6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
Q1         6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Maternal             Control           1.0227273   0.8279950   1.2632577
Q1         6 months    ki1148112-LCNI-5            MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
Q1         6 months    ki1148112-LCNI-5            MALAWI                         LNS                  Control           1.0448470   0.8025073   1.3603679
Q1         6 months    ki1148112-LCNI-5            MALAWI                         Other                Control           1.1548343   0.8635063   1.5444501
Q1         6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
Q1         6 months    kiGH5241-JiVitA-3           BANGLADESH                     Maternal             Control           0.9268846   0.8814475   0.9746639
Q1         6 months    kiGH5241-JiVitA-4           BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
Q1         6 months    kiGH5241-JiVitA-4           BANGLADESH                     LNS                  Control           0.9002979   0.7021110   1.1544275
Q1         6 months    kiGH5241-JiVitA-4           BANGLADESH                     Other                Control           1.0245554   0.8317123   1.2621117
Q1         24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
Q1         24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                  Control           0.7983871   0.5545192   1.1495039
Q1         24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                Control           0.8479602   0.6332274   1.1355106
Q1         24 months   ki1000111-WASH-Kenya        KENYA                          Control              Control           1.0000000   1.0000000   1.0000000
Q1         24 months   ki1000111-WASH-Kenya        KENYA                          LNS                  Control           0.8122354   0.6627994   0.9953635
Q1         24 months   ki1000111-WASH-Kenya        KENYA                          Other                Control           0.9179038   0.7806002   1.0793585
Q1         24 months   ki1000304-EU                INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
Q1         24 months   ki1000304-EU                INDIA                          Zinc                 Control           0.8647799   0.6581776   1.1362347
Q1         24 months   ki1000304-ZnMort            INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
Q1         24 months   ki1000304-ZnMort            INDIA                          Zinc                 Control           0.9547697   0.7289958   1.2504671
Q1         24 months   ki1135781-COHORTS           GUATEMALA                      Control              Control           1.0000000   1.0000000   1.0000000
Q1         24 months   ki1135781-COHORTS           GUATEMALA                      Other                Control           0.9033559   0.8475703   0.9628132
Q1         24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
Q1         24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS                  Control           1.1208415   0.9746187   1.2890022
Q1         24 months   ki1148112-LCNI-5            MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
Q1         24 months   ki1148112-LCNI-5            MALAWI                         LNS                  Control           1.1101495   0.7826735   1.5746437
Q1         24 months   ki1148112-LCNI-5            MALAWI                         Other                Control           0.9990371   0.6578274   1.5172295
Q1         24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
Q1         24 months   kiGH5241-JiVitA-4           BANGLADESH                     LNS                  Control           0.9501916   0.6962016   1.2968429
Q1         24 months   kiGH5241-JiVitA-4           BANGLADESH                     Other                Control           0.8154995   0.6161562   1.0793358
Q2         Birth       ki1126311-ZVITAMBO          ZIMBABWE                       Control              Control           1.0000000   1.0000000   1.0000000
Q2         Birth       ki1126311-ZVITAMBO          ZIMBABWE                       VitA                 Control           1.2996845   1.0137424   1.6662813
Q2         Birth       kiGH5241-JiVitA-3           BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
Q2         Birth       kiGH5241-JiVitA-3           BANGLADESH                     Maternal             Control           0.9076566   0.8664585   0.9508135
Q2         6 months    iLiNS_DYADM_LNS             MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
Q2         6 months    iLiNS_DYADM_LNS             MALAWI                         LNS                  Control           0.7808219   0.5821217   1.0473460
Q2         6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
Q2         6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                  Control           0.4000000   0.1519577   1.0529248
Q2         6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Other                Control           0.4390244   0.1993200   0.9670000
Q2         6 months    ki1000304-EU                INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
Q2         6 months    ki1000304-EU                INDIA                          Zinc                 Control           0.7478374   0.4689343   1.1926207
Q2         6 months    ki1000304-VITAMIN-A         INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
Q2         6 months    ki1000304-VITAMIN-A         INDIA                          VitA                 Control           0.9204822   0.8312339   1.0193130
Q2         6 months    ki1000304-ZnMort            INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
Q2         6 months    ki1000304-ZnMort            INDIA                          Zinc                 Control           0.8838384   0.3918983   1.9932984
Q2         6 months    ki1000304b-SAS-CompFeed     INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
Q2         6 months    ki1000304b-SAS-CompFeed     INDIA                          Other                Control           0.9637789   0.7323480   1.2683449
Q2         6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              Control           1.0000000   1.0000000   1.0000000
Q2         6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                Control           1.0396009   0.6957348   1.5534226
Q2         6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                 Control           1.0476190   0.7402537   1.4826075
Q2         6 months    ki1112895-Guatemala BSC     GUATEMALA                      Control              Control           1.0000000   1.0000000   1.0000000
Q2         6 months    ki1112895-Guatemala BSC     GUATEMALA                      Other                Control           0.6787879   0.4537753   1.0153769
Q2         6 months    ki1119695-PROBIT            BELARUS                        Control              Control           1.0000000   1.0000000   1.0000000
Q2         6 months    ki1119695-PROBIT            BELARUS                        Maternal             Control           0.7111111   0.5107873   0.9899992
Q2         6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control              Control           1.0000000   1.0000000   1.0000000
Q2         6 months    ki1126311-ZVITAMBO          ZIMBABWE                       VitA                 Control           0.7057314   0.5274105   0.9443438
Q2         6 months    ki1135781-COHORTS           GUATEMALA                      Control              Control           1.0000000   1.0000000   1.0000000
Q2         6 months    ki1135781-COHORTS           GUATEMALA                      Other                Control           1.0131579   0.8308838   1.2354182
Q2         6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
Q2         6 months    ki1148112-iLiNS-DOSE        MALAWI                         LNS                  Control           0.8490479   0.7330571   0.9833919
Q2         6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
Q2         6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Maternal             Control           0.7972028   0.6234184   1.0194314
Q2         6 months    ki1148112-LCNI-5            MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
Q2         6 months    ki1148112-LCNI-5            MALAWI                         LNS                  Control           1.0084848   0.6006112   1.6933444
Q2         6 months    ki1148112-LCNI-5            MALAWI                         Other                Control           1.1555556   0.6528614   2.0453171
Q2         6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
Q2         6 months    kiGH5241-JiVitA-3           BANGLADESH                     Maternal             Control           0.9242489   0.8679631   0.9841847
Q2         24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
Q2         24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                  Control           1.0254430   0.7347974   1.4310521
Q2         24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                Control           1.0866635   0.8125438   1.4532601
Q2         24 months   ki1000304-EU                INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
Q2         24 months   ki1000304-EU                INDIA                          Zinc                 Control           0.8877551   0.6547826   1.2036195
Q2         24 months   ki1000304-ZnMort            INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
Q2         24 months   ki1000304-ZnMort            INDIA                          Zinc                 Control           0.6634615   0.3176333   1.3858156
Q2         24 months   ki1135781-COHORTS           GUATEMALA                      Control              Control           1.0000000   1.0000000   1.0000000
Q2         24 months   ki1135781-COHORTS           GUATEMALA                      Other                Control           1.0622711   0.9087138   1.2417769
Q2         24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
Q2         24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS                  Control           0.9539171   0.8267242   1.1006787
Q2         24 months   ki1148112-LCNI-5            MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
Q2         24 months   ki1148112-LCNI-5            MALAWI                         LNS                  Control           0.8163265   0.4176596   1.5955315
Q2         24 months   ki1148112-LCNI-5            MALAWI                         Other                Control           0.5555556   0.2169562   1.4226004
Q3         Birth       ki1119695-PROBIT            BELARUS                        Control              Control           1.0000000   1.0000000   1.0000000
Q3         Birth       ki1119695-PROBIT            BELARUS                        Maternal             Control           0.4682649   0.2519084   0.8704432
Q3         Birth       ki1126311-ZVITAMBO          ZIMBABWE                       Control              Control           1.0000000   1.0000000   1.0000000
Q3         Birth       ki1126311-ZVITAMBO          ZIMBABWE                       VitA                 Control           1.3348933   1.2277830   1.4513479
Q3         Birth       kiGH5241-JiVitA-3           BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
Q3         Birth       kiGH5241-JiVitA-3           BANGLADESH                     Maternal             Control           0.8613983   0.8253211   0.8990526
Q3         6 months    iLiNS_DYADM_LNS             MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
Q3         6 months    iLiNS_DYADM_LNS             MALAWI                         LNS                  Control           0.8595849   0.6747482   1.0950546
Q3         6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
Q3         6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                  Control           0.7500000   0.2493217   2.2561215
Q3         6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Other                Control           0.6382979   0.2495488   1.6326430
Q3         6 months    ki1000304-VITAMIN-A         INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
Q3         6 months    ki1000304-VITAMIN-A         INDIA                          VitA                 Control           0.7783784   0.6432481   0.9418961
Q3         6 months    ki1000304b-SAS-CompFeed     INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
Q3         6 months    ki1000304b-SAS-CompFeed     INDIA                          Other                Control           0.4882155   0.2807977   0.8488473
Q3         6 months    ki1119695-PROBIT            BELARUS                        Control              Control           1.0000000   1.0000000   1.0000000
Q3         6 months    ki1119695-PROBIT            BELARUS                        Maternal             Control           0.7886044   0.6388101   0.9735239
Q3         6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control              Control           1.0000000   1.0000000   1.0000000
Q3         6 months    ki1126311-ZVITAMBO          ZIMBABWE                       VitA                 Control           1.0923792   1.0067061   1.1853432
Q3         6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
Q3         6 months    ki1148112-iLiNS-DOSE        MALAWI                         LNS                  Control           0.8331240   0.7267170   0.9551113
Q3         6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
Q3         6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Maternal             Control           0.8840841   0.7251520   1.0778494
Q3         6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
Q3         6 months    kiGH5241-JiVitA-3           BANGLADESH                     Maternal             Control           0.9038175   0.8557632   0.9545703
Q3         24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
Q3         24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                  Control           0.8903853   0.5989430   1.3236419
Q3         24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                Control           0.8836907   0.6181464   1.2633079
Q3         24 months   ki1000111-WASH-Kenya        KENYA                          Control              Control           1.0000000   1.0000000   1.0000000
Q3         24 months   ki1000111-WASH-Kenya        KENYA                          LNS                  Control           1.5109244   0.9901617   2.3055754
Q3         24 months   ki1000111-WASH-Kenya        KENYA                          Other                Control           1.4721998   1.0200617   2.1247463
Q3         24 months   ki1000304-EU                INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
Q3         24 months   ki1000304-EU                INDIA                          Zinc                 Control           0.8888889   0.4333212   1.8234128
Q3         24 months   ki1119695-PROBIT            BELARUS                        Control              Control           1.0000000   1.0000000   1.0000000
Q3         24 months   ki1119695-PROBIT            BELARUS                        Maternal             Control           0.8448340   0.5952049   1.1991577
Q3         24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
Q3         24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS                  Control           0.9340659   0.8230581   1.0600457
Q3         24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
Q3         24 months   kiGH5241-JiVitA-3           BANGLADESH                     Maternal             Control           1.0640000   0.8067965   1.4031989


### Parameter: PAR


meducyrs   agecat      studyid                     country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
---------  ----------  --------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Q4         Birth       ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                -0.0133269   -0.0186486   -0.0080051
Q4         Birth       kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                -0.0056264   -0.0282990    0.0170463
Q4         6 months    iLiNS_DYADM_LNS             MALAWI                         Control              NA                 0.0148521   -0.0249165    0.0546208
Q4         6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                -0.0559172   -0.1413549    0.0295204
Q4         6 months    ki1112895-Guatemala BSC     GUATEMALA                      Control              NA                 0.0137363   -0.0553312    0.0828038
Q4         6 months    ki1119695-PROBIT            BELARUS                        Control              NA                -0.0113958   -0.0204968   -0.0022949
Q4         6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                 0.0012022   -0.0076315    0.0100358
Q4         6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                 0.0168074   -0.0174859    0.0511007
Q4         6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Control              NA                 0.0224719   -0.0152549    0.0601987
Q4         6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                -0.0019567   -0.0175105    0.0135970
Q4         24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                -0.0096939   -0.0921676    0.0727797
Q4         24 months   ki1000111-WASH-Kenya        KENYA                          Control              NA                 0.0195540   -0.0279994    0.0671073
Q4         24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                -0.0098105   -0.0681429    0.0485219
Q1         Birth       ki1000304b-SAS-CompFeed     INDIA                          Control              NA                 0.0574713   -0.0106875    0.1256300
Q1         Birth       ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                -0.0215035   -0.0562911    0.0132841
Q1         Birth       ki1135781-COHORTS           GUATEMALA                      Control              NA                 0.0114376   -0.0028431    0.0257184
Q1         Birth       kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                -0.0162757   -0.0250354   -0.0075161
Q1         Birth       kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                 0.0036809   -0.0740436    0.0814054
Q1         6 months    iLiNS_DYADM_LNS             MALAWI                         Control              NA                 0.0041105   -0.0408956    0.0491165
Q1         6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Control              NA                -0.0234192   -0.0763085    0.0294701
Q1         6 months    ki1000304-EU                INDIA                          Control              NA                 0.0126812   -0.0678088    0.0931711
Q1         6 months    ki1000304-VITAMIN-A         INDIA                          Control              NA                -0.0077461   -0.0266355    0.0111434
Q1         6 months    ki1000304-ZnMort            INDIA                          Control              NA                 0.0078947   -0.0845496    0.1003391
Q1         6 months    ki1000304b-SAS-CompFeed     INDIA                          Control              NA                 0.0234406   -0.0157648    0.0626461
Q1         6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Control              NA                -0.0795833   -0.1286119   -0.0305548
Q1         6 months    ki1112895-Guatemala BSC     GUATEMALA                      Control              NA                 0.0312500   -0.0927207    0.1552207
Q1         6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                -0.0214689   -0.0846285    0.0416906
Q1         6 months    ki1135781-COHORTS           GUATEMALA                      Control              NA                -0.0628055   -0.0890418   -0.0365691
Q1         6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                -0.0428571   -0.0841318   -0.0015825
Q1         6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Control              NA                 0.0036472   -0.0389180    0.0462123
Q1         6 months    ki1148112-LCNI-5            MALAWI                         Control              NA                 0.0224739   -0.0471711    0.0921188
Q1         6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                -0.0112750   -0.0221198   -0.0004302
Q1         6 months    kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                -0.0036754   -0.0397759    0.0324251
Q1         24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                -0.0735965   -0.1899087    0.0427156
Q1         24 months   ki1000111-WASH-Kenya        KENYA                          Control              NA                -0.0325000   -0.0716118    0.0066118
Q1         24 months   ki1000304-EU                INDIA                          Control              NA                -0.0500971   -0.1438186    0.0436244
Q1         24 months   ki1000304-ZnMort            INDIA                          Control              NA                -0.0157910   -0.1076429    0.0760609
Q1         24 months   ki1135781-COHORTS           GUATEMALA                      Control              NA                -0.0404802   -0.0784677   -0.0024928
Q1         24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                 0.0486700   -0.0190352    0.1163751
Q1         24 months   ki1148112-LCNI-5            MALAWI                         Control              NA                 0.0184474   -0.0688805    0.1057753
Q1         24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                -0.0447534   -0.1251564    0.0356496
Q2         Birth       ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                 0.0241563   -0.0046343    0.0529468
Q2         Birth       kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                -0.0170994   -0.0291461   -0.0050528
Q2         6 months    iLiNS_DYADM_LNS             MALAWI                         Control              NA                -0.0282586   -0.0740588    0.0175417
Q2         6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                -0.1055556   -0.2040131   -0.0070980
Q2         6 months    ki1000304-EU                INDIA                          Control              NA                -0.0402930   -0.1032595    0.0226734
Q2         6 months    ki1000304-VITAMIN-A         INDIA                          Control              NA                -0.0130056   -0.0353087    0.0092974
Q2         6 months    ki1000304-ZnMort            INDIA                          Control              NA                -0.0195745   -0.1478013    0.1086523
Q2         6 months    ki1000304b-SAS-CompFeed     INDIA                          Control              NA                -0.0056765   -0.0698909    0.0585379
Q2         6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              NA                 0.0035819   -0.0228662    0.0300301
Q2         6 months    ki1112895-Guatemala BSC     GUATEMALA                      Control              NA                -0.0534274   -0.1285459    0.0216910
Q2         6 months    ki1119695-PROBIT            BELARUS                        Control              NA                -0.0233650   -0.0457460   -0.0009840
Q2         6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                -0.0447392   -0.0837745   -0.0057040
Q2         6 months    ki1135781-COHORTS           GUATEMALA                      Control              NA                 0.0018553   -0.0448121    0.0485227
Q2         6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                -0.0488544   -0.0938112   -0.0038976
Q2         6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Control              NA                -0.0348474   -0.0786521    0.0089573
Q2         6 months    ki1148112-LCNI-5            MALAWI                         Control              NA                 0.0124644   -0.0955054    0.1204342
Q2         6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                -0.0112843   -0.0231704    0.0006018
Q2         24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                 0.0256379   -0.0846354    0.1359111
Q2         24 months   ki1000304-EU                INDIA                          Control              NA                -0.0366667   -0.1299766    0.0566432
Q2         24 months   ki1000304-ZnMort            INDIA                          Control              NA                -0.0780379   -0.2110616    0.0549857
Q2         24 months   ki1135781-COHORTS           GUATEMALA                      Control              NA                 0.0213166   -0.0561798    0.0988130
Q2         24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                -0.0225225   -0.0960512    0.0510061
Q2         24 months   ki1148112-LCNI-5            MALAWI                         Control              NA                -0.0760309   -0.2419663    0.0899044
Q3         Birth       ki1119695-PROBIT            BELARUS                        Control              NA                -0.0009187   -0.0017265   -0.0001110
Q3         Birth       ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                 0.0222628    0.0140666    0.0304591
Q3         Birth       kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                -0.0218988   -0.0310791   -0.0127185
Q3         6 months    iLiNS_DYADM_LNS             MALAWI                         Control              NA                -0.0192179   -0.0622341    0.0237983
Q3         6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                -0.0431373   -0.1482807    0.0620061
Q3         6 months    ki1000304-VITAMIN-A         INDIA                          Control              NA                -0.0271883   -0.0553590    0.0009824
Q3         6 months    ki1000304b-SAS-CompFeed     INDIA                          Control              NA                -0.0422692   -0.0865790    0.0020406
Q3         6 months    ki1119695-PROBIT            BELARUS                        Control              NA                -0.0077229   -0.0165686    0.0011227
Q3         6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                 0.0120571   -0.0011882    0.0253025
Q3         6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                -0.0450863   -0.0793282   -0.0108444
Q3         6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Control              NA                -0.0214635   -0.0625821    0.0196550
Q3         6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                -0.0111278   -0.0194581   -0.0027975
Q3         24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                -0.0361121   -0.1397264    0.0675023
Q3         24 months   ki1000111-WASH-Kenya        KENYA                          Control              NA                 0.0616258    0.0113903    0.1118614
Q3         24 months   ki1000304-EU                INDIA                          Control              NA                -0.0263158   -0.1865288    0.1338972
Q3         24 months   ki1119695-PROBIT            BELARUS                        Control              NA                -0.0120655   -0.0409020    0.0167709
Q3         24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                -0.0310458   -0.0923617    0.0302702
Q3         24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                 0.0191388   -0.0908794    0.1291570


### Parameter: PAF


meducyrs   agecat      studyid                     country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
---------  ----------  --------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Q4         Birth       ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                -0.1350859   -0.1981741   -0.0753195
Q4         Birth       kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                -0.0316877   -0.1722743    0.0920389
Q4         6 months    iLiNS_DYADM_LNS             MALAWI                         Control              NA                 0.0922953   -0.1635076    0.2918588
Q4         6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                -0.5809179   -1.7285470    0.0840175
Q4         6 months    ki1112895-Guatemala BSC     GUATEMALA                      Control              NA                 0.0520833   -0.2320551    0.2706933
Q4         6 months    ki1119695-PROBIT            BELARUS                        Control              NA                -0.2657939   -0.5817114   -0.0129751
Q4         6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                 0.0077632   -0.0504847    0.0627814
Q4         6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                 0.0605286   -0.0630179    0.1697161
Q4         6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Control              NA                 0.1333333   -0.0853035    0.3079253
Q4         6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                -0.0189035   -0.1841408    0.1232763
Q4         24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                -0.0335249   -0.3619752    0.2157172
Q4         24 months   ki1000111-WASH-Kenya        KENYA                          Control              NA                 0.0927561   -0.1630092    0.2922742
Q4         24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                -0.0230246   -0.1731274    0.1078724
Q1         Birth       ki1000304b-SAS-CompFeed     INDIA                          Control              NA                 0.1724138   -0.0270114    0.3331146
Q1         Birth       ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                -0.2033058   -0.6754494    0.1357872
Q1         Birth       ki1135781-COHORTS           GUATEMALA                      Control              NA                 0.1947332   -0.0310533    0.3710756
Q1         Birth       kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                -0.0474104   -0.0745022   -0.0210016
Q1         Birth       kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                 0.0124098   -0.2875127    0.2424662
Q1         6 months    iLiNS_DYADM_LNS             MALAWI                         Control              NA                 0.0165375   -0.1787120    0.1794446
Q1         6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Control              NA                -0.0892857   -0.3337189    0.1103498
Q1         6 months    ki1000304-EU                INDIA                          Control              NA                 0.0338164   -0.2065581    0.2263027
Q1         6 months    ki1000304-VITAMIN-A         INDIA                          Control              NA                -0.0190267   -0.0674311    0.0271827
Q1         6 months    ki1000304-ZnMort            INDIA                          Control              NA                 0.0193548   -0.2356391    0.2217267
Q1         6 months    ki1000304b-SAS-CompFeed     INDIA                          Control              NA                 0.0652661   -0.0423133    0.1617420
Q1         6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Control              NA                -0.1863415   -0.3313385   -0.0571362
Q1         6 months    ki1112895-Guatemala BSC     GUATEMALA                      Control              NA                 0.0588235   -0.1890931    0.2550515
Q1         6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                -0.1013333   -0.4845426    0.1829570
Q1         6 months    ki1135781-COHORTS           GUATEMALA                      Control              NA                -0.1488130   -0.2230245   -0.0791045
Q1         6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                -0.1250000   -0.2691218    0.0027553
Q1         6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Control              NA                 0.0147009   -0.1697268    0.1700503
Q1         6 months    ki1148112-LCNI-5            MALAWI                         Control              NA                 0.0581081   -0.1403523    0.2220296
Q1         6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                -0.0388593   -0.0784435   -0.0007281
Q1         6 months    kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                -0.0144877   -0.1674544    0.1184365
Q1         24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                -0.1501848   -0.4149313    0.0650252
Q1         24 months   ki1000111-WASH-Kenya        KENYA                          Control              NA                -0.0866667   -0.1961980    0.0128353
Q1         24 months   ki1000304-EU                INDIA                          Control              NA                -0.0747826   -0.2256146    0.0574870
Q1         24 months   ki1000304-ZnMort            INDIA                          Control              NA                -0.0216791   -0.1560623    0.0970830
Q1         24 months   ki1135781-COHORTS           GUATEMALA                      Control              NA                -0.0513940   -0.1033907   -0.0018476
Q1         24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                 0.0915832   -0.0319798    0.2003516
Q1         24 months   ki1148112-LCNI-5            MALAWI                         Control              NA                 0.0470668   -0.2039755    0.2457640
Q1         24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                -0.1058029   -0.3140535    0.0694441
Q2         Birth       ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                 0.1844660   -0.0175457    0.3463727
Q2         Birth       kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                -0.0488570   -0.0856152   -0.0133434
Q2         6 months    iLiNS_DYADM_LNS             MALAWI                         Control              NA                -0.1203008   -0.3633518    0.0794205
Q2         6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                -0.7307692   -1.5351501   -0.1816113
Q2         6 months    ki1000304-EU                INDIA                          Control              NA                -0.1208791   -0.3268979    0.0531524
Q2         6 months    ki1000304-VITAMIN-A         INDIA                          Control              NA                -0.0416691   -0.1188937    0.0302256
Q2         6 months    ki1000304-ZnMort            INDIA                          Control              NA                -0.0575000   -0.5100680    0.2594332
Q2         6 months    ki1000304b-SAS-CompFeed     INDIA                          Control              NA                -0.0198161   -0.2761036    0.1849996
Q2         6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              NA                 0.0325894   -0.2405715    0.2456032
Q2         6 months    ki1112895-Guatemala BSC     GUATEMALA                      Control              NA                -0.1840278   -0.5398621    0.0895797
Q2         6 months    ki1119695-PROBIT            BELARUS                        Control              NA                -0.2031250   -0.4762567    0.0194729
Q2         6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                -0.2672883   -0.6043893   -0.0010161
Q2         6 months    ki1135781-COHORTS           GUATEMALA                      Control              NA                 0.0047619   -0.1218834    0.1171107
Q2         6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                -0.1449211   -0.3085447   -0.0017574
Q2         6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Control              NA                -0.1526316   -0.3978689    0.0495821
Q2         6 months    ki1148112-LCNI-5            MALAWI                         Control              NA                 0.0414201   -0.3937178    0.3407020
Q2         6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                -0.0400023   -0.0848002    0.0029456
Q2         24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                 0.0480259   -0.1827703    0.2337864
Q2         24 months   ki1000304-EU                INDIA                          Control              NA                -0.0582011   -0.2179571    0.0806002
Q2         24 months   ki1000304-ZnMort            INDIA                          Control              NA                -0.1601831   -0.4755953    0.0878090
Q2         24 months   ki1135781-COHORTS           GUATEMALA                      Control              NA                 0.0285955   -0.0778868    0.1245585
Q2         24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                -0.0401606   -0.1859037    0.0876712
Q2         24 months   ki1148112-LCNI-5            MALAWI                         Control              NA                -0.2543103   -0.9530349    0.1944361
Q3         Birth       ki1119695-PROBIT            BELARUS                        Control              NA                -0.3649961   -0.9426113    0.0408712
Q3         Birth       ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                 0.2009031    0.1390437    0.2583179
Q3         Birth       kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                -0.0741971   -0.1082114   -0.0412268
Q3         6 months    iLiNS_DYADM_LNS             MALAWI                         Control              NA                -0.0733418   -0.2653950    0.0895628
Q3         6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                -0.3492063   -1.5219896    0.2782057
Q3         6 months    ki1000304-VITAMIN-A         INDIA                          Control              NA                -0.1220238   -0.2744090    0.0121402
Q3         6 months    ki1000304b-SAS-CompFeed     INDIA                          Control              NA                -0.3743842   -1.0576764    0.0820073
Q3         6 months    ki1119695-PROBIT            BELARUS                        Control              NA                -0.1178338   -0.2820581    0.0253544
Q3         6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                 0.0649546   -0.0042576    0.1293968
Q3         6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                -0.1629119   -0.3164146   -0.0273086
Q3         6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Control              NA                -0.0826199   -0.2686081    0.0761010
Q3         6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                -0.0498618   -0.0898479   -0.0113428
Q3         24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                -0.1000482   -0.4281591    0.1526812
Q3         24 months   ki1000111-WASH-Kenya        KENYA                          Control              NA                 0.2397629    0.0189129    0.4108980
Q3         24 months   ki1000304-EU                INDIA                          Control              NA                -0.0588235   -0.4855775    0.2453391
Q3         24 months   ki1119695-PROBIT            BELARUS                        Control              NA                -0.0949989   -0.3758825    0.1285429
Q3         24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                -0.0588235   -0.1893050    0.0573425
Q3         24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                 0.0350877   -0.1806717    0.2114187
