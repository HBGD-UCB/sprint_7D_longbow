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

* feducyrs
* agecat
* studyid
* country

## Data Summary

feducyrs   agecat      studyid                     country                        tr          stunted   n_cell       n
---------  ----------  --------------------------  -----------------------------  ---------  --------  -------  ------
Q4         24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control           0        3      19
Q4         24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control           1        2      19
Q4         24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS               0        3      19
Q4         24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS               1        0      19
Q4         24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other             0        9      19
Q4         24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other             1        2      19
Q3         24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control           0       50     280
Q3         24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control           1       21     280
Q3         24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS               0       51     280
Q3         24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS               1       17     280
Q3         24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other             0       98     280
Q3         24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other             1       43     280
Q2         24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control           0       44     404
Q2         24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control           1       41     404
Q2         24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS               0       65     404
Q2         24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS               1       46     404
Q2         24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other             0      126     404
Q2         24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other             1       82     404
Q1         24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control           0       59     480
Q1         24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control           1       50     480
Q1         24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS               0       72     480
Q1         24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS               1       53     480
Q1         24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other             0      122     480
Q1         24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other             1      124     480
Q1         6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Control           0       47     289
Q1         6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Control           1       12     289
Q1         6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     LNS               0       70     289
Q1         6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     LNS               1       16     289
Q1         6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Other             0      120     289
Q1         6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Other             1       24     289
Q3         6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Control           0       39     171
Q3         6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Control           1        6     171
Q3         6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     LNS               0       41     171
Q3         6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     LNS               1        2     171
Q3         6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Other             0       74     171
Q3         6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Other             1        9     171
Q2         6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Control           0       43     207
Q2         6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Control           1       11     207
Q2         6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     LNS               0       45     207
Q2         6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     LNS               1       11     207
Q2         6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Other             0       88     207
Q2         6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Other             1        9     207
Q4         6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Control           0        2      14
Q4         6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     LNS               0        3      14
Q4         6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Other             0        9      14
Q1         24 months   ki1000304-EU                INDIA                          Control           0        5      65
Q1         24 months   ki1000304-EU                INDIA                          Control           1       23      65
Q1         24 months   ki1000304-EU                INDIA                          Zinc              0        9      65
Q1         24 months   ki1000304-EU                INDIA                          Zinc              1       28      65
Q4         6 months    ki1000304-EU                INDIA                          Control           0       68     178
Q4         6 months    ki1000304-EU                INDIA                          Control           1       37     178
Q4         6 months    ki1000304-EU                INDIA                          Zinc              0       60     178
Q4         6 months    ki1000304-EU                INDIA                          Zinc              1       13     178
Q4         24 months   ki1000304-EU                INDIA                          Control           0       28     113
Q4         24 months   ki1000304-EU                INDIA                          Control           1       33     113
Q4         24 months   ki1000304-EU                INDIA                          Zinc              0       28     113
Q4         24 months   ki1000304-EU                INDIA                          Zinc              1       24     113
Q1         6 months    ki1000304-EU                INDIA                          Control           0       27      74
Q1         6 months    ki1000304-EU                INDIA                          Control           1       11      74
Q1         6 months    ki1000304-EU                INDIA                          Zinc              0       21      74
Q1         6 months    ki1000304-EU                INDIA                          Zinc              1       15      74
Q3         24 months   ki1000304-EU                INDIA                          Control           0        7      35
Q3         24 months   ki1000304-EU                INDIA                          Control           1        9      35
Q3         24 months   ki1000304-EU                INDIA                          Zinc              0       10      35
Q3         24 months   ki1000304-EU                INDIA                          Zinc              1        9      35
Q3         6 months    ki1000304-EU                INDIA                          Control           0       17      54
Q3         6 months    ki1000304-EU                INDIA                          Control           1       11      54
Q3         6 months    ki1000304-EU                INDIA                          Zinc              0       20      54
Q3         6 months    ki1000304-EU                INDIA                          Zinc              1        6      54
Q2         6 months    ki1000304-EU                INDIA                          Control           0       17      57
Q2         6 months    ki1000304-EU                INDIA                          Control           1       10      57
Q2         6 months    ki1000304-EU                INDIA                          Zinc              0       16      57
Q2         6 months    ki1000304-EU                INDIA                          Zinc              1       14      57
Q2         24 months   ki1000304-EU                INDIA                          Control           0        6      39
Q2         24 months   ki1000304-EU                INDIA                          Control           1       14      39
Q2         24 months   ki1000304-EU                INDIA                          Zinc              0        7      39
Q2         24 months   ki1000304-EU                INDIA                          Zinc              1       12      39
Q4         6 months    ki1000304-VITAMIN-A         INDIA                          Control           0      384    1122
Q4         6 months    ki1000304-VITAMIN-A         INDIA                          Control           1      163    1122
Q4         6 months    ki1000304-VITAMIN-A         INDIA                          VitA              0      433    1122
Q4         6 months    ki1000304-VITAMIN-A         INDIA                          VitA              1      142    1122
Q1         6 months    ki1000304-VITAMIN-A         INDIA                          Control           0      153     515
Q1         6 months    ki1000304-VITAMIN-A         INDIA                          Control           1      125     515
Q1         6 months    ki1000304-VITAMIN-A         INDIA                          VitA              0      125     515
Q1         6 months    ki1000304-VITAMIN-A         INDIA                          VitA              1      112     515
Q3         6 months    ki1000304-VITAMIN-A         INDIA                          Control           0      154     494
Q3         6 months    ki1000304-VITAMIN-A         INDIA                          Control           1       91     494
Q3         6 months    ki1000304-VITAMIN-A         INDIA                          VitA              0      162     494
Q3         6 months    ki1000304-VITAMIN-A         INDIA                          VitA              1       87     494
Q2         6 months    ki1000304-VITAMIN-A         INDIA                          Control           0      122     375
Q2         6 months    ki1000304-VITAMIN-A         INDIA                          Control           1       72     375
Q2         6 months    ki1000304-VITAMIN-A         INDIA                          VitA              0      111     375
Q2         6 months    ki1000304-VITAMIN-A         INDIA                          VitA              1       70     375
Q2         6 months    ki1000304-Vitamin-B12       INDIA                          Control           0        4      23
Q2         6 months    ki1000304-Vitamin-B12       INDIA                          Control           1        1      23
Q2         6 months    ki1000304-Vitamin-B12       INDIA                          Other             0       11      23
Q2         6 months    ki1000304-Vitamin-B12       INDIA                          Other             1        7      23
Q2         24 months   ki1000304-Vitamin-B12       INDIA                          Control           0        6      33
Q2         24 months   ki1000304-Vitamin-B12       INDIA                          Control           1        5      33
Q2         24 months   ki1000304-Vitamin-B12       INDIA                          Other             0        9      33
Q2         24 months   ki1000304-Vitamin-B12       INDIA                          Other             1       13      33
Q3         6 months    ki1000304-Vitamin-B12       INDIA                          Control           0        4      23
Q3         6 months    ki1000304-Vitamin-B12       INDIA                          Control           1        2      23
Q3         6 months    ki1000304-Vitamin-B12       INDIA                          Other             0       15      23
Q3         6 months    ki1000304-Vitamin-B12       INDIA                          Other             1        2      23
Q4         24 months   ki1000304-Vitamin-B12       INDIA                          Control           0        8      39
Q4         24 months   ki1000304-Vitamin-B12       INDIA                          Control           1        4      39
Q4         24 months   ki1000304-Vitamin-B12       INDIA                          Other             0       23      39
Q4         24 months   ki1000304-Vitamin-B12       INDIA                          Other             1        4      39
Q1         24 months   ki1000304-Vitamin-B12       INDIA                          Control           0        4      32
Q1         24 months   ki1000304-Vitamin-B12       INDIA                          Control           1        4      32
Q1         24 months   ki1000304-Vitamin-B12       INDIA                          Other             0        6      32
Q1         24 months   ki1000304-Vitamin-B12       INDIA                          Other             1       18      32
Q4         6 months    ki1000304-Vitamin-B12       INDIA                          Control           0        3      24
Q4         6 months    ki1000304-Vitamin-B12       INDIA                          Control           1        1      24
Q4         6 months    ki1000304-Vitamin-B12       INDIA                          Other             0       15      24
Q4         6 months    ki1000304-Vitamin-B12       INDIA                          Other             1        5      24
Q1         6 months    ki1000304-Vitamin-B12       INDIA                          Control           0        0      11
Q1         6 months    ki1000304-Vitamin-B12       INDIA                          Control           1        2      11
Q1         6 months    ki1000304-Vitamin-B12       INDIA                          Other             0        6      11
Q1         6 months    ki1000304-Vitamin-B12       INDIA                          Other             1        3      11
Q3         24 months   ki1000304-Vitamin-B12       INDIA                          Control           0        6      29
Q3         24 months   ki1000304-Vitamin-B12       INDIA                          Control           1        1      29
Q3         24 months   ki1000304-Vitamin-B12       INDIA                          Other             0       12      29
Q3         24 months   ki1000304-Vitamin-B12       INDIA                          Other             1       10      29
Q4         6 months    ki1000304-ZnMort            INDIA                          Control           0       31      69
Q4         6 months    ki1000304-ZnMort            INDIA                          Control           1       12      69
Q4         6 months    ki1000304-ZnMort            INDIA                          Zinc              0       19      69
Q4         6 months    ki1000304-ZnMort            INDIA                          Zinc              1        7      69
Q2         6 months    ki1000304-ZnMort            INDIA                          Control           0       13      43
Q2         6 months    ki1000304-ZnMort            INDIA                          Control           1       10      43
Q2         6 months    ki1000304-ZnMort            INDIA                          Zinc              0       13      43
Q2         6 months    ki1000304-ZnMort            INDIA                          Zinc              1        7      43
Q4         24 months   ki1000304-ZnMort            INDIA                          Control           0       13      68
Q4         24 months   ki1000304-ZnMort            INDIA                          Control           1       18      68
Q4         24 months   ki1000304-ZnMort            INDIA                          Zinc              0       20      68
Q4         24 months   ki1000304-ZnMort            INDIA                          Zinc              1       17      68
Q2         24 months   ki1000304-ZnMort            INDIA                          Control           0        8      41
Q2         24 months   ki1000304-ZnMort            INDIA                          Control           1       18      41
Q2         24 months   ki1000304-ZnMort            INDIA                          Zinc              0        7      41
Q2         24 months   ki1000304-ZnMort            INDIA                          Zinc              1        8      41
Q3         24 months   ki1000304-ZnMort            INDIA                          Control           0        4      14
Q3         24 months   ki1000304-ZnMort            INDIA                          Control           1        5      14
Q3         24 months   ki1000304-ZnMort            INDIA                          Zinc              0        1      14
Q3         24 months   ki1000304-ZnMort            INDIA                          Zinc              1        4      14
Q1         24 months   ki1000304-ZnMort            INDIA                          Control           0        2      17
Q1         24 months   ki1000304-ZnMort            INDIA                          Control           1        7      17
Q1         24 months   ki1000304-ZnMort            INDIA                          Zinc              0        2      17
Q1         24 months   ki1000304-ZnMort            INDIA                          Zinc              1        6      17
Q3         6 months    ki1000304-ZnMort            INDIA                          Control           0        4      10
Q3         6 months    ki1000304-ZnMort            INDIA                          Control           1        1      10
Q3         6 months    ki1000304-ZnMort            INDIA                          Zinc              0        3      10
Q3         6 months    ki1000304-ZnMort            INDIA                          Zinc              1        2      10
Q1         6 months    ki1000304-ZnMort            INDIA                          Control           0        7      23
Q1         6 months    ki1000304-ZnMort            INDIA                          Control           1        8      23
Q1         6 months    ki1000304-ZnMort            INDIA                          Zinc              0        3      23
Q1         6 months    ki1000304-ZnMort            INDIA                          Zinc              1        5      23
Q3         6 months    ki1000304b-SAS-CompFeed     INDIA                          Control           0       69     161
Q3         6 months    ki1000304b-SAS-CompFeed     INDIA                          Control           1        9     161
Q3         6 months    ki1000304b-SAS-CompFeed     INDIA                          Other             0       59     161
Q3         6 months    ki1000304b-SAS-CompFeed     INDIA                          Other             1       24     161
Q2         6 months    ki1000304b-SAS-CompFeed     INDIA                          Control           0       46     163
Q2         6 months    ki1000304b-SAS-CompFeed     INDIA                          Control           1       30     163
Q2         6 months    ki1000304b-SAS-CompFeed     INDIA                          Other             0       59     163
Q2         6 months    ki1000304b-SAS-CompFeed     INDIA                          Other             1       28     163
Q2         Birth       ki1000304b-SAS-CompFeed     INDIA                          Control           0       17      42
Q2         Birth       ki1000304b-SAS-CompFeed     INDIA                          Control           1        9      42
Q2         Birth       ki1000304b-SAS-CompFeed     INDIA                          Other             0        9      42
Q2         Birth       ki1000304b-SAS-CompFeed     INDIA                          Other             1        7      42
Q4         6 months    ki1000304b-SAS-CompFeed     INDIA                          Control           0       59     164
Q4         6 months    ki1000304b-SAS-CompFeed     INDIA                          Control           1       18     164
Q4         6 months    ki1000304b-SAS-CompFeed     INDIA                          Other             0       73     164
Q4         6 months    ki1000304b-SAS-CompFeed     INDIA                          Other             1       14     164
Q3         Birth       ki1000304b-SAS-CompFeed     INDIA                          Control           0       19      45
Q3         Birth       ki1000304b-SAS-CompFeed     INDIA                          Control           1        3      45
Q3         Birth       ki1000304b-SAS-CompFeed     INDIA                          Other             0       15      45
Q3         Birth       ki1000304b-SAS-CompFeed     INDIA                          Other             1        8      45
Q1         6 months    ki1000304b-SAS-CompFeed     INDIA                          Control           0       39     127
Q1         6 months    ki1000304b-SAS-CompFeed     INDIA                          Control           1       24     127
Q1         6 months    ki1000304b-SAS-CompFeed     INDIA                          Other             0       39     127
Q1         6 months    ki1000304b-SAS-CompFeed     INDIA                          Other             1       25     127
Q4         Birth       ki1000304b-SAS-CompFeed     INDIA                          Control           0       11      28
Q4         Birth       ki1000304b-SAS-CompFeed     INDIA                          Control           1        0      28
Q4         Birth       ki1000304b-SAS-CompFeed     INDIA                          Other             0       15      28
Q4         Birth       ki1000304b-SAS-CompFeed     INDIA                          Other             1        2      28
Q1         Birth       ki1000304b-SAS-CompFeed     INDIA                          Control           0        6      29
Q1         Birth       ki1000304b-SAS-CompFeed     INDIA                          Control           1        5      29
Q1         Birth       ki1000304b-SAS-CompFeed     INDIA                          Other             0       14      29
Q1         Birth       ki1000304b-SAS-CompFeed     INDIA                          Other             1        4      29
Q3         6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Control           0       16     117
Q3         6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Control           1       19     117
Q3         6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Other             0       55     117
Q3         6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Other             1       27     117
Q1         6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Control           0       17     139
Q1         6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Control           1       15     139
Q1         6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Other             0       60     139
Q1         6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Other             1       47     139
Q2         6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Control           0        8      82
Q2         6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Control           1       13      82
Q2         6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Other             0       34      82
Q2         6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Other             1       27      82
Q4         6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Control           0        2      17
Q4         6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Control           1        0      17
Q4         6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Other             0       12      17
Q4         6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Other             1        3      17
Q1         6 months    ki1017093b-PROVIDE          BANGLADESH                     Control           0        4      27
Q1         6 months    ki1017093b-PROVIDE          BANGLADESH                     Control           1        1      27
Q1         6 months    ki1017093b-PROVIDE          BANGLADESH                     Other             0       17      27
Q1         6 months    ki1017093b-PROVIDE          BANGLADESH                     Other             1        5      27
Q2         6 months    ki1017093b-PROVIDE          BANGLADESH                     Control           0        3      13
Q2         6 months    ki1017093b-PROVIDE          BANGLADESH                     Control           1        0      13
Q2         6 months    ki1017093b-PROVIDE          BANGLADESH                     Other             0        7      13
Q2         6 months    ki1017093b-PROVIDE          BANGLADESH                     Other             1        3      13
Q4         6 months    ki1017093b-PROVIDE          BANGLADESH                     Control           1        1       1
Q3         6 months    ki1017093b-PROVIDE          BANGLADESH                     Control           0        1       5
Q3         6 months    ki1017093b-PROVIDE          BANGLADESH                     Other             0        4       5
Q3         24 months   ki1017093b-PROVIDE          BANGLADESH                     Other             0        1       1
Q1         24 months   ki1017093b-PROVIDE          BANGLADESH                     Other             0        1       1
Q2         6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control           0      325    1472
Q2         6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control           1       36    1472
Q2         6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other             0      326    1472
Q2         6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other             1       45    1472
Q2         6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc              0      658    1472
Q2         6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc              1       82    1472
Q3         6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control           0       16      66
Q3         6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control           1        2      66
Q3         6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other             0       17      66
Q3         6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other             1        0      66
Q3         6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc              0       28      66
Q3         6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc              1        3      66
Q4         6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control           0       37     153
Q4         6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control           1        9     153
Q4         6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other             0       32     153
Q4         6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other             1        0     153
Q4         6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc              0       68     153
Q4         6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc              1        7     153
Q1         6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc              0        7       8
Q1         6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc              1        1       8
Q2         24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control           0        1       4
Q2         24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control           1        0       4
Q2         24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other             0        2       4
Q2         24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other             1        0       4
Q2         24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc              0        0       4
Q2         24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc              1        1       4
Q3         Birth       ki1119695-PROBIT            BELARUS                        Control           0     5405   11040
Q3         Birth       ki1119695-PROBIT            BELARUS                        Control           1       17   11040
Q3         Birth       ki1119695-PROBIT            BELARUS                        Maternal          0     5609   11040
Q3         Birth       ki1119695-PROBIT            BELARUS                        Maternal          1        9   11040
Q3         6 months    ki1119695-PROBIT            BELARUS                        Control           0     5208   11356
Q3         6 months    ki1119695-PROBIT            BELARUS                        Control           1      421   11356
Q3         6 months    ki1119695-PROBIT            BELARUS                        Maternal          0     5394   11356
Q3         6 months    ki1119695-PROBIT            BELARUS                        Maternal          1      333   11356
Q4         Birth       ki1119695-PROBIT            BELARUS                        Control           0      977    2058
Q4         Birth       ki1119695-PROBIT            BELARUS                        Control           1        1    2058
Q4         Birth       ki1119695-PROBIT            BELARUS                        Maternal          0     1078    2058
Q4         Birth       ki1119695-PROBIT            BELARUS                        Maternal          1        2    2058
Q4         6 months    ki1119695-PROBIT            BELARUS                        Control           0     1034    2307
Q4         6 months    ki1119695-PROBIT            BELARUS                        Control           1       51    2307
Q4         6 months    ki1119695-PROBIT            BELARUS                        Maternal          0     1180    2307
Q4         6 months    ki1119695-PROBIT            BELARUS                        Maternal          1       42    2307
Q2         Birth       ki1119695-PROBIT            BELARUS                        Control           0      117     295
Q2         Birth       ki1119695-PROBIT            BELARUS                        Control           1        2     295
Q2         Birth       ki1119695-PROBIT            BELARUS                        Maternal          0      176     295
Q2         Birth       ki1119695-PROBIT            BELARUS                        Maternal          1        0     295
Q2         6 months    ki1119695-PROBIT            BELARUS                        Control           0      112     314
Q2         6 months    ki1119695-PROBIT            BELARUS                        Control           1       10     314
Q2         6 months    ki1119695-PROBIT            BELARUS                        Maternal          0      180     314
Q2         6 months    ki1119695-PROBIT            BELARUS                        Maternal          1       12     314
Q3         24 months   ki1119695-PROBIT            BELARUS                        Control           0      239     662
Q3         24 months   ki1119695-PROBIT            BELARUS                        Control           1       42     662
Q3         24 months   ki1119695-PROBIT            BELARUS                        Maternal          0      340     662
Q3         24 months   ki1119695-PROBIT            BELARUS                        Maternal          1       41     662
Q4         24 months   ki1119695-PROBIT            BELARUS                        Control           0       70     138
Q4         24 months   ki1119695-PROBIT            BELARUS                        Control           1        4     138
Q4         24 months   ki1119695-PROBIT            BELARUS                        Maternal          0       53     138
Q4         24 months   ki1119695-PROBIT            BELARUS                        Maternal          1       11     138
Q2         24 months   ki1119695-PROBIT            BELARUS                        Control           0        5      14
Q2         24 months   ki1119695-PROBIT            BELARUS                        Maternal          0        9      14
Q1         Birth       ki1119695-PROBIT            BELARUS                        Control           0       11      23
Q1         Birth       ki1119695-PROBIT            BELARUS                        Maternal          0       12      23
Q1         6 months    ki1119695-PROBIT            BELARUS                        Control           0        9      19
Q1         6 months    ki1119695-PROBIT            BELARUS                        Control           1        1      19
Q1         6 months    ki1119695-PROBIT            BELARUS                        Maternal          0        6      19
Q1         6 months    ki1119695-PROBIT            BELARUS                        Maternal          1        3      19
Q1         24 months   ki1119695-PROBIT            BELARUS                        Control           0        1       1
Q3         Birth       ki1126311-ZVITAMBO          ZIMBABWE                       Control           0      392    1777
Q3         Birth       ki1126311-ZVITAMBO          ZIMBABWE                       Control           1       49    1777
Q3         Birth       ki1126311-ZVITAMBO          ZIMBABWE                       VitA              0     1186    1777
Q3         Birth       ki1126311-ZVITAMBO          ZIMBABWE                       VitA              1      150    1777
Q3         6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control           0      194    1028
Q3         6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control           1       50    1028
Q3         6 months    ki1126311-ZVITAMBO          ZIMBABWE                       VitA              0      618    1028
Q3         6 months    ki1126311-ZVITAMBO          ZIMBABWE                       VitA              1      166    1028
Q4         6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control           0     1351    6420
Q4         6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control           1      247    6420
Q4         6 months    ki1126311-ZVITAMBO          ZIMBABWE                       VitA              0     4063    6420
Q4         6 months    ki1126311-ZVITAMBO          ZIMBABWE                       VitA              1      759    6420
Q4         Birth       ki1126311-ZVITAMBO          ZIMBABWE                       Control           0     2594   11504
Q4         Birth       ki1126311-ZVITAMBO          ZIMBABWE                       Control           1      300   11504
Q4         Birth       ki1126311-ZVITAMBO          ZIMBABWE                       VitA              0     7744   11504
Q4         Birth       ki1126311-ZVITAMBO          ZIMBABWE                       VitA              1      866   11504
Q2         Birth       ki1126311-ZVITAMBO          ZIMBABWE                       Control           0       23      97
Q2         Birth       ki1126311-ZVITAMBO          ZIMBABWE                       Control           1        0      97
Q2         Birth       ki1126311-ZVITAMBO          ZIMBABWE                       VitA              0       61      97
Q2         Birth       ki1126311-ZVITAMBO          ZIMBABWE                       VitA              1       13      97
Q2         6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control           0       14      57
Q2         6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control           1        2      57
Q2         6 months    ki1126311-ZVITAMBO          ZIMBABWE                       VitA              0       33      57
Q2         6 months    ki1126311-ZVITAMBO          ZIMBABWE                       VitA              1        8      57
Q1         Birth       ki1126311-ZVITAMBO          ZIMBABWE                       Control           0       13      82
Q1         Birth       ki1126311-ZVITAMBO          ZIMBABWE                       Control           1        2      82
Q1         Birth       ki1126311-ZVITAMBO          ZIMBABWE                       VitA              0       61      82
Q1         Birth       ki1126311-ZVITAMBO          ZIMBABWE                       VitA              1        6      82
Q1         6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control           0        9      53
Q1         6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control           1        3      53
Q1         6 months    ki1126311-ZVITAMBO          ZIMBABWE                       VitA              0       35      53
Q1         6 months    ki1126311-ZVITAMBO          ZIMBABWE                       VitA              1        6      53
Q4         24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control           0        5      30
Q4         24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control           1        5      30
Q4         24 months   ki1126311-ZVITAMBO          ZIMBABWE                       VitA              0        6      30
Q4         24 months   ki1126311-ZVITAMBO          ZIMBABWE                       VitA              1       14      30
Q3         24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control           0        1       7
Q3         24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control           1        0       7
Q3         24 months   ki1126311-ZVITAMBO          ZIMBABWE                       VitA              0        2       7
Q3         24 months   ki1126311-ZVITAMBO          ZIMBABWE                       VitA              1        4       7
Q1         6 months    ki1135781-COHORTS           GUATEMALA                      Control           0      158     716
Q1         6 months    ki1135781-COHORTS           GUATEMALA                      Control           1      153     716
Q1         6 months    ki1135781-COHORTS           GUATEMALA                      Other             0      260     716
Q1         6 months    ki1135781-COHORTS           GUATEMALA                      Other             1      145     716
Q1         Birth       ki1135781-COHORTS           GUATEMALA                      Control           0      267     649
Q1         Birth       ki1135781-COHORTS           GUATEMALA                      Control           1       13     649
Q1         Birth       ki1135781-COHORTS           GUATEMALA                      Other             0      343     649
Q1         Birth       ki1135781-COHORTS           GUATEMALA                      Other             1       26     649
Q1         24 months   ki1135781-COHORTS           GUATEMALA                      Control           0       20     243
Q1         24 months   ki1135781-COHORTS           GUATEMALA                      Control           1       90     243
Q1         24 months   ki1135781-COHORTS           GUATEMALA                      Other             0       37     243
Q1         24 months   ki1135781-COHORTS           GUATEMALA                      Other             1       96     243
Q2         Birth       ki1135781-COHORTS           GUATEMALA                      Control           0       91     146
Q2         Birth       ki1135781-COHORTS           GUATEMALA                      Control           1        6     146
Q2         Birth       ki1135781-COHORTS           GUATEMALA                      Other             0       46     146
Q2         Birth       ki1135781-COHORTS           GUATEMALA                      Other             1        3     146
Q2         6 months    ki1135781-COHORTS           GUATEMALA                      Control           0       61     152
Q2         6 months    ki1135781-COHORTS           GUATEMALA                      Control           1       40     152
Q2         6 months    ki1135781-COHORTS           GUATEMALA                      Other             0       28     152
Q2         6 months    ki1135781-COHORTS           GUATEMALA                      Other             1       23     152
Q2         24 months   ki1135781-COHORTS           GUATEMALA                      Control           0        6      47
Q2         24 months   ki1135781-COHORTS           GUATEMALA                      Control           1       27      47
Q2         24 months   ki1135781-COHORTS           GUATEMALA                      Other             0        2      47
Q2         24 months   ki1135781-COHORTS           GUATEMALA                      Other             1       12      47
Q4         Birth       ki1135781-COHORTS           GUATEMALA                      Control           0        3       5
Q4         Birth       ki1135781-COHORTS           GUATEMALA                      Other             0        2       5
Q4         6 months    ki1135781-COHORTS           GUATEMALA                      Control           0        4       6
Q4         6 months    ki1135781-COHORTS           GUATEMALA                      Control           1        1       6
Q4         6 months    ki1135781-COHORTS           GUATEMALA                      Other             0        1       6
Q4         6 months    ki1135781-COHORTS           GUATEMALA                      Other             1        0       6
Q3         Birth       ki1135781-COHORTS           GUATEMALA                      Control           0        1       4
Q3         Birth       ki1135781-COHORTS           GUATEMALA                      Other             0        3       4
Q3         6 months    ki1135781-COHORTS           GUATEMALA                      Control           0        1       1
Q4         24 months   ki1135781-COHORTS           GUATEMALA                      Control           1        1       1
Q1         6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control           0       54     441
Q1         6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control           1       23     441
Q1         6 months    ki1148112-iLiNS-DOSE        MALAWI                         LNS               0      240     441
Q1         6 months    ki1148112-iLiNS-DOSE        MALAWI                         LNS               1      124     441
Q1         24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control           0       16     179
Q1         24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control           1       13     179
Q1         24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS               0       64     179
Q1         24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS               1       86     179
Q3         6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control           0       48     491
Q3         6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control           1       32     491
Q3         6 months    ki1148112-iLiNS-DOSE        MALAWI                         LNS               0      280     491
Q3         6 months    ki1148112-iLiNS-DOSE        MALAWI                         LNS               1      131     491
Q3         24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control           0       15     223
Q3         24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control           1       16     223
Q3         24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS               0       84     223
Q3         24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS               1      108     223
Q4         6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control           0       57     489
Q4         6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control           1       20     489
Q4         6 months    ki1148112-iLiNS-DOSE        MALAWI                         LNS               0      321     489
Q4         6 months    ki1148112-iLiNS-DOSE        MALAWI                         LNS               1       91     489
Q2         6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control           0       41     385
Q2         6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control           1       22     385
Q2         6 months    ki1148112-iLiNS-DOSE        MALAWI                         LNS               0      220     385
Q2         6 months    ki1148112-iLiNS-DOSE        MALAWI                         LNS               1      102     385
Q2         24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control           0       10     172
Q2         24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control           1       20     172
Q2         24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS               0       65     172
Q2         24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS               1       77     172
Q4         24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control           0       20     190
Q4         24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control           1       15     190
Q4         24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS               0      102     190
Q4         24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS               1       53     190
Q3         6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Control           0       73     298
Q3         6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Control           1       16     298
Q3         6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Maternal          0      172     298
Q3         6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Maternal          1       37     298
Q1         6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Control           0       72     314
Q1         6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Control           1       32     314
Q1         6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Maternal          0      159     314
Q1         6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Maternal          1       51     314
Q4         Birth       ki1148112-iLiNS-DYAD-M      MALAWI                         Maternal          1        1       1
Q4         6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Control           0       67     201
Q4         6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Control           1       10     201
Q4         6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Maternal          0      100     201
Q4         6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Maternal          1       24     201
Q2         6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Control           0       57     216
Q2         6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Control           1       24     216
Q2         6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Maternal          0       96     216
Q2         6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Maternal          1       39     216
Q3         24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control           0        2      21
Q3         24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control           1        1      21
Q3         24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Maternal          0       12      21
Q3         24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Maternal          1        6      21
Q1         24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control           0        1      18
Q1         24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control           1        2      18
Q1         24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Maternal          0       11      18
Q1         24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Maternal          1        4      18
Q4         24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control           0        1      10
Q4         24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control           1        3      10
Q4         24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Maternal          0        5      10
Q4         24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Maternal          1        1      10
Q2         24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control           0        1      16
Q2         24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control           1        1      16
Q2         24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Maternal          0        5      16
Q2         24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Maternal          1        9      16
Q1         6 months    ki1148112-LCNI-5            MALAWI                         Control           0       60     372
Q1         6 months    ki1148112-LCNI-5            MALAWI                         Control           1       34     372
Q1         6 months    ki1148112-LCNI-5            MALAWI                         LNS               0      121     372
Q1         6 months    ki1148112-LCNI-5            MALAWI                         LNS               1       75     372
Q1         6 months    ki1148112-LCNI-5            MALAWI                         Other             0       46     372
Q1         6 months    ki1148112-LCNI-5            MALAWI                         Other             1       36     372
Q1         24 months   ki1148112-LCNI-5            MALAWI                         Control           0       38     186
Q1         24 months   ki1148112-LCNI-5            MALAWI                         Control           1       18     186
Q1         24 months   ki1148112-LCNI-5            MALAWI                         LNS               0       55     186
Q1         24 months   ki1148112-LCNI-5            MALAWI                         LNS               1       33     186
Q1         24 months   ki1148112-LCNI-5            MALAWI                         Other             0       26     186
Q1         24 months   ki1148112-LCNI-5            MALAWI                         Other             1       16     186
Q2         6 months    ki1148112-LCNI-5            MALAWI                         Control           0       44     257
Q2         6 months    ki1148112-LCNI-5            MALAWI                         Control           1       26     257
Q2         6 months    ki1148112-LCNI-5            MALAWI                         LNS               0       77     257
Q2         6 months    ki1148112-LCNI-5            MALAWI                         LNS               1       47     257
Q2         6 months    ki1148112-LCNI-5            MALAWI                         Other             0       40     257
Q2         6 months    ki1148112-LCNI-5            MALAWI                         Other             1       23     257
Q2         24 months   ki1148112-LCNI-5            MALAWI                         Control           0       20     115
Q2         24 months   ki1148112-LCNI-5            MALAWI                         Control           1       16     115
Q2         24 months   ki1148112-LCNI-5            MALAWI                         LNS               0       31     115
Q2         24 months   ki1148112-LCNI-5            MALAWI                         LNS               1       23     115
Q2         24 months   ki1148112-LCNI-5            MALAWI                         Other             0       17     115
Q2         24 months   ki1148112-LCNI-5            MALAWI                         Other             1        8     115
Q3         6 months    ki1148112-LCNI-5            MALAWI                         Control           0       22     126
Q3         6 months    ki1148112-LCNI-5            MALAWI                         Control           1        5     126
Q3         6 months    ki1148112-LCNI-5            MALAWI                         LNS               0       39     126
Q3         6 months    ki1148112-LCNI-5            MALAWI                         LNS               1       18     126
Q3         6 months    ki1148112-LCNI-5            MALAWI                         Other             0       25     126
Q3         6 months    ki1148112-LCNI-5            MALAWI                         Other             1       17     126
Q4         6 months    ki1148112-LCNI-5            MALAWI                         Control           0        7      57
Q4         6 months    ki1148112-LCNI-5            MALAWI                         Control           1        2      57
Q4         6 months    ki1148112-LCNI-5            MALAWI                         LNS               0       26      57
Q4         6 months    ki1148112-LCNI-5            MALAWI                         LNS               1        6      57
Q4         6 months    ki1148112-LCNI-5            MALAWI                         Other             0       10      57
Q4         6 months    ki1148112-LCNI-5            MALAWI                         Other             1        6      57
Q3         24 months   ki1148112-LCNI-5            MALAWI                         Control           0       10      58
Q3         24 months   ki1148112-LCNI-5            MALAWI                         Control           1        6      58
Q3         24 months   ki1148112-LCNI-5            MALAWI                         LNS               0       14      58
Q3         24 months   ki1148112-LCNI-5            MALAWI                         LNS               1       10      58
Q3         24 months   ki1148112-LCNI-5            MALAWI                         Other             0       12      58
Q3         24 months   ki1148112-LCNI-5            MALAWI                         Other             1        6      58
Q4         24 months   ki1148112-LCNI-5            MALAWI                         Control           0        1      21
Q4         24 months   ki1148112-LCNI-5            MALAWI                         Control           1        0      21
Q4         24 months   ki1148112-LCNI-5            MALAWI                         LNS               0        9      21
Q4         24 months   ki1148112-LCNI-5            MALAWI                         LNS               1        3      21
Q4         24 months   ki1148112-LCNI-5            MALAWI                         Other             0        7      21
Q4         24 months   ki1148112-LCNI-5            MALAWI                         Other             1        1      21
Q1         Birth       kiGH5241-JiVitA-3           BANGLADESH                     Control           0     3198    9941
Q1         Birth       kiGH5241-JiVitA-3           BANGLADESH                     Control           1     1728    9941
Q1         Birth       kiGH5241-JiVitA-3           BANGLADESH                     Maternal          0     3385    9941
Q1         Birth       kiGH5241-JiVitA-3           BANGLADESH                     Maternal          1     1630    9941
Q1         6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control           0     2594    7444
Q1         6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control           1     1088    7444
Q1         6 months    kiGH5241-JiVitA-3           BANGLADESH                     Maternal          0     2716    7444
Q1         6 months    kiGH5241-JiVitA-3           BANGLADESH                     Maternal          1     1046    7444
Q2         Birth       kiGH5241-JiVitA-3           BANGLADESH                     Control           0     1110    3568
Q2         Birth       kiGH5241-JiVitA-3           BANGLADESH                     Control           1      641    3568
Q2         Birth       kiGH5241-JiVitA-3           BANGLADESH                     Maternal          0     1243    3568
Q2         Birth       kiGH5241-JiVitA-3           BANGLADESH                     Maternal          1      574    3568
Q2         6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control           0     1063    2989
Q2         6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control           1      403    2989
Q2         6 months    kiGH5241-JiVitA-3           BANGLADESH                     Maternal          0     1143    2989
Q2         6 months    kiGH5241-JiVitA-3           BANGLADESH                     Maternal          1      380    2989
Q4         Birth       kiGH5241-JiVitA-3           BANGLADESH                     Control           0      571    1490
Q4         Birth       kiGH5241-JiVitA-3           BANGLADESH                     Control           1      172    1490
Q4         Birth       kiGH5241-JiVitA-3           BANGLADESH                     Maternal          0      590    1490
Q4         Birth       kiGH5241-JiVitA-3           BANGLADESH                     Maternal          1      157    1490
Q4         6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control           0      777    1877
Q4         6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control           1      129    1877
Q4         6 months    kiGH5241-JiVitA-3           BANGLADESH                     Maternal          0      866    1877
Q4         6 months    kiGH5241-JiVitA-3           BANGLADESH                     Maternal          1      105    1877
Q3         Birth       kiGH5241-JiVitA-3           BANGLADESH                     Control           0     1316    3864
Q3         Birth       kiGH5241-JiVitA-3           BANGLADESH                     Control           1      637    3864
Q3         Birth       kiGH5241-JiVitA-3           BANGLADESH                     Maternal          0     1379    3864
Q3         Birth       kiGH5241-JiVitA-3           BANGLADESH                     Maternal          1      532    3864
Q3         6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control           0     1459    3777
Q3         6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control           1      446    3777
Q3         6 months    kiGH5241-JiVitA-3           BANGLADESH                     Maternal          0     1460    3777
Q3         6 months    kiGH5241-JiVitA-3           BANGLADESH                     Maternal          1      412    3777
Q1         24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control           0        7      35
Q1         24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control           1        8      35
Q1         24 months   kiGH5241-JiVitA-3           BANGLADESH                     Maternal          0        6      35
Q1         24 months   kiGH5241-JiVitA-3           BANGLADESH                     Maternal          1       14      35
Q3         24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control           0        4      19
Q3         24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control           1        5      19
Q3         24 months   kiGH5241-JiVitA-3           BANGLADESH                     Maternal          0        5      19
Q3         24 months   kiGH5241-JiVitA-3           BANGLADESH                     Maternal          1        5      19
Q4         24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control           0        7      21
Q4         24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control           1        2      21
Q4         24 months   kiGH5241-JiVitA-3           BANGLADESH                     Maternal          0       10      21
Q4         24 months   kiGH5241-JiVitA-3           BANGLADESH                     Maternal          1        2      21
Q2         24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control           0        5      17
Q2         24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control           1        5      17
Q2         24 months   kiGH5241-JiVitA-3           BANGLADESH                     Maternal          0        1      17
Q2         24 months   kiGH5241-JiVitA-3           BANGLADESH                     Maternal          1        6      17
Q1         6 months    kiGH5241-JiVitA-4           BANGLADESH                     Control           0      385    1993
Q1         6 months    kiGH5241-JiVitA-4           BANGLADESH                     Control           1      107    1993
Q1         6 months    kiGH5241-JiVitA-4           BANGLADESH                     LNS               0      442    1993
Q1         6 months    kiGH5241-JiVitA-4           BANGLADESH                     LNS               1      148    1993
Q1         6 months    kiGH5241-JiVitA-4           BANGLADESH                     Other             0      663    1993
Q1         6 months    kiGH5241-JiVitA-4           BANGLADESH                     Other             1      248    1993
Q1         Birth       kiGH5241-JiVitA-4           BANGLADESH                     Control           0       61     337
Q1         Birth       kiGH5241-JiVitA-4           BANGLADESH                     Control           1       22     337
Q1         Birth       kiGH5241-JiVitA-4           BANGLADESH                     LNS               0       60     337
Q1         Birth       kiGH5241-JiVitA-4           BANGLADESH                     LNS               1       40     337
Q1         Birth       kiGH5241-JiVitA-4           BANGLADESH                     Other             0      116     337
Q1         Birth       kiGH5241-JiVitA-4           BANGLADESH                     Other             1       38     337
Q2         6 months    kiGH5241-JiVitA-4           BANGLADESH                     Control           0       47     254
Q2         6 months    kiGH5241-JiVitA-4           BANGLADESH                     Control           1       22     254
Q2         6 months    kiGH5241-JiVitA-4           BANGLADESH                     LNS               0       46     254
Q2         6 months    kiGH5241-JiVitA-4           BANGLADESH                     LNS               1        9     254
Q2         6 months    kiGH5241-JiVitA-4           BANGLADESH                     Other             0       92     254
Q2         6 months    kiGH5241-JiVitA-4           BANGLADESH                     Other             1       38     254
Q2         24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control           0        6      51
Q2         24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control           1        4      51
Q2         24 months   kiGH5241-JiVitA-4           BANGLADESH                     LNS               0        9      51
Q2         24 months   kiGH5241-JiVitA-4           BANGLADESH                     LNS               1        3      51
Q2         24 months   kiGH5241-JiVitA-4           BANGLADESH                     Other             0       18      51
Q2         24 months   kiGH5241-JiVitA-4           BANGLADESH                     Other             1       11      51
Q1         24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control           0       69     463
Q1         24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control           1       46     463
Q1         24 months   kiGH5241-JiVitA-4           BANGLADESH                     LNS               0       90     463
Q1         24 months   kiGH5241-JiVitA-4           BANGLADESH                     LNS               1       46     463
Q1         24 months   kiGH5241-JiVitA-4           BANGLADESH                     Other             0      119     463
Q1         24 months   kiGH5241-JiVitA-4           BANGLADESH                     Other             1       93     463
Q2         Birth       kiGH5241-JiVitA-4           BANGLADESH                     Control           0        4      44
Q2         Birth       kiGH5241-JiVitA-4           BANGLADESH                     Control           1        5      44
Q2         Birth       kiGH5241-JiVitA-4           BANGLADESH                     LNS               0       10      44
Q2         Birth       kiGH5241-JiVitA-4           BANGLADESH                     LNS               1        1      44
Q2         Birth       kiGH5241-JiVitA-4           BANGLADESH                     Other             0       15      44
Q2         Birth       kiGH5241-JiVitA-4           BANGLADESH                     Other             1        9      44
Q3         6 months    kiGH5241-JiVitA-4           BANGLADESH                     Control           0       92     446
Q3         6 months    kiGH5241-JiVitA-4           BANGLADESH                     Control           1       23     446
Q3         6 months    kiGH5241-JiVitA-4           BANGLADESH                     LNS               0       94     446
Q3         6 months    kiGH5241-JiVitA-4           BANGLADESH                     LNS               1       37     446
Q3         6 months    kiGH5241-JiVitA-4           BANGLADESH                     Other             0      153     446
Q3         6 months    kiGH5241-JiVitA-4           BANGLADESH                     Other             1       47     446
Q3         Birth       kiGH5241-JiVitA-4           BANGLADESH                     Control           0       16      66
Q3         Birth       kiGH5241-JiVitA-4           BANGLADESH                     Control           1        7      66
Q3         Birth       kiGH5241-JiVitA-4           BANGLADESH                     LNS               0       13      66
Q3         Birth       kiGH5241-JiVitA-4           BANGLADESH                     LNS               1        5      66
Q3         Birth       kiGH5241-JiVitA-4           BANGLADESH                     Other             0       21      66
Q3         Birth       kiGH5241-JiVitA-4           BANGLADESH                     Other             1        4      66
Q3         24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control           0       15      98
Q3         24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control           1        8      98
Q3         24 months   kiGH5241-JiVitA-4           BANGLADESH                     LNS               0       13      98
Q3         24 months   kiGH5241-JiVitA-4           BANGLADESH                     LNS               1       13      98
Q3         24 months   kiGH5241-JiVitA-4           BANGLADESH                     Other             0       31      98
Q3         24 months   kiGH5241-JiVitA-4           BANGLADESH                     Other             1       18      98
Q4         6 months    kiGH5241-JiVitA-4           BANGLADESH                     Control           0       12      33
Q4         6 months    kiGH5241-JiVitA-4           BANGLADESH                     Control           1        1      33
Q4         6 months    kiGH5241-JiVitA-4           BANGLADESH                     LNS               0        6      33
Q4         6 months    kiGH5241-JiVitA-4           BANGLADESH                     LNS               1        1      33
Q4         6 months    kiGH5241-JiVitA-4           BANGLADESH                     Other             0       12      33
Q4         6 months    kiGH5241-JiVitA-4           BANGLADESH                     Other             1        1      33
Q4         Birth       kiGH5241-JiVitA-4           BANGLADESH                     Control           0        0       4
Q4         Birth       kiGH5241-JiVitA-4           BANGLADESH                     Control           1        2       4
Q4         Birth       kiGH5241-JiVitA-4           BANGLADESH                     Other             0        1       4
Q4         Birth       kiGH5241-JiVitA-4           BANGLADESH                     Other             1        1       4
Q4         24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control           0        2       5
Q4         24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control           1        2       5
Q4         24 months   kiGH5241-JiVitA-4           BANGLADESH                     Other             0        1       5
Q4         24 months   kiGH5241-JiVitA-4           BANGLADESH                     Other             1        0       5
Q3         6 months    iLiNS_DYADM_LNS             MALAWI                         Control           0       73     182
Q3         6 months    iLiNS_DYADM_LNS             MALAWI                         Control           1       16     182
Q3         6 months    iLiNS_DYADM_LNS             MALAWI                         LNS               0       79     182
Q3         6 months    iLiNS_DYADM_LNS             MALAWI                         LNS               1       14     182
Q4         Birth       iLiNS_DYADM_LNS             MALAWI                         LNS               1        1       1
Q4         6 months    iLiNS_DYADM_LNS             MALAWI                         Control           0       67     135
Q4         6 months    iLiNS_DYADM_LNS             MALAWI                         Control           1       10     135
Q4         6 months    iLiNS_DYADM_LNS             MALAWI                         LNS               0       46     135
Q4         6 months    iLiNS_DYADM_LNS             MALAWI                         LNS               1       12     135
Q2         6 months    iLiNS_DYADM_LNS             MALAWI                         Control           0       57     152
Q2         6 months    iLiNS_DYADM_LNS             MALAWI                         Control           1       24     152
Q2         6 months    iLiNS_DYADM_LNS             MALAWI                         LNS               0       54     152
Q2         6 months    iLiNS_DYADM_LNS             MALAWI                         LNS               1       17     152
Q1         6 months    iLiNS_DYADM_LNS             MALAWI                         Control           0       72     214
Q1         6 months    iLiNS_DYADM_LNS             MALAWI                         Control           1       32     214
Q1         6 months    iLiNS_DYADM_LNS             MALAWI                         LNS               0       80     214
Q1         6 months    iLiNS_DYADM_LNS             MALAWI                         LNS               1       30     214
Q3         24 months   iLiNS_DYADM_LNS             MALAWI                         Control           0        2      10
Q3         24 months   iLiNS_DYADM_LNS             MALAWI                         Control           1        1      10
Q3         24 months   iLiNS_DYADM_LNS             MALAWI                         LNS               0        5      10
Q3         24 months   iLiNS_DYADM_LNS             MALAWI                         LNS               1        2      10
Q1         24 months   iLiNS_DYADM_LNS             MALAWI                         Control           0        1      13
Q1         24 months   iLiNS_DYADM_LNS             MALAWI                         Control           1        2      13
Q1         24 months   iLiNS_DYADM_LNS             MALAWI                         LNS               0        8      13
Q1         24 months   iLiNS_DYADM_LNS             MALAWI                         LNS               1        2      13
Q4         24 months   iLiNS_DYADM_LNS             MALAWI                         Control           0        1       5
Q4         24 months   iLiNS_DYADM_LNS             MALAWI                         Control           1        3       5
Q4         24 months   iLiNS_DYADM_LNS             MALAWI                         LNS               0        0       5
Q4         24 months   iLiNS_DYADM_LNS             MALAWI                         LNS               1        1       5
Q2         24 months   iLiNS_DYADM_LNS             MALAWI                         Control           0        1       7
Q2         24 months   iLiNS_DYADM_LNS             MALAWI                         Control           1        1       7
Q2         24 months   iLiNS_DYADM_LNS             MALAWI                         LNS               0        2       7
Q2         24 months   iLiNS_DYADM_LNS             MALAWI                         LNS               1        3       7


The following strata were considered:

* feducyrs: Q1, agecat: 24 months, studyid: iLiNS_DYADM_LNS, country: MALAWI
* feducyrs: Q1, agecat: 24 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* feducyrs: Q1, agecat: 24 months, studyid: ki1000304-EU, country: INDIA
* feducyrs: Q1, agecat: 24 months, studyid: ki1000304-Vitamin-B12, country: INDIA
* feducyrs: Q1, agecat: 24 months, studyid: ki1000304-ZnMort, country: INDIA
* feducyrs: Q1, agecat: 24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* feducyrs: Q1, agecat: 24 months, studyid: ki1119695-PROBIT, country: BELARUS
* feducyrs: Q1, agecat: 24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* feducyrs: Q1, agecat: 24 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* feducyrs: Q1, agecat: 24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* feducyrs: Q1, agecat: 24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* feducyrs: Q1, agecat: 24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* feducyrs: Q1, agecat: 24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* feducyrs: Q1, agecat: 6 months, studyid: iLiNS_DYADM_LNS, country: MALAWI
* feducyrs: Q1, agecat: 6 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* feducyrs: Q1, agecat: 6 months, studyid: ki1000304-EU, country: INDIA
* feducyrs: Q1, agecat: 6 months, studyid: ki1000304-VITAMIN-A, country: INDIA
* feducyrs: Q1, agecat: 6 months, studyid: ki1000304-Vitamin-B12, country: INDIA
* feducyrs: Q1, agecat: 6 months, studyid: ki1000304-ZnMort, country: INDIA
* feducyrs: Q1, agecat: 6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* feducyrs: Q1, agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* feducyrs: Q1, agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* feducyrs: Q1, agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* feducyrs: Q1, agecat: 6 months, studyid: ki1119695-PROBIT, country: BELARUS
* feducyrs: Q1, agecat: 6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* feducyrs: Q1, agecat: 6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* feducyrs: Q1, agecat: 6 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* feducyrs: Q1, agecat: 6 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* feducyrs: Q1, agecat: 6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* feducyrs: Q1, agecat: 6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* feducyrs: Q1, agecat: 6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* feducyrs: Q1, agecat: Birth, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* feducyrs: Q1, agecat: Birth, studyid: ki1119695-PROBIT, country: BELARUS
* feducyrs: Q1, agecat: Birth, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* feducyrs: Q1, agecat: Birth, studyid: ki1135781-COHORTS, country: GUATEMALA
* feducyrs: Q1, agecat: Birth, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* feducyrs: Q1, agecat: Birth, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* feducyrs: Q2, agecat: 24 months, studyid: iLiNS_DYADM_LNS, country: MALAWI
* feducyrs: Q2, agecat: 24 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* feducyrs: Q2, agecat: 24 months, studyid: ki1000304-EU, country: INDIA
* feducyrs: Q2, agecat: 24 months, studyid: ki1000304-Vitamin-B12, country: INDIA
* feducyrs: Q2, agecat: 24 months, studyid: ki1000304-ZnMort, country: INDIA
* feducyrs: Q2, agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* feducyrs: Q2, agecat: 24 months, studyid: ki1119695-PROBIT, country: BELARUS
* feducyrs: Q2, agecat: 24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* feducyrs: Q2, agecat: 24 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* feducyrs: Q2, agecat: 24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* feducyrs: Q2, agecat: 24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* feducyrs: Q2, agecat: 24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* feducyrs: Q2, agecat: 24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* feducyrs: Q2, agecat: 6 months, studyid: iLiNS_DYADM_LNS, country: MALAWI
* feducyrs: Q2, agecat: 6 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* feducyrs: Q2, agecat: 6 months, studyid: ki1000304-EU, country: INDIA
* feducyrs: Q2, agecat: 6 months, studyid: ki1000304-VITAMIN-A, country: INDIA
* feducyrs: Q2, agecat: 6 months, studyid: ki1000304-Vitamin-B12, country: INDIA
* feducyrs: Q2, agecat: 6 months, studyid: ki1000304-ZnMort, country: INDIA
* feducyrs: Q2, agecat: 6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* feducyrs: Q2, agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* feducyrs: Q2, agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* feducyrs: Q2, agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* feducyrs: Q2, agecat: 6 months, studyid: ki1119695-PROBIT, country: BELARUS
* feducyrs: Q2, agecat: 6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* feducyrs: Q2, agecat: 6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* feducyrs: Q2, agecat: 6 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* feducyrs: Q2, agecat: 6 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* feducyrs: Q2, agecat: 6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* feducyrs: Q2, agecat: 6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* feducyrs: Q2, agecat: 6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* feducyrs: Q2, agecat: Birth, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* feducyrs: Q2, agecat: Birth, studyid: ki1119695-PROBIT, country: BELARUS
* feducyrs: Q2, agecat: Birth, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* feducyrs: Q2, agecat: Birth, studyid: ki1135781-COHORTS, country: GUATEMALA
* feducyrs: Q2, agecat: Birth, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* feducyrs: Q2, agecat: Birth, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* feducyrs: Q3, agecat: 24 months, studyid: iLiNS_DYADM_LNS, country: MALAWI
* feducyrs: Q3, agecat: 24 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* feducyrs: Q3, agecat: 24 months, studyid: ki1000304-EU, country: INDIA
* feducyrs: Q3, agecat: 24 months, studyid: ki1000304-Vitamin-B12, country: INDIA
* feducyrs: Q3, agecat: 24 months, studyid: ki1000304-ZnMort, country: INDIA
* feducyrs: Q3, agecat: 24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* feducyrs: Q3, agecat: 24 months, studyid: ki1119695-PROBIT, country: BELARUS
* feducyrs: Q3, agecat: 24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* feducyrs: Q3, agecat: 24 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* feducyrs: Q3, agecat: 24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* feducyrs: Q3, agecat: 24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* feducyrs: Q3, agecat: 24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* feducyrs: Q3, agecat: 24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* feducyrs: Q3, agecat: 6 months, studyid: iLiNS_DYADM_LNS, country: MALAWI
* feducyrs: Q3, agecat: 6 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* feducyrs: Q3, agecat: 6 months, studyid: ki1000304-EU, country: INDIA
* feducyrs: Q3, agecat: 6 months, studyid: ki1000304-VITAMIN-A, country: INDIA
* feducyrs: Q3, agecat: 6 months, studyid: ki1000304-Vitamin-B12, country: INDIA
* feducyrs: Q3, agecat: 6 months, studyid: ki1000304-ZnMort, country: INDIA
* feducyrs: Q3, agecat: 6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* feducyrs: Q3, agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* feducyrs: Q3, agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* feducyrs: Q3, agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* feducyrs: Q3, agecat: 6 months, studyid: ki1119695-PROBIT, country: BELARUS
* feducyrs: Q3, agecat: 6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* feducyrs: Q3, agecat: 6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* feducyrs: Q3, agecat: 6 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* feducyrs: Q3, agecat: 6 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* feducyrs: Q3, agecat: 6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* feducyrs: Q3, agecat: 6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* feducyrs: Q3, agecat: 6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* feducyrs: Q3, agecat: Birth, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* feducyrs: Q3, agecat: Birth, studyid: ki1119695-PROBIT, country: BELARUS
* feducyrs: Q3, agecat: Birth, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* feducyrs: Q3, agecat: Birth, studyid: ki1135781-COHORTS, country: GUATEMALA
* feducyrs: Q3, agecat: Birth, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* feducyrs: Q3, agecat: Birth, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* feducyrs: Q4, agecat: 24 months, studyid: iLiNS_DYADM_LNS, country: MALAWI
* feducyrs: Q4, agecat: 24 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* feducyrs: Q4, agecat: 24 months, studyid: ki1000304-EU, country: INDIA
* feducyrs: Q4, agecat: 24 months, studyid: ki1000304-Vitamin-B12, country: INDIA
* feducyrs: Q4, agecat: 24 months, studyid: ki1000304-ZnMort, country: INDIA
* feducyrs: Q4, agecat: 24 months, studyid: ki1119695-PROBIT, country: BELARUS
* feducyrs: Q4, agecat: 24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* feducyrs: Q4, agecat: 24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* feducyrs: Q4, agecat: 24 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* feducyrs: Q4, agecat: 24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* feducyrs: Q4, agecat: 24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* feducyrs: Q4, agecat: 24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* feducyrs: Q4, agecat: 24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* feducyrs: Q4, agecat: 6 months, studyid: iLiNS_DYADM_LNS, country: MALAWI
* feducyrs: Q4, agecat: 6 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* feducyrs: Q4, agecat: 6 months, studyid: ki1000304-EU, country: INDIA
* feducyrs: Q4, agecat: 6 months, studyid: ki1000304-VITAMIN-A, country: INDIA
* feducyrs: Q4, agecat: 6 months, studyid: ki1000304-Vitamin-B12, country: INDIA
* feducyrs: Q4, agecat: 6 months, studyid: ki1000304-ZnMort, country: INDIA
* feducyrs: Q4, agecat: 6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* feducyrs: Q4, agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* feducyrs: Q4, agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* feducyrs: Q4, agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* feducyrs: Q4, agecat: 6 months, studyid: ki1119695-PROBIT, country: BELARUS
* feducyrs: Q4, agecat: 6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* feducyrs: Q4, agecat: 6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* feducyrs: Q4, agecat: 6 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* feducyrs: Q4, agecat: 6 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* feducyrs: Q4, agecat: 6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* feducyrs: Q4, agecat: 6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* feducyrs: Q4, agecat: 6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* feducyrs: Q4, agecat: Birth, studyid: iLiNS_DYADM_LNS, country: MALAWI
* feducyrs: Q4, agecat: Birth, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* feducyrs: Q4, agecat: Birth, studyid: ki1119695-PROBIT, country: BELARUS
* feducyrs: Q4, agecat: Birth, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* feducyrs: Q4, agecat: Birth, studyid: ki1135781-COHORTS, country: GUATEMALA
* feducyrs: Q4, agecat: Birth, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* feducyrs: Q4, agecat: Birth, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* feducyrs: Q4, agecat: Birth, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* feducyrs: Q4, agecat: 24 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* feducyrs: Q3, agecat: 6 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* feducyrs: Q4, agecat: 6 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* feducyrs: Q2, agecat: 6 months, studyid: ki1000304-Vitamin-B12, country: INDIA
* feducyrs: Q3, agecat: 6 months, studyid: ki1000304-Vitamin-B12, country: INDIA
* feducyrs: Q4, agecat: 24 months, studyid: ki1000304-Vitamin-B12, country: INDIA
* feducyrs: Q1, agecat: 24 months, studyid: ki1000304-Vitamin-B12, country: INDIA
* feducyrs: Q4, agecat: 6 months, studyid: ki1000304-Vitamin-B12, country: INDIA
* feducyrs: Q1, agecat: 6 months, studyid: ki1000304-Vitamin-B12, country: INDIA
* feducyrs: Q3, agecat: 24 months, studyid: ki1000304-Vitamin-B12, country: INDIA
* feducyrs: Q3, agecat: 24 months, studyid: ki1000304-ZnMort, country: INDIA
* feducyrs: Q1, agecat: 24 months, studyid: ki1000304-ZnMort, country: INDIA
* feducyrs: Q3, agecat: 6 months, studyid: ki1000304-ZnMort, country: INDIA
* feducyrs: Q1, agecat: 6 months, studyid: ki1000304-ZnMort, country: INDIA
* feducyrs: Q3, agecat: Birth, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* feducyrs: Q4, agecat: Birth, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* feducyrs: Q1, agecat: Birth, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* feducyrs: Q4, agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* feducyrs: Q1, agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* feducyrs: Q2, agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* feducyrs: Q4, agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* feducyrs: Q3, agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* feducyrs: Q3, agecat: 24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* feducyrs: Q1, agecat: 24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* feducyrs: Q3, agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* feducyrs: Q4, agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* feducyrs: Q1, agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* feducyrs: Q2, agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* feducyrs: Q4, agecat: Birth, studyid: ki1119695-PROBIT, country: BELARUS
* feducyrs: Q2, agecat: Birth, studyid: ki1119695-PROBIT, country: BELARUS
* feducyrs: Q4, agecat: 24 months, studyid: ki1119695-PROBIT, country: BELARUS
* feducyrs: Q1, agecat: 6 months, studyid: ki1119695-PROBIT, country: BELARUS
* feducyrs: Q1, agecat: 24 months, studyid: ki1119695-PROBIT, country: BELARUS
* feducyrs: Q2, agecat: Birth, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* feducyrs: Q2, agecat: 6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* feducyrs: Q1, agecat: Birth, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* feducyrs: Q1, agecat: 6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* feducyrs: Q3, agecat: 24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* feducyrs: Q2, agecat: Birth, studyid: ki1135781-COHORTS, country: GUATEMALA
* feducyrs: Q2, agecat: 24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* feducyrs: Q4, agecat: Birth, studyid: ki1135781-COHORTS, country: GUATEMALA
* feducyrs: Q4, agecat: 6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* feducyrs: Q3, agecat: Birth, studyid: ki1135781-COHORTS, country: GUATEMALA
* feducyrs: Q3, agecat: 6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* feducyrs: Q4, agecat: 24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* feducyrs: Q4, agecat: Birth, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* feducyrs: Q3, agecat: 24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* feducyrs: Q1, agecat: 24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* feducyrs: Q4, agecat: 24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* feducyrs: Q2, agecat: 24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* feducyrs: Q4, agecat: 6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* feducyrs: Q4, agecat: 24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* feducyrs: Q3, agecat: 24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* feducyrs: Q4, agecat: 24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* feducyrs: Q2, agecat: 24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* feducyrs: Q2, agecat: 24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* feducyrs: Q2, agecat: Birth, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* feducyrs: Q3, agecat: Birth, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* feducyrs: Q4, agecat: 6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* feducyrs: Q4, agecat: Birth, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* feducyrs: Q4, agecat: 24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* feducyrs: Q4, agecat: Birth, studyid: iLiNS_DYADM_LNS, country: MALAWI
* feducyrs: Q3, agecat: 24 months, studyid: iLiNS_DYADM_LNS, country: MALAWI
* feducyrs: Q1, agecat: 24 months, studyid: iLiNS_DYADM_LNS, country: MALAWI
* feducyrs: Q4, agecat: 24 months, studyid: iLiNS_DYADM_LNS, country: MALAWI
* feducyrs: Q2, agecat: 24 months, studyid: iLiNS_DYADM_LNS, country: MALAWI

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness



```
##           stunted
## tr          0
##   Control  11
##   LNS       0
##   Maternal 12
##   Other     0
##   VitA      0
##   Zinc      0
##           stunted
## tr         0
##   Control  5
##   LNS      0
##   Maternal 9
##   Other    0
##   VitA     0
##   Zinc     0
```




# Results Detail

## Results Plots
![](/tmp/b346f6ab-8958-482a-8aef-a6eee3c30204/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/b346f6ab-8958-482a-8aef-a6eee3c30204/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/b346f6ab-8958-482a-8aef-a6eee3c30204/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/b346f6ab-8958-482a-8aef-a6eee3c30204/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


feducyrs   agecat      studyid                     country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------  ----------  --------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Q4         Birth       ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                0.1036628   0.1008688   0.1064567
Q4         Birth       ki1126311-ZVITAMBO          ZIMBABWE                       VitA                 NA                0.1005807   0.0958256   0.1053358
Q4         Birth       kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                0.2314939   0.2144440   0.2485439
Q4         Birth       kiGH5241-JiVitA-3           BANGLADESH                     Maternal             NA                0.2101740   0.1922400   0.2281080
Q4         6 months    iLiNS_DYADM_LNS             MALAWI                         Control              NA                0.1298701   0.0868847   0.1728555
Q4         6 months    iLiNS_DYADM_LNS             MALAWI                         LNS                  NA                0.2068966   0.1619409   0.2518522
Q4         6 months    ki1000304-EU                INDIA                          Control              NA                0.3523810   0.2607499   0.4440120
Q4         6 months    ki1000304-EU                INDIA                          Zinc                 NA                0.1780822   0.0900717   0.2660927
Q4         6 months    ki1000304-VITAMIN-A         INDIA                          Control              NA                0.2979890   0.2792945   0.3166836
Q4         6 months    ki1000304-VITAMIN-A         INDIA                          VitA                 NA                0.2469565   0.2288847   0.2650284
Q4         6 months    ki1000304-ZnMort            INDIA                          Control              NA                0.2790698   0.1440221   0.4141174
Q4         6 months    ki1000304-ZnMort            INDIA                          Zinc                 NA                0.2692308   0.0974858   0.4409757
Q4         6 months    ki1000304b-SAS-CompFeed     INDIA                          Control              NA                0.2337662   0.1631922   0.3043402
Q4         6 months    ki1000304b-SAS-CompFeed     INDIA                          Other                NA                0.1609195   0.1288229   0.1930162
Q4         6 months    ki1119695-PROBIT            BELARUS                        Control              NA                0.0470046   0.0364767   0.0575325
Q4         6 months    ki1119695-PROBIT            BELARUS                        Maternal             NA                0.0343699   0.0272698   0.0414700
Q4         6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                0.1545682   0.1501562   0.1589802
Q4         6 months    ki1126311-ZVITAMBO          ZIMBABWE                       VitA                 NA                0.1574036   0.1496825   0.1651246
Q4         6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                0.2597403   0.2443023   0.2751783
Q4         6 months    ki1148112-iLiNS-DOSE        MALAWI                         LNS                  NA                0.2208738   0.1870900   0.2546576
Q4         6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Control              NA                0.1298701   0.1010347   0.1587056
Q4         6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Maternal             NA                0.1935484   0.1505423   0.2365545
Q4         6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                0.1423841   0.1271580   0.1576102
Q4         6 months    kiGH5241-JiVitA-3           BANGLADESH                     Maternal             NA                0.1081359   0.0949835   0.1212884
Q4         24 months   ki1000304-EU                INDIA                          Control              NA                0.5409836   0.4153750   0.6665923
Q4         24 months   ki1000304-EU                INDIA                          Zinc                 NA                0.4615385   0.3254385   0.5976384
Q4         24 months   ki1000304-ZnMort            INDIA                          Control              NA                0.5806452   0.4056482   0.7556421
Q4         24 months   ki1000304-ZnMort            INDIA                          Zinc                 NA                0.4594595   0.2976880   0.6212310
Q4         24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                0.5000000   0.3949349   0.6050651
Q4         24 months   ki1126311-ZVITAMBO          ZIMBABWE                       VitA                 NA                0.7000000   0.5638201   0.8361799
Q4         24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                0.4285714   0.3982907   0.4588522
Q4         24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS                  NA                0.3419355   0.2808536   0.4030174
Q1         Birth       ki1135781-COHORTS           GUATEMALA                      Control              NA                0.0464286   0.0357875   0.0570697
Q1         Birth       ki1135781-COHORTS           GUATEMALA                      Other                NA                0.0704607   0.0556028   0.0853187
Q1         Birth       kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                0.3507917   0.3429535   0.3586299
Q1         Birth       kiGH5241-JiVitA-3           BANGLADESH                     Maternal             NA                0.3250249   0.3171151   0.3329348
Q1         Birth       kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                0.2650602   0.1708111   0.3593094
Q1         Birth       kiGH5241-JiVitA-4           BANGLADESH                     LNS                  NA                0.4000000   0.2900847   0.5099153
Q1         Birth       kiGH5241-JiVitA-4           BANGLADESH                     Other                NA                0.2467532   0.1757779   0.3177286
Q1         6 months    iLiNS_DYADM_LNS             MALAWI                         Control              NA                0.3076923   0.2644831   0.3509015
Q1         6 months    iLiNS_DYADM_LNS             MALAWI                         LNS                  NA                0.2727273   0.2298467   0.3156079
Q1         6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                0.2033898   0.1005024   0.3062773
Q1         6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                  NA                0.1860465   0.1036589   0.2684342
Q1         6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Other                NA                0.1666667   0.1056915   0.2276419
Q1         6 months    ki1000304-EU                INDIA                          Control              NA                0.2894737   0.1442942   0.4346532
Q1         6 months    ki1000304-EU                INDIA                          Zinc                 NA                0.4166667   0.2545215   0.5788118
Q1         6 months    ki1000304-VITAMIN-A         INDIA                          Control              NA                0.4496403   0.4180436   0.4812370
Q1         6 months    ki1000304-VITAMIN-A         INDIA                          VitA                 NA                0.4725738   0.4432951   0.5018526
Q1         6 months    ki1000304b-SAS-CompFeed     INDIA                          Control              NA                0.3809524   0.3571038   0.4048009
Q1         6 months    ki1000304b-SAS-CompFeed     INDIA                          Other                NA                0.3906250   0.3711425   0.4101075
Q1         6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Control              NA                0.4687500   0.4288019   0.5086981
Q1         6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Other                NA                0.4392523   0.3666026   0.5119020
Q1         6 months    ki1135781-COHORTS           GUATEMALA                      Control              NA                0.4919614   0.4678106   0.5161123
Q1         6 months    ki1135781-COHORTS           GUATEMALA                      Other                NA                0.3580247   0.3315956   0.3844538
Q1         6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                0.2987013   0.2808316   0.3165710
Q1         6 months    ki1148112-iLiNS-DOSE        MALAWI                         LNS                  NA                0.3406593   0.3004277   0.3808910
Q1         6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Control              NA                0.3076923   0.2782660   0.3371186
Q1         6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Maternal             NA                0.2428571   0.2040077   0.2817066
Q1         6 months    ki1148112-LCNI-5            MALAWI                         Control              NA                0.3617021   0.2644373   0.4589670
Q1         6 months    ki1148112-LCNI-5            MALAWI                         LNS                  NA                0.3826531   0.3145178   0.4507883
Q1         6 months    ki1148112-LCNI-5            MALAWI                         Other                NA                0.4390244   0.3314666   0.5465822
Q1         6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                0.2954916   0.2871533   0.3038299
Q1         6 months    kiGH5241-JiVitA-3           BANGLADESH                     Maternal             NA                0.2780436   0.2693390   0.2867481
Q1         6 months    kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                0.2174797   0.1729473   0.2620120
Q1         6 months    kiGH5241-JiVitA-4           BANGLADESH                     LNS                  NA                0.2508475   0.2125084   0.2891865
Q1         6 months    kiGH5241-JiVitA-4           BANGLADESH                     Other                NA                0.2722283   0.2371187   0.3073380
Q1         24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                0.4587156   0.3650733   0.5523579
Q1         24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                  NA                0.4240000   0.3372758   0.5107242
Q1         24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                NA                0.5040650   0.4415206   0.5666095
Q1         24 months   ki1000304-EU                INDIA                          Control              NA                0.8214286   0.6784646   0.9643926
Q1         24 months   ki1000304-EU                INDIA                          Zinc                 NA                0.7567568   0.6174371   0.8960764
Q1         24 months   ki1135781-COHORTS           GUATEMALA                      Control              NA                0.8181818   0.7854871   0.8508765
Q1         24 months   ki1135781-COHORTS           GUATEMALA                      Other                NA                0.7218045   0.6800361   0.7635729
Q1         24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                0.4482759   0.4188693   0.4776824
Q1         24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS                  NA                0.5733333   0.5068205   0.6398461
Q1         24 months   ki1148112-LCNI-5            MALAWI                         Control              NA                0.3214286   0.1987794   0.4440778
Q1         24 months   ki1148112-LCNI-5            MALAWI                         LNS                  NA                0.3750000   0.2735778   0.4764222
Q1         24 months   ki1148112-LCNI-5            MALAWI                         Other                NA                0.3809524   0.2336901   0.5282146
Q1         24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                0.5333333   0.4202757   0.6463910
Q1         24 months   kiGH5241-JiVitA-3           BANGLADESH                     Maternal             NA                0.7000000   0.5880762   0.8119238
Q1         24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                0.4000000   0.3026596   0.4973404
Q1         24 months   kiGH5241-JiVitA-4           BANGLADESH                     LNS                  NA                0.3382353   0.2575530   0.4189176
Q1         24 months   kiGH5241-JiVitA-4           BANGLADESH                     Other                NA                0.4386792   0.3644141   0.5129444
Q2         Birth       ki1000304b-SAS-CompFeed     INDIA                          Control              NA                0.3461538   0.3098942   0.3824134
Q2         Birth       ki1000304b-SAS-CompFeed     INDIA                          Other                NA                0.4375000   0.2629352   0.6120648
Q2         Birth       kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                0.3660765   0.3525381   0.3796150
Q2         Birth       kiGH5241-JiVitA-3           BANGLADESH                     Maternal             NA                0.3159053   0.3037936   0.3280171
Q2         6 months    iLiNS_DYADM_LNS             MALAWI                         Control              NA                0.2962963   0.2431298   0.3494628
Q2         6 months    iLiNS_DYADM_LNS             MALAWI                         LNS                  NA                0.2394366   0.1929177   0.2859556
Q2         6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                0.2037037   0.0960226   0.3113848
Q2         6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                  NA                0.1964286   0.0921199   0.3007372
Q2         6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Other                NA                0.0927835   0.0349067   0.1506603
Q2         6 months    ki1000304-EU                INDIA                          Control              NA                0.3703704   0.1866022   0.5541386
Q2         6 months    ki1000304-EU                INDIA                          Zinc                 NA                0.4666667   0.2865584   0.6467749
Q2         6 months    ki1000304-VITAMIN-A         INDIA                          Control              NA                0.3711340   0.3359179   0.4063502
Q2         6 months    ki1000304-VITAMIN-A         INDIA                          VitA                 NA                0.3867403   0.3524503   0.4210304
Q2         6 months    ki1000304-ZnMort            INDIA                          Control              NA                0.4347826   0.2297903   0.6397749
Q2         6 months    ki1000304-ZnMort            INDIA                          Zinc                 NA                0.3500000   0.1384888   0.5615112
Q2         6 months    ki1000304b-SAS-CompFeed     INDIA                          Control              NA                0.3947368   0.3202534   0.4692203
Q2         6 months    ki1000304b-SAS-CompFeed     INDIA                          Other                NA                0.3218391   0.2597432   0.3839350
Q2         6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Control              NA                0.6190476   0.5655289   0.6725663
Q2         6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Other                NA                0.4426230   0.3493287   0.5359172
Q2         6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              NA                0.0997230   0.0688038   0.1306422
Q2         6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                NA                0.1212938   0.0880623   0.1545253
Q2         6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                 NA                0.1108108   0.0881869   0.1334347
Q2         6 months    ki1119695-PROBIT            BELARUS                        Control              NA                0.0819672   0.0603352   0.1035992
Q2         6 months    ki1119695-PROBIT            BELARUS                        Maternal             NA                0.0625000   0.0427927   0.0822073
Q2         6 months    ki1135781-COHORTS           GUATEMALA                      Control              NA                0.3960396   0.3324521   0.4596271
Q2         6 months    ki1135781-COHORTS           GUATEMALA                      Other                NA                0.4509804   0.4050082   0.4969526
Q2         6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                0.3492063   0.3299184   0.3684943
Q2         6 months    ki1148112-iLiNS-DOSE        MALAWI                         LNS                  NA                0.3167702   0.2742167   0.3593237
Q2         6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Control              NA                0.2962963   0.2589195   0.3336731
Q2         6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Maternal             NA                0.2888889   0.2409925   0.3367853
Q2         6 months    ki1148112-LCNI-5            MALAWI                         Control              NA                0.3714286   0.2580162   0.4848410
Q2         6 months    ki1148112-LCNI-5            MALAWI                         LNS                  NA                0.3790323   0.2934751   0.4645894
Q2         6 months    ki1148112-LCNI-5            MALAWI                         Other                NA                0.3650794   0.2459613   0.4841975
Q2         6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                0.2748977   0.2609475   0.2888478
Q2         6 months    kiGH5241-JiVitA-3           BANGLADESH                     Maternal             NA                0.2495076   0.2371160   0.2618991
Q2         6 months    kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                0.3188406   0.2078326   0.4298486
Q2         6 months    kiGH5241-JiVitA-4           BANGLADESH                     LNS                  NA                0.1636364   0.0502740   0.2769987
Q2         6 months    kiGH5241-JiVitA-4           BANGLADESH                     Other                NA                0.2923077   0.2099769   0.3746385
Q2         24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                0.4823529   0.3759935   0.5887124
Q2         24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                  NA                0.4144144   0.3226578   0.5061710
Q2         24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                NA                0.3942308   0.3277366   0.4607249
Q2         24 months   ki1000304-EU                INDIA                          Control              NA                0.7000000   0.4965380   0.9034620
Q2         24 months   ki1000304-EU                INDIA                          Zinc                 NA                0.6315789   0.4118447   0.8513132
Q2         24 months   ki1000304-Vitamin-B12       INDIA                          Control              NA                0.4545455   0.3549406   0.5541503
Q2         24 months   ki1000304-Vitamin-B12       INDIA                          Other                NA                0.5909091   0.4518185   0.7299997
Q2         24 months   ki1000304-ZnMort            INDIA                          Control              NA                0.6923077   0.5126974   0.8719180
Q2         24 months   ki1000304-ZnMort            INDIA                          Zinc                 NA                0.5333333   0.2777296   0.7889370
Q2         24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                0.6666667   0.6371586   0.6961747
Q2         24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS                  NA                0.5422535   0.4744045   0.6101026
Q2         24 months   ki1148112-LCNI-5            MALAWI                         Control              NA                0.4444444   0.2814151   0.6074738
Q2         24 months   ki1148112-LCNI-5            MALAWI                         LNS                  NA                0.4259259   0.2934617   0.5583902
Q2         24 months   ki1148112-LCNI-5            MALAWI                         Other                NA                0.3200000   0.1363445   0.5036555
Q3         Birth       ki1119695-PROBIT            BELARUS                        Control              NA                0.0031354   0.0019830   0.0042877
Q3         Birth       ki1119695-PROBIT            BELARUS                        Maternal             NA                0.0016020   0.0009129   0.0022911
Q3         Birth       ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                0.1111111   0.1038299   0.1183923
Q3         Birth       ki1126311-ZVITAMBO          ZIMBABWE                       VitA                 NA                0.1122754   0.0995443   0.1250066
Q3         Birth       kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                0.3261649   0.3142462   0.3380835
Q3         Birth       kiGH5241-JiVitA-3           BANGLADESH                     Maternal             NA                0.2783883   0.2667266   0.2900500
Q3         6 months    iLiNS_DYADM_LNS             MALAWI                         Control              NA                0.1797753   0.1406552   0.2188953
Q3         6 months    iLiNS_DYADM_LNS             MALAWI                         LNS                  NA                0.1505376   0.1132977   0.1877776
Q3         6 months    ki1000304-EU                INDIA                          Control              NA                0.3928571   0.2102613   0.5754529
Q3         6 months    ki1000304-EU                INDIA                          Zinc                 NA                0.2307692   0.0672994   0.3942391
Q3         6 months    ki1000304-VITAMIN-A         INDIA                          Control              NA                0.3714286   0.3413914   0.4014658
Q3         6 months    ki1000304-VITAMIN-A         INDIA                          VitA                 NA                0.3493976   0.3195177   0.3792775
Q3         6 months    ki1000304b-SAS-CompFeed     INDIA                          Control              NA                0.1153846   0.0894730   0.1412963
Q3         6 months    ki1000304b-SAS-CompFeed     INDIA                          Other                NA                0.2891566   0.2712234   0.3070899
Q3         6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Control              NA                0.5428571   0.4932746   0.5924397
Q3         6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Other                NA                0.3292683   0.2576733   0.4008633
Q3         6 months    ki1119695-PROBIT            BELARUS                        Control              NA                0.0747913   0.0634357   0.0861468
Q3         6 months    ki1119695-PROBIT            BELARUS                        Maternal             NA                0.0581456   0.0500308   0.0662605
Q3         6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                0.2049180   0.1928910   0.2169450
Q3         6 months    ki1126311-ZVITAMBO          ZIMBABWE                       VitA                 NA                0.2117347   0.1899146   0.2335548
Q3         6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                0.4000000   0.3824911   0.4175089
Q3         6 months    ki1148112-iLiNS-DOSE        MALAWI                         LNS                  NA                0.3187348   0.2809860   0.3564836
Q3         6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Control              NA                0.1797753   0.1559088   0.2036417
Q3         6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Maternal             NA                0.1770335   0.1406794   0.2133876
Q3         6 months    ki1148112-LCNI-5            MALAWI                         Control              NA                0.1851852   0.0380796   0.3322907
Q3         6 months    ki1148112-LCNI-5            MALAWI                         LNS                  NA                0.3157895   0.1946363   0.4369426
Q3         6 months    ki1148112-LCNI-5            MALAWI                         Other                NA                0.4047619   0.2557233   0.5538005
Q3         6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                0.2341207   0.2227135   0.2455280
Q3         6 months    kiGH5241-JiVitA-3           BANGLADESH                     Maternal             NA                0.2200855   0.2088361   0.2313349
Q3         6 months    kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                0.2000000   0.1235837   0.2764163
Q3         6 months    kiGH5241-JiVitA-4           BANGLADESH                     LNS                  NA                0.2824427   0.2005891   0.3642964
Q3         6 months    kiGH5241-JiVitA-4           BANGLADESH                     Other                NA                0.2350000   0.1677414   0.3022586
Q3         24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                0.2957746   0.1894260   0.4021233
Q3         24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                  NA                0.2500000   0.1468970   0.3531030
Q3         24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                NA                0.3049645   0.2288367   0.3810924
Q3         24 months   ki1000304-EU                INDIA                          Control              NA                0.5625000   0.3158774   0.8091226
Q3         24 months   ki1000304-EU                INDIA                          Zinc                 NA                0.4736842   0.2458948   0.7014736
Q3         24 months   ki1119695-PROBIT            BELARUS                        Control              NA                0.1494662   0.1095252   0.1894072
Q3         24 months   ki1119695-PROBIT            BELARUS                        Maternal             NA                0.1076115   0.0853282   0.1298949
Q3         24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                0.5161290   0.4916190   0.5406391
Q3         24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS                  NA                0.5625000   0.5019492   0.6230508
Q3         24 months   ki1148112-LCNI-5            MALAWI                         Control              NA                0.3750000   0.1357123   0.6142877
Q3         24 months   ki1148112-LCNI-5            MALAWI                         LNS                  NA                0.4166667   0.2177039   0.6156294
Q3         24 months   ki1148112-LCNI-5            MALAWI                         Other                NA                0.3333333   0.1136576   0.5530091
Q3         24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                0.3478261   0.1531326   0.5425196
Q3         24 months   kiGH5241-JiVitA-4           BANGLADESH                     LNS                  NA                0.5000000   0.3022294   0.6977706
Q3         24 months   kiGH5241-JiVitA-4           BANGLADESH                     Other                NA                0.3673469   0.2330049   0.5016890


### Parameter: E(Y)


feducyrs   agecat      studyid                     country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------  ----------  --------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Q4         Birth       ki1126311-ZVITAMBO          ZIMBABWE                       NA                   NA                0.1013561   0.0958409   0.1068713
Q4         Birth       kiGH5241-JiVitA-3           BANGLADESH                     NA                   NA                0.2208054   0.1960678   0.2455429
Q4         6 months    iLiNS_DYADM_LNS             MALAWI                         NA                   NA                0.1629630   0.1004295   0.2254964
Q4         6 months    ki1000304-EU                INDIA                          NA                   NA                0.2808989   0.2146877   0.3471101
Q4         6 months    ki1000304-VITAMIN-A         INDIA                          NA                   NA                0.2718360   0.2457917   0.2978803
Q4         6 months    ki1000304-ZnMort            INDIA                          NA                   NA                0.2753623   0.1691912   0.3815334
Q4         6 months    ki1000304b-SAS-CompFeed     INDIA                          NA                   NA                0.1951220   0.1111116   0.2791323
Q4         6 months    ki1119695-PROBIT            BELARUS                        NA                   NA                0.0403121   0.0270869   0.0535373
Q4         6 months    ki1126311-ZVITAMBO          ZIMBABWE                       NA                   NA                0.1566978   0.1478050   0.1655906
Q4         6 months    ki1148112-iLiNS-DOSE        MALAWI                         NA                   NA                0.2269939   0.1898286   0.2641591
Q4         6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         NA                   NA                0.1691542   0.1171983   0.2211101
Q4         6 months    kiGH5241-JiVitA-3           BANGLADESH                     NA                   NA                0.1246670   0.1044931   0.1448409
Q4         24 months   ki1000304-EU                INDIA                          NA                   NA                0.5044248   0.4118288   0.5970207
Q4         24 months   ki1000304-ZnMort            INDIA                          NA                   NA                0.5147059   0.3950338   0.6343779
Q4         24 months   ki1126311-ZVITAMBO          ZIMBABWE                       NA                   NA                0.6333333   0.4579449   0.8087218
Q4         24 months   ki1148112-iLiNS-DOSE        MALAWI                         NA                   NA                0.3578947   0.2895511   0.4262384
Q1         Birth       ki1135781-COHORTS           GUATEMALA                      NA                   NA                0.0600925   0.0417941   0.0783909
Q1         Birth       kiGH5241-JiVitA-3           BANGLADESH                     NA                   NA                0.3377930   0.3266095   0.3489765
Q1         Birth       kiGH5241-JiVitA-4           BANGLADESH                     NA                   NA                0.2967359   0.2444926   0.3489792
Q1         6 months    iLiNS_DYADM_LNS             MALAWI                         NA                   NA                0.2897196   0.2287993   0.3506399
Q1         6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     NA                   NA                0.1799308   0.1355669   0.2242947
Q1         6 months    ki1000304-EU                INDIA                          NA                   NA                0.3513514   0.2418392   0.4608635
Q1         6 months    ki1000304-VITAMIN-A         INDIA                          NA                   NA                0.4601942   0.4171062   0.5032821
Q1         6 months    ki1000304b-SAS-CompFeed     INDIA                          NA                   NA                0.3858268   0.3531727   0.4184808
Q1         6 months    ki1000304b-SAS-FoodSuppl    INDIA                          NA                   NA                0.4460432   0.3631087   0.5289776
Q1         6 months    ki1135781-COHORTS           GUATEMALA                      NA                   NA                0.4162011   0.3800703   0.4523320
Q1         6 months    ki1148112-iLiNS-DOSE        MALAWI                         NA                   NA                0.3333333   0.2892864   0.3773802
Q1         6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         NA                   NA                0.2643312   0.2154782   0.3131842
Q1         6 months    ki1148112-LCNI-5            MALAWI                         NA                   NA                0.3897849   0.3401583   0.4394116
Q1         6 months    kiGH5241-JiVitA-3           BANGLADESH                     NA                   NA                0.2866738   0.2746177   0.2987300
Q1         6 months    kiGH5241-JiVitA-4           BANGLADESH                     NA                   NA                0.2523833   0.2297810   0.2749857
Q1         24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     NA                   NA                0.4729167   0.4282059   0.5176275
Q1         24 months   ki1000304-EU                INDIA                          NA                   NA                0.7846154   0.6839005   0.8853303
Q1         24 months   ki1135781-COHORTS           GUATEMALA                      NA                   NA                0.7654321   0.7120460   0.8188182
Q1         24 months   ki1148112-iLiNS-DOSE        MALAWI                         NA                   NA                0.5530726   0.4800348   0.6261104
Q1         24 months   ki1148112-LCNI-5            MALAWI                         NA                   NA                0.3602151   0.2910383   0.4293918
Q1         24 months   kiGH5241-JiVitA-3           BANGLADESH                     NA                   NA                0.6285714   0.4666861   0.7904568
Q1         24 months   kiGH5241-JiVitA-4           BANGLADESH                     NA                   NA                0.3995680   0.3512731   0.4478629
Q2         Birth       ki1000304b-SAS-CompFeed     INDIA                          NA                   NA                0.3809524   0.2076810   0.5542238
Q2         Birth       kiGH5241-JiVitA-3           BANGLADESH                     NA                   NA                0.3405269   0.3222661   0.3587877
Q2         6 months    iLiNS_DYADM_LNS             MALAWI                         NA                   NA                0.2697368   0.1989472   0.3405264
Q2         6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     NA                   NA                0.1497585   0.1010302   0.1984868
Q2         6 months    ki1000304-EU                INDIA                          NA                   NA                0.4210526   0.2917397   0.5503655
Q2         6 months    ki1000304-VITAMIN-A         INDIA                          NA                   NA                0.3786667   0.3295077   0.4278257
Q2         6 months    ki1000304-ZnMort            INDIA                          NA                   NA                0.3953488   0.2474836   0.5432141
Q2         6 months    ki1000304b-SAS-CompFeed     INDIA                          NA                   NA                0.3558282   0.2576579   0.4539985
Q2         6 months    ki1000304b-SAS-FoodSuppl    INDIA                          NA                   NA                0.4878049   0.3789504   0.5966594
Q2         6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1107337   0.0946976   0.1267698
Q2         6 months    ki1119695-PROBIT            BELARUS                        NA                   NA                0.0700637   0.0407045   0.0994229
Q2         6 months    ki1135781-COHORTS           GUATEMALA                      NA                   NA                0.4144737   0.3358992   0.4930481
Q2         6 months    ki1148112-iLiNS-DOSE        MALAWI                         NA                   NA                0.3220779   0.2753418   0.3688141
Q2         6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         NA                   NA                0.2916667   0.2309104   0.3524229
Q2         6 months    ki1148112-LCNI-5            MALAWI                         NA                   NA                0.3735409   0.3142833   0.4327984
Q2         6 months    kiGH5241-JiVitA-3           BANGLADESH                     NA                   NA                0.2619605   0.2432372   0.2806838
Q2         6 months    kiGH5241-JiVitA-4           BANGLADESH                     NA                   NA                0.2716535   0.2136426   0.3296645
Q2         24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     NA                   NA                0.4183168   0.3701563   0.4664774
Q2         24 months   ki1000304-EU                INDIA                          NA                   NA                0.6666667   0.5167845   0.8165489
Q2         24 months   ki1000304-Vitamin-B12       INDIA                          NA                   NA                0.5454545   0.3729339   0.7179752
Q2         24 months   ki1000304-ZnMort            INDIA                          NA                   NA                0.6341463   0.4848784   0.7834143
Q2         24 months   ki1148112-iLiNS-DOSE        MALAWI                         NA                   NA                0.5639535   0.4896279   0.6382790
Q2         24 months   ki1148112-LCNI-5            MALAWI                         NA                   NA                0.4086957   0.3184552   0.4989361
Q3         Birth       ki1119695-PROBIT            BELARUS                        NA                   NA                0.0023551   0.0009846   0.0037256
Q3         Birth       ki1126311-ZVITAMBO          ZIMBABWE                       NA                   NA                0.1119865   0.0973202   0.1266527
Q3         Birth       kiGH5241-JiVitA-3           BANGLADESH                     NA                   NA                0.3025362   0.2857270   0.3193455
Q3         6 months    iLiNS_DYADM_LNS             MALAWI                         NA                   NA                0.1648352   0.1107822   0.2188882
Q3         6 months    ki1000304-EU                INDIA                          NA                   NA                0.3148148   0.1897769   0.4398527
Q3         6 months    ki1000304-VITAMIN-A         INDIA                          NA                   NA                0.3603239   0.3179448   0.4027029
Q3         6 months    ki1000304b-SAS-CompFeed     INDIA                          NA                   NA                0.2049689   0.1342376   0.2757003
Q3         6 months    ki1000304b-SAS-FoodSuppl    INDIA                          NA                   NA                0.3931624   0.3042748   0.4820500
Q3         6 months    ki1119695-PROBIT            BELARUS                        NA                   NA                0.0663966   0.0515790   0.0812143
Q3         6 months    ki1126311-ZVITAMBO          ZIMBABWE                       NA                   NA                0.2101167   0.1852009   0.2350325
Q3         6 months    ki1148112-iLiNS-DOSE        MALAWI                         NA                   NA                0.3319756   0.2902791   0.3736720
Q3         6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         NA                   NA                0.1778523   0.1343638   0.2213409
Q3         6 months    ki1148112-LCNI-5            MALAWI                         NA                   NA                0.3174603   0.2358581   0.3990625
Q3         6 months    kiGH5241-JiVitA-3           BANGLADESH                     NA                   NA                0.2271644   0.2111464   0.2431824
Q3         6 months    kiGH5241-JiVitA-4           BANGLADESH                     NA                   NA                0.2399103   0.1964180   0.2834026
Q3         24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     NA                   NA                0.2892857   0.2360802   0.3424913
Q3         24 months   ki1000304-EU                INDIA                          NA                   NA                0.5142857   0.3462888   0.6822826
Q3         24 months   ki1119695-PROBIT            BELARUS                        NA                   NA                0.1253776   0.0767973   0.1739580
Q3         24 months   ki1148112-iLiNS-DOSE        MALAWI                         NA                   NA                0.5560538   0.4906963   0.6214113
Q3         24 months   ki1148112-LCNI-5            MALAWI                         NA                   NA                0.3793103   0.2533467   0.5052740
Q3         24 months   kiGH5241-JiVitA-4           BANGLADESH                     NA                   NA                0.3979592   0.3003549   0.4955635


### Parameter: RR


feducyrs   agecat      studyid                     country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------  ----------  --------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Q4         Birth       ki1126311-ZVITAMBO          ZIMBABWE                       Control              Control           1.0000000   1.0000000   1.0000000
Q4         Birth       ki1126311-ZVITAMBO          ZIMBABWE                       VitA                 Control           0.9702687   0.9188783   1.0245332
Q4         Birth       kiGH5241-JiVitA-3           BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
Q4         Birth       kiGH5241-JiVitA-3           BANGLADESH                     Maternal             Control           0.9079029   0.8111420   1.0162064
Q4         6 months    iLiNS_DYADM_LNS             MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
Q4         6 months    iLiNS_DYADM_LNS             MALAWI                         LNS                  Control           1.5931034   1.0722373   2.3669934
Q4         6 months    ki1000304-EU                INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
Q4         6 months    ki1000304-EU                INDIA                          Zinc                 Control           0.5053684   0.2891194   0.8833624
Q4         6 months    ki1000304-VITAMIN-A         INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
Q4         6 months    ki1000304-VITAMIN-A         INDIA                          VitA                 Control           0.8287437   0.7525910   0.9126020
Q4         6 months    ki1000304-ZnMort            INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
Q4         6 months    ki1000304-ZnMort            INDIA                          Zinc                 Control           0.9647436   0.4331872   2.1485633
Q4         6 months    ki1000304b-SAS-CompFeed     INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
Q4         6 months    ki1000304b-SAS-CompFeed     INDIA                          Other                Control           0.6883780   0.4779107   0.9915332
Q4         6 months    ki1119695-PROBIT            BELARUS                        Control              Control           1.0000000   1.0000000   1.0000000
Q4         6 months    ki1119695-PROBIT            BELARUS                        Maternal             Control           0.7312025   0.5389995   0.9919436
Q4         6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control              Control           1.0000000   1.0000000   1.0000000
Q4         6 months    ki1126311-ZVITAMBO          ZIMBABWE                       VitA                 Control           1.0183437   0.9621589   1.0778095
Q4         6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
Q4         6 months    ki1148112-iLiNS-DOSE        MALAWI                         LNS                  Control           0.8503641   0.7216694   1.0020087
Q4         6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
Q4         6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Maternal             Control           1.4903226   1.0885795   2.0403299
Q4         6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
Q4         6 months    kiGH5241-JiVitA-3           BANGLADESH                     Maternal             Control           0.7594664   0.6458235   0.8931066
Q4         24 months   ki1000304-EU                INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
Q4         24 months   ki1000304-EU                INDIA                          Zinc                 Control           0.8531469   0.5861702   1.2417206
Q4         24 months   ki1000304-ZnMort            INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
Q4         24 months   ki1000304-ZnMort            INDIA                          Zinc                 Control           0.7912913   0.4978012   1.2578152
Q4         24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control              Control           1.0000000   1.0000000   1.0000000
Q4         24 months   ki1126311-ZVITAMBO          ZIMBABWE                       VitA                 Control           1.4000000   1.0513899   1.8641989
Q4         24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
Q4         24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS                  Control           0.7978495   0.6584040   0.9668285
Q1         Birth       ki1135781-COHORTS           GUATEMALA                      Control              Control           1.0000000   1.0000000   1.0000000
Q1         Birth       ki1135781-COHORTS           GUATEMALA                      Other                Control           1.5176151   1.1114884   2.0721366
Q1         Birth       kiGH5241-JiVitA-3           BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
Q1         Birth       kiGH5241-JiVitA-3           BANGLADESH                     Maternal             Control           0.9265467   0.8964334   0.9576717
Q1         Birth       kiGH5241-JiVitA-4           BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
Q1         Birth       kiGH5241-JiVitA-4           BANGLADESH                     LNS                  Control           1.5090909   0.9627973   2.3653528
Q1         Birth       kiGH5241-JiVitA-4           BANGLADESH                     Other                Control           0.9309327   0.5892597   1.4707194
Q1         6 months    iLiNS_DYADM_LNS             MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
Q1         6 months    iLiNS_DYADM_LNS             MALAWI                         LNS                  Control           0.8863636   0.7178897   1.0943749
Q1         6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
Q1         6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                  Control           0.9147287   0.4669951   1.7917289
Q1         6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Other                Control           0.8194444   0.4389262   1.5298454
Q1         6 months    ki1000304-EU                INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
Q1         6 months    ki1000304-EU                INDIA                          Zinc                 Control           1.4393939   0.7629403   2.7156187
Q1         6 months    ki1000304-VITAMIN-A         INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
Q1         6 months    ki1000304-VITAMIN-A         INDIA                          VitA                 Control           1.0510042   0.9570141   1.1542253
Q1         6 months    ki1000304b-SAS-CompFeed     INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
Q1         6 months    ki1000304b-SAS-CompFeed     INDIA                          Other                Control           1.0253906   0.9480837   1.1090012
Q1         6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
Q1         6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Other                Control           0.9370717   0.7779797   1.1286969
Q1         6 months    ki1135781-COHORTS           GUATEMALA                      Control              Control           1.0000000   1.0000000   1.0000000
Q1         6 months    ki1135781-COHORTS           GUATEMALA                      Other                Control           0.7277495   0.6660102   0.7952122
Q1         6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
Q1         6 months    ki1148112-iLiNS-DOSE        MALAWI                         LNS                  Control           1.1404682   0.9990517   1.3019023
Q1         6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
Q1         6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Maternal             Control           0.7892857   0.6550767   0.9509908
Q1         6 months    ki1148112-LCNI-5            MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
Q1         6 months    ki1148112-LCNI-5            MALAWI                         LNS                  Control           1.0579232   0.7662787   1.4605672
Q1         6 months    ki1148112-LCNI-5            MALAWI                         Other                Control           1.2137733   0.8436289   1.7463196
Q1         6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
Q1         6 months    kiGH5241-JiVitA-3           BANGLADESH                     Maternal             Control           0.9409527   0.9021118   0.9814658
Q1         6 months    kiGH5241-JiVitA-4           BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
Q1         6 months    kiGH5241-JiVitA-4           BANGLADESH                     LNS                  Control           1.1534294   0.8933353   1.4892498
Q1         6 months    kiGH5241-JiVitA-4           BANGLADESH                     Other                Control           1.2517414   0.9826883   1.5944594
Q1         24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
Q1         24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                  Control           0.9243200   0.6923412   1.2340266
Q1         24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                Control           1.0988618   0.8653540   1.3953795
Q1         24 months   ki1000304-EU                INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
Q1         24 months   ki1000304-EU                INDIA                          Zinc                 Control           0.9212691   0.7150884   1.1868976
Q1         24 months   ki1135781-COHORTS           GUATEMALA                      Control              Control           1.0000000   1.0000000   1.0000000
Q1         24 months   ki1135781-COHORTS           GUATEMALA                      Other                Control           0.8822055   0.8222971   0.9464786
Q1         24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
Q1         24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS                  Control           1.2789744   1.1193916   1.4613076
Q1         24 months   ki1148112-LCNI-5            MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
Q1         24 months   ki1148112-LCNI-5            MALAWI                         LNS                  Control           1.1666667   0.7308448   1.8623806
Q1         24 months   ki1148112-LCNI-5            MALAWI                         Other                Control           1.1851852   0.6884804   2.0402382
Q1         24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
Q1         24 months   kiGH5241-JiVitA-3           BANGLADESH                     Maternal             Control           1.3125000   1.0064321   1.7116467
Q1         24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
Q1         24 months   kiGH5241-JiVitA-4           BANGLADESH                     LNS                  Control           0.8455882   0.6013051   1.1891125
Q1         24 months   kiGH5241-JiVitA-4           BANGLADESH                     Other                Control           1.0966981   0.8153161   1.4751907
Q2         Birth       ki1000304b-SAS-CompFeed     INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
Q2         Birth       ki1000304b-SAS-CompFeed     INDIA                          Other                Control           1.2638889   0.8354300   1.9120873
Q2         Birth       kiGH5241-JiVitA-3           BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
Q2         Birth       kiGH5241-JiVitA-3           BANGLADESH                     Maternal             Control           0.8629489   0.8181786   0.9101691
Q2         6 months    iLiNS_DYADM_LNS             MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
Q2         6 months    iLiNS_DYADM_LNS             MALAWI                         LNS                  Control           0.8080986   0.6203068   1.0527426
Q2         6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
Q2         6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                  Control           0.9642857   0.4558234   2.0399279
Q2         6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Other                Control           0.4554827   0.2010823   1.0317394
Q2         6 months    ki1000304-EU                INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
Q2         6 months    ki1000304-EU                INDIA                          Zinc                 Control           1.2600000   0.6720030   2.3624895
Q2         6 months    ki1000304-VITAMIN-A         INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
Q2         6 months    ki1000304-VITAMIN-A         INDIA                          VitA                 Control           1.0420503   0.9151426   1.1865570
Q2         6 months    ki1000304-ZnMort            INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
Q2         6 months    ki1000304-ZnMort            INDIA                          Zinc                 Control           0.8050000   0.3740389   1.7325071
Q2         6 months    ki1000304b-SAS-CompFeed     INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
Q2         6 months    ki1000304b-SAS-CompFeed     INDIA                          Other                Control           0.8153257   0.6222862   1.0682479
Q2         6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
Q2         6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Other                Control           0.7150063   0.5693379   0.8979448
Q2         6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              Control           1.0000000   1.0000000   1.0000000
Q2         6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                Control           1.2163073   0.8041767   1.8396495
Q2         6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                 Control           1.1111862   0.7665870   1.6106909
Q2         6 months    ki1119695-PROBIT            BELARUS                        Control              Control           1.0000000   1.0000000   1.0000000
Q2         6 months    ki1119695-PROBIT            BELARUS                        Maternal             Control           0.7625000   0.5041411   1.1532610
Q2         6 months    ki1135781-COHORTS           GUATEMALA                      Control              Control           1.0000000   1.0000000   1.0000000
Q2         6 months    ki1135781-COHORTS           GUATEMALA                      Other                Control           1.1387255   0.9415049   1.3772587
Q2         6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
Q2         6 months    ki1148112-iLiNS-DOSE        MALAWI                         LNS                  Control           0.9071146   0.7844802   1.0489199
Q2         6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
Q2         6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Maternal             Control           0.9750000   0.7916411   1.2008282
Q2         6 months    ki1148112-LCNI-5            MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
Q2         6 months    ki1148112-LCNI-5            MALAWI                         LNS                  Control           1.0204715   0.6980585   1.4917977
Q2         6 months    ki1148112-LCNI-5            MALAWI                         Other                Control           0.9829060   0.6286939   1.5366844
Q2         6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
Q2         6 months    kiGH5241-JiVitA-3           BANGLADESH                     Maternal             Control           0.9076379   0.8454401   0.9744114
Q2         6 months    kiGH5241-JiVitA-4           BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
Q2         6 months    kiGH5241-JiVitA-4           BANGLADESH                     LNS                  Control           0.5132231   0.2363441   1.1144683
Q2         6 months    kiGH5241-JiVitA-4           BANGLADESH                     Other                Control           0.9167832   0.5858614   1.4346250
Q2         24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
Q2         24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                  Control           0.8591518   0.6285808   1.1742991
Q2         24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                Control           0.8173077   0.6191832   1.0788275
Q2         24 months   ki1000304-EU                INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
Q2         24 months   ki1000304-EU                INDIA                          Zinc                 Control           0.9022556   0.5733794   1.4197671
Q2         24 months   ki1000304-Vitamin-B12       INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
Q2         24 months   ki1000304-Vitamin-B12       INDIA                          Other                Control           1.3000000   0.9424885   1.7931254
Q2         24 months   ki1000304-ZnMort            INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
Q2         24 months   ki1000304-ZnMort            INDIA                          Zinc                 Control           0.7703704   0.4467053   1.3285504
Q2         24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
Q2         24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS                  Control           0.8133803   0.7122839   0.9288256
Q2         24 months   ki1148112-LCNI-5            MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
Q2         24 months   ki1148112-LCNI-5            MALAWI                         LNS                  Control           0.9583333   0.5924598   1.5501520
Q2         24 months   ki1148112-LCNI-5            MALAWI                         Other                Control           0.7200000   0.3643512   1.4228032
Q3         Birth       ki1119695-PROBIT            BELARUS                        Control              Control           1.0000000   1.0000000   1.0000000
Q3         Birth       ki1119695-PROBIT            BELARUS                        Maternal             Control           0.5109417   0.2901475   0.8997542
Q3         Birth       ki1126311-ZVITAMBO          ZIMBABWE                       Control              Control           1.0000000   1.0000000   1.0000000
Q3         Birth       ki1126311-ZVITAMBO          ZIMBABWE                       VitA                 Control           1.0104790   0.8864403   1.1518744
Q3         Birth       kiGH5241-JiVitA-3           BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
Q3         Birth       kiGH5241-JiVitA-3           BANGLADESH                     Maternal             Control           0.8535201   0.8073696   0.9023087
Q3         6 months    iLiNS_DYADM_LNS             MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
Q3         6 months    iLiNS_DYADM_LNS             MALAWI                         LNS                  Control           0.8373656   0.6023227   1.1641288
Q3         6 months    ki1000304-EU                INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
Q3         6 months    ki1000304-EU                INDIA                          Zinc                 Control           0.5874126   0.2517627   1.3705505
Q3         6 months    ki1000304-VITAMIN-A         INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
Q3         6 months    ki1000304-VITAMIN-A         INDIA                          VitA                 Control           0.9406858   0.8362349   1.0581833
Q3         6 months    ki1000304b-SAS-CompFeed     INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
Q3         6 months    ki1000304b-SAS-CompFeed     INDIA                          Other                Control           2.5060241   1.9851938   3.1634981
Q3         6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
Q3         6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Other                Control           0.6065469   0.4791152   0.7678719
Q3         6 months    ki1119695-PROBIT            BELARUS                        Control              Control           1.0000000   1.0000000   1.0000000
Q3         6 months    ki1119695-PROBIT            BELARUS                        Maternal             Control           0.7774388   0.6334557   0.9541489
Q3         6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control              Control           1.0000000   1.0000000   1.0000000
Q3         6 months    ki1126311-ZVITAMBO          ZIMBABWE                       VitA                 Control           1.0332653   0.9177124   1.1633680
Q3         6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
Q3         6 months    ki1148112-iLiNS-DOSE        MALAWI                         LNS                  Control           0.7968370   0.7023183   0.9040761
Q3         6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
Q3         6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Maternal             Control           0.9847488   0.7711315   1.2575420
Q3         6 months    ki1148112-LCNI-5            MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
Q3         6 months    ki1148112-LCNI-5            MALAWI                         LNS                  Control           1.7052632   0.7057855   4.1201220
Q3         6 months    ki1148112-LCNI-5            MALAWI                         Other                Control           2.1857143   0.9106316   5.2461907
Q3         6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
Q3         6 months    kiGH5241-JiVitA-3           BANGLADESH                     Maternal             Control           0.9400512   0.8759656   1.0088253
Q3         6 months    kiGH5241-JiVitA-4           BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
Q3         6 months    kiGH5241-JiVitA-4           BANGLADESH                     LNS                  Control           1.4122137   0.8742286   2.2812657
Q3         6 months    kiGH5241-JiVitA-4           BANGLADESH                     Other                Control           1.1750000   0.7289667   1.8939480
Q3         24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
Q3         24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                  Control           0.8452381   0.4890546   1.4608338
Q3         24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                Control           1.0310706   0.6655636   1.5973027
Q3         24 months   ki1000304-EU                INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
Q3         24 months   ki1000304-EU                INDIA                          Zinc                 Control           0.8421053   0.4392851   1.6143075
Q3         24 months   ki1119695-PROBIT            BELARUS                        Control              Control           1.0000000   1.0000000   1.0000000
Q3         24 months   ki1119695-PROBIT            BELARUS                        Maternal             Control           0.7199725   0.5158880   1.0047926
Q3         24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
Q3         24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS                  Control           1.0898437   0.9688737   1.2259176
Q3         24 months   ki1148112-LCNI-5            MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
Q3         24 months   ki1148112-LCNI-5            MALAWI                         LNS                  Control           1.1111111   0.5007608   2.4653843
Q3         24 months   ki1148112-LCNI-5            MALAWI                         Other                Control           0.8888889   0.3551872   2.2245266
Q3         24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
Q3         24 months   kiGH5241-JiVitA-4           BANGLADESH                     LNS                  Control           1.4375000   0.7243436   2.8527983
Q3         24 months   kiGH5241-JiVitA-4           BANGLADESH                     Other                Control           1.0561224   0.5411749   2.0610612


### Parameter: PAR


feducyrs   agecat      studyid                     country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
---------  ----------  --------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Q4         Birth       ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                -0.0023067   -0.0070618    0.0024484
Q4         Birth       kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                -0.0106886   -0.0286337    0.0072565
Q4         6 months    iLiNS_DYADM_LNS             MALAWI                         Control              NA                 0.0330928   -0.0123240    0.0785097
Q4         6 months    ki1000304-EU                INDIA                          Control              NA                -0.0714821   -0.1250963   -0.0178679
Q4         6 months    ki1000304-VITAMIN-A         INDIA                          Control              NA                -0.0261530   -0.0442865   -0.0080196
Q4         6 months    ki1000304-ZnMort            INDIA                          Control              NA                -0.0037074   -0.0860416    0.0786267
Q4         6 months    ki1000304b-SAS-CompFeed     INDIA                          Control              NA                -0.0386443   -0.0780893    0.0008008
Q4         6 months    ki1119695-PROBIT            BELARUS                        Control              NA                -0.0066925   -0.0141228    0.0007378
Q4         6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                 0.0021296   -0.0055915    0.0098507
Q4         6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                -0.0327464   -0.0665535    0.0010607
Q4         6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Control              NA                 0.0392841   -0.0039354    0.0825036
Q4         6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                -0.0177171   -0.0308976   -0.0045366
Q4         24 months   ki1000304-EU                INDIA                          Control              NA                -0.0365588   -0.1221006    0.0489830
Q4         24 months   ki1000304-ZnMort            INDIA                          Control              NA                -0.0659393   -0.1964135    0.0645349
Q4         24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                 0.1333333   -0.0071032    0.2737699
Q4         24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                -0.0706767   -0.1319460   -0.0094074
Q1         Birth       ki1135781-COHORTS           GUATEMALA                      Control              NA                 0.0136639   -0.0012223    0.0285501
Q1         Birth       kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                -0.0129987   -0.0209892   -0.0050083
Q1         Birth       kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                 0.0316757   -0.0532460    0.1165973
Q1         6 months    iLiNS_DYADM_LNS             MALAWI                         Control              NA                -0.0179727   -0.0609174    0.0249721
Q1         6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                -0.0234590   -0.1141880    0.0672699
Q1         6 months    ki1000304-EU                INDIA                          Control              NA                 0.0618777   -0.0450020    0.1687573
Q1         6 months    ki1000304-VITAMIN-A         INDIA                          Control              NA                 0.0105539   -0.0187415    0.0398493
Q1         6 months    ki1000304b-SAS-CompFeed     INDIA                          Control              NA                 0.0048744   -0.0155197    0.0252684
Q1         6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Control              NA                -0.0227068   -0.0953861    0.0499724
Q1         6 months    ki1135781-COHORTS           GUATEMALA                      Control              NA                -0.0757603   -0.1026336   -0.0488870
Q1         6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                 0.0346320   -0.0056272    0.0748912
Q1         6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Control              NA                -0.0433611   -0.0823574   -0.0043648
Q1         6 months    ki1148112-LCNI-5            MALAWI                         Control              NA                 0.0280828   -0.0564285    0.1125942
Q1         6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                -0.0088177   -0.0175565   -0.0000790
Q1         6 months    kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                 0.0349037   -0.0040019    0.0738092
Q1         24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                 0.0142011   -0.0681725    0.0965746
Q1         24 months   ki1000304-EU                INDIA                          Control              NA                -0.0368132   -0.1507143    0.0770880
Q1         24 months   ki1135781-COHORTS           GUATEMALA                      Control              NA                -0.0527497   -0.0949532   -0.0105463
Q1         24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                 0.1047968    0.0379404    0.1716531
Q1         24 months   ki1148112-LCNI-5            MALAWI                         Control              NA                 0.0387865   -0.0649931    0.1425661
Q1         24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                 0.0952381   -0.0206275    0.2111037
Q1         24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                -0.0004320   -0.0847319    0.0838679
Q2         Birth       ki1000304b-SAS-CompFeed     INDIA                          Control              NA                 0.0347985   -0.1347470    0.2043441
Q2         Birth       kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                -0.0255496   -0.0378509   -0.0132484
Q2         6 months    iLiNS_DYADM_LNS             MALAWI                         Control              NA                -0.0265595   -0.0732979    0.0201790
Q2         6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                -0.0539452   -0.1429396    0.0350491
Q2         6 months    ki1000304-EU                INDIA                          Control              NA                 0.0506823   -0.0853296    0.1866941
Q2         6 months    ki1000304-VITAMIN-A         INDIA                          Control              NA                 0.0075326   -0.0267665    0.0418318
Q2         6 months    ki1000304-ZnMort            INDIA                          Control              NA                -0.0394338   -0.1770287    0.0981612
Q2         6 months    ki1000304b-SAS-CompFeed     INDIA                          Control              NA                -0.0389086   -0.1070575    0.0292403
Q2         6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Control              NA                -0.1312427   -0.2260322   -0.0364532
Q2         6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              NA                 0.0110107   -0.0162701    0.0382916
Q2         6 months    ki1119695-PROBIT            BELARUS                        Control              NA                -0.0119035   -0.0323733    0.0085663
Q2         6 months    ki1135781-COHORTS           GUATEMALA                      Control              NA                 0.0184341   -0.0277240    0.0645921
Q2         6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                -0.0271284   -0.0696989    0.0154420
Q2         6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Control              NA                -0.0046296   -0.0525284    0.0432692
Q2         6 months    ki1148112-LCNI-5            MALAWI                         Control              NA                 0.0021123   -0.0946714    0.0988960
Q2         6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                -0.0129372   -0.0253968   -0.0004775
Q2         6 months    kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                -0.0471870   -0.1421695    0.0477955
Q2         24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                -0.0640361   -0.1582255    0.0301532
Q2         24 months   ki1000304-EU                INDIA                          Control              NA                -0.0333333   -0.1796317    0.1129650
Q2         24 months   ki1000304-Vitamin-B12       INDIA                          Control              NA                 0.0909091   -0.0499534    0.2317716
Q2         24 months   ki1000304-ZnMort            INDIA                          Control              NA                -0.0581614   -0.1748911    0.0585684
Q2         24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                -0.1027132   -0.1709302   -0.0344962
Q2         24 months   ki1148112-LCNI-5            MALAWI                         Control              NA                -0.0357488   -0.1702159    0.0987183
Q3         Birth       ki1119695-PROBIT            BELARUS                        Control              NA                -0.0007803   -0.0015285   -0.0000321
Q3         Birth       ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                 0.0008754   -0.0118558    0.0136066
Q3         Birth       kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                -0.0236286   -0.0354779   -0.0117794
Q3         6 months    iLiNS_DYADM_LNS             MALAWI                         Control              NA                -0.0149401   -0.0522409    0.0223607
Q3         6 months    ki1000304-EU                INDIA                          Control              NA                -0.0780423   -0.1980407    0.0419561
Q3         6 months    ki1000304-VITAMIN-A         INDIA                          Control              NA                -0.0111047   -0.0410004    0.0187910
Q3         6 months    ki1000304b-SAS-CompFeed     INDIA                          Control              NA                 0.0895843    0.0227218    0.1564468
Q3         6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Control              NA                -0.1496947   -0.2234686   -0.0759209
Q3         6 months    ki1119695-PROBIT            BELARUS                        Control              NA                -0.0083946   -0.0174066    0.0006173
Q3         6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                 0.0051987   -0.0166221    0.0270195
Q3         6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                -0.0680244   -0.1058666   -0.0301822
Q3         6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Control              NA                -0.0019229   -0.0382773    0.0344315
Q3         6 months    ki1148112-LCNI-5            MALAWI                         Control              NA                 0.1322751   -0.0056548    0.2702050
Q3         6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                -0.0069563   -0.0182033    0.0042907
Q3         6 months    kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                 0.0399103   -0.0288049    0.1086255
Q3         24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                -0.0064889   -0.0981681    0.0851902
Q3         24 months   ki1000304-EU                INDIA                          Control              NA                -0.0482143   -0.2310703    0.1346418
Q3         24 months   ki1119695-PROBIT            BELARUS                        Control              NA                -0.0240885   -0.0493728    0.0011957
Q3         24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                 0.0399248   -0.0206628    0.1005124
Q3         24 months   ki1148112-LCNI-5            MALAWI                         Control              NA                 0.0043103   -0.1994898    0.2081105
Q3         24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                 0.0501331   -0.1220443    0.2223105


### Parameter: PAF


feducyrs   agecat      studyid                     country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
---------  ----------  --------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Q4         Birth       ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                -0.0227584   -0.0718890    0.0241203
Q4         Birth       kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                -0.0484072   -0.1372543    0.0334987
Q4         6 months    iLiNS_DYADM_LNS             MALAWI                         Control              NA                 0.2030697   -0.0615147    0.4017059
Q4         6 months    ki1000304-EU                INDIA                          Control              NA                -0.2544762   -0.4604092   -0.0775819
Q4         6 months    ki1000304-VITAMIN-A         INDIA                          Control              NA                -0.0962088   -0.1721475   -0.0251899
Q4         6 months    ki1000304-ZnMort            INDIA                          Control              NA                -0.0134639   -0.3612381    0.2454597
Q4         6 months    ki1000304b-SAS-CompFeed     INDIA                          Control              NA                -0.1980519   -0.4870732    0.0347963
Q4         6 months    ki1119695-PROBIT            BELARUS                        Control              NA                -0.1660175   -0.4101275    0.0358340
Q4         6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                 0.0135905   -0.0362328    0.0610183
Q4         6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                -0.1442611   -0.3283530    0.0143181
Q4         6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Control              NA                 0.2322383    0.0036143    0.4084039
Q4         6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                -0.1421152   -0.2709286   -0.0263576
Q4         24 months   ki1000304-EU                INDIA                          Control              NA                -0.0724763   -0.2569243    0.0849048
Q4         24 months   ki1000304-ZnMort            INDIA                          Control              NA                -0.1281106   -0.4153832    0.1008559
Q4         24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                 0.2105263    0.0102245    0.3702929
Q4         24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                -0.1974790   -0.4218797   -0.0084931
Q1         Birth       ki1135781-COHORTS           GUATEMALA                      Control              NA                 0.2273809    0.0048138    0.4001723
Q1         Birth       kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                -0.0384814   -0.0633544   -0.0141901
Q1         Birth       kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                 0.1067470   -0.2283568    0.3504322
Q1         6 months    iLiNS_DYADM_LNS             MALAWI                         Control              NA                -0.0620347   -0.2320397    0.0845118
Q1         6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                -0.1303781   -0.7650500    0.2760802
Q1         6 months    ki1000304-EU                INDIA                          Control              NA                 0.1761134   -0.1910696    0.4301011
Q1         6 months    ki1000304-VITAMIN-A         INDIA                          Control              NA                 0.0229336   -0.0413091    0.0832128
Q1         6 months    ki1000304b-SAS-CompFeed     INDIA                          Control              NA                 0.0126336   -0.0408976    0.0634119
Q1         6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Control              NA                -0.0509073   -0.2369563    0.1071584
Q1         6 months    ki1135781-COHORTS           GUATEMALA                      Control              NA                -0.1820281   -0.2616435   -0.1074368
Q1         6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                 0.1038961   -0.0113019    0.2059718
Q1         6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Control              NA                -0.1640408   -0.3502061   -0.0035438
Q1         6 months    ki1148112-LCNI-5            MALAWI                         Control              NA                 0.0720470   -0.1722367    0.2654241
Q1         6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                -0.0307588   -0.0626731    0.0001970
Q1         6 months    kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                 0.1382962   -0.0307514    0.2796193
Q1         24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                 0.0300287   -0.1607928    0.1894813
Q1         24 months   ki1000304-EU                INDIA                          Control              NA                -0.0469188   -0.2035822    0.0893526
Q1         24 months   ki1135781-COHORTS           GUATEMALA                      Control              NA                -0.0689150   -0.1295842   -0.0115043
Q1         24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                 0.1894810    0.0847531    0.2822253
Q1         24 months   ki1148112-LCNI-5            MALAWI                         Control              NA                 0.1076759   -0.2323808    0.3538992
Q1         24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                 0.1515152   -0.0230679    0.2963062
Q1         24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                -0.0010811   -0.2359374    0.1891472
Q2         Birth       ki1000304b-SAS-CompFeed     INDIA                          Control              NA                 0.0913462   -0.4182134    0.4178226
Q2         Birth       kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                -0.0750297   -0.1146822   -0.0367877
Q2         6 months    iLiNS_DYADM_LNS             MALAWI                         Control              NA                -0.0984643   -0.3074596    0.0771234
Q2         6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                -0.3602150   -1.0960939    0.1173177
Q2         6 months    ki1000304-EU                INDIA                          Control              NA                 0.1203704   -0.2708032    0.3911345
Q2         6 months    ki1000304-VITAMIN-A         INDIA                          Control              NA                 0.0198926   -0.0730503    0.1047851
Q2         6 months    ki1000304-ZnMort            INDIA                          Control              NA                -0.0997442   -0.5103503    0.1992338
Q2         6 months    ki1000304b-SAS-CompFeed     INDIA                          Control              NA                -0.1093466   -0.3434988    0.0839962
Q2         6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Control              NA                -0.2690476   -0.5433762   -0.0434798
Q2         6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              NA                 0.0994341   -0.1834947    0.3147253
Q2         6 months    ki1119695-PROBIT            BELARUS                        Control              NA                -0.1698957   -0.5702600    0.1283890
Q2         6 months    ki1135781-COHORTS           GUATEMALA                      Control              NA                 0.0444759   -0.0683324    0.1453724
Q2         6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                -0.0842294   -0.2375402    0.0500888
Q2         6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Control              NA                -0.0158730   -0.1971995    0.1379900
Q2         6 months    ki1148112-LCNI-5            MALAWI                         Control              NA                 0.0056548   -0.2903339    0.2337468
Q2         6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                -0.0493859   -0.1005822   -0.0005711
Q2         6 months    kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                -0.1737030   -0.5839441    0.1302858
Q2         24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                -0.1530804   -0.4022822    0.0518353
Q2         24 months   ki1000304-EU                INDIA                          Control              NA                -0.0500000   -0.2951979    0.1487787
Q2         24 months   ki1000304-Vitamin-B12       INDIA                          Control              NA                 0.1666667   -0.0816591    0.3579822
Q2         24 months   ki1000304-ZnMort            INDIA                          Control              NA                -0.0917160   -0.2963584    0.0806217
Q2         24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                -0.1821306   -0.3344896   -0.0471665
Q2         24 months   ki1148112-LCNI-5            MALAWI                         Control              NA                -0.0874704   -0.4720671    0.1966453
Q3         Birth       ki1119695-PROBIT            BELARUS                        Control              NA                -0.3313282   -0.8697464    0.0520453
Q3         Birth       ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                 0.0078169   -0.1116423    0.1144387
Q3         Birth       kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                -0.0781019   -0.1212824   -0.0365842
Q3         6 months    iLiNS_DYADM_LNS             MALAWI                         Control              NA                -0.0906367   -0.3687678    0.1309787
Q3         6 months    ki1000304-EU                INDIA                          Control              NA                -0.2478992   -0.6962221    0.0819290
Q3         6 months    ki1000304-VITAMIN-A         INDIA                          Control              NA                -0.0308186   -0.1200346    0.0512909
Q3         6 months    ki1000304b-SAS-CompFeed     INDIA                          Control              NA                 0.4370629    0.2056106    0.6010796
Q3         6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Control              NA                -0.3807453   -0.6710647   -0.1408641
Q3         6 months    ki1119695-PROBIT            BELARUS                        Control              NA                -0.1264318   -0.2930511    0.0187175
Q3         6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                 0.0247420   -0.0819964    0.1209506
Q3         6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                -0.2049080   -0.3508668   -0.0747198
Q3         6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Control              NA                -0.0108120   -0.2400687    0.1760611
Q3         6 months    ki1148112-LCNI-5            MALAWI                         Control              NA                 0.4166667   -0.2157994    0.7201201
Q3         6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                -0.0306224   -0.0829573    0.0191834
Q3         6 months    kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                 0.1663551   -0.1721475    0.4071022
Q3         24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                -0.0224309   -0.3939500    0.2500700
Q3         24 months   ki1000304-EU                INDIA                          Control              NA                -0.0937500   -0.5162995    0.2110470
Q3         24 months   ki1119695-PROBIT            BELARUS                        Control              NA                -0.1921279   -0.4724176    0.0348057
Q3         24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                 0.0718002   -0.0351072    0.1676661
Q3         24 months   ki1148112-LCNI-5            MALAWI                         Control              NA                 0.0113636   -0.7024035    0.4258694
Q3         24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                 0.1259755   -0.4337506    0.4671885
