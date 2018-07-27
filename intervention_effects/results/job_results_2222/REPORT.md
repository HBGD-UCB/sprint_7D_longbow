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

* brthmon
* agecat
* studyid
* country

## Data Summary

brthmon   agecat      studyid                     country                        tr          stunted   n_cell      n
--------  ----------  --------------------------  -----------------------------  ---------  --------  -------  -----
12        24 months   ki1000107-Serrinha-VitA     BRAZIL                         Control           0       16     42
12        24 months   ki1000107-Serrinha-VitA     BRAZIL                         Control           1        8     42
12        24 months   ki1000107-Serrinha-VitA     BRAZIL                         VitA              0       12     42
12        24 months   ki1000107-Serrinha-VitA     BRAZIL                         VitA              1        6     42
8         24 months   ki1000107-Serrinha-VitA     BRAZIL                         Control           0        7     25
8         24 months   ki1000107-Serrinha-VitA     BRAZIL                         Control           1        8     25
8         24 months   ki1000107-Serrinha-VitA     BRAZIL                         VitA              0        4     25
8         24 months   ki1000107-Serrinha-VitA     BRAZIL                         VitA              1        6     25
6         6 months    ki1000107-Serrinha-VitA     BRAZIL                         Control           0        5     15
6         6 months    ki1000107-Serrinha-VitA     BRAZIL                         Control           1        3     15
6         6 months    ki1000107-Serrinha-VitA     BRAZIL                         VitA              0        7     15
6         6 months    ki1000107-Serrinha-VitA     BRAZIL                         VitA              1        0     15
4         24 months   ki1000107-Serrinha-VitA     BRAZIL                         Control           0        6     18
4         24 months   ki1000107-Serrinha-VitA     BRAZIL                         Control           1        3     18
4         24 months   ki1000107-Serrinha-VitA     BRAZIL                         VitA              0        5     18
4         24 months   ki1000107-Serrinha-VitA     BRAZIL                         VitA              1        4     18
5         6 months    ki1000107-Serrinha-VitA     BRAZIL                         Control           0        5     19
5         6 months    ki1000107-Serrinha-VitA     BRAZIL                         Control           1        3     19
5         6 months    ki1000107-Serrinha-VitA     BRAZIL                         VitA              0        8     19
5         6 months    ki1000107-Serrinha-VitA     BRAZIL                         VitA              1        3     19
1         24 months   ki1000107-Serrinha-VitA     BRAZIL                         Control           0        4      8
1         24 months   ki1000107-Serrinha-VitA     BRAZIL                         Control           1        2      8
1         24 months   ki1000107-Serrinha-VitA     BRAZIL                         VitA              0        2      8
1         24 months   ki1000107-Serrinha-VitA     BRAZIL                         VitA              1        0      8
11        24 months   ki1000107-Serrinha-VitA     BRAZIL                         Control           0        5     27
11        24 months   ki1000107-Serrinha-VitA     BRAZIL                         Control           1        8     27
11        24 months   ki1000107-Serrinha-VitA     BRAZIL                         VitA              0        9     27
11        24 months   ki1000107-Serrinha-VitA     BRAZIL                         VitA              1        5     27
9         6 months    ki1000107-Serrinha-VitA     BRAZIL                         VitA              0        1      1
3         24 months   ki1000107-Serrinha-VitA     BRAZIL                         Control           0        1      9
3         24 months   ki1000107-Serrinha-VitA     BRAZIL                         Control           1        1      9
3         24 months   ki1000107-Serrinha-VitA     BRAZIL                         VitA              0        2      9
3         24 months   ki1000107-Serrinha-VitA     BRAZIL                         VitA              1        5      9
7         24 months   ki1000107-Serrinha-VitA     BRAZIL                         Control           0        1      1
10        24 months   ki1000107-Serrinha-VitA     BRAZIL                         Control           1        1      1
1         24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control           0       20    142
1         24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control           1        6    142
1         24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS               0       27    142
1         24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS               1       11    142
1         24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other             0       48    142
1         24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other             1       30    142
12        24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control           0       17     96
12        24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control           1        5     96
12        24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS               0       20     96
12        24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS               1        9     96
12        24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other             0       32     96
12        24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other             1       13     96
11        24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control           0        9     58
11        24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control           1        5     58
11        24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS               0        7     58
11        24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS               1        8     58
11        24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other             0       21     58
11        24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other             1        8     58
2         24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control           0       14    112
2         24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control           1       14    112
2         24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS               0       18    112
2         24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS               1        5    112
2         24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other             0       39    112
2         24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other             1       22    112
3         24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control           0       13     75
3         24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control           1       10     75
3         24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS               0       10     75
3         24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS               1        3     75
3         24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other             0       28     75
3         24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other             1       11     75
4         6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Control           0        7     24
4         6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Control           1        0     24
4         6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     LNS               0        7     24
4         6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     LNS               1        1     24
4         6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Other             0        8     24
4         6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Other             1        1     24
5         6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Control           0        4     26
5         6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Control           1        2     26
5         6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     LNS               0        2     26
5         6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     LNS               1        2     26
5         6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Other             0       14     26
5         6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Other             1        2     26
6         6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Control           0       12     77
6         6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Control           1        0     77
6         6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     LNS               0       27     77
6         6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     LNS               1        3     77
6         6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Other             0       35     77
6         6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Other             1        0     77
7         6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Control           0       24    127
7         6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Control           1        4    127
7         6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     LNS               0       23    127
7         6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     LNS               1        7    127
7         6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Other             0       65    127
7         6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Other             1        4    127
4         24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control           0       10     69
4         24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control           1        6     69
4         24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS               0        7     69
4         24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS               1        8     69
4         24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other             0       22     69
4         24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other             1       16     69
8         6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Control           0       22    100
8         6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Control           1        3    100
8         6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     LNS               0       21    100
8         6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     LNS               1        3    100
8         6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Other             0       41    100
8         6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Other             1       10    100
5         24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control           0       14     95
5         24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control           1       10     95
5         24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS               0       17     95
5         24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS               1        9     95
5         24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other             0       24     95
5         24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other             1       21     95
9         6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Control           0       23    105
9         6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Control           1        6    105
9         6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     LNS               0       24    105
9         6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     LNS               1        5    105
9         6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Other             0       37    105
9         6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Other             1       10    105
8         24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control           0       11    117
8         24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control           1       17    117
8         24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS               0       24    117
8         24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS               1       14    117
8         24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other             0       26    117
8         24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other             1       25    117
9         24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control           0        9     96
9         24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control           1       10     96
9         24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS               0       17     96
9         24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS               1        8     96
9         24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other             0       30     96
9         24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other             1       22     96
7         24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control           0        8    107
7         24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control           1       17    107
7         24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS               0       12    107
7         24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS               1       16    107
7         24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other             0       27    107
7         24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other             1       27    107
10        6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Control           0        8     90
10        6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Control           1        5     90
10        6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     LNS               0       29     90
10        6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     LNS               1        4     90
10        6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Other             0       37     90
10        6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Other             1        7     90
6         24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control           0       12     93
6         24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control           1        5     93
6         24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS               0       19     93
6         24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS               1        9     93
6         24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other             0       25     93
6         24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other             1       23     93
11        6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Control           0       18     75
11        6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Control           1        6     75
11        6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     LNS               0       12     75
11        6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     LNS               1        3     75
11        6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Other             0       32     75
11        6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Other             1        4     75
10        24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control           0       19    127
10        24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control           1       10    127
10        24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS               0       13    127
10        24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS               1       16    127
10        24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other             0       35    127
10        24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other             1       34    127
12        6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Control           0        7     38
12        6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Control           1        3     38
12        6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     LNS               0        7     38
12        6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     LNS               1        1     38
12        6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Other             0       18     38
12        6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Other             1        2     38
3         6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Control           0        2      6
3         6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     LNS               0        3      6
3         6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Other             0        1      6
1         6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Control           0        2      8
1         6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Control           1        0      8
1         6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     LNS               0        2      8
1         6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     LNS               1        0      8
1         6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Other             0        3      8
1         6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Other             1        1      8
2         6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Control           0        3      6
2         6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Control           1        0      6
2         6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     LNS               0        2      6
2         6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     LNS               1        0      6
2         6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Other             0        0      6
2         6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Other             1        1      6
8         24 months   ki1000111-WASH-Kenya        KENYA                          Control           0       20    112
8         24 months   ki1000111-WASH-Kenya        KENYA                          Control           1       19    112
8         24 months   ki1000111-WASH-Kenya        KENYA                          LNS               0       11    112
8         24 months   ki1000111-WASH-Kenya        KENYA                          LNS               1       15    112
8         24 months   ki1000111-WASH-Kenya        KENYA                          Other             0       29    112
8         24 months   ki1000111-WASH-Kenya        KENYA                          Other             1       18    112
9         24 months   ki1000111-WASH-Kenya        KENYA                          Control           0       38    188
9         24 months   ki1000111-WASH-Kenya        KENYA                          Control           1       17    188
9         24 months   ki1000111-WASH-Kenya        KENYA                          LNS               0       24    188
9         24 months   ki1000111-WASH-Kenya        KENYA                          LNS               1       18    188
9         24 months   ki1000111-WASH-Kenya        KENYA                          Other             0       61    188
9         24 months   ki1000111-WASH-Kenya        KENYA                          Other             1       30    188
2         6 months    ki1000111-WASH-Kenya        KENYA                          Control           0        1      5
2         6 months    ki1000111-WASH-Kenya        KENYA                          Control           1        0      5
2         6 months    ki1000111-WASH-Kenya        KENYA                          LNS               0        2      5
2         6 months    ki1000111-WASH-Kenya        KENYA                          LNS               1        1      5
2         6 months    ki1000111-WASH-Kenya        KENYA                          Other             0        1      5
2         6 months    ki1000111-WASH-Kenya        KENYA                          Other             1        0      5
10        24 months   ki1000111-WASH-Kenya        KENYA                          Control           0       44    217
10        24 months   ki1000111-WASH-Kenya        KENYA                          Control           1       21    217
10        24 months   ki1000111-WASH-Kenya        KENYA                          LNS               0       36    217
10        24 months   ki1000111-WASH-Kenya        KENYA                          LNS               1        9    217
10        24 months   ki1000111-WASH-Kenya        KENYA                          Other             0       75    217
10        24 months   ki1000111-WASH-Kenya        KENYA                          Other             1       32    217
3         24 months   ki1000111-WASH-Kenya        KENYA                          Control           0       62    257
3         24 months   ki1000111-WASH-Kenya        KENYA                          Control           1       30    257
3         24 months   ki1000111-WASH-Kenya        KENYA                          LNS               0       43    257
3         24 months   ki1000111-WASH-Kenya        KENYA                          LNS               1       12    257
3         24 months   ki1000111-WASH-Kenya        KENYA                          Other             0       76    257
3         24 months   ki1000111-WASH-Kenya        KENYA                          Other             1       34    257
2         24 months   ki1000111-WASH-Kenya        KENYA                          Control           0       49    211
2         24 months   ki1000111-WASH-Kenya        KENYA                          Control           1       18    211
2         24 months   ki1000111-WASH-Kenya        KENYA                          LNS               0       38    211
2         24 months   ki1000111-WASH-Kenya        KENYA                          LNS               1       10    211
2         24 months   ki1000111-WASH-Kenya        KENYA                          Other             0       65    211
2         24 months   ki1000111-WASH-Kenya        KENYA                          Other             1       31    211
4         24 months   ki1000111-WASH-Kenya        KENYA                          Control           0       72    244
4         24 months   ki1000111-WASH-Kenya        KENYA                          Control           1       25    244
4         24 months   ki1000111-WASH-Kenya        KENYA                          LNS               0       38    244
4         24 months   ki1000111-WASH-Kenya        KENYA                          LNS               1       13    244
4         24 months   ki1000111-WASH-Kenya        KENYA                          Other             0       66    244
4         24 months   ki1000111-WASH-Kenya        KENYA                          Other             1       30    244
6         6 months    ki1000111-WASH-Kenya        KENYA                          Control           0        4      8
6         6 months    ki1000111-WASH-Kenya        KENYA                          Control           1        0      8
6         6 months    ki1000111-WASH-Kenya        KENYA                          LNS               0        2      8
6         6 months    ki1000111-WASH-Kenya        KENYA                          LNS               1        1      8
6         6 months    ki1000111-WASH-Kenya        KENYA                          Other             0        0      8
6         6 months    ki1000111-WASH-Kenya        KENYA                          Other             1        1      8
1         24 months   ki1000111-WASH-Kenya        KENYA                          Control           0       25    139
1         24 months   ki1000111-WASH-Kenya        KENYA                          Control           1       13    139
1         24 months   ki1000111-WASH-Kenya        KENYA                          LNS               0       22    139
1         24 months   ki1000111-WASH-Kenya        KENYA                          LNS               1       12    139
1         24 months   ki1000111-WASH-Kenya        KENYA                          Other             0       49    139
1         24 months   ki1000111-WASH-Kenya        KENYA                          Other             1       18    139
11        24 months   ki1000111-WASH-Kenya        KENYA                          Control           0       44    181
11        24 months   ki1000111-WASH-Kenya        KENYA                          Control           1       17    181
11        24 months   ki1000111-WASH-Kenya        KENYA                          LNS               0       31    181
11        24 months   ki1000111-WASH-Kenya        KENYA                          LNS               1       11    181
11        24 months   ki1000111-WASH-Kenya        KENYA                          Other             0       61    181
11        24 months   ki1000111-WASH-Kenya        KENYA                          Other             1       17    181
12        24 months   ki1000111-WASH-Kenya        KENYA                          Control           0       47    150
12        24 months   ki1000111-WASH-Kenya        KENYA                          Control           1       21    150
12        24 months   ki1000111-WASH-Kenya        KENYA                          LNS               0       16    150
12        24 months   ki1000111-WASH-Kenya        KENYA                          LNS               1        7    150
12        24 months   ki1000111-WASH-Kenya        KENYA                          Other             0       31    150
12        24 months   ki1000111-WASH-Kenya        KENYA                          Other             1       28    150
3         6 months    ki1000111-WASH-Kenya        KENYA                          Other             0        2      2
4         6 months    ki1000111-WASH-Kenya        KENYA                          Control           0        0      3
4         6 months    ki1000111-WASH-Kenya        KENYA                          Control           1        1      3
4         6 months    ki1000111-WASH-Kenya        KENYA                          Other             0        2      3
4         6 months    ki1000111-WASH-Kenya        KENYA                          Other             1        0      3
5         6 months    ki1000111-WASH-Kenya        KENYA                          Control           0        5      7
5         6 months    ki1000111-WASH-Kenya        KENYA                          Other             0        2      7
7         6 months    ki1000111-WASH-Kenya        KENYA                          LNS               0        3      3
8         6 months    ki1000111-WASH-Kenya        KENYA                          Control           0        3     12
8         6 months    ki1000111-WASH-Kenya        KENYA                          Control           1        0     12
8         6 months    ki1000111-WASH-Kenya        KENYA                          LNS               0        3     12
8         6 months    ki1000111-WASH-Kenya        KENYA                          LNS               1        0     12
8         6 months    ki1000111-WASH-Kenya        KENYA                          Other             0        3     12
8         6 months    ki1000111-WASH-Kenya        KENYA                          Other             1        3     12
5         24 months   ki1000111-WASH-Kenya        KENYA                          Control           0       56    237
5         24 months   ki1000111-WASH-Kenya        KENYA                          Control           1       24    237
5         24 months   ki1000111-WASH-Kenya        KENYA                          LNS               0       39    237
5         24 months   ki1000111-WASH-Kenya        KENYA                          LNS               1       15    237
5         24 months   ki1000111-WASH-Kenya        KENYA                          Other             0       75    237
5         24 months   ki1000111-WASH-Kenya        KENYA                          Other             1       28    237
10        6 months    ki1000111-WASH-Kenya        KENYA                          Control           0        3     13
10        6 months    ki1000111-WASH-Kenya        KENYA                          Control           1        1     13
10        6 months    ki1000111-WASH-Kenya        KENYA                          LNS               0        1     13
10        6 months    ki1000111-WASH-Kenya        KENYA                          LNS               1        1     13
10        6 months    ki1000111-WASH-Kenya        KENYA                          Other             0        7     13
10        6 months    ki1000111-WASH-Kenya        KENYA                          Other             1        0     13
9         6 months    ki1000111-WASH-Kenya        KENYA                          Control           0        2      6
9         6 months    ki1000111-WASH-Kenya        KENYA                          LNS               0        1      6
9         6 months    ki1000111-WASH-Kenya        KENYA                          Other             0        3      6
7         24 months   ki1000111-WASH-Kenya        KENYA                          Control           0       20    105
7         24 months   ki1000111-WASH-Kenya        KENYA                          Control           1       10    105
7         24 months   ki1000111-WASH-Kenya        KENYA                          LNS               0       14    105
7         24 months   ki1000111-WASH-Kenya        KENYA                          LNS               1        7    105
7         24 months   ki1000111-WASH-Kenya        KENYA                          Other             0       36    105
7         24 months   ki1000111-WASH-Kenya        KENYA                          Other             1       18    105
6         24 months   ki1000111-WASH-Kenya        KENYA                          Control           0       50    223
6         24 months   ki1000111-WASH-Kenya        KENYA                          Control           1       18    223
6         24 months   ki1000111-WASH-Kenya        KENYA                          LNS               0       42    223
6         24 months   ki1000111-WASH-Kenya        KENYA                          LNS               1       17    223
6         24 months   ki1000111-WASH-Kenya        KENYA                          Other             0       60    223
6         24 months   ki1000111-WASH-Kenya        KENYA                          Other             1       36    223
12        6 months    ki1000111-WASH-Kenya        KENYA                          Other             0        5      5
11        6 months    ki1000111-WASH-Kenya        KENYA                          Control           0        4      8
11        6 months    ki1000111-WASH-Kenya        KENYA                          Control           1        0      8
11        6 months    ki1000111-WASH-Kenya        KENYA                          Other             0        2      8
11        6 months    ki1000111-WASH-Kenya        KENYA                          Other             1        2      8
1         6 months    ki1000111-WASH-Kenya        KENYA                          Control           0        1      2
1         6 months    ki1000111-WASH-Kenya        KENYA                          Other             0        1      2
12        6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Control           0       50    148
12        6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Control           1       40    148
12        6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Maternal          0       42    148
12        6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Maternal          1       16    148
1         6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Control           0       74    175
1         6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Control           1       27    175
1         6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Maternal          0       54    175
1         6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Maternal          1       20    175
2         6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Control           0        8     24
2         6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Control           1        0     24
2         6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Maternal          0       12     24
2         6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Maternal          1        4     24
12        24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Control           1        1      1
3         6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Control           0        1     18
3         6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Control           1        1     18
3         6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Maternal          0       13     18
3         6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Maternal          1        3     18
11        6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Control           0       58    154
11        6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Control           1       20    154
11        6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Maternal          0       59    154
11        6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Maternal          1       17    154
5         6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Control           0        7     17
5         6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Control           1        2     17
5         6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Maternal          0        7     17
5         6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Maternal          1        1     17
4         6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Control           0        4     10
4         6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Control           1        4     10
4         6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Maternal          0        2     10
4         6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Maternal          1        0     10
9         24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Maternal          0        1      2
9         24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Maternal          1        1      2
6         6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Control           0        4     13
6         6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Control           1        1     13
6         6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Maternal          0        5     13
6         6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Maternal          1        3     13
7         6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Control           0        5     13
7         6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Control           1        1     13
7         6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Maternal          0        4     13
7         6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Maternal          1        3     13
11        Birth       ki1000125-AgaKhanUniv       PAKISTAN                       Control           0        2      2
10        6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Control           0       38    111
10        6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Control           1       26    111
10        6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Maternal          0       35    111
10        6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Maternal          1       12    111
9         6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Control           0        3     12
9         6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Control           1        1     12
9         6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Maternal          0        8     12
9         6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Maternal          1        0     12
1         Birth       ki1000125-AgaKhanUniv       PAKISTAN                       Control           0        5      8
1         Birth       ki1000125-AgaKhanUniv       PAKISTAN                       Maternal          0        3      8
12        Birth       ki1000125-AgaKhanUniv       PAKISTAN                       Maternal          0        1      1
10        24 months   ki1000304-EU                INDIA                          Control           0        5     24
10        24 months   ki1000304-EU                INDIA                          Control           1        7     24
10        24 months   ki1000304-EU                INDIA                          Zinc              0        6     24
10        24 months   ki1000304-EU                INDIA                          Zinc              1        6     24
3         6 months    ki1000304-EU                INDIA                          Control           0        7     19
3         6 months    ki1000304-EU                INDIA                          Control           1        4     19
3         6 months    ki1000304-EU                INDIA                          Zinc              0        6     19
3         6 months    ki1000304-EU                INDIA                          Zinc              1        2     19
9         24 months   ki1000304-EU                INDIA                          Control           0        5     21
9         24 months   ki1000304-EU                INDIA                          Control           1        7     21
9         24 months   ki1000304-EU                INDIA                          Zinc              0        3     21
9         24 months   ki1000304-EU                INDIA                          Zinc              1        6     21
1         24 months   ki1000304-EU                INDIA                          Control           0        3     19
1         24 months   ki1000304-EU                INDIA                          Control           1        7     19
1         24 months   ki1000304-EU                INDIA                          Zinc              0        4     19
1         24 months   ki1000304-EU                INDIA                          Zinc              1        5     19
11        24 months   ki1000304-EU                INDIA                          Control           0        1     23
11        24 months   ki1000304-EU                INDIA                          Control           1        7     23
11        24 months   ki1000304-EU                INDIA                          Zinc              0        4     23
11        24 months   ki1000304-EU                INDIA                          Zinc              1       11     23
7         24 months   ki1000304-EU                INDIA                          Control           0        5     27
7         24 months   ki1000304-EU                INDIA                          Control           1        8     27
7         24 months   ki1000304-EU                INDIA                          Zinc              0        7     27
7         24 months   ki1000304-EU                INDIA                          Zinc              1        7     27
4         6 months    ki1000304-EU                INDIA                          Control           0        9     30
4         6 months    ki1000304-EU                INDIA                          Control           1        5     30
4         6 months    ki1000304-EU                INDIA                          Zinc              0       15     30
4         6 months    ki1000304-EU                INDIA                          Zinc              1        1     30
2         24 months   ki1000304-EU                INDIA                          Control           0        7     21
2         24 months   ki1000304-EU                INDIA                          Control           1        7     21
2         24 months   ki1000304-EU                INDIA                          Zinc              0        2     21
2         24 months   ki1000304-EU                INDIA                          Zinc              1        5     21
5         6 months    ki1000304-EU                INDIA                          Control           0       14     39
5         6 months    ki1000304-EU                INDIA                          Control           1        6     39
5         6 months    ki1000304-EU                INDIA                          Zinc              0       13     39
5         6 months    ki1000304-EU                INDIA                          Zinc              1        6     39
9         6 months    ki1000304-EU                INDIA                          Control           0       12     30
9         6 months    ki1000304-EU                INDIA                          Control           1        7     30
9         6 months    ki1000304-EU                INDIA                          Zinc              0        5     30
9         6 months    ki1000304-EU                INDIA                          Zinc              1        6     30
3         24 months   ki1000304-EU                INDIA                          Control           0        1     17
3         24 months   ki1000304-EU                INDIA                          Control           1        4     17
3         24 months   ki1000304-EU                INDIA                          Zinc              0        6     17
3         24 months   ki1000304-EU                INDIA                          Zinc              1        6     17
4         24 months   ki1000304-EU                INDIA                          Control           0        4     16
4         24 months   ki1000304-EU                INDIA                          Control           1        3     16
4         24 months   ki1000304-EU                INDIA                          Zinc              0        4     16
4         24 months   ki1000304-EU                INDIA                          Zinc              1        5     16
12        24 months   ki1000304-EU                INDIA                          Control           0        4     25
12        24 months   ki1000304-EU                INDIA                          Control           1        5     25
12        24 months   ki1000304-EU                INDIA                          Zinc              0       10     25
12        24 months   ki1000304-EU                INDIA                          Zinc              1        6     25
6         6 months    ki1000304-EU                INDIA                          Control           0       10     27
6         6 months    ki1000304-EU                INDIA                          Control           1        6     27
6         6 months    ki1000304-EU                INDIA                          Zinc              0        7     27
6         6 months    ki1000304-EU                INDIA                          Zinc              1        4     27
8         6 months    ki1000304-EU                INDIA                          Control           0       10     40
8         6 months    ki1000304-EU                INDIA                          Control           1        4     40
8         6 months    ki1000304-EU                INDIA                          Zinc              0       20     40
8         6 months    ki1000304-EU                INDIA                          Zinc              1        6     40
7         6 months    ki1000304-EU                INDIA                          Control           0       13     39
7         6 months    ki1000304-EU                INDIA                          Control           1        7     39
7         6 months    ki1000304-EU                INDIA                          Zinc              0       15     39
7         6 months    ki1000304-EU                INDIA                          Zinc              1        4     39
6         24 months   ki1000304-EU                INDIA                          Control           0        3     19
6         24 months   ki1000304-EU                INDIA                          Control           1       10     19
6         24 months   ki1000304-EU                INDIA                          Zinc              0        2     19
6         24 months   ki1000304-EU                INDIA                          Zinc              1        4     19
5         24 months   ki1000304-EU                INDIA                          Control           0        4     16
5         24 months   ki1000304-EU                INDIA                          Control           1        4     16
5         24 months   ki1000304-EU                INDIA                          Zinc              0        2     16
5         24 months   ki1000304-EU                INDIA                          Zinc              1        6     16
10        6 months    ki1000304-EU                INDIA                          Control           0       16     33
10        6 months    ki1000304-EU                INDIA                          Control           1        5     33
10        6 months    ki1000304-EU                INDIA                          Zinc              0        7     33
10        6 months    ki1000304-EU                INDIA                          Zinc              1        5     33
8         24 months   ki1000304-EU                INDIA                          Control           0        4     25
8         24 months   ki1000304-EU                INDIA                          Control           1       10     25
8         24 months   ki1000304-EU                INDIA                          Zinc              0        5     25
8         24 months   ki1000304-EU                INDIA                          Zinc              1        6     25
11        6 months    ki1000304-EU                INDIA                          Control           0        3     16
11        6 months    ki1000304-EU                INDIA                          Control           1        3     16
11        6 months    ki1000304-EU                INDIA                          Zinc              0        7     16
11        6 months    ki1000304-EU                INDIA                          Zinc              1        3     16
12        6 months    ki1000304-EU                INDIA                          Control           0       13     27
12        6 months    ki1000304-EU                INDIA                          Control           1        7     27
12        6 months    ki1000304-EU                INDIA                          Zinc              0        4     27
12        6 months    ki1000304-EU                INDIA                          Zinc              1        3     27
1         6 months    ki1000304-EU                INDIA                          Control           0       14     31
1         6 months    ki1000304-EU                INDIA                          Control           1       10     31
1         6 months    ki1000304-EU                INDIA                          Zinc              0        6     31
1         6 months    ki1000304-EU                INDIA                          Zinc              1        1     31
2         6 months    ki1000304-EU                INDIA                          Control           0        8     32
2         6 months    ki1000304-EU                INDIA                          Control           1        5     32
2         6 months    ki1000304-EU                INDIA                          Zinc              0       12     32
2         6 months    ki1000304-EU                INDIA                          Zinc              1        7     32
12        6 months    ki1000304-VITAMIN-A         INDIA                          Control           0       81    229
12        6 months    ki1000304-VITAMIN-A         INDIA                          Control           1       37    229
12        6 months    ki1000304-VITAMIN-A         INDIA                          VitA              0       73    229
12        6 months    ki1000304-VITAMIN-A         INDIA                          VitA              1       38    229
1         6 months    ki1000304-VITAMIN-A         INDIA                          Control           0       70    227
1         6 months    ki1000304-VITAMIN-A         INDIA                          Control           1       37    227
1         6 months    ki1000304-VITAMIN-A         INDIA                          VitA              0       88    227
1         6 months    ki1000304-VITAMIN-A         INDIA                          VitA              1       32    227
5         6 months    ki1000304-VITAMIN-A         INDIA                          Control           0       73    234
5         6 months    ki1000304-VITAMIN-A         INDIA                          Control           1       45    234
5         6 months    ki1000304-VITAMIN-A         INDIA                          VitA              0       75    234
5         6 months    ki1000304-VITAMIN-A         INDIA                          VitA              1       41    234
6         6 months    ki1000304-VITAMIN-A         INDIA                          Control           0       79    229
6         6 months    ki1000304-VITAMIN-A         INDIA                          Control           1       37    229
6         6 months    ki1000304-VITAMIN-A         INDIA                          VitA              0       70    229
6         6 months    ki1000304-VITAMIN-A         INDIA                          VitA              1       43    229
4         6 months    ki1000304-VITAMIN-A         INDIA                          Control           0       77    233
4         6 months    ki1000304-VITAMIN-A         INDIA                          Control           1       37    233
4         6 months    ki1000304-VITAMIN-A         INDIA                          VitA              0       82    233
4         6 months    ki1000304-VITAMIN-A         INDIA                          VitA              1       37    233
3         6 months    ki1000304-VITAMIN-A         INDIA                          Control           0       71    235
3         6 months    ki1000304-VITAMIN-A         INDIA                          Control           1       42    235
3         6 months    ki1000304-VITAMIN-A         INDIA                          VitA              0       87    235
3         6 months    ki1000304-VITAMIN-A         INDIA                          VitA              1       35    235
7         6 months    ki1000304-VITAMIN-A         INDIA                          Control           0      100    297
7         6 months    ki1000304-VITAMIN-A         INDIA                          Control           1       56    297
7         6 months    ki1000304-VITAMIN-A         INDIA                          VitA              0       98    297
7         6 months    ki1000304-VITAMIN-A         INDIA                          VitA              1       43    297
8         6 months    ki1000304-VITAMIN-A         INDIA                          Control           0       73    237
8         6 months    ki1000304-VITAMIN-A         INDIA                          Control           1       51    237
8         6 months    ki1000304-VITAMIN-A         INDIA                          VitA              0       69    237
8         6 months    ki1000304-VITAMIN-A         INDIA                          VitA              1       44    237
9         6 months    ki1000304-VITAMIN-A         INDIA                          Control           0       54    171
9         6 months    ki1000304-VITAMIN-A         INDIA                          Control           1       33    171
9         6 months    ki1000304-VITAMIN-A         INDIA                          VitA              0       58    171
9         6 months    ki1000304-VITAMIN-A         INDIA                          VitA              1       26    171
10        6 months    ki1000304-VITAMIN-A         INDIA                          Control           0       48    143
10        6 months    ki1000304-VITAMIN-A         INDIA                          Control           1       24    143
10        6 months    ki1000304-VITAMIN-A         INDIA                          VitA              0       48    143
10        6 months    ki1000304-VITAMIN-A         INDIA                          VitA              1       23    143
11        6 months    ki1000304-VITAMIN-A         INDIA                          Control           0       33    102
11        6 months    ki1000304-VITAMIN-A         INDIA                          Control           1       20    102
11        6 months    ki1000304-VITAMIN-A         INDIA                          VitA              0       30    102
11        6 months    ki1000304-VITAMIN-A         INDIA                          VitA              1       19    102
2         6 months    ki1000304-VITAMIN-A         INDIA                          Control           0       54    171
2         6 months    ki1000304-VITAMIN-A         INDIA                          Control           1       33    171
2         6 months    ki1000304-VITAMIN-A         INDIA                          VitA              0       53    171
2         6 months    ki1000304-VITAMIN-A         INDIA                          VitA              1       31    171
12        6 months    ki1000304-Vitamin-B12       INDIA                          Control           0        1      7
12        6 months    ki1000304-Vitamin-B12       INDIA                          Control           1        0      7
12        6 months    ki1000304-Vitamin-B12       INDIA                          Other             0        4      7
12        6 months    ki1000304-Vitamin-B12       INDIA                          Other             1        2      7
9         24 months   ki1000304-Vitamin-B12       INDIA                          Control           0        1      6
9         24 months   ki1000304-Vitamin-B12       INDIA                          Control           1        0      6
9         24 months   ki1000304-Vitamin-B12       INDIA                          Other             0        2      6
9         24 months   ki1000304-Vitamin-B12       INDIA                          Other             1        3      6
11        6 months    ki1000304-Vitamin-B12       INDIA                          Control           0        2      5
11        6 months    ki1000304-Vitamin-B12       INDIA                          Control           1        0      5
11        6 months    ki1000304-Vitamin-B12       INDIA                          Other             0        1      5
11        6 months    ki1000304-Vitamin-B12       INDIA                          Other             1        2      5
12        24 months   ki1000304-Vitamin-B12       INDIA                          Control           0        4     16
12        24 months   ki1000304-Vitamin-B12       INDIA                          Control           1        4     16
12        24 months   ki1000304-Vitamin-B12       INDIA                          Other             0        4     16
12        24 months   ki1000304-Vitamin-B12       INDIA                          Other             1        4     16
1         24 months   ki1000304-Vitamin-B12       INDIA                          Control           0        1     14
1         24 months   ki1000304-Vitamin-B12       INDIA                          Control           1        1     14
1         24 months   ki1000304-Vitamin-B12       INDIA                          Other             0        3     14
1         24 months   ki1000304-Vitamin-B12       INDIA                          Other             1        9     14
6         6 months    ki1000304-Vitamin-B12       INDIA                          Control           0        0     10
6         6 months    ki1000304-Vitamin-B12       INDIA                          Control           1        1     10
6         6 months    ki1000304-Vitamin-B12       INDIA                          Other             0        6     10
6         6 months    ki1000304-Vitamin-B12       INDIA                          Other             1        3     10
5         24 months   ki1000304-Vitamin-B12       INDIA                          Control           0        2     15
5         24 months   ki1000304-Vitamin-B12       INDIA                          Control           1        0     15
5         24 months   ki1000304-Vitamin-B12       INDIA                          Other             0        9     15
5         24 months   ki1000304-Vitamin-B12       INDIA                          Other             1        4     15
7         24 months   ki1000304-Vitamin-B12       INDIA                          Control           0        4     17
7         24 months   ki1000304-Vitamin-B12       INDIA                          Control           1        2     17
7         24 months   ki1000304-Vitamin-B12       INDIA                          Other             0        6     17
7         24 months   ki1000304-Vitamin-B12       INDIA                          Other             1        5     17
6         24 months   ki1000304-Vitamin-B12       INDIA                          Control           0        1      9
6         24 months   ki1000304-Vitamin-B12       INDIA                          Control           1        0      9
6         24 months   ki1000304-Vitamin-B12       INDIA                          Other             0        2      9
6         24 months   ki1000304-Vitamin-B12       INDIA                          Other             1        6      9
8         24 months   ki1000304-Vitamin-B12       INDIA                          Control           0        2      9
8         24 months   ki1000304-Vitamin-B12       INDIA                          Control           1        2      9
8         24 months   ki1000304-Vitamin-B12       INDIA                          Other             0        4      9
8         24 months   ki1000304-Vitamin-B12       INDIA                          Other             1        1      9
1         6 months    ki1000304-Vitamin-B12       INDIA                          Control           0        0      9
1         6 months    ki1000304-Vitamin-B12       INDIA                          Control           1        3      9
1         6 months    ki1000304-Vitamin-B12       INDIA                          Other             0        4      9
1         6 months    ki1000304-Vitamin-B12       INDIA                          Other             1        2      9
2         24 months   ki1000304-Vitamin-B12       INDIA                          Other             0        7      7
3         24 months   ki1000304-Vitamin-B12       INDIA                          Control           0        4      6
3         24 months   ki1000304-Vitamin-B12       INDIA                          Control           1        0      6
3         24 months   ki1000304-Vitamin-B12       INDIA                          Other             0        1      6
3         24 months   ki1000304-Vitamin-B12       INDIA                          Other             1        1      6
2         6 months    ki1000304-Vitamin-B12       INDIA                          Other             0        1      2
2         6 months    ki1000304-Vitamin-B12       INDIA                          Other             1        1      2
4         24 months   ki1000304-Vitamin-B12       INDIA                          Control           0        2      9
4         24 months   ki1000304-Vitamin-B12       INDIA                          Control           1        0      9
4         24 months   ki1000304-Vitamin-B12       INDIA                          Other             0        4      9
4         24 months   ki1000304-Vitamin-B12       INDIA                          Other             1        3      9
10        24 months   ki1000304-Vitamin-B12       INDIA                          Control           0        3      8
10        24 months   ki1000304-Vitamin-B12       INDIA                          Control           1        2      8
10        24 months   ki1000304-Vitamin-B12       INDIA                          Other             0        3      8
10        24 months   ki1000304-Vitamin-B12       INDIA                          Other             1        0      8
3         6 months    ki1000304-Vitamin-B12       INDIA                          Control           0        1      4
3         6 months    ki1000304-Vitamin-B12       INDIA                          Control           1        0      4
3         6 months    ki1000304-Vitamin-B12       INDIA                          Other             0        2      4
3         6 months    ki1000304-Vitamin-B12       INDIA                          Other             1        1      4
11        24 months   ki1000304-Vitamin-B12       INDIA                          Control           0        0     17
11        24 months   ki1000304-Vitamin-B12       INDIA                          Control           1        3     17
11        24 months   ki1000304-Vitamin-B12       INDIA                          Other             0        5     17
11        24 months   ki1000304-Vitamin-B12       INDIA                          Other             1        9     17
4         6 months    ki1000304-Vitamin-B12       INDIA                          Other             0        3      3
5         6 months    ki1000304-Vitamin-B12       INDIA                          Control           0        1      6
5         6 months    ki1000304-Vitamin-B12       INDIA                          Control           1        0      6
5         6 months    ki1000304-Vitamin-B12       INDIA                          Other             0        4      6
5         6 months    ki1000304-Vitamin-B12       INDIA                          Other             1        1      6
7         6 months    ki1000304-Vitamin-B12       INDIA                          Control           0        5     22
7         6 months    ki1000304-Vitamin-B12       INDIA                          Control           1        0     22
7         6 months    ki1000304-Vitamin-B12       INDIA                          Other             0       14     22
7         6 months    ki1000304-Vitamin-B12       INDIA                          Other             1        3     22
8         6 months    ki1000304-Vitamin-B12       INDIA                          Control           0        1     13
8         6 months    ki1000304-Vitamin-B12       INDIA                          Control           1        2     13
8         6 months    ki1000304-Vitamin-B12       INDIA                          Other             0        8     13
8         6 months    ki1000304-Vitamin-B12       INDIA                          Other             1        2     13
8         6 months    ki1000304-ZnMort            INDIA                          Control           0        6     13
8         6 months    ki1000304-ZnMort            INDIA                          Control           1        4     13
8         6 months    ki1000304-ZnMort            INDIA                          Zinc              0        3     13
8         6 months    ki1000304-ZnMort            INDIA                          Zinc              1        0     13
9         6 months    ki1000304-ZnMort            INDIA                          Control           0        2     15
9         6 months    ki1000304-ZnMort            INDIA                          Control           1        4     15
9         6 months    ki1000304-ZnMort            INDIA                          Zinc              0        7     15
9         6 months    ki1000304-ZnMort            INDIA                          Zinc              1        2     15
5         24 months   ki1000304-ZnMort            INDIA                          Control           0        6     28
5         24 months   ki1000304-ZnMort            INDIA                          Control           1        9     28
5         24 months   ki1000304-ZnMort            INDIA                          Zinc              0        8     28
5         24 months   ki1000304-ZnMort            INDIA                          Zinc              1        5     28
3         24 months   ki1000304-ZnMort            INDIA                          Control           0        2     14
3         24 months   ki1000304-ZnMort            INDIA                          Control           1        3     14
3         24 months   ki1000304-ZnMort            INDIA                          Zinc              0        6     14
3         24 months   ki1000304-ZnMort            INDIA                          Zinc              1        3     14
4         24 months   ki1000304-ZnMort            INDIA                          Control           0        5     29
4         24 months   ki1000304-ZnMort            INDIA                          Control           1       12     29
4         24 months   ki1000304-ZnMort            INDIA                          Zinc              0        4     29
4         24 months   ki1000304-ZnMort            INDIA                          Zinc              1        8     29
10        6 months    ki1000304-ZnMort            INDIA                          Control           0        1     11
10        6 months    ki1000304-ZnMort            INDIA                          Control           1        4     11
10        6 months    ki1000304-ZnMort            INDIA                          Zinc              0        3     11
10        6 months    ki1000304-ZnMort            INDIA                          Zinc              1        3     11
6         24 months   ki1000304-ZnMort            INDIA                          Control           0        2     22
6         24 months   ki1000304-ZnMort            INDIA                          Control           1       10     22
6         24 months   ki1000304-ZnMort            INDIA                          Zinc              0        1     22
6         24 months   ki1000304-ZnMort            INDIA                          Zinc              1        9     22
11        6 months    ki1000304-ZnMort            INDIA                          Control           0        4     16
11        6 months    ki1000304-ZnMort            INDIA                          Control           1        2     16
11        6 months    ki1000304-ZnMort            INDIA                          Zinc              0        9     16
11        6 months    ki1000304-ZnMort            INDIA                          Zinc              1        1     16
12        6 months    ki1000304-ZnMort            INDIA                          Control           0        7     19
12        6 months    ki1000304-ZnMort            INDIA                          Control           1        5     19
12        6 months    ki1000304-ZnMort            INDIA                          Zinc              0        4     19
12        6 months    ki1000304-ZnMort            INDIA                          Zinc              1        3     19
7         24 months   ki1000304-ZnMort            INDIA                          Control           0        3      8
7         24 months   ki1000304-ZnMort            INDIA                          Control           1        2      8
7         24 months   ki1000304-ZnMort            INDIA                          Zinc              0        2      8
7         24 months   ki1000304-ZnMort            INDIA                          Zinc              1        1      8
8         24 months   ki1000304-ZnMort            INDIA                          Control           0        1      8
8         24 months   ki1000304-ZnMort            INDIA                          Control           1        3      8
8         24 months   ki1000304-ZnMort            INDIA                          Zinc              0        2      8
8         24 months   ki1000304-ZnMort            INDIA                          Zinc              1        2      8
1         6 months    ki1000304-ZnMort            INDIA                          Control           0        4     11
1         6 months    ki1000304-ZnMort            INDIA                          Control           1        5     11
1         6 months    ki1000304-ZnMort            INDIA                          Zinc              0        1     11
1         6 months    ki1000304-ZnMort            INDIA                          Zinc              1        1     11
10        24 months   ki1000304-ZnMort            INDIA                          Control           0        2      6
10        24 months   ki1000304-ZnMort            INDIA                          Control           1        4      6
9         24 months   ki1000304-ZnMort            INDIA                          Control           0        2      5
9         24 months   ki1000304-ZnMort            INDIA                          Control           1        1      5
9         24 months   ki1000304-ZnMort            INDIA                          Zinc              0        1      5
9         24 months   ki1000304-ZnMort            INDIA                          Zinc              1        1      5
2         6 months    ki1000304-ZnMort            INDIA                          Control           0        4     10
2         6 months    ki1000304-ZnMort            INDIA                          Control           1        0     10
2         6 months    ki1000304-ZnMort            INDIA                          Zinc              0        1     10
2         6 months    ki1000304-ZnMort            INDIA                          Zinc              1        5     10
3         6 months    ki1000304-ZnMort            INDIA                          Control           0        7     12
3         6 months    ki1000304-ZnMort            INDIA                          Control           1        2     12
3         6 months    ki1000304-ZnMort            INDIA                          Zinc              0        3     12
3         6 months    ki1000304-ZnMort            INDIA                          Zinc              1        0     12
5         6 months    ki1000304-ZnMort            INDIA                          Control           0        3      8
5         6 months    ki1000304-ZnMort            INDIA                          Control           1        1      8
5         6 months    ki1000304-ZnMort            INDIA                          Zinc              0        1      8
5         6 months    ki1000304-ZnMort            INDIA                          Zinc              1        3      8
4         6 months    ki1000304-ZnMort            INDIA                          Control           0        4      7
4         6 months    ki1000304-ZnMort            INDIA                          Control           1        0      7
4         6 months    ki1000304-ZnMort            INDIA                          Zinc              0        1      7
4         6 months    ki1000304-ZnMort            INDIA                          Zinc              1        2      7
6         6 months    ki1000304-ZnMort            INDIA                          Control           0       10     16
6         6 months    ki1000304-ZnMort            INDIA                          Control           1        3     16
6         6 months    ki1000304-ZnMort            INDIA                          Zinc              0        3     16
6         6 months    ki1000304-ZnMort            INDIA                          Zinc              1        0     16
12        24 months   ki1000304-ZnMort            INDIA                          Control           1        4      6
12        24 months   ki1000304-ZnMort            INDIA                          Zinc              1        2      6
1         24 months   ki1000304-ZnMort            INDIA                          Control           0        1      6
1         24 months   ki1000304-ZnMort            INDIA                          Control           1        0      6
1         24 months   ki1000304-ZnMort            INDIA                          Zinc              0        3      6
1         24 months   ki1000304-ZnMort            INDIA                          Zinc              1        2      6
2         24 months   ki1000304-ZnMort            INDIA                          Control           0        2      5
2         24 months   ki1000304-ZnMort            INDIA                          Control           1        0      5
2         24 months   ki1000304-ZnMort            INDIA                          Zinc              0        1      5
2         24 months   ki1000304-ZnMort            INDIA                          Zinc              1        2      5
7         6 months    ki1000304-ZnMort            INDIA                          Control           0        3      7
7         6 months    ki1000304-ZnMort            INDIA                          Control           1        1      7
7         6 months    ki1000304-ZnMort            INDIA                          Zinc              0        2      7
7         6 months    ki1000304-ZnMort            INDIA                          Zinc              1        1      7
11        24 months   ki1000304-ZnMort            INDIA                          Control           0        1      3
11        24 months   ki1000304-ZnMort            INDIA                          Zinc              0        2      3
10        6 months    ki1000304b-SAS-CompFeed     INDIA                          Control           0       42    101
10        6 months    ki1000304b-SAS-CompFeed     INDIA                          Control           1       12    101
10        6 months    ki1000304b-SAS-CompFeed     INDIA                          Other             0       31    101
10        6 months    ki1000304b-SAS-CompFeed     INDIA                          Other             1       16    101
10        Birth       ki1000304b-SAS-CompFeed     INDIA                          Control           0       10     19
10        Birth       ki1000304b-SAS-CompFeed     INDIA                          Control           1        1     19
10        Birth       ki1000304b-SAS-CompFeed     INDIA                          Other             0        6     19
10        Birth       ki1000304b-SAS-CompFeed     INDIA                          Other             1        2     19
11        Birth       ki1000304b-SAS-CompFeed     INDIA                          Control           0        8     18
11        Birth       ki1000304b-SAS-CompFeed     INDIA                          Control           1        1     18
11        Birth       ki1000304b-SAS-CompFeed     INDIA                          Other             0        7     18
11        Birth       ki1000304b-SAS-CompFeed     INDIA                          Other             1        2     18
11        6 months    ki1000304b-SAS-CompFeed     INDIA                          Control           0       18     72
11        6 months    ki1000304b-SAS-CompFeed     INDIA                          Control           1        4     72
11        6 months    ki1000304b-SAS-CompFeed     INDIA                          Other             0       35     72
11        6 months    ki1000304b-SAS-CompFeed     INDIA                          Other             1       15     72
12        6 months    ki1000304b-SAS-CompFeed     INDIA                          Control           0       31     81
12        6 months    ki1000304b-SAS-CompFeed     INDIA                          Control           1       12     81
12        6 months    ki1000304b-SAS-CompFeed     INDIA                          Other             0       30     81
12        6 months    ki1000304b-SAS-CompFeed     INDIA                          Other             1        8     81
12        Birth       ki1000304b-SAS-CompFeed     INDIA                          Control           0        6     17
12        Birth       ki1000304b-SAS-CompFeed     INDIA                          Control           1        4     17
12        Birth       ki1000304b-SAS-CompFeed     INDIA                          Other             0        4     17
12        Birth       ki1000304b-SAS-CompFeed     INDIA                          Other             1        3     17
1         6 months    ki1000304b-SAS-CompFeed     INDIA                          Control           0       21     63
1         6 months    ki1000304b-SAS-CompFeed     INDIA                          Control           1       11     63
1         6 months    ki1000304b-SAS-CompFeed     INDIA                          Other             0       22     63
1         6 months    ki1000304b-SAS-CompFeed     INDIA                          Other             1        9     63
2         Birth       ki1000304b-SAS-CompFeed     INDIA                          Control           0        4     15
2         Birth       ki1000304b-SAS-CompFeed     INDIA                          Control           1        3     15
2         Birth       ki1000304b-SAS-CompFeed     INDIA                          Other             0        7     15
2         Birth       ki1000304b-SAS-CompFeed     INDIA                          Other             1        1     15
2         6 months    ki1000304b-SAS-CompFeed     INDIA                          Control           0       27     71
2         6 months    ki1000304b-SAS-CompFeed     INDIA                          Control           1        8     71
2         6 months    ki1000304b-SAS-CompFeed     INDIA                          Other             0       25     71
2         6 months    ki1000304b-SAS-CompFeed     INDIA                          Other             1       11     71
3         6 months    ki1000304b-SAS-CompFeed     INDIA                          Control           0       23     62
3         6 months    ki1000304b-SAS-CompFeed     INDIA                          Control           1        5     62
3         6 months    ki1000304b-SAS-CompFeed     INDIA                          Other             0       21     62
3         6 months    ki1000304b-SAS-CompFeed     INDIA                          Other             1       13     62
3         Birth       ki1000304b-SAS-CompFeed     INDIA                          Control           0        4     12
3         Birth       ki1000304b-SAS-CompFeed     INDIA                          Control           1        2     12
3         Birth       ki1000304b-SAS-CompFeed     INDIA                          Other             0        4     12
3         Birth       ki1000304b-SAS-CompFeed     INDIA                          Other             1        2     12
4         6 months    ki1000304b-SAS-CompFeed     INDIA                          Control           0       13     39
4         6 months    ki1000304b-SAS-CompFeed     INDIA                          Control           1        4     39
4         6 months    ki1000304b-SAS-CompFeed     INDIA                          Other             0       18     39
4         6 months    ki1000304b-SAS-CompFeed     INDIA                          Other             1        4     39
4         Birth       ki1000304b-SAS-CompFeed     INDIA                          Control           0        7     15
4         Birth       ki1000304b-SAS-CompFeed     INDIA                          Control           1        0     15
4         Birth       ki1000304b-SAS-CompFeed     INDIA                          Other             0        5     15
4         Birth       ki1000304b-SAS-CompFeed     INDIA                          Other             1        3     15
5         Birth       ki1000304b-SAS-CompFeed     INDIA                          Control           0        7     17
5         Birth       ki1000304b-SAS-CompFeed     INDIA                          Control           1        2     17
5         Birth       ki1000304b-SAS-CompFeed     INDIA                          Other             0        6     17
5         Birth       ki1000304b-SAS-CompFeed     INDIA                          Other             1        2     17
5         6 months    ki1000304b-SAS-CompFeed     INDIA                          Control           0       18     57
5         6 months    ki1000304b-SAS-CompFeed     INDIA                          Control           1       10     57
5         6 months    ki1000304b-SAS-CompFeed     INDIA                          Other             0       24     57
5         6 months    ki1000304b-SAS-CompFeed     INDIA                          Other             1        5     57
6         6 months    ki1000304b-SAS-CompFeed     INDIA                          Control           0       20     71
6         6 months    ki1000304b-SAS-CompFeed     INDIA                          Control           1       16     71
6         6 months    ki1000304b-SAS-CompFeed     INDIA                          Other             0       25     71
6         6 months    ki1000304b-SAS-CompFeed     INDIA                          Other             1       10     71
6         Birth       ki1000304b-SAS-CompFeed     INDIA                          Control           0        4     17
6         Birth       ki1000304b-SAS-CompFeed     INDIA                          Control           1        2     17
6         Birth       ki1000304b-SAS-CompFeed     INDIA                          Other             0        8     17
6         Birth       ki1000304b-SAS-CompFeed     INDIA                          Other             1        3     17
1         Birth       ki1000304b-SAS-CompFeed     INDIA                          Control           0        3     14
1         Birth       ki1000304b-SAS-CompFeed     INDIA                          Control           1        2     14
1         Birth       ki1000304b-SAS-CompFeed     INDIA                          Other             0        6     14
1         Birth       ki1000304b-SAS-CompFeed     INDIA                          Other             1        3     14
5         6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Control           0        2     12
5         6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Control           1        1     12
5         6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Other             0        6     12
5         6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Other             1        3     12
6         6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Control           0        1     21
6         6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Control           1        4     21
6         6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Other             0        9     21
6         6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Other             1        7     21
8         6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Control           0        8     62
8         6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Control           1        6     62
8         6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Other             0       35     62
8         6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Other             1       13     62
9         6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Control           0        9     55
9         6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Control           1        7     55
9         6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Other             0       19     55
9         6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Other             1       20     55
12        6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Control           0        3     33
12        6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Control           1        6     33
12        6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Other             0       16     33
12        6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Other             1        8     33
2         6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Control           0        4     31
2         6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Control           1        4     31
2         6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Other             0       14     31
2         6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Other             1        9     31
10        6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Control           0        5     38
10        6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Control           1        4     38
10        6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Other             0       15     38
10        6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Other             1       14     38
11        6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Control           0        3     26
11        6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Control           1        2     26
11        6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Other             0       11     26
11        6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Other             1       10     26
1         6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Control           0        0     20
1         6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Control           1        5     20
1         6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Other             0       11     20
1         6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Other             1        4     20
3         6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Control           0        2     20
3         6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Control           1        4     20
3         6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Other             0        5     20
3         6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Other             1        9     20
4         6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Control           0        0      4
4         6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Control           1        1      4
4         6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Other             0        2      4
4         6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Other             1        1      4
7         6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Control           0        6     33
7         6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Control           1        3     33
7         6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Other             0       18     33
7         6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Other             1        6     33
7         6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control           0       34    171
7         6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control           1        7    171
7         6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other             0       36    171
7         6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other             1        5    171
7         6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc              0       78    171
7         6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc              1       11    171
8         6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control           0       42    178
8         6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control           1        4    178
8         6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other             0       41    178
8         6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other             1        6    178
8         6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc              0       68    178
8         6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc              1       17    178
9         6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control           0       28    148
9         6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control           1        1    148
9         6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other             0       34    148
9         6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other             1        3    148
9         6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc              0       76    148
9         6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc              1        6    148
10        6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control           0       41    183
10        6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control           1        5    183
10        6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other             0       41    183
10        6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other             1        5    183
10        6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc              0       80    183
10        6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc              1       11    183
11        6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control           0       41    168
11        6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control           1        4    168
11        6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other             0       35    168
11        6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other             1        3    168
11        6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc              0       81    168
11        6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc              1        4    168
12        6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control           0       33    142
12        6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control           1        2    142
12        6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other             0       34    142
12        6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other             1        1    142
12        6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc              0       68    142
12        6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc              1        4    142
1         6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control           0       26    119
1         6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control           1        7    119
1         6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other             0       30    119
1         6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other             1        3    119
1         6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc              0       47    119
1         6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc              1        6    119
2         6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control           0       28    122
2         6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control           1        2    122
2         6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other             0       27    122
2         6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other             1        3    122
2         6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc              0       57    122
2         6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc              1        5    122
3         6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control           0       26    124
3         6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control           1        1    124
3         6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other             0       26    124
3         6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other             1        3    124
3         6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc              0       56    124
3         6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc              1       12    124
4         6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control           0       29    118
4         6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control           1        4    118
4         6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other             0       27    118
4         6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other             1        4    118
4         6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc              0       49    118
4         6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc              1        5    118
4         24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other             0        1      1
5         6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control           0       26    122
5         6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control           1        4    122
5         6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other             0       28    122
5         6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other             1        7    122
5         6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc              0       52    122
5         6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc              1        5    122
6         6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control           0       24    112
6         6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control           1        6    112
6         6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other             0       20    112
6         6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other             1        2    112
6         6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc              0       52    112
6         6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc              1        8    112
6         24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc              1        1      1
7         24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control           0        1      1
3         24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other             0        1      1
9         6 months    ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc              0       25     32
9         6 months    ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc              1        7     32
12        24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Control           0       19    147
12        24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Control           1       17    147
12        24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc              0       79    147
12        24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc              1       32    147
1         6 months    ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc              0       43     46
1         6 months    ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc              1        3     46
6         6 months    ki1112895-Burkina Faso Zn   BURKINA FASO                   Control           0       23     78
6         6 months    ki1112895-Burkina Faso Zn   BURKINA FASO                   Control           1        4     78
6         6 months    ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc              0       44     78
6         6 months    ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc              1        7     78
1         24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Control           0       32    231
1         24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Control           1       12    231
1         24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc              0      123    231
1         24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc              1       64    231
6         24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc              0       23     44
6         24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc              1       21     44
3         24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc              0       60     91
3         24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc              1       31     91
11        24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Control           0       11     94
11        24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Control           1        6     94
11        24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc              0       60     94
11        24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc              1       17     94
10        24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Control           0        2     34
10        24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Control           1        0     34
10        24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc              0       19     34
10        24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc              1       13     34
7         24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc              0       36     51
7         24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc              1       15     51
10        6 months    ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc              0       54     67
10        6 months    ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc              1       13     67
4         24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc              0       48     79
4         24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc              1       31     79
12        6 months    ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc              0       14     16
12        6 months    ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc              1        2     16
7         6 months    ki1112895-Burkina Faso Zn   BURKINA FASO                   Control           0       31    112
7         6 months    ki1112895-Burkina Faso Zn   BURKINA FASO                   Control           1        3    112
7         6 months    ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc              0       73    112
7         6 months    ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc              1        5    112
2         24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Control           0       13    117
2         24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Control           1        9    117
2         24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc              0       50    117
2         24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc              1       45    117
11        6 months    ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc              0       72     79
11        6 months    ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc              1        7     79
3         6 months    ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc              0       55     57
3         6 months    ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc              1        2     57
8         24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc              0       54     96
8         24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc              1       42     96
8         6 months    ki1112895-Burkina Faso Zn   BURKINA FASO                   Control           0       10     51
8         6 months    ki1112895-Burkina Faso Zn   BURKINA FASO                   Control           1        2     51
8         6 months    ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc              0       30     51
8         6 months    ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc              1        9     51
2         6 months    ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc              0       59     66
2         6 months    ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc              1        7     66
5         24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc              0       80    109
5         24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc              1       29    109
9         24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc              0       43     76
9         24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc              1       33     76
5         6 months    ki1112895-Burkina Faso Zn   BURKINA FASO                   Control           0        8     21
5         6 months    ki1112895-Burkina Faso Zn   BURKINA FASO                   Control           1        0     21
5         6 months    ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc              0       12     21
5         6 months    ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc              1        1     21
4         6 months    ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc              0        4      5
4         6 months    ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc              1        1      5
9         6 months    ki1112895-Guatemala BSC     GUATEMALA                      Control           0        5     11
9         6 months    ki1112895-Guatemala BSC     GUATEMALA                      Control           1        1     11
9         6 months    ki1112895-Guatemala BSC     GUATEMALA                      Other             0        3     11
9         6 months    ki1112895-Guatemala BSC     GUATEMALA                      Other             1        2     11
11        6 months    ki1112895-Guatemala BSC     GUATEMALA                      Control           0        5     16
11        6 months    ki1112895-Guatemala BSC     GUATEMALA                      Control           1        4     16
11        6 months    ki1112895-Guatemala BSC     GUATEMALA                      Other             0        5     16
11        6 months    ki1112895-Guatemala BSC     GUATEMALA                      Other             1        2     16
12        6 months    ki1112895-Guatemala BSC     GUATEMALA                      Control           0        8     24
12        6 months    ki1112895-Guatemala BSC     GUATEMALA                      Control           1        3     24
12        6 months    ki1112895-Guatemala BSC     GUATEMALA                      Other             0        6     24
12        6 months    ki1112895-Guatemala BSC     GUATEMALA                      Other             1        7     24
1         6 months    ki1112895-Guatemala BSC     GUATEMALA                      Control           0        5     20
1         6 months    ki1112895-Guatemala BSC     GUATEMALA                      Control           1        6     20
1         6 months    ki1112895-Guatemala BSC     GUATEMALA                      Other             0        7     20
1         6 months    ki1112895-Guatemala BSC     GUATEMALA                      Other             1        2     20
2         6 months    ki1112895-Guatemala BSC     GUATEMALA                      Control           0        7     17
2         6 months    ki1112895-Guatemala BSC     GUATEMALA                      Control           1        1     17
2         6 months    ki1112895-Guatemala BSC     GUATEMALA                      Other             0        8     17
2         6 months    ki1112895-Guatemala BSC     GUATEMALA                      Other             1        1     17
6         6 months    ki1112895-Guatemala BSC     GUATEMALA                      Control           0        5     15
6         6 months    ki1112895-Guatemala BSC     GUATEMALA                      Control           1        4     15
6         6 months    ki1112895-Guatemala BSC     GUATEMALA                      Other             0        5     15
6         6 months    ki1112895-Guatemala BSC     GUATEMALA                      Other             1        1     15
8         6 months    ki1112895-Guatemala BSC     GUATEMALA                      Control           0        2     10
8         6 months    ki1112895-Guatemala BSC     GUATEMALA                      Control           1        1     10
8         6 months    ki1112895-Guatemala BSC     GUATEMALA                      Other             0        5     10
8         6 months    ki1112895-Guatemala BSC     GUATEMALA                      Other             1        2     10
10        6 months    ki1112895-Guatemala BSC     GUATEMALA                      Control           0        9     20
10        6 months    ki1112895-Guatemala BSC     GUATEMALA                      Control           1        1     20
10        6 months    ki1112895-Guatemala BSC     GUATEMALA                      Other             0        8     20
10        6 months    ki1112895-Guatemala BSC     GUATEMALA                      Other             1        2     20
3         6 months    ki1112895-Guatemala BSC     GUATEMALA                      Control           0        4     23
3         6 months    ki1112895-Guatemala BSC     GUATEMALA                      Control           1        5     23
3         6 months    ki1112895-Guatemala BSC     GUATEMALA                      Other             0       12     23
3         6 months    ki1112895-Guatemala BSC     GUATEMALA                      Other             1        2     23
4         6 months    ki1112895-Guatemala BSC     GUATEMALA                      Control           0        8     25
4         6 months    ki1112895-Guatemala BSC     GUATEMALA                      Control           1        4     25
4         6 months    ki1112895-Guatemala BSC     GUATEMALA                      Other             0       10     25
4         6 months    ki1112895-Guatemala BSC     GUATEMALA                      Other             1        3     25
5         6 months    ki1112895-Guatemala BSC     GUATEMALA                      Control           0       10     23
5         6 months    ki1112895-Guatemala BSC     GUATEMALA                      Control           1        2     23
5         6 months    ki1112895-Guatemala BSC     GUATEMALA                      Other             0        5     23
5         6 months    ki1112895-Guatemala BSC     GUATEMALA                      Other             1        6     23
7         6 months    ki1112895-Guatemala BSC     GUATEMALA                      Control           0        5     14
7         6 months    ki1112895-Guatemala BSC     GUATEMALA                      Control           1        3     14
7         6 months    ki1112895-Guatemala BSC     GUATEMALA                      Other             0        5     14
7         6 months    ki1112895-Guatemala BSC     GUATEMALA                      Other             1        1     14
6         Birth       ki1119695-PROBIT            BELARUS                        Control           0      525   1020
6         Birth       ki1119695-PROBIT            BELARUS                        Control           1        2   1020
6         Birth       ki1119695-PROBIT            BELARUS                        Maternal          0      492   1020
6         Birth       ki1119695-PROBIT            BELARUS                        Maternal          1        1   1020
6         6 months    ki1119695-PROBIT            BELARUS                        Control           0      520   1063
6         6 months    ki1119695-PROBIT            BELARUS                        Control           1       41   1063
6         6 months    ki1119695-PROBIT            BELARUS                        Maternal          0      476   1063
6         6 months    ki1119695-PROBIT            BELARUS                        Maternal          1       26   1063
7         Birth       ki1119695-PROBIT            BELARUS                        Control           0      621   1294
7         Birth       ki1119695-PROBIT            BELARUS                        Control           1        1   1294
7         Birth       ki1119695-PROBIT            BELARUS                        Maternal          0      671   1294
7         Birth       ki1119695-PROBIT            BELARUS                        Maternal          1        1   1294
7         6 months    ki1119695-PROBIT            BELARUS                        Control           0      643   1386
7         6 months    ki1119695-PROBIT            BELARUS                        Control           1       45   1386
7         6 months    ki1119695-PROBIT            BELARUS                        Maternal          0      665   1386
7         6 months    ki1119695-PROBIT            BELARUS                        Maternal          1       33   1386
8         Birth       ki1119695-PROBIT            BELARUS                        Control           0      668   1311
8         Birth       ki1119695-PROBIT            BELARUS                        Control           1        1   1311
8         Birth       ki1119695-PROBIT            BELARUS                        Maternal          0      640   1311
8         Birth       ki1119695-PROBIT            BELARUS                        Maternal          1        2   1311
8         6 months    ki1119695-PROBIT            BELARUS                        Control           0      669   1400
8         6 months    ki1119695-PROBIT            BELARUS                        Control           1       47   1400
8         6 months    ki1119695-PROBIT            BELARUS                        Maternal          0      651   1400
8         6 months    ki1119695-PROBIT            BELARUS                        Maternal          1       33   1400
9         Birth       ki1119695-PROBIT            BELARUS                        Control           0      621   1324
9         Birth       ki1119695-PROBIT            BELARUS                        Control           1        3   1324
9         Birth       ki1119695-PROBIT            BELARUS                        Maternal          0      698   1324
9         Birth       ki1119695-PROBIT            BELARUS                        Maternal          1        2   1324
9         6 months    ki1119695-PROBIT            BELARUS                        Control           0      574   1340
9         6 months    ki1119695-PROBIT            BELARUS                        Control           1       51   1340
9         6 months    ki1119695-PROBIT            BELARUS                        Maternal          0      677   1340
9         6 months    ki1119695-PROBIT            BELARUS                        Maternal          1       38   1340
10        Birth       ki1119695-PROBIT            BELARUS                        Control           0      699   1500
10        Birth       ki1119695-PROBIT            BELARUS                        Control           1        5   1500
10        Birth       ki1119695-PROBIT            BELARUS                        Maternal          0      795   1500
10        Birth       ki1119695-PROBIT            BELARUS                        Maternal          1        1   1500
10        6 months    ki1119695-PROBIT            BELARUS                        Control           0      647   1520
10        6 months    ki1119695-PROBIT            BELARUS                        Control           1       52   1520
10        6 months    ki1119695-PROBIT            BELARUS                        Maternal          0      765   1520
10        6 months    ki1119695-PROBIT            BELARUS                        Maternal          1       56   1520
11        Birth       ki1119695-PROBIT            BELARUS                        Control           0      612   1388
11        Birth       ki1119695-PROBIT            BELARUS                        Control           1        3   1388
11        Birth       ki1119695-PROBIT            BELARUS                        Maternal          0      773   1388
11        Birth       ki1119695-PROBIT            BELARUS                        Maternal          1        0   1388
11        6 months    ki1119695-PROBIT            BELARUS                        Control           0      556   1389
11        6 months    ki1119695-PROBIT            BELARUS                        Control           1       52   1389
11        6 months    ki1119695-PROBIT            BELARUS                        Maternal          0      738   1389
11        6 months    ki1119695-PROBIT            BELARUS                        Maternal          1       43   1389
11        24 months   ki1119695-PROBIT            BELARUS                        Control           0       30     88
11        24 months   ki1119695-PROBIT            BELARUS                        Control           1        4     88
11        24 months   ki1119695-PROBIT            BELARUS                        Maternal          0       46     88
11        24 months   ki1119695-PROBIT            BELARUS                        Maternal          1        8     88
12        Birth       ki1119695-PROBIT            BELARUS                        Control           0      728   1549
12        Birth       ki1119695-PROBIT            BELARUS                        Control           1        0   1549
12        Birth       ki1119695-PROBIT            BELARUS                        Maternal          0      819   1549
12        Birth       ki1119695-PROBIT            BELARUS                        Maternal          1        2   1549
12        6 months    ki1119695-PROBIT            BELARUS                        Control           0      710   1603
12        6 months    ki1119695-PROBIT            BELARUS                        Control           1       52   1603
12        6 months    ki1119695-PROBIT            BELARUS                        Maternal          0      802   1603
12        6 months    ki1119695-PROBIT            BELARUS                        Maternal          1       39   1603
1         Birth       ki1119695-PROBIT            BELARUS                        Control           0      422    826
1         Birth       ki1119695-PROBIT            BELARUS                        Maternal          0      404    826
1         6 months    ki1119695-PROBIT            BELARUS                        Control           0      389    843
1         6 months    ki1119695-PROBIT            BELARUS                        Control           1       40    843
1         6 months    ki1119695-PROBIT            BELARUS                        Maternal          0      377    843
1         6 months    ki1119695-PROBIT            BELARUS                        Maternal          1       37    843
2         Birth       ki1119695-PROBIT            BELARUS                        Control           0      420    804
2         Birth       ki1119695-PROBIT            BELARUS                        Control           1        1    804
2         Birth       ki1119695-PROBIT            BELARUS                        Maternal          0      381    804
2         Birth       ki1119695-PROBIT            BELARUS                        Maternal          1        2    804
2         6 months    ki1119695-PROBIT            BELARUS                        Control           0      408    852
2         6 months    ki1119695-PROBIT            BELARUS                        Control           1       43    852
2         6 months    ki1119695-PROBIT            BELARUS                        Maternal          0      371    852
2         6 months    ki1119695-PROBIT            BELARUS                        Maternal          1       30    852
3         6 months    ki1119695-PROBIT            BELARUS                        Control           0      491   1007
3         6 months    ki1119695-PROBIT            BELARUS                        Control           1       33   1007
3         6 months    ki1119695-PROBIT            BELARUS                        Maternal          0      461   1007
3         6 months    ki1119695-PROBIT            BELARUS                        Maternal          1       22   1007
3         Birth       ki1119695-PROBIT            BELARUS                        Control           0      489    948
3         Birth       ki1119695-PROBIT            BELARUS                        Control           1        5    948
3         Birth       ki1119695-PROBIT            BELARUS                        Maternal          0      454    948
3         Birth       ki1119695-PROBIT            BELARUS                        Maternal          1        0    948
3         24 months   ki1119695-PROBIT            BELARUS                        Control           0       22     44
3         24 months   ki1119695-PROBIT            BELARUS                        Control           1        1     44
3         24 months   ki1119695-PROBIT            BELARUS                        Maternal          0       21     44
3         24 months   ki1119695-PROBIT            BELARUS                        Maternal          1        0     44
4         Birth       ki1119695-PROBIT            BELARUS                        Control           0      470    970
4         Birth       ki1119695-PROBIT            BELARUS                        Maternal          0      500    970
4         6 months    ki1119695-PROBIT            BELARUS                        Control           0      467   1033
4         6 months    ki1119695-PROBIT            BELARUS                        Control           1       33   1033
4         6 months    ki1119695-PROBIT            BELARUS                        Maternal          0      501   1033
4         6 months    ki1119695-PROBIT            BELARUS                        Maternal          1       32   1033
5         Birth       ki1119695-PROBIT            BELARUS                        Control           0      483    950
5         Birth       ki1119695-PROBIT            BELARUS                        Control           1        0    950
5         Birth       ki1119695-PROBIT            BELARUS                        Maternal          0      466    950
5         Birth       ki1119695-PROBIT            BELARUS                        Maternal          1        1    950
5         6 months    ki1119695-PROBIT            BELARUS                        Control           0      522   1064
5         6 months    ki1119695-PROBIT            BELARUS                        Control           1       27   1064
5         6 months    ki1119695-PROBIT            BELARUS                        Maternal          0      496   1064
5         6 months    ki1119695-PROBIT            BELARUS                        Maternal          1       19   1064
6         24 months   ki1119695-PROBIT            BELARUS                        Control           0       21     50
6         24 months   ki1119695-PROBIT            BELARUS                        Control           1        4     50
6         24 months   ki1119695-PROBIT            BELARUS                        Maternal          0       23     50
6         24 months   ki1119695-PROBIT            BELARUS                        Maternal          1        2     50
7         24 months   ki1119695-PROBIT            BELARUS                        Control           0       29     85
7         24 months   ki1119695-PROBIT            BELARUS                        Control           1        4     85
7         24 months   ki1119695-PROBIT            BELARUS                        Maternal          0       50     85
7         24 months   ki1119695-PROBIT            BELARUS                        Maternal          1        2     85
10        24 months   ki1119695-PROBIT            BELARUS                        Control           0       39     97
10        24 months   ki1119695-PROBIT            BELARUS                        Control           1        7     97
10        24 months   ki1119695-PROBIT            BELARUS                        Maternal          0       42     97
10        24 months   ki1119695-PROBIT            BELARUS                        Maternal          1        9     97
4         24 months   ki1119695-PROBIT            BELARUS                        Control           0       26     54
4         24 months   ki1119695-PROBIT            BELARUS                        Control           1        0     54
4         24 months   ki1119695-PROBIT            BELARUS                        Maternal          0       26     54
4         24 months   ki1119695-PROBIT            BELARUS                        Maternal          1        2     54
5         24 months   ki1119695-PROBIT            BELARUS                        Control           0       22     58
5         24 months   ki1119695-PROBIT            BELARUS                        Control           1        2     58
5         24 months   ki1119695-PROBIT            BELARUS                        Maternal          0       31     58
5         24 months   ki1119695-PROBIT            BELARUS                        Maternal          1        3     58
8         24 months   ki1119695-PROBIT            BELARUS                        Control           0       30     77
8         24 months   ki1119695-PROBIT            BELARUS                        Control           1        5     77
8         24 months   ki1119695-PROBIT            BELARUS                        Maternal          0       40     77
8         24 months   ki1119695-PROBIT            BELARUS                        Maternal          1        2     77
9         24 months   ki1119695-PROBIT            BELARUS                        Control           0       39     86
9         24 months   ki1119695-PROBIT            BELARUS                        Control           1        4     86
9         24 months   ki1119695-PROBIT            BELARUS                        Maternal          0       38     86
9         24 months   ki1119695-PROBIT            BELARUS                        Maternal          1        5     86
12        24 months   ki1119695-PROBIT            BELARUS                        Control           0       38    121
12        24 months   ki1119695-PROBIT            BELARUS                        Control           1       11    121
12        24 months   ki1119695-PROBIT            BELARUS                        Maternal          0       58    121
12        24 months   ki1119695-PROBIT            BELARUS                        Maternal          1       14    121
2         24 months   ki1119695-PROBIT            BELARUS                        Control           0       16     39
2         24 months   ki1119695-PROBIT            BELARUS                        Control           1        2     39
2         24 months   ki1119695-PROBIT            BELARUS                        Maternal          0       19     39
2         24 months   ki1119695-PROBIT            BELARUS                        Maternal          1        2     39
1         24 months   ki1119695-PROBIT            BELARUS                        Control           0       15     42
1         24 months   ki1119695-PROBIT            BELARUS                        Control           1        3     42
1         24 months   ki1119695-PROBIT            BELARUS                        Maternal          0       20     42
1         24 months   ki1119695-PROBIT            BELARUS                        Maternal          1        4     42
11        Birth       ki1126311-ZVITAMBO          ZIMBABWE                       Control           0      264   1179
11        Birth       ki1126311-ZVITAMBO          ZIMBABWE                       Control           1       28   1179
11        Birth       ki1126311-ZVITAMBO          ZIMBABWE                       VitA              0      805   1179
11        Birth       ki1126311-ZVITAMBO          ZIMBABWE                       VitA              1       82   1179
11        6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control           0      158    704
11        6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control           1       24    704
11        6 months    ki1126311-ZVITAMBO          ZIMBABWE                       VitA              0      431    704
11        6 months    ki1126311-ZVITAMBO          ZIMBABWE                       VitA              1       91    704
12        6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control           0      167    759
12        6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control           1       27    759
12        6 months    ki1126311-ZVITAMBO          ZIMBABWE                       VitA              0      487    759
12        6 months    ki1126311-ZVITAMBO          ZIMBABWE                       VitA              1       78    759
12        Birth       ki1126311-ZVITAMBO          ZIMBABWE                       Control           0      275   1206
12        Birth       ki1126311-ZVITAMBO          ZIMBABWE                       Control           1       23   1206
12        Birth       ki1126311-ZVITAMBO          ZIMBABWE                       VitA              0      819   1206
12        Birth       ki1126311-ZVITAMBO          ZIMBABWE                       VitA              1       89   1206
1         Birth       ki1126311-ZVITAMBO          ZIMBABWE                       Control           0      286   1339
1         Birth       ki1126311-ZVITAMBO          ZIMBABWE                       Control           1       56   1339
1         Birth       ki1126311-ZVITAMBO          ZIMBABWE                       VitA              0      881   1339
1         Birth       ki1126311-ZVITAMBO          ZIMBABWE                       VitA              1      116   1339
1         6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control           0      161    724
1         6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control           1       38    724
1         6 months    ki1126311-ZVITAMBO          ZIMBABWE                       VitA              0      437    724
1         6 months    ki1126311-ZVITAMBO          ZIMBABWE                       VitA              1       88    724
1         24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control           0        0      7
1         24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control           1        2      7
1         24 months   ki1126311-ZVITAMBO          ZIMBABWE                       VitA              0        1      7
1         24 months   ki1126311-ZVITAMBO          ZIMBABWE                       VitA              1        4      7
2         Birth       ki1126311-ZVITAMBO          ZIMBABWE                       Control           0      224   1049
2         Birth       ki1126311-ZVITAMBO          ZIMBABWE                       Control           1       34   1049
2         Birth       ki1126311-ZVITAMBO          ZIMBABWE                       VitA              0      667   1049
2         Birth       ki1126311-ZVITAMBO          ZIMBABWE                       VitA              1      124   1049
2         6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control           0       92    525
2         6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control           1       26    525
2         6 months    ki1126311-ZVITAMBO          ZIMBABWE                       VitA              0      346    525
2         6 months    ki1126311-ZVITAMBO          ZIMBABWE                       VitA              1       61    525
3         Birth       ki1126311-ZVITAMBO          ZIMBABWE                       Control           0      248   1159
3         Birth       ki1126311-ZVITAMBO          ZIMBABWE                       Control           1       31   1159
3         Birth       ki1126311-ZVITAMBO          ZIMBABWE                       VitA              0      776   1159
3         Birth       ki1126311-ZVITAMBO          ZIMBABWE                       VitA              1      104   1159
3         6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control           0      139    709
3         6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control           1       35    709
3         6 months    ki1126311-ZVITAMBO          ZIMBABWE                       VitA              0      418    709
3         6 months    ki1126311-ZVITAMBO          ZIMBABWE                       VitA              1      117    709
2         24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control           0        0      7
2         24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control           1        1      7
2         24 months   ki1126311-ZVITAMBO          ZIMBABWE                       VitA              0        2      7
2         24 months   ki1126311-ZVITAMBO          ZIMBABWE                       VitA              1        4      7
11        24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control           0        1      6
11        24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control           1        2      6
11        24 months   ki1126311-ZVITAMBO          ZIMBABWE                       VitA              0        1      6
11        24 months   ki1126311-ZVITAMBO          ZIMBABWE                       VitA              1        2      6
12        24 months   ki1126311-ZVITAMBO          ZIMBABWE                       VitA              0        1      2
12        24 months   ki1126311-ZVITAMBO          ZIMBABWE                       VitA              1        1      2
3         24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control           0        1      3
3         24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control           1        0      3
3         24 months   ki1126311-ZVITAMBO          ZIMBABWE                       VitA              0        0      3
3         24 months   ki1126311-ZVITAMBO          ZIMBABWE                       VitA              1        2      3
4         Birth       ki1126311-ZVITAMBO          ZIMBABWE                       Control           0      229    989
4         Birth       ki1126311-ZVITAMBO          ZIMBABWE                       Control           1       26    989
4         Birth       ki1126311-ZVITAMBO          ZIMBABWE                       VitA              0      651    989
4         Birth       ki1126311-ZVITAMBO          ZIMBABWE                       VitA              1       83    989
4         6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control           0      122    605
4         6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control           1       31    605
4         6 months    ki1126311-ZVITAMBO          ZIMBABWE                       VitA              0      373    605
4         6 months    ki1126311-ZVITAMBO          ZIMBABWE                       VitA              1       79    605
6         Birth       ki1126311-ZVITAMBO          ZIMBABWE                       Control           0      246   1135
6         Birth       ki1126311-ZVITAMBO          ZIMBABWE                       Control           1       35   1135
6         Birth       ki1126311-ZVITAMBO          ZIMBABWE                       VitA              0      759   1135
6         Birth       ki1126311-ZVITAMBO          ZIMBABWE                       VitA              1       95   1135
6         6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control           0      108    591
6         6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control           1       23    591
6         6 months    ki1126311-ZVITAMBO          ZIMBABWE                       VitA              0      386    591
6         6 months    ki1126311-ZVITAMBO          ZIMBABWE                       VitA              1       74    591
6         24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control           0        3      5
6         24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control           1        0      5
6         24 months   ki1126311-ZVITAMBO          ZIMBABWE                       VitA              0        0      5
6         24 months   ki1126311-ZVITAMBO          ZIMBABWE                       VitA              1        2      5
7         Birth       ki1126311-ZVITAMBO          ZIMBABWE                       Control           0      273   1173
7         Birth       ki1126311-ZVITAMBO          ZIMBABWE                       Control           1       30   1173
7         Birth       ki1126311-ZVITAMBO          ZIMBABWE                       VitA              0      780   1173
7         Birth       ki1126311-ZVITAMBO          ZIMBABWE                       VitA              1       90   1173
7         6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control           0      130    618
7         6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control           1       30    618
7         6 months    ki1126311-ZVITAMBO          ZIMBABWE                       VitA              0      373    618
7         6 months    ki1126311-ZVITAMBO          ZIMBABWE                       VitA              1       85    618
7         24 months   ki1126311-ZVITAMBO          ZIMBABWE                       VitA              0        1      1
8         Birth       ki1126311-ZVITAMBO          ZIMBABWE                       Control           0      289   1253
8         Birth       ki1126311-ZVITAMBO          ZIMBABWE                       Control           1       27   1253
8         Birth       ki1126311-ZVITAMBO          ZIMBABWE                       VitA              0      871   1253
8         Birth       ki1126311-ZVITAMBO          ZIMBABWE                       VitA              1       66   1253
8         6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control           0      148    714
8         6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control           1       16    714
8         6 months    ki1126311-ZVITAMBO          ZIMBABWE                       VitA              0      467    714
8         6 months    ki1126311-ZVITAMBO          ZIMBABWE                       VitA              1       83    714
8         24 months   ki1126311-ZVITAMBO          ZIMBABWE                       VitA              1        1      1
9         Birth       ki1126311-ZVITAMBO          ZIMBABWE                       Control           0      295   1295
9         Birth       ki1126311-ZVITAMBO          ZIMBABWE                       Control           1       23   1295
9         Birth       ki1126311-ZVITAMBO          ZIMBABWE                       VitA              0      918   1295
9         Birth       ki1126311-ZVITAMBO          ZIMBABWE                       VitA              1       59   1295
9         6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control           0      156    688
9         6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control           1       17    688
9         6 months    ki1126311-ZVITAMBO          ZIMBABWE                       VitA              0      442    688
9         6 months    ki1126311-ZVITAMBO          ZIMBABWE                       VitA              1       73    688
10        Birth       ki1126311-ZVITAMBO          ZIMBABWE                       Control           0      240   1039
10        Birth       ki1126311-ZVITAMBO          ZIMBABWE                       Control           1       18   1039
10        Birth       ki1126311-ZVITAMBO          ZIMBABWE                       VitA              0      716   1039
10        Birth       ki1126311-ZVITAMBO          ZIMBABWE                       VitA              1       65   1039
10        6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control           0      105    557
10        6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control           1       21    557
10        6 months    ki1126311-ZVITAMBO          ZIMBABWE                       VitA              0      358    557
10        6 months    ki1126311-ZVITAMBO          ZIMBABWE                       VitA              1       73    557
5         Birth       ki1126311-ZVITAMBO          ZIMBABWE                       Control           0      220   1014
5         Birth       ki1126311-ZVITAMBO          ZIMBABWE                       Control           1       29   1014
5         Birth       ki1126311-ZVITAMBO          ZIMBABWE                       VitA              0      666   1014
5         Birth       ki1126311-ZVITAMBO          ZIMBABWE                       VitA              1       99   1014
5         6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control           0      117    582
5         6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control           1       25    582
5         6 months    ki1126311-ZVITAMBO          ZIMBABWE                       VitA              0      365    582
5         6 months    ki1126311-ZVITAMBO          ZIMBABWE                       VitA              1       75    582
10        24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control           0        1      1
4         24 months   ki1126311-ZVITAMBO          ZIMBABWE                       VitA              1        1      1
5         24 months   ki1126311-ZVITAMBO          ZIMBABWE                       VitA              0        2      3
5         24 months   ki1126311-ZVITAMBO          ZIMBABWE                       VitA              1        1      3
5         6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control           0       12    127
5         6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control           1        9    127
5         6 months    ki1148112-iLiNS-DOSE        MALAWI                         LNS               0       70    127
5         6 months    ki1148112-iLiNS-DOSE        MALAWI                         LNS               1       36    127
6         6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control           0       13    134
6         6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control           1       12    134
6         6 months    ki1148112-iLiNS-DOSE        MALAWI                         LNS               0       79    134
6         6 months    ki1148112-iLiNS-DOSE        MALAWI                         LNS               1       30    134
7         6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control           0       20    179
7         6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control           1        7    179
7         6 months    ki1148112-iLiNS-DOSE        MALAWI                         LNS               0      105    179
7         6 months    ki1148112-iLiNS-DOSE        MALAWI                         LNS               1       47    179
7         24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control           0        5     72
7         24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control           1        6     72
7         24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS               0       30     72
7         24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS               1       31     72
2         6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control           0       13    124
2         6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control           1        6    124
2         6 months    ki1148112-iLiNS-DOSE        MALAWI                         LNS               0       68    124
2         6 months    ki1148112-iLiNS-DOSE        MALAWI                         LNS               1       37    124
2         24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control           0        3     49
2         24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control           1        4     49
2         24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS               0       19     49
2         24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS               1       23     49
3         6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control           0       18    132
3         6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control           1        8    132
3         6 months    ki1148112-iLiNS-DOSE        MALAWI                         LNS               0       69    132
3         6 months    ki1148112-iLiNS-DOSE        MALAWI                         LNS               1       37    132
3         24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control           0        6     53
3         24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control           1        2     53
3         24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS               0       18     53
3         24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS               1       27     53
6         24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control           0        3     47
6         24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control           1        8     47
6         24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS               0       21     47
6         24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS               1       15     47
4         6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control           0        9    103
4         6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control           1        6    103
4         6 months    ki1148112-iLiNS-DOSE        MALAWI                         LNS               0       60    103
4         6 months    ki1148112-iLiNS-DOSE        MALAWI                         LNS               1       28    103
4         24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control           0        3     37
4         24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control           1        2     37
4         24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS               0       21     37
4         24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS               1       11     37
8         6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control           0       27    204
8         6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control           1        9    204
8         6 months    ki1148112-iLiNS-DOSE        MALAWI                         LNS               0      119    204
8         6 months    ki1148112-iLiNS-DOSE        MALAWI                         LNS               1       49    204
5         24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control           0        2     46
5         24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control           1        3     46
5         24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS               0       21     46
5         24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS               1       20     46
8         24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control           0       11     96
8         24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control           1        8     96
8         24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS               0       46     96
8         24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS               1       31     96
9         6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control           0       23    191
9         6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control           1        7    191
9         6 months    ki1148112-iLiNS-DOSE        MALAWI                         LNS               0      120    191
9         6 months    ki1148112-iLiNS-DOSE        MALAWI                         LNS               1       41    191
9         24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control           0        5     77
9         24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control           1        5     77
9         24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS               0       36     77
9         24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS               1       31     77
10        6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control           0       25    216
10        6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control           1       12    216
10        6 months    ki1148112-iLiNS-DOSE        MALAWI                         LNS               0      135    216
10        6 months    ki1148112-iLiNS-DOSE        MALAWI                         LNS               1       44    216
10        24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control           0        6     82
10        24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control           1        9     82
10        24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS               0       30     82
10        24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS               1       37     82
11        6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control           0       21    221
11        6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control           1       11    221
11        6 months    ki1148112-iLiNS-DOSE        MALAWI                         LNS               0      125    221
11        6 months    ki1148112-iLiNS-DOSE        MALAWI                         LNS               1       64    221
11        24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control           0        8    115
11        24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control           1        8    115
11        24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS               0       40    115
11        24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS               1       59    115
12        6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control           0       21    156
12        6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control           1        9    156
12        6 months    ki1148112-iLiNS-DOSE        MALAWI                         LNS               0       99    156
12        6 months    ki1148112-iLiNS-DOSE        MALAWI                         LNS               1       27    156
12        24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control           0        6     55
12        24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control           1        7     55
12        24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS               0       21     55
12        24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS               1       21     55
1         6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control           0       13    143
1         6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control           1        9    143
1         6 months    ki1148112-iLiNS-DOSE        MALAWI                         LNS               0       83    143
1         6 months    ki1148112-iLiNS-DOSE        MALAWI                         LNS               1       38    143
1         24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control           0        5     47
1         24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control           1        4     47
1         24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS               0       19     47
1         24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS               1       19     47
8         6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Control           0       20     91
8         6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Control           1       10     91
8         6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Maternal          0       43     91
8         6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Maternal          1       18     91
7         6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Control           0       13     70
7         6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Control           1        3     70
7         6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Maternal          0       44     70
7         6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Maternal          1       10     70
7         Birth       ki1148112-iLiNS-DYAD-M      MALAWI                         Maternal          1        1      1
9         6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Control           0       24     93
9         6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Control           1       14     93
9         6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Maternal          0       47     93
9         6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Maternal          1        8     93
10        6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Control           0       25    102
10        6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Control           1        4    102
10        6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Maternal          0       61    102
10        6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Maternal          1       12    102
10        24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Maternal          0        1      1
11        6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Control           0       32    112
11        6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Control           1        6    112
11        6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Maternal          0       57    112
11        6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Maternal          1       17    112
11        24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control           0        1      6
11        24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control           1        0      6
11        24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Maternal          0        3      6
11        24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Maternal          1        2      6
9         24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control           0        1      8
9         24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control           1        0      8
9         24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Maternal          0        6      8
9         24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Maternal          1        1      8
12        6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Control           0       35    132
12        6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Control           1       12    132
12        6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Maternal          0       67    132
12        6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Maternal          1       18    132
12        24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Maternal          0        3      6
12        24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Maternal          1        3      6
4         6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Control           0       18     58
4         6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Control           1        6     58
4         6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Maternal          0       26     58
4         6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Maternal          1        8     58
4         24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control           0        1     10
4         24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control           1        2     10
4         24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Maternal          0        6     10
4         24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Maternal          1        1     10
1         6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Control           0       29     90
1         6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Control           1        4     90
1         6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Maternal          0       41     90
1         6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Maternal          1       16     90
1         24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control           0        1      4
1         24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control           1        0      4
1         24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Maternal          0        2      4
1         24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Maternal          1        1      4
2         6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Control           0       23     65
2         6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Control           1        6     65
2         6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Maternal          0       28     65
2         6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Maternal          1        8     65
2         24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control           0        0      7
2         24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control           1        1      7
2         24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Maternal          0        2      7
2         24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Maternal          1        4      7
3         6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Control           0       15     82
3         6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Control           1        3     82
3         6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Maternal          0       48     82
3         6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Maternal          1       16     82
3         24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Maternal          0        2      5
3         24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Maternal          1        3      5
5         6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Control           0       18     68
5         6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Control           1        6     68
5         6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Maternal          0       34     68
5         6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Maternal          1       10     68
6         6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Control           0       17     66
6         6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Control           1        8     66
6         6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Maternal          0       31     66
6         6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Maternal          1       10     66
6         24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Maternal          0        1      4
6         24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Maternal          1        3      4
5         24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control           0        1      6
5         24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control           1        3      6
5         24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Maternal          0        1      6
5         24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Maternal          1        1      6
7         24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Maternal          0        4      4
8         24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control           0        0      4
8         24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control           1        1      4
8         24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Maternal          0        2      4
8         24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Maternal          1        1      4
7         6 months    ki1148112-LCNI-5            MALAWI                         Control           0       14     61
7         6 months    ki1148112-LCNI-5            MALAWI                         Control           1        2     61
7         6 months    ki1148112-LCNI-5            MALAWI                         LNS               0       17     61
7         6 months    ki1148112-LCNI-5            MALAWI                         LNS               1       14     61
7         6 months    ki1148112-LCNI-5            MALAWI                         Other             0       10     61
7         6 months    ki1148112-LCNI-5            MALAWI                         Other             1        4     61
7         24 months   ki1148112-LCNI-5            MALAWI                         Control           0        8     36
7         24 months   ki1148112-LCNI-5            MALAWI                         Control           1        4     36
7         24 months   ki1148112-LCNI-5            MALAWI                         LNS               0        6     36
7         24 months   ki1148112-LCNI-5            MALAWI                         LNS               1       10     36
7         24 months   ki1148112-LCNI-5            MALAWI                         Other             0        5     36
7         24 months   ki1148112-LCNI-5            MALAWI                         Other             1        3     36
8         6 months    ki1148112-LCNI-5            MALAWI                         Control           0       10     93
8         6 months    ki1148112-LCNI-5            MALAWI                         Control           1       10     93
8         6 months    ki1148112-LCNI-5            MALAWI                         LNS               0       34     93
8         6 months    ki1148112-LCNI-5            MALAWI                         LNS               1       11     93
8         6 months    ki1148112-LCNI-5            MALAWI                         Other             0       22     93
8         6 months    ki1148112-LCNI-5            MALAWI                         Other             1        6     93
10        6 months    ki1148112-LCNI-5            MALAWI                         Control           0       23    135
10        6 months    ki1148112-LCNI-5            MALAWI                         Control           1        8    135
10        6 months    ki1148112-LCNI-5            MALAWI                         LNS               0       36    135
10        6 months    ki1148112-LCNI-5            MALAWI                         LNS               1       35    135
10        6 months    ki1148112-LCNI-5            MALAWI                         Other             0       15    135
10        6 months    ki1148112-LCNI-5            MALAWI                         Other             1       18    135
10        24 months   ki1148112-LCNI-5            MALAWI                         Control           0        8     46
10        24 months   ki1148112-LCNI-5            MALAWI                         Control           1        5     46
10        24 months   ki1148112-LCNI-5            MALAWI                         LNS               0       12     46
10        24 months   ki1148112-LCNI-5            MALAWI                         LNS               1       10     46
10        24 months   ki1148112-LCNI-5            MALAWI                         Other             0        6     46
10        24 months   ki1148112-LCNI-5            MALAWI                         Other             1        5     46
9         6 months    ki1148112-LCNI-5            MALAWI                         Control           0       14     93
9         6 months    ki1148112-LCNI-5            MALAWI                         Control           1       10     93
9         6 months    ki1148112-LCNI-5            MALAWI                         LNS               0       34     93
9         6 months    ki1148112-LCNI-5            MALAWI                         LNS               1       14     93
9         6 months    ki1148112-LCNI-5            MALAWI                         Other             0       11     93
9         6 months    ki1148112-LCNI-5            MALAWI                         Other             1       10     93
9         24 months   ki1148112-LCNI-5            MALAWI                         Control           0        8     29
9         24 months   ki1148112-LCNI-5            MALAWI                         Control           1        2     29
9         24 months   ki1148112-LCNI-5            MALAWI                         LNS               0        7     29
9         24 months   ki1148112-LCNI-5            MALAWI                         LNS               1        6     29
9         24 months   ki1148112-LCNI-5            MALAWI                         Other             0        5     29
9         24 months   ki1148112-LCNI-5            MALAWI                         Other             1        1     29
11        6 months    ki1148112-LCNI-5            MALAWI                         Control           0       18    105
11        6 months    ki1148112-LCNI-5            MALAWI                         Control           1        9    105
11        6 months    ki1148112-LCNI-5            MALAWI                         LNS               0       36    105
11        6 months    ki1148112-LCNI-5            MALAWI                         LNS               1       18    105
11        6 months    ki1148112-LCNI-5            MALAWI                         Other             0       16    105
11        6 months    ki1148112-LCNI-5            MALAWI                         Other             1        8    105
8         24 months   ki1148112-LCNI-5            MALAWI                         Control           0        7     47
8         24 months   ki1148112-LCNI-5            MALAWI                         Control           1        3     47
8         24 months   ki1148112-LCNI-5            MALAWI                         LNS               0       15     47
8         24 months   ki1148112-LCNI-5            MALAWI                         LNS               1        7     47
8         24 months   ki1148112-LCNI-5            MALAWI                         Other             0       10     47
8         24 months   ki1148112-LCNI-5            MALAWI                         Other             1        5     47
11        24 months   ki1148112-LCNI-5            MALAWI                         Control           0       10     48
11        24 months   ki1148112-LCNI-5            MALAWI                         Control           1        8     48
11        24 months   ki1148112-LCNI-5            MALAWI                         LNS               0       10     48
11        24 months   ki1148112-LCNI-5            MALAWI                         LNS               1        9     48
11        24 months   ki1148112-LCNI-5            MALAWI                         Other             0        9     48
11        24 months   ki1148112-LCNI-5            MALAWI                         Other             1        2     48
12        6 months    ki1148112-LCNI-5            MALAWI                         Control           0       15     95
12        6 months    ki1148112-LCNI-5            MALAWI                         Control           1       11     95
12        6 months    ki1148112-LCNI-5            MALAWI                         LNS               0       34     95
12        6 months    ki1148112-LCNI-5            MALAWI                         LNS               1       11     95
12        6 months    ki1148112-LCNI-5            MALAWI                         Other             0       15     95
12        6 months    ki1148112-LCNI-5            MALAWI                         Other             1        9     95
12        24 months   ki1148112-LCNI-5            MALAWI                         Control           0        2     42
12        24 months   ki1148112-LCNI-5            MALAWI                         Control           1        9     42
12        24 months   ki1148112-LCNI-5            MALAWI                         LNS               0       17     42
12        24 months   ki1148112-LCNI-5            MALAWI                         LNS               1        4     42
12        24 months   ki1148112-LCNI-5            MALAWI                         Other             0        5     42
12        24 months   ki1148112-LCNI-5            MALAWI                         Other             1        5     42
1         6 months    ki1148112-LCNI-5            MALAWI                         Control           0       13     68
1         6 months    ki1148112-LCNI-5            MALAWI                         Control           1        3     68
1         6 months    ki1148112-LCNI-5            MALAWI                         LNS               0       14     68
1         6 months    ki1148112-LCNI-5            MALAWI                         LNS               1       19     68
1         6 months    ki1148112-LCNI-5            MALAWI                         Other             0       11     68
1         6 months    ki1148112-LCNI-5            MALAWI                         Other             1        8     68
1         24 months   ki1148112-LCNI-5            MALAWI                         Control           0        9     27
1         24 months   ki1148112-LCNI-5            MALAWI                         Control           1        0     27
1         24 months   ki1148112-LCNI-5            MALAWI                         LNS               0        6     27
1         24 months   ki1148112-LCNI-5            MALAWI                         LNS               1        4     27
1         24 months   ki1148112-LCNI-5            MALAWI                         Other             0        6     27
1         24 months   ki1148112-LCNI-5            MALAWI                         Other             1        2     27
2         6 months    ki1148112-LCNI-5            MALAWI                         Control           0        9     46
2         6 months    ki1148112-LCNI-5            MALAWI                         Control           1        2     46
2         6 months    ki1148112-LCNI-5            MALAWI                         LNS               0       17     46
2         6 months    ki1148112-LCNI-5            MALAWI                         LNS               1        8     46
2         6 months    ki1148112-LCNI-5            MALAWI                         Other             0        7     46
2         6 months    ki1148112-LCNI-5            MALAWI                         Other             1        3     46
2         24 months   ki1148112-LCNI-5            MALAWI                         Control           0        3     25
2         24 months   ki1148112-LCNI-5            MALAWI                         Control           1        1     25
2         24 months   ki1148112-LCNI-5            MALAWI                         LNS               0       13     25
2         24 months   ki1148112-LCNI-5            MALAWI                         LNS               1        3     25
2         24 months   ki1148112-LCNI-5            MALAWI                         Other             0        4     25
2         24 months   ki1148112-LCNI-5            MALAWI                         Other             1        1     25
3         6 months    ki1148112-LCNI-5            MALAWI                         Control           0        3     26
3         6 months    ki1148112-LCNI-5            MALAWI                         Control           1        3     26
3         6 months    ki1148112-LCNI-5            MALAWI                         LNS               0       10     26
3         6 months    ki1148112-LCNI-5            MALAWI                         LNS               1        3     26
3         6 months    ki1148112-LCNI-5            MALAWI                         Other             0        2     26
3         6 months    ki1148112-LCNI-5            MALAWI                         Other             1        5     26
3         24 months   ki1148112-LCNI-5            MALAWI                         Control           0        1     15
3         24 months   ki1148112-LCNI-5            MALAWI                         Control           1        1     15
3         24 months   ki1148112-LCNI-5            MALAWI                         LNS               0        7     15
3         24 months   ki1148112-LCNI-5            MALAWI                         LNS               1        2     15
3         24 months   ki1148112-LCNI-5            MALAWI                         Other             0        1     15
3         24 months   ki1148112-LCNI-5            MALAWI                         Other             1        3     15
4         6 months    ki1148112-LCNI-5            MALAWI                         Control           0        5     39
4         6 months    ki1148112-LCNI-5            MALAWI                         Control           1        5     39
4         6 months    ki1148112-LCNI-5            MALAWI                         LNS               0       12     39
4         6 months    ki1148112-LCNI-5            MALAWI                         LNS               1        8     39
4         6 months    ki1148112-LCNI-5            MALAWI                         Other             0        6     39
4         6 months    ki1148112-LCNI-5            MALAWI                         Other             1        3     39
4         24 months   ki1148112-LCNI-5            MALAWI                         Control           0        4     23
4         24 months   ki1148112-LCNI-5            MALAWI                         Control           1        2     23
4         24 months   ki1148112-LCNI-5            MALAWI                         LNS               0        7     23
4         24 months   ki1148112-LCNI-5            MALAWI                         LNS               1        5     23
4         24 months   ki1148112-LCNI-5            MALAWI                         Other             0        4     23
4         24 months   ki1148112-LCNI-5            MALAWI                         Other             1        1     23
5         6 months    ki1148112-LCNI-5            MALAWI                         Control           0        6     44
5         6 months    ki1148112-LCNI-5            MALAWI                         Control           1        6     44
5         6 months    ki1148112-LCNI-5            MALAWI                         LNS               0       15     44
5         6 months    ki1148112-LCNI-5            MALAWI                         LNS               1        6     44
5         6 months    ki1148112-LCNI-5            MALAWI                         Other             0        7     44
5         6 months    ki1148112-LCNI-5            MALAWI                         Other             1        4     44
5         24 months   ki1148112-LCNI-5            MALAWI                         Control           0        4     27
5         24 months   ki1148112-LCNI-5            MALAWI                         Control           1        4     27
5         24 months   ki1148112-LCNI-5            MALAWI                         LNS               0        7     27
5         24 months   ki1148112-LCNI-5            MALAWI                         LNS               1        4     27
5         24 months   ki1148112-LCNI-5            MALAWI                         Other             0        7     27
5         24 months   ki1148112-LCNI-5            MALAWI                         Other             1        1     27
6         6 months    ki1148112-LCNI-5            MALAWI                         Control           0        7     34
6         6 months    ki1148112-LCNI-5            MALAWI                         Control           1        3     34
6         6 months    ki1148112-LCNI-5            MALAWI                         LNS               0        9     34
6         6 months    ki1148112-LCNI-5            MALAWI                         LNS               1        7     34
6         6 months    ki1148112-LCNI-5            MALAWI                         Other             0        3     34
6         6 months    ki1148112-LCNI-5            MALAWI                         Other             1        5     34
6         24 months   ki1148112-LCNI-5            MALAWI                         Control           0        5     20
6         24 months   ki1148112-LCNI-5            MALAWI                         Control           1        3     20
6         24 months   ki1148112-LCNI-5            MALAWI                         LNS               0        2     20
6         24 months   ki1148112-LCNI-5            MALAWI                         LNS               1        6     20
6         24 months   ki1148112-LCNI-5            MALAWI                         Other             0        1     20
6         24 months   ki1148112-LCNI-5            MALAWI                         Other             1        3     20
12        Birth       kiGH5241-JiVitA-3           BANGLADESH                     Control           0      660   2226
12        Birth       kiGH5241-JiVitA-3           BANGLADESH                     Control           1      411   2226
12        Birth       kiGH5241-JiVitA-3           BANGLADESH                     Maternal          0      749   2226
12        Birth       kiGH5241-JiVitA-3           BANGLADESH                     Maternal          1      406   2226
12        6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control           0      557   1581
12        6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control           1      214   1581
12        6 months    kiGH5241-JiVitA-3           BANGLADESH                     Maternal          0      601   1581
12        6 months    kiGH5241-JiVitA-3           BANGLADESH                     Maternal          1      209   1581
11        Birth       kiGH5241-JiVitA-3           BANGLADESH                     Control           0      662   2180
11        Birth       kiGH5241-JiVitA-3           BANGLADESH                     Control           1      436   2180
11        Birth       kiGH5241-JiVitA-3           BANGLADESH                     Maternal          0      704   2180
11        Birth       kiGH5241-JiVitA-3           BANGLADESH                     Maternal          1      378   2180
11        6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control           0      599   1746
11        6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control           1      264   1746
11        6 months    kiGH5241-JiVitA-3           BANGLADESH                     Maternal          0      641   1746
11        6 months    kiGH5241-JiVitA-3           BANGLADESH                     Maternal          1      242   1746
1         Birth       kiGH5241-JiVitA-3           BANGLADESH                     Control           0      587   1883
1         Birth       kiGH5241-JiVitA-3           BANGLADESH                     Control           1      335   1883
1         Birth       kiGH5241-JiVitA-3           BANGLADESH                     Maternal          0      618   1883
1         Birth       kiGH5241-JiVitA-3           BANGLADESH                     Maternal          1      343   1883
1         6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control           0      490   1332
1         6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control           1      175   1332
1         6 months    kiGH5241-JiVitA-3           BANGLADESH                     Maternal          0      506   1332
1         6 months    kiGH5241-JiVitA-3           BANGLADESH                     Maternal          1      161   1332
4         Birth       kiGH5241-JiVitA-3           BANGLADESH                     Control           0      461   1340
4         Birth       kiGH5241-JiVitA-3           BANGLADESH                     Control           1      192   1340
4         Birth       kiGH5241-JiVitA-3           BANGLADESH                     Maternal          0      498   1340
4         Birth       kiGH5241-JiVitA-3           BANGLADESH                     Maternal          1      189   1340
10        Birth       kiGH5241-JiVitA-3           BANGLADESH                     Control           0      691   2129
10        Birth       kiGH5241-JiVitA-3           BANGLADESH                     Control           1      385   2129
10        Birth       kiGH5241-JiVitA-3           BANGLADESH                     Maternal          0      712   2129
10        Birth       kiGH5241-JiVitA-3           BANGLADESH                     Maternal          1      341   2129
10        6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control           0      569   1665
10        6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control           1      235   1665
10        6 months    kiGH5241-JiVitA-3           BANGLADESH                     Maternal          0      649   1665
10        6 months    kiGH5241-JiVitA-3           BANGLADESH                     Maternal          1      212   1665
9         Birth       kiGH5241-JiVitA-3           BANGLADESH                     Control           0      665   1870
9         Birth       kiGH5241-JiVitA-3           BANGLADESH                     Control           1      304   1870
9         Birth       kiGH5241-JiVitA-3           BANGLADESH                     Maternal          0      652   1870
9         Birth       kiGH5241-JiVitA-3           BANGLADESH                     Maternal          1      249   1870
4         6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control           0      435   1169
4         6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control           1      151   1169
4         6 months    kiGH5241-JiVitA-3           BANGLADESH                     Maternal          0      463   1169
4         6 months    kiGH5241-JiVitA-3           BANGLADESH                     Maternal          1      120   1169
6         Birth       kiGH5241-JiVitA-3           BANGLADESH                     Control           0      351    995
6         Birth       kiGH5241-JiVitA-3           BANGLADESH                     Control           1      155    995
6         Birth       kiGH5241-JiVitA-3           BANGLADESH                     Maternal          0      369    995
6         Birth       kiGH5241-JiVitA-3           BANGLADESH                     Maternal          1      120    995
6         6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control           0      446   1206
6         6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control           1      148   1206
6         6 months    kiGH5241-JiVitA-3           BANGLADESH                     Maternal          0      482   1206
6         6 months    kiGH5241-JiVitA-3           BANGLADESH                     Maternal          1      130   1206
7         Birth       kiGH5241-JiVitA-3           BANGLADESH                     Control           0      374   1078
7         Birth       kiGH5241-JiVitA-3           BANGLADESH                     Control           1      147   1078
7         Birth       kiGH5241-JiVitA-3           BANGLADESH                     Maternal          0      394   1078
7         Birth       kiGH5241-JiVitA-3           BANGLADESH                     Maternal          1      163   1078
7         6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control           0      468   1259
7         6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control           1      142   1259
7         6 months    kiGH5241-JiVitA-3           BANGLADESH                     Maternal          0      476   1259
7         6 months    kiGH5241-JiVitA-3           BANGLADESH                     Maternal          1      173   1259
5         Birth       kiGH5241-JiVitA-3           BANGLADESH                     Control           0      345    960
5         Birth       kiGH5241-JiVitA-3           BANGLADESH                     Control           1      149    960
5         Birth       kiGH5241-JiVitA-3           BANGLADESH                     Maternal          0      330    960
5         Birth       kiGH5241-JiVitA-3           BANGLADESH                     Maternal          1      136    960
5         6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control           0      421   1113
5         6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control           1      152   1113
5         6 months    kiGH5241-JiVitA-3           BANGLADESH                     Maternal          0      413   1113
5         6 months    kiGH5241-JiVitA-3           BANGLADESH                     Maternal          1      127   1113
9         6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control           0      621   1610
9         6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control           1      182   1610
9         6 months    kiGH5241-JiVitA-3           BANGLADESH                     Maternal          0      623   1610
9         6 months    kiGH5241-JiVitA-3           BANGLADESH                     Maternal          1      184   1610
8         6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control           0      571   1520
8         6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control           1      186   1520
8         6 months    kiGH5241-JiVitA-3           BANGLADESH                     Maternal          0      577   1520
8         6 months    kiGH5241-JiVitA-3           BANGLADESH                     Maternal          1      186   1520
8         Birth       kiGH5241-JiVitA-3           BANGLADESH                     Control           0      531   1518
8         Birth       kiGH5241-JiVitA-3           BANGLADESH                     Control           1      260   1518
8         Birth       kiGH5241-JiVitA-3           BANGLADESH                     Maternal          0      513   1518
8         Birth       kiGH5241-JiVitA-3           BANGLADESH                     Maternal          1      214   1518
3         Birth       kiGH5241-JiVitA-3           BANGLADESH                     Control           0      616   1871
3         Birth       kiGH5241-JiVitA-3           BANGLADESH                     Control           1      289   1871
3         Birth       kiGH5241-JiVitA-3           BANGLADESH                     Maternal          0      717   1871
3         Birth       kiGH5241-JiVitA-3           BANGLADESH                     Maternal          1      249   1871
2         Birth       kiGH5241-JiVitA-3           BANGLADESH                     Control           0      477   1563
2         Birth       kiGH5241-JiVitA-3           BANGLADESH                     Control           1      263   1563
2         Birth       kiGH5241-JiVitA-3           BANGLADESH                     Maternal          0      599   1563
2         Birth       kiGH5241-JiVitA-3           BANGLADESH                     Maternal          1      224   1563
2         6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control           0      409   1152
2         6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control           1      152   1152
2         6 months    kiGH5241-JiVitA-3           BANGLADESH                     Maternal          0      452   1152
2         6 months    kiGH5241-JiVitA-3           BANGLADESH                     Maternal          1      139   1152
3         6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control           0      537   1411
3         6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control           1      174   1411
3         6 months    kiGH5241-JiVitA-3           BANGLADESH                     Maternal          0      544   1411
3         6 months    kiGH5241-JiVitA-3           BANGLADESH                     Maternal          1      156   1411
4         24 months   kiGH5241-JiVitA-3           BANGLADESH                     Maternal          0        1      2
4         24 months   kiGH5241-JiVitA-3           BANGLADESH                     Maternal          1        1      2
9         24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control           0        4     10
9         24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control           1        2     10
9         24 months   kiGH5241-JiVitA-3           BANGLADESH                     Maternal          0        1     10
9         24 months   kiGH5241-JiVitA-3           BANGLADESH                     Maternal          1        3     10
6         24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control           0        3      6
6         24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control           1        0      6
6         24 months   kiGH5241-JiVitA-3           BANGLADESH                     Maternal          0        0      6
6         24 months   kiGH5241-JiVitA-3           BANGLADESH                     Maternal          1        3      6
5         24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control           0        0      6
5         24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control           1        5      6
5         24 months   kiGH5241-JiVitA-3           BANGLADESH                     Maternal          0        1      6
5         24 months   kiGH5241-JiVitA-3           BANGLADESH                     Maternal          1        0      6
11        24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control           0        4     19
11        24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control           1        6     19
11        24 months   kiGH5241-JiVitA-3           BANGLADESH                     Maternal          0        4     19
11        24 months   kiGH5241-JiVitA-3           BANGLADESH                     Maternal          1        5     19
8         24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control           0        0     11
8         24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control           1        2     11
8         24 months   kiGH5241-JiVitA-3           BANGLADESH                     Maternal          0        5     11
8         24 months   kiGH5241-JiVitA-3           BANGLADESH                     Maternal          1        4     11
10        24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control           0        3     11
10        24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control           1        2     11
10        24 months   kiGH5241-JiVitA-3           BANGLADESH                     Maternal          0        1     11
10        24 months   kiGH5241-JiVitA-3           BANGLADESH                     Maternal          1        5     11
3         24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control           0        1      7
3         24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control           1        2      7
3         24 months   kiGH5241-JiVitA-3           BANGLADESH                     Maternal          0        2      7
3         24 months   kiGH5241-JiVitA-3           BANGLADESH                     Maternal          1        2      7
7         24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control           0        4     12
7         24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control           1        1     12
7         24 months   kiGH5241-JiVitA-3           BANGLADESH                     Maternal          0        4     12
7         24 months   kiGH5241-JiVitA-3           BANGLADESH                     Maternal          1        3     12
2         24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control           0        2      4
2         24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control           1        1      4
2         24 months   kiGH5241-JiVitA-3           BANGLADESH                     Maternal          0        1      4
2         24 months   kiGH5241-JiVitA-3           BANGLADESH                     Maternal          1        0      4
12        24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control           0        3      6
12        24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control           1        0      6
12        24 months   kiGH5241-JiVitA-3           BANGLADESH                     Maternal          0        0      6
12        24 months   kiGH5241-JiVitA-3           BANGLADESH                     Maternal          1        3      6
1         24 months   kiGH5241-JiVitA-3           BANGLADESH                     Maternal          0        3      4
1         24 months   kiGH5241-JiVitA-3           BANGLADESH                     Maternal          1        1      4
7         6 months    kiGH5241-JiVitA-4           BANGLADESH                     Control           0      104    518
7         6 months    kiGH5241-JiVitA-4           BANGLADESH                     Control           1       37    518
7         6 months    kiGH5241-JiVitA-4           BANGLADESH                     LNS               0       94    518
7         6 months    kiGH5241-JiVitA-4           BANGLADESH                     LNS               1       42    518
7         6 months    kiGH5241-JiVitA-4           BANGLADESH                     Other             0      169    518
7         6 months    kiGH5241-JiVitA-4           BANGLADESH                     Other             1       72    518
3         6 months    kiGH5241-JiVitA-4           BANGLADESH                     Control           0      188    962
3         6 months    kiGH5241-JiVitA-4           BANGLADESH                     Control           1       63    962
3         6 months    kiGH5241-JiVitA-4           BANGLADESH                     LNS               0      210    962
3         6 months    kiGH5241-JiVitA-4           BANGLADESH                     LNS               1       55    962
3         6 months    kiGH5241-JiVitA-4           BANGLADESH                     Other             0      319    962
3         6 months    kiGH5241-JiVitA-4           BANGLADESH                     Other             1      127    962
2         Birth       kiGH5241-JiVitA-4           BANGLADESH                     Control           0       27    135
2         Birth       kiGH5241-JiVitA-4           BANGLADESH                     Control           1        8    135
2         Birth       kiGH5241-JiVitA-4           BANGLADESH                     LNS               0       27    135
2         Birth       kiGH5241-JiVitA-4           BANGLADESH                     LNS               1       11    135
2         Birth       kiGH5241-JiVitA-4           BANGLADESH                     Other             0       43    135
2         Birth       kiGH5241-JiVitA-4           BANGLADESH                     Other             1       19    135
2         6 months    kiGH5241-JiVitA-4           BANGLADESH                     Control           0      101    544
2         6 months    kiGH5241-JiVitA-4           BANGLADESH                     Control           1       30    544
2         6 months    kiGH5241-JiVitA-4           BANGLADESH                     LNS               0      120    544
2         6 months    kiGH5241-JiVitA-4           BANGLADESH                     LNS               1       40    544
2         6 months    kiGH5241-JiVitA-4           BANGLADESH                     Other             0      186    544
2         6 months    kiGH5241-JiVitA-4           BANGLADESH                     Other             1       67    544
6         6 months    kiGH5241-JiVitA-4           BANGLADESH                     Control           0       88    439
6         6 months    kiGH5241-JiVitA-4           BANGLADESH                     Control           1       26    439
6         6 months    kiGH5241-JiVitA-4           BANGLADESH                     LNS               0       91    439
6         6 months    kiGH5241-JiVitA-4           BANGLADESH                     LNS               1       32    439
6         6 months    kiGH5241-JiVitA-4           BANGLADESH                     Other             0      155    439
6         6 months    kiGH5241-JiVitA-4           BANGLADESH                     Other             1       47    439
5         6 months    kiGH5241-JiVitA-4           BANGLADESH                     Control           0      132    600
5         6 months    kiGH5241-JiVitA-4           BANGLADESH                     Control           1       44    600
5         6 months    kiGH5241-JiVitA-4           BANGLADESH                     LNS               0      125    600
5         6 months    kiGH5241-JiVitA-4           BANGLADESH                     LNS               1       41    600
5         6 months    kiGH5241-JiVitA-4           BANGLADESH                     Other             0      196    600
5         6 months    kiGH5241-JiVitA-4           BANGLADESH                     Other             1       62    600
10        6 months    kiGH5241-JiVitA-4           BANGLADESH                     Control           0       29    126
10        6 months    kiGH5241-JiVitA-4           BANGLADESH                     Control           1        8    126
10        6 months    kiGH5241-JiVitA-4           BANGLADESH                     LNS               0       27    126
10        6 months    kiGH5241-JiVitA-4           BANGLADESH                     LNS               1        5    126
10        6 months    kiGH5241-JiVitA-4           BANGLADESH                     Other             0       46    126
10        6 months    kiGH5241-JiVitA-4           BANGLADESH                     Other             1       11    126
4         Birth       kiGH5241-JiVitA-4           BANGLADESH                     Control           0       23    159
4         Birth       kiGH5241-JiVitA-4           BANGLADESH                     Control           1       12    159
4         Birth       kiGH5241-JiVitA-4           BANGLADESH                     LNS               0       28    159
4         Birth       kiGH5241-JiVitA-4           BANGLADESH                     LNS               1       11    159
4         Birth       kiGH5241-JiVitA-4           BANGLADESH                     Other             0       63    159
4         Birth       kiGH5241-JiVitA-4           BANGLADESH                     Other             1       22    159
4         6 months    kiGH5241-JiVitA-4           BANGLADESH                     Control           0      139    731
4         6 months    kiGH5241-JiVitA-4           BANGLADESH                     Control           1       51    731
4         6 months    kiGH5241-JiVitA-4           BANGLADESH                     LNS               0      150    731
4         6 months    kiGH5241-JiVitA-4           BANGLADESH                     LNS               1       48    731
4         6 months    kiGH5241-JiVitA-4           BANGLADESH                     Other             0      240    731
4         6 months    kiGH5241-JiVitA-4           BANGLADESH                     Other             1      103    731
4         24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control           0       14    124
4         24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control           1       18    124
4         24 months   kiGH5241-JiVitA-4           BANGLADESH                     LNS               0       18    124
4         24 months   kiGH5241-JiVitA-4           BANGLADESH                     LNS               1       11    124
4         24 months   kiGH5241-JiVitA-4           BANGLADESH                     Other             0       35    124
4         24 months   kiGH5241-JiVitA-4           BANGLADESH                     Other             1       28    124
7         Birth       kiGH5241-JiVitA-4           BANGLADESH                     Control           0       22     73
7         Birth       kiGH5241-JiVitA-4           BANGLADESH                     Control           1        4     73
7         Birth       kiGH5241-JiVitA-4           BANGLADESH                     LNS               0       13     73
7         Birth       kiGH5241-JiVitA-4           BANGLADESH                     LNS               1        6     73
7         Birth       kiGH5241-JiVitA-4           BANGLADESH                     Other             0       22     73
7         Birth       kiGH5241-JiVitA-4           BANGLADESH                     Other             1        6     73
2         24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control           0       47    304
2         24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control           1       30    304
2         24 months   kiGH5241-JiVitA-4           BANGLADESH                     LNS               0       50    304
2         24 months   kiGH5241-JiVitA-4           BANGLADESH                     LNS               1       45    304
2         24 months   kiGH5241-JiVitA-4           BANGLADESH                     Other             0       76    304
2         24 months   kiGH5241-JiVitA-4           BANGLADESH                     Other             1       56    304
8         6 months    kiGH5241-JiVitA-4           BANGLADESH                     Control           0       99    521
8         6 months    kiGH5241-JiVitA-4           BANGLADESH                     Control           1       28    521
8         6 months    kiGH5241-JiVitA-4           BANGLADESH                     LNS               0      108    521
8         6 months    kiGH5241-JiVitA-4           BANGLADESH                     LNS               1       33    521
8         6 months    kiGH5241-JiVitA-4           BANGLADESH                     Other             0      190    521
8         6 months    kiGH5241-JiVitA-4           BANGLADESH                     Other             1       63    521
6         Birth       kiGH5241-JiVitA-4           BANGLADESH                     Control           0       18     90
6         Birth       kiGH5241-JiVitA-4           BANGLADESH                     Control           1       12     90
6         Birth       kiGH5241-JiVitA-4           BANGLADESH                     LNS               0       17     90
6         Birth       kiGH5241-JiVitA-4           BANGLADESH                     LNS               1       10     90
6         Birth       kiGH5241-JiVitA-4           BANGLADESH                     Other             0       24     90
6         Birth       kiGH5241-JiVitA-4           BANGLADESH                     Other             1        9     90
3         24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control           0       24    217
3         24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control           1       28    217
3         24 months   kiGH5241-JiVitA-4           BANGLADESH                     LNS               0       39    217
3         24 months   kiGH5241-JiVitA-4           BANGLADESH                     LNS               1       20    217
3         24 months   kiGH5241-JiVitA-4           BANGLADESH                     Other             0       65    217
3         24 months   kiGH5241-JiVitA-4           BANGLADESH                     Other             1       41    217
7         24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control           0       23    108
7         24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control           1       16    108
7         24 months   kiGH5241-JiVitA-4           BANGLADESH                     LNS               0       13    108
7         24 months   kiGH5241-JiVitA-4           BANGLADESH                     LNS               1        8    108
7         24 months   kiGH5241-JiVitA-4           BANGLADESH                     Other             0       28    108
7         24 months   kiGH5241-JiVitA-4           BANGLADESH                     Other             1       20    108
3         Birth       kiGH5241-JiVitA-4           BANGLADESH                     Control           0       32    175
3         Birth       kiGH5241-JiVitA-4           BANGLADESH                     Control           1       17    175
3         Birth       kiGH5241-JiVitA-4           BANGLADESH                     LNS               0       27    175
3         Birth       kiGH5241-JiVitA-4           BANGLADESH                     LNS               1       25    175
3         Birth       kiGH5241-JiVitA-4           BANGLADESH                     Other             0       51    175
3         Birth       kiGH5241-JiVitA-4           BANGLADESH                     Other             1       23    175
9         6 months    kiGH5241-JiVitA-4           BANGLADESH                     Control           0       71    357
9         6 months    kiGH5241-JiVitA-4           BANGLADESH                     Control           1       12    357
9         6 months    kiGH5241-JiVitA-4           BANGLADESH                     LNS               0       78    357
9         6 months    kiGH5241-JiVitA-4           BANGLADESH                     LNS               1       25    357
9         6 months    kiGH5241-JiVitA-4           BANGLADESH                     Other             0      127    357
9         6 months    kiGH5241-JiVitA-4           BANGLADESH                     Other             1       44    357
9         Birth       kiGH5241-JiVitA-4           BANGLADESH                     Control           0        3     33
9         Birth       kiGH5241-JiVitA-4           BANGLADESH                     Control           1        2     33
9         Birth       kiGH5241-JiVitA-4           BANGLADESH                     LNS               0        9     33
9         Birth       kiGH5241-JiVitA-4           BANGLADESH                     LNS               1        3     33
9         Birth       kiGH5241-JiVitA-4           BANGLADESH                     Other             0       10     33
9         Birth       kiGH5241-JiVitA-4           BANGLADESH                     Other             1        6     33
5         Birth       kiGH5241-JiVitA-4           BANGLADESH                     Control           0       24    121
5         Birth       kiGH5241-JiVitA-4           BANGLADESH                     Control           1       13    121
5         Birth       kiGH5241-JiVitA-4           BANGLADESH                     LNS               0       25    121
5         Birth       kiGH5241-JiVitA-4           BANGLADESH                     LNS               1        5    121
5         Birth       kiGH5241-JiVitA-4           BANGLADESH                     Other             0       40    121
5         Birth       kiGH5241-JiVitA-4           BANGLADESH                     Other             1       14    121
9         24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control           0       13     80
9         24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control           1        9     80
9         24 months   kiGH5241-JiVitA-4           BANGLADESH                     LNS               0       16     80
9         24 months   kiGH5241-JiVitA-4           BANGLADESH                     LNS               1        5     80
9         24 months   kiGH5241-JiVitA-4           BANGLADESH                     Other             0       22     80
9         24 months   kiGH5241-JiVitA-4           BANGLADESH                     Other             1       15     80
10        Birth       kiGH5241-JiVitA-4           BANGLADESH                     Control           0        3      8
10        Birth       kiGH5241-JiVitA-4           BANGLADESH                     Control           1        0      8
10        Birth       kiGH5241-JiVitA-4           BANGLADESH                     LNS               0        1      8
10        Birth       kiGH5241-JiVitA-4           BANGLADESH                     LNS               1        0      8
10        Birth       kiGH5241-JiVitA-4           BANGLADESH                     Other             0        2      8
10        Birth       kiGH5241-JiVitA-4           BANGLADESH                     Other             1        2      8
8         24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control           0       14    100
8         24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control           1        6    100
8         24 months   kiGH5241-JiVitA-4           BANGLADESH                     LNS               0       15    100
8         24 months   kiGH5241-JiVitA-4           BANGLADESH                     LNS               1       11    100
8         24 months   kiGH5241-JiVitA-4           BANGLADESH                     Other             0       34    100
8         24 months   kiGH5241-JiVitA-4           BANGLADESH                     Other             1       20    100
8         Birth       kiGH5241-JiVitA-4           BANGLADESH                     Control           0        3     28
8         Birth       kiGH5241-JiVitA-4           BANGLADESH                     Control           1        1     28
8         Birth       kiGH5241-JiVitA-4           BANGLADESH                     LNS               0        6     28
8         Birth       kiGH5241-JiVitA-4           BANGLADESH                     LNS               1        3     28
8         Birth       kiGH5241-JiVitA-4           BANGLADESH                     Other             0       12     28
8         Birth       kiGH5241-JiVitA-4           BANGLADESH                     Other             1        3     28
6         24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control           0        7     61
6         24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control           1        3     61
6         24 months   kiGH5241-JiVitA-4           BANGLADESH                     LNS               0       13     61
6         24 months   kiGH5241-JiVitA-4           BANGLADESH                     LNS               1        9     61
6         24 months   kiGH5241-JiVitA-4           BANGLADESH                     Other             0       16     61
6         24 months   kiGH5241-JiVitA-4           BANGLADESH                     Other             1       13     61
5         24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control           0       17     75
5         24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control           1        7     75
5         24 months   kiGH5241-JiVitA-4           BANGLADESH                     LNS               0       15     75
5         24 months   kiGH5241-JiVitA-4           BANGLADESH                     LNS               1        9     75
5         24 months   kiGH5241-JiVitA-4           BANGLADESH                     Other             0       17     75
5         24 months   kiGH5241-JiVitA-4           BANGLADESH                     Other             1       10     75
10        24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control           0        5     27
10        24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control           1        5     27
10        24 months   kiGH5241-JiVitA-4           BANGLADESH                     LNS               0        5     27
10        24 months   kiGH5241-JiVitA-4           BANGLADESH                     LNS               1        1     27
10        24 months   kiGH5241-JiVitA-4           BANGLADESH                     Other             0        8     27
10        24 months   kiGH5241-JiVitA-4           BANGLADESH                     Other             1        3     27
7         6 months    iLiNS_DYADM_LNS             MALAWI                         Control           0       13     43
7         6 months    iLiNS_DYADM_LNS             MALAWI                         Control           1        3     43
7         6 months    iLiNS_DYADM_LNS             MALAWI                         LNS               0       22     43
7         6 months    iLiNS_DYADM_LNS             MALAWI                         LNS               1        5     43
8         6 months    iLiNS_DYADM_LNS             MALAWI                         Control           0       20     62
8         6 months    iLiNS_DYADM_LNS             MALAWI                         Control           1       10     62
8         6 months    iLiNS_DYADM_LNS             MALAWI                         LNS               0       23     62
8         6 months    iLiNS_DYADM_LNS             MALAWI                         LNS               1        9     62
7         Birth       iLiNS_DYADM_LNS             MALAWI                         LNS               1        1      1
9         6 months    iLiNS_DYADM_LNS             MALAWI                         Control           0       24     63
9         6 months    iLiNS_DYADM_LNS             MALAWI                         Control           1       14     63
9         6 months    iLiNS_DYADM_LNS             MALAWI                         LNS               0       20     63
9         6 months    iLiNS_DYADM_LNS             MALAWI                         LNS               1        5     63
10        6 months    iLiNS_DYADM_LNS             MALAWI                         Control           0       25     66
10        6 months    iLiNS_DYADM_LNS             MALAWI                         Control           1        4     66
10        6 months    iLiNS_DYADM_LNS             MALAWI                         LNS               0       32     66
10        6 months    iLiNS_DYADM_LNS             MALAWI                         LNS               1        5     66
10        24 months   iLiNS_DYADM_LNS             MALAWI                         LNS               0        1      1
11        6 months    iLiNS_DYADM_LNS             MALAWI                         Control           0       32     74
11        6 months    iLiNS_DYADM_LNS             MALAWI                         Control           1        6     74
11        6 months    iLiNS_DYADM_LNS             MALAWI                         LNS               0       28     74
11        6 months    iLiNS_DYADM_LNS             MALAWI                         LNS               1        8     74
11        24 months   iLiNS_DYADM_LNS             MALAWI                         Control           0        1      3
11        24 months   iLiNS_DYADM_LNS             MALAWI                         Control           1        0      3
11        24 months   iLiNS_DYADM_LNS             MALAWI                         LNS               0        1      3
11        24 months   iLiNS_DYADM_LNS             MALAWI                         LNS               1        1      3
9         24 months   iLiNS_DYADM_LNS             MALAWI                         Control           0        1      2
9         24 months   iLiNS_DYADM_LNS             MALAWI                         LNS               0        1      2
12        6 months    iLiNS_DYADM_LNS             MALAWI                         Control           0       35     93
12        6 months    iLiNS_DYADM_LNS             MALAWI                         Control           1       12     93
12        6 months    iLiNS_DYADM_LNS             MALAWI                         LNS               0       37     93
12        6 months    iLiNS_DYADM_LNS             MALAWI                         LNS               1        9     93
12        24 months   iLiNS_DYADM_LNS             MALAWI                         LNS               0        2      3
12        24 months   iLiNS_DYADM_LNS             MALAWI                         LNS               1        1      3
1         6 months    iLiNS_DYADM_LNS             MALAWI                         Control           0       29     55
1         6 months    iLiNS_DYADM_LNS             MALAWI                         Control           1        4     55
1         6 months    iLiNS_DYADM_LNS             MALAWI                         LNS               0       17     55
1         6 months    iLiNS_DYADM_LNS             MALAWI                         LNS               1        5     55
2         6 months    iLiNS_DYADM_LNS             MALAWI                         Control           0       23     42
2         6 months    iLiNS_DYADM_LNS             MALAWI                         Control           1        6     42
2         6 months    iLiNS_DYADM_LNS             MALAWI                         LNS               0       11     42
2         6 months    iLiNS_DYADM_LNS             MALAWI                         LNS               1        2     42
1         24 months   iLiNS_DYADM_LNS             MALAWI                         Control           0        1      2
1         24 months   iLiNS_DYADM_LNS             MALAWI                         LNS               0        1      2
3         6 months    iLiNS_DYADM_LNS             MALAWI                         Control           0       15     57
3         6 months    iLiNS_DYADM_LNS             MALAWI                         Control           1        3     57
3         6 months    iLiNS_DYADM_LNS             MALAWI                         LNS               0       29     57
3         6 months    iLiNS_DYADM_LNS             MALAWI                         LNS               1       10     57
3         24 months   iLiNS_DYADM_LNS             MALAWI                         LNS               0        2      4
3         24 months   iLiNS_DYADM_LNS             MALAWI                         LNS               1        2      4
2         24 months   iLiNS_DYADM_LNS             MALAWI                         Control           1        1      2
2         24 months   iLiNS_DYADM_LNS             MALAWI                         LNS               1        1      2
4         6 months    iLiNS_DYADM_LNS             MALAWI                         Control           0       18     42
4         6 months    iLiNS_DYADM_LNS             MALAWI                         Control           1        6     42
4         6 months    iLiNS_DYADM_LNS             MALAWI                         LNS               0       11     42
4         6 months    iLiNS_DYADM_LNS             MALAWI                         LNS               1        7     42
5         6 months    iLiNS_DYADM_LNS             MALAWI                         Control           0       18     43
5         6 months    iLiNS_DYADM_LNS             MALAWI                         Control           1        6     43
5         6 months    iLiNS_DYADM_LNS             MALAWI                         LNS               0       14     43
5         6 months    iLiNS_DYADM_LNS             MALAWI                         LNS               1        5     43
4         24 months   iLiNS_DYADM_LNS             MALAWI                         Control           0        1      6
4         24 months   iLiNS_DYADM_LNS             MALAWI                         Control           1        2      6
4         24 months   iLiNS_DYADM_LNS             MALAWI                         LNS               0        2      6
4         24 months   iLiNS_DYADM_LNS             MALAWI                         LNS               1        1      6
6         6 months    iLiNS_DYADM_LNS             MALAWI                         Control           0       17     43
6         6 months    iLiNS_DYADM_LNS             MALAWI                         Control           1        8     43
6         6 months    iLiNS_DYADM_LNS             MALAWI                         LNS               0       15     43
6         6 months    iLiNS_DYADM_LNS             MALAWI                         LNS               1        3     43
5         24 months   iLiNS_DYADM_LNS             MALAWI                         Control           0        1      5
5         24 months   iLiNS_DYADM_LNS             MALAWI                         Control           1        3      5
5         24 months   iLiNS_DYADM_LNS             MALAWI                         LNS               0        1      5
5         24 months   iLiNS_DYADM_LNS             MALAWI                         LNS               1        0      5
6         24 months   iLiNS_DYADM_LNS             MALAWI                         LNS               0        1      3
6         24 months   iLiNS_DYADM_LNS             MALAWI                         LNS               1        2      3
8         24 months   iLiNS_DYADM_LNS             MALAWI                         Control           0        0      3
8         24 months   iLiNS_DYADM_LNS             MALAWI                         Control           1        1      3
8         24 months   iLiNS_DYADM_LNS             MALAWI                         LNS               0        2      3
8         24 months   iLiNS_DYADM_LNS             MALAWI                         LNS               1        0      3
7         24 months   iLiNS_DYADM_LNS             MALAWI                         LNS               0        1      1


The following strata were considered:

* brthmon: 1, agecat: 24 months, studyid: iLiNS_DYADM_LNS, country: MALAWI
* brthmon: 1, agecat: 24 months, studyid: ki1000107-Serrinha-VitA, country: BRAZIL
* brthmon: 1, agecat: 24 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* brthmon: 1, agecat: 24 months, studyid: ki1000111-WASH-Kenya, country: KENYA
* brthmon: 1, agecat: 24 months, studyid: ki1000304-EU, country: INDIA
* brthmon: 1, agecat: 24 months, studyid: ki1000304-Vitamin-B12, country: INDIA
* brthmon: 1, agecat: 24 months, studyid: ki1000304-ZnMort, country: INDIA
* brthmon: 1, agecat: 24 months, studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO
* brthmon: 1, agecat: 24 months, studyid: ki1119695-PROBIT, country: BELARUS
* brthmon: 1, agecat: 24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* brthmon: 1, agecat: 24 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* brthmon: 1, agecat: 24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* brthmon: 1, agecat: 24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* brthmon: 1, agecat: 24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* brthmon: 1, agecat: 6 months, studyid: iLiNS_DYADM_LNS, country: MALAWI
* brthmon: 1, agecat: 6 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* brthmon: 1, agecat: 6 months, studyid: ki1000111-WASH-Kenya, country: KENYA
* brthmon: 1, agecat: 6 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* brthmon: 1, agecat: 6 months, studyid: ki1000304-EU, country: INDIA
* brthmon: 1, agecat: 6 months, studyid: ki1000304-VITAMIN-A, country: INDIA
* brthmon: 1, agecat: 6 months, studyid: ki1000304-Vitamin-B12, country: INDIA
* brthmon: 1, agecat: 6 months, studyid: ki1000304-ZnMort, country: INDIA
* brthmon: 1, agecat: 6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* brthmon: 1, agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* brthmon: 1, agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* brthmon: 1, agecat: 6 months, studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO
* brthmon: 1, agecat: 6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* brthmon: 1, agecat: 6 months, studyid: ki1119695-PROBIT, country: BELARUS
* brthmon: 1, agecat: 6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* brthmon: 1, agecat: 6 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* brthmon: 1, agecat: 6 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* brthmon: 1, agecat: 6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* brthmon: 1, agecat: 6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* brthmon: 1, agecat: Birth, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* brthmon: 1, agecat: Birth, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* brthmon: 1, agecat: Birth, studyid: ki1119695-PROBIT, country: BELARUS
* brthmon: 1, agecat: Birth, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* brthmon: 1, agecat: Birth, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* brthmon: 10, agecat: 24 months, studyid: iLiNS_DYADM_LNS, country: MALAWI
* brthmon: 10, agecat: 24 months, studyid: ki1000107-Serrinha-VitA, country: BRAZIL
* brthmon: 10, agecat: 24 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* brthmon: 10, agecat: 24 months, studyid: ki1000111-WASH-Kenya, country: KENYA
* brthmon: 10, agecat: 24 months, studyid: ki1000304-EU, country: INDIA
* brthmon: 10, agecat: 24 months, studyid: ki1000304-Vitamin-B12, country: INDIA
* brthmon: 10, agecat: 24 months, studyid: ki1000304-ZnMort, country: INDIA
* brthmon: 10, agecat: 24 months, studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO
* brthmon: 10, agecat: 24 months, studyid: ki1119695-PROBIT, country: BELARUS
* brthmon: 10, agecat: 24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* brthmon: 10, agecat: 24 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* brthmon: 10, agecat: 24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* brthmon: 10, agecat: 24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* brthmon: 10, agecat: 24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* brthmon: 10, agecat: 24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* brthmon: 10, agecat: 6 months, studyid: iLiNS_DYADM_LNS, country: MALAWI
* brthmon: 10, agecat: 6 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* brthmon: 10, agecat: 6 months, studyid: ki1000111-WASH-Kenya, country: KENYA
* brthmon: 10, agecat: 6 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* brthmon: 10, agecat: 6 months, studyid: ki1000304-EU, country: INDIA
* brthmon: 10, agecat: 6 months, studyid: ki1000304-VITAMIN-A, country: INDIA
* brthmon: 10, agecat: 6 months, studyid: ki1000304-ZnMort, country: INDIA
* brthmon: 10, agecat: 6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* brthmon: 10, agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* brthmon: 10, agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* brthmon: 10, agecat: 6 months, studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO
* brthmon: 10, agecat: 6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* brthmon: 10, agecat: 6 months, studyid: ki1119695-PROBIT, country: BELARUS
* brthmon: 10, agecat: 6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* brthmon: 10, agecat: 6 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* brthmon: 10, agecat: 6 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* brthmon: 10, agecat: 6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* brthmon: 10, agecat: 6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* brthmon: 10, agecat: 6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* brthmon: 10, agecat: Birth, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* brthmon: 10, agecat: Birth, studyid: ki1119695-PROBIT, country: BELARUS
* brthmon: 10, agecat: Birth, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* brthmon: 10, agecat: Birth, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* brthmon: 10, agecat: Birth, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* brthmon: 11, agecat: 24 months, studyid: iLiNS_DYADM_LNS, country: MALAWI
* brthmon: 11, agecat: 24 months, studyid: ki1000107-Serrinha-VitA, country: BRAZIL
* brthmon: 11, agecat: 24 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* brthmon: 11, agecat: 24 months, studyid: ki1000111-WASH-Kenya, country: KENYA
* brthmon: 11, agecat: 24 months, studyid: ki1000304-EU, country: INDIA
* brthmon: 11, agecat: 24 months, studyid: ki1000304-Vitamin-B12, country: INDIA
* brthmon: 11, agecat: 24 months, studyid: ki1000304-ZnMort, country: INDIA
* brthmon: 11, agecat: 24 months, studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO
* brthmon: 11, agecat: 24 months, studyid: ki1119695-PROBIT, country: BELARUS
* brthmon: 11, agecat: 24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* brthmon: 11, agecat: 24 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* brthmon: 11, agecat: 24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* brthmon: 11, agecat: 24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* brthmon: 11, agecat: 24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* brthmon: 11, agecat: 6 months, studyid: iLiNS_DYADM_LNS, country: MALAWI
* brthmon: 11, agecat: 6 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* brthmon: 11, agecat: 6 months, studyid: ki1000111-WASH-Kenya, country: KENYA
* brthmon: 11, agecat: 6 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* brthmon: 11, agecat: 6 months, studyid: ki1000304-EU, country: INDIA
* brthmon: 11, agecat: 6 months, studyid: ki1000304-VITAMIN-A, country: INDIA
* brthmon: 11, agecat: 6 months, studyid: ki1000304-Vitamin-B12, country: INDIA
* brthmon: 11, agecat: 6 months, studyid: ki1000304-ZnMort, country: INDIA
* brthmon: 11, agecat: 6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* brthmon: 11, agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* brthmon: 11, agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* brthmon: 11, agecat: 6 months, studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO
* brthmon: 11, agecat: 6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* brthmon: 11, agecat: 6 months, studyid: ki1119695-PROBIT, country: BELARUS
* brthmon: 11, agecat: 6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* brthmon: 11, agecat: 6 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* brthmon: 11, agecat: 6 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* brthmon: 11, agecat: 6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* brthmon: 11, agecat: 6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* brthmon: 11, agecat: Birth, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* brthmon: 11, agecat: Birth, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* brthmon: 11, agecat: Birth, studyid: ki1119695-PROBIT, country: BELARUS
* brthmon: 11, agecat: Birth, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* brthmon: 11, agecat: Birth, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* brthmon: 12, agecat: 24 months, studyid: iLiNS_DYADM_LNS, country: MALAWI
* brthmon: 12, agecat: 24 months, studyid: ki1000107-Serrinha-VitA, country: BRAZIL
* brthmon: 12, agecat: 24 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* brthmon: 12, agecat: 24 months, studyid: ki1000111-WASH-Kenya, country: KENYA
* brthmon: 12, agecat: 24 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* brthmon: 12, agecat: 24 months, studyid: ki1000304-EU, country: INDIA
* brthmon: 12, agecat: 24 months, studyid: ki1000304-Vitamin-B12, country: INDIA
* brthmon: 12, agecat: 24 months, studyid: ki1000304-ZnMort, country: INDIA
* brthmon: 12, agecat: 24 months, studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO
* brthmon: 12, agecat: 24 months, studyid: ki1119695-PROBIT, country: BELARUS
* brthmon: 12, agecat: 24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* brthmon: 12, agecat: 24 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* brthmon: 12, agecat: 24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* brthmon: 12, agecat: 24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* brthmon: 12, agecat: 24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* brthmon: 12, agecat: 6 months, studyid: iLiNS_DYADM_LNS, country: MALAWI
* brthmon: 12, agecat: 6 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* brthmon: 12, agecat: 6 months, studyid: ki1000111-WASH-Kenya, country: KENYA
* brthmon: 12, agecat: 6 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* brthmon: 12, agecat: 6 months, studyid: ki1000304-EU, country: INDIA
* brthmon: 12, agecat: 6 months, studyid: ki1000304-VITAMIN-A, country: INDIA
* brthmon: 12, agecat: 6 months, studyid: ki1000304-Vitamin-B12, country: INDIA
* brthmon: 12, agecat: 6 months, studyid: ki1000304-ZnMort, country: INDIA
* brthmon: 12, agecat: 6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* brthmon: 12, agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* brthmon: 12, agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* brthmon: 12, agecat: 6 months, studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO
* brthmon: 12, agecat: 6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* brthmon: 12, agecat: 6 months, studyid: ki1119695-PROBIT, country: BELARUS
* brthmon: 12, agecat: 6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* brthmon: 12, agecat: 6 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* brthmon: 12, agecat: 6 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* brthmon: 12, agecat: 6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* brthmon: 12, agecat: 6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* brthmon: 12, agecat: Birth, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* brthmon: 12, agecat: Birth, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* brthmon: 12, agecat: Birth, studyid: ki1119695-PROBIT, country: BELARUS
* brthmon: 12, agecat: Birth, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* brthmon: 12, agecat: Birth, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* brthmon: 2, agecat: 24 months, studyid: iLiNS_DYADM_LNS, country: MALAWI
* brthmon: 2, agecat: 24 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* brthmon: 2, agecat: 24 months, studyid: ki1000111-WASH-Kenya, country: KENYA
* brthmon: 2, agecat: 24 months, studyid: ki1000304-EU, country: INDIA
* brthmon: 2, agecat: 24 months, studyid: ki1000304-Vitamin-B12, country: INDIA
* brthmon: 2, agecat: 24 months, studyid: ki1000304-ZnMort, country: INDIA
* brthmon: 2, agecat: 24 months, studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO
* brthmon: 2, agecat: 24 months, studyid: ki1119695-PROBIT, country: BELARUS
* brthmon: 2, agecat: 24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* brthmon: 2, agecat: 24 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* brthmon: 2, agecat: 24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* brthmon: 2, agecat: 24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* brthmon: 2, agecat: 24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* brthmon: 2, agecat: 24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* brthmon: 2, agecat: 6 months, studyid: iLiNS_DYADM_LNS, country: MALAWI
* brthmon: 2, agecat: 6 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* brthmon: 2, agecat: 6 months, studyid: ki1000111-WASH-Kenya, country: KENYA
* brthmon: 2, agecat: 6 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* brthmon: 2, agecat: 6 months, studyid: ki1000304-EU, country: INDIA
* brthmon: 2, agecat: 6 months, studyid: ki1000304-VITAMIN-A, country: INDIA
* brthmon: 2, agecat: 6 months, studyid: ki1000304-Vitamin-B12, country: INDIA
* brthmon: 2, agecat: 6 months, studyid: ki1000304-ZnMort, country: INDIA
* brthmon: 2, agecat: 6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* brthmon: 2, agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* brthmon: 2, agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* brthmon: 2, agecat: 6 months, studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO
* brthmon: 2, agecat: 6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* brthmon: 2, agecat: 6 months, studyid: ki1119695-PROBIT, country: BELARUS
* brthmon: 2, agecat: 6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* brthmon: 2, agecat: 6 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* brthmon: 2, agecat: 6 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* brthmon: 2, agecat: 6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* brthmon: 2, agecat: 6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* brthmon: 2, agecat: 6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* brthmon: 2, agecat: Birth, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* brthmon: 2, agecat: Birth, studyid: ki1119695-PROBIT, country: BELARUS
* brthmon: 2, agecat: Birth, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* brthmon: 2, agecat: Birth, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* brthmon: 2, agecat: Birth, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* brthmon: 3, agecat: 24 months, studyid: iLiNS_DYADM_LNS, country: MALAWI
* brthmon: 3, agecat: 24 months, studyid: ki1000107-Serrinha-VitA, country: BRAZIL
* brthmon: 3, agecat: 24 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* brthmon: 3, agecat: 24 months, studyid: ki1000111-WASH-Kenya, country: KENYA
* brthmon: 3, agecat: 24 months, studyid: ki1000304-EU, country: INDIA
* brthmon: 3, agecat: 24 months, studyid: ki1000304-Vitamin-B12, country: INDIA
* brthmon: 3, agecat: 24 months, studyid: ki1000304-ZnMort, country: INDIA
* brthmon: 3, agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* brthmon: 3, agecat: 24 months, studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO
* brthmon: 3, agecat: 24 months, studyid: ki1119695-PROBIT, country: BELARUS
* brthmon: 3, agecat: 24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* brthmon: 3, agecat: 24 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* brthmon: 3, agecat: 24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* brthmon: 3, agecat: 24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* brthmon: 3, agecat: 24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* brthmon: 3, agecat: 24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* brthmon: 3, agecat: 6 months, studyid: iLiNS_DYADM_LNS, country: MALAWI
* brthmon: 3, agecat: 6 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* brthmon: 3, agecat: 6 months, studyid: ki1000111-WASH-Kenya, country: KENYA
* brthmon: 3, agecat: 6 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* brthmon: 3, agecat: 6 months, studyid: ki1000304-EU, country: INDIA
* brthmon: 3, agecat: 6 months, studyid: ki1000304-VITAMIN-A, country: INDIA
* brthmon: 3, agecat: 6 months, studyid: ki1000304-Vitamin-B12, country: INDIA
* brthmon: 3, agecat: 6 months, studyid: ki1000304-ZnMort, country: INDIA
* brthmon: 3, agecat: 6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* brthmon: 3, agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* brthmon: 3, agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* brthmon: 3, agecat: 6 months, studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO
* brthmon: 3, agecat: 6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* brthmon: 3, agecat: 6 months, studyid: ki1119695-PROBIT, country: BELARUS
* brthmon: 3, agecat: 6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* brthmon: 3, agecat: 6 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* brthmon: 3, agecat: 6 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* brthmon: 3, agecat: 6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* brthmon: 3, agecat: 6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* brthmon: 3, agecat: 6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* brthmon: 3, agecat: Birth, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* brthmon: 3, agecat: Birth, studyid: ki1119695-PROBIT, country: BELARUS
* brthmon: 3, agecat: Birth, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* brthmon: 3, agecat: Birth, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* brthmon: 3, agecat: Birth, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* brthmon: 4, agecat: 24 months, studyid: iLiNS_DYADM_LNS, country: MALAWI
* brthmon: 4, agecat: 24 months, studyid: ki1000107-Serrinha-VitA, country: BRAZIL
* brthmon: 4, agecat: 24 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* brthmon: 4, agecat: 24 months, studyid: ki1000111-WASH-Kenya, country: KENYA
* brthmon: 4, agecat: 24 months, studyid: ki1000304-EU, country: INDIA
* brthmon: 4, agecat: 24 months, studyid: ki1000304-Vitamin-B12, country: INDIA
* brthmon: 4, agecat: 24 months, studyid: ki1000304-ZnMort, country: INDIA
* brthmon: 4, agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* brthmon: 4, agecat: 24 months, studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO
* brthmon: 4, agecat: 24 months, studyid: ki1119695-PROBIT, country: BELARUS
* brthmon: 4, agecat: 24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* brthmon: 4, agecat: 24 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* brthmon: 4, agecat: 24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* brthmon: 4, agecat: 24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* brthmon: 4, agecat: 24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* brthmon: 4, agecat: 24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* brthmon: 4, agecat: 6 months, studyid: iLiNS_DYADM_LNS, country: MALAWI
* brthmon: 4, agecat: 6 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* brthmon: 4, agecat: 6 months, studyid: ki1000111-WASH-Kenya, country: KENYA
* brthmon: 4, agecat: 6 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* brthmon: 4, agecat: 6 months, studyid: ki1000304-EU, country: INDIA
* brthmon: 4, agecat: 6 months, studyid: ki1000304-VITAMIN-A, country: INDIA
* brthmon: 4, agecat: 6 months, studyid: ki1000304-Vitamin-B12, country: INDIA
* brthmon: 4, agecat: 6 months, studyid: ki1000304-ZnMort, country: INDIA
* brthmon: 4, agecat: 6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* brthmon: 4, agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* brthmon: 4, agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* brthmon: 4, agecat: 6 months, studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO
* brthmon: 4, agecat: 6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* brthmon: 4, agecat: 6 months, studyid: ki1119695-PROBIT, country: BELARUS
* brthmon: 4, agecat: 6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* brthmon: 4, agecat: 6 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* brthmon: 4, agecat: 6 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* brthmon: 4, agecat: 6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* brthmon: 4, agecat: 6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* brthmon: 4, agecat: 6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* brthmon: 4, agecat: Birth, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* brthmon: 4, agecat: Birth, studyid: ki1119695-PROBIT, country: BELARUS
* brthmon: 4, agecat: Birth, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* brthmon: 4, agecat: Birth, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* brthmon: 4, agecat: Birth, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* brthmon: 5, agecat: 24 months, studyid: iLiNS_DYADM_LNS, country: MALAWI
* brthmon: 5, agecat: 24 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* brthmon: 5, agecat: 24 months, studyid: ki1000111-WASH-Kenya, country: KENYA
* brthmon: 5, agecat: 24 months, studyid: ki1000304-EU, country: INDIA
* brthmon: 5, agecat: 24 months, studyid: ki1000304-Vitamin-B12, country: INDIA
* brthmon: 5, agecat: 24 months, studyid: ki1000304-ZnMort, country: INDIA
* brthmon: 5, agecat: 24 months, studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO
* brthmon: 5, agecat: 24 months, studyid: ki1119695-PROBIT, country: BELARUS
* brthmon: 5, agecat: 24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* brthmon: 5, agecat: 24 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* brthmon: 5, agecat: 24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* brthmon: 5, agecat: 24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* brthmon: 5, agecat: 24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* brthmon: 5, agecat: 24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* brthmon: 5, agecat: 6 months, studyid: iLiNS_DYADM_LNS, country: MALAWI
* brthmon: 5, agecat: 6 months, studyid: ki1000107-Serrinha-VitA, country: BRAZIL
* brthmon: 5, agecat: 6 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* brthmon: 5, agecat: 6 months, studyid: ki1000111-WASH-Kenya, country: KENYA
* brthmon: 5, agecat: 6 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* brthmon: 5, agecat: 6 months, studyid: ki1000304-EU, country: INDIA
* brthmon: 5, agecat: 6 months, studyid: ki1000304-VITAMIN-A, country: INDIA
* brthmon: 5, agecat: 6 months, studyid: ki1000304-Vitamin-B12, country: INDIA
* brthmon: 5, agecat: 6 months, studyid: ki1000304-ZnMort, country: INDIA
* brthmon: 5, agecat: 6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* brthmon: 5, agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* brthmon: 5, agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* brthmon: 5, agecat: 6 months, studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO
* brthmon: 5, agecat: 6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* brthmon: 5, agecat: 6 months, studyid: ki1119695-PROBIT, country: BELARUS
* brthmon: 5, agecat: 6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* brthmon: 5, agecat: 6 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* brthmon: 5, agecat: 6 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* brthmon: 5, agecat: 6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* brthmon: 5, agecat: 6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* brthmon: 5, agecat: 6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* brthmon: 5, agecat: Birth, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* brthmon: 5, agecat: Birth, studyid: ki1119695-PROBIT, country: BELARUS
* brthmon: 5, agecat: Birth, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* brthmon: 5, agecat: Birth, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* brthmon: 5, agecat: Birth, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* brthmon: 6, agecat: 24 months, studyid: iLiNS_DYADM_LNS, country: MALAWI
* brthmon: 6, agecat: 24 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* brthmon: 6, agecat: 24 months, studyid: ki1000111-WASH-Kenya, country: KENYA
* brthmon: 6, agecat: 24 months, studyid: ki1000304-EU, country: INDIA
* brthmon: 6, agecat: 24 months, studyid: ki1000304-Vitamin-B12, country: INDIA
* brthmon: 6, agecat: 24 months, studyid: ki1000304-ZnMort, country: INDIA
* brthmon: 6, agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* brthmon: 6, agecat: 24 months, studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO
* brthmon: 6, agecat: 24 months, studyid: ki1119695-PROBIT, country: BELARUS
* brthmon: 6, agecat: 24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* brthmon: 6, agecat: 24 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* brthmon: 6, agecat: 24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* brthmon: 6, agecat: 24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* brthmon: 6, agecat: 24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* brthmon: 6, agecat: 24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* brthmon: 6, agecat: 6 months, studyid: iLiNS_DYADM_LNS, country: MALAWI
* brthmon: 6, agecat: 6 months, studyid: ki1000107-Serrinha-VitA, country: BRAZIL
* brthmon: 6, agecat: 6 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* brthmon: 6, agecat: 6 months, studyid: ki1000111-WASH-Kenya, country: KENYA
* brthmon: 6, agecat: 6 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* brthmon: 6, agecat: 6 months, studyid: ki1000304-EU, country: INDIA
* brthmon: 6, agecat: 6 months, studyid: ki1000304-VITAMIN-A, country: INDIA
* brthmon: 6, agecat: 6 months, studyid: ki1000304-Vitamin-B12, country: INDIA
* brthmon: 6, agecat: 6 months, studyid: ki1000304-ZnMort, country: INDIA
* brthmon: 6, agecat: 6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* brthmon: 6, agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* brthmon: 6, agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* brthmon: 6, agecat: 6 months, studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO
* brthmon: 6, agecat: 6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* brthmon: 6, agecat: 6 months, studyid: ki1119695-PROBIT, country: BELARUS
* brthmon: 6, agecat: 6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* brthmon: 6, agecat: 6 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* brthmon: 6, agecat: 6 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* brthmon: 6, agecat: 6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* brthmon: 6, agecat: 6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* brthmon: 6, agecat: 6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* brthmon: 6, agecat: Birth, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* brthmon: 6, agecat: Birth, studyid: ki1119695-PROBIT, country: BELARUS
* brthmon: 6, agecat: Birth, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* brthmon: 6, agecat: Birth, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* brthmon: 6, agecat: Birth, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* brthmon: 7, agecat: 24 months, studyid: iLiNS_DYADM_LNS, country: MALAWI
* brthmon: 7, agecat: 24 months, studyid: ki1000107-Serrinha-VitA, country: BRAZIL
* brthmon: 7, agecat: 24 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* brthmon: 7, agecat: 24 months, studyid: ki1000111-WASH-Kenya, country: KENYA
* brthmon: 7, agecat: 24 months, studyid: ki1000304-EU, country: INDIA
* brthmon: 7, agecat: 24 months, studyid: ki1000304-Vitamin-B12, country: INDIA
* brthmon: 7, agecat: 24 months, studyid: ki1000304-ZnMort, country: INDIA
* brthmon: 7, agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* brthmon: 7, agecat: 24 months, studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO
* brthmon: 7, agecat: 24 months, studyid: ki1119695-PROBIT, country: BELARUS
* brthmon: 7, agecat: 24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* brthmon: 7, agecat: 24 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* brthmon: 7, agecat: 24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* brthmon: 7, agecat: 24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* brthmon: 7, agecat: 24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* brthmon: 7, agecat: 24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* brthmon: 7, agecat: 6 months, studyid: iLiNS_DYADM_LNS, country: MALAWI
* brthmon: 7, agecat: 6 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* brthmon: 7, agecat: 6 months, studyid: ki1000111-WASH-Kenya, country: KENYA
* brthmon: 7, agecat: 6 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* brthmon: 7, agecat: 6 months, studyid: ki1000304-EU, country: INDIA
* brthmon: 7, agecat: 6 months, studyid: ki1000304-VITAMIN-A, country: INDIA
* brthmon: 7, agecat: 6 months, studyid: ki1000304-Vitamin-B12, country: INDIA
* brthmon: 7, agecat: 6 months, studyid: ki1000304-ZnMort, country: INDIA
* brthmon: 7, agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* brthmon: 7, agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* brthmon: 7, agecat: 6 months, studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO
* brthmon: 7, agecat: 6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* brthmon: 7, agecat: 6 months, studyid: ki1119695-PROBIT, country: BELARUS
* brthmon: 7, agecat: 6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* brthmon: 7, agecat: 6 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* brthmon: 7, agecat: 6 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* brthmon: 7, agecat: 6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* brthmon: 7, agecat: 6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* brthmon: 7, agecat: 6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* brthmon: 7, agecat: Birth, studyid: iLiNS_DYADM_LNS, country: MALAWI
* brthmon: 7, agecat: Birth, studyid: ki1119695-PROBIT, country: BELARUS
* brthmon: 7, agecat: Birth, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* brthmon: 7, agecat: Birth, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* brthmon: 7, agecat: Birth, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* brthmon: 7, agecat: Birth, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* brthmon: 8, agecat: 24 months, studyid: iLiNS_DYADM_LNS, country: MALAWI
* brthmon: 8, agecat: 24 months, studyid: ki1000107-Serrinha-VitA, country: BRAZIL
* brthmon: 8, agecat: 24 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* brthmon: 8, agecat: 24 months, studyid: ki1000111-WASH-Kenya, country: KENYA
* brthmon: 8, agecat: 24 months, studyid: ki1000304-EU, country: INDIA
* brthmon: 8, agecat: 24 months, studyid: ki1000304-Vitamin-B12, country: INDIA
* brthmon: 8, agecat: 24 months, studyid: ki1000304-ZnMort, country: INDIA
* brthmon: 8, agecat: 24 months, studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO
* brthmon: 8, agecat: 24 months, studyid: ki1119695-PROBIT, country: BELARUS
* brthmon: 8, agecat: 24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* brthmon: 8, agecat: 24 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* brthmon: 8, agecat: 24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* brthmon: 8, agecat: 24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* brthmon: 8, agecat: 24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* brthmon: 8, agecat: 24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* brthmon: 8, agecat: 6 months, studyid: iLiNS_DYADM_LNS, country: MALAWI
* brthmon: 8, agecat: 6 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* brthmon: 8, agecat: 6 months, studyid: ki1000111-WASH-Kenya, country: KENYA
* brthmon: 8, agecat: 6 months, studyid: ki1000304-EU, country: INDIA
* brthmon: 8, agecat: 6 months, studyid: ki1000304-VITAMIN-A, country: INDIA
* brthmon: 8, agecat: 6 months, studyid: ki1000304-Vitamin-B12, country: INDIA
* brthmon: 8, agecat: 6 months, studyid: ki1000304-ZnMort, country: INDIA
* brthmon: 8, agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* brthmon: 8, agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* brthmon: 8, agecat: 6 months, studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO
* brthmon: 8, agecat: 6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* brthmon: 8, agecat: 6 months, studyid: ki1119695-PROBIT, country: BELARUS
* brthmon: 8, agecat: 6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* brthmon: 8, agecat: 6 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* brthmon: 8, agecat: 6 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* brthmon: 8, agecat: 6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* brthmon: 8, agecat: 6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* brthmon: 8, agecat: 6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* brthmon: 8, agecat: Birth, studyid: ki1119695-PROBIT, country: BELARUS
* brthmon: 8, agecat: Birth, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* brthmon: 8, agecat: Birth, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* brthmon: 8, agecat: Birth, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* brthmon: 9, agecat: 24 months, studyid: iLiNS_DYADM_LNS, country: MALAWI
* brthmon: 9, agecat: 24 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* brthmon: 9, agecat: 24 months, studyid: ki1000111-WASH-Kenya, country: KENYA
* brthmon: 9, agecat: 24 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* brthmon: 9, agecat: 24 months, studyid: ki1000304-EU, country: INDIA
* brthmon: 9, agecat: 24 months, studyid: ki1000304-Vitamin-B12, country: INDIA
* brthmon: 9, agecat: 24 months, studyid: ki1000304-ZnMort, country: INDIA
* brthmon: 9, agecat: 24 months, studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO
* brthmon: 9, agecat: 24 months, studyid: ki1119695-PROBIT, country: BELARUS
* brthmon: 9, agecat: 24 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* brthmon: 9, agecat: 24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* brthmon: 9, agecat: 24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* brthmon: 9, agecat: 24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* brthmon: 9, agecat: 24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* brthmon: 9, agecat: 6 months, studyid: iLiNS_DYADM_LNS, country: MALAWI
* brthmon: 9, agecat: 6 months, studyid: ki1000107-Serrinha-VitA, country: BRAZIL
* brthmon: 9, agecat: 6 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* brthmon: 9, agecat: 6 months, studyid: ki1000111-WASH-Kenya, country: KENYA
* brthmon: 9, agecat: 6 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* brthmon: 9, agecat: 6 months, studyid: ki1000304-EU, country: INDIA
* brthmon: 9, agecat: 6 months, studyid: ki1000304-VITAMIN-A, country: INDIA
* brthmon: 9, agecat: 6 months, studyid: ki1000304-ZnMort, country: INDIA
* brthmon: 9, agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* brthmon: 9, agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* brthmon: 9, agecat: 6 months, studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO
* brthmon: 9, agecat: 6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* brthmon: 9, agecat: 6 months, studyid: ki1119695-PROBIT, country: BELARUS
* brthmon: 9, agecat: 6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* brthmon: 9, agecat: 6 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* brthmon: 9, agecat: 6 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* brthmon: 9, agecat: 6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* brthmon: 9, agecat: 6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* brthmon: 9, agecat: 6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* brthmon: 9, agecat: Birth, studyid: ki1119695-PROBIT, country: BELARUS
* brthmon: 9, agecat: Birth, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* brthmon: 9, agecat: Birth, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* brthmon: 9, agecat: Birth, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* brthmon: 8, agecat: 24 months, studyid: ki1000107-Serrinha-VitA, country: BRAZIL
* brthmon: 6, agecat: 6 months, studyid: ki1000107-Serrinha-VitA, country: BRAZIL
* brthmon: 4, agecat: 24 months, studyid: ki1000107-Serrinha-VitA, country: BRAZIL
* brthmon: 5, agecat: 6 months, studyid: ki1000107-Serrinha-VitA, country: BRAZIL
* brthmon: 1, agecat: 24 months, studyid: ki1000107-Serrinha-VitA, country: BRAZIL
* brthmon: 9, agecat: 6 months, studyid: ki1000107-Serrinha-VitA, country: BRAZIL
* brthmon: 3, agecat: 24 months, studyid: ki1000107-Serrinha-VitA, country: BRAZIL
* brthmon: 7, agecat: 24 months, studyid: ki1000107-Serrinha-VitA, country: BRAZIL
* brthmon: 10, agecat: 24 months, studyid: ki1000107-Serrinha-VitA, country: BRAZIL
* brthmon: 3, agecat: 24 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* brthmon: 4, agecat: 6 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* brthmon: 5, agecat: 6 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* brthmon: 6, agecat: 6 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* brthmon: 7, agecat: 6 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* brthmon: 8, agecat: 6 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* brthmon: 10, agecat: 6 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* brthmon: 11, agecat: 6 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* brthmon: 12, agecat: 6 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* brthmon: 3, agecat: 6 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* brthmon: 1, agecat: 6 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* brthmon: 2, agecat: 6 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* brthmon: 2, agecat: 6 months, studyid: ki1000111-WASH-Kenya, country: KENYA
* brthmon: 6, agecat: 6 months, studyid: ki1000111-WASH-Kenya, country: KENYA
* brthmon: 3, agecat: 6 months, studyid: ki1000111-WASH-Kenya, country: KENYA
* brthmon: 4, agecat: 6 months, studyid: ki1000111-WASH-Kenya, country: KENYA
* brthmon: 5, agecat: 6 months, studyid: ki1000111-WASH-Kenya, country: KENYA
* brthmon: 7, agecat: 6 months, studyid: ki1000111-WASH-Kenya, country: KENYA
* brthmon: 8, agecat: 6 months, studyid: ki1000111-WASH-Kenya, country: KENYA
* brthmon: 10, agecat: 6 months, studyid: ki1000111-WASH-Kenya, country: KENYA
* brthmon: 9, agecat: 6 months, studyid: ki1000111-WASH-Kenya, country: KENYA
* brthmon: 11, agecat: 6 months, studyid: ki1000111-WASH-Kenya, country: KENYA
* brthmon: 1, agecat: 6 months, studyid: ki1000111-WASH-Kenya, country: KENYA
* brthmon: 2, agecat: 6 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* brthmon: 12, agecat: 24 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* brthmon: 3, agecat: 6 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* brthmon: 5, agecat: 6 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* brthmon: 4, agecat: 6 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* brthmon: 9, agecat: 24 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* brthmon: 6, agecat: 6 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* brthmon: 7, agecat: 6 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* brthmon: 11, agecat: Birth, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* brthmon: 9, agecat: 6 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* brthmon: 1, agecat: Birth, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* brthmon: 12, agecat: Birth, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* brthmon: 3, agecat: 6 months, studyid: ki1000304-EU, country: INDIA
* brthmon: 9, agecat: 24 months, studyid: ki1000304-EU, country: INDIA
* brthmon: 1, agecat: 24 months, studyid: ki1000304-EU, country: INDIA
* brthmon: 11, agecat: 24 months, studyid: ki1000304-EU, country: INDIA
* brthmon: 4, agecat: 6 months, studyid: ki1000304-EU, country: INDIA
* brthmon: 2, agecat: 24 months, studyid: ki1000304-EU, country: INDIA
* brthmon: 3, agecat: 24 months, studyid: ki1000304-EU, country: INDIA
* brthmon: 4, agecat: 24 months, studyid: ki1000304-EU, country: INDIA
* brthmon: 12, agecat: 24 months, studyid: ki1000304-EU, country: INDIA
* brthmon: 6, agecat: 6 months, studyid: ki1000304-EU, country: INDIA
* brthmon: 8, agecat: 6 months, studyid: ki1000304-EU, country: INDIA
* brthmon: 7, agecat: 6 months, studyid: ki1000304-EU, country: INDIA
* brthmon: 6, agecat: 24 months, studyid: ki1000304-EU, country: INDIA
* brthmon: 5, agecat: 24 months, studyid: ki1000304-EU, country: INDIA
* brthmon: 8, agecat: 24 months, studyid: ki1000304-EU, country: INDIA
* brthmon: 11, agecat: 6 months, studyid: ki1000304-EU, country: INDIA
* brthmon: 12, agecat: 6 months, studyid: ki1000304-EU, country: INDIA
* brthmon: 1, agecat: 6 months, studyid: ki1000304-EU, country: INDIA
* brthmon: 12, agecat: 6 months, studyid: ki1000304-Vitamin-B12, country: INDIA
* brthmon: 9, agecat: 24 months, studyid: ki1000304-Vitamin-B12, country: INDIA
* brthmon: 11, agecat: 6 months, studyid: ki1000304-Vitamin-B12, country: INDIA
* brthmon: 12, agecat: 24 months, studyid: ki1000304-Vitamin-B12, country: INDIA
* brthmon: 1, agecat: 24 months, studyid: ki1000304-Vitamin-B12, country: INDIA
* brthmon: 6, agecat: 6 months, studyid: ki1000304-Vitamin-B12, country: INDIA
* brthmon: 5, agecat: 24 months, studyid: ki1000304-Vitamin-B12, country: INDIA
* brthmon: 7, agecat: 24 months, studyid: ki1000304-Vitamin-B12, country: INDIA
* brthmon: 6, agecat: 24 months, studyid: ki1000304-Vitamin-B12, country: INDIA
* brthmon: 8, agecat: 24 months, studyid: ki1000304-Vitamin-B12, country: INDIA
* brthmon: 1, agecat: 6 months, studyid: ki1000304-Vitamin-B12, country: INDIA
* brthmon: 3, agecat: 24 months, studyid: ki1000304-Vitamin-B12, country: INDIA
* brthmon: 2, agecat: 6 months, studyid: ki1000304-Vitamin-B12, country: INDIA
* brthmon: 4, agecat: 24 months, studyid: ki1000304-Vitamin-B12, country: INDIA
* brthmon: 10, agecat: 24 months, studyid: ki1000304-Vitamin-B12, country: INDIA
* brthmon: 3, agecat: 6 months, studyid: ki1000304-Vitamin-B12, country: INDIA
* brthmon: 11, agecat: 24 months, studyid: ki1000304-Vitamin-B12, country: INDIA
* brthmon: 4, agecat: 6 months, studyid: ki1000304-Vitamin-B12, country: INDIA
* brthmon: 5, agecat: 6 months, studyid: ki1000304-Vitamin-B12, country: INDIA
* brthmon: 7, agecat: 6 months, studyid: ki1000304-Vitamin-B12, country: INDIA
* brthmon: 8, agecat: 6 months, studyid: ki1000304-Vitamin-B12, country: INDIA
* brthmon: 8, agecat: 6 months, studyid: ki1000304-ZnMort, country: INDIA
* brthmon: 9, agecat: 6 months, studyid: ki1000304-ZnMort, country: INDIA
* brthmon: 3, agecat: 24 months, studyid: ki1000304-ZnMort, country: INDIA
* brthmon: 4, agecat: 24 months, studyid: ki1000304-ZnMort, country: INDIA
* brthmon: 10, agecat: 6 months, studyid: ki1000304-ZnMort, country: INDIA
* brthmon: 6, agecat: 24 months, studyid: ki1000304-ZnMort, country: INDIA
* brthmon: 11, agecat: 6 months, studyid: ki1000304-ZnMort, country: INDIA
* brthmon: 12, agecat: 6 months, studyid: ki1000304-ZnMort, country: INDIA
* brthmon: 7, agecat: 24 months, studyid: ki1000304-ZnMort, country: INDIA
* brthmon: 8, agecat: 24 months, studyid: ki1000304-ZnMort, country: INDIA
* brthmon: 1, agecat: 6 months, studyid: ki1000304-ZnMort, country: INDIA
* brthmon: 10, agecat: 24 months, studyid: ki1000304-ZnMort, country: INDIA
* brthmon: 9, agecat: 24 months, studyid: ki1000304-ZnMort, country: INDIA
* brthmon: 2, agecat: 6 months, studyid: ki1000304-ZnMort, country: INDIA
* brthmon: 3, agecat: 6 months, studyid: ki1000304-ZnMort, country: INDIA
* brthmon: 5, agecat: 6 months, studyid: ki1000304-ZnMort, country: INDIA
* brthmon: 4, agecat: 6 months, studyid: ki1000304-ZnMort, country: INDIA
* brthmon: 6, agecat: 6 months, studyid: ki1000304-ZnMort, country: INDIA
* brthmon: 12, agecat: 24 months, studyid: ki1000304-ZnMort, country: INDIA
* brthmon: 1, agecat: 24 months, studyid: ki1000304-ZnMort, country: INDIA
* brthmon: 2, agecat: 24 months, studyid: ki1000304-ZnMort, country: INDIA
* brthmon: 7, agecat: 6 months, studyid: ki1000304-ZnMort, country: INDIA
* brthmon: 11, agecat: 24 months, studyid: ki1000304-ZnMort, country: INDIA
* brthmon: 10, agecat: Birth, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* brthmon: 11, agecat: Birth, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* brthmon: 11, agecat: 6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* brthmon: 12, agecat: Birth, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* brthmon: 2, agecat: Birth, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* brthmon: 3, agecat: Birth, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* brthmon: 4, agecat: 6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* brthmon: 4, agecat: Birth, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* brthmon: 5, agecat: Birth, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* brthmon: 6, agecat: Birth, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* brthmon: 1, agecat: Birth, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* brthmon: 5, agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* brthmon: 6, agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* brthmon: 12, agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* brthmon: 2, agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* brthmon: 10, agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* brthmon: 11, agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* brthmon: 1, agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* brthmon: 3, agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* brthmon: 4, agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* brthmon: 7, agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* brthmon: 8, agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* brthmon: 9, agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* brthmon: 11, agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* brthmon: 12, agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* brthmon: 1, agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* brthmon: 2, agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* brthmon: 3, agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* brthmon: 4, agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* brthmon: 4, agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* brthmon: 5, agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* brthmon: 6, agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* brthmon: 6, agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* brthmon: 7, agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* brthmon: 3, agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* brthmon: 1, agecat: 6 months, studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO
* brthmon: 6, agecat: 6 months, studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO
* brthmon: 10, agecat: 24 months, studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO
* brthmon: 12, agecat: 6 months, studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO
* brthmon: 7, agecat: 6 months, studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO
* brthmon: 3, agecat: 6 months, studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO
* brthmon: 8, agecat: 6 months, studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO
* brthmon: 5, agecat: 6 months, studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO
* brthmon: 4, agecat: 6 months, studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO
* brthmon: 9, agecat: 6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* brthmon: 11, agecat: 6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* brthmon: 12, agecat: 6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* brthmon: 1, agecat: 6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* brthmon: 2, agecat: 6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* brthmon: 6, agecat: 6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* brthmon: 8, agecat: 6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* brthmon: 10, agecat: 6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* brthmon: 3, agecat: 6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* brthmon: 4, agecat: 6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* brthmon: 5, agecat: 6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* brthmon: 7, agecat: 6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* brthmon: 6, agecat: Birth, studyid: ki1119695-PROBIT, country: BELARUS
* brthmon: 7, agecat: Birth, studyid: ki1119695-PROBIT, country: BELARUS
* brthmon: 8, agecat: Birth, studyid: ki1119695-PROBIT, country: BELARUS
* brthmon: 9, agecat: Birth, studyid: ki1119695-PROBIT, country: BELARUS
* brthmon: 10, agecat: Birth, studyid: ki1119695-PROBIT, country: BELARUS
* brthmon: 11, agecat: Birth, studyid: ki1119695-PROBIT, country: BELARUS
* brthmon: 11, agecat: 24 months, studyid: ki1119695-PROBIT, country: BELARUS
* brthmon: 12, agecat: Birth, studyid: ki1119695-PROBIT, country: BELARUS
* brthmon: 2, agecat: Birth, studyid: ki1119695-PROBIT, country: BELARUS
* brthmon: 3, agecat: Birth, studyid: ki1119695-PROBIT, country: BELARUS
* brthmon: 3, agecat: 24 months, studyid: ki1119695-PROBIT, country: BELARUS
* brthmon: 5, agecat: Birth, studyid: ki1119695-PROBIT, country: BELARUS
* brthmon: 6, agecat: 24 months, studyid: ki1119695-PROBIT, country: BELARUS
* brthmon: 7, agecat: 24 months, studyid: ki1119695-PROBIT, country: BELARUS
* brthmon: 4, agecat: 24 months, studyid: ki1119695-PROBIT, country: BELARUS
* brthmon: 5, agecat: 24 months, studyid: ki1119695-PROBIT, country: BELARUS
* brthmon: 8, agecat: 24 months, studyid: ki1119695-PROBIT, country: BELARUS
* brthmon: 9, agecat: 24 months, studyid: ki1119695-PROBIT, country: BELARUS
* brthmon: 2, agecat: 24 months, studyid: ki1119695-PROBIT, country: BELARUS
* brthmon: 1, agecat: 24 months, studyid: ki1119695-PROBIT, country: BELARUS
* brthmon: 1, agecat: 24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* brthmon: 2, agecat: 24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* brthmon: 11, agecat: 24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* brthmon: 12, agecat: 24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* brthmon: 3, agecat: 24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* brthmon: 6, agecat: 24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* brthmon: 7, agecat: 24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* brthmon: 8, agecat: 24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* brthmon: 10, agecat: 24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* brthmon: 4, agecat: 24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* brthmon: 5, agecat: 24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* brthmon: 2, agecat: 24 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* brthmon: 3, agecat: 24 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* brthmon: 6, agecat: 24 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* brthmon: 4, agecat: 24 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* brthmon: 5, agecat: 24 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* brthmon: 1, agecat: 24 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* brthmon: 7, agecat: 6 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* brthmon: 7, agecat: Birth, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* brthmon: 10, agecat: 6 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* brthmon: 10, agecat: 24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* brthmon: 11, agecat: 24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* brthmon: 9, agecat: 24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* brthmon: 12, agecat: 24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* brthmon: 4, agecat: 24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* brthmon: 1, agecat: 6 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* brthmon: 1, agecat: 24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* brthmon: 2, agecat: 24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* brthmon: 3, agecat: 6 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* brthmon: 3, agecat: 24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* brthmon: 6, agecat: 24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* brthmon: 5, agecat: 24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* brthmon: 7, agecat: 24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* brthmon: 8, agecat: 24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* brthmon: 7, agecat: 6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* brthmon: 7, agecat: 24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* brthmon: 9, agecat: 24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* brthmon: 8, agecat: 24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* brthmon: 11, agecat: 24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* brthmon: 12, agecat: 24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* brthmon: 1, agecat: 6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* brthmon: 1, agecat: 24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* brthmon: 2, agecat: 6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* brthmon: 2, agecat: 24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* brthmon: 3, agecat: 6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* brthmon: 3, agecat: 24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* brthmon: 4, agecat: 6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* brthmon: 4, agecat: 24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* brthmon: 5, agecat: 6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* brthmon: 5, agecat: 24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* brthmon: 6, agecat: 6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* brthmon: 6, agecat: 24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* brthmon: 4, agecat: 24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* brthmon: 9, agecat: 24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* brthmon: 6, agecat: 24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* brthmon: 5, agecat: 24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* brthmon: 11, agecat: 24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* brthmon: 8, agecat: 24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* brthmon: 10, agecat: 24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* brthmon: 3, agecat: 24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* brthmon: 7, agecat: 24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* brthmon: 2, agecat: 24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* brthmon: 12, agecat: 24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* brthmon: 1, agecat: 24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* brthmon: 7, agecat: Birth, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* brthmon: 9, agecat: Birth, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* brthmon: 10, agecat: Birth, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* brthmon: 8, agecat: Birth, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* brthmon: 6, agecat: 24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* brthmon: 10, agecat: 24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* brthmon: 7, agecat: 6 months, studyid: iLiNS_DYADM_LNS, country: MALAWI
* brthmon: 7, agecat: Birth, studyid: iLiNS_DYADM_LNS, country: MALAWI
* brthmon: 10, agecat: 6 months, studyid: iLiNS_DYADM_LNS, country: MALAWI
* brthmon: 10, agecat: 24 months, studyid: iLiNS_DYADM_LNS, country: MALAWI
* brthmon: 11, agecat: 24 months, studyid: iLiNS_DYADM_LNS, country: MALAWI
* brthmon: 9, agecat: 24 months, studyid: iLiNS_DYADM_LNS, country: MALAWI
* brthmon: 12, agecat: 24 months, studyid: iLiNS_DYADM_LNS, country: MALAWI
* brthmon: 1, agecat: 6 months, studyid: iLiNS_DYADM_LNS, country: MALAWI
* brthmon: 2, agecat: 6 months, studyid: iLiNS_DYADM_LNS, country: MALAWI
* brthmon: 1, agecat: 24 months, studyid: iLiNS_DYADM_LNS, country: MALAWI
* brthmon: 3, agecat: 6 months, studyid: iLiNS_DYADM_LNS, country: MALAWI
* brthmon: 3, agecat: 24 months, studyid: iLiNS_DYADM_LNS, country: MALAWI
* brthmon: 2, agecat: 24 months, studyid: iLiNS_DYADM_LNS, country: MALAWI
* brthmon: 4, agecat: 24 months, studyid: iLiNS_DYADM_LNS, country: MALAWI
* brthmon: 6, agecat: 6 months, studyid: iLiNS_DYADM_LNS, country: MALAWI
* brthmon: 5, agecat: 24 months, studyid: iLiNS_DYADM_LNS, country: MALAWI
* brthmon: 6, agecat: 24 months, studyid: iLiNS_DYADM_LNS, country: MALAWI
* brthmon: 8, agecat: 24 months, studyid: iLiNS_DYADM_LNS, country: MALAWI
* brthmon: 7, agecat: 24 months, studyid: iLiNS_DYADM_LNS, country: MALAWI

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness



```
##           stunted
## tr           0
##   Control  422
##   LNS        0
##   Maternal 404
##   Other      0
##   VitA       0
##   Zinc       0
##           stunted
## tr          0  1
##   Control   0  0
##   LNS       0  0
##   Maternal  0  0
##   Other     0  0
##   VitA      0  0
##   Zinc     54 13
##           stunted
## tr          0  1
##   Control   0  0
##   LNS       0  0
##   Maternal  0  0
##   Other     0  0
##   VitA      0  0
##   Zinc     72  7
##           stunted
## tr         0
##   Control  0
##   LNS      0
##   Maternal 0
##   Other    5
##   VitA     0
##   Zinc     0
##           stunted
## tr         0
##   Control  0
##   LNS      0
##   Maternal 0
##   Other    7
##   VitA     0
##   Zinc     0
##           stunted
## tr          0  1
##   Control   0  0
##   LNS       0  0
##   Maternal  0  0
##   Other     0  0
##   VitA      0  0
##   Zinc     59  7
##           stunted
## tr          0  1
##   Control   0  0
##   LNS       0  0
##   Maternal  0  0
##   Other     0  0
##   VitA      0  0
##   Zinc     60 31
##           stunted
## tr          0  1
##   Control   0  0
##   LNS       0  0
##   Maternal  0  0
##   Other     0  0
##   VitA      0  0
##   Zinc     48 31
##           stunted
## tr           0
##   Control  470
##   LNS        0
##   Maternal 500
##   Other      0
##   VitA       0
##   Zinc       0
##           stunted
## tr          0  1
##   Control   0  0
##   LNS       0  0
##   Maternal  0  0
##   Other     0  0
##   VitA      0  0
##   Zinc     80 29
##           stunted
## tr          0  1
##   Control   0  0
##   LNS       0  0
##   Maternal  0  0
##   Other     0  0
##   VitA      0  0
##   Zinc     23 21
##           stunted
## tr          0  1
##   Control   0  0
##   LNS       0  0
##   Maternal  0  0
##   Other     0  0
##   VitA      0  0
##   Zinc     36 15
##           stunted
## tr          0  1
##   Control   0  0
##   LNS       0  0
##   Maternal  0  0
##   Other     0  0
##   VitA      0  0
##   Zinc     54 42
##           stunted
## tr          0  1
##   Control   0  0
##   LNS       0  0
##   Maternal  0  0
##   Other     0  0
##   VitA      0  0
##   Zinc     43 33
##           stunted
## tr          0  1
##   Control   0  0
##   LNS       0  0
##   Maternal  0  0
##   Other     0  0
##   VitA      0  0
##   Zinc     25  7
```




# Results Detail

## Results Plots
![](/tmp/5944aad5-6dd0-43ef-8bac-292e835f6746/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/5944aad5-6dd0-43ef-8bac-292e835f6746/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/5944aad5-6dd0-43ef-8bac-292e835f6746/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/5944aad5-6dd0-43ef-8bac-292e835f6746/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


brthmon   agecat      studyid                     country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
--------  ----------  --------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
1         Birth       ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                0.1637427   0.1537221   0.1737633
1         Birth       ki1126311-ZVITAMBO          ZIMBABWE                       VitA                 NA                0.1163490   0.1015239   0.1311742
1         Birth       kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                0.3633406   0.3446860   0.3819951
1         Birth       kiGH5241-JiVitA-3           BANGLADESH                     Maternal             NA                0.3569199   0.3390909   0.3747488
1         6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Control              NA                0.2673267   0.2173703   0.3172832
1         6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Maternal             NA                0.2702703   0.2273611   0.3131795
1         6 months    ki1000304-VITAMIN-A         INDIA                          Control              NA                0.3457944   0.3032209   0.3883679
1         6 months    ki1000304-VITAMIN-A         INDIA                          VitA                 NA                0.2666667   0.2247481   0.3085853
1         6 months    ki1000304b-SAS-CompFeed     INDIA                          Control              NA                0.3437500   0.2495277   0.4379723
1         6 months    ki1000304b-SAS-CompFeed     INDIA                          Other                NA                0.2903226   0.2257991   0.3548461
1         6 months    ki1119695-PROBIT            BELARUS                        Control              NA                0.0932401   0.0734019   0.1130783
1         6 months    ki1119695-PROBIT            BELARUS                        Maternal             NA                0.0893720   0.0708170   0.1079270
1         6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                0.1909548   0.1759342   0.2059754
1         6 months    ki1126311-ZVITAMBO          ZIMBABWE                       VitA                 NA                0.1676190   0.1444338   0.1908043
1         6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                0.4090909   0.3773721   0.4408098
1         6 months    ki1148112-iLiNS-DOSE        MALAWI                         LNS                  NA                0.3140496   0.2438274   0.3842717
1         6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                0.2631579   0.2424930   0.2838228
1         6 months    kiGH5241-JiVitA-3           BANGLADESH                     Maternal             NA                0.2413793   0.2224509   0.2603077
1         24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                0.2307692   0.0682468   0.3932917
1         24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                  NA                0.2894737   0.1447680   0.4341794
1         24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                NA                0.3846154   0.2762671   0.4929637
1         24 months   ki1000111-WASH-Kenya        KENYA                          Control              NA                0.3421053   0.1907205   0.4934900
1         24 months   ki1000111-WASH-Kenya        KENYA                          LNS                  NA                0.3529412   0.1917284   0.5141540
1         24 months   ki1000111-WASH-Kenya        KENYA                          Other                NA                0.2686567   0.1621350   0.3751784
1         24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Control              NA                0.2727273   0.1408479   0.4046066
1         24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc                 NA                0.3422460   0.2740953   0.4103967
2         Birth       ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                0.1317829   0.1216267   0.1419392
2         Birth       ki1126311-ZVITAMBO          ZIMBABWE                       VitA                 NA                0.1567636   0.1376490   0.1758782
2         Birth       kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                0.3554054   0.3340511   0.3767597
2         Birth       kiGH5241-JiVitA-3           BANGLADESH                     Maternal             NA                0.2721750   0.2541494   0.2902006
2         Birth       kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                0.2285714   0.0794310   0.3777119
2         Birth       kiGH5241-JiVitA-4           BANGLADESH                     LNS                  NA                0.2894737   0.1172638   0.4616835
2         Birth       kiGH5241-JiVitA-4           BANGLADESH                     Other                NA                0.3064516   0.1889742   0.4239290
2         6 months    ki1000304-EU                INDIA                          Control              NA                0.3846154   0.1159219   0.6533089
2         6 months    ki1000304-EU                INDIA                          Zinc                 NA                0.3684211   0.1480516   0.5887905
2         6 months    ki1000304-VITAMIN-A         INDIA                          Control              NA                0.3793103   0.3272844   0.4313363
2         6 months    ki1000304-VITAMIN-A         INDIA                          VitA                 NA                0.3690476   0.3182077   0.4198875
2         6 months    ki1000304b-SAS-CompFeed     INDIA                          Control              NA                0.2285714   0.1519555   0.3051873
2         6 months    ki1000304b-SAS-CompFeed     INDIA                          Other                NA                0.3055556   0.1949978   0.4161133
2         6 months    ki1119695-PROBIT            BELARUS                        Control              NA                0.0953437   0.0680468   0.1226406
2         6 months    ki1119695-PROBIT            BELARUS                        Maternal             NA                0.0748130   0.0610525   0.0885735
2         6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                0.2203390   0.2035145   0.2371635
2         6 months    ki1126311-ZVITAMBO          ZIMBABWE                       VitA                 NA                0.1498771   0.1229675   0.1767868
2         6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                0.3157895   0.2836340   0.3479450
2         6 months    ki1148112-iLiNS-DOSE        MALAWI                         LNS                  NA                0.3523810   0.2746945   0.4300674
2         6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Control              NA                0.2068966   0.1406075   0.2731856
2         6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Maternal             NA                0.2222222   0.1464214   0.2980231
2         6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                0.2709447   0.2487080   0.2931814
2         6 months    kiGH5241-JiVitA-3           BANGLADESH                     Maternal             NA                0.2351946   0.2143350   0.2560541
2         6 months    kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                0.2290076   0.1425780   0.3154372
2         6 months    kiGH5241-JiVitA-4           BANGLADESH                     LNS                  NA                0.2500000   0.1795030   0.3204970
2         6 months    kiGH5241-JiVitA-4           BANGLADESH                     Other                NA                0.2648221   0.2045116   0.3251327
2         24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                0.5000000   0.3139685   0.6860315
2         24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                  NA                0.2173913   0.0480647   0.3867179
2         24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                NA                0.3606557   0.2396114   0.4817001
2         24 months   ki1000111-WASH-Kenya        KENYA                          Control              NA                0.2686567   0.1622665   0.3750469
2         24 months   ki1000111-WASH-Kenya        KENYA                          LNS                  NA                0.2083333   0.0931712   0.3234954
2         24 months   ki1000111-WASH-Kenya        KENYA                          Other                NA                0.3229167   0.2291582   0.4166751
2         24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Control              NA                0.4090909   0.2027568   0.6154250
2         24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc                 NA                0.4736842   0.3728477   0.5745207
2         24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                0.3896104   0.2703130   0.5089077
2         24 months   kiGH5241-JiVitA-4           BANGLADESH                     LNS                  NA                0.4736842   0.3713028   0.5760656
2         24 months   kiGH5241-JiVitA-4           BANGLADESH                     Other                NA                0.4242424   0.3345747   0.5139101
3         Birth       ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                0.1111111   0.1022302   0.1199920
3         Birth       ki1126311-ZVITAMBO          ZIMBABWE                       VitA                 NA                0.1181818   0.1019802   0.1343834
3         Birth       kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                0.3193370   0.3016127   0.3370614
3         Birth       kiGH5241-JiVitA-3           BANGLADESH                     Maternal             NA                0.2577640   0.2408193   0.2747086
3         Birth       kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                0.3469388   0.2134725   0.4804051
3         Birth       kiGH5241-JiVitA-4           BANGLADESH                     LNS                  NA                0.4807692   0.3389999   0.6225386
3         Birth       kiGH5241-JiVitA-4           BANGLADESH                     Other                NA                0.3108108   0.1956267   0.4259949
3         6 months    ki1000304-VITAMIN-A         INDIA                          Control              NA                0.3716814   0.3287455   0.4146173
3         6 months    ki1000304-VITAMIN-A         INDIA                          VitA                 NA                0.2868852   0.2451291   0.3286413
3         6 months    ki1000304b-SAS-CompFeed     INDIA                          Control              NA                0.1785714   0.0966080   0.2605349
3         6 months    ki1000304b-SAS-CompFeed     INDIA                          Other                NA                0.3823529   0.2331797   0.5315261
3         6 months    ki1119695-PROBIT            BELARUS                        Control              NA                0.0629771   0.0470634   0.0788908
3         6 months    ki1119695-PROBIT            BELARUS                        Maternal             NA                0.0455487   0.0302205   0.0608768
3         6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                0.2011494   0.1865218   0.2157771
3         6 months    ki1126311-ZVITAMBO          ZIMBABWE                       VitA                 NA                0.2186916   0.1922424   0.2451408
3         6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                0.3076923   0.2726155   0.3427691
3         6 months    ki1148112-iLiNS-DOSE        MALAWI                         LNS                  NA                0.3490566   0.2759094   0.4222038
3         6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                0.2447257   0.2254298   0.2640217
3         6 months    kiGH5241-JiVitA-3           BANGLADESH                     Maternal             NA                0.2228571   0.2050770   0.2406373
3         6 months    kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                0.2509960   0.1894847   0.3125074
3         6 months    kiGH5241-JiVitA-4           BANGLADESH                     LNS                  NA                0.2075472   0.1548727   0.2602217
3         6 months    kiGH5241-JiVitA-4           BANGLADESH                     Other                NA                0.2847534   0.2362682   0.3332385
3         24 months   ki1000111-WASH-Kenya        KENYA                          Control              NA                0.3260870   0.2301095   0.4220644
3         24 months   ki1000111-WASH-Kenya        KENYA                          LNS                  NA                0.2181818   0.1088175   0.3275461
3         24 months   ki1000111-WASH-Kenya        KENYA                          Other                NA                0.3090909   0.2225639   0.3956180
3         24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                0.5384615   0.3944733   0.6824498
3         24 months   kiGH5241-JiVitA-4           BANGLADESH                     LNS                  NA                0.3389831   0.2109302   0.4670359
3         24 months   kiGH5241-JiVitA-4           BANGLADESH                     Other                NA                0.3867925   0.2881806   0.4854044
4         Birth       ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                0.1019608   0.0923799   0.1115417
4         Birth       ki1126311-ZVITAMBO          ZIMBABWE                       VitA                 NA                0.1130790   0.0960671   0.1300909
4         Birth       kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                0.2940276   0.2736521   0.3144030
4         Birth       kiGH5241-JiVitA-3           BANGLADESH                     Maternal             NA                0.2751092   0.2550210   0.2951974
4         Birth       kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                0.3428571   0.1674696   0.5182446
4         Birth       kiGH5241-JiVitA-4           BANGLADESH                     LNS                  NA                0.2820513   0.1328901   0.4312124
4         Birth       kiGH5241-JiVitA-4           BANGLADESH                     Other                NA                0.2588235   0.1670468   0.3506002
4         6 months    iLiNS_DYADM_LNS             MALAWI                         Control              NA                0.2500000   0.1498069   0.3501931
4         6 months    iLiNS_DYADM_LNS             MALAWI                         LNS                  NA                0.3888889   0.2912010   0.4865768
4         6 months    ki1000304-VITAMIN-A         INDIA                          Control              NA                0.3245614   0.2824189   0.3667039
4         6 months    ki1000304-VITAMIN-A         INDIA                          VitA                 NA                0.3109244   0.2683586   0.3534901
4         6 months    ki1119695-PROBIT            BELARUS                        Control              NA                0.0660000   0.0417443   0.0902557
4         6 months    ki1119695-PROBIT            BELARUS                        Maternal             NA                0.0600375   0.0411279   0.0789472
4         6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                0.2026144   0.1864943   0.2187345
4         6 months    ki1126311-ZVITAMBO          ZIMBABWE                       VitA                 NA                0.1747788   0.1485999   0.2009576
4         6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                0.4000000   0.3637189   0.4362811
4         6 months    ki1148112-iLiNS-DOSE        MALAWI                         LNS                  NA                0.3181818   0.2346325   0.4017311
4         6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Control              NA                0.2500000   0.1776892   0.3223108
4         6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Maternal             NA                0.2352941   0.1509822   0.3196060
4         6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                0.2576792   0.2364031   0.2789553
4         6 months    kiGH5241-JiVitA-3           BANGLADESH                     Maternal             NA                0.2058319   0.1854757   0.2261881
4         6 months    kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                0.2684211   0.1947901   0.3420520
4         6 months    kiGH5241-JiVitA-4           BANGLADESH                     LNS                  NA                0.2424242   0.1755499   0.3092985
4         6 months    kiGH5241-JiVitA-4           BANGLADESH                     Other                NA                0.3002915   0.2453854   0.3551977
4         24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                0.3750000   0.1360463   0.6139537
4         24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                  NA                0.5333333   0.2790164   0.7876503
4         24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                NA                0.4210526   0.2629227   0.5791826
4         24 months   ki1000111-WASH-Kenya        KENYA                          Control              NA                0.2577320   0.1705115   0.3449524
4         24 months   ki1000111-WASH-Kenya        KENYA                          LNS                  NA                0.2549020   0.1350492   0.3747547
4         24 months   ki1000111-WASH-Kenya        KENYA                          Other                NA                0.3125000   0.2195893   0.4054107
4         24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                0.5625000   0.3839718   0.7410282
4         24 months   kiGH5241-JiVitA-4           BANGLADESH                     LNS                  NA                0.3793103   0.2045950   0.5540257
4         24 months   kiGH5241-JiVitA-4           BANGLADESH                     Other                NA                0.4444444   0.3201643   0.5687246
5         Birth       ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                0.1164659   0.1066769   0.1262548
5         Birth       ki1126311-ZVITAMBO          ZIMBABWE                       VitA                 NA                0.1294118   0.1114583   0.1473652
5         Birth       kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                0.3016194   0.2788110   0.3244279
5         Birth       kiGH5241-JiVitA-3           BANGLADESH                     Maternal             NA                0.2918455   0.2686449   0.3150461
5         Birth       kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                0.3513514   0.1965260   0.5061767
5         Birth       kiGH5241-JiVitA-4           BANGLADESH                     LNS                  NA                0.1666667   0.0416993   0.2916340
5         Birth       kiGH5241-JiVitA-4           BANGLADESH                     Other                NA                0.2592593   0.1396833   0.3788352
5         6 months    iLiNS_DYADM_LNS             MALAWI                         Control              NA                0.2500000   0.1521647   0.3478353
5         6 months    iLiNS_DYADM_LNS             MALAWI                         LNS                  NA                0.2631579   0.1746338   0.3516820
5         6 months    ki1000304-EU                INDIA                          Control              NA                0.3000000   0.0965380   0.5034620
5         6 months    ki1000304-EU                INDIA                          Zinc                 NA                0.3157895   0.1040482   0.5275307
5         6 months    ki1000304-VITAMIN-A         INDIA                          Control              NA                0.3813559   0.3370676   0.4256442
5         6 months    ki1000304-VITAMIN-A         INDIA                          VitA                 NA                0.3534483   0.3102312   0.3966654
5         6 months    ki1000304b-SAS-CompFeed     INDIA                          Control              NA                0.3571429   0.2463311   0.4679547
5         6 months    ki1000304b-SAS-CompFeed     INDIA                          Other                NA                0.1724138   0.1016206   0.2432070
5         6 months    ki1119695-PROBIT            BELARUS                        Control              NA                0.0491803   0.0353251   0.0630356
5         6 months    ki1119695-PROBIT            BELARUS                        Maternal             NA                0.0368932   0.0276631   0.0461233
5         6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                0.1760563   0.1607590   0.1913537
5         6 months    ki1126311-ZVITAMBO          ZIMBABWE                       VitA                 NA                0.1704545   0.1438688   0.1970403
5         6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                0.4285714   0.3934345   0.4637083
5         6 months    ki1148112-iLiNS-DOSE        MALAWI                         LNS                  NA                0.3396226   0.2640772   0.4151681
5         6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Control              NA                0.2500000   0.1884026   0.3115974
5         6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Maternal             NA                0.2272727   0.1465549   0.3079905
5         6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                0.2652705   0.2436769   0.2868641
5         6 months    kiGH5241-JiVitA-3           BANGLADESH                     Maternal             NA                0.2351852   0.2138184   0.2565519
5         6 months    kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                0.2500000   0.1841684   0.3158316
5         6 months    kiGH5241-JiVitA-4           BANGLADESH                     LNS                  NA                0.2469880   0.1842032   0.3097727
5         6 months    kiGH5241-JiVitA-4           BANGLADESH                     Other                NA                0.2403101   0.1768217   0.3037985
5         24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                0.4166667   0.2183802   0.6149532
5         24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                  NA                0.3461538   0.1623174   0.5299903
5         24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                NA                0.4666667   0.3201313   0.6132020
5         24 months   ki1000111-WASH-Kenya        KENYA                          Control              NA                0.3000000   0.1993692   0.4006308
5         24 months   ki1000111-WASH-Kenya        KENYA                          LNS                  NA                0.2777778   0.1580614   0.3974942
5         24 months   ki1000111-WASH-Kenya        KENYA                          Other                NA                0.2718447   0.1857413   0.3579480
5         24 months   ki1000304-ZnMort            INDIA                          Control              NA                0.6000000   0.3475327   0.8524673
5         24 months   ki1000304-ZnMort            INDIA                          Zinc                 NA                0.3846154   0.1153006   0.6539302
5         24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                0.2916667   0.1204399   0.4628934
5         24 months   kiGH5241-JiVitA-4           BANGLADESH                     LNS                  NA                0.3750000   0.1757956   0.5742044
5         24 months   kiGH5241-JiVitA-4           BANGLADESH                     Other                NA                0.3703704   0.1738016   0.5669392
6         Birth       ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                0.1245552   0.1149922   0.1341181
6         Birth       ki1126311-ZVITAMBO          ZIMBABWE                       VitA                 NA                0.1112412   0.0953668   0.1271156
6         Birth       kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                0.3063241   0.2834978   0.3291504
6         Birth       kiGH5241-JiVitA-3           BANGLADESH                     Maternal             NA                0.2453988   0.2229979   0.2677997
6         Birth       kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                0.4000000   0.2188123   0.5811877
6         Birth       kiGH5241-JiVitA-4           BANGLADESH                     LNS                  NA                0.3703704   0.1738616   0.5668792
6         Birth       kiGH5241-JiVitA-4           BANGLADESH                     Other                NA                0.2727273   0.1171360   0.4283185
6         6 months    ki1000304-VITAMIN-A         INDIA                          Control              NA                0.3189655   0.2759081   0.3620230
6         6 months    ki1000304-VITAMIN-A         INDIA                          VitA                 NA                0.3805310   0.3362612   0.4248007
6         6 months    ki1000304b-SAS-CompFeed     INDIA                          Control              NA                0.4444444   0.4084045   0.4804844
6         6 months    ki1000304b-SAS-CompFeed     INDIA                          Other                NA                0.2857143   0.2144652   0.3569634
6         6 months    ki1119695-PROBIT            BELARUS                        Control              NA                0.0730838   0.0574942   0.0886734
6         6 months    ki1119695-PROBIT            BELARUS                        Maternal             NA                0.0517928   0.0367540   0.0668317
6         6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                0.1755725   0.1611192   0.1900259
6         6 months    ki1126311-ZVITAMBO          ZIMBABWE                       VitA                 NA                0.1608696   0.1347143   0.1870248
6         6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                0.4800000   0.4433257   0.5166743
6         6 months    ki1148112-iLiNS-DOSE        MALAWI                         LNS                  NA                0.2752294   0.2067703   0.3436884
6         6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Control              NA                0.3200000   0.2502059   0.3897941
6         6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Maternal             NA                0.2439024   0.1616198   0.3261851
6         6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                0.2491582   0.2284708   0.2698457
6         6 months    kiGH5241-JiVitA-3           BANGLADESH                     Maternal             NA                0.2124183   0.1926797   0.2321569
6         6 months    kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                0.2280702   0.1400066   0.3161337
6         6 months    kiGH5241-JiVitA-4           BANGLADESH                     LNS                  NA                0.2601626   0.1724954   0.3478298
6         6 months    kiGH5241-JiVitA-4           BANGLADESH                     Other                NA                0.2326733   0.1718935   0.2934530
6         24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                0.2941176   0.0763477   0.5118876
6         24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                  NA                0.3214286   0.1475057   0.4953514
6         24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                NA                0.4791667   0.3370753   0.6212580
6         24 months   ki1000111-WASH-Kenya        KENYA                          Control              NA                0.2647059   0.1596109   0.3698009
6         24 months   ki1000111-WASH-Kenya        KENYA                          LNS                  NA                0.2881356   0.1723125   0.4039587
6         24 months   ki1000111-WASH-Kenya        KENYA                          Other                NA                0.3750000   0.2779392   0.4720608
7         Birth       ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                0.0990099   0.0903192   0.1077006
7         Birth       ki1126311-ZVITAMBO          ZIMBABWE                       VitA                 NA                0.1034483   0.0884326   0.1184639
7         Birth       kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                0.2821497   0.2595992   0.3047002
7         Birth       kiGH5241-JiVitA-3           BANGLADESH                     Maternal             NA                0.2926391   0.2710478   0.3142304
7         6 months    ki1000304-VITAMIN-A         INDIA                          Control              NA                0.3589744   0.3193688   0.3985799
7         6 months    ki1000304-VITAMIN-A         INDIA                          VitA                 NA                0.3049645   0.2688267   0.3411023
7         6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              NA                0.1707317   0.0552178   0.2862456
7         6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                NA                0.1219512   0.0214938   0.2224087
7         6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                 NA                0.1235955   0.0550182   0.1921728
7         6 months    ki1119695-PROBIT            BELARUS                        Control              NA                0.0654070   0.0483945   0.0824195
7         6 months    ki1119695-PROBIT            BELARUS                        Maternal             NA                0.0472779   0.0392165   0.0553394
7         6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                0.1875000   0.1718295   0.2031705
7         6 months    ki1126311-ZVITAMBO          ZIMBABWE                       VitA                 NA                0.1855895   0.1591811   0.2119979
7         6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                0.2592593   0.2342562   0.2842624
7         6 months    ki1148112-iLiNS-DOSE        MALAWI                         LNS                  NA                0.3092105   0.2466453   0.3717758
7         6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                0.2327869   0.2134807   0.2520930
7         6 months    kiGH5241-JiVitA-3           BANGLADESH                     Maternal             NA                0.2665639   0.2468575   0.2862704
7         6 months    kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                0.2624113   0.1762853   0.3485374
7         6 months    kiGH5241-JiVitA-4           BANGLADESH                     LNS                  NA                0.3088235   0.2199240   0.3977231
7         6 months    kiGH5241-JiVitA-4           BANGLADESH                     Other                NA                0.2987552   0.2365747   0.3609357
7         24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                0.6800000   0.4962842   0.8637158
7         24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                  NA                0.5714286   0.3872663   0.7555908
7         24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                NA                0.5000000   0.3660138   0.6339862
7         24 months   ki1000111-WASH-Kenya        KENYA                          Control              NA                0.3333333   0.1638374   0.5028292
7         24 months   ki1000111-WASH-Kenya        KENYA                          LNS                  NA                0.3333333   0.1307470   0.5359197
7         24 months   ki1000111-WASH-Kenya        KENYA                          Other                NA                0.3333333   0.2069986   0.4596681
7         24 months   ki1000304-EU                INDIA                          Control              NA                0.6153846   0.3458849   0.8848843
7         24 months   ki1000304-EU                INDIA                          Zinc                 NA                0.5000000   0.2330996   0.7669004
7         24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                0.5454545   0.5001839   0.5907252
7         24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS                  NA                0.5081967   0.4011609   0.6152326
7         24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                0.4102564   0.2602286   0.5602842
7         24 months   kiGH5241-JiVitA-4           BANGLADESH                     LNS                  NA                0.3809524   0.1463098   0.6155950
7         24 months   kiGH5241-JiVitA-4           BANGLADESH                     Other                NA                0.4166667   0.2693950   0.5639384
8         Birth       ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                0.0854430   0.0776670   0.0932191
8         Birth       ki1126311-ZVITAMBO          ZIMBABWE                       VitA                 NA                0.0704376   0.0581806   0.0826945
8         Birth       kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                0.3286979   0.3095870   0.3478087
8         Birth       kiGH5241-JiVitA-3           BANGLADESH                     Maternal             NA                0.2943604   0.2745001   0.3142207
8         6 months    iLiNS_DYADM_LNS             MALAWI                         Control              NA                0.3333333   0.2510443   0.4156223
8         6 months    iLiNS_DYADM_LNS             MALAWI                         LNS                  NA                0.2812500   0.2001917   0.3623083
8         6 months    ki1000304-VITAMIN-A         INDIA                          Control              NA                0.4112903   0.3658801   0.4567005
8         6 months    ki1000304-VITAMIN-A         INDIA                          VitA                 NA                0.3893805   0.3464240   0.4323371
8         6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Control              NA                0.4285714   0.3695589   0.4875839
8         6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Other                NA                0.2708333   0.1727100   0.3689567
8         6 months    ki1119695-PROBIT            BELARUS                        Control              NA                0.0656425   0.0504054   0.0808796
8         6 months    ki1119695-PROBIT            BELARUS                        Maternal             NA                0.0482456   0.0371507   0.0593406
8         6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                0.0975610   0.0871228   0.1079991
8         6 months    ki1126311-ZVITAMBO          ZIMBABWE                       VitA                 NA                0.1509091   0.1278485   0.1739697
8         6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                0.2500000   0.2249771   0.2750229
8         6 months    ki1148112-iLiNS-DOSE        MALAWI                         LNS                  NA                0.2916667   0.2349250   0.3484083
8         6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Control              NA                0.3333333   0.2774142   0.3892525
8         6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Maternal             NA                0.2950820   0.2179363   0.3722277
8         6 months    ki1148112-LCNI-5            MALAWI                         Control              NA                0.5000000   0.2796817   0.7203183
8         6 months    ki1148112-LCNI-5            MALAWI                         LNS                  NA                0.2444444   0.1181999   0.3706890
8         6 months    ki1148112-LCNI-5            MALAWI                         Other                NA                0.2142857   0.0614779   0.3670935
8         6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                0.2457067   0.2271183   0.2642952
8         6 months    kiGH5241-JiVitA-3           BANGLADESH                     Maternal             NA                0.2437746   0.2248379   0.2627112
8         6 months    kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                0.2204724   0.1401691   0.3007757
8         6 months    kiGH5241-JiVitA-4           BANGLADESH                     LNS                  NA                0.2340426   0.1607469   0.3073382
8         6 months    kiGH5241-JiVitA-4           BANGLADESH                     Other                NA                0.2490119   0.1904304   0.3075933
8         24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                0.6071429   0.4254676   0.7888181
8         24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                  NA                0.3684211   0.2143907   0.5224514
8         24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                NA                0.4901961   0.3524074   0.6279847
8         24 months   ki1000111-WASH-Kenya        KENYA                          Control              NA                0.4871795   0.3296033   0.6447556
8         24 months   ki1000111-WASH-Kenya        KENYA                          LNS                  NA                0.5769231   0.3861674   0.7676788
8         24 months   ki1000111-WASH-Kenya        KENYA                          Other                NA                0.3829787   0.2433792   0.5225783
8         24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                0.4210526   0.3768839   0.4652214
8         24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS                  NA                0.4025974   0.3142762   0.4909186
8         24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                0.3000000   0.0834359   0.5165641
8         24 months   kiGH5241-JiVitA-4           BANGLADESH                     LNS                  NA                0.4230769   0.2133189   0.6328349
8         24 months   kiGH5241-JiVitA-4           BANGLADESH                     Other                NA                0.3703704   0.2395744   0.5011664
9         Birth       ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                0.0723270   0.0653333   0.0793208
9         Birth       ki1126311-ZVITAMBO          ZIMBABWE                       VitA                 NA                0.0603889   0.0491158   0.0716621
9         Birth       kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                0.3137255   0.2964468   0.3310042
9         Birth       kiGH5241-JiVitA-3           BANGLADESH                     Maternal             NA                0.2763596   0.2581048   0.2946144
9         6 months    iLiNS_DYADM_LNS             MALAWI                         Control              NA                0.3684211   0.2751687   0.4616734
9         6 months    iLiNS_DYADM_LNS             MALAWI                         LNS                  NA                0.2000000   0.1372791   0.2627209
9         6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                0.2068966   0.0587578   0.3550353
9         6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                  NA                0.1724138   0.0342737   0.3105539
9         6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Other                NA                0.2127660   0.0952004   0.3303315
9         6 months    ki1000304-EU                INDIA                          Control              NA                0.3684211   0.1478142   0.5890279
9         6 months    ki1000304-EU                INDIA                          Zinc                 NA                0.5454545   0.2461720   0.8447370
9         6 months    ki1000304-VITAMIN-A         INDIA                          Control              NA                0.3793103   0.3272844   0.4313363
9         6 months    ki1000304-VITAMIN-A         INDIA                          VitA                 NA                0.3095238   0.2608173   0.3582303
9         6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Control              NA                0.4375000   0.3661358   0.5088642
9         6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Other                NA                0.5128205   0.4005594   0.6250816
9         6 months    ki1119695-PROBIT            BELARUS                        Control              NA                0.0816000   0.0657868   0.0974132
9         6 months    ki1119695-PROBIT            BELARUS                        Maternal             NA                0.0531469   0.0390649   0.0672288
9         6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                0.0982659   0.0871040   0.1094278
9         6 months    ki1126311-ZVITAMBO          ZIMBABWE                       VitA                 NA                0.1417476   0.1191821   0.1643130
9         6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                0.2333333   0.2094988   0.2571679
9         6 months    ki1148112-iLiNS-DOSE        MALAWI                         LNS                  NA                0.2546584   0.1977830   0.3115338
9         6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Control              NA                0.3684211   0.3054138   0.4314283
9         6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Maternal             NA                0.1454545   0.0900526   0.2008565
9         6 months    ki1148112-LCNI-5            MALAWI                         Control              NA                0.4166667   0.2183575   0.6149758
9         6 months    ki1148112-LCNI-5            MALAWI                         LNS                  NA                0.2916667   0.1623849   0.4209484
9         6 months    ki1148112-LCNI-5            MALAWI                         Other                NA                0.4761905   0.2614257   0.6909553
9         6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                0.2266501   0.2082009   0.2450992
9         6 months    kiGH5241-JiVitA-3           BANGLADESH                     Maternal             NA                0.2280050   0.2104572   0.2455527
9         6 months    kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                0.1445783   0.0600331   0.2291235
9         6 months    kiGH5241-JiVitA-4           BANGLADESH                     LNS                  NA                0.2427184   0.1511205   0.3343164
9         6 months    kiGH5241-JiVitA-4           BANGLADESH                     Other                NA                0.2573099   0.1854335   0.3291864
9         24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                0.5263158   0.3006256   0.7520060
9         24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                  NA                0.3200000   0.1361848   0.5038152
9         24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                NA                0.4230769   0.2880909   0.5580630
9         24 months   ki1000111-WASH-Kenya        KENYA                          Control              NA                0.3090909   0.1866354   0.4315464
9         24 months   ki1000111-WASH-Kenya        KENYA                          LNS                  NA                0.4285714   0.2785082   0.5786346
9         24 months   ki1000111-WASH-Kenya        KENYA                          Other                NA                0.3296703   0.2328270   0.4265136
9         24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                0.5000000   0.4594897   0.5405103
9         24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS                  NA                0.4626866   0.3581205   0.5672526
9         24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                0.4090909   0.2016086   0.6165732
9         24 months   kiGH5241-JiVitA-4           BANGLADESH                     LNS                  NA                0.2380952   0.0401783   0.4360122
9         24 months   kiGH5241-JiVitA-4           BANGLADESH                     Other                NA                0.4054054   0.2412051   0.5696057
10        Birth       ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                0.0697674   0.0620447   0.0774902
10        Birth       ki1126311-ZVITAMBO          ZIMBABWE                       VitA                 NA                0.0832266   0.0686576   0.0977956
10        Birth       kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                0.3578067   0.3392187   0.3763947
10        Birth       kiGH5241-JiVitA-3           BANGLADESH                     Maternal             NA                0.3238367   0.3074109   0.3402625
10        6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Control              NA                0.4062500   0.3365587   0.4759413
10        6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Maternal             NA                0.2553191   0.2022959   0.3083424
10        6 months    ki1000304-EU                INDIA                          Control              NA                0.2380952   0.0531061   0.4230843
10        6 months    ki1000304-EU                INDIA                          Zinc                 NA                0.4166667   0.1334021   0.6999312
10        6 months    ki1000304-VITAMIN-A         INDIA                          Control              NA                0.3333333   0.2783165   0.3883502
10        6 months    ki1000304-VITAMIN-A         INDIA                          VitA                 NA                0.3239437   0.2697072   0.3781801
10        6 months    ki1000304b-SAS-CompFeed     INDIA                          Control              NA                0.2222222   0.1797586   0.2646859
10        6 months    ki1000304b-SAS-CompFeed     INDIA                          Other                NA                0.3404255   0.2751222   0.4057289
10        6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              NA                0.1086957   0.0185016   0.1988898
10        6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                NA                0.1086957   0.0185016   0.1988898
10        6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                 NA                0.1208791   0.0537181   0.1880401
10        6 months    ki1119695-PROBIT            BELARUS                        Control              NA                0.0743920   0.0544070   0.0943770
10        6 months    ki1119695-PROBIT            BELARUS                        Maternal             NA                0.0682095   0.0581470   0.0782720
10        6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                0.1666667   0.1519333   0.1814000
10        6 months    ki1126311-ZVITAMBO          ZIMBABWE                       VitA                 NA                0.1693736   0.1419485   0.1967986
10        6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                0.3243243   0.2984266   0.3502221
10        6 months    ki1148112-iLiNS-DOSE        MALAWI                         LNS                  NA                0.2458101   0.1934176   0.2982025
10        6 months    ki1148112-LCNI-5            MALAWI                         Control              NA                0.2580645   0.1034576   0.4126714
10        6 months    ki1148112-LCNI-5            MALAWI                         LNS                  NA                0.4929577   0.3762337   0.6096818
10        6 months    ki1148112-LCNI-5            MALAWI                         Other                NA                0.5454545   0.3749352   0.7159738
10        6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                0.2922886   0.2727218   0.3118553
10        6 months    kiGH5241-JiVitA-3           BANGLADESH                     Maternal             NA                0.2462253   0.2278268   0.2646239
10        6 months    kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                0.2162162   0.0781215   0.3543109
10        6 months    kiGH5241-JiVitA-4           BANGLADESH                     LNS                  NA                0.1562500   0.0357045   0.2767955
10        6 months    kiGH5241-JiVitA-4           BANGLADESH                     Other                NA                0.1929825   0.0815613   0.3044036
10        24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                0.3448276   0.1711497   0.5185055
10        24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                  NA                0.5517241   0.3700056   0.7334427
10        24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                NA                0.4927536   0.3743229   0.6111844
10        24 months   ki1000111-WASH-Kenya        KENYA                          Control              NA                0.3230769   0.2091262   0.4370276
10        24 months   ki1000111-WASH-Kenya        KENYA                          LNS                  NA                0.2000000   0.0828601   0.3171399
10        24 months   ki1000111-WASH-Kenya        KENYA                          Other                NA                0.2990654   0.2121131   0.3860177
10        24 months   ki1000304-EU                INDIA                          Control              NA                0.5833333   0.2983943   0.8682724
10        24 months   ki1000304-EU                INDIA                          Zinc                 NA                0.5000000   0.2110191   0.7889809
10        24 months   ki1119695-PROBIT            BELARUS                        Control              NA                0.1521739   0.0610577   0.2432901
10        24 months   ki1119695-PROBIT            BELARUS                        Maternal             NA                0.1764706   0.0892404   0.2637008
10        24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                0.6000000   0.5543701   0.6456299
10        24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS                  NA                0.5522388   0.4543523   0.6501253
10        24 months   ki1148112-LCNI-5            MALAWI                         Control              NA                0.3846154   0.1172312   0.6519996
10        24 months   ki1148112-LCNI-5            MALAWI                         LNS                  NA                0.4545455   0.2441786   0.6649123
10        24 months   ki1148112-LCNI-5            MALAWI                         Other                NA                0.4545455   0.1570418   0.7520491
11        Birth       ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                0.0958904   0.0875227   0.1042581
11        Birth       ki1126311-ZVITAMBO          ZIMBABWE                       VitA                 NA                0.0924464   0.0780994   0.1067935
11        Birth       kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                0.3970856   0.3797929   0.4143784
11        Birth       kiGH5241-JiVitA-3           BANGLADESH                     Maternal             NA                0.3493530   0.3318697   0.3668364
11        6 months    iLiNS_DYADM_LNS             MALAWI                         Control              NA                0.1578947   0.0979530   0.2178365
11        6 months    iLiNS_DYADM_LNS             MALAWI                         LNS                  NA                0.2222222   0.1557036   0.2887409
11        6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Control              NA                0.2564103   0.2071696   0.3056509
11        6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Maternal             NA                0.2236842   0.1772983   0.2700701
11        6 months    ki1000304-VITAMIN-A         INDIA                          Control              NA                0.3773585   0.3092155   0.4455015
11        6 months    ki1000304-VITAMIN-A         INDIA                          VitA                 NA                0.3877551   0.3218943   0.4536159
11        6 months    ki1119695-PROBIT            BELARUS                        Control              NA                0.0855263   0.0656749   0.1053777
11        6 months    ki1119695-PROBIT            BELARUS                        Maternal             NA                0.0550576   0.0417645   0.0683507
11        6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                0.1318681   0.1191512   0.1445851
11        6 months    ki1126311-ZVITAMBO          ZIMBABWE                       VitA                 NA                0.1743295   0.1501800   0.1984790
11        6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                0.3437500   0.3198679   0.3676321
11        6 months    ki1148112-iLiNS-DOSE        MALAWI                         LNS                  NA                0.3386243   0.2807941   0.3964545
11        6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Control              NA                0.1578947   0.1183821   0.1974074
11        6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Maternal             NA                0.2297297   0.1661200   0.2933395
11        6 months    ki1148112-LCNI-5            MALAWI                         Control              NA                0.3333333   0.1546690   0.5119977
11        6 months    ki1148112-LCNI-5            MALAWI                         LNS                  NA                0.3333333   0.2069986   0.4596681
11        6 months    ki1148112-LCNI-5            MALAWI                         Other                NA                0.3333333   0.1438312   0.5228355
11        6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                0.3059096   0.2883099   0.3235093
11        6 months    kiGH5241-JiVitA-3           BANGLADESH                     Maternal             NA                0.2740657   0.2563817   0.2917497
11        24 months   ki1000107-Serrinha-VitA     BRAZIL                         Control              NA                0.6153846   0.4856255   0.7451437
11        24 months   ki1000107-Serrinha-VitA     BRAZIL                         VitA                 NA                0.3571429   0.2245190   0.4897668
11        24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                0.3571429   0.1039573   0.6103284
11        24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                  NA                0.5333333   0.2786610   0.7880057
11        24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                NA                0.2758621   0.1117720   0.4399521
11        24 months   ki1000111-WASH-Kenya        KENYA                          Control              NA                0.2786885   0.1658630   0.3915140
11        24 months   ki1000111-WASH-Kenya        KENYA                          LNS                  NA                0.2619048   0.1285666   0.3952429
11        24 months   ki1000111-WASH-Kenya        KENYA                          Other                NA                0.2179487   0.1260735   0.3098240
11        24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Control              NA                0.3529412   0.1245554   0.5813270
11        24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc                 NA                0.2207792   0.1276396   0.3139189
11        24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                0.5000000   0.4657645   0.5342355
11        24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS                  NA                0.5959596   0.5123829   0.6795363
12        Birth       ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                0.0771812   0.0696908   0.0846716
12        Birth       ki1126311-ZVITAMBO          ZIMBABWE                       VitA                 NA                0.0980176   0.0834505   0.1125848
12        Birth       kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                0.3837535   0.3661453   0.4013617
12        Birth       kiGH5241-JiVitA-3           BANGLADESH                     Maternal             NA                0.3515152   0.3341352   0.3688951
12        6 months    iLiNS_DYADM_LNS             MALAWI                         Control              NA                0.2553191   0.1919776   0.3186607
12        6 months    iLiNS_DYADM_LNS             MALAWI                         LNS                  NA                0.1956522   0.1386415   0.2526628
12        6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Control              NA                0.4444444   0.3818044   0.5070845
12        6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Maternal             NA                0.2758621   0.2306318   0.3210923
12        6 months    ki1000304-VITAMIN-A         INDIA                          Control              NA                0.3135593   0.2703313   0.3567873
12        6 months    ki1000304-VITAMIN-A         INDIA                          VitA                 NA                0.3423423   0.2994624   0.3852223
12        6 months    ki1000304b-SAS-CompFeed     INDIA                          Control              NA                0.2790698   0.2078758   0.3502637
12        6 months    ki1000304b-SAS-CompFeed     INDIA                          Other                NA                0.2105263   0.1381773   0.2828754
12        6 months    ki1119695-PROBIT            BELARUS                        Control              NA                0.0682415   0.0497129   0.0867700
12        6 months    ki1119695-PROBIT            BELARUS                        Maternal             NA                0.0463734   0.0357954   0.0569513
12        6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                0.1391753   0.1267177   0.1516328
12        6 months    ki1126311-ZVITAMBO          ZIMBABWE                       VitA                 NA                0.1380531   0.1168656   0.1592406
12        6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                0.3000000   0.2683634   0.3316366
12        6 months    ki1148112-iLiNS-DOSE        MALAWI                         LNS                  NA                0.2142857   0.1562314   0.2723400
12        6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Control              NA                0.2553191   0.2107637   0.2998746
12        6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Maternal             NA                0.2117647   0.1556225   0.2679069
12        6 months    ki1148112-LCNI-5            MALAWI                         Control              NA                0.4230769   0.2321673   0.6139866
12        6 months    ki1148112-LCNI-5            MALAWI                         LNS                  NA                0.2444444   0.1182143   0.3706746
12        6 months    ki1148112-LCNI-5            MALAWI                         Other                NA                0.3750000   0.1802865   0.5697135
12        6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                0.2775616   0.2584371   0.2966861
12        6 months    kiGH5241-JiVitA-3           BANGLADESH                     Maternal             NA                0.2580247   0.2406104   0.2754390
12        24 months   ki1000107-Serrinha-VitA     BRAZIL                         Control              NA                0.3333333   0.2242569   0.4424098
12        24 months   ki1000107-Serrinha-VitA     BRAZIL                         VitA                 NA                0.3333333   0.2388704   0.4277963
12        24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                0.2272727   0.0512384   0.4033070
12        24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                  NA                0.3103448   0.1410822   0.4796075
12        24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                NA                0.2888889   0.1557669   0.4220109
12        24 months   ki1000111-WASH-Kenya        KENYA                          Control              NA                0.3088235   0.1986453   0.4190018
12        24 months   ki1000111-WASH-Kenya        KENYA                          LNS                  NA                0.3043478   0.1156713   0.4930243
12        24 months   ki1000111-WASH-Kenya        KENYA                          Other                NA                0.4745763   0.3467317   0.6024209
12        24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Control              NA                0.4722222   0.3085866   0.6358578
12        24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc                 NA                0.2882883   0.2037342   0.3728423
12        24 months   ki1119695-PROBIT            BELARUS                        Control              NA                0.2244898   0.1514555   0.2975240
12        24 months   ki1119695-PROBIT            BELARUS                        Maternal             NA                0.1944444   0.1151699   0.2737190
12        24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                0.5384615   0.4738183   0.6031047
12        24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS                  NA                0.5000000   0.3834628   0.6165372


### Parameter: E(Y)


brthmon   agecat      studyid                     country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
--------  ----------  --------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
1         Birth       ki1126311-ZVITAMBO          ZIMBABWE                       NA                   NA                0.1284541   0.1105258   0.1463824
1         Birth       kiGH5241-JiVitA-3           BANGLADESH                     NA                   NA                0.3600637   0.3342607   0.3858668
1         6 months    ki1000125-AgaKhanUniv       PAKISTAN                       NA                   NA                0.2685714   0.2027163   0.3344265
1         6 months    ki1000304-VITAMIN-A         INDIA                          NA                   NA                0.3039648   0.2439965   0.3639330
1         6 months    ki1000304b-SAS-CompFeed     INDIA                          NA                   NA                0.3174603   0.2042276   0.4306931
1         6 months    ki1119695-PROBIT            BELARUS                        NA                   NA                0.0913405   0.0641921   0.1184888
1         6 months    ki1126311-ZVITAMBO          ZIMBABWE                       NA                   NA                0.1740331   0.1463971   0.2016692
1         6 months    ki1148112-iLiNS-DOSE        MALAWI                         NA                   NA                0.3286713   0.2514117   0.4059309
1         6 months    kiGH5241-JiVitA-3           BANGLADESH                     NA                   NA                0.2522523   0.2241973   0.2803072
1         24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     NA                   NA                0.3309859   0.2533146   0.4086573
1         24 months   ki1000111-WASH-Kenya        KENYA                          NA                   NA                0.3093525   0.2322331   0.3864719
1         24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   NA                   NA                0.3290043   0.2682825   0.3897262
2         Birth       ki1126311-ZVITAMBO          ZIMBABWE                       NA                   NA                0.1506196   0.1289646   0.1722747
2         Birth       kiGH5241-JiVitA-3           BANGLADESH                     NA                   NA                0.3115803   0.2834079   0.3397527
2         Birth       kiGH5241-JiVitA-4           BANGLADESH                     NA                   NA                0.2814815   0.1990433   0.3639196
2         6 months    ki1000304-EU                INDIA                          NA                   NA                0.3750000   0.2045791   0.5454209
2         6 months    ki1000304-VITAMIN-A         INDIA                          NA                   NA                0.3742690   0.3015230   0.4470151
2         6 months    ki1000304b-SAS-CompFeed     INDIA                          NA                   NA                0.2676056   0.1197325   0.4154788
2         6 months    ki1119695-PROBIT            BELARUS                        NA                   NA                0.0856808   0.0543524   0.1170091
2         6 months    ki1126311-ZVITAMBO          ZIMBABWE                       NA                   NA                0.1657143   0.1338782   0.1975504
2         6 months    ki1148112-iLiNS-DOSE        MALAWI                         NA                   NA                0.3467742   0.2626636   0.4308848
2         6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         NA                   NA                0.2153846   0.1146697   0.3160995
2         6 months    kiGH5241-JiVitA-3           BANGLADESH                     NA                   NA                0.2526042   0.2220644   0.2831439
2         6 months    kiGH5241-JiVitA-4           BANGLADESH                     NA                   NA                0.2518382   0.2112059   0.2924706
2         24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     NA                   NA                0.3660714   0.2764546   0.4556883
2         24 months   ki1000111-WASH-Kenya        KENYA                          NA                   NA                0.2796209   0.2189187   0.3403230
2         24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   NA                   NA                0.4615385   0.3708190   0.5522579
2         24 months   kiGH5241-JiVitA-4           BANGLADESH                     NA                   NA                0.4309211   0.3719912   0.4898509
3         Birth       ki1126311-ZVITAMBO          ZIMBABWE                       NA                   NA                0.1164797   0.0980029   0.1349565
3         Birth       kiGH5241-JiVitA-3           BANGLADESH                     NA                   NA                0.2875468   0.2629865   0.3121070
3         Birth       kiGH5241-JiVitA-4           BANGLADESH                     NA                   NA                0.3714286   0.2963058   0.4465513
3         6 months    ki1000304-VITAMIN-A         INDIA                          NA                   NA                0.3276596   0.2675220   0.3877972
3         6 months    ki1000304b-SAS-CompFeed     INDIA                          NA                   NA                0.2903226   0.1125334   0.4681117
3         6 months    ki1119695-PROBIT            BELARUS                        NA                   NA                0.0546177   0.0325779   0.0766574
3         6 months    ki1126311-ZVITAMBO          ZIMBABWE                       NA                   NA                0.2143865   0.1841567   0.2446162
3         6 months    ki1148112-iLiNS-DOSE        MALAWI                         NA                   NA                0.3409091   0.2597374   0.4220807
3         6 months    kiGH5241-JiVitA-3           BANGLADESH                     NA                   NA                0.2338767   0.2076300   0.2601234
3         6 months    kiGH5241-JiVitA-4           BANGLADESH                     NA                   NA                0.2546778   0.2233136   0.2860419
3         24 months   ki1000111-WASH-Kenya        KENYA                          NA                   NA                0.2957198   0.2398161   0.3516236
3         24 months   kiGH5241-JiVitA-4           BANGLADESH                     NA                   NA                0.4101382   0.3402986   0.4799779
4         Birth       ki1126311-ZVITAMBO          ZIMBABWE                       NA                   NA                0.1102123   0.0906857   0.1297390
4         Birth       kiGH5241-JiVitA-3           BANGLADESH                     NA                   NA                0.2843284   0.2557171   0.3129396
4         Birth       kiGH5241-JiVitA-4           BANGLADESH                     NA                   NA                0.2830189   0.2102391   0.3557987
4         6 months    iLiNS_DYADM_LNS             MALAWI                         NA                   NA                0.3095238   0.1680169   0.4510307
4         6 months    ki1000304-VITAMIN-A         INDIA                          NA                   NA                0.3175966   0.2576916   0.3775015
4         6 months    ki1119695-PROBIT            BELARUS                        NA                   NA                0.0629235   0.0322156   0.0936314
4         6 months    ki1126311-ZVITAMBO          ZIMBABWE                       NA                   NA                0.1818182   0.1510591   0.2125773
4         6 months    ki1148112-iLiNS-DOSE        MALAWI                         NA                   NA                0.3300971   0.2388383   0.4213559
4         6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         NA                   NA                0.2413793   0.1302898   0.3524688
4         6 months    kiGH5241-JiVitA-3           BANGLADESH                     NA                   NA                0.2318221   0.2023115   0.2613326
4         6 months    kiGH5241-JiVitA-4           BANGLADESH                     NA                   NA                0.2763338   0.2393513   0.3133163
4         24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     NA                   NA                0.4347826   0.3169576   0.5526076
4         24 months   ki1000111-WASH-Kenya        KENYA                          NA                   NA                0.2786885   0.2223162   0.3350608
4         24 months   kiGH5241-JiVitA-4           BANGLADESH                     NA                   NA                0.4596774   0.3705664   0.5487884
5         Birth       ki1126311-ZVITAMBO          ZIMBABWE                       NA                   NA                0.1262327   0.1057811   0.1466843
5         Birth       kiGH5241-JiVitA-3           BANGLADESH                     NA                   NA                0.2968750   0.2643533   0.3293967
5         Birth       kiGH5241-JiVitA-4           BANGLADESH                     NA                   NA                0.2644628   0.1855190   0.3434066
5         6 months    iLiNS_DYADM_LNS             MALAWI                         NA                   NA                0.2558140   0.1238588   0.3877691
5         6 months    ki1000304-EU                INDIA                          NA                   NA                0.3076923   0.1609470   0.4544376
5         6 months    ki1000304-VITAMIN-A         INDIA                          NA                   NA                0.3675214   0.3056151   0.4294276
5         6 months    ki1000304b-SAS-CompFeed     INDIA                          NA                   NA                0.2631579   0.0977734   0.4285424
5         6 months    ki1119695-PROBIT            BELARUS                        NA                   NA                0.0432331   0.0260183   0.0604479
5         6 months    ki1126311-ZVITAMBO          ZIMBABWE                       NA                   NA                0.1718213   0.1411480   0.2024946
5         6 months    ki1148112-iLiNS-DOSE        MALAWI                         NA                   NA                0.3543307   0.2708142   0.4378472
5         6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         NA                   NA                0.2352941   0.1337246   0.3368636
5         6 months    kiGH5241-JiVitA-3           BANGLADESH                     NA                   NA                0.2506739   0.2202794   0.2810683
5         6 months    kiGH5241-JiVitA-4           BANGLADESH                     NA                   NA                0.2450000   0.2073253   0.2826747
5         24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     NA                   NA                0.4210526   0.3212431   0.5208621
5         24 months   ki1000111-WASH-Kenya        KENYA                          NA                   NA                0.2827004   0.2252484   0.3401525
5         24 months   ki1000304-ZnMort            INDIA                          NA                   NA                0.5000000   0.3114024   0.6885976
5         24 months   kiGH5241-JiVitA-4           BANGLADESH                     NA                   NA                0.3466667   0.2361367   0.4571967
6         Birth       ki1126311-ZVITAMBO          ZIMBABWE                       NA                   NA                0.1145374   0.0960021   0.1330728
6         Birth       kiGH5241-JiVitA-3           BANGLADESH                     NA                   NA                0.2763819   0.2442484   0.3085155
6         Birth       kiGH5241-JiVitA-4           BANGLADESH                     NA                   NA                0.3444444   0.2423591   0.4465298
6         6 months    ki1000304-VITAMIN-A         INDIA                          NA                   NA                0.3493450   0.2874603   0.4112297
6         6 months    ki1000304b-SAS-CompFeed     INDIA                          NA                   NA                0.3661972   0.2618066   0.4705877
6         6 months    ki1119695-PROBIT            BELARUS                        NA                   NA                0.0630292   0.0411342   0.0849242
6         6 months    ki1126311-ZVITAMBO          ZIMBABWE                       NA                   NA                0.1641286   0.1342415   0.1940157
6         6 months    ki1148112-iLiNS-DOSE        MALAWI                         NA                   NA                0.3134328   0.2345948   0.3922709
6         6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         NA                   NA                0.2727273   0.1644582   0.3809963
6         6 months    kiGH5241-JiVitA-3           BANGLADESH                     NA                   NA                0.2305141   0.2018951   0.2591330
6         6 months    kiGH5241-JiVitA-4           BANGLADESH                     NA                   NA                0.2391800   0.1954315   0.2829284
6         24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     NA                   NA                0.3978495   0.2978342   0.4978647
6         24 months   ki1000111-WASH-Kenya        KENYA                          NA                   NA                0.3183857   0.2571058   0.3796655
7         Birth       ki1126311-ZVITAMBO          ZIMBABWE                       NA                   NA                0.1023018   0.0849521   0.1196515
7         Birth       kiGH5241-JiVitA-3           BANGLADESH                     NA                   NA                0.2875696   0.2563345   0.3188046
7         6 months    ki1000304-VITAMIN-A         INDIA                          NA                   NA                0.3333333   0.2796307   0.3870360
7         6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1345029   0.0832142   0.1857917
7         6 months    ki1119695-PROBIT            BELARUS                        NA                   NA                0.0562771   0.0359995   0.0765546
7         6 months    ki1126311-ZVITAMBO          ZIMBABWE                       NA                   NA                0.1860841   0.1553763   0.2167920
7         6 months    ki1148112-iLiNS-DOSE        MALAWI                         NA                   NA                0.3016760   0.2342485   0.3691035
7         6 months    kiGH5241-JiVitA-3           BANGLADESH                     NA                   NA                0.2501986   0.2225849   0.2778122
7         6 months    kiGH5241-JiVitA-4           BANGLADESH                     NA                   NA                0.2915058   0.2475262   0.3354854
7         24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     NA                   NA                0.5607477   0.4662685   0.6552268
7         24 months   ki1000111-WASH-Kenya        KENYA                          NA                   NA                0.3333333   0.2427340   0.4239327
7         24 months   ki1000304-EU                INDIA                          NA                   NA                0.5555556   0.3645553   0.7465558
7         24 months   ki1148112-iLiNS-DOSE        MALAWI                         NA                   NA                0.5138889   0.3976313   0.6301465
7         24 months   kiGH5241-JiVitA-4           BANGLADESH                     NA                   NA                0.4074074   0.3108676   0.5039472
8         Birth       ki1126311-ZVITAMBO          ZIMBABWE                       NA                   NA                0.0742219   0.0597019   0.0887418
8         Birth       kiGH5241-JiVitA-3           BANGLADESH                     NA                   NA                0.3122530   0.2846373   0.3398686
8         6 months    iLiNS_DYADM_LNS             MALAWI                         NA                   NA                0.3064516   0.1907598   0.4221434
8         6 months    ki1000304-VITAMIN-A         INDIA                          NA                   NA                0.4008439   0.3383195   0.4633683
8         6 months    ki1000304b-SAS-FoodSuppl    INDIA                          NA                   NA                0.3064516   0.1907598   0.4221434
8         6 months    ki1119695-PROBIT            BELARUS                        NA                   NA                0.0571429   0.0374590   0.0768268
8         6 months    ki1126311-ZVITAMBO          ZIMBABWE                       NA                   NA                0.1386555   0.1132890   0.1640219
8         6 months    ki1148112-iLiNS-DOSE        MALAWI                         NA                   NA                0.2843137   0.2222611   0.3463664
8         6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         NA                   NA                0.3076923   0.2123392   0.4030454
8         6 months    ki1148112-LCNI-5            MALAWI                         NA                   NA                0.2903226   0.1975702   0.3830750
8         6 months    kiGH5241-JiVitA-3           BANGLADESH                     NA                   NA                0.2447368   0.2182096   0.2712641
8         6 months    kiGH5241-JiVitA-4           BANGLADESH                     NA                   NA                0.2380038   0.1981247   0.2778830
8         24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     NA                   NA                0.4786325   0.3877266   0.5695384
8         24 months   ki1000111-WASH-Kenya        KENYA                          NA                   NA                0.4642857   0.3715075   0.5570639
8         24 months   ki1148112-iLiNS-DOSE        MALAWI                         NA                   NA                0.4062500   0.3074892   0.5050108
8         24 months   kiGH5241-JiVitA-4           BANGLADESH                     NA                   NA                0.3700000   0.2703592   0.4696408
9         Birth       ki1126311-ZVITAMBO          ZIMBABWE                       NA                   NA                0.0633205   0.0500511   0.0765898
9         Birth       kiGH5241-JiVitA-3           BANGLADESH                     NA                   NA                0.2957219   0.2705408   0.3209031
9         6 months    iLiNS_DYADM_LNS             MALAWI                         NA                   NA                0.3015873   0.1873482   0.4158264
9         6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     NA                   NA                0.2000000   0.1231239   0.2768761
9         6 months    ki1000304-EU                INDIA                          NA                   NA                0.4333333   0.2529801   0.6136866
9         6 months    ki1000304-VITAMIN-A         INDIA                          NA                   NA                0.3450292   0.2735693   0.4164892
9         6 months    ki1000304b-SAS-FoodSuppl    INDIA                          NA                   NA                0.4909091   0.3575725   0.6242457
9         6 months    ki1119695-PROBIT            BELARUS                        NA                   NA                0.0664179   0.0441545   0.0886813
9         6 months    ki1126311-ZVITAMBO          ZIMBABWE                       NA                   NA                0.1308140   0.1055993   0.1560286
9         6 months    ki1148112-iLiNS-DOSE        MALAWI                         NA                   NA                0.2513089   0.1896314   0.3129864
9         6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         NA                   NA                0.2365591   0.1497208   0.3233975
9         6 months    ki1148112-LCNI-5            MALAWI                         NA                   NA                0.3655914   0.2671820   0.4640008
9         6 months    kiGH5241-JiVitA-3           BANGLADESH                     NA                   NA                0.2273292   0.2018677   0.2527907
9         6 months    kiGH5241-JiVitA-4           BANGLADESH                     NA                   NA                0.2268908   0.1788774   0.2749041
9         24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     NA                   NA                0.4166667   0.3175289   0.5158044
9         24 months   ki1000111-WASH-Kenya        KENYA                          NA                   NA                0.3457447   0.2775770   0.4139124
9         24 months   ki1148112-iLiNS-DOSE        MALAWI                         NA                   NA                0.4675325   0.3553581   0.5797069
9         24 months   kiGH5241-JiVitA-4           BANGLADESH                     NA                   NA                0.3625000   0.2535544   0.4714456
10        Birth       ki1126311-ZVITAMBO          ZIMBABWE                       NA                   NA                0.0798845   0.0633914   0.0963776
10        Birth       kiGH5241-JiVitA-3           BANGLADESH                     NA                   NA                0.3410052   0.3160468   0.3659635
10        6 months    ki1000125-AgaKhanUniv       PAKISTAN                       NA                   NA                0.3423423   0.2536713   0.4310134
10        6 months    ki1000304-EU                INDIA                          NA                   NA                0.3030303   0.1438010   0.4622596
10        6 months    ki1000304-VITAMIN-A         INDIA                          NA                   NA                0.3286713   0.2514117   0.4059309
10        6 months    ki1000304b-SAS-CompFeed     INDIA                          NA                   NA                0.2772277   0.1830386   0.3714168
10        6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1147541   0.0684490   0.1610592
10        6 months    ki1119695-PROBIT            BELARUS                        NA                   NA                0.0710526   0.0484604   0.0936449
10        6 months    ki1126311-ZVITAMBO          ZIMBABWE                       NA                   NA                0.1687612   0.1376290   0.1998934
10        6 months    ki1148112-iLiNS-DOSE        MALAWI                         NA                   NA                0.2592593   0.2006820   0.3178365
10        6 months    ki1148112-LCNI-5            MALAWI                         NA                   NA                0.4518519   0.3675877   0.5361160
10        6 months    kiGH5241-JiVitA-3           BANGLADESH                     NA                   NA                0.2684685   0.2414993   0.2954376
10        6 months    kiGH5241-JiVitA-4           BANGLADESH                     NA                   NA                0.1904762   0.1187003   0.2622521
10        24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     NA                   NA                0.4724409   0.3852699   0.5596120
10        24 months   ki1000111-WASH-Kenya        KENYA                          NA                   NA                0.2857143   0.2254690   0.3459596
10        24 months   ki1000304-EU                INDIA                          NA                   NA                0.5416667   0.3380370   0.7452963
10        24 months   ki1119695-PROBIT            BELARUS                        NA                   NA                0.1649485   0.0398296   0.2900673
10        24 months   ki1148112-iLiNS-DOSE        MALAWI                         NA                   NA                0.5609756   0.4529014   0.6690498
10        24 months   ki1148112-LCNI-5            MALAWI                         NA                   NA                0.4347826   0.2899436   0.5796217
11        Birth       ki1126311-ZVITAMBO          ZIMBABWE                       NA                   NA                0.0932994   0.0766903   0.1099085
11        Birth       kiGH5241-JiVitA-3           BANGLADESH                     NA                   NA                0.3733945   0.3487719   0.3980171
11        6 months    iLiNS_DYADM_LNS             MALAWI                         NA                   NA                0.1891892   0.0993441   0.2790343
11        6 months    ki1000125-AgaKhanUniv       PAKISTAN                       NA                   NA                0.2402597   0.1725618   0.3079577
11        6 months    ki1000304-VITAMIN-A         INDIA                          NA                   NA                0.3823529   0.2875788   0.4771271
11        6 months    ki1119695-PROBIT            BELARUS                        NA                   NA                0.0683945   0.0432957   0.0934933
11        6 months    ki1126311-ZVITAMBO          ZIMBABWE                       NA                   NA                0.1633523   0.1360245   0.1906801
11        6 months    ki1148112-iLiNS-DOSE        MALAWI                         NA                   NA                0.3393665   0.2767986   0.4019344
11        6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         NA                   NA                0.2053571   0.1302074   0.2805069
11        6 months    ki1148112-LCNI-5            MALAWI                         NA                   NA                0.3333333   0.2427340   0.4239327
11        6 months    kiGH5241-JiVitA-3           BANGLADESH                     NA                   NA                0.2898053   0.2648455   0.3147650
11        24 months   ki1000107-Serrinha-VitA     BRAZIL                         NA                   NA                0.4814815   0.2894231   0.6735399
11        24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     NA                   NA                0.3620690   0.2373038   0.4868341
11        24 months   ki1000111-WASH-Kenya        KENYA                          NA                   NA                0.2486188   0.1854781   0.3117594
11        24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   NA                   NA                0.2446809   0.1573089   0.3320528
11        24 months   ki1148112-iLiNS-DOSE        MALAWI                         NA                   NA                0.5826087   0.4920863   0.6731311
12        Birth       ki1126311-ZVITAMBO          ZIMBABWE                       NA                   NA                0.0928690   0.0764810   0.1092569
12        Birth       kiGH5241-JiVitA-3           BANGLADESH                     NA                   NA                0.3670261   0.3423164   0.3917357
12        6 months    iLiNS_DYADM_LNS             MALAWI                         NA                   NA                0.2258065   0.1403692   0.3112437
12        6 months    ki1000125-AgaKhanUniv       PAKISTAN                       NA                   NA                0.3783784   0.2999785   0.4567783
12        6 months    ki1000304-VITAMIN-A         INDIA                          NA                   NA                0.3275109   0.2665942   0.3884276
12        6 months    ki1000304b-SAS-CompFeed     INDIA                          NA                   NA                0.2469136   0.1405130   0.3533142
12        6 months    ki1119695-PROBIT            BELARUS                        NA                   NA                0.0567686   0.0347356   0.0788016
12        6 months    ki1126311-ZVITAMBO          ZIMBABWE                       NA                   NA                0.1383399   0.1137614   0.1629184
12        6 months    ki1148112-iLiNS-DOSE        MALAWI                         NA                   NA                0.2307692   0.1644408   0.2970976
12        6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         NA                   NA                0.2272727   0.1555100   0.2990355
12        6 months    ki1148112-LCNI-5            MALAWI                         NA                   NA                0.3263158   0.2315326   0.4210990
12        6 months    kiGH5241-JiVitA-3           BANGLADESH                     NA                   NA                0.2675522   0.2416639   0.2934404
12        24 months   ki1000107-Serrinha-VitA     BRAZIL                         NA                   NA                0.3333333   0.1890388   0.4776279
12        24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     NA                   NA                0.2812500   0.1908390   0.3716610
12        24 months   ki1000111-WASH-Kenya        KENYA                          NA                   NA                0.3733333   0.2956690   0.4509977
12        24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   NA                   NA                0.3333333   0.2568679   0.4097988
12        24 months   ki1119695-PROBIT            BELARUS                        NA                   NA                0.2066116   0.0988583   0.3143648
12        24 months   ki1148112-iLiNS-DOSE        MALAWI                         NA                   NA                0.5090909   0.3757543   0.6424275


### Parameter: RR


brthmon   agecat      studyid                     country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
--------  ----------  --------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
1         Birth       ki1126311-ZVITAMBO          ZIMBABWE                       Control              Control           1.0000000   1.0000000   1.0000000
1         Birth       ki1126311-ZVITAMBO          ZIMBABWE                       VitA                 Control           0.7105603   0.6168958   0.8184460
1         Birth       kiGH5241-JiVitA-3           BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
1         Birth       kiGH5241-JiVitA-3           BANGLADESH                     Maternal             Control           0.9823287   0.9144141   1.0552875
1         6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Control              Control           1.0000000   1.0000000   1.0000000
1         6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Maternal             Control           1.0110110   0.7911567   1.2919605
1         6 months    ki1000304-VITAMIN-A         INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
1         6 months    ki1000304-VITAMIN-A         INDIA                          VitA                 Control           0.7711712   0.6315898   0.9416000
1         6 months    ki1000304b-SAS-CompFeed     INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
1         6 months    ki1000304b-SAS-CompFeed     INDIA                          Other                Control           0.8445748   0.5943755   1.2000941
1         6 months    ki1119695-PROBIT            BELARUS                        Control              Control           1.0000000   1.0000000   1.0000000
1         6 months    ki1119695-PROBIT            BELARUS                        Maternal             Control           0.9585145   0.7121362   1.2901324
1         6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control              Control           1.0000000   1.0000000   1.0000000
1         6 months    ki1126311-ZVITAMBO          ZIMBABWE                       VitA                 Control           0.8777945   0.7486631   1.0291987
1         6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
1         6 months    ki1148112-iLiNS-DOSE        MALAWI                         LNS                  Control           0.7676768   0.6058942   0.9726576
1         6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
1         6 months    kiGH5241-JiVitA-3           BANGLADESH                     Maternal             Control           0.9172414   0.8208957   1.0248948
1         24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
1         24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                  Control           1.2543860   0.5288782   2.9751355
1         24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                Control           1.6666667   0.7806021   3.5585068
1         24 months   ki1000111-WASH-Kenya        KENYA                          Control              Control           1.0000000   1.0000000   1.0000000
1         24 months   ki1000111-WASH-Kenya        KENYA                          LNS                  Control           1.0316742   0.5461928   1.9486740
1         24 months   ki1000111-WASH-Kenya        KENYA                          Other                Control           0.7853042   0.4335089   1.4225838
1         24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Control              Control           1.0000000   1.0000000   1.0000000
1         24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc                 Control           1.2549020   0.7438651   2.1170221
2         Birth       ki1126311-ZVITAMBO          ZIMBABWE                       Control              Control           1.0000000   1.0000000   1.0000000
2         Birth       ki1126311-ZVITAMBO          ZIMBABWE                       VitA                 Control           1.1895590   1.0297707   1.3741415
2         Birth       kiGH5241-JiVitA-3           BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
2         Birth       kiGH5241-JiVitA-3           BANGLADESH                     Maternal             Control           0.7658155   0.7002727   0.8374929
2         Birth       kiGH5241-JiVitA-4           BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
2         Birth       kiGH5241-JiVitA-4           BANGLADESH                     LNS                  Control           1.2664474   0.5236543   3.0628775
2         Birth       kiGH5241-JiVitA-4           BANGLADESH                     Other                Control           1.3407258   0.6289966   2.8577986
2         6 months    ki1000304-EU                INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
2         6 months    ki1000304-EU                INDIA                          Zinc                 Control           0.9578947   0.3818587   2.4028846
2         6 months    ki1000304-VITAMIN-A         INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
2         6 months    ki1000304-VITAMIN-A         INDIA                          VitA                 Control           0.9729437   0.8010543   1.1817171
2         6 months    ki1000304b-SAS-CompFeed     INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
2         6 months    ki1000304b-SAS-CompFeed     INDIA                          Other                Control           1.3368056   0.8252781   2.1653902
2         6 months    ki1119695-PROBIT            BELARUS                        Control              Control           1.0000000   1.0000000   1.0000000
2         6 months    ki1119695-PROBIT            BELARUS                        Maternal             Control           0.7846662   0.5590418   1.1013508
2         6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control              Control           1.0000000   1.0000000   1.0000000
2         6 months    ki1126311-ZVITAMBO          ZIMBABWE                       VitA                 Control           0.6802117   0.5596417   0.8267574
2         6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
2         6 months    ki1148112-iLiNS-DOSE        MALAWI                         LNS                  Control           1.1158730   0.8752865   1.4225886
2         6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
2         6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Maternal             Control           1.0740741   0.6726554   1.7150462
2         6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
2         6 months    kiGH5241-JiVitA-3           BANGLADESH                     Maternal             Control           0.8680537   0.7692333   0.9795692
2         6 months    kiGH5241-JiVitA-4           BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
2         6 months    kiGH5241-JiVitA-4           BANGLADESH                     LNS                  Control           1.0916667   0.6815363   1.7486026
2         6 months    kiGH5241-JiVitA-4           BANGLADESH                     Other                Control           1.1563900   0.7441698   1.7969526
2         24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
2         24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                  Control           0.4347826   0.1833951   1.0307575
2         24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                Control           0.7213115   0.4370285   1.1905178
2         24 months   ki1000111-WASH-Kenya        KENYA                          Control              Control           1.0000000   1.0000000   1.0000000
2         24 months   ki1000111-WASH-Kenya        KENYA                          LNS                  Control           0.7754630   0.3928667   1.5306534
2         24 months   ki1000111-WASH-Kenya        KENYA                          Other                Control           1.2019676   0.7355883   1.9640417
2         24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Control              Control           1.0000000   1.0000000   1.0000000
2         24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc                 Control           1.1578947   0.6697489   2.0018252
2         24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
2         24 months   kiGH5241-JiVitA-4           BANGLADESH                     LNS                  Control           1.2157895   0.8356751   1.7688022
2         24 months   kiGH5241-JiVitA-4           BANGLADESH                     Other                Control           1.0888889   0.7504387   1.5799812
3         Birth       ki1126311-ZVITAMBO          ZIMBABWE                       Control              Control           1.0000000   1.0000000   1.0000000
3         Birth       ki1126311-ZVITAMBO          ZIMBABWE                       VitA                 Control           1.0636364   0.9075598   1.2465540
3         Birth       kiGH5241-JiVitA-3           BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
3         Birth       kiGH5241-JiVitA-3           BANGLADESH                     Maternal             Control           0.8071848   0.7406402   0.8797082
3         Birth       kiGH5241-JiVitA-4           BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
3         Birth       kiGH5241-JiVitA-4           BANGLADESH                     LNS                  Control           1.3857466   0.8534216   2.2501114
3         Birth       kiGH5241-JiVitA-4           BANGLADESH                     Other                Control           0.8958665   0.5251711   1.5282194
3         6 months    ki1000304-VITAMIN-A         INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
3         6 months    ki1000304-VITAMIN-A         INDIA                          VitA                 Control           0.7718579   0.6409684   0.9294758
3         6 months    ki1000304b-SAS-CompFeed     INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
3         6 months    ki1000304b-SAS-CompFeed     INDIA                          Other                Control           2.1411765   1.1751109   3.9014503
3         6 months    ki1119695-PROBIT            BELARUS                        Control              Control           1.0000000   1.0000000   1.0000000
3         6 months    ki1119695-PROBIT            BELARUS                        Maternal             Control           0.7232574   0.4746009   1.1021920
3         6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control              Control           1.0000000   1.0000000   1.0000000
3         6 months    ki1126311-ZVITAMBO          ZIMBABWE                       VitA                 Control           1.0872096   0.9441146   1.2519928
3         6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
3         6 months    ki1148112-iLiNS-DOSE        MALAWI                         LNS                  Control           1.1344340   0.8936649   1.4400705
3         6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
3         6 months    kiGH5241-JiVitA-3           BANGLADESH                     Maternal             Control           0.9106404   0.8140088   1.0187432
3         6 months    kiGH5241-JiVitA-4           BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
3         6 months    kiGH5241-JiVitA-4           BANGLADESH                     LNS                  Control           0.8268943   0.5809912   1.1768752
3         6 months    kiGH5241-JiVitA-4           BANGLADESH                     Other                Control           1.1344936   0.8417451   1.5290563
3         24 months   ki1000111-WASH-Kenya        KENYA                          Control              Control           1.0000000   1.0000000   1.0000000
3         24 months   ki1000111-WASH-Kenya        KENYA                          LNS                  Control           0.6690909   0.3741441   1.1965514
3         24 months   ki1000111-WASH-Kenya        KENYA                          Other                Control           0.9478788   0.6314558   1.4228616
3         24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
3         24 months   kiGH5241-JiVitA-4           BANGLADESH                     LNS                  Control           0.6295400   0.3963274   0.9999828
3         24 months   kiGH5241-JiVitA-4           BANGLADESH                     Other                Control           0.7183288   0.4963450   1.0395920
4         Birth       ki1126311-ZVITAMBO          ZIMBABWE                       Control              Control           1.0000000   1.0000000   1.0000000
4         Birth       ki1126311-ZVITAMBO          ZIMBABWE                       VitA                 Control           1.1090442   0.9287844   1.3242891
4         Birth       kiGH5241-JiVitA-3           BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
4         Birth       kiGH5241-JiVitA-3           BANGLADESH                     Maternal             Control           0.9356578   0.8460271   1.0347841
4         Birth       kiGH5241-JiVitA-4           BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
4         Birth       kiGH5241-JiVitA-4           BANGLADESH                     LNS                  Control           0.8226496   0.3940804   1.7172952
4         Birth       kiGH5241-JiVitA-4           BANGLADESH                     Other                Control           0.7549020   0.4051684   1.4065187
4         6 months    iLiNS_DYADM_LNS             MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
4         6 months    iLiNS_DYADM_LNS             MALAWI                         LNS                  Control           1.5555556   0.9693241   2.4963303
4         6 months    ki1000304-VITAMIN-A         INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
4         6 months    ki1000304-VITAMIN-A         INDIA                          VitA                 Control           0.9579832   0.7932568   1.1569164
4         6 months    ki1119695-PROBIT            BELARUS                        Control              Control           1.0000000   1.0000000   1.0000000
4         6 months    ki1119695-PROBIT            BELARUS                        Maternal             Control           0.9096594   0.5599804   1.4776952
4         6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control              Control           1.0000000   1.0000000   1.0000000
4         6 months    ki1126311-ZVITAMBO          ZIMBABWE                       VitA                 Control           0.8626178   0.7280502   1.0220579
4         6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
4         6 months    ki1148112-iLiNS-DOSE        MALAWI                         LNS                  Control           0.7954545   0.6025111   1.0501847
4         6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
4         6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Maternal             Control           0.9411765   0.5938533   1.4916364
4         6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
4         6 months    kiGH5241-JiVitA-3           BANGLADESH                     Maternal             Control           0.7987914   0.7022213   0.9086418
4         6 months    kiGH5241-JiVitA-4           BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
4         6 months    kiGH5241-JiVitA-4           BANGLADESH                     LNS                  Control           0.9031491   0.6120332   1.3327354
4         6 months    kiGH5241-JiVitA-4           BANGLADESH                     Other                Control           1.1187332   0.8045559   1.5555961
4         24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
4         24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                  Control           1.4222222   0.6416871   3.1521841
4         24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                Control           1.1228070   0.5358949   2.3525055
4         24 months   ki1000111-WASH-Kenya        KENYA                          Control              Control           1.0000000   1.0000000   1.0000000
4         24 months   ki1000111-WASH-Kenya        KENYA                          LNS                  Control           0.9890196   0.5541302   1.7652165
4         24 months   ki1000111-WASH-Kenya        KENYA                          Other                Control           1.2125000   0.7727630   1.9024673
4         24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
4         24 months   kiGH5241-JiVitA-4           BANGLADESH                     LNS                  Control           0.6743295   0.3854271   1.1797827
4         24 months   kiGH5241-JiVitA-4           BANGLADESH                     Other                Control           0.7901235   0.5175939   1.2061484
5         Birth       ki1126311-ZVITAMBO          ZIMBABWE                       Control              Control           1.0000000   1.0000000   1.0000000
5         Birth       ki1126311-ZVITAMBO          ZIMBABWE                       VitA                 Control           1.1111562   0.9447785   1.3068334
5         Birth       kiGH5241-JiVitA-3           BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
5         Birth       kiGH5241-JiVitA-3           BANGLADESH                     Maternal             Control           0.9675951   0.8670254   1.0798303
5         Birth       kiGH5241-JiVitA-4           BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
5         Birth       kiGH5241-JiVitA-4           BANGLADESH                     LNS                  Control           0.4743590   0.1987873   1.1319456
5         Birth       kiGH5241-JiVitA-4           BANGLADESH                     Other                Control           0.7378917   0.3898965   1.3964841
5         6 months    iLiNS_DYADM_LNS             MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
5         6 months    iLiNS_DYADM_LNS             MALAWI                         LNS                  Control           1.0526316   0.6282882   1.7635747
5         6 months    ki1000304-EU                INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
5         6 months    ki1000304-EU                INDIA                          Zinc                 Control           1.0526316   0.4055903   2.7319025
5         6 months    ki1000304-VITAMIN-A         INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
5         6 months    ki1000304-VITAMIN-A         INDIA                          VitA                 Control           0.9268199   0.7829936   1.0970654
5         6 months    ki1000304b-SAS-CompFeed     INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
5         6 months    ki1000304b-SAS-CompFeed     INDIA                          Other                Control           0.4827586   0.2908483   0.8012970
5         6 months    ki1119695-PROBIT            BELARUS                        Control              Control           1.0000000   1.0000000   1.0000000
5         6 months    ki1119695-PROBIT            BELARUS                        Maternal             Control           0.7501618   0.5155570   1.0915238
5         6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control              Control           1.0000000   1.0000000   1.0000000
5         6 months    ki1126311-ZVITAMBO          ZIMBABWE                       VitA                 Control           0.9681818   0.8098754   1.1574323
5         6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
5         6 months    ki1148112-iLiNS-DOSE        MALAWI                         LNS                  Control           0.7924528   0.6251962   1.0044551
5         6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
5         6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Maternal             Control           0.9090909   0.5900392   1.4006633
5         6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
5         6 months    kiGH5241-JiVitA-3           BANGLADESH                     Maternal             Control           0.8865863   0.7847594   1.0016258
5         6 months    kiGH5241-JiVitA-4           BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
5         6 months    kiGH5241-JiVitA-4           BANGLADESH                     LNS                  Control           0.9879518   0.6850715   1.4247401
5         6 months    kiGH5241-JiVitA-4           BANGLADESH                     Other                Control           0.9612403   0.6619745   1.3957985
5         24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
5         24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                  Control           0.8307692   0.4071768   1.6950317
5         24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                Control           1.1200000   0.6332953   1.9807505
5         24 months   ki1000111-WASH-Kenya        KENYA                          Control              Control           1.0000000   1.0000000   1.0000000
5         24 months   ki1000111-WASH-Kenya        KENYA                          LNS                  Control           0.9259259   0.5362831   1.5986683
5         24 months   ki1000111-WASH-Kenya        KENYA                          Other                Control           0.9061489   0.5712677   1.4373398
5         24 months   ki1000304-ZnMort            INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
5         24 months   ki1000304-ZnMort            INDIA                          Zinc                 Control           0.6410256   0.2831985   1.4509749
5         24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
5         24 months   kiGH5241-JiVitA-4           BANGLADESH                     LNS                  Control           1.2857143   0.5824311   2.8382091
5         24 months   kiGH5241-JiVitA-4           BANGLADESH                     Other                Control           1.2698413   0.5755011   2.8019007
6         Birth       ki1126311-ZVITAMBO          ZIMBABWE                       Control              Control           1.0000000   1.0000000   1.0000000
6         Birth       ki1126311-ZVITAMBO          ZIMBABWE                       VitA                 Control           0.8931081   0.7595015   1.0502179
6         Birth       kiGH5241-JiVitA-3           BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
6         Birth       kiGH5241-JiVitA-3           BANGLADESH                     Maternal             Control           0.8011083   0.7120602   0.9012924
6         Birth       kiGH5241-JiVitA-4           BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
6         Birth       kiGH5241-JiVitA-4           BANGLADESH                     LNS                  Control           0.9259259   0.4610264   1.8596307
6         Birth       kiGH5241-JiVitA-4           BANGLADESH                     Other                Control           0.6818182   0.3292445   1.4119479
6         6 months    ki1000304-VITAMIN-A         INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
6         6 months    ki1000304-VITAMIN-A         INDIA                          VitA                 Control           1.1930160   0.9982817   1.4257371
6         6 months    ki1000304b-SAS-CompFeed     INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
6         6 months    ki1000304b-SAS-CompFeed     INDIA                          Other                Control           0.6428571   0.4948500   0.8351326
6         6 months    ki1119695-PROBIT            BELARUS                        Control              Control           1.0000000   1.0000000   1.0000000
6         6 months    ki1119695-PROBIT            BELARUS                        Maternal             Control           0.7086775   0.4937393   1.0171842
6         6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control              Control           1.0000000   1.0000000   1.0000000
6         6 months    ki1126311-ZVITAMBO          ZIMBABWE                       VitA                 Control           0.9162571   0.7636102   1.0994182
6         6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
6         6 months    ki1148112-iLiNS-DOSE        MALAWI                         LNS                  Control           0.5733945   0.4420262   0.7438049
6         6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
6         6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Maternal             Control           0.7621951   0.5100350   1.1390226
6         6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
6         6 months    kiGH5241-JiVitA-3           BANGLADESH                     Maternal             Control           0.8525437   0.7526616   0.9656808
6         6 months    kiGH5241-JiVitA-4           BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
6         6 months    kiGH5241-JiVitA-4           BANGLADESH                     LNS                  Control           1.1407129   0.6833034   1.9043165
6         6 months    kiGH5241-JiVitA-4           BANGLADESH                     Other                Control           1.0201828   0.6400543   1.6260698
6         24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
6         24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                  Control           1.0928571   0.4368064   2.7342475
6         24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                Control           1.6291667   0.7337964   3.6170579
6         24 months   ki1000111-WASH-Kenya        KENYA                          Control              Control           1.0000000   1.0000000   1.0000000
6         24 months   ki1000111-WASH-Kenya        KENYA                          LNS                  Control           1.0885122   0.6186738   1.9151592
6         24 months   ki1000111-WASH-Kenya        KENYA                          Other                Control           1.4166667   0.8819359   2.2756126
7         Birth       ki1126311-ZVITAMBO          ZIMBABWE                       Control              Control           1.0000000   1.0000000   1.0000000
7         Birth       ki1126311-ZVITAMBO          ZIMBABWE                       VitA                 Control           1.0448276   0.8818124   1.2379783
7         Birth       kiGH5241-JiVitA-3           BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
7         Birth       kiGH5241-JiVitA-3           BANGLADESH                     Maternal             Control           1.0371768   0.9302843   1.1563516
7         6 months    ki1000304-VITAMIN-A         INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
7         6 months    ki1000304-VITAMIN-A         INDIA                          VitA                 Control           0.8495441   0.7225531   0.9988541
7         6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              Control           1.0000000   1.0000000   1.0000000
7         6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                Control           0.7142857   0.2459912   2.0740742
7         6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                 Control           0.7239165   0.3017735   1.7365846
7         6 months    ki1119695-PROBIT            BELARUS                        Control              Control           1.0000000   1.0000000   1.0000000
7         6 months    ki1119695-PROBIT            BELARUS                        Maternal             Control           0.7228271   0.5332519   0.9797979
7         6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control              Control           1.0000000   1.0000000   1.0000000
7         6 months    ki1126311-ZVITAMBO          ZIMBABWE                       VitA                 Control           0.9898108   0.8392345   1.1674035
7         6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
7         6 months    ki1148112-iLiNS-DOSE        MALAWI                         LNS                  Control           1.1926692   0.9531787   1.4923327
7         6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
7         6 months    kiGH5241-JiVitA-3           BANGLADESH                     Maternal             Control           1.1450986   1.0246690   1.2796824
7         6 months    kiGH5241-JiVitA-4           BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
7         6 months    kiGH5241-JiVitA-4           BANGLADESH                     LNS                  Control           1.1768680   0.7605459   1.8210845
7         6 months    kiGH5241-JiVitA-4           BANGLADESH                     Other                Control           1.1384995   0.7718520   1.6793131
7         24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
7         24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                  Control           0.8403361   0.5518388   1.2796578
7         24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                Control           0.7352941   0.5025741   1.0757766
7         24 months   ki1000111-WASH-Kenya        KENYA                          Control              Control           1.0000000   1.0000000   1.0000000
7         24 months   ki1000111-WASH-Kenya        KENYA                          LNS                  Control           1.0000000   0.4527474   2.2087369
7         24 months   ki1000111-WASH-Kenya        KENYA                          Other                Control           1.0000000   0.5303620   1.8855048
7         24 months   ki1000304-EU                INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
7         24 months   ki1000304-EU                INDIA                          Zinc                 Control           0.8125000   0.4073440   1.6206359
7         24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
7         24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS                  Control           0.9316940   0.7429455   1.1683949
7         24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
7         24 months   kiGH5241-JiVitA-4           BANGLADESH                     LNS                  Control           0.9285714   0.4536413   1.9007195
7         24 months   kiGH5241-JiVitA-4           BANGLADESH                     Other                Control           1.0156250   0.6107877   1.6887932
8         Birth       ki1126311-ZVITAMBO          ZIMBABWE                       Control              Control           1.0000000   1.0000000   1.0000000
8         Birth       ki1126311-ZVITAMBO          ZIMBABWE                       VitA                 Control           0.8243804   0.6773980   1.0032553
8         Birth       kiGH5241-JiVitA-3           BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
8         Birth       kiGH5241-JiVitA-3           BANGLADESH                     Maternal             Control           0.8955349   0.8192252   0.9789527
8         6 months    iLiNS_DYADM_LNS             MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
8         6 months    iLiNS_DYADM_LNS             MALAWI                         LNS                  Control           0.8437500   0.5773069   1.2331639
8         6 months    ki1000304-VITAMIN-A         INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
8         6 months    ki1000304-VITAMIN-A         INDIA                          VitA                 Control           0.9467291   0.8099186   1.1066496
8         6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
8         6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Other                Control           0.6319444   0.4288966   0.9311190
8         6 months    ki1119695-PROBIT            BELARUS                        Control              Control           1.0000000   1.0000000   1.0000000
8         6 months    ki1119695-PROBIT            BELARUS                        Maternal             Control           0.7349757   0.5307817   1.0177242
8         6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control              Control           1.0000000   1.0000000   1.0000000
8         6 months    ki1126311-ZVITAMBO          ZIMBABWE                       VitA                 Control           1.5468181   1.2835851   1.8640341
8         6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
8         6 months    ki1148112-iLiNS-DOSE        MALAWI                         LNS                  Control           1.1666667   0.9374138   1.4519853
8         6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
8         6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Maternal             Control           0.8852459   0.6488704   1.2077300
8         6 months    ki1148112-LCNI-5            MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
8         6 months    ki1148112-LCNI-5            MALAWI                         LNS                  Control           0.4888889   0.2479554   0.9639327
8         6 months    ki1148112-LCNI-5            MALAWI                         Other                Control           0.4285714   0.1853413   0.9910011
8         6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
8         6 months    kiGH5241-JiVitA-3           BANGLADESH                     Maternal             Control           0.9921363   0.8901580   1.1057975
8         6 months    kiGH5241-JiVitA-4           BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
8         6 months    kiGH5241-JiVitA-4           BANGLADESH                     LNS                  Control           1.0615502   0.6565770   1.7163086
8         6 months    kiGH5241-JiVitA-4           BANGLADESH                     Other                Control           1.1294466   0.7321051   1.7424408
8         24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
8         24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                  Control           0.6068111   0.3628850   1.0147010
8         24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                Control           0.8073818   0.5355257   1.2172437
8         24 months   ki1000111-WASH-Kenya        KENYA                          Control              Control           1.0000000   1.0000000   1.0000000
8         24 months   ki1000111-WASH-Kenya        KENYA                          LNS                  Control           1.1842105   0.7456772   1.8806456
8         24 months   ki1000111-WASH-Kenya        KENYA                          Other                Control           0.7861142   0.4828848   1.2797578
8         24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
8         24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS                  Control           0.9561688   0.7497693   1.2193868
8         24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
8         24 months   kiGH5241-JiVitA-4           BANGLADESH                     LNS                  Control           1.4102564   0.5874260   3.3856574
8         24 months   kiGH5241-JiVitA-4           BANGLADESH                     Other                Control           1.2345679   0.5526910   2.7577036
9         Birth       ki1126311-ZVITAMBO          ZIMBABWE                       Control              Control           1.0000000   1.0000000   1.0000000
9         Birth       ki1126311-ZVITAMBO          ZIMBABWE                       VitA                 Control           0.8349428   0.6766337   1.0302909
9         Birth       kiGH5241-JiVitA-3           BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
9         Birth       kiGH5241-JiVitA-3           BANGLADESH                     Maternal             Control           0.8808962   0.8082996   0.9600130
9         6 months    iLiNS_DYADM_LNS             MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
9         6 months    iLiNS_DYADM_LNS             MALAWI                         LNS                  Control           0.5428571   0.3627957   0.8122860
9         6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
9         6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                  Control           0.8333333   0.2845501   2.4405000
9         6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Other                Control           1.0283688   0.4162581   2.5405928
9         6 months    ki1000304-EU                INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
9         6 months    ki1000304-EU                INDIA                          Zinc                 Control           1.4805195   0.6571998   3.3352687
9         6 months    ki1000304-VITAMIN-A         INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
9         6 months    ki1000304-VITAMIN-A         INDIA                          VitA                 Control           0.8160173   0.6622812   1.0054404
9         6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
9         6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Other                Control           1.1721612   0.8921238   1.5401021
9         6 months    ki1119695-PROBIT            BELARUS                        Control              Control           1.0000000   1.0000000   1.0000000
9         6 months    ki1119695-PROBIT            BELARUS                        Maternal             Control           0.6513095   0.4691993   0.9041020
9         6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control              Control           1.0000000   1.0000000   1.0000000
9         6 months    ki1126311-ZVITAMBO          ZIMBABWE                       VitA                 Control           1.4424900   1.1862610   1.7540637
9         6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
9         6 months    ki1148112-iLiNS-DOSE        MALAWI                         LNS                  Control           1.0913931   0.8537336   1.3952113
9         6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
9         6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Maternal             Control           0.3948052   0.2600493   0.5993907
9         6 months    ki1148112-LCNI-5            MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
9         6 months    ki1148112-LCNI-5            MALAWI                         LNS                  Control           0.7000000   0.3652935   1.3413870
9         6 months    ki1148112-LCNI-5            MALAWI                         Other                Control           1.1428571   0.5932396   2.2016779
9         6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
9         6 months    kiGH5241-JiVitA-3           BANGLADESH                     Maternal             Control           1.0059779   0.8993695   1.1252234
9         6 months    kiGH5241-JiVitA-4           BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
9         6 months    kiGH5241-JiVitA-4           BANGLADESH                     LNS                  Control           1.6788026   0.8370034   3.3672241
9         6 months    kiGH5241-JiVitA-4           BANGLADESH                     Other                Control           1.7797271   0.9308117   3.4028672
9         24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
9         24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                  Control           0.6080000   0.2968860   1.2451378
9         24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                Control           0.8038462   0.4710292   1.3718229
9         24 months   ki1000111-WASH-Kenya        KENYA                          Control              Control           1.0000000   1.0000000   1.0000000
9         24 months   ki1000111-WASH-Kenya        KENYA                          LNS                  Control           1.3865546   0.8171653   2.3526863
9         24 months   ki1000111-WASH-Kenya        KENYA                          Other                Control           1.0665805   0.6513239   1.7465872
9         24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
9         24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS                  Control           0.9253731   0.7278648   1.1764760
9         24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
9         24 months   kiGH5241-JiVitA-4           BANGLADESH                     LNS                  Control           0.5820106   0.2199066   1.5403642
9         24 months   kiGH5241-JiVitA-4           BANGLADESH                     Other                Control           0.9909910   0.5177564   1.8967669
10        Birth       ki1126311-ZVITAMBO          ZIMBABWE                       Control              Control           1.0000000   1.0000000   1.0000000
10        Birth       ki1126311-ZVITAMBO          ZIMBABWE                       VitA                 Control           1.1929151   0.9697529   1.4674319
10        Birth       kiGH5241-JiVitA-3           BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
10        Birth       kiGH5241-JiVitA-3           BANGLADESH                     Maternal             Control           0.9050604   0.8417229   0.9731638
10        6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Control              Control           1.0000000   1.0000000   1.0000000
10        6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Maternal             Control           0.6284779   0.4800721   0.8227607
10        6 months    ki1000304-EU                INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
10        6 months    ki1000304-EU                INDIA                          Zinc                 Control           1.7500000   0.6232695   4.9136047
10        6 months    ki1000304-VITAMIN-A         INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
10        6 months    ki1000304-VITAMIN-A         INDIA                          VitA                 Control           0.9718310   0.7682228   1.2294031
10        6 months    ki1000304b-SAS-CompFeed     INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
10        6 months    ki1000304b-SAS-CompFeed     INDIA                          Other                Control           1.5319149   1.1698477   2.0060416
10        6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              Control           1.0000000   1.0000000   1.0000000
10        6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                Control           1.0000000   0.3092843   3.2332706
10        6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                 Control           1.1120879   0.4096795   3.0187980
10        6 months    ki1119695-PROBIT            BELARUS                        Control              Control           1.0000000   1.0000000   1.0000000
10        6 months    ki1119695-PROBIT            BELARUS                        Maternal             Control           0.9168931   0.6754821   1.2445821
10        6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control              Control           1.0000000   1.0000000   1.0000000
10        6 months    ki1126311-ZVITAMBO          ZIMBABWE                       VitA                 Control           1.0162413   0.8450419   1.2221245
10        6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
10        6 months    ki1148112-iLiNS-DOSE        MALAWI                         LNS                  Control           0.7579143   0.6036301   0.9516327
10        6 months    ki1148112-LCNI-5            MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
10        6 months    ki1148112-LCNI-5            MALAWI                         LNS                  Control           1.9102113   1.0030218   3.6379139
10        6 months    ki1148112-LCNI-5            MALAWI                         Other                Control           2.1136364   1.0753524   4.1544135
10        6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
10        6 months    kiGH5241-JiVitA-3           BANGLADESH                     Maternal             Control           0.8424049   0.7619873   0.9313096
10        6 months    kiGH5241-JiVitA-4           BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
10        6 months    kiGH5241-JiVitA-4           BANGLADESH                     LNS                  Control           0.7226562   0.2654519   1.9673318
10        6 months    kiGH5241-JiVitA-4           BANGLADESH                     Other                Control           0.8925439   0.3773126   2.1113384
10        24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
10        24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                  Control           1.6000000   0.8765214   2.9206359
10        24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                Control           1.4289855   0.8178243   2.4968682
10        24 months   ki1000111-WASH-Kenya        KENYA                          Control              Control           1.0000000   1.0000000   1.0000000
10        24 months   ki1000111-WASH-Kenya        KENYA                          LNS                  Control           0.6190476   0.3124621   1.2264526
10        24 months   ki1000111-WASH-Kenya        KENYA                          Other                Control           0.9256787   0.5860669   1.4620873
10        24 months   ki1000304-EU                INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
10        24 months   ki1000304-EU                INDIA                          Zinc                 Control           0.8571429   0.4021700   1.8268241
10        24 months   ki1119695-PROBIT            BELARUS                        Control              Control           1.0000000   1.0000000   1.0000000
10        24 months   ki1119695-PROBIT            BELARUS                        Maternal             Control           1.1596639   0.5290096   2.5421472
10        24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
10        24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS                  Control           0.9203980   0.7589429   1.1162005
10        24 months   ki1148112-LCNI-5            MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
10        24 months   ki1148112-LCNI-5            MALAWI                         LNS                  Control           1.1818182   0.5126788   2.7243065
10        24 months   ki1148112-LCNI-5            MALAWI                         Other                Control           1.1818182   0.4548596   3.0706052
11        Birth       ki1126311-ZVITAMBO          ZIMBABWE                       Control              Control           1.0000000   1.0000000   1.0000000
11        Birth       ki1126311-ZVITAMBO          ZIMBABWE                       VitA                 Control           0.9640844   0.8068475   1.1519633
11        Birth       kiGH5241-JiVitA-3           BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
11        Birth       kiGH5241-JiVitA-3           BANGLADESH                     Maternal             Control           0.8797928   0.8233294   0.9401283
11        6 months    iLiNS_DYADM_LNS             MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
11        6 months    iLiNS_DYADM_LNS             MALAWI                         LNS                  Control           1.4074074   0.8678838   2.2823281
11        6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Control              Control           1.0000000   1.0000000   1.0000000
11        6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Maternal             Control           0.8723684   0.6575875   1.1573010
11        6 months    ki1000304-VITAMIN-A         INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
11        6 months    ki1000304-VITAMIN-A         INDIA                          VitA                 Control           1.0275510   0.8019336   1.3166441
11        6 months    ki1119695-PROBIT            BELARUS                        Control              Control           1.0000000   1.0000000   1.0000000
11        6 months    ki1119695-PROBIT            BELARUS                        Maternal             Control           0.6437506   0.4607754   0.8993858
11        6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control              Control           1.0000000   1.0000000   1.0000000
11        6 months    ki1126311-ZVITAMBO          ZIMBABWE                       VitA                 Control           1.3219987   1.1166743   1.5650765
11        6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
11        6 months    ki1148112-iLiNS-DOSE        MALAWI                         LNS                  Control           0.9850890   0.8192271   1.1845315
11        6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
11        6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Maternal             Control           1.4549550   1.0017590   2.1131769
11        6 months    ki1148112-LCNI-5            MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
11        6 months    ki1148112-LCNI-5            MALAWI                         LNS                  Control           1.0000000   0.5186869   1.9279452
11        6 months    ki1148112-LCNI-5            MALAWI                         Other                Control           1.0000000   0.4577933   2.1843919
11        6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
11        6 months    kiGH5241-JiVitA-3           BANGLADESH                     Maternal             Control           0.8959041   0.8217049   0.9768034
11        24 months   ki1000107-Serrinha-VitA     BRAZIL                         Control              Control           1.0000000   1.0000000   1.0000000
11        24 months   ki1000107-Serrinha-VitA     BRAZIL                         VitA                 Control           0.5803571   0.3786482   0.8895181
11        24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
11        24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                  Control           1.4933333   0.6352537   3.5104785
11        24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                Control           0.7724138   0.3061605   1.9487264
11        24 months   ki1000111-WASH-Kenya        KENYA                          Control              Control           1.0000000   1.0000000   1.0000000
11        24 months   ki1000111-WASH-Kenya        KENYA                          LNS                  Control           0.9397759   0.4903831   1.8009977
11        24 months   ki1000111-WASH-Kenya        KENYA                          Other                Control           0.7820513   0.4359185   1.4030243
11        24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Control              Control           1.0000000   1.0000000   1.0000000
11        24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc                 Control           0.6255411   0.2889207   1.3543568
11        24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
11        24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS                  Control           1.1919192   1.0196946   1.3932322
12        Birth       ki1126311-ZVITAMBO          ZIMBABWE                       Control              Control           1.0000000   1.0000000   1.0000000
12        Birth       ki1126311-ZVITAMBO          ZIMBABWE                       VitA                 Control           1.2699674   1.0634226   1.5166287
12        Birth       kiGH5241-JiVitA-3           BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
12        Birth       kiGH5241-JiVitA-3           BANGLADESH                     Maternal             Control           0.9159920   0.8562099   0.9799482
12        6 months    iLiNS_DYADM_LNS             MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
12        6 months    iLiNS_DYADM_LNS             MALAWI                         LNS                  Control           0.7663043   0.5226364   1.1235772
12        6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Control              Control           1.0000000   1.0000000   1.0000000
12        6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Maternal             Control           0.6206897   0.5000064   0.7705015
12        6 months    ki1000304-VITAMIN-A         INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
12        6 months    ki1000304-VITAMIN-A         INDIA                          VitA                 Control           1.0917945   0.9062477   1.3153305
12        6 months    ki1000304b-SAS-CompFeed     INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
12        6 months    ki1000304b-SAS-CompFeed     INDIA                          Other                Control           0.7543860   0.4919486   1.1568246
12        6 months    ki1119695-PROBIT            BELARUS                        Control              Control           1.0000000   1.0000000   1.0000000
12        6 months    ki1119695-PROBIT            BELARUS                        Maternal             Control           0.6795482   0.4767732   0.9685647
12        6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control              Control           1.0000000   1.0000000   1.0000000
12        6 months    ki1126311-ZVITAMBO          ZIMBABWE                       VitA                 Control           0.9919371   0.8304693   1.1847989
12        6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
12        6 months    ki1148112-iLiNS-DOSE        MALAWI                         LNS                  Control           0.7142857   0.5340890   0.9552792
12        6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
12        6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Maternal             Control           0.8294118   0.6038472   1.1392350
12        6 months    ki1148112-LCNI-5            MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
12        6 months    ki1148112-LCNI-5            MALAWI                         LNS                  Control           0.5777778   0.2910274   1.1470645
12        6 months    ki1148112-LCNI-5            MALAWI                         Other                Control           0.8863636   0.4455076   1.7634729
12        6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
12        6 months    kiGH5241-JiVitA-3           BANGLADESH                     Maternal             Control           0.9296123   0.8441369   1.0237428
12        24 months   ki1000107-Serrinha-VitA     BRAZIL                         Control              Control           1.0000000   1.0000000   1.0000000
12        24 months   ki1000107-Serrinha-VitA     BRAZIL                         VitA                 Control           1.0000000   0.6486360   1.5416968
12        24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
12        24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                  Control           1.3655172   0.5295251   3.5213390
12        24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                Control           1.2711111   0.5161437   3.1303752
12        24 months   ki1000111-WASH-Kenya        KENYA                          Control              Control           1.0000000   1.0000000   1.0000000
12        24 months   ki1000111-WASH-Kenya        KENYA                          LNS                  Control           0.9855072   0.4819742   2.0150963
12        24 months   ki1000111-WASH-Kenya        KENYA                          Other                Control           1.5367232   0.9827542   2.4029590
12        24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Control              Control           1.0000000   1.0000000   1.0000000
12        24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc                 Control           0.6104928   0.3877199   0.9612648
12        24 months   ki1119695-PROBIT            BELARUS                        Control              Control           1.0000000   1.0000000   1.0000000
12        24 months   ki1119695-PROBIT            BELARUS                        Maternal             Control           0.8661616   0.5137865   1.4602095
12        24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
12        24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS                  Control           0.9285714   0.7144205   1.2069152


### Parameter: PAR


brthmon   agecat      studyid                     country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
--------  ----------  --------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
1         Birth       ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                -0.0352886   -0.0501551   -0.0204222
1         Birth       kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                -0.0032768   -0.0211132    0.0145595
1         6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Control              NA                 0.0012447   -0.0416651    0.0441544
1         6 months    ki1000304-VITAMIN-A         INDIA                          Control              NA                -0.0418296   -0.0840634    0.0004041
1         6 months    ki1000304b-SAS-CompFeed     INDIA                          Control              NA                -0.0262897   -0.0926546    0.0400753
1         6 months    ki1119695-PROBIT            BELARUS                        Control              NA                -0.0018996   -0.0204241    0.0166248
1         6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                -0.0169216   -0.0401193    0.0062761
1         6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                -0.0804196   -0.1508679   -0.0099713
1         6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                -0.0109056   -0.0298785    0.0080672
1         24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                 0.1002167   -0.0506933    0.2511266
1         24 months   ki1000111-WASH-Kenya        KENYA                          Control              NA                -0.0327527   -0.1605589    0.0950534
1         24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Control              NA                 0.0562771   -0.0639466    0.1765007
2         Birth       ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                 0.0188367   -0.0002890    0.0379624
2         Birth       kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                -0.0438251   -0.0620808   -0.0255694
2         Birth       kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                 0.0529101   -0.0795298    0.1853499
2         6 months    ki1000304-EU                INDIA                          Control              NA                -0.0096154   -0.2159648    0.1967340
2         6 months    ki1000304-VITAMIN-A         INDIA                          Control              NA                -0.0050413   -0.0558871    0.0458044
2         6 months    ki1000304b-SAS-CompFeed     INDIA                          Control              NA                 0.0390342   -0.0792999    0.1573683
2         6 months    ki1119695-PROBIT            BELARUS                        Control              NA                -0.0096629   -0.0245428    0.0052170
2         6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                -0.0546247   -0.0816520   -0.0275974
2         6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                 0.0309847   -0.0467367    0.1087061
2         6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Control              NA                 0.0084881   -0.0673358    0.0843119
2         6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                -0.0183406   -0.0392376    0.0025564
2         6 months    kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                 0.0228306   -0.0514963    0.0971575
2         24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                -0.1339286   -0.2930984    0.0252413
2         24 months   ki1000111-WASH-Kenya        KENYA                          Control              NA                 0.0109641   -0.0774402    0.0993685
2         24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Control              NA                 0.0524476   -0.1340816    0.2389767
2         24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                 0.0413107   -0.0609693    0.1435906
3         Birth       ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                 0.0053686   -0.0108339    0.0215712
3         Birth       kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                -0.0317903   -0.0489298   -0.0146507
3         Birth       kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                 0.0244898   -0.0915520    0.1405316
3         6 months    ki1000304-VITAMIN-A         INDIA                          Control              NA                -0.0440218   -0.0861293   -0.0019144
3         6 months    ki1000304b-SAS-CompFeed     INDIA                          Control              NA                 0.1117512   -0.0485348    0.2720371
3         6 months    ki1119695-PROBIT            BELARUS                        Control              NA                -0.0083594   -0.0240551    0.0073363
3         6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                 0.0132370   -0.0132180    0.0396921
3         6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                 0.0332168   -0.0399847    0.1064183
3         6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                -0.0108491   -0.0286602    0.0069621
3         6 months    kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                 0.0036817   -0.0491770    0.0565405
3         24 months   ki1000111-WASH-Kenya        KENYA                          Control              NA                -0.0303671   -0.1061416    0.0454074
3         24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                -0.1283233   -0.2530660   -0.0035805
4         Birth       ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                 0.0082516   -0.0087631    0.0252662
4         Birth       kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                -0.0096992   -0.0297802    0.0103818
4         Birth       kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                -0.0598383   -0.2096880    0.0900114
4         6 months    iLiNS_DYADM_LNS             MALAWI                         Control              NA                 0.0595238   -0.0404039    0.1594515
4         6 months    ki1000304-VITAMIN-A         INDIA                          Control              NA                -0.0069648   -0.0495396    0.0356100
4         6 months    ki1119695-PROBIT            BELARUS                        Control              NA                -0.0030765   -0.0219360    0.0157830
4         6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                -0.0207962   -0.0469928    0.0054004
4         6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                -0.0699029   -0.1536397    0.0138339
4         6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Control              NA                -0.0086207   -0.0929536    0.0757122
4         6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                -0.0258571   -0.0462860   -0.0054282
4         6 months    kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                 0.0079127   -0.0551003    0.0709258
4         24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                 0.0597826   -0.1511699    0.2707352
4         24 months   ki1000111-WASH-Kenya        KENYA                          Control              NA                 0.0209566   -0.0478674    0.0897805
4         24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                -0.1028226   -0.2556253    0.0499801
5         Birth       ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                 0.0097669   -0.0081899    0.0277236
5         Birth       kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                -0.0047444   -0.0279552    0.0184663
5         Birth       kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                -0.0868885   -0.2116397    0.0378626
5         6 months    iLiNS_DYADM_LNS             MALAWI                         Control              NA                 0.0058140   -0.0827322    0.0943601
5         6 months    ki1000304-EU                INDIA                          Control              NA                 0.0076923   -0.1353906    0.1507752
5         6 months    ki1000304-VITAMIN-A         INDIA                          Control              NA                -0.0138346   -0.0570888    0.0294197
5         6 months    ki1000304b-SAS-CompFeed     INDIA                          Control              NA                -0.0939850   -0.2091650    0.0211951
5         6 months    ki1119695-PROBIT            BELARUS                        Control              NA                -0.0059472   -0.0155598    0.0036653
5         6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                -0.0042350   -0.0308215    0.0223515
5         6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                -0.0742407   -0.1500062    0.0015247
5         6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Control              NA                -0.0147059   -0.0954656    0.0660538
5         6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                -0.0145967   -0.0359756    0.0067823
5         6 months    kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                -0.0050000   -0.0616784    0.0516784
5         24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                 0.0043860   -0.1671185    0.1758904
5         24 months   ki1000111-WASH-Kenya        KENYA                          Control              NA                -0.0172996   -0.0984833    0.0638842
5         24 months   ki1000304-ZnMort            INDIA                          Control              NA                -0.1000000   -0.2761142    0.0761142
5         24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                 0.0550000   -0.0951326    0.2051326
6         Birth       ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                -0.0100177   -0.0258956    0.0058602
6         Birth       kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                -0.0299422   -0.0525466   -0.0073378
6         Birth       kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                -0.0555556   -0.2023063    0.0911952
6         6 months    ki1000304-VITAMIN-A         INDIA                          Control              NA                 0.0303795   -0.0140702    0.0748291
6         6 months    ki1000304b-SAS-CompFeed     INDIA                          Control              NA                -0.0782473   -0.1738402    0.0173457
6         6 months    ki1119695-PROBIT            BELARUS                        Control              NA                -0.0100546   -0.0258454    0.0057362
6         6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                -0.0114439   -0.0376038    0.0147160
6         6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                -0.1665672   -0.2363557   -0.0967787
6         6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Control              NA                -0.0472727   -0.1300433    0.0354978
6         6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                -0.0186442   -0.0384313    0.0011429
6         6 months    kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                 0.0111098   -0.0639940    0.0862136
6         24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                 0.1037318   -0.0964907    0.3039544
6         24 months   ki1000111-WASH-Kenya        KENYA                          Control              NA                 0.0536798   -0.0361213    0.1434809
7         Birth       ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                 0.0032919   -0.0117242    0.0183080
7         Birth       kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                 0.0054199   -0.0161783    0.0270181
7         6 months    ki1000304-VITAMIN-A         INDIA                          Control              NA                -0.0256410   -0.0619092    0.0106272
7         6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              NA                -0.0362288   -0.1340827    0.0616251
7         6 months    ki1119695-PROBIT            BELARUS                        Control              NA                -0.0091299   -0.0188213    0.0005614
7         6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                -0.0014159   -0.0278244    0.0249926
7         6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                 0.0424167   -0.0202037    0.1050371
7         6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                 0.0174117   -0.0023158    0.0371391
7         6 months    kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                 0.0290944   -0.0438531    0.1020420
7         24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                -0.1192523   -0.2832830    0.0447784
7         24 months   ki1000111-WASH-Kenya        KENYA                          Control              NA                 0.0000000   -0.1432502    0.1432502
7         24 months   ki1000304-EU                INDIA                          Control              NA                -0.0598291   -0.2577459    0.1380878
7         24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                -0.0315657   -0.1386469    0.0755156
7         24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                -0.0028490   -0.1276299    0.1219319
8         Birth       ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                -0.0112212   -0.0234834    0.0010411
8         Birth       kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                -0.0164449   -0.0363702    0.0034805
8         6 months    iLiNS_DYADM_LNS             MALAWI                         Control              NA                -0.0268817   -0.1082028    0.0544393
8         6 months    ki1000304-VITAMIN-A         INDIA                          Control              NA                -0.0104464   -0.0534257    0.0325328
8         6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Control              NA                -0.1221198   -0.2216292   -0.0226104
8         6 months    ki1119695-PROBIT            BELARUS                        Control              NA                -0.0084996   -0.0201515    0.0031523
8         6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                 0.0410945    0.0179751    0.0642138
8         6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                 0.0343137   -0.0224700    0.0910974
8         6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Control              NA                -0.0256410   -0.1028761    0.0515941
8         6 months    ki1148112-LCNI-5            MALAWI                         Control              NA                -0.2096774   -0.4001129   -0.0192419
8         6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                -0.0009699   -0.0199038    0.0179640
8         6 months    kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                 0.0175314   -0.0524054    0.0874682
8         24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                -0.1285104   -0.2881102    0.0310894
8         24 months   ki1000111-WASH-Kenya        KENYA                          Control              NA                -0.0228938   -0.1499589    0.1041713
8         24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                -0.0148026   -0.1031362    0.0735310
8         24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                 0.0700000   -0.1252221    0.2652221
9         Birth       ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                -0.0090066   -0.0202832    0.0022701
9         Birth       kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                -0.0180036   -0.0363085    0.0003014
9         6 months    iLiNS_DYADM_LNS             MALAWI                         Control              NA                -0.0668338   -0.1328229   -0.0008446
9         6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                -0.0068966   -0.1323277    0.1185346
9         6 months    ki1000304-EU                INDIA                          Control              NA                 0.0649123   -0.0749066    0.2047312
9         6 months    ki1000304-VITAMIN-A         INDIA                          Control              NA                -0.0342811   -0.0832691    0.0147069
9         6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Control              NA                 0.0534091   -0.0592222    0.1660404
9         6 months    ki1119695-PROBIT            BELARUS                        Control              NA                -0.0151821   -0.0307437    0.0003795
9         6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                 0.0325481    0.0099385    0.0551576
9         6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                 0.0179756   -0.0389105    0.0748616
9         6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Control              NA                -0.1318619   -0.1916197   -0.0721041
9         6 months    ki1148112-LCNI-5            MALAWI                         Control              NA                -0.0510753   -0.2205255    0.1183750
9         6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                 0.0006791   -0.0168684    0.0182267
9         6 months    kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                 0.0823124    0.0038773    0.1607476
9         24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                -0.1096491   -0.3111489    0.0918507
9         24 months   ki1000111-WASH-Kenya        KENYA                          Control              NA                 0.0366538   -0.0675974    0.1409050
9         24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                -0.0324675   -0.1370716    0.0721365
9         24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                -0.0465909   -0.2237889    0.1306071
10        Birth       ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                 0.0101171   -0.0044562    0.0246903
10        Birth       kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                -0.0168015   -0.0334005   -0.0002025
10        6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Control              NA                -0.0639077   -0.1187317   -0.0090836
10        6 months    ki1000304-EU                INDIA                          Control              NA                 0.0649351   -0.0616390    0.1915091
10        6 months    ki1000304-VITAMIN-A         INDIA                          Control              NA                -0.0046620   -0.0589040    0.0495799
10        6 months    ki1000304b-SAS-CompFeed     INDIA                          Control              NA                 0.0550055   -0.0265092    0.1365202
10        6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              NA                 0.0060584   -0.0726144    0.0847313
10        6 months    ki1119695-PROBIT            BELARUS                        Control              NA                -0.0033394   -0.0135511    0.0068724
10        6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                 0.0020946   -0.0253307    0.0295198
10        6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                -0.0650651   -0.1176065   -0.0125236
10        6 months    ki1148112-LCNI-5            MALAWI                         Control              NA                 0.1937873    0.0522743    0.3353003
10        6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                -0.0238201   -0.0423126   -0.0053276
10        6 months    kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                -0.0257400   -0.1398203    0.0883402
10        24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                 0.1276134   -0.0272643    0.2824911
10        24 months   ki1000111-WASH-Kenya        KENYA                          Control              NA                -0.0373626   -0.1313593    0.0566340
10        24 months   ki1000304-EU                INDIA                          Control              NA                -0.0416667   -0.2452963    0.1619630
10        24 months   ki1119695-PROBIT            BELARUS                        Control              NA                 0.0127745   -0.0756012    0.1011503
10        24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                -0.0390244   -0.1369934    0.0589447
10        24 months   ki1148112-LCNI-5            MALAWI                         Control              NA                 0.0501672   -0.1780056    0.2783400
11        Birth       ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                -0.0025910   -0.0169383    0.0117563
11        Birth       kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                -0.0236911   -0.0412564   -0.0061258
11        6 months    iLiNS_DYADM_LNS             MALAWI                         Control              NA                 0.0312945   -0.0356319    0.0982208
11        6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Control              NA                -0.0161505   -0.0626088    0.0303077
11        6 months    ki1000304-VITAMIN-A         INDIA                          Control              NA                 0.0049945   -0.0608741    0.0708630
11        6 months    ki1119695-PROBIT            BELARUS                        Control              NA                -0.0171318   -0.0316377   -0.0026258
11        6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                 0.0314841    0.0072956    0.0556727
11        6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                -0.0043835   -0.0622142    0.0534472
11        6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Control              NA                 0.0474624   -0.0164612    0.1113861
11        6 months    ki1148112-LCNI-5            MALAWI                         Control              NA                 0.0000000   -0.1539893    0.1539893
11        6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                -0.0161043   -0.0338414    0.0016327
11        24 months   ki1000107-Serrinha-VitA     BRAZIL                         Control              NA                -0.1339031   -0.2754977    0.0076914
11        24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                 0.0049261   -0.2158068    0.2256590
11        24 months   ki1000111-WASH-Kenya        KENYA                          Control              NA                -0.0300697   -0.1202704    0.0601309
11        24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Control              NA                -0.1082603   -0.3105658    0.0940452
11        24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                 0.0826087   -0.0011900    0.1664074
12        Birth       ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                 0.0156878    0.0011118    0.0302638
12        Birth       kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                -0.0167274   -0.0340617    0.0006068
12        6 months    iLiNS_DYADM_LNS             MALAWI                         Control              NA                -0.0295127   -0.0868483    0.0278229
12        6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Control              NA                -0.0660661   -0.1132123   -0.0189198
12        6 months    ki1000304-VITAMIN-A         INDIA                          Control              NA                 0.0139516   -0.0289690    0.0568722
12        6 months    ki1000304b-SAS-CompFeed     INDIA                          Control              NA                -0.0321562   -0.1098591    0.0455467
12        6 months    ki1119695-PROBIT            BELARUS                        Control              NA                -0.0114729   -0.0228025   -0.0001433
12        6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                -0.0008353   -0.0220229    0.0203522
12        6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                -0.0692308   -0.1275281   -0.0109334
12        6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Control              NA                -0.0280464   -0.0843021    0.0282093
12        6 months    ki1148112-LCNI-5            MALAWI                         Control              NA                -0.0967611   -0.2563879    0.0628656
12        6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                -0.0100094   -0.0274406    0.0074217
12        24 months   ki1000107-Serrinha-VitA     BRAZIL                         Control              NA                 0.0000000   -0.0944630    0.0944630
12        24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                 0.0539773   -0.1040081    0.2119626
12        24 months   ki1000111-WASH-Kenya        KENYA                          Control              NA                 0.0645098   -0.0201350    0.1491546
12        24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Control              NA                -0.1388889   -0.2785617    0.0007840
12        24 months   ki1119695-PROBIT            BELARUS                        Control              NA                -0.0178782   -0.0976484    0.0618919
12        24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                -0.0293706   -0.1459893    0.0872480


### Parameter: PAF


brthmon   agecat      studyid                     country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
--------  ----------  --------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
1         Birth       ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                -0.2747178   -0.4328610   -0.1340287
1         Birth       kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                -0.0091007   -0.0603491    0.0396708
1         6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Control              NA                 0.0046345   -0.1678067    0.1516126
1         6 months    ki1000304-VITAMIN-A         INDIA                          Control              NA                -0.1376134   -0.3085303    0.0109787
1         6 months    ki1000304b-SAS-CompFeed     INDIA                          Control              NA                -0.0828125   -0.3351019    0.1218027
1         6 months    ki1119695-PROBIT            BELARUS                        Control              NA                -0.0207974   -0.2503721    0.1666262
1         6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                -0.0972322   -0.2539578    0.0399051
1         6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                -0.2446809   -0.5435110   -0.0037054
1         6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                -0.0432331   -0.1248114    0.0324287
1         24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                 0.3027823   -0.3375216    0.6365573
1         24 months   ki1000111-WASH-Kenya        KENYA                          Control              NA                -0.1058752   -0.6067556    0.2388638
1         24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Control              NA                 0.1710526   -0.2877717    0.4664010
2         Birth       ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                 0.1250613    0.0062366    0.2296781
2         Birth       kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                -0.1406543   -0.2102735   -0.0750399
2         Birth       kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                 0.1879699   -0.4458064    0.5439273
2         6 months    ki1000304-EU                INDIA                          Control              NA                -0.0256410   -0.7539213    0.4002356
2         6 months    ki1000304-VITAMIN-A         INDIA                          Control              NA                -0.0134698   -0.1609585    0.1152818
2         6 months    ki1000304b-SAS-CompFeed     INDIA                          Control              NA                 0.1458647   -0.3255794    0.4496390
2         6 months    ki1119695-PROBIT            BELARUS                        Control              NA                -0.1127783   -0.3285466    0.0679472
2         6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                -0.3296318   -0.5681998   -0.1273568
2         6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                 0.0893513   -0.1396410    0.2723313
2         6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Control              NA                 0.0394089   -0.3662356    0.3246148
2         6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                -0.0726060   -0.1653734    0.0127768
2         6 months    kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                 0.0906558   -0.2594941    0.3434611
2         24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                -0.3658537   -0.8851280    0.0103822
2         24 months   ki1000111-WASH-Kenya        KENYA                          Control              NA                 0.0392107   -0.3351321    0.3085957
2         24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Control              NA                 0.1136364   -0.3989106    0.4383912
2         24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                 0.0958660   -0.1764467    0.3051463
3         Birth       ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                 0.0460905   -0.0963255    0.1700063
3         Birth       kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                -0.1105568   -0.1790810   -0.0460150
3         Birth       kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                 0.0659341   -0.3040932    0.3309687
3         6 months    ki1000304-VITAMIN-A         INDIA                          Control              NA                -0.1343524   -0.2911141    0.0033760
3         6 months    ki1000304b-SAS-CompFeed     INDIA                          Control              NA                 0.3849206   -0.1038201    0.6572606
3         6 months    ki1119695-PROBIT            BELARUS                        Control              NA                -0.1530534   -0.5392785    0.1362628
3         6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                 0.0617438   -0.0615693    0.1707327
3         6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                 0.0974359   -0.1190676    0.2720530
3         6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                -0.0463879   -0.1292847    0.0304237
3         6 months    kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                 0.0144565   -0.2165815    0.2016186
3         24 months   ki1000111-WASH-Kenya        KENYA                          Control              NA                -0.1026888   -0.3910758    0.1259121
3         24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                -0.3128781   -0.6598683   -0.0384252
4         Birth       ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                 0.0748696   -0.0797396    0.2073401
4         Birth       kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                -0.0341127   -0.1098335    0.0364419
4         Birth       kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                -0.2114286   -0.8681666    0.2144388
4         6 months    iLiNS_DYADM_LNS             MALAWI                         Control              NA                 0.1923077   -0.1256282    0.4204420
4         6 months    ki1000304-VITAMIN-A         INDIA                          Control              NA                -0.0219298   -0.1685646    0.1063048
4         6 months    ki1119695-PROBIT            BELARUS                        Control              NA                -0.0488923   -0.4161945    0.2231469
4         6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                -0.1143791   -0.2874531    0.0354284
4         6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                -0.2117647   -0.5627969    0.0604194
4         6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Control              NA                -0.0357143   -0.4690604    0.2698026
4         6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                -0.1115386   -0.2145301   -0.0172807
4         6 months    kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                 0.0286347   -0.2285140    0.2319579
4         24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                 0.1375000   -0.5146162    0.5088484
4         24 months   ki1000111-WASH-Kenya        KENYA                          Control              NA                 0.0751971   -0.2076999    0.2918270
4         24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                -0.2236842   -0.6081167    0.0688468
5         Birth       ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                 0.0773720   -0.0638246    0.1998282
5         Birth       kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                -0.0159812   -0.0986107    0.0604334
5         Birth       kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                -0.3285473   -0.8939519    0.0680661
5         6 months    iLiNS_DYADM_LNS             MALAWI                         Control              NA                 0.0227273   -0.3816240    0.3087396
5         6 months    ki1000304-EU                INDIA                          Control              NA                 0.0250000   -0.5708304    0.3948265
5         6 months    ki1000304-VITAMIN-A         INDIA                          Control              NA                -0.0376429   -0.1673364    0.0776414
5         6 months    ki1000304b-SAS-CompFeed     INDIA                          Control              NA                -0.3571429   -1.1477357    0.1424286
5         6 months    ki1119695-PROBIT            BELARUS                        Control              NA                -0.1375624   -0.4280259    0.0938203
5         6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                -0.0246479   -0.1961371    0.1222550
5         6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                -0.2095238   -0.4989166    0.0239965
5         6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Control              NA                -0.0625000   -0.4981014    0.2464420
5         6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                -0.0582297   -0.1525966    0.0284111
5         6 months    kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                -0.0204082   -0.2803732    0.1867740
5         24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                 0.0104167   -0.4935303    0.3443219
5         24 months   ki1000111-WASH-Kenya        KENYA                          Control              NA                -0.0611940   -0.3909205    0.1903687
5         24 months   ki1000304-ZnMort            INDIA                          Control              NA                -0.2000000   -0.6243759    0.1135057
5         24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                 0.1586538   -0.3987913    0.4939464
6         Birth       ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                -0.0874624   -0.2493656    0.0534601
6         Birth       kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                -0.1083363   -0.2032771   -0.0208865
6         Birth       kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                -0.1612903   -0.6778587    0.1962403
6         6 months    ki1000304-VITAMIN-A         INDIA                          Control              NA                 0.0869612   -0.0374861    0.1964810
6         6 months    ki1000304b-SAS-CompFeed     INDIA                          Control              NA                -0.2136752   -0.5784175    0.0667820
6         6 months    ki1119695-PROBIT            BELARUS                        Control              NA                -0.1595232   -0.4917492    0.0987130
6         6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                -0.0697254   -0.2546942    0.0879751
6         6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                -0.5314286   -0.9203962   -0.2212446
6         6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Control              NA                -0.1733333   -0.5931073    0.1358328
6         6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                -0.0808807   -0.1780656    0.0082868
6         6 months    kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                 0.0464495   -0.3259523    0.3142599
6         24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                 0.2607313   -0.4601357    0.6257073
6         24 months   ki1000111-WASH-Kenya        KENYA                          Control              NA                 0.1685998   -0.1666108    0.4074920
7         Birth       ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                 0.0321782   -0.1208663    0.1643258
7         Birth       kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                 0.0188471   -0.0576962    0.0898512
7         6 months    ki1000304-VITAMIN-A         INDIA                          Control              NA                -0.0769231   -0.2011062    0.0344207
7         6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              NA                -0.2693531   -1.2438270    0.2819155
7         6 months    ki1119695-PROBIT            BELARUS                        Control              NA                -0.1622317   -0.3924576    0.0299292
7         6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                -0.0076087   -0.1612515    0.1257060
7         6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                 0.1406036   -0.0581186    0.3020043
7         6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                 0.0695915   -0.0069460    0.1403114
7         6 months    kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                 0.0998074   -0.1897784    0.3189096
7         24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                -0.2126667   -0.5493066    0.0508267
7         24 months   ki1000111-WASH-Kenya        KENYA                          Control              NA                 0.0000000   -0.5368741    0.3493286
7         24 months   ki1000304-EU                INDIA                          Control              NA                -0.1076923   -0.5325795    0.1994006
7         24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                -0.0614251   -0.3074113    0.1382795
7         24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                -0.0069930   -0.3651840    0.2572174
8         Birth       ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                -0.1511842   -0.3587616    0.0246818
8         Birth       kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                -0.0526653   -0.1221111    0.0124827
8         6 months    iLiNS_DYADM_LNS             MALAWI                         Control              NA                -0.0877193   -0.4195340    0.1665340
8         6 months    ki1000304-VITAMIN-A         INDIA                          Control              NA                -0.0260611   -0.1422361    0.0782979
8         6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Control              NA                -0.3984962   -0.9439381   -0.0060978
8         6 months    ki1119695-PROBIT            BELARUS                        Control              NA                -0.1487430   -0.4152998    0.0676106
8         6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                 0.2963784    0.1662208    0.4062177
8         6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                 0.1206897   -0.0740855    0.2801442
8         6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Control              NA                -0.0833333   -0.3929806    0.1574821
8         6 months    ki1148112-LCNI-5            MALAWI                         Control              NA                -0.7222222   -1.5446858   -0.1655857
8         6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                -0.0039630   -0.0847178    0.0707797
8         6 months    kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                 0.0736601   -0.2723945    0.3255979
8         24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                -0.2684949   -0.6565804    0.0286742
8         24 months   ki1000111-WASH-Kenya        KENYA                          Control              NA                -0.0493097   -0.3621833    0.1917014
8         24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                -0.0364372   -0.2882172    0.1661327
8         24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                 0.1891892   -0.5561446    0.5775366
9         Birth       ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                -0.1422381   -0.3656198    0.0446039
9         Birth       kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                -0.0608800   -0.1287279    0.0028895
9         6 months    iLiNS_DYADM_LNS             MALAWI                         Control              NA                -0.2216066   -0.5311949    0.0253868
9         6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                -0.0344828   -0.8966454    0.4357646
9         6 months    ki1000304-EU                INDIA                          Control              NA                 0.1497976   -0.2452662    0.4195264
9         6 months    ki1000304-VITAMIN-A         INDIA                          Control              NA                -0.0993571   -0.2678978    0.0467796
9         6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Control              NA                 0.1087963   -0.1218030    0.2919933
9         6 months    ki1119695-PROBIT            BELARUS                        Control              NA                -0.2285843   -0.5598902    0.0323554
9         6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                 0.2488118    0.1050311    0.3694935
9         6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                 0.0715278   -0.1644655    0.2596941
9         6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Control              NA                -0.5574163   -1.0401625   -0.1888982
9         6 months    ki1148112-LCNI-5            MALAWI                         Control              NA                -0.1397059   -0.7123562    0.2414373
9         6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                 0.0029874   -0.0770206    0.0770519
9         6 months    kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                 0.3627845   -0.0878908    0.6267607
9         24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                -0.2631579   -0.8571396    0.1408466
9         24 months   ki1000111-WASH-Kenya        KENYA                          Control              NA                 0.1060140   -0.2525400    0.3619278
9         24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                -0.0694444   -0.3376930    0.1450120
9         24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                -0.1285266   -0.7429998    0.2693215
10        Birth       ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                 0.1266461   -0.0487015    0.2726749
10        Birth       kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                -0.0492706   -0.1016917    0.0006562
10        6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Control              NA                -0.1866776   -0.3972026   -0.0078738
10        6 months    ki1000304-EU                INDIA                          Control              NA                 0.2142857   -0.3288245    0.5354188
10        6 months    ki1000304-VITAMIN-A         INDIA                          Control              NA                -0.0141844   -0.1961826    0.1401230
10        6 months    ki1000304b-SAS-CompFeed     INDIA                          Control              NA                 0.1984127   -0.0757277    0.4026906
10        6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              NA                 0.0527950   -0.9528443    0.5405690
10        6 months    ki1119695-PROBIT            BELARUS                        Control              NA                -0.0469984   -0.2097442    0.0938534
10        6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                 0.0124113   -0.1618617    0.1605444
10        6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                -0.2509653   -0.5335169   -0.0204739
10        6 months    ki1148112-LCNI-5            MALAWI                         Control              NA                 0.4288736    0.0127454    0.6696036
10        6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                -0.0887258   -0.1666840   -0.0159769
10        6 months    kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                -0.1351351   -0.9228398    0.3298808
10        24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                 0.2701149   -0.1455320    0.5349478
10        24 months   ki1000111-WASH-Kenya        KENYA                          Control              NA                -0.1307692   -0.5124678    0.1546008
10        24 months   ki1000304-EU                INDIA                          Control              NA                -0.0769231   -0.5292536    0.2416148
10        24 months   ki1119695-PROBIT            BELARUS                        Control              NA                 0.0774457   -0.5816733    0.4618949
10        24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                -0.0695652   -0.2737596    0.1018951
10        24 months   ki1148112-LCNI-5            MALAWI                         Control              NA                 0.1153846   -0.6019491    0.5115048
11        Birth       ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                -0.0277709   -0.1986405    0.1187408
11        Birth       kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                -0.0634479   -0.1147541   -0.0145032
11        6 months    iLiNS_DYADM_LNS             MALAWI                         Control              NA                 0.1654135   -0.1953809    0.4173116
11        6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Control              NA                -0.0672211   -0.2954464    0.1207967
11        6 months    ki1000304-VITAMIN-A         INDIA                          Control              NA                 0.0130624   -0.1725012    0.1692582
11        6 months    ki1119695-PROBIT            BELARUS                        Control              NA                -0.2504848   -0.5619139   -0.0011513
11        6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                 0.1927377    0.0628093    0.3046533
11        6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                -0.0129167   -0.2011076    0.1457883
11        6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Control              NA                 0.2311213   -0.0552587    0.4397824
11        6 months    ki1148112-LCNI-5            MALAWI                         Control              NA                 0.0000000   -0.5871944    0.3699575
11        6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                -0.0555696   -0.1222778    0.0071736
11        24 months   ki1000107-Serrinha-VitA     BRAZIL                         Control              NA                -0.2781065   -0.7250401    0.0530329
11        24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                 0.0136054   -0.8300723    0.4683411
11        24 months   ki1000111-WASH-Kenya        KENYA                          Control              NA                -0.1209472   -0.5488855    0.1887570
11        24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Control              NA                -0.4424552   -1.5570654    0.1863027
11        24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                 0.1417910    0.0087086    0.2570070
12        Birth       ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                 0.1689238    0.0268603    0.2902482
12        Birth       kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                -0.0455756   -0.0961927    0.0027042
12        6 months    iLiNS_DYADM_LNS             MALAWI                         Control              NA                -0.1306991   -0.4605497    0.1246581
12        6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Control              NA                -0.1746032   -0.3336746   -0.0345047
12        6 months    ki1000304-VITAMIN-A         INDIA                          Control              NA                 0.0425989   -0.0916056    0.1603040
12        6 months    ki1000304b-SAS-CompFeed     INDIA                          Control              NA                -0.1302326   -0.5519464    0.1768881
12        6 months    ki1119695-PROBIT            BELARUS                        Control              NA                -0.2020997   -0.4810941    0.0243404
12        6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                -0.0060383   -0.1725452    0.1368239
12        6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                -0.3000000   -0.6769210   -0.0077994
12        6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Control              NA                -0.1234043   -0.4402601    0.1237436
12        6 months    ki1148112-LCNI-5            MALAWI                         Control              NA                -0.2965261   -0.8936047    0.1122858
12        6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                -0.0374111   -0.1073082    0.0280738
12        24 months   ki1000107-Serrinha-VitA     BRAZIL                         Control              NA                 0.0000000   -0.3276213    0.2467732
12        24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                 0.1919192   -0.6168817    0.5961395
12        24 months   ki1000111-WASH-Kenya        KENYA                          Control              NA                 0.1727941   -0.0879952    0.3710730
12        24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Control              NA                -0.4166667   -0.9103255   -0.0505772
12        24 months   ki1119695-PROBIT            BELARUS                        Control              NA                -0.0865306   -0.5998239    0.2620758
12        24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                -0.0576923   -0.3301164    0.1589360
