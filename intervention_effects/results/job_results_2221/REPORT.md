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

* month
* agecat
* studyid
* country

## Data Summary

month   agecat      studyid                     country                        tr          stunted   n_cell      n
------  ----------  --------------------------  -----------------------------  ---------  --------  -------  -----
12      24 months   ki1000107-Serrinha-VitA     BRAZIL                         Control           0       40    131
12      24 months   ki1000107-Serrinha-VitA     BRAZIL                         Control           1       31    131
12      24 months   ki1000107-Serrinha-VitA     BRAZIL                         VitA              0       34    131
12      24 months   ki1000107-Serrinha-VitA     BRAZIL                         VitA              1       26    131
12      6 months    ki1000107-Serrinha-VitA     BRAZIL                         Control           0       10     35
12      6 months    ki1000107-Serrinha-VitA     BRAZIL                         Control           1        6     35
12      6 months    ki1000107-Serrinha-VitA     BRAZIL                         VitA              0       16     35
12      6 months    ki1000107-Serrinha-VitA     BRAZIL                         VitA              1        3     35
11      24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control           0       16    134
11      24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control           1       15    134
11      24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS               0       27    134
11      24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS               1        9    134
11      24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other             0       48    134
11      24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other             1       19    134
10      24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control           0       22    146
10      24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control           1        8    146
10      24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS               0       29    146
10      24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS               1        9    146
10      24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other             0       51    146
10      24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other             1       27    146
9       24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control           0       34    233
9       24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control           1       20    233
9       24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS               0       31    233
9       24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS               1       27    233
9       24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other             0       70    233
9       24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other             1       51    233
2       24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control           0       10     49
2       24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control           1        7     49
2       24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS               0       10     49
2       24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS               1        3     49
2       24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other             0       13     49
2       24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other             1        6     49
11      6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Control           0        9     47
11      6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Control           1        2     47
11      6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     LNS               0       10     47
11      6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     LNS               1        3     47
11      6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Other             0       20     47
11      6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Other             1        3     47
4       24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control           0       16     95
4       24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control           1        6     95
4       24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS               0       17     95
4       24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS               1        8     95
4       24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other             0       25     95
4       24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other             1       23     95
12      24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control           0       12     71
12      24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control           1        5     71
12      24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS               0        6     71
12      24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS               1        2     71
12      24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other             0       27     71
12      24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other             1       19     71
12      6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Control           0        9     65
12      6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Control           1        0     65
12      6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     LNS               0       23     65
12      6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     LNS               1        2     65
12      6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Other             0       31     65
12      6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Other             1        0     65
3       24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control           0        2     38
3       24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control           1        6     38
3       24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS               0        5     38
3       24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS               1        4     38
3       24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other             0       11     38
3       24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other             1       10     38
1       6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Control           0       30    142
1       6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Control           1        2    142
1       6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     LNS               0       29    142
1       6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     LNS               1        5    142
1       6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Other             0       71    142
1       6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Other             1        5    142
1       24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control           0        8     60
1       24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control           1        4     60
1       24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS               0        6     60
1       24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS               1        9     60
1       24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other             0       18     60
1       24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other             1       15     60
2       6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Control           0       13     70
2       6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Control           1        3     70
2       6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     LNS               0        9     70
2       6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     LNS               1        4     70
2       6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Other             0       35     70
2       6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Other             1        6     70
8       24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control           0       17    133
8       24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control           1       17    133
8       24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS               0       23    133
8       24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS               1       11    133
8       24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other             0       36    133
8       24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other             1       29    133
3       6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Control           0       15    105
3       6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Control           1        7    105
3       6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     LNS               0       31    105
3       6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     LNS               1        8    105
3       6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Other             0       39    105
3       6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Other             1        5    105
5       24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control           0        7     88
5       24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control           1        9     88
5       24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS               0       19     88
5       24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS               1       13     88
5       24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other             0       20     88
5       24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other             1       20     88
4       6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Control           0       15     77
4       6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Control           1        4     77
4       6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     LNS               0       22     77
4       6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     LNS               1        0     77
4       6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Other             0       25     77
4       6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Other             1       11     77
6       24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control           0        5     74
6       24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control           1       10     74
6       24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS               0        7     74
6       24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS               1       10     74
6       24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other             0       21     74
6       24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other             1       21     74
5       6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Control           0       19     80
5       6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Control           1        5     80
5       6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     LNS               0       18     80
5       6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     LNS               1        4     80
5       6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Other             0       28     80
5       6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Other             1        6     80
6       6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Control           0       11     62
6       6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Control           1        5     62
6       6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     LNS               0        7     62
6       6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     LNS               1        3     62
6       6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Other             0       31     62
6       6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Other             1        5     62
7       24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control           0        7     66
7       24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control           1        8     66
7       24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS               0       11     66
7       24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS               1       11     66
7       24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other             0       17     66
7       24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other             1       12     66
10      6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Control           0        5     12
10      6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     LNS               0        4     12
10      6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Other             0        3     12
7       6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Control           0        1     10
7       6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Control           1        1     10
7       6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     LNS               0        2     10
7       6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     LNS               1        0     10
7       6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Other             0        6     10
7       6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Other             1        0     10
8       6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Control           0        5      8
8       6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     LNS               0        1      8
8       6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Other             0        2      8
9       6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     LNS               0        3      4
9       6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     LNS               1        0      4
9       6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Other             0        0      4
9       6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Other             1        1      4
10      24 months   ki1000111-WASH-Kenya        KENYA                          Control           0       39    247
10      24 months   ki1000111-WASH-Kenya        KENYA                          Control           1       30    247
10      24 months   ki1000111-WASH-Kenya        KENYA                          LNS               0       39    247
10      24 months   ki1000111-WASH-Kenya        KENYA                          LNS               1       31    247
10      24 months   ki1000111-WASH-Kenya        KENYA                          Other             0       67    247
10      24 months   ki1000111-WASH-Kenya        KENYA                          Other             1       41    247
9       6 months    ki1000111-WASH-Kenya        KENYA                          Control           0        1      6
9       6 months    ki1000111-WASH-Kenya        KENYA                          Control           1        0      6
9       6 months    ki1000111-WASH-Kenya        KENYA                          LNS               0        2      6
9       6 months    ki1000111-WASH-Kenya        KENYA                          LNS               1        1      6
9       6 months    ki1000111-WASH-Kenya        KENYA                          Other             0        2      6
9       6 months    ki1000111-WASH-Kenya        KENYA                          Other             1        0      6
9       24 months   ki1000111-WASH-Kenya        KENYA                          Control           0        3     21
9       24 months   ki1000111-WASH-Kenya        KENYA                          Control           1        2     21
9       24 months   ki1000111-WASH-Kenya        KENYA                          LNS               0        2     21
9       24 months   ki1000111-WASH-Kenya        KENYA                          LNS               1        0     21
9       24 months   ki1000111-WASH-Kenya        KENYA                          Other             0        8     21
9       24 months   ki1000111-WASH-Kenya        KENYA                          Other             1        6     21
2       24 months   ki1000111-WASH-Kenya        KENYA                          Control           0       40    190
2       24 months   ki1000111-WASH-Kenya        KENYA                          Control           1       13    190
2       24 months   ki1000111-WASH-Kenya        KENYA                          LNS               0       22    190
2       24 months   ki1000111-WASH-Kenya        KENYA                          LNS               1       13    190
2       24 months   ki1000111-WASH-Kenya        KENYA                          Other             0       78    190
2       24 months   ki1000111-WASH-Kenya        KENYA                          Other             1       24    190
8       24 months   ki1000111-WASH-Kenya        KENYA                          Control           0        3     13
8       24 months   ki1000111-WASH-Kenya        KENYA                          Control           1        3     13
8       24 months   ki1000111-WASH-Kenya        KENYA                          LNS               0        2     13
8       24 months   ki1000111-WASH-Kenya        KENYA                          LNS               1        2     13
8       24 months   ki1000111-WASH-Kenya        KENYA                          Other             0        1     13
8       24 months   ki1000111-WASH-Kenya        KENYA                          Other             1        2     13
1       24 months   ki1000111-WASH-Kenya        KENYA                          Control           0       82    330
1       24 months   ki1000111-WASH-Kenya        KENYA                          Control           1       43    330
1       24 months   ki1000111-WASH-Kenya        KENYA                          LNS               0       56    330
1       24 months   ki1000111-WASH-Kenya        KENYA                          LNS               1       21    330
1       24 months   ki1000111-WASH-Kenya        KENYA                          Other             0       79    330
1       24 months   ki1000111-WASH-Kenya        KENYA                          Other             1       49    330
3       24 months   ki1000111-WASH-Kenya        KENYA                          Control           0       60    192
3       24 months   ki1000111-WASH-Kenya        KENYA                          Control           1       19    192
3       24 months   ki1000111-WASH-Kenya        KENYA                          LNS               0       34    192
3       24 months   ki1000111-WASH-Kenya        KENYA                          LNS               1        8    192
3       24 months   ki1000111-WASH-Kenya        KENYA                          Other             0       52    192
3       24 months   ki1000111-WASH-Kenya        KENYA                          Other             1       19    192
1       6 months    ki1000111-WASH-Kenya        KENYA                          Control           0        2      8
1       6 months    ki1000111-WASH-Kenya        KENYA                          Control           1        0      8
1       6 months    ki1000111-WASH-Kenya        KENYA                          LNS               0        4      8
1       6 months    ki1000111-WASH-Kenya        KENYA                          LNS               1        1      8
1       6 months    ki1000111-WASH-Kenya        KENYA                          Other             0        1      8
1       6 months    ki1000111-WASH-Kenya        KENYA                          Other             1        0      8
11      24 months   ki1000111-WASH-Kenya        KENYA                          Control           0       65    290
11      24 months   ki1000111-WASH-Kenya        KENYA                          Control           1       20    290
11      24 months   ki1000111-WASH-Kenya        KENYA                          LNS               0       34    290
11      24 months   ki1000111-WASH-Kenya        KENYA                          LNS               1       10    290
11      24 months   ki1000111-WASH-Kenya        KENYA                          Other             0      115    290
11      24 months   ki1000111-WASH-Kenya        KENYA                          Other             1       46    290
12      24 months   ki1000111-WASH-Kenya        KENYA                          Control           0       43    178
12      24 months   ki1000111-WASH-Kenya        KENYA                          Control           1       29    178
12      24 months   ki1000111-WASH-Kenya        KENYA                          LNS               0       32    178
12      24 months   ki1000111-WASH-Kenya        KENYA                          LNS               1        8    178
12      24 months   ki1000111-WASH-Kenya        KENYA                          Other             0       45    178
12      24 months   ki1000111-WASH-Kenya        KENYA                          Other             1       21    178
11      6 months    ki1000111-WASH-Kenya        KENYA                          Control           0        2      4
11      6 months    ki1000111-WASH-Kenya        KENYA                          Control           1        1      4
11      6 months    ki1000111-WASH-Kenya        KENYA                          Other             0        1      4
11      6 months    ki1000111-WASH-Kenya        KENYA                          Other             1        0      4
10      6 months    ki1000111-WASH-Kenya        KENYA                          Other             0        3      3
12      6 months    ki1000111-WASH-Kenya        KENYA                          Control           0        5      7
12      6 months    ki1000111-WASH-Kenya        KENYA                          Control           1        0      7
12      6 months    ki1000111-WASH-Kenya        KENYA                          Other             0        1      7
12      6 months    ki1000111-WASH-Kenya        KENYA                          Other             1        1      7
2       6 months    ki1000111-WASH-Kenya        KENYA                          Control           0        2      6
2       6 months    ki1000111-WASH-Kenya        KENYA                          LNS               0        3      6
2       6 months    ki1000111-WASH-Kenya        KENYA                          Other             0        1      6
5       24 months   ki1000111-WASH-Kenya        KENYA                          Control           0       72    311
5       24 months   ki1000111-WASH-Kenya        KENYA                          Control           1       32    311
5       24 months   ki1000111-WASH-Kenya        KENYA                          LNS               0       53    311
5       24 months   ki1000111-WASH-Kenya        KENYA                          LNS               1       21    311
5       24 months   ki1000111-WASH-Kenya        KENYA                          Other             0       91    311
5       24 months   ki1000111-WASH-Kenya        KENYA                          Other             1       42    311
3       6 months    ki1000111-WASH-Kenya        KENYA                          Control           0        3     12
3       6 months    ki1000111-WASH-Kenya        KENYA                          Control           1        0     12
3       6 months    ki1000111-WASH-Kenya        KENYA                          LNS               0        1     12
3       6 months    ki1000111-WASH-Kenya        KENYA                          LNS               1        0     12
3       6 months    ki1000111-WASH-Kenya        KENYA                          Other             0        5     12
3       6 months    ki1000111-WASH-Kenya        KENYA                          Other             1        3     12
6       24 months   ki1000111-WASH-Kenya        KENYA                          Control           0       37    135
6       24 months   ki1000111-WASH-Kenya        KENYA                          Control           1       10    135
6       24 months   ki1000111-WASH-Kenya        KENYA                          LNS               0       19    135
6       24 months   ki1000111-WASH-Kenya        KENYA                          LNS               1        7    135
6       24 months   ki1000111-WASH-Kenya        KENYA                          Other             0       42    135
6       24 months   ki1000111-WASH-Kenya        KENYA                          Other             1       20    135
4       24 months   ki1000111-WASH-Kenya        KENYA                          Control           0       76    339
4       24 months   ki1000111-WASH-Kenya        KENYA                          Control           1       32    339
4       24 months   ki1000111-WASH-Kenya        KENYA                          LNS               0       60    339
4       24 months   ki1000111-WASH-Kenya        KENYA                          LNS               1       23    339
4       24 months   ki1000111-WASH-Kenya        KENYA                          Other             0      100    339
4       24 months   ki1000111-WASH-Kenya        KENYA                          Other             1       48    339
4       6 months    ki1000111-WASH-Kenya        KENYA                          Control           0        2      8
4       6 months    ki1000111-WASH-Kenya        KENYA                          LNS               0        1      8
4       6 months    ki1000111-WASH-Kenya        KENYA                          Other             0        5      8
5       6 months    ki1000111-WASH-Kenya        KENYA                          Control           0        5     15
5       6 months    ki1000111-WASH-Kenya        KENYA                          Control           1        1     15
5       6 months    ki1000111-WASH-Kenya        KENYA                          LNS               0        1     15
5       6 months    ki1000111-WASH-Kenya        KENYA                          LNS               1        1     15
5       6 months    ki1000111-WASH-Kenya        KENYA                          Other             0        5     15
5       6 months    ki1000111-WASH-Kenya        KENYA                          Other             1        2     15
7       24 months   ki1000111-WASH-Kenya        KENYA                          Control           0        7     18
7       24 months   ki1000111-WASH-Kenya        KENYA                          Control           1        0     18
7       24 months   ki1000111-WASH-Kenya        KENYA                          LNS               0        1     18
7       24 months   ki1000111-WASH-Kenya        KENYA                          LNS               1        2     18
7       24 months   ki1000111-WASH-Kenya        KENYA                          Other             0        6     18
7       24 months   ki1000111-WASH-Kenya        KENYA                          Other             1        2     18
6       6 months    ki1000111-WASH-Kenya        KENYA                          Control           0        1      5
6       6 months    ki1000111-WASH-Kenya        KENYA                          Other             0        4      5
6       6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Control           0        1      5
6       6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Control           1        3      5
6       6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Maternal          0        1      5
6       6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Maternal          1        0      5
7       6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Control           0       37     70
7       6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Control           1       21     70
7       6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Maternal          0        6     70
7       6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Maternal          1        6     70
8       6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Control           0        3     21
8       6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Control           1        2     21
8       6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Maternal          0       11     21
8       6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Maternal          1        5     21
7       24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Control           1        1      1
10      6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Control           0        6     13
10      6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Control           1        1     13
10      6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Maternal          0        6     13
10      6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Maternal          1        0     13
5       6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Control           0        1      2
5       6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Maternal          0        1      2
9       6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Maternal          0       15     18
9       6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Maternal          1        3     18
11      6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Control           0       61    188
11      6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Control           1       38    188
11      6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Maternal          0       71    188
11      6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Maternal          1       18    188
10      24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Maternal          0        1      2
10      24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Maternal          1        1      2
12      6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Control           0       54    146
12      6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Control           1       19    146
12      6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Maternal          0       53    146
12      6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Maternal          1       20    146
1       6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Control           0       55    168
1       6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Control           1       35    168
1       6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Maternal          0       56    168
1       6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Maternal          1       22    168
2       6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Control           0       34     62
2       6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Control           1        4     62
2       6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Maternal          0       19     62
2       6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Maternal          1        5     62
11      Birth       ki1000125-AgaKhanUniv       PAKISTAN                       Control           0        2      2
1       Birth       ki1000125-AgaKhanUniv       PAKISTAN                       Control           0        5      8
1       Birth       ki1000125-AgaKhanUniv       PAKISTAN                       Maternal          0        3      8
12      Birth       ki1000125-AgaKhanUniv       PAKISTAN                       Maternal          0        1      1
3       6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Maternal          0        2      2
9       24 months   ki1000304-EU                INDIA                          Control           0        4     20
9       24 months   ki1000304-EU                INDIA                          Control           1        6     20
9       24 months   ki1000304-EU                INDIA                          Zinc              0        6     20
9       24 months   ki1000304-EU                INDIA                          Zinc              1        4     20
9       6 months    ki1000304-EU                INDIA                          Control           0        7     19
9       6 months    ki1000304-EU                INDIA                          Control           1        5     19
9       6 months    ki1000304-EU                INDIA                          Zinc              0        6     19
9       6 months    ki1000304-EU                INDIA                          Zinc              1        1     19
2       24 months   ki1000304-EU                INDIA                          Control           0        3     21
2       24 months   ki1000304-EU                INDIA                          Control           1       10     21
2       24 months   ki1000304-EU                INDIA                          Zinc              0        3     21
2       24 months   ki1000304-EU                INDIA                          Zinc              1        5     21
10      24 months   ki1000304-EU                INDIA                          Control           0        6     21
10      24 months   ki1000304-EU                INDIA                          Control           1        8     21
10      24 months   ki1000304-EU                INDIA                          Zinc              0        2     21
10      24 months   ki1000304-EU                INDIA                          Zinc              1        5     21
10      6 months    ki1000304-EU                INDIA                          Control           0       13     31
10      6 months    ki1000304-EU                INDIA                          Control           1        3     31
10      6 months    ki1000304-EU                INDIA                          Zinc              0       14     31
10      6 months    ki1000304-EU                INDIA                          Zinc              1        1     31
11      6 months    ki1000304-EU                INDIA                          Control           0       10     40
11      6 months    ki1000304-EU                INDIA                          Control           1       10     40
11      6 months    ki1000304-EU                INDIA                          Zinc              0       14     40
11      6 months    ki1000304-EU                INDIA                          Zinc              1        6     40
1       24 months   ki1000304-EU                INDIA                          Control           0        3     20
1       24 months   ki1000304-EU                INDIA                          Control           1        6     20
1       24 months   ki1000304-EU                INDIA                          Zinc              0        7     20
1       24 months   ki1000304-EU                INDIA                          Zinc              1        4     20
11      24 months   ki1000304-EU                INDIA                          Control           0        2     22
11      24 months   ki1000304-EU                INDIA                          Control           1        6     22
11      24 months   ki1000304-EU                INDIA                          Zinc              0        5     22
11      24 months   ki1000304-EU                INDIA                          Zinc              1        9     22
3       6 months    ki1000304-EU                INDIA                          Control           0       15     33
3       6 months    ki1000304-EU                INDIA                          Control           1        7     33
3       6 months    ki1000304-EU                INDIA                          Zinc              0        5     33
3       6 months    ki1000304-EU                INDIA                          Zinc              1        6     33
3       24 months   ki1000304-EU                INDIA                          Control           0        6     26
3       24 months   ki1000304-EU                INDIA                          Control           1        7     26
3       24 months   ki1000304-EU                INDIA                          Zinc              0        6     26
3       24 months   ki1000304-EU                INDIA                          Zinc              1        7     26
12      24 months   ki1000304-EU                INDIA                          Control           0        6     20
12      24 months   ki1000304-EU                INDIA                          Control           1        3     20
12      24 months   ki1000304-EU                INDIA                          Zinc              0        7     20
12      24 months   ki1000304-EU                INDIA                          Zinc              1        4     20
12      6 months    ki1000304-EU                INDIA                          Control           0       12     25
12      6 months    ki1000304-EU                INDIA                          Control           1        2     25
12      6 months    ki1000304-EU                INDIA                          Zinc              0        7     25
12      6 months    ki1000304-EU                INDIA                          Zinc              1        4     25
2       6 months    ki1000304-EU                INDIA                          Control           0       10     39
2       6 months    ki1000304-EU                INDIA                          Control           1        4     39
2       6 months    ki1000304-EU                INDIA                          Zinc              0       20     39
2       6 months    ki1000304-EU                INDIA                          Zinc              1        5     39
1       6 months    ki1000304-EU                INDIA                          Control           0       11     37
1       6 months    ki1000304-EU                INDIA                          Control           1        7     37
1       6 months    ki1000304-EU                INDIA                          Zinc              0       14     37
1       6 months    ki1000304-EU                INDIA                          Zinc              1        5     37
4       6 months    ki1000304-EU                INDIA                          Control           0       13     30
4       6 months    ki1000304-EU                INDIA                          Control           1        5     30
4       6 months    ki1000304-EU                INDIA                          Zinc              0        7     30
4       6 months    ki1000304-EU                INDIA                          Zinc              1        5     30
4       24 months   ki1000304-EU                INDIA                          Control           0        3     19
4       24 months   ki1000304-EU                INDIA                          Control           1        6     19
4       24 months   ki1000304-EU                INDIA                          Zinc              0        3     19
4       24 months   ki1000304-EU                INDIA                          Zinc              1        7     19
5       6 months    ki1000304-EU                INDIA                          Control           0        3     17
5       6 months    ki1000304-EU                INDIA                          Control           1        3     17
5       6 months    ki1000304-EU                INDIA                          Zinc              0        7     17
5       6 months    ki1000304-EU                INDIA                          Zinc              1        4     17
5       24 months   ki1000304-EU                INDIA                          Control           0        2     11
5       24 months   ki1000304-EU                INDIA                          Control           1        4     11
5       24 months   ki1000304-EU                INDIA                          Zinc              0        2     11
5       24 months   ki1000304-EU                INDIA                          Zinc              1        3     11
6       6 months    ki1000304-EU                INDIA                          Control           0       13     26
6       6 months    ki1000304-EU                INDIA                          Control           1        7     26
6       6 months    ki1000304-EU                INDIA                          Zinc              0        4     26
6       6 months    ki1000304-EU                INDIA                          Zinc              1        2     26
7       6 months    ki1000304-EU                INDIA                          Control           0       14     31
7       6 months    ki1000304-EU                INDIA                          Control           1       10     31
7       6 months    ki1000304-EU                INDIA                          Zinc              0        6     31
7       6 months    ki1000304-EU                INDIA                          Zinc              1        1     31
6       24 months   ki1000304-EU                INDIA                          Control           0        3     18
6       24 months   ki1000304-EU                INDIA                          Control           1        5     18
6       24 months   ki1000304-EU                INDIA                          Zinc              0        3     18
6       24 months   ki1000304-EU                INDIA                          Zinc              1        7     18
7       24 months   ki1000304-EU                INDIA                          Control           0        3     27
7       24 months   ki1000304-EU                INDIA                          Control           1        9     27
7       24 months   ki1000304-EU                INDIA                          Zinc              0        6     27
7       24 months   ki1000304-EU                INDIA                          Zinc              1        9     27
8       24 months   ki1000304-EU                INDIA                          Control           0        5     28
8       24 months   ki1000304-EU                INDIA                          Control           1        9     28
8       24 months   ki1000304-EU                INDIA                          Zinc              0        5     28
8       24 months   ki1000304-EU                INDIA                          Zinc              1        9     28
8       6 months    ki1000304-EU                INDIA                          Control           0        8     35
8       6 months    ki1000304-EU                INDIA                          Control           1        6     35
8       6 months    ki1000304-EU                INDIA                          Zinc              0       13     35
8       6 months    ki1000304-EU                INDIA                          Zinc              1        8     35
1       6 months    ki1000304-VITAMIN-A         INDIA                          Control           0       89    264
1       6 months    ki1000304-VITAMIN-A         INDIA                          Control           1       42    264
1       6 months    ki1000304-VITAMIN-A         INDIA                          VitA              0       90    264
1       6 months    ki1000304-VITAMIN-A         INDIA                          VitA              1       43    264
2       6 months    ki1000304-VITAMIN-A         INDIA                          Control           0       58    196
2       6 months    ki1000304-VITAMIN-A         INDIA                          Control           1       33    196
2       6 months    ki1000304-VITAMIN-A         INDIA                          VitA              0       76    196
2       6 months    ki1000304-VITAMIN-A         INDIA                          VitA              1       29    196
6       6 months    ki1000304-VITAMIN-A         INDIA                          Control           0       68    206
6       6 months    ki1000304-VITAMIN-A         INDIA                          Control           1       37    206
6       6 months    ki1000304-VITAMIN-A         INDIA                          VitA              0       64    206
6       6 months    ki1000304-VITAMIN-A         INDIA                          VitA              1       37    206
7       6 months    ki1000304-VITAMIN-A         INDIA                          Control           0       84    240
7       6 months    ki1000304-VITAMIN-A         INDIA                          Control           1       38    240
7       6 months    ki1000304-VITAMIN-A         INDIA                          VitA              0       72    240
7       6 months    ki1000304-VITAMIN-A         INDIA                          VitA              1       46    240
4       6 months    ki1000304-VITAMIN-A         INDIA                          Control           0       71    237
4       6 months    ki1000304-VITAMIN-A         INDIA                          Control           1       39    237
4       6 months    ki1000304-VITAMIN-A         INDIA                          VitA              0       91    237
4       6 months    ki1000304-VITAMIN-A         INDIA                          VitA              1       36    237
5       6 months    ki1000304-VITAMIN-A         INDIA                          Control           0       82    262
5       6 months    ki1000304-VITAMIN-A         INDIA                          Control           1       45    262
5       6 months    ki1000304-VITAMIN-A         INDIA                          VitA              0       90    262
5       6 months    ki1000304-VITAMIN-A         INDIA                          VitA              1       45    262
8       6 months    ki1000304-VITAMIN-A         INDIA                          Control           0      111    327
8       6 months    ki1000304-VITAMIN-A         INDIA                          Control           1       66    327
8       6 months    ki1000304-VITAMIN-A         INDIA                          VitA              0      108    327
8       6 months    ki1000304-VITAMIN-A         INDIA                          VitA              1       42    327
9       6 months    ki1000304-VITAMIN-A         INDIA                          Control           0       62    205
9       6 months    ki1000304-VITAMIN-A         INDIA                          Control           1       41    205
9       6 months    ki1000304-VITAMIN-A         INDIA                          VitA              0       64    205
9       6 months    ki1000304-VITAMIN-A         INDIA                          VitA              1       38    205
10      6 months    ki1000304-VITAMIN-A         INDIA                          Control           0       41    134
10      6 months    ki1000304-VITAMIN-A         INDIA                          Control           1       26    134
10      6 months    ki1000304-VITAMIN-A         INDIA                          VitA              0       44    134
10      6 months    ki1000304-VITAMIN-A         INDIA                          VitA              1       23    134
11      6 months    ki1000304-VITAMIN-A         INDIA                          Control           0       53    158
11      6 months    ki1000304-VITAMIN-A         INDIA                          Control           1       28    158
11      6 months    ki1000304-VITAMIN-A         INDIA                          VitA              0       50    158
11      6 months    ki1000304-VITAMIN-A         INDIA                          VitA              1       27    158
12      6 months    ki1000304-VITAMIN-A         INDIA                          Control           0       26     84
12      6 months    ki1000304-VITAMIN-A         INDIA                          Control           1       17     84
12      6 months    ki1000304-VITAMIN-A         INDIA                          VitA              0       26     84
12      6 months    ki1000304-VITAMIN-A         INDIA                          VitA              1       15     84
3       6 months    ki1000304-VITAMIN-A         INDIA                          Control           0       68    195
3       6 months    ki1000304-VITAMIN-A         INDIA                          Control           1       40    195
3       6 months    ki1000304-VITAMIN-A         INDIA                          VitA              0       56    195
3       6 months    ki1000304-VITAMIN-A         INDIA                          VitA              1       31    195
6       6 months    ki1000304-Vitamin-B12       INDIA                          Control           0        3     10
6       6 months    ki1000304-Vitamin-B12       INDIA                          Control           1        0     10
6       6 months    ki1000304-Vitamin-B12       INDIA                          Other             0        4     10
6       6 months    ki1000304-Vitamin-B12       INDIA                          Other             1        3     10
2       24 months   ki1000304-Vitamin-B12       INDIA                          Control           0        3     13
2       24 months   ki1000304-Vitamin-B12       INDIA                          Control           1        2     13
2       24 months   ki1000304-Vitamin-B12       INDIA                          Other             0        5     13
2       24 months   ki1000304-Vitamin-B12       INDIA                          Other             1        3     13
6       24 months   ki1000304-Vitamin-B12       INDIA                          Control           0        3     18
6       24 months   ki1000304-Vitamin-B12       INDIA                          Control           1        1     18
6       24 months   ki1000304-Vitamin-B12       INDIA                          Other             0        6     18
6       24 months   ki1000304-Vitamin-B12       INDIA                          Other             1        8     18
1       6 months    ki1000304-Vitamin-B12       INDIA                          Control           0        4     21
1       6 months    ki1000304-Vitamin-B12       INDIA                          Control           1        0     21
1       6 months    ki1000304-Vitamin-B12       INDIA                          Other             0       12     21
1       6 months    ki1000304-Vitamin-B12       INDIA                          Other             1        5     21
7       24 months   ki1000304-Vitamin-B12       INDIA                          Control           0        4     18
7       24 months   ki1000304-Vitamin-B12       INDIA                          Control           1        2     18
7       24 months   ki1000304-Vitamin-B12       INDIA                          Other             0        5     18
7       24 months   ki1000304-Vitamin-B12       INDIA                          Other             1        7     18
7       6 months    ki1000304-Vitamin-B12       INDIA                          Control           0        0      8
7       6 months    ki1000304-Vitamin-B12       INDIA                          Control           1        1      8
7       6 months    ki1000304-Vitamin-B12       INDIA                          Other             0        4      8
7       6 months    ki1000304-Vitamin-B12       INDIA                          Other             1        3      8
5       24 months   ki1000304-Vitamin-B12       INDIA                          Other             1        1      1
8       6 months    ki1000304-Vitamin-B12       INDIA                          Control           0        0      5
8       6 months    ki1000304-Vitamin-B12       INDIA                          Control           1        2      5
8       6 months    ki1000304-Vitamin-B12       INDIA                          Other             0        2      5
8       6 months    ki1000304-Vitamin-B12       INDIA                          Other             1        1      5
8       24 months   ki1000304-Vitamin-B12       INDIA                          Other             0        2      3
8       24 months   ki1000304-Vitamin-B12       INDIA                          Other             1        1      3
9       24 months   ki1000304-Vitamin-B12       INDIA                          Control           0        3      8
9       24 months   ki1000304-Vitamin-B12       INDIA                          Control           1        1      8
9       24 months   ki1000304-Vitamin-B12       INDIA                          Other             0        3      8
9       24 months   ki1000304-Vitamin-B12       INDIA                          Other             1        1      8
9       6 months    ki1000304-Vitamin-B12       INDIA                          Other             0        2      3
9       6 months    ki1000304-Vitamin-B12       INDIA                          Other             1        1      3
10      6 months    ki1000304-Vitamin-B12       INDIA                          Control           0        1      4
10      6 months    ki1000304-Vitamin-B12       INDIA                          Other             0        3      4
10      24 months   ki1000304-Vitamin-B12       INDIA                          Control           0        6     23
10      24 months   ki1000304-Vitamin-B12       INDIA                          Control           1        3     23
10      24 months   ki1000304-Vitamin-B12       INDIA                          Other             0        7     23
10      24 months   ki1000304-Vitamin-B12       INDIA                          Other             1        7     23
11      24 months   ki1000304-Vitamin-B12       INDIA                          Control           0        1     17
11      24 months   ki1000304-Vitamin-B12       INDIA                          Control           1        2     17
11      24 months   ki1000304-Vitamin-B12       INDIA                          Other             0        6     17
11      24 months   ki1000304-Vitamin-B12       INDIA                          Other             1        8     17
11      6 months    ki1000304-Vitamin-B12       INDIA                          Other             0        3      4
11      6 months    ki1000304-Vitamin-B12       INDIA                          Other             1        1      4
12      24 months   ki1000304-Vitamin-B12       INDIA                          Control           0        3     17
12      24 months   ki1000304-Vitamin-B12       INDIA                          Control           1        1     17
12      24 months   ki1000304-Vitamin-B12       INDIA                          Other             0        7     17
12      24 months   ki1000304-Vitamin-B12       INDIA                          Other             1        6     17
12      6 months    ki1000304-Vitamin-B12       INDIA                          Control           0        1      8
12      6 months    ki1000304-Vitamin-B12       INDIA                          Control           1        1      8
12      6 months    ki1000304-Vitamin-B12       INDIA                          Other             0        5      8
12      6 months    ki1000304-Vitamin-B12       INDIA                          Other             1        1      8
1       24 months   ki1000304-Vitamin-B12       INDIA                          Control           0        1     15
1       24 months   ki1000304-Vitamin-B12       INDIA                          Control           1        2     15
1       24 months   ki1000304-Vitamin-B12       INDIA                          Other             0        9     15
1       24 months   ki1000304-Vitamin-B12       INDIA                          Other             1        3     15
2       6 months    ki1000304-Vitamin-B12       INDIA                          Control           0        2     18
2       6 months    ki1000304-Vitamin-B12       INDIA                          Control           1        2     18
2       6 months    ki1000304-Vitamin-B12       INDIA                          Other             0       12     18
2       6 months    ki1000304-Vitamin-B12       INDIA                          Other             1        2     18
8       6 months    ki1000304-ZnMort            INDIA                          Control           0        5     13
8       6 months    ki1000304-ZnMort            INDIA                          Control           1        2     13
8       6 months    ki1000304-ZnMort            INDIA                          Zinc              0        3     13
8       6 months    ki1000304-ZnMort            INDIA                          Zinc              1        3     13
9       6 months    ki1000304-ZnMort            INDIA                          Control           0        7     14
9       6 months    ki1000304-ZnMort            INDIA                          Control           1        3     14
9       6 months    ki1000304-ZnMort            INDIA                          Zinc              0        3     14
9       6 months    ki1000304-ZnMort            INDIA                          Zinc              1        1     14
4       24 months   ki1000304-ZnMort            INDIA                          Control           0        2     25
4       24 months   ki1000304-ZnMort            INDIA                          Control           1       13     25
4       24 months   ki1000304-ZnMort            INDIA                          Zinc              0        8     25
4       24 months   ki1000304-ZnMort            INDIA                          Zinc              1        2     25
3       24 months   ki1000304-ZnMort            INDIA                          Control           0        3     15
3       24 months   ki1000304-ZnMort            INDIA                          Control           1        3     15
3       24 months   ki1000304-ZnMort            INDIA                          Zinc              0        4     15
3       24 months   ki1000304-ZnMort            INDIA                          Zinc              1        5     15
4       6 months    ki1000304-ZnMort            INDIA                          Control           0        2     11
4       6 months    ki1000304-ZnMort            INDIA                          Control           1        0     11
4       6 months    ki1000304-ZnMort            INDIA                          Zinc              0        6     11
4       6 months    ki1000304-ZnMort            INDIA                          Zinc              1        3     11
10      6 months    ki1000304-ZnMort            INDIA                          Control           0        2      9
10      6 months    ki1000304-ZnMort            INDIA                          Control           1        1      9
10      6 months    ki1000304-ZnMort            INDIA                          Zinc              0        2      9
10      6 months    ki1000304-ZnMort            INDIA                          Zinc              1        4      9
3       6 months    ki1000304-ZnMort            INDIA                          Control           0        3     18
3       6 months    ki1000304-ZnMort            INDIA                          Control           1        6     18
3       6 months    ki1000304-ZnMort            INDIA                          Zinc              0        8     18
3       6 months    ki1000304-ZnMort            INDIA                          Zinc              1        1     18
5       6 months    ki1000304-ZnMort            INDIA                          Control           0        3      9
5       6 months    ki1000304-ZnMort            INDIA                          Control           1        3      9
5       6 months    ki1000304-ZnMort            INDIA                          Zinc              0        2      9
5       6 months    ki1000304-ZnMort            INDIA                          Zinc              1        1      9
5       24 months   ki1000304-ZnMort            INDIA                          Control           0        8     27
5       24 months   ki1000304-ZnMort            INDIA                          Control           1        7     27
5       24 months   ki1000304-ZnMort            INDIA                          Zinc              0        5     27
5       24 months   ki1000304-ZnMort            INDIA                          Zinc              1        7     27
6       24 months   ki1000304-ZnMort            INDIA                          Control           0        3     29
6       24 months   ki1000304-ZnMort            INDIA                          Control           1       11     29
6       24 months   ki1000304-ZnMort            INDIA                          Zinc              0        4     29
6       24 months   ki1000304-ZnMort            INDIA                          Zinc              1       11     29
6       6 months    ki1000304-ZnMort            INDIA                          Control           0       10     20
6       6 months    ki1000304-ZnMort            INDIA                          Control           1        3     20
6       6 months    ki1000304-ZnMort            INDIA                          Zinc              0        5     20
6       6 months    ki1000304-ZnMort            INDIA                          Zinc              1        2     20
11      6 months    ki1000304-ZnMort            INDIA                          Control           0        4      9
11      6 months    ki1000304-ZnMort            INDIA                          Control           1        2      9
11      6 months    ki1000304-ZnMort            INDIA                          Zinc              0        2      9
11      6 months    ki1000304-ZnMort            INDIA                          Zinc              1        1      9
8       24 months   ki1000304-ZnMort            INDIA                          Control           0        3      9
8       24 months   ki1000304-ZnMort            INDIA                          Control           1        3      9
8       24 months   ki1000304-ZnMort            INDIA                          Zinc              0        2      9
8       24 months   ki1000304-ZnMort            INDIA                          Zinc              1        1      9
7       24 months   ki1000304-ZnMort            INDIA                          Control           0        2      6
7       24 months   ki1000304-ZnMort            INDIA                          Control           1        2      6
7       24 months   ki1000304-ZnMort            INDIA                          Zinc              0        0      6
7       24 months   ki1000304-ZnMort            INDIA                          Zinc              1        2      6
7       6 months    ki1000304-ZnMort            INDIA                          Control           0        2      9
7       6 months    ki1000304-ZnMort            INDIA                          Control           1        3      9
7       6 months    ki1000304-ZnMort            INDIA                          Zinc              0        2      9
7       6 months    ki1000304-ZnMort            INDIA                          Zinc              1        2      9
12      6 months    ki1000304-ZnMort            INDIA                          Control           0        6     15
12      6 months    ki1000304-ZnMort            INDIA                          Control           1        4     15
12      6 months    ki1000304-ZnMort            INDIA                          Zinc              0        3     15
12      6 months    ki1000304-ZnMort            INDIA                          Zinc              1        2     15
1       6 months    ki1000304-ZnMort            INDIA                          Control           0        7     10
1       6 months    ki1000304-ZnMort            INDIA                          Control           1        2     10
1       6 months    ki1000304-ZnMort            INDIA                          Zinc              0        1     10
1       6 months    ki1000304-ZnMort            INDIA                          Zinc              1        0     10
9       24 months   ki1000304-ZnMort            INDIA                          Control           0        2      6
9       24 months   ki1000304-ZnMort            INDIA                          Control           1        2      6
9       24 months   ki1000304-ZnMort            INDIA                          Zinc              0        1      6
9       24 months   ki1000304-ZnMort            INDIA                          Zinc              1        1      6
2       6 months    ki1000304-ZnMort            INDIA                          Control           0        4      8
2       6 months    ki1000304-ZnMort            INDIA                          Control           1        2      8
2       6 months    ki1000304-ZnMort            INDIA                          Zinc              0        1      8
2       6 months    ki1000304-ZnMort            INDIA                          Zinc              1        1      8
10      24 months   ki1000304-ZnMort            INDIA                          Control           1        2      2
11      24 months   ki1000304-ZnMort            INDIA                          Control           0        1      5
11      24 months   ki1000304-ZnMort            INDIA                          Control           1        1      5
11      24 months   ki1000304-ZnMort            INDIA                          Zinc              0        2      5
11      24 months   ki1000304-ZnMort            INDIA                          Zinc              1        1      5
12      24 months   ki1000304-ZnMort            INDIA                          Control           0        1      7
12      24 months   ki1000304-ZnMort            INDIA                          Control           1        3      7
12      24 months   ki1000304-ZnMort            INDIA                          Zinc              0        2      7
12      24 months   ki1000304-ZnMort            INDIA                          Zinc              1        1      7
1       24 months   ki1000304-ZnMort            INDIA                          Zinc              0        1      3
1       24 months   ki1000304-ZnMort            INDIA                          Zinc              1        2      3
2       24 months   ki1000304-ZnMort            INDIA                          Control           0        2      6
2       24 months   ki1000304-ZnMort            INDIA                          Control           1        1      6
2       24 months   ki1000304-ZnMort            INDIA                          Zinc              0        1      6
2       24 months   ki1000304-ZnMort            INDIA                          Zinc              1        2      6
10      6 months    ki1000304b-SAS-CompFeed     INDIA                          Control           0       36     84
10      6 months    ki1000304b-SAS-CompFeed     INDIA                          Control           1        9     84
10      6 months    ki1000304b-SAS-CompFeed     INDIA                          Other             0       26     84
10      6 months    ki1000304b-SAS-CompFeed     INDIA                          Other             1       13     84
10      Birth       ki1000304b-SAS-CompFeed     INDIA                          Control           0       10     19
10      Birth       ki1000304b-SAS-CompFeed     INDIA                          Control           1        1     19
10      Birth       ki1000304b-SAS-CompFeed     INDIA                          Other             0        6     19
10      Birth       ki1000304b-SAS-CompFeed     INDIA                          Other             1        2     19
11      Birth       ki1000304b-SAS-CompFeed     INDIA                          Control           0        8     18
11      Birth       ki1000304b-SAS-CompFeed     INDIA                          Control           1        1     18
11      Birth       ki1000304b-SAS-CompFeed     INDIA                          Other             0        7     18
11      Birth       ki1000304b-SAS-CompFeed     INDIA                          Other             1        2     18
11      6 months    ki1000304b-SAS-CompFeed     INDIA                          Control           0       19     77
11      6 months    ki1000304b-SAS-CompFeed     INDIA                          Control           1        6     77
11      6 months    ki1000304b-SAS-CompFeed     INDIA                          Other             0       37     77
11      6 months    ki1000304b-SAS-CompFeed     INDIA                          Other             1       15     77
12      6 months    ki1000304b-SAS-CompFeed     INDIA                          Control           0       30     79
12      6 months    ki1000304b-SAS-CompFeed     INDIA                          Control           1       12     79
12      6 months    ki1000304b-SAS-CompFeed     INDIA                          Other             0       26     79
12      6 months    ki1000304b-SAS-CompFeed     INDIA                          Other             1       11     79
12      Birth       ki1000304b-SAS-CompFeed     INDIA                          Control           0        4     15
12      Birth       ki1000304b-SAS-CompFeed     INDIA                          Control           1        4     15
12      Birth       ki1000304b-SAS-CompFeed     INDIA                          Other             0        4     15
12      Birth       ki1000304b-SAS-CompFeed     INDIA                          Other             1        3     15
1       6 months    ki1000304b-SAS-CompFeed     INDIA                          Control           0       25     62
1       6 months    ki1000304b-SAS-CompFeed     INDIA                          Control           1        9     62
1       6 months    ki1000304b-SAS-CompFeed     INDIA                          Other             0       20     62
1       6 months    ki1000304b-SAS-CompFeed     INDIA                          Other             1        8     62
2       Birth       ki1000304b-SAS-CompFeed     INDIA                          Control           0        4     14
2       Birth       ki1000304b-SAS-CompFeed     INDIA                          Control           1        2     14
2       Birth       ki1000304b-SAS-CompFeed     INDIA                          Other             0        7     14
2       Birth       ki1000304b-SAS-CompFeed     INDIA                          Other             1        1     14
2       6 months    ki1000304b-SAS-CompFeed     INDIA                          Control           0       20     67
2       6 months    ki1000304b-SAS-CompFeed     INDIA                          Control           1       10     67
2       6 months    ki1000304b-SAS-CompFeed     INDIA                          Other             0       28     67
2       6 months    ki1000304b-SAS-CompFeed     INDIA                          Other             1        9     67
3       6 months    ki1000304b-SAS-CompFeed     INDIA                          Control           0       29     67
3       6 months    ki1000304b-SAS-CompFeed     INDIA                          Control           1        4     67
3       6 months    ki1000304b-SAS-CompFeed     INDIA                          Other             0       22     67
3       6 months    ki1000304b-SAS-CompFeed     INDIA                          Other             1       12     67
3       Birth       ki1000304b-SAS-CompFeed     INDIA                          Control           0        2     11
3       Birth       ki1000304b-SAS-CompFeed     INDIA                          Control           1        3     11
3       Birth       ki1000304b-SAS-CompFeed     INDIA                          Other             0        4     11
3       Birth       ki1000304b-SAS-CompFeed     INDIA                          Other             1        2     11
4       6 months    ki1000304b-SAS-CompFeed     INDIA                          Control           0       16     48
4       6 months    ki1000304b-SAS-CompFeed     INDIA                          Control           1        5     48
4       6 months    ki1000304b-SAS-CompFeed     INDIA                          Other             0       21     48
4       6 months    ki1000304b-SAS-CompFeed     INDIA                          Other             1        6     48
4       Birth       ki1000304b-SAS-CompFeed     INDIA                          Control           0        9     17
4       Birth       ki1000304b-SAS-CompFeed     INDIA                          Control           1        0     17
4       Birth       ki1000304b-SAS-CompFeed     INDIA                          Other             0        5     17
4       Birth       ki1000304b-SAS-CompFeed     INDIA                          Other             1        3     17
5       Birth       ki1000304b-SAS-CompFeed     INDIA                          Control           0        7     17
5       Birth       ki1000304b-SAS-CompFeed     INDIA                          Control           1        2     17
5       Birth       ki1000304b-SAS-CompFeed     INDIA                          Other             0        6     17
5       Birth       ki1000304b-SAS-CompFeed     INDIA                          Other             1        2     17
5       6 months    ki1000304b-SAS-CompFeed     INDIA                          Control           0       15     53
5       6 months    ki1000304b-SAS-CompFeed     INDIA                          Control           1       11     53
5       6 months    ki1000304b-SAS-CompFeed     INDIA                          Other             0       21     53
5       6 months    ki1000304b-SAS-CompFeed     INDIA                          Other             1        6     53
6       6 months    ki1000304b-SAS-CompFeed     INDIA                          Control           0       21     72
6       6 months    ki1000304b-SAS-CompFeed     INDIA                          Control           1       15     72
6       6 months    ki1000304b-SAS-CompFeed     INDIA                          Other             0       28     72
6       6 months    ki1000304b-SAS-CompFeed     INDIA                          Other             1        8     72
6       Birth       ki1000304b-SAS-CompFeed     INDIA                          Control           0        3     16
6       Birth       ki1000304b-SAS-CompFeed     INDIA                          Control           1        2     16
6       Birth       ki1000304b-SAS-CompFeed     INDIA                          Other             0        8     16
6       Birth       ki1000304b-SAS-CompFeed     INDIA                          Other             1        3     16
7       6 months    ki1000304b-SAS-CompFeed     INDIA                          Control           0        2      8
7       6 months    ki1000304b-SAS-CompFeed     INDIA                          Control           1        1      8
7       6 months    ki1000304b-SAS-CompFeed     INDIA                          Other             0        2      8
7       6 months    ki1000304b-SAS-CompFeed     INDIA                          Other             1        3      8
1       Birth       ki1000304b-SAS-CompFeed     INDIA                          Control           0        5     16
1       Birth       ki1000304b-SAS-CompFeed     INDIA                          Control           1        2     16
1       Birth       ki1000304b-SAS-CompFeed     INDIA                          Other             0        6     16
1       Birth       ki1000304b-SAS-CompFeed     INDIA                          Other             1        3     16
7       Birth       ki1000304b-SAS-CompFeed     INDIA                          Control           0        1      1
9       6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Control           0        2     12
9       6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Control           1        2     12
9       6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Other             0        5     12
9       6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Other             1        3     12
12      6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Control           0        9     55
12      6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Control           1        5     55
12      6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Other             0       28     55
12      6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Other             1       13     55
10      6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Control           0        2     26
10      6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Control           1        4     26
10      6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Other             0       12     26
10      6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Other             1        8     26
4       6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Control           0        3     25
4       6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Control           1        4     25
4       6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Other             0       10     25
4       6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Other             1        8     25
6       6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Control           0        3     29
6       6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Control           1        5     29
6       6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Other             0       14     29
6       6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Other             1        7     29
1       6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Control           0        7     56
1       6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Control           1        7     56
1       6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Other             0       20     56
1       6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Other             1       22     56
2       6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Control           0        4     33
2       6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Control           1        4     33
2       6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Other             0       15     33
2       6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Other             1       10     33
3       6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Control           0        3     32
3       6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Control           1        5     32
3       6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Other             0       14     32
3       6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Other             1       10     32
5       6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Control           0        1     26
5       6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Control           1        5     26
5       6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Other             0       12     26
5       6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Other             1        8     26
7       6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Control           0        2     17
7       6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Control           1        3     17
7       6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Other             0        5     17
7       6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Other             1        7     17
11      6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Control           0        7     44
11      6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Control           1        3     44
11      6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Other             0       26     44
11      6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Other             1        8     44
8       6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control           0       44    184
8       6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control           1        4    184
8       6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other             0       41    184
8       6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other             1        7    184
8       6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc              0       71    184
8       6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc              1       17    184
7       6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control           0       32    165
7       6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control           1        7    165
7       6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other             0       35    165
7       6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other             1        4    165
7       6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc              0       76    165
7       6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc              1       11    165
9       6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control           0       27    146
9       6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control           1        1    146
9       6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other             0       34    146
9       6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other             1        3    146
9       6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc              0       75    146
9       6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc              1        6    146
10      6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control           0       42    183
10      6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control           1        5    183
10      6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other             0       40    183
10      6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other             1        5    183
10      6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc              0       80    183
10      6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc              1       11    183
11      6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control           0       41    166
11      6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control           1        3    166
11      6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other             0       35    166
11      6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other             1        3    166
11      6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc              0       81    166
11      6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc              1        3    166
12      6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control           0       34    149
12      6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control           1        2    149
12      6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other             0       37    149
12      6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other             1        1    149
12      6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc              0       70    149
12      6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc              1        5    149
1       6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control           0       26    116
1       6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control           1        7    116
1       6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other             0       29    116
1       6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other             1        3    116
1       6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc              0       46    116
1       6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc              1        5    116
2       6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control           0       28    121
2       6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control           1        2    121
2       6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other             0       27    121
2       6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other             1        2    121
2       6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc              0       56    121
2       6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc              1        6    121
3       6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control           0       27    130
3       6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control           1        1    130
3       6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other             0       27    130
3       6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other             1        4    130
3       6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc              0       59    130
3       6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc              1       12    130
4       6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control           0       28    112
4       6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control           1        5    112
4       6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other             0       25    112
4       6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other             1        3    112
4       6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc              0       46    112
4       6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc              1        5    112
4       24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other             0        1      1
5       6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control           0       26    125
5       6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control           1        4    125
5       6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other             0       29    125
5       6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other             1        8    125
5       6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc              0       53    125
5       6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc              1        5    125
6       6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control           0       23    110
6       6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control           1        6    110
6       6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other             0       20    110
6       6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other             1        2    110
6       6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc              0       51    110
6       6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc              1        8    110
6       24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc              1        1      1
7       24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control           0        1      1
3       24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other             0        1      1
4       6 months    ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc              0       40     52
4       6 months    ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc              1       12     52
12      24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Control           0       15    228
12      24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Control           1        4    228
12      24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc              0      147    228
12      24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc              1       62    228
7       6 months    ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc              0       36     38
7       6 months    ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc              1        2     38
12      6 months    ki1112895-Burkina Faso Zn   BURKINA FASO                   Control           0       22     73
12      6 months    ki1112895-Burkina Faso Zn   BURKINA FASO                   Control           1        3     73
12      6 months    ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc              0       42     73
12      6 months    ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc              1        6     73
4       24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc              0       47     67
4       24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc              1       20     67
8       6 months    ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc              0       44     47
8       6 months    ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc              1        3     47
1       24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Control           0       17    287
1       24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Control           1       19    287
1       24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc              0      167    287
1       24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc              1       84    287
1       6 months    ki1112895-Burkina Faso Zn   BURKINA FASO                   Control           0       31    103
1       6 months    ki1112895-Burkina Faso Zn   BURKINA FASO                   Control           1        3    103
1       6 months    ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc              0       64    103
1       6 months    ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc              1        5    103
5       6 months    ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc              0       83     97
5       6 months    ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc              1       14     97
9       6 months    ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc              0       70     79
9       6 months    ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc              1        9     79
2       24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Control           0       45    369
2       24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Control           1       21    369
2       24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc              0      202    369
2       24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc              1      101    369
2       6 months    ki1112895-Burkina Faso Zn   BURKINA FASO                   Control           0       19     88
2       6 months    ki1112895-Burkina Faso Zn   BURKINA FASO                   Control           1        3     88
2       6 months    ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc              0       55     88
2       6 months    ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc              1       11     88
6       6 months    ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc              0       31     33
6       6 months    ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc              1        2     33
5       24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc              0       42     91
5       24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc              1       49     91
10      6 months    ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc              0       16     16
3       6 months    ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc              0        4      4
8       24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc              0       29     55
8       24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc              1       26     55
6       24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc              0       10     20
6       24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc              1       10     20
9       24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc              0       13     20
9       24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc              1        7     20
7       24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc              0        9     15
7       24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc              1        6     15
10      24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc              0        8     16
10      24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc              1        8     16
3       24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc              0        1      1
3       6 months    ki1112895-Guatemala BSC     GUATEMALA                      Control           0        4     13
3       6 months    ki1112895-Guatemala BSC     GUATEMALA                      Control           1        1     13
3       6 months    ki1112895-Guatemala BSC     GUATEMALA                      Other             0        5     13
3       6 months    ki1112895-Guatemala BSC     GUATEMALA                      Other             1        3     13
4       6 months    ki1112895-Guatemala BSC     GUATEMALA                      Control           0        5     20
4       6 months    ki1112895-Guatemala BSC     GUATEMALA                      Control           1        6     20
4       6 months    ki1112895-Guatemala BSC     GUATEMALA                      Other             0        7     20
4       6 months    ki1112895-Guatemala BSC     GUATEMALA                      Other             1        2     20
5       6 months    ki1112895-Guatemala BSC     GUATEMALA                      Control           0        9     21
5       6 months    ki1112895-Guatemala BSC     GUATEMALA                      Control           1        2     21
5       6 months    ki1112895-Guatemala BSC     GUATEMALA                      Other             0        7     21
5       6 months    ki1112895-Guatemala BSC     GUATEMALA                      Other             1        3     21
6       6 months    ki1112895-Guatemala BSC     GUATEMALA                      Control           0        8     28
6       6 months    ki1112895-Guatemala BSC     GUATEMALA                      Control           1        5     28
6       6 months    ki1112895-Guatemala BSC     GUATEMALA                      Other             0       11     28
6       6 months    ki1112895-Guatemala BSC     GUATEMALA                      Other             1        4     28
10      6 months    ki1112895-Guatemala BSC     GUATEMALA                      Control           0        6     22
10      6 months    ki1112895-Guatemala BSC     GUATEMALA                      Control           1        4     22
10      6 months    ki1112895-Guatemala BSC     GUATEMALA                      Other             0        8     22
10      6 months    ki1112895-Guatemala BSC     GUATEMALA                      Other             1        4     22
1       6 months    ki1112895-Guatemala BSC     GUATEMALA                      Control           0        5     12
1       6 months    ki1112895-Guatemala BSC     GUATEMALA                      Control           1        1     12
1       6 months    ki1112895-Guatemala BSC     GUATEMALA                      Other             0        5     12
1       6 months    ki1112895-Guatemala BSC     GUATEMALA                      Other             1        1     12
7       6 months    ki1112895-Guatemala BSC     GUATEMALA                      Control           0        4     21
7       6 months    ki1112895-Guatemala BSC     GUATEMALA                      Control           1        3     21
7       6 months    ki1112895-Guatemala BSC     GUATEMALA                      Other             0       11     21
7       6 months    ki1112895-Guatemala BSC     GUATEMALA                      Other             1        3     21
9       6 months    ki1112895-Guatemala BSC     GUATEMALA                      Control           0       11     28
9       6 months    ki1112895-Guatemala BSC     GUATEMALA                      Control           1        5     28
9       6 months    ki1112895-Guatemala BSC     GUATEMALA                      Other             0        7     28
9       6 months    ki1112895-Guatemala BSC     GUATEMALA                      Other             1        5     28
8       6 months    ki1112895-Guatemala BSC     GUATEMALA                      Control           0        6     14
8       6 months    ki1112895-Guatemala BSC     GUATEMALA                      Control           1        2     14
8       6 months    ki1112895-Guatemala BSC     GUATEMALA                      Other             0        5     14
8       6 months    ki1112895-Guatemala BSC     GUATEMALA                      Other             1        1     14
2       6 months    ki1112895-Guatemala BSC     GUATEMALA                      Control           0        6     13
2       6 months    ki1112895-Guatemala BSC     GUATEMALA                      Control           1        1     13
2       6 months    ki1112895-Guatemala BSC     GUATEMALA                      Other             0        4     13
2       6 months    ki1112895-Guatemala BSC     GUATEMALA                      Other             1        2     13
12      6 months    ki1112895-Guatemala BSC     GUATEMALA                      Control           0        0      7
12      6 months    ki1112895-Guatemala BSC     GUATEMALA                      Control           1        1      7
12      6 months    ki1112895-Guatemala BSC     GUATEMALA                      Other             0        4      7
12      6 months    ki1112895-Guatemala BSC     GUATEMALA                      Other             1        2      7
11      6 months    ki1112895-Guatemala BSC     GUATEMALA                      Control           0        9     19
11      6 months    ki1112895-Guatemala BSC     GUATEMALA                      Control           1        4     19
11      6 months    ki1112895-Guatemala BSC     GUATEMALA                      Other             0        5     19
11      6 months    ki1112895-Guatemala BSC     GUATEMALA                      Other             1        1     19
6       Birth       ki1119695-PROBIT            BELARUS                        Control           0      519   1007
6       Birth       ki1119695-PROBIT            BELARUS                        Control           1        2   1007
6       Birth       ki1119695-PROBIT            BELARUS                        Maternal          0      485   1007
6       Birth       ki1119695-PROBIT            BELARUS                        Maternal          1        1   1007
6       6 months    ki1119695-PROBIT            BELARUS                        Control           0      516   1056
6       6 months    ki1119695-PROBIT            BELARUS                        Control           1       40   1056
6       6 months    ki1119695-PROBIT            BELARUS                        Maternal          0      474   1056
6       6 months    ki1119695-PROBIT            BELARUS                        Maternal          1       26   1056
7       Birth       ki1119695-PROBIT            BELARUS                        Control           0      611   1280
7       Birth       ki1119695-PROBIT            BELARUS                        Control           1        1   1280
7       Birth       ki1119695-PROBIT            BELARUS                        Maternal          0      667   1280
7       Birth       ki1119695-PROBIT            BELARUS                        Maternal          1        1   1280
7       6 months    ki1119695-PROBIT            BELARUS                        Control           0      633   1364
7       6 months    ki1119695-PROBIT            BELARUS                        Control           1       41   1364
7       6 months    ki1119695-PROBIT            BELARUS                        Maternal          0      658   1364
7       6 months    ki1119695-PROBIT            BELARUS                        Maternal          1       32   1364
8       Birth       ki1119695-PROBIT            BELARUS                        Control           0      678   1326
8       Birth       ki1119695-PROBIT            BELARUS                        Control           1        1   1326
8       Birth       ki1119695-PROBIT            BELARUS                        Maternal          0      645   1326
8       Birth       ki1119695-PROBIT            BELARUS                        Maternal          1        2   1326
8       6 months    ki1119695-PROBIT            BELARUS                        Control           0      679   1417
8       6 months    ki1119695-PROBIT            BELARUS                        Control           1       51   1417
8       6 months    ki1119695-PROBIT            BELARUS                        Maternal          0      653   1417
8       6 months    ki1119695-PROBIT            BELARUS                        Maternal          1       34   1417
9       Birth       ki1119695-PROBIT            BELARUS                        Control           0      616   1313
9       Birth       ki1119695-PROBIT            BELARUS                        Control           1        3   1313
9       Birth       ki1119695-PROBIT            BELARUS                        Maternal          0      692   1313
9       Birth       ki1119695-PROBIT            BELARUS                        Maternal          1        2   1313
9       6 months    ki1119695-PROBIT            BELARUS                        Control           0      572   1330
9       6 months    ki1119695-PROBIT            BELARUS                        Control           1       48   1330
9       6 months    ki1119695-PROBIT            BELARUS                        Maternal          0      672   1330
9       6 months    ki1119695-PROBIT            BELARUS                        Maternal          1       38   1330
10      Birth       ki1119695-PROBIT            BELARUS                        Control           0      705   1509
10      Birth       ki1119695-PROBIT            BELARUS                        Control           1        5   1509
10      Birth       ki1119695-PROBIT            BELARUS                        Maternal          0      798   1509
10      Birth       ki1119695-PROBIT            BELARUS                        Maternal          1        1   1509
10      6 months    ki1119695-PROBIT            BELARUS                        Control           0      650   1525
10      6 months    ki1119695-PROBIT            BELARUS                        Control           1       52   1525
10      6 months    ki1119695-PROBIT            BELARUS                        Maternal          0      768   1525
10      6 months    ki1119695-PROBIT            BELARUS                        Maternal          1       55   1525
11      Birth       ki1119695-PROBIT            BELARUS                        Control           0      617   1397
11      Birth       ki1119695-PROBIT            BELARUS                        Control           1        3   1397
11      Birth       ki1119695-PROBIT            BELARUS                        Maternal          0      777   1397
11      Birth       ki1119695-PROBIT            BELARUS                        Maternal          1        0   1397
11      6 months    ki1119695-PROBIT            BELARUS                        Control           0      561   1405
11      6 months    ki1119695-PROBIT            BELARUS                        Control           1       56   1405
11      6 months    ki1119695-PROBIT            BELARUS                        Maternal          0      744   1405
11      6 months    ki1119695-PROBIT            BELARUS                        Maternal          1       44   1405
11      24 months   ki1119695-PROBIT            BELARUS                        Control           0       31     89
11      24 months   ki1119695-PROBIT            BELARUS                        Control           1        4     89
11      24 months   ki1119695-PROBIT            BELARUS                        Maternal          0       46     89
11      24 months   ki1119695-PROBIT            BELARUS                        Maternal          1        8     89
12      Birth       ki1119695-PROBIT            BELARUS                        Control           0      717   1523
12      Birth       ki1119695-PROBIT            BELARUS                        Control           1        0   1523
12      Birth       ki1119695-PROBIT            BELARUS                        Maternal          0      804   1523
12      Birth       ki1119695-PROBIT            BELARUS                        Maternal          1        2   1523
12      6 months    ki1119695-PROBIT            BELARUS                        Control           0      703   1580
12      6 months    ki1119695-PROBIT            BELARUS                        Control           1       50   1580
12      6 months    ki1119695-PROBIT            BELARUS                        Maternal          0      788   1580
12      6 months    ki1119695-PROBIT            BELARUS                        Maternal          1       39   1580
1       Birth       ki1119695-PROBIT            BELARUS                        Control           0      433    858
1       Birth       ki1119695-PROBIT            BELARUS                        Maternal          0      425    858
1       6 months    ki1119695-PROBIT            BELARUS                        Control           0      394    870
1       6 months    ki1119695-PROBIT            BELARUS                        Control           1       41    870
1       6 months    ki1119695-PROBIT            BELARUS                        Maternal          0      398    870
1       6 months    ki1119695-PROBIT            BELARUS                        Maternal          1       37    870
2       Birth       ki1119695-PROBIT            BELARUS                        Control           0      412    791
2       Birth       ki1119695-PROBIT            BELARUS                        Control           1        1    791
2       Birth       ki1119695-PROBIT            BELARUS                        Maternal          0      376    791
2       Birth       ki1119695-PROBIT            BELARUS                        Maternal          1        2    791
2       6 months    ki1119695-PROBIT            BELARUS                        Control           0      403    838
2       6 months    ki1119695-PROBIT            BELARUS                        Control           1       39    838
2       6 months    ki1119695-PROBIT            BELARUS                        Maternal          0      366    838
2       6 months    ki1119695-PROBIT            BELARUS                        Maternal          1       30    838
3       6 months    ki1119695-PROBIT            BELARUS                        Control           0      501   1030
3       6 months    ki1119695-PROBIT            BELARUS                        Control           1       38   1030
3       6 months    ki1119695-PROBIT            BELARUS                        Maternal          0      469   1030
3       6 months    ki1119695-PROBIT            BELARUS                        Maternal          1       22   1030
3       Birth       ki1119695-PROBIT            BELARUS                        Control           0      501    968
3       Birth       ki1119695-PROBIT            BELARUS                        Control           1        4    968
3       Birth       ki1119695-PROBIT            BELARUS                        Maternal          0      463    968
3       Birth       ki1119695-PROBIT            BELARUS                        Maternal          1        0    968
3       24 months   ki1119695-PROBIT            BELARUS                        Control           0       24     48
3       24 months   ki1119695-PROBIT            BELARUS                        Control           1        2     48
3       24 months   ki1119695-PROBIT            BELARUS                        Maternal          0       22     48
3       24 months   ki1119695-PROBIT            BELARUS                        Maternal          1        0     48
4       Birth       ki1119695-PROBIT            BELARUS                        Control           0      466    956
4       Birth       ki1119695-PROBIT            BELARUS                        Control           1        1    956
4       Birth       ki1119695-PROBIT            BELARUS                        Maternal          0      489    956
4       Birth       ki1119695-PROBIT            BELARUS                        Maternal          1        0    956
4       6 months    ki1119695-PROBIT            BELARUS                        Control           0      463   1012
4       6 months    ki1119695-PROBIT            BELARUS                        Control           1       31   1012
4       6 months    ki1119695-PROBIT            BELARUS                        Maternal          0      487   1012
4       6 months    ki1119695-PROBIT            BELARUS                        Maternal          1       31   1012
5       6 months    ki1119695-PROBIT            BELARUS                        Control           0      521   1073
5       6 months    ki1119695-PROBIT            BELARUS                        Control           1       29   1073
5       6 months    ki1119695-PROBIT            BELARUS                        Maternal          0      503   1073
5       6 months    ki1119695-PROBIT            BELARUS                        Maternal          1       20   1073
5       Birth       ki1119695-PROBIT            BELARUS                        Control           0      483    956
5       Birth       ki1119695-PROBIT            BELARUS                        Control           1        0    956
5       Birth       ki1119695-PROBIT            BELARUS                        Maternal          0      472    956
5       Birth       ki1119695-PROBIT            BELARUS                        Maternal          1        1    956
7       24 months   ki1119695-PROBIT            BELARUS                        Control           0       26     80
7       24 months   ki1119695-PROBIT            BELARUS                        Control           1        3     80
7       24 months   ki1119695-PROBIT            BELARUS                        Maternal          0       49     80
7       24 months   ki1119695-PROBIT            BELARUS                        Maternal          1        2     80
10      24 months   ki1119695-PROBIT            BELARUS                        Control           0       40     99
10      24 months   ki1119695-PROBIT            BELARUS                        Control           1        8     99
10      24 months   ki1119695-PROBIT            BELARUS                        Maternal          0       42     99
10      24 months   ki1119695-PROBIT            BELARUS                        Maternal          1        9     99
4       24 months   ki1119695-PROBIT            BELARUS                        Control           0       24     50
4       24 months   ki1119695-PROBIT            BELARUS                        Control           1        0     50
4       24 months   ki1119695-PROBIT            BELARUS                        Maternal          0       24     50
4       24 months   ki1119695-PROBIT            BELARUS                        Maternal          1        2     50
5       24 months   ki1119695-PROBIT            BELARUS                        Control           0       23     59
5       24 months   ki1119695-PROBIT            BELARUS                        Control           1        2     59
5       24 months   ki1119695-PROBIT            BELARUS                        Maternal          0       31     59
5       24 months   ki1119695-PROBIT            BELARUS                        Maternal          1        3     59
6       24 months   ki1119695-PROBIT            BELARUS                        Control           0       21     50
6       24 months   ki1119695-PROBIT            BELARUS                        Control           1        4     50
6       24 months   ki1119695-PROBIT            BELARUS                        Maternal          0       23     50
6       24 months   ki1119695-PROBIT            BELARUS                        Maternal          1        2     50
8       24 months   ki1119695-PROBIT            BELARUS                        Control           0       33     83
8       24 months   ki1119695-PROBIT            BELARUS                        Control           1        6     83
8       24 months   ki1119695-PROBIT            BELARUS                        Maternal          0       42     83
8       24 months   ki1119695-PROBIT            BELARUS                        Maternal          1        2     83
9       24 months   ki1119695-PROBIT            BELARUS                        Control           0       38     84
9       24 months   ki1119695-PROBIT            BELARUS                        Control           1        3     84
9       24 months   ki1119695-PROBIT            BELARUS                        Maternal          0       38     84
9       24 months   ki1119695-PROBIT            BELARUS                        Maternal          1        5     84
12      24 months   ki1119695-PROBIT            BELARUS                        Control           0       35    110
12      24 months   ki1119695-PROBIT            BELARUS                        Control           1       11    110
12      24 months   ki1119695-PROBIT            BELARUS                        Maternal          0       52    110
12      24 months   ki1119695-PROBIT            BELARUS                        Maternal          1       12    110
2       24 months   ki1119695-PROBIT            BELARUS                        Control           0       14     37
2       24 months   ki1119695-PROBIT            BELARUS                        Control           1        2     37
2       24 months   ki1119695-PROBIT            BELARUS                        Maternal          0       19     37
2       24 months   ki1119695-PROBIT            BELARUS                        Maternal          1        2     37
1       24 months   ki1119695-PROBIT            BELARUS                        Control           0       18     52
1       24 months   ki1119695-PROBIT            BELARUS                        Control           1        2     52
1       24 months   ki1119695-PROBIT            BELARUS                        Maternal          0       26     52
1       24 months   ki1119695-PROBIT            BELARUS                        Maternal          1        6     52
11      Birth       ki1126311-ZVITAMBO          ZIMBABWE                       Control           0      258   1134
11      Birth       ki1126311-ZVITAMBO          ZIMBABWE                       Control           1       24   1134
11      Birth       ki1126311-ZVITAMBO          ZIMBABWE                       VitA              0      781   1134
11      Birth       ki1126311-ZVITAMBO          ZIMBABWE                       VitA              1       71   1134
11      6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control           0      147    671
11      6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control           1       23    671
11      6 months    ki1126311-ZVITAMBO          ZIMBABWE                       VitA              0      412    671
11      6 months    ki1126311-ZVITAMBO          ZIMBABWE                       VitA              1       89    671
1       6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control           0      165    734
1       6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control           1       38    734
1       6 months    ki1126311-ZVITAMBO          ZIMBABWE                       VitA              0      445    734
1       6 months    ki1126311-ZVITAMBO          ZIMBABWE                       VitA              1       86    734
12      Birth       ki1126311-ZVITAMBO          ZIMBABWE                       Control           0      283   1255
12      Birth       ki1126311-ZVITAMBO          ZIMBABWE                       Control           1       27   1255
12      Birth       ki1126311-ZVITAMBO          ZIMBABWE                       VitA              0      848   1255
12      Birth       ki1126311-ZVITAMBO          ZIMBABWE                       VitA              1       97   1255
12      6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control           0      175    787
12      6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control           1       29    787
12      6 months    ki1126311-ZVITAMBO          ZIMBABWE                       VitA              0      502    787
12      6 months    ki1126311-ZVITAMBO          ZIMBABWE                       VitA              1       81    787
1       Birth       ki1126311-ZVITAMBO          ZIMBABWE                       Control           0      287   1344
1       Birth       ki1126311-ZVITAMBO          ZIMBABWE                       Control           1       55   1344
1       Birth       ki1126311-ZVITAMBO          ZIMBABWE                       VitA              0      884   1344
1       Birth       ki1126311-ZVITAMBO          ZIMBABWE                       VitA              1      118   1344
1       24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control           0        0      7
1       24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control           1        2      7
1       24 months   ki1126311-ZVITAMBO          ZIMBABWE                       VitA              0        1      7
1       24 months   ki1126311-ZVITAMBO          ZIMBABWE                       VitA              1        4      7
2       Birth       ki1126311-ZVITAMBO          ZIMBABWE                       Control           0      222   1036
2       Birth       ki1126311-ZVITAMBO          ZIMBABWE                       Control           1       33   1036
2       Birth       ki1126311-ZVITAMBO          ZIMBABWE                       VitA              0      660   1036
2       Birth       ki1126311-ZVITAMBO          ZIMBABWE                       VitA              1      121   1036
2       6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control           0       90    516
2       6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control           1       23    516
2       6 months    ki1126311-ZVITAMBO          ZIMBABWE                       VitA              0      341    516
2       6 months    ki1126311-ZVITAMBO          ZIMBABWE                       VitA              1       62    516
3       Birth       ki1126311-ZVITAMBO          ZIMBABWE                       Control           0      245   1140
3       Birth       ki1126311-ZVITAMBO          ZIMBABWE                       Control           1       32   1140
3       Birth       ki1126311-ZVITAMBO          ZIMBABWE                       VitA              0      759   1140
3       Birth       ki1126311-ZVITAMBO          ZIMBABWE                       VitA              1      104   1140
3       6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control           0      138    698
3       6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control           1       38    698
3       6 months    ki1126311-ZVITAMBO          ZIMBABWE                       VitA              0      410    698
3       6 months    ki1126311-ZVITAMBO          ZIMBABWE                       VitA              1      112    698
2       24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control           0        0      7
2       24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control           1        1      7
2       24 months   ki1126311-ZVITAMBO          ZIMBABWE                       VitA              0        2      7
2       24 months   ki1126311-ZVITAMBO          ZIMBABWE                       VitA              1        4      7
4       Birth       ki1126311-ZVITAMBO          ZIMBABWE                       Control           0      231   1007
4       Birth       ki1126311-ZVITAMBO          ZIMBABWE                       Control           1       26   1007
4       Birth       ki1126311-ZVITAMBO          ZIMBABWE                       VitA              0      665   1007
4       Birth       ki1126311-ZVITAMBO          ZIMBABWE                       VitA              1       85   1007
4       6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control           0      125    618
4       6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control           1       29    618
4       6 months    ki1126311-ZVITAMBO          ZIMBABWE                       VitA              0      382    618
4       6 months    ki1126311-ZVITAMBO          ZIMBABWE                       VitA              1       82    618
11      24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control           0        1      6
11      24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control           1        2      6
11      24 months   ki1126311-ZVITAMBO          ZIMBABWE                       VitA              0        1      6
11      24 months   ki1126311-ZVITAMBO          ZIMBABWE                       VitA              1        2      6
12      24 months   ki1126311-ZVITAMBO          ZIMBABWE                       VitA              0        1      2
12      24 months   ki1126311-ZVITAMBO          ZIMBABWE                       VitA              1        1      2
3       24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control           0        1      3
3       24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control           1        0      3
3       24 months   ki1126311-ZVITAMBO          ZIMBABWE                       VitA              0        0      3
3       24 months   ki1126311-ZVITAMBO          ZIMBABWE                       VitA              1        2      3
6       Birth       ki1126311-ZVITAMBO          ZIMBABWE                       Control           0      247   1132
6       Birth       ki1126311-ZVITAMBO          ZIMBABWE                       Control           1       34   1132
6       Birth       ki1126311-ZVITAMBO          ZIMBABWE                       VitA              0      756   1132
6       Birth       ki1126311-ZVITAMBO          ZIMBABWE                       VitA              1       95   1132
6       6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control           0      112    597
6       6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control           1       23    597
6       6 months    ki1126311-ZVITAMBO          ZIMBABWE                       VitA              0      387    597
6       6 months    ki1126311-ZVITAMBO          ZIMBABWE                       VitA              1       75    597
6       24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control           0        3      4
6       24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control           1        0      4
6       24 months   ki1126311-ZVITAMBO          ZIMBABWE                       VitA              0        0      4
6       24 months   ki1126311-ZVITAMBO          ZIMBABWE                       VitA              1        1      4
7       Birth       ki1126311-ZVITAMBO          ZIMBABWE                       Control           0      272   1176
7       Birth       ki1126311-ZVITAMBO          ZIMBABWE                       Control           1       31   1176
7       Birth       ki1126311-ZVITAMBO          ZIMBABWE                       VitA              0      783   1176
7       Birth       ki1126311-ZVITAMBO          ZIMBABWE                       VitA              1       90   1176
7       6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control           0      129    619
7       6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control           1       29    619
7       6 months    ki1126311-ZVITAMBO          ZIMBABWE                       VitA              0      374    619
7       6 months    ki1126311-ZVITAMBO          ZIMBABWE                       VitA              1       87    619
7       24 months   ki1126311-ZVITAMBO          ZIMBABWE                       VitA              0        1      2
7       24 months   ki1126311-ZVITAMBO          ZIMBABWE                       VitA              1        1      2
8       Birth       ki1126311-ZVITAMBO          ZIMBABWE                       Control           0      284   1226
8       Birth       ki1126311-ZVITAMBO          ZIMBABWE                       Control           1       27   1226
8       Birth       ki1126311-ZVITAMBO          ZIMBABWE                       VitA              0      851   1226
8       Birth       ki1126311-ZVITAMBO          ZIMBABWE                       VitA              1       64   1226
8       6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control           0      146    700
8       6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control           1       18    700
8       6 months    ki1126311-ZVITAMBO          ZIMBABWE                       VitA              0      460    700
8       6 months    ki1126311-ZVITAMBO          ZIMBABWE                       VitA              1       76    700
8       24 months   ki1126311-ZVITAMBO          ZIMBABWE                       VitA              1        1      1
9       Birth       ki1126311-ZVITAMBO          ZIMBABWE                       Control           0      300   1313
9       Birth       ki1126311-ZVITAMBO          ZIMBABWE                       Control           1       22   1313
9       Birth       ki1126311-ZVITAMBO          ZIMBABWE                       VitA              0      930   1313
9       Birth       ki1126311-ZVITAMBO          ZIMBABWE                       VitA              1       61   1313
9       6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control           0      156    698
9       6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control           1       16    698
9       6 months    ki1126311-ZVITAMBO          ZIMBABWE                       VitA              0      448    698
9       6 months    ki1126311-ZVITAMBO          ZIMBABWE                       VitA              1       78    698
10      Birth       ki1126311-ZVITAMBO          ZIMBABWE                       Control           0      238   1042
10      Birth       ki1126311-ZVITAMBO          ZIMBABWE                       Control           1       19   1042
10      Birth       ki1126311-ZVITAMBO          ZIMBABWE                       VitA              0      719   1042
10      Birth       ki1126311-ZVITAMBO          ZIMBABWE                       VitA              1       66   1042
10      6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control           0      106    554
10      6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control           1       21    554
10      6 months    ki1126311-ZVITAMBO          ZIMBABWE                       VitA              0      356    554
10      6 months    ki1126311-ZVITAMBO          ZIMBABWE                       VitA              1       71    554
5       Birth       ki1126311-ZVITAMBO          ZIMBABWE                       Control           0      216   1000
5       Birth       ki1126311-ZVITAMBO          ZIMBABWE                       Control           1       30   1000
5       Birth       ki1126311-ZVITAMBO          ZIMBABWE                       VitA              0      655   1000
5       Birth       ki1126311-ZVITAMBO          ZIMBABWE                       VitA              1       99   1000
5       6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control           0      110    568
5       6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control           1       26    568
5       6 months    ki1126311-ZVITAMBO          ZIMBABWE                       VitA              0      358    568
5       6 months    ki1126311-ZVITAMBO          ZIMBABWE                       VitA              1       74    568
10      24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control           0        1      1
4       24 months   ki1126311-ZVITAMBO          ZIMBABWE                       VitA              1        1      1
5       24 months   ki1126311-ZVITAMBO          ZIMBABWE                       VitA              0        2      3
5       24 months   ki1126311-ZVITAMBO          ZIMBABWE                       VitA              1        1      3
12      6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control           0       16    146
12      6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control           1        8    146
12      6 months    ki1148112-iLiNS-DOSE        MALAWI                         LNS               0       83    146
12      6 months    ki1148112-iLiNS-DOSE        MALAWI                         LNS               1       39    146
1       6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control           0       23    181
1       6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control           1        8    181
1       6 months    ki1148112-iLiNS-DOSE        MALAWI                         LNS               0      101    181
1       6 months    ki1148112-iLiNS-DOSE        MALAWI                         LNS               1       49    181
1       24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control           0        8     67
1       24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control           1        5     67
1       24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS               0       27     67
1       24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS               1       27     67
8       6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control           0       17    130
8       6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control           1        6    130
8       6 months    ki1148112-iLiNS-DOSE        MALAWI                         LNS               0       72    130
8       6 months    ki1148112-iLiNS-DOSE        MALAWI                         LNS               1       35    130
8       24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control           0        5     52
8       24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control           1        3     52
8       24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS               0       18     52
8       24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS               1       26     52
9       6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control           0       16    134
9       6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control           1        7    134
9       6 months    ki1148112-iLiNS-DOSE        MALAWI                         LNS               0       73    134
9       6 months    ki1148112-iLiNS-DOSE        MALAWI                         LNS               1       38    134
9       24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control           0        4     50
9       24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control           1        4     50
9       24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS               0       20     50
9       24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS               1       22     50
3       6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control           0       29    227
3       6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control           1        9    227
3       6 months    ki1148112-iLiNS-DOSE        MALAWI                         LNS               0      143    227
3       6 months    ki1148112-iLiNS-DOSE        MALAWI                         LNS               1       46    227
12      24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control           0        3     57
12      24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control           1        7     57
12      24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS               0       25     57
12      24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS               1       22     57
5       6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control           0       30    228
5       6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control           1        8    228
5       6 months    ki1148112-iLiNS-DOSE        MALAWI                         LNS               0      138    228
5       6 months    ki1148112-iLiNS-DOSE        MALAWI                         LNS               1       52    228
5       24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control           0       11    102
5       24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control           1        6    102
5       24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS               0       39    102
5       24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS               1       46    102
10      6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control           0        6     93
10      6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control           1        8     93
10      6 months    ki1148112-iLiNS-DOSE        MALAWI                         LNS               0       53     93
10      6 months    ki1148112-iLiNS-DOSE        MALAWI                         LNS               1       26     93
10      24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control           0        2     29
10      24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control           1        2     29
10      24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS               0       14     29
10      24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS               1       11     29
11      6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control           0       10    104
11      6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control           1        9    104
11      6 months    ki1148112-iLiNS-DOSE        MALAWI                         LNS               0       60    104
11      6 months    ki1148112-iLiNS-DOSE        MALAWI                         LNS               1       25    104
11      24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control           0        3     42
11      24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control           1        4     42
11      24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS               0       19     42
11      24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS               1       16     42
2       6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control           0       22    205
2       6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control           1       12    205
2       6 months    ki1148112-iLiNS-DOSE        MALAWI                         LNS               0      126    205
2       6 months    ki1148112-iLiNS-DOSE        MALAWI                         LNS               1       45    205
2       24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control           0        7    102
2       24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control           1        9    102
2       24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS               0       49    102
2       24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS               1       37    102
3       24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control           0        8     91
3       24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control           1        8     91
3       24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS               0       41     91
3       24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS               1       34     91
4       6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control           0       20    211
4       6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control           1       13    211
4       6 months    ki1148112-iLiNS-DOSE        MALAWI                         LNS               0      120    211
4       6 months    ki1148112-iLiNS-DOSE        MALAWI                         LNS               1       58    211
4       24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control           0        4     86
4       24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control           1        8     86
4       24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS               0       32     86
4       24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS               1       42     86
6       6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control           0       12    124
6       6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control           1        9    124
6       6 months    ki1148112-iLiNS-DOSE        MALAWI                         LNS               0       74    124
6       6 months    ki1148112-iLiNS-DOSE        MALAWI                         LNS               1       29    124
6       24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control           0        3     42
6       24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control           1        6     42
6       24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS               0       14     42
6       24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS               1       19     42
7       6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control           0       14    147
7       6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control           1        8    147
7       6 months    ki1148112-iLiNS-DOSE        MALAWI                         LNS               0       89    147
7       6 months    ki1148112-iLiNS-DOSE        MALAWI                         LNS               1       36    147
7       24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control           0        5     56
7       24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control           1        4     56
7       24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS               0       24     56
7       24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS               1       23     56
9       6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Control           0       26     94
9       6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Control           1       14     94
9       6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Maternal          0       45     94
9       6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Maternal          1        9     94
8       6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Control           0       19     90
8       6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Control           1       10     90
8       6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Maternal          0       45     90
8       6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Maternal          1       16     90
7       6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Control           0       12     65
7       6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Control           1        4     65
7       6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Maternal          0       39     65
7       6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Maternal          1       10     65
7       Birth       ki1148112-iLiNS-DYAD-M      MALAWI                         Maternal          1        1      1
11      6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Control           0       30    112
11      6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Control           1        7    112
11      6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Maternal          0       59    112
11      6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Maternal          1       16    112
10      6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Control           0       25    100
10      6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Control           1        3    100
10      6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Maternal          0       61    100
10      6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Maternal          1       11    100
10      24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Maternal          0        4      4
11      24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Maternal          0        3      5
11      24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Maternal          1        2      5
9       24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control           0        1      6
9       24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control           1        0      6
9       24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Maternal          0        4      6
9       24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Maternal          1        1      6
12      6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Control           0       35    134
12      6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Control           1       12    134
12      6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Maternal          0       67    134
12      6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Maternal          1       20    134
12      24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control           0        1      7
12      24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control           1        0      7
12      24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Maternal          0        3      7
12      24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Maternal          1        3      7
1       6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Control           0       27     88
1       6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Control           1        3     88
1       6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Maternal          0       42     88
1       6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Maternal          1       16     88
1       24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Maternal          0        2      3
1       24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Maternal          1        1      3
2       6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Control           0       27     71
2       6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Control           1        7     71
2       6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Maternal          0       30     71
2       6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Maternal          1        7     71
2       24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control           0        1      8
2       24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control           1        1      8
2       24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Maternal          0        2      8
2       24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Maternal          1        4      8
3       6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Control           0       16     81
3       6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Control           1        3     81
3       6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Maternal          0       46     81
3       6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Maternal          1       16     81
3       24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Maternal          0        2      5
3       24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Maternal          1        3      5
4       6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Control           0       17     58
4       6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Control           1        5     58
4       6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Maternal          0       28     58
4       6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Maternal          1        8     58
5       6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Control           0       17     66
5       6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Control           1        7     66
5       6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Maternal          0       30     66
5       6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Maternal          1       12     66
4       24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control           0        1      8
4       24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control           1        1      8
4       24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Maternal          0        5      8
4       24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Maternal          1        1      8
6       6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Control           0       18     70
6       6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Control           1        7     70
6       6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Maternal          0       35     70
6       6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Maternal          1       10     70
6       24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Maternal          0        1      4
6       24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Maternal          1        3      4
5       24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control           0        1      6
5       24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control           1        3      6
5       24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Maternal          0        1      6
5       24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Maternal          1        1      6
7       24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control           0        0      5
7       24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control           1        1      5
7       24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Maternal          0        4      5
7       24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Maternal          1        0      5
8       24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control           0        0      4
8       24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control           1        1      4
8       24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Maternal          0        2      4
8       24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Maternal          1        1      4
2       6 months    ki1148112-LCNI-5            MALAWI                         Control           0       15    114
2       6 months    ki1148112-LCNI-5            MALAWI                         Control           1       12    114
2       6 months    ki1148112-LCNI-5            MALAWI                         LNS               0       40    114
2       6 months    ki1148112-LCNI-5            MALAWI                         LNS               1       18    114
2       6 months    ki1148112-LCNI-5            MALAWI                         Other             0       20    114
2       6 months    ki1148112-LCNI-5            MALAWI                         Other             1        9    114
2       24 months   ki1148112-LCNI-5            MALAWI                         Control           0       10     54
2       24 months   ki1148112-LCNI-5            MALAWI                         Control           1        3     54
2       24 months   ki1148112-LCNI-5            MALAWI                         LNS               0       16     54
2       24 months   ki1148112-LCNI-5            MALAWI                         LNS               1        8     54
2       24 months   ki1148112-LCNI-5            MALAWI                         Other             0       11     54
2       24 months   ki1148112-LCNI-5            MALAWI                         Other             1        6     54
3       6 months    ki1148112-LCNI-5            MALAWI                         Control           0       17     98
3       6 months    ki1148112-LCNI-5            MALAWI                         Control           1       10     98
3       6 months    ki1148112-LCNI-5            MALAWI                         LNS               0       36     98
3       6 months    ki1148112-LCNI-5            MALAWI                         LNS               1       13     98
3       6 months    ki1148112-LCNI-5            MALAWI                         Other             0       10     98
3       6 months    ki1148112-LCNI-5            MALAWI                         Other             1       12     98
3       24 months   ki1148112-LCNI-5            MALAWI                         Control           0        8     31
3       24 months   ki1148112-LCNI-5            MALAWI                         Control           1        4     31
3       24 months   ki1148112-LCNI-5            MALAWI                         LNS               0        7     31
3       24 months   ki1148112-LCNI-5            MALAWI                         LNS               1        7     31
3       24 months   ki1148112-LCNI-5            MALAWI                         Other             0        4     31
3       24 months   ki1148112-LCNI-5            MALAWI                         Other             1        1     31
1       6 months    ki1148112-LCNI-5            MALAWI                         Control           0       10     56
1       6 months    ki1148112-LCNI-5            MALAWI                         Control           1        2     56
1       6 months    ki1148112-LCNI-5            MALAWI                         LNS               0       18     56
1       6 months    ki1148112-LCNI-5            MALAWI                         LNS               1       11     56
1       6 months    ki1148112-LCNI-5            MALAWI                         Other             0       13     56
1       6 months    ki1148112-LCNI-5            MALAWI                         Other             1        2     56
4       6 months    ki1148112-LCNI-5            MALAWI                         Control           0       21    111
4       6 months    ki1148112-LCNI-5            MALAWI                         Control           1        8    111
4       6 months    ki1148112-LCNI-5            MALAWI                         LNS               0       27    111
4       6 months    ki1148112-LCNI-5            MALAWI                         LNS               1       29    111
4       6 months    ki1148112-LCNI-5            MALAWI                         Other             0       13    111
4       6 months    ki1148112-LCNI-5            MALAWI                         Other             1       13    111
4       24 months   ki1148112-LCNI-5            MALAWI                         Control           0        9     46
4       24 months   ki1148112-LCNI-5            MALAWI                         Control           1        5     46
4       24 months   ki1148112-LCNI-5            MALAWI                         LNS               0       12     46
4       24 months   ki1148112-LCNI-5            MALAWI                         LNS               1        9     46
4       24 months   ki1148112-LCNI-5            MALAWI                         Other             0        7     46
4       24 months   ki1148112-LCNI-5            MALAWI                         Other             1        4     46
1       24 months   ki1148112-LCNI-5            MALAWI                         Control           0        5     26
1       24 months   ki1148112-LCNI-5            MALAWI                         Control           1        2     26
1       24 months   ki1148112-LCNI-5            MALAWI                         LNS               0        5     26
1       24 months   ki1148112-LCNI-5            MALAWI                         LNS               1        8     26
1       24 months   ki1148112-LCNI-5            MALAWI                         Other             0        4     26
1       24 months   ki1148112-LCNI-5            MALAWI                         Other             1        2     26
5       6 months    ki1148112-LCNI-5            MALAWI                         Control           0       16    109
5       6 months    ki1148112-LCNI-5            MALAWI                         Control           1        8    109
5       6 months    ki1148112-LCNI-5            MALAWI                         LNS               0       37    109
5       6 months    ki1148112-LCNI-5            MALAWI                         LNS               1       20    109
5       6 months    ki1148112-LCNI-5            MALAWI                         Other             0       18    109
5       6 months    ki1148112-LCNI-5            MALAWI                         Other             1       10    109
5       24 months   ki1148112-LCNI-5            MALAWI                         Control           0        9     49
5       24 months   ki1148112-LCNI-5            MALAWI                         Control           1        8     49
5       24 months   ki1148112-LCNI-5            MALAWI                         LNS               0       11     49
5       24 months   ki1148112-LCNI-5            MALAWI                         LNS               1        9     49
5       24 months   ki1148112-LCNI-5            MALAWI                         Other             0        9     49
5       24 months   ki1148112-LCNI-5            MALAWI                         Other             1        3     49
6       6 months    ki1148112-LCNI-5            MALAWI                         Control           0       14     91
6       6 months    ki1148112-LCNI-5            MALAWI                         Control           1       10     91
6       6 months    ki1148112-LCNI-5            MALAWI                         LNS               0       32     91
6       6 months    ki1148112-LCNI-5            MALAWI                         LNS               1       11     91
6       6 months    ki1148112-LCNI-5            MALAWI                         Other             0       15     91
6       6 months    ki1148112-LCNI-5            MALAWI                         Other             1        9     91
6       24 months   ki1148112-LCNI-5            MALAWI                         Control           0        3     42
6       24 months   ki1148112-LCNI-5            MALAWI                         Control           1        9     42
6       24 months   ki1148112-LCNI-5            MALAWI                         LNS               0       16     42
6       24 months   ki1148112-LCNI-5            MALAWI                         LNS               1        4     42
6       24 months   ki1148112-LCNI-5            MALAWI                         Other             0        5     42
6       24 months   ki1148112-LCNI-5            MALAWI                         Other             1        5     42
7       6 months    ki1148112-LCNI-5            MALAWI                         Control           0       14     72
7       6 months    ki1148112-LCNI-5            MALAWI                         Control           1        5     72
7       6 months    ki1148112-LCNI-5            MALAWI                         LNS               0       15     72
7       6 months    ki1148112-LCNI-5            MALAWI                         LNS               1       19     72
7       6 months    ki1148112-LCNI-5            MALAWI                         Other             0       11     72
7       6 months    ki1148112-LCNI-5            MALAWI                         Other             1        8     72
7       24 months   ki1148112-LCNI-5            MALAWI                         Control           0        9     27
7       24 months   ki1148112-LCNI-5            MALAWI                         Control           1        0     27
7       24 months   ki1148112-LCNI-5            MALAWI                         LNS               0        6     27
7       24 months   ki1148112-LCNI-5            MALAWI                         LNS               1        4     27
7       24 months   ki1148112-LCNI-5            MALAWI                         Other             0        6     27
7       24 months   ki1148112-LCNI-5            MALAWI                         Other             1        2     27
8       6 months    ki1148112-LCNI-5            MALAWI                         Control           0        7     43
8       6 months    ki1148112-LCNI-5            MALAWI                         Control           1        2     43
8       6 months    ki1148112-LCNI-5            MALAWI                         LNS               0       15     43
8       6 months    ki1148112-LCNI-5            MALAWI                         LNS               1        8     43
8       6 months    ki1148112-LCNI-5            MALAWI                         Other             0        7     43
8       6 months    ki1148112-LCNI-5            MALAWI                         Other             1        4     43
8       24 months   ki1148112-LCNI-5            MALAWI                         Control           0        2     22
8       24 months   ki1148112-LCNI-5            MALAWI                         Control           1        1     22
8       24 months   ki1148112-LCNI-5            MALAWI                         LNS               0       11     22
8       24 months   ki1148112-LCNI-5            MALAWI                         LNS               1        3     22
8       24 months   ki1148112-LCNI-5            MALAWI                         Other             0        4     22
8       24 months   ki1148112-LCNI-5            MALAWI                         Other             1        1     22
9       6 months    ki1148112-LCNI-5            MALAWI                         Control           0        5     27
9       6 months    ki1148112-LCNI-5            MALAWI                         Control           1        2     27
9       6 months    ki1148112-LCNI-5            MALAWI                         LNS               0       11     27
9       6 months    ki1148112-LCNI-5            MALAWI                         LNS               1        3     27
9       6 months    ki1148112-LCNI-5            MALAWI                         Other             0        2     27
9       6 months    ki1148112-LCNI-5            MALAWI                         Other             1        4     27
9       24 months   ki1148112-LCNI-5            MALAWI                         Control           0        1     15
9       24 months   ki1148112-LCNI-5            MALAWI                         Control           1        1     15
9       24 months   ki1148112-LCNI-5            MALAWI                         LNS               0        7     15
9       24 months   ki1148112-LCNI-5            MALAWI                         LNS               1        2     15
9       24 months   ki1148112-LCNI-5            MALAWI                         Other             0        1     15
9       24 months   ki1148112-LCNI-5            MALAWI                         Other             1        3     15
10      6 months    ki1148112-LCNI-5            MALAWI                         Control           0        5     35
10      6 months    ki1148112-LCNI-5            MALAWI                         Control           1        4     35
10      6 months    ki1148112-LCNI-5            MALAWI                         LNS               0       12     35
10      6 months    ki1148112-LCNI-5            MALAWI                         LNS               1        7     35
10      6 months    ki1148112-LCNI-5            MALAWI                         Other             0        4     35
10      6 months    ki1148112-LCNI-5            MALAWI                         Other             1        3     35
10      24 months   ki1148112-LCNI-5            MALAWI                         Control           0        4     20
10      24 months   ki1148112-LCNI-5            MALAWI                         Control           1        1     20
10      24 months   ki1148112-LCNI-5            MALAWI                         LNS               0        8     20
10      24 months   ki1148112-LCNI-5            MALAWI                         LNS               1        3     20
10      24 months   ki1148112-LCNI-5            MALAWI                         Other             0        3     20
10      24 months   ki1148112-LCNI-5            MALAWI                         Other             1        1     20
11      6 months    ki1148112-LCNI-5            MALAWI                         Control           0        6     49
11      6 months    ki1148112-LCNI-5            MALAWI                         Control           1        6     49
11      6 months    ki1148112-LCNI-5            MALAWI                         LNS               0       17     49
11      6 months    ki1148112-LCNI-5            MALAWI                         LNS               1        7     49
11      6 months    ki1148112-LCNI-5            MALAWI                         Other             0        9     49
11      6 months    ki1148112-LCNI-5            MALAWI                         Other             1        4     49
11      24 months   ki1148112-LCNI-5            MALAWI                         Control           0        4     32
11      24 months   ki1148112-LCNI-5            MALAWI                         Control           1        5     32
11      24 months   ki1148112-LCNI-5            MALAWI                         LNS               0        8     32
11      24 months   ki1148112-LCNI-5            MALAWI                         LNS               1        6     32
11      24 months   ki1148112-LCNI-5            MALAWI                         Other             0        8     32
11      24 months   ki1148112-LCNI-5            MALAWI                         Other             1        1     32
12      6 months    ki1148112-LCNI-5            MALAWI                         Control           0        7     34
12      6 months    ki1148112-LCNI-5            MALAWI                         Control           1        3     34
12      6 months    ki1148112-LCNI-5            MALAWI                         LNS               0        8     34
12      6 months    ki1148112-LCNI-5            MALAWI                         LNS               1        8     34
12      6 months    ki1148112-LCNI-5            MALAWI                         Other             0        3     34
12      6 months    ki1148112-LCNI-5            MALAWI                         Other             1        5     34
12      24 months   ki1148112-LCNI-5            MALAWI                         Control           0        5     21
12      24 months   ki1148112-LCNI-5            MALAWI                         Control           1        3     21
12      24 months   ki1148112-LCNI-5            MALAWI                         LNS               0        2     21
12      24 months   ki1148112-LCNI-5            MALAWI                         LNS               1        7     21
12      24 months   ki1148112-LCNI-5            MALAWI                         Other             0        1     21
12      24 months   ki1148112-LCNI-5            MALAWI                         Other             1        3     21
12      Birth       kiGH5241-JiVitA-3           BANGLADESH                     Control           0      668   2230
12      Birth       kiGH5241-JiVitA-3           BANGLADESH                     Control           1      413   2230
12      Birth       kiGH5241-JiVitA-3           BANGLADESH                     Maternal          0      737   2230
12      Birth       kiGH5241-JiVitA-3           BANGLADESH                     Maternal          1      412   2230
12      6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control           0      593   1669
12      6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control           1      216   1669
12      6 months    kiGH5241-JiVitA-3           BANGLADESH                     Maternal          0      634   1669
12      6 months    kiGH5241-JiVitA-3           BANGLADESH                     Maternal          1      226   1669
11      Birth       kiGH5241-JiVitA-3           BANGLADESH                     Control           0      660   2170
11      Birth       kiGH5241-JiVitA-3           BANGLADESH                     Control           1      429   2170
11      Birth       kiGH5241-JiVitA-3           BANGLADESH                     Maternal          0      714   2170
11      Birth       kiGH5241-JiVitA-3           BANGLADESH                     Maternal          1      367   2170
11      6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control           0      582   1702
11      6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control           1      257   1702
11      6 months    kiGH5241-JiVitA-3           BANGLADESH                     Maternal          0      631   1702
11      6 months    kiGH5241-JiVitA-3           BANGLADESH                     Maternal          1      232   1702
1       Birth       kiGH5241-JiVitA-3           BANGLADESH                     Control           0      589   1887
1       Birth       kiGH5241-JiVitA-3           BANGLADESH                     Control           1      343   1887
1       Birth       kiGH5241-JiVitA-3           BANGLADESH                     Maternal          0      615   1887
1       Birth       kiGH5241-JiVitA-3           BANGLADESH                     Maternal          1      340   1887
1       6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control           0      483   1346
1       6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control           1      188   1346
1       6 months    kiGH5241-JiVitA-3           BANGLADESH                     Maternal          0      509   1346
1       6 months    kiGH5241-JiVitA-3           BANGLADESH                     Maternal          1      166   1346
4       Birth       kiGH5241-JiVitA-3           BANGLADESH                     Control           0      471   1364
4       Birth       kiGH5241-JiVitA-3           BANGLADESH                     Control           1      191   1364
4       Birth       kiGH5241-JiVitA-3           BANGLADESH                     Maternal          0      518   1364
4       Birth       kiGH5241-JiVitA-3           BANGLADESH                     Maternal          1      184   1364
10      Birth       kiGH5241-JiVitA-3           BANGLADESH                     Control           0      686   2123
10      Birth       kiGH5241-JiVitA-3           BANGLADESH                     Control           1      382   2123
10      Birth       kiGH5241-JiVitA-3           BANGLADESH                     Maternal          0      715   2123
10      Birth       kiGH5241-JiVitA-3           BANGLADESH                     Maternal          1      340   2123
10      6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control           0      564   1660
10      6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control           1      226   1660
10      6 months    kiGH5241-JiVitA-3           BANGLADESH                     Maternal          0      654   1660
10      6 months    kiGH5241-JiVitA-3           BANGLADESH                     Maternal          1      216   1660
9       Birth       kiGH5241-JiVitA-3           BANGLADESH                     Control           0      668   1867
9       Birth       kiGH5241-JiVitA-3           BANGLADESH                     Control           1      302   1867
9       Birth       kiGH5241-JiVitA-3           BANGLADESH                     Maternal          0      649   1867
9       Birth       kiGH5241-JiVitA-3           BANGLADESH                     Maternal          1      248   1867
4       6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control           0      450   1191
4       6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control           1      151   1191
4       6 months    kiGH5241-JiVitA-3           BANGLADESH                     Maternal          0      466   1191
4       6 months    kiGH5241-JiVitA-3           BANGLADESH                     Maternal          1      124   1191
6       Birth       kiGH5241-JiVitA-3           BANGLADESH                     Control           0      344    993
6       Birth       kiGH5241-JiVitA-3           BANGLADESH                     Control           1      159    993
6       Birth       kiGH5241-JiVitA-3           BANGLADESH                     Maternal          0      373    993
6       Birth       kiGH5241-JiVitA-3           BANGLADESH                     Maternal          1      117    993
6       6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control           0      431   1168
6       6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control           1      155   1168
6       6 months    kiGH5241-JiVitA-3           BANGLADESH                     Maternal          0      455   1168
6       6 months    kiGH5241-JiVitA-3           BANGLADESH                     Maternal          1      127   1168
7       Birth       kiGH5241-JiVitA-3           BANGLADESH                     Control           0      375   1086
7       Birth       kiGH5241-JiVitA-3           BANGLADESH                     Control           1      153   1086
7       Birth       kiGH5241-JiVitA-3           BANGLADESH                     Maternal          0      391   1086
7       Birth       kiGH5241-JiVitA-3           BANGLADESH                     Maternal          1      167   1086
7       6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control           0      456   1242
7       6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control           1      150   1242
7       6 months    kiGH5241-JiVitA-3           BANGLADESH                     Maternal          0      471   1242
7       6 months    kiGH5241-JiVitA-3           BANGLADESH                     Maternal          1      165   1242
5       Birth       kiGH5241-JiVitA-3           BANGLADESH                     Control           0      353    961
5       Birth       kiGH5241-JiVitA-3           BANGLADESH                     Control           1      147    961
5       Birth       kiGH5241-JiVitA-3           BANGLADESH                     Maternal          0      321    961
5       Birth       kiGH5241-JiVitA-3           BANGLADESH                     Maternal          1      140    961
5       6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control           0      436   1146
5       6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control           1      149   1146
5       6 months    kiGH5241-JiVitA-3           BANGLADESH                     Maternal          0      429   1146
5       6 months    kiGH5241-JiVitA-3           BANGLADESH                     Maternal          1      132   1146
9       6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control           0      601   1564
9       6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control           1      181   1564
9       6 months    kiGH5241-JiVitA-3           BANGLADESH                     Maternal          0      597   1564
9       6 months    kiGH5241-JiVitA-3           BANGLADESH                     Maternal          1      185   1564
8       Birth       kiGH5241-JiVitA-3           BANGLADESH                     Control           0      522   1495
8       Birth       kiGH5241-JiVitA-3           BANGLADESH                     Control           1      257   1495
8       Birth       kiGH5241-JiVitA-3           BANGLADESH                     Maternal          0      505   1495
8       Birth       kiGH5241-JiVitA-3           BANGLADESH                     Maternal          1      211   1495
8       6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control           0      567   1472
8       6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control           1      175   1472
8       6 months    kiGH5241-JiVitA-3           BANGLADESH                     Maternal          0      558   1472
8       6 months    kiGH5241-JiVitA-3           BANGLADESH                     Maternal          1      172   1472
3       Birth       kiGH5241-JiVitA-3           BANGLADESH                     Control           0      610   1873
3       Birth       kiGH5241-JiVitA-3           BANGLADESH                     Control           1      295   1873
3       Birth       kiGH5241-JiVitA-3           BANGLADESH                     Maternal          0      712   1873
3       Birth       kiGH5241-JiVitA-3           BANGLADESH                     Maternal          1      256   1873
2       Birth       kiGH5241-JiVitA-3           BANGLADESH                     Control           0      474   1564
2       Birth       kiGH5241-JiVitA-3           BANGLADESH                     Control           1      255   1564
2       Birth       kiGH5241-JiVitA-3           BANGLADESH                     Maternal          0      605   1564
2       Birth       kiGH5241-JiVitA-3           BANGLADESH                     Maternal          1      230   1564
2       6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control           0      415   1185
2       6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control           1      149   1185
2       6 months    kiGH5241-JiVitA-3           BANGLADESH                     Maternal          0      475   1185
2       6 months    kiGH5241-JiVitA-3           BANGLADESH                     Maternal          1      146   1185
3       6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control           0      545   1419
3       6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control           1      178   1419
3       6 months    kiGH5241-JiVitA-3           BANGLADESH                     Maternal          0      548   1419
3       6 months    kiGH5241-JiVitA-3           BANGLADESH                     Maternal          1      148   1419
7       24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control           0        4      9
7       24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control           1        1      9
7       24 months   kiGH5241-JiVitA-3           BANGLADESH                     Maternal          0        2      9
7       24 months   kiGH5241-JiVitA-3           BANGLADESH                     Maternal          1        2      9
4       24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control           0        1      7
4       24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control           1        0      7
4       24 months   kiGH5241-JiVitA-3           BANGLADESH                     Maternal          0        4      7
4       24 months   kiGH5241-JiVitA-3           BANGLADESH                     Maternal          1        2      7
12      24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control           0        4     17
12      24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control           1        3     17
12      24 months   kiGH5241-JiVitA-3           BANGLADESH                     Maternal          0        3     17
12      24 months   kiGH5241-JiVitA-3           BANGLADESH                     Maternal          1        7     17
6       24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control           0        0      9
6       24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control           1        4      9
6       24 months   kiGH5241-JiVitA-3           BANGLADESH                     Maternal          0        3      9
6       24 months   kiGH5241-JiVitA-3           BANGLADESH                     Maternal          1        2      9
11      24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control           0        3      9
11      24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control           1        3      9
11      24 months   kiGH5241-JiVitA-3           BANGLADESH                     Maternal          0        2      9
11      24 months   kiGH5241-JiVitA-3           BANGLADESH                     Maternal          1        1      9
10      24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control           0        3     13
10      24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control           1        4     13
10      24 months   kiGH5241-JiVitA-3           BANGLADESH                     Maternal          0        2     13
10      24 months   kiGH5241-JiVitA-3           BANGLADESH                     Maternal          1        4     13
2       24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control           0        1      3
2       24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control           1        1      3
2       24 months   kiGH5241-JiVitA-3           BANGLADESH                     Maternal          0        1      3
2       24 months   kiGH5241-JiVitA-3           BANGLADESH                     Maternal          1        0      3
5       24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control           0        3     10
5       24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control           1        2     10
5       24 months   kiGH5241-JiVitA-3           BANGLADESH                     Maternal          0        3     10
5       24 months   kiGH5241-JiVitA-3           BANGLADESH                     Maternal          1        2     10
8       24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control           0        1      9
8       24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control           1        1      9
8       24 months   kiGH5241-JiVitA-3           BANGLADESH                     Maternal          0        3      9
8       24 months   kiGH5241-JiVitA-3           BANGLADESH                     Maternal          1        4      9
3       24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control           0        1      4
3       24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control           1        1      4
3       24 months   kiGH5241-JiVitA-3           BANGLADESH                     Maternal          0        0      4
3       24 months   kiGH5241-JiVitA-3           BANGLADESH                     Maternal          1        2      4
1       24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control           0        2      6
1       24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control           1        1      6
1       24 months   kiGH5241-JiVitA-3           BANGLADESH                     Maternal          0        0      6
1       24 months   kiGH5241-JiVitA-3           BANGLADESH                     Maternal          1        3      6
9       24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control           0        1      2
9       24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control           1        0      2
9       24 months   kiGH5241-JiVitA-3           BANGLADESH                     Maternal          0        0      2
9       24 months   kiGH5241-JiVitA-3           BANGLADESH                     Maternal          1        1      2
12      6 months    kiGH5241-JiVitA-4           BANGLADESH                     Control           0       16     76
12      6 months    kiGH5241-JiVitA-4           BANGLADESH                     Control           1        5     76
12      6 months    kiGH5241-JiVitA-4           BANGLADESH                     LNS               0       13     76
12      6 months    kiGH5241-JiVitA-4           BANGLADESH                     LNS               1        7     76
12      6 months    kiGH5241-JiVitA-4           BANGLADESH                     Other             0       27     76
12      6 months    kiGH5241-JiVitA-4           BANGLADESH                     Other             1        8     76
4       6 months    kiGH5241-JiVitA-4           BANGLADESH                     Control           0      177    850
4       6 months    kiGH5241-JiVitA-4           BANGLADESH                     Control           1       57    850
4       6 months    kiGH5241-JiVitA-4           BANGLADESH                     LNS               0      159    850
4       6 months    kiGH5241-JiVitA-4           BANGLADESH                     LNS               1       51    850
4       6 months    kiGH5241-JiVitA-4           BANGLADESH                     Other             0      284    850
4       6 months    kiGH5241-JiVitA-4           BANGLADESH                     Other             1      122    850
2       Birth       kiGH5241-JiVitA-4           BANGLADESH                     Control           0       25    130
2       Birth       kiGH5241-JiVitA-4           BANGLADESH                     Control           1        8    130
2       Birth       kiGH5241-JiVitA-4           BANGLADESH                     LNS               0       26    130
2       Birth       kiGH5241-JiVitA-4           BANGLADESH                     LNS               1       11    130
2       Birth       kiGH5241-JiVitA-4           BANGLADESH                     Other             0       41    130
2       Birth       kiGH5241-JiVitA-4           BANGLADESH                     Other             1       19    130
2       6 months    kiGH5241-JiVitA-4           BANGLADESH                     Control           0       31    164
2       6 months    kiGH5241-JiVitA-4           BANGLADESH                     Control           1        8    164
2       6 months    kiGH5241-JiVitA-4           BANGLADESH                     LNS               0       36    164
2       6 months    kiGH5241-JiVitA-4           BANGLADESH                     LNS               1        7    164
2       6 months    kiGH5241-JiVitA-4           BANGLADESH                     Other             0       66    164
2       6 months    kiGH5241-JiVitA-4           BANGLADESH                     Other             1       16    164
6       6 months    kiGH5241-JiVitA-4           BANGLADESH                     Control           0       91    436
6       6 months    kiGH5241-JiVitA-4           BANGLADESH                     Control           1       23    436
6       6 months    kiGH5241-JiVitA-4           BANGLADESH                     LNS               0       93    436
6       6 months    kiGH5241-JiVitA-4           BANGLADESH                     LNS               1       36    436
6       6 months    kiGH5241-JiVitA-4           BANGLADESH                     Other             0      148    436
6       6 months    kiGH5241-JiVitA-4           BANGLADESH                     Other             1       45    436
5       6 months    kiGH5241-JiVitA-4           BANGLADESH                     Control           0      124    588
5       6 months    kiGH5241-JiVitA-4           BANGLADESH                     Control           1       40    588
5       6 months    kiGH5241-JiVitA-4           BANGLADESH                     LNS               0      118    588
5       6 months    kiGH5241-JiVitA-4           BANGLADESH                     LNS               1       31    588
5       6 months    kiGH5241-JiVitA-4           BANGLADESH                     Other             0      198    588
5       6 months    kiGH5241-JiVitA-4           BANGLADESH                     Other             1       77    588
11      6 months    kiGH5241-JiVitA-4           BANGLADESH                     Control           0       29    146
11      6 months    kiGH5241-JiVitA-4           BANGLADESH                     Control           1        5    146
11      6 months    kiGH5241-JiVitA-4           BANGLADESH                     LNS               0       31    146
11      6 months    kiGH5241-JiVitA-4           BANGLADESH                     LNS               1        9    146
11      6 months    kiGH5241-JiVitA-4           BANGLADESH                     Other             0       53    146
11      6 months    kiGH5241-JiVitA-4           BANGLADESH                     Other             1       19    146
3       6 months    kiGH5241-JiVitA-4           BANGLADESH                     Control           0       80    430
3       6 months    kiGH5241-JiVitA-4           BANGLADESH                     Control           1       28    430
3       6 months    kiGH5241-JiVitA-4           BANGLADESH                     LNS               0      110    430
3       6 months    kiGH5241-JiVitA-4           BANGLADESH                     LNS               1       29    430
3       6 months    kiGH5241-JiVitA-4           BANGLADESH                     Other             0      134    430
3       6 months    kiGH5241-JiVitA-4           BANGLADESH                     Other             1       49    430
7       6 months    kiGH5241-JiVitA-4           BANGLADESH                     Control           0      163    854
7       6 months    kiGH5241-JiVitA-4           BANGLADESH                     Control           1       55    854
7       6 months    kiGH5241-JiVitA-4           BANGLADESH                     LNS               0      170    854
7       6 months    kiGH5241-JiVitA-4           BANGLADESH                     LNS               1       77    854
7       6 months    kiGH5241-JiVitA-4           BANGLADESH                     Other             0      273    854
7       6 months    kiGH5241-JiVitA-4           BANGLADESH                     Other             1      116    854
4       Birth       kiGH5241-JiVitA-4           BANGLADESH                     Control           0       23    159
4       Birth       kiGH5241-JiVitA-4           BANGLADESH                     Control           1       12    159
4       Birth       kiGH5241-JiVitA-4           BANGLADESH                     LNS               0       28    159
4       Birth       kiGH5241-JiVitA-4           BANGLADESH                     LNS               1       11    159
4       Birth       kiGH5241-JiVitA-4           BANGLADESH                     Other             0       62    159
4       Birth       kiGH5241-JiVitA-4           BANGLADESH                     Other             1       23    159
4       24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control           0        9     71
4       24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control           1       13     71
4       24 months   kiGH5241-JiVitA-4           BANGLADESH                     LNS               0        7     71
4       24 months   kiGH5241-JiVitA-4           BANGLADESH                     LNS               1        6     71
4       24 months   kiGH5241-JiVitA-4           BANGLADESH                     Other             0       16     71
4       24 months   kiGH5241-JiVitA-4           BANGLADESH                     Other             1       20     71
7       Birth       kiGH5241-JiVitA-4           BANGLADESH                     Control           0       20     69
7       Birth       kiGH5241-JiVitA-4           BANGLADESH                     Control           1        4     69
7       Birth       kiGH5241-JiVitA-4           BANGLADESH                     LNS               0       12     69
7       Birth       kiGH5241-JiVitA-4           BANGLADESH                     LNS               1        6     69
7       Birth       kiGH5241-JiVitA-4           BANGLADESH                     Other             0       21     69
7       Birth       kiGH5241-JiVitA-4           BANGLADESH                     Other             1        6     69
7       24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control           0       46    329
7       24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control           1       38    329
7       24 months   kiGH5241-JiVitA-4           BANGLADESH                     LNS               0       53    329
7       24 months   kiGH5241-JiVitA-4           BANGLADESH                     LNS               1       45    329
7       24 months   kiGH5241-JiVitA-4           BANGLADESH                     Other             0       83    329
7       24 months   kiGH5241-JiVitA-4           BANGLADESH                     Other             1       64    329
8       6 months    kiGH5241-JiVitA-4           BANGLADESH                     Control           0      107    535
8       6 months    kiGH5241-JiVitA-4           BANGLADESH                     Control           1       34    535
8       6 months    kiGH5241-JiVitA-4           BANGLADESH                     LNS               0      115    535
8       6 months    kiGH5241-JiVitA-4           BANGLADESH                     LNS               1       25    535
8       6 months    kiGH5241-JiVitA-4           BANGLADESH                     Other             0      202    535
8       6 months    kiGH5241-JiVitA-4           BANGLADESH                     Other             1       52    535
6       Birth       kiGH5241-JiVitA-4           BANGLADESH                     Control           0       18     94
6       Birth       kiGH5241-JiVitA-4           BANGLADESH                     Control           1       13     94
6       Birth       kiGH5241-JiVitA-4           BANGLADESH                     LNS               0       18     94
6       Birth       kiGH5241-JiVitA-4           BANGLADESH                     LNS               1       11     94
6       Birth       kiGH5241-JiVitA-4           BANGLADESH                     Other             0       24     94
6       Birth       kiGH5241-JiVitA-4           BANGLADESH                     Other             1       10     94
9       6 months    kiGH5241-JiVitA-4           BANGLADESH                     Control           0       68    402
9       6 months    kiGH5241-JiVitA-4           BANGLADESH                     Control           1       23    402
9       6 months    kiGH5241-JiVitA-4           BANGLADESH                     LNS               0       93    402
9       6 months    kiGH5241-JiVitA-4           BANGLADESH                     LNS               1       29    402
9       6 months    kiGH5241-JiVitA-4           BANGLADESH                     Other             0      142    402
9       6 months    kiGH5241-JiVitA-4           BANGLADESH                     Other             1       47    402
9       24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control           0       20    141
9       24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control           1       21    141
9       24 months   kiGH5241-JiVitA-4           BANGLADESH                     LNS               0       34    141
9       24 months   kiGH5241-JiVitA-4           BANGLADESH                     LNS               1        9    141
9       24 months   kiGH5241-JiVitA-4           BANGLADESH                     Other             0       40    141
9       24 months   kiGH5241-JiVitA-4           BANGLADESH                     Other             1       17    141
3       Birth       kiGH5241-JiVitA-4           BANGLADESH                     Control           0       32    174
3       Birth       kiGH5241-JiVitA-4           BANGLADESH                     Control           1       16    174
3       Birth       kiGH5241-JiVitA-4           BANGLADESH                     LNS               0       27    174
3       Birth       kiGH5241-JiVitA-4           BANGLADESH                     LNS               1       25    174
3       Birth       kiGH5241-JiVitA-4           BANGLADESH                     Other             0       52    174
3       Birth       kiGH5241-JiVitA-4           BANGLADESH                     Other             1       22    174
3       24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control           0        4     50
3       24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control           1        5     50
3       24 months   kiGH5241-JiVitA-4           BANGLADESH                     LNS               0        9     50
3       24 months   kiGH5241-JiVitA-4           BANGLADESH                     LNS               1       11     50
3       24 months   kiGH5241-JiVitA-4           BANGLADESH                     Other             0       13     50
3       24 months   kiGH5241-JiVitA-4           BANGLADESH                     Other             1        8     50
10      6 months    kiGH5241-JiVitA-4           BANGLADESH                     Control           0       50    267
10      6 months    kiGH5241-JiVitA-4           BANGLADESH                     Control           1       17    267
10      6 months    kiGH5241-JiVitA-4           BANGLADESH                     LNS               0       52    267
10      6 months    kiGH5241-JiVitA-4           BANGLADESH                     LNS               1       19    267
10      6 months    kiGH5241-JiVitA-4           BANGLADESH                     Other             0       90    267
10      6 months    kiGH5241-JiVitA-4           BANGLADESH                     Other             1       39    267
10      24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control           0        7     61
10      24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control           1        2     61
10      24 months   kiGH5241-JiVitA-4           BANGLADESH                     LNS               0       13     61
10      24 months   kiGH5241-JiVitA-4           BANGLADESH                     LNS               1        4     61
10      24 months   kiGH5241-JiVitA-4           BANGLADESH                     Other             0       20     61
10      24 months   kiGH5241-JiVitA-4           BANGLADESH                     Other             1       15     61
9       Birth       kiGH5241-JiVitA-4           BANGLADESH                     Control           0        3     31
9       Birth       kiGH5241-JiVitA-4           BANGLADESH                     Control           1        2     31
9       Birth       kiGH5241-JiVitA-4           BANGLADESH                     LNS               0        7     31
9       Birth       kiGH5241-JiVitA-4           BANGLADESH                     LNS               1        3     31
9       Birth       kiGH5241-JiVitA-4           BANGLADESH                     Other             0       10     31
9       Birth       kiGH5241-JiVitA-4           BANGLADESH                     Other             1        6     31
5       Birth       kiGH5241-JiVitA-4           BANGLADESH                     Control           0       26    123
5       Birth       kiGH5241-JiVitA-4           BANGLADESH                     Control           1       13    123
5       Birth       kiGH5241-JiVitA-4           BANGLADESH                     LNS               0       25    123
5       Birth       kiGH5241-JiVitA-4           BANGLADESH                     LNS               1        4    123
5       Birth       kiGH5241-JiVitA-4           BANGLADESH                     Other             0       42    123
5       Birth       kiGH5241-JiVitA-4           BANGLADESH                     Other             1       13    123
12      24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control           0        9     46
12      24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control           1        4     46
12      24 months   kiGH5241-JiVitA-4           BANGLADESH                     LNS               0       10     46
12      24 months   kiGH5241-JiVitA-4           BANGLADESH                     LNS               1        3     46
12      24 months   kiGH5241-JiVitA-4           BANGLADESH                     Other             0       17     46
12      24 months   kiGH5241-JiVitA-4           BANGLADESH                     Other             1        3     46
10      Birth       kiGH5241-JiVitA-4           BANGLADESH                     Control           0        3     10
10      Birth       kiGH5241-JiVitA-4           BANGLADESH                     Control           1        0     10
10      Birth       kiGH5241-JiVitA-4           BANGLADESH                     LNS               0        3     10
10      Birth       kiGH5241-JiVitA-4           BANGLADESH                     LNS               1        0     10
10      Birth       kiGH5241-JiVitA-4           BANGLADESH                     Other             0        2     10
10      Birth       kiGH5241-JiVitA-4           BANGLADESH                     Other             1        2     10
8       24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control           0       27    153
8       24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control           1       16    153
8       24 months   kiGH5241-JiVitA-4           BANGLADESH                     LNS               0       16    153
8       24 months   kiGH5241-JiVitA-4           BANGLADESH                     LNS               1       16    153
8       24 months   kiGH5241-JiVitA-4           BANGLADESH                     Other             0       52    153
8       24 months   kiGH5241-JiVitA-4           BANGLADESH                     Other             1       26    153
8       Birth       kiGH5241-JiVitA-4           BANGLADESH                     Control           0        5     32
8       Birth       kiGH5241-JiVitA-4           BANGLADESH                     Control           1        1     32
8       Birth       kiGH5241-JiVitA-4           BANGLADESH                     LNS               0        7     32
8       Birth       kiGH5241-JiVitA-4           BANGLADESH                     LNS               1        3     32
8       Birth       kiGH5241-JiVitA-4           BANGLADESH                     Other             0       13     32
8       Birth       kiGH5241-JiVitA-4           BANGLADESH                     Other             1        3     32
1       6 months    kiGH5241-JiVitA-4           BANGLADESH                     Control           0       15     50
1       6 months    kiGH5241-JiVitA-4           BANGLADESH                     Control           1        4     50
1       6 months    kiGH5241-JiVitA-4           BANGLADESH                     LNS               0       13     50
1       6 months    kiGH5241-JiVitA-4           BANGLADESH                     LNS               1        1     50
1       6 months    kiGH5241-JiVitA-4           BANGLADESH                     Other             0       11     50
1       6 months    kiGH5241-JiVitA-4           BANGLADESH                     Other             1        6     50
11      24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control           0       12     56
11      24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control           1        3     56
11      24 months   kiGH5241-JiVitA-4           BANGLADESH                     LNS               0       10     56
11      24 months   kiGH5241-JiVitA-4           BANGLADESH                     LNS               1        3     56
11      24 months   kiGH5241-JiVitA-4           BANGLADESH                     Other             0       12     56
11      24 months   kiGH5241-JiVitA-4           BANGLADESH                     Other             1       16     56
1       24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control           0       10     38
1       24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control           1        5     38
1       24 months   kiGH5241-JiVitA-4           BANGLADESH                     LNS               0        6     38
1       24 months   kiGH5241-JiVitA-4           BANGLADESH                     LNS               1        3     38
1       24 months   kiGH5241-JiVitA-4           BANGLADESH                     Other             0        9     38
1       24 months   kiGH5241-JiVitA-4           BANGLADESH                     Other             1        5     38
6       24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control           0        6     56
6       24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control           1        2     56
6       24 months   kiGH5241-JiVitA-4           BANGLADESH                     LNS               0       12     56
6       24 months   kiGH5241-JiVitA-4           BANGLADESH                     LNS               1        7     56
6       24 months   kiGH5241-JiVitA-4           BANGLADESH                     Other             0       15     56
6       24 months   kiGH5241-JiVitA-4           BANGLADESH                     Other             1       14     56
5       24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control           0        8     56
5       24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control           1        5     56
5       24 months   kiGH5241-JiVitA-4           BANGLADESH                     LNS               0       11     56
5       24 months   kiGH5241-JiVitA-4           BANGLADESH                     LNS               1        7     56
5       24 months   kiGH5241-JiVitA-4           BANGLADESH                     Other             0       13     56
5       24 months   kiGH5241-JiVitA-4           BANGLADESH                     Other             1       12     56
2       24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control           0        6     39
2       24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control           1        8     39
2       24 months   kiGH5241-JiVitA-4           BANGLADESH                     LNS               0        3     39
2       24 months   kiGH5241-JiVitA-4           BANGLADESH                     LNS               1        5     39
2       24 months   kiGH5241-JiVitA-4           BANGLADESH                     Other             0       11     39
2       24 months   kiGH5241-JiVitA-4           BANGLADESH                     Other             1        6     39
8       6 months    iLiNS_DYADM_LNS             MALAWI                         Control           0       19     61
8       6 months    iLiNS_DYADM_LNS             MALAWI                         Control           1       10     61
8       6 months    iLiNS_DYADM_LNS             MALAWI                         LNS               0       24     61
8       6 months    iLiNS_DYADM_LNS             MALAWI                         LNS               1        8     61
7       6 months    iLiNS_DYADM_LNS             MALAWI                         Control           0       12     41
7       6 months    iLiNS_DYADM_LNS             MALAWI                         Control           1        4     41
7       6 months    iLiNS_DYADM_LNS             MALAWI                         LNS               0       20     41
7       6 months    iLiNS_DYADM_LNS             MALAWI                         LNS               1        5     41
7       Birth       iLiNS_DYADM_LNS             MALAWI                         LNS               1        1      1
9       6 months    iLiNS_DYADM_LNS             MALAWI                         Control           0       26     66
9       6 months    iLiNS_DYADM_LNS             MALAWI                         Control           1       14     66
9       6 months    iLiNS_DYADM_LNS             MALAWI                         LNS               0       20     66
9       6 months    iLiNS_DYADM_LNS             MALAWI                         LNS               1        6     66
11      6 months    iLiNS_DYADM_LNS             MALAWI                         Control           0       30     70
11      6 months    iLiNS_DYADM_LNS             MALAWI                         Control           1        7     70
11      6 months    iLiNS_DYADM_LNS             MALAWI                         LNS               0       27     70
11      6 months    iLiNS_DYADM_LNS             MALAWI                         LNS               1        6     70
10      6 months    iLiNS_DYADM_LNS             MALAWI                         Control           0       25     63
10      6 months    iLiNS_DYADM_LNS             MALAWI                         Control           1        3     63
10      6 months    iLiNS_DYADM_LNS             MALAWI                         LNS               0       31     63
10      6 months    iLiNS_DYADM_LNS             MALAWI                         LNS               1        4     63
10      24 months   iLiNS_DYADM_LNS             MALAWI                         LNS               0        1      1
11      24 months   iLiNS_DYADM_LNS             MALAWI                         LNS               0        1      2
11      24 months   iLiNS_DYADM_LNS             MALAWI                         LNS               1        1      2
9       24 months   iLiNS_DYADM_LNS             MALAWI                         Control           0        1      2
9       24 months   iLiNS_DYADM_LNS             MALAWI                         LNS               0        1      2
12      6 months    iLiNS_DYADM_LNS             MALAWI                         Control           0       35     97
12      6 months    iLiNS_DYADM_LNS             MALAWI                         Control           1       12     97
12      6 months    iLiNS_DYADM_LNS             MALAWI                         LNS               0       38     97
12      6 months    iLiNS_DYADM_LNS             MALAWI                         LNS               1       12     97
12      24 months   iLiNS_DYADM_LNS             MALAWI                         Control           0        1      4
12      24 months   iLiNS_DYADM_LNS             MALAWI                         Control           1        0      4
12      24 months   iLiNS_DYADM_LNS             MALAWI                         LNS               0        2      4
12      24 months   iLiNS_DYADM_LNS             MALAWI                         LNS               1        1      4
1       6 months    iLiNS_DYADM_LNS             MALAWI                         Control           0       27     53
1       6 months    iLiNS_DYADM_LNS             MALAWI                         Control           1        3     53
1       6 months    iLiNS_DYADM_LNS             MALAWI                         LNS               0       18     53
1       6 months    iLiNS_DYADM_LNS             MALAWI                         LNS               1        5     53
2       6 months    iLiNS_DYADM_LNS             MALAWI                         Control           0       27     47
2       6 months    iLiNS_DYADM_LNS             MALAWI                         Control           1        7     47
2       6 months    iLiNS_DYADM_LNS             MALAWI                         LNS               0       11     47
2       6 months    iLiNS_DYADM_LNS             MALAWI                         LNS               1        2     47
2       24 months   iLiNS_DYADM_LNS             MALAWI                         Control           0        1      3
2       24 months   iLiNS_DYADM_LNS             MALAWI                         Control           1        1      3
2       24 months   iLiNS_DYADM_LNS             MALAWI                         LNS               0        0      3
2       24 months   iLiNS_DYADM_LNS             MALAWI                         LNS               1        1      3
1       24 months   iLiNS_DYADM_LNS             MALAWI                         LNS               0        1      1
3       6 months    iLiNS_DYADM_LNS             MALAWI                         Control           0       16     58
3       6 months    iLiNS_DYADM_LNS             MALAWI                         Control           1        3     58
3       6 months    iLiNS_DYADM_LNS             MALAWI                         LNS               0       29     58
3       6 months    iLiNS_DYADM_LNS             MALAWI                         LNS               1       10     58
3       24 months   iLiNS_DYADM_LNS             MALAWI                         LNS               0        2      4
3       24 months   iLiNS_DYADM_LNS             MALAWI                         LNS               1        2      4
4       6 months    iLiNS_DYADM_LNS             MALAWI                         Control           0       17     40
4       6 months    iLiNS_DYADM_LNS             MALAWI                         Control           1        5     40
4       6 months    iLiNS_DYADM_LNS             MALAWI                         LNS               0       12     40
4       6 months    iLiNS_DYADM_LNS             MALAWI                         LNS               1        6     40
5       6 months    iLiNS_DYADM_LNS             MALAWI                         Control           0       17     44
5       6 months    iLiNS_DYADM_LNS             MALAWI                         Control           1        7     44
5       6 months    iLiNS_DYADM_LNS             MALAWI                         LNS               0       14     44
5       6 months    iLiNS_DYADM_LNS             MALAWI                         LNS               1        6     44
4       24 months   iLiNS_DYADM_LNS             MALAWI                         Control           0        1      5
4       24 months   iLiNS_DYADM_LNS             MALAWI                         Control           1        1      5
4       24 months   iLiNS_DYADM_LNS             MALAWI                         LNS               0        2      5
4       24 months   iLiNS_DYADM_LNS             MALAWI                         LNS               1        1      5
6       6 months    iLiNS_DYADM_LNS             MALAWI                         Control           0       18     43
6       6 months    iLiNS_DYADM_LNS             MALAWI                         Control           1        7     43
6       6 months    iLiNS_DYADM_LNS             MALAWI                         LNS               0       15     43
6       6 months    iLiNS_DYADM_LNS             MALAWI                         LNS               1        3     43
5       24 months   iLiNS_DYADM_LNS             MALAWI                         Control           0        1      5
5       24 months   iLiNS_DYADM_LNS             MALAWI                         Control           1        3      5
5       24 months   iLiNS_DYADM_LNS             MALAWI                         LNS               0        1      5
5       24 months   iLiNS_DYADM_LNS             MALAWI                         LNS               1        0      5
6       24 months   iLiNS_DYADM_LNS             MALAWI                         LNS               0        1      3
6       24 months   iLiNS_DYADM_LNS             MALAWI                         LNS               1        2      3
8       24 months   iLiNS_DYADM_LNS             MALAWI                         Control           0        0      3
8       24 months   iLiNS_DYADM_LNS             MALAWI                         Control           1        1      3
8       24 months   iLiNS_DYADM_LNS             MALAWI                         LNS               0        2      3
8       24 months   iLiNS_DYADM_LNS             MALAWI                         LNS               1        0      3
7       24 months   iLiNS_DYADM_LNS             MALAWI                         Control           0        0      2
7       24 months   iLiNS_DYADM_LNS             MALAWI                         Control           1        1      2
7       24 months   iLiNS_DYADM_LNS             MALAWI                         LNS               0        1      2
7       24 months   iLiNS_DYADM_LNS             MALAWI                         LNS               1        0      2


The following strata were considered:

* month: 1, agecat: 24 months, studyid: iLiNS_DYADM_LNS, country: MALAWI
* month: 1, agecat: 24 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* month: 1, agecat: 24 months, studyid: ki1000111-WASH-Kenya, country: KENYA
* month: 1, agecat: 24 months, studyid: ki1000304-EU, country: INDIA
* month: 1, agecat: 24 months, studyid: ki1000304-Vitamin-B12, country: INDIA
* month: 1, agecat: 24 months, studyid: ki1000304-ZnMort, country: INDIA
* month: 1, agecat: 24 months, studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO
* month: 1, agecat: 24 months, studyid: ki1119695-PROBIT, country: BELARUS
* month: 1, agecat: 24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* month: 1, agecat: 24 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* month: 1, agecat: 24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* month: 1, agecat: 24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* month: 1, agecat: 24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* month: 1, agecat: 24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* month: 1, agecat: 6 months, studyid: iLiNS_DYADM_LNS, country: MALAWI
* month: 1, agecat: 6 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* month: 1, agecat: 6 months, studyid: ki1000111-WASH-Kenya, country: KENYA
* month: 1, agecat: 6 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* month: 1, agecat: 6 months, studyid: ki1000304-EU, country: INDIA
* month: 1, agecat: 6 months, studyid: ki1000304-VITAMIN-A, country: INDIA
* month: 1, agecat: 6 months, studyid: ki1000304-Vitamin-B12, country: INDIA
* month: 1, agecat: 6 months, studyid: ki1000304-ZnMort, country: INDIA
* month: 1, agecat: 6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* month: 1, agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* month: 1, agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* month: 1, agecat: 6 months, studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO
* month: 1, agecat: 6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* month: 1, agecat: 6 months, studyid: ki1119695-PROBIT, country: BELARUS
* month: 1, agecat: 6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* month: 1, agecat: 6 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* month: 1, agecat: 6 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* month: 1, agecat: 6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* month: 1, agecat: 6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* month: 1, agecat: 6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* month: 1, agecat: Birth, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* month: 1, agecat: Birth, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* month: 1, agecat: Birth, studyid: ki1119695-PROBIT, country: BELARUS
* month: 1, agecat: Birth, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* month: 1, agecat: Birth, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* month: 10, agecat: 24 months, studyid: iLiNS_DYADM_LNS, country: MALAWI
* month: 10, agecat: 24 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* month: 10, agecat: 24 months, studyid: ki1000111-WASH-Kenya, country: KENYA
* month: 10, agecat: 24 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* month: 10, agecat: 24 months, studyid: ki1000304-EU, country: INDIA
* month: 10, agecat: 24 months, studyid: ki1000304-Vitamin-B12, country: INDIA
* month: 10, agecat: 24 months, studyid: ki1000304-ZnMort, country: INDIA
* month: 10, agecat: 24 months, studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO
* month: 10, agecat: 24 months, studyid: ki1119695-PROBIT, country: BELARUS
* month: 10, agecat: 24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* month: 10, agecat: 24 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* month: 10, agecat: 24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* month: 10, agecat: 24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* month: 10, agecat: 24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* month: 10, agecat: 24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* month: 10, agecat: 6 months, studyid: iLiNS_DYADM_LNS, country: MALAWI
* month: 10, agecat: 6 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* month: 10, agecat: 6 months, studyid: ki1000111-WASH-Kenya, country: KENYA
* month: 10, agecat: 6 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* month: 10, agecat: 6 months, studyid: ki1000304-EU, country: INDIA
* month: 10, agecat: 6 months, studyid: ki1000304-VITAMIN-A, country: INDIA
* month: 10, agecat: 6 months, studyid: ki1000304-Vitamin-B12, country: INDIA
* month: 10, agecat: 6 months, studyid: ki1000304-ZnMort, country: INDIA
* month: 10, agecat: 6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* month: 10, agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* month: 10, agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* month: 10, agecat: 6 months, studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO
* month: 10, agecat: 6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* month: 10, agecat: 6 months, studyid: ki1119695-PROBIT, country: BELARUS
* month: 10, agecat: 6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* month: 10, agecat: 6 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* month: 10, agecat: 6 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* month: 10, agecat: 6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* month: 10, agecat: 6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* month: 10, agecat: 6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* month: 10, agecat: Birth, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* month: 10, agecat: Birth, studyid: ki1119695-PROBIT, country: BELARUS
* month: 10, agecat: Birth, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* month: 10, agecat: Birth, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* month: 10, agecat: Birth, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* month: 11, agecat: 24 months, studyid: iLiNS_DYADM_LNS, country: MALAWI
* month: 11, agecat: 24 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* month: 11, agecat: 24 months, studyid: ki1000111-WASH-Kenya, country: KENYA
* month: 11, agecat: 24 months, studyid: ki1000304-EU, country: INDIA
* month: 11, agecat: 24 months, studyid: ki1000304-Vitamin-B12, country: INDIA
* month: 11, agecat: 24 months, studyid: ki1000304-ZnMort, country: INDIA
* month: 11, agecat: 24 months, studyid: ki1119695-PROBIT, country: BELARUS
* month: 11, agecat: 24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* month: 11, agecat: 24 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* month: 11, agecat: 24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* month: 11, agecat: 24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* month: 11, agecat: 24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* month: 11, agecat: 24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* month: 11, agecat: 6 months, studyid: iLiNS_DYADM_LNS, country: MALAWI
* month: 11, agecat: 6 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* month: 11, agecat: 6 months, studyid: ki1000111-WASH-Kenya, country: KENYA
* month: 11, agecat: 6 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* month: 11, agecat: 6 months, studyid: ki1000304-EU, country: INDIA
* month: 11, agecat: 6 months, studyid: ki1000304-VITAMIN-A, country: INDIA
* month: 11, agecat: 6 months, studyid: ki1000304-Vitamin-B12, country: INDIA
* month: 11, agecat: 6 months, studyid: ki1000304-ZnMort, country: INDIA
* month: 11, agecat: 6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* month: 11, agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* month: 11, agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* month: 11, agecat: 6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* month: 11, agecat: 6 months, studyid: ki1119695-PROBIT, country: BELARUS
* month: 11, agecat: 6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* month: 11, agecat: 6 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* month: 11, agecat: 6 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* month: 11, agecat: 6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* month: 11, agecat: 6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* month: 11, agecat: 6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* month: 11, agecat: Birth, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* month: 11, agecat: Birth, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* month: 11, agecat: Birth, studyid: ki1119695-PROBIT, country: BELARUS
* month: 11, agecat: Birth, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* month: 11, agecat: Birth, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* month: 12, agecat: 24 months, studyid: iLiNS_DYADM_LNS, country: MALAWI
* month: 12, agecat: 24 months, studyid: ki1000107-Serrinha-VitA, country: BRAZIL
* month: 12, agecat: 24 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* month: 12, agecat: 24 months, studyid: ki1000111-WASH-Kenya, country: KENYA
* month: 12, agecat: 24 months, studyid: ki1000304-EU, country: INDIA
* month: 12, agecat: 24 months, studyid: ki1000304-Vitamin-B12, country: INDIA
* month: 12, agecat: 24 months, studyid: ki1000304-ZnMort, country: INDIA
* month: 12, agecat: 24 months, studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO
* month: 12, agecat: 24 months, studyid: ki1119695-PROBIT, country: BELARUS
* month: 12, agecat: 24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* month: 12, agecat: 24 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* month: 12, agecat: 24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* month: 12, agecat: 24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* month: 12, agecat: 24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* month: 12, agecat: 24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* month: 12, agecat: 6 months, studyid: iLiNS_DYADM_LNS, country: MALAWI
* month: 12, agecat: 6 months, studyid: ki1000107-Serrinha-VitA, country: BRAZIL
* month: 12, agecat: 6 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* month: 12, agecat: 6 months, studyid: ki1000111-WASH-Kenya, country: KENYA
* month: 12, agecat: 6 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* month: 12, agecat: 6 months, studyid: ki1000304-EU, country: INDIA
* month: 12, agecat: 6 months, studyid: ki1000304-VITAMIN-A, country: INDIA
* month: 12, agecat: 6 months, studyid: ki1000304-Vitamin-B12, country: INDIA
* month: 12, agecat: 6 months, studyid: ki1000304-ZnMort, country: INDIA
* month: 12, agecat: 6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* month: 12, agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* month: 12, agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* month: 12, agecat: 6 months, studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO
* month: 12, agecat: 6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* month: 12, agecat: 6 months, studyid: ki1119695-PROBIT, country: BELARUS
* month: 12, agecat: 6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* month: 12, agecat: 6 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* month: 12, agecat: 6 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* month: 12, agecat: 6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* month: 12, agecat: 6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* month: 12, agecat: 6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* month: 12, agecat: Birth, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* month: 12, agecat: Birth, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* month: 12, agecat: Birth, studyid: ki1119695-PROBIT, country: BELARUS
* month: 12, agecat: Birth, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* month: 12, agecat: Birth, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* month: 2, agecat: 24 months, studyid: iLiNS_DYADM_LNS, country: MALAWI
* month: 2, agecat: 24 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* month: 2, agecat: 24 months, studyid: ki1000111-WASH-Kenya, country: KENYA
* month: 2, agecat: 24 months, studyid: ki1000304-EU, country: INDIA
* month: 2, agecat: 24 months, studyid: ki1000304-Vitamin-B12, country: INDIA
* month: 2, agecat: 24 months, studyid: ki1000304-ZnMort, country: INDIA
* month: 2, agecat: 24 months, studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO
* month: 2, agecat: 24 months, studyid: ki1119695-PROBIT, country: BELARUS
* month: 2, agecat: 24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* month: 2, agecat: 24 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* month: 2, agecat: 24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* month: 2, agecat: 24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* month: 2, agecat: 24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* month: 2, agecat: 24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* month: 2, agecat: 6 months, studyid: iLiNS_DYADM_LNS, country: MALAWI
* month: 2, agecat: 6 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* month: 2, agecat: 6 months, studyid: ki1000111-WASH-Kenya, country: KENYA
* month: 2, agecat: 6 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* month: 2, agecat: 6 months, studyid: ki1000304-EU, country: INDIA
* month: 2, agecat: 6 months, studyid: ki1000304-VITAMIN-A, country: INDIA
* month: 2, agecat: 6 months, studyid: ki1000304-Vitamin-B12, country: INDIA
* month: 2, agecat: 6 months, studyid: ki1000304-ZnMort, country: INDIA
* month: 2, agecat: 6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* month: 2, agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* month: 2, agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* month: 2, agecat: 6 months, studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO
* month: 2, agecat: 6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* month: 2, agecat: 6 months, studyid: ki1119695-PROBIT, country: BELARUS
* month: 2, agecat: 6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* month: 2, agecat: 6 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* month: 2, agecat: 6 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* month: 2, agecat: 6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* month: 2, agecat: 6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* month: 2, agecat: 6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* month: 2, agecat: Birth, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* month: 2, agecat: Birth, studyid: ki1119695-PROBIT, country: BELARUS
* month: 2, agecat: Birth, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* month: 2, agecat: Birth, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* month: 2, agecat: Birth, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* month: 3, agecat: 24 months, studyid: iLiNS_DYADM_LNS, country: MALAWI
* month: 3, agecat: 24 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* month: 3, agecat: 24 months, studyid: ki1000111-WASH-Kenya, country: KENYA
* month: 3, agecat: 24 months, studyid: ki1000304-EU, country: INDIA
* month: 3, agecat: 24 months, studyid: ki1000304-ZnMort, country: INDIA
* month: 3, agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* month: 3, agecat: 24 months, studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO
* month: 3, agecat: 24 months, studyid: ki1119695-PROBIT, country: BELARUS
* month: 3, agecat: 24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* month: 3, agecat: 24 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* month: 3, agecat: 24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* month: 3, agecat: 24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* month: 3, agecat: 24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* month: 3, agecat: 24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* month: 3, agecat: 6 months, studyid: iLiNS_DYADM_LNS, country: MALAWI
* month: 3, agecat: 6 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* month: 3, agecat: 6 months, studyid: ki1000111-WASH-Kenya, country: KENYA
* month: 3, agecat: 6 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* month: 3, agecat: 6 months, studyid: ki1000304-EU, country: INDIA
* month: 3, agecat: 6 months, studyid: ki1000304-VITAMIN-A, country: INDIA
* month: 3, agecat: 6 months, studyid: ki1000304-ZnMort, country: INDIA
* month: 3, agecat: 6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* month: 3, agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* month: 3, agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* month: 3, agecat: 6 months, studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO
* month: 3, agecat: 6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* month: 3, agecat: 6 months, studyid: ki1119695-PROBIT, country: BELARUS
* month: 3, agecat: 6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* month: 3, agecat: 6 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* month: 3, agecat: 6 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* month: 3, agecat: 6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* month: 3, agecat: 6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* month: 3, agecat: 6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* month: 3, agecat: Birth, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* month: 3, agecat: Birth, studyid: ki1119695-PROBIT, country: BELARUS
* month: 3, agecat: Birth, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* month: 3, agecat: Birth, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* month: 3, agecat: Birth, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* month: 4, agecat: 24 months, studyid: iLiNS_DYADM_LNS, country: MALAWI
* month: 4, agecat: 24 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* month: 4, agecat: 24 months, studyid: ki1000111-WASH-Kenya, country: KENYA
* month: 4, agecat: 24 months, studyid: ki1000304-EU, country: INDIA
* month: 4, agecat: 24 months, studyid: ki1000304-ZnMort, country: INDIA
* month: 4, agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* month: 4, agecat: 24 months, studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO
* month: 4, agecat: 24 months, studyid: ki1119695-PROBIT, country: BELARUS
* month: 4, agecat: 24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* month: 4, agecat: 24 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* month: 4, agecat: 24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* month: 4, agecat: 24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* month: 4, agecat: 24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* month: 4, agecat: 24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* month: 4, agecat: 6 months, studyid: iLiNS_DYADM_LNS, country: MALAWI
* month: 4, agecat: 6 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* month: 4, agecat: 6 months, studyid: ki1000111-WASH-Kenya, country: KENYA
* month: 4, agecat: 6 months, studyid: ki1000304-EU, country: INDIA
* month: 4, agecat: 6 months, studyid: ki1000304-VITAMIN-A, country: INDIA
* month: 4, agecat: 6 months, studyid: ki1000304-ZnMort, country: INDIA
* month: 4, agecat: 6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* month: 4, agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* month: 4, agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* month: 4, agecat: 6 months, studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO
* month: 4, agecat: 6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* month: 4, agecat: 6 months, studyid: ki1119695-PROBIT, country: BELARUS
* month: 4, agecat: 6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* month: 4, agecat: 6 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* month: 4, agecat: 6 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* month: 4, agecat: 6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* month: 4, agecat: 6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* month: 4, agecat: 6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* month: 4, agecat: Birth, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* month: 4, agecat: Birth, studyid: ki1119695-PROBIT, country: BELARUS
* month: 4, agecat: Birth, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* month: 4, agecat: Birth, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* month: 4, agecat: Birth, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* month: 5, agecat: 24 months, studyid: iLiNS_DYADM_LNS, country: MALAWI
* month: 5, agecat: 24 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* month: 5, agecat: 24 months, studyid: ki1000111-WASH-Kenya, country: KENYA
* month: 5, agecat: 24 months, studyid: ki1000304-EU, country: INDIA
* month: 5, agecat: 24 months, studyid: ki1000304-Vitamin-B12, country: INDIA
* month: 5, agecat: 24 months, studyid: ki1000304-ZnMort, country: INDIA
* month: 5, agecat: 24 months, studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO
* month: 5, agecat: 24 months, studyid: ki1119695-PROBIT, country: BELARUS
* month: 5, agecat: 24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* month: 5, agecat: 24 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* month: 5, agecat: 24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* month: 5, agecat: 24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* month: 5, agecat: 24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* month: 5, agecat: 24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* month: 5, agecat: 6 months, studyid: iLiNS_DYADM_LNS, country: MALAWI
* month: 5, agecat: 6 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* month: 5, agecat: 6 months, studyid: ki1000111-WASH-Kenya, country: KENYA
* month: 5, agecat: 6 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* month: 5, agecat: 6 months, studyid: ki1000304-EU, country: INDIA
* month: 5, agecat: 6 months, studyid: ki1000304-VITAMIN-A, country: INDIA
* month: 5, agecat: 6 months, studyid: ki1000304-ZnMort, country: INDIA
* month: 5, agecat: 6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* month: 5, agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* month: 5, agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* month: 5, agecat: 6 months, studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO
* month: 5, agecat: 6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* month: 5, agecat: 6 months, studyid: ki1119695-PROBIT, country: BELARUS
* month: 5, agecat: 6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* month: 5, agecat: 6 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* month: 5, agecat: 6 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* month: 5, agecat: 6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* month: 5, agecat: 6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* month: 5, agecat: 6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* month: 5, agecat: Birth, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* month: 5, agecat: Birth, studyid: ki1119695-PROBIT, country: BELARUS
* month: 5, agecat: Birth, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* month: 5, agecat: Birth, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* month: 5, agecat: Birth, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* month: 6, agecat: 24 months, studyid: iLiNS_DYADM_LNS, country: MALAWI
* month: 6, agecat: 24 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* month: 6, agecat: 24 months, studyid: ki1000111-WASH-Kenya, country: KENYA
* month: 6, agecat: 24 months, studyid: ki1000304-EU, country: INDIA
* month: 6, agecat: 24 months, studyid: ki1000304-Vitamin-B12, country: INDIA
* month: 6, agecat: 24 months, studyid: ki1000304-ZnMort, country: INDIA
* month: 6, agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* month: 6, agecat: 24 months, studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO
* month: 6, agecat: 24 months, studyid: ki1119695-PROBIT, country: BELARUS
* month: 6, agecat: 24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* month: 6, agecat: 24 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* month: 6, agecat: 24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* month: 6, agecat: 24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* month: 6, agecat: 24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* month: 6, agecat: 24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* month: 6, agecat: 6 months, studyid: iLiNS_DYADM_LNS, country: MALAWI
* month: 6, agecat: 6 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* month: 6, agecat: 6 months, studyid: ki1000111-WASH-Kenya, country: KENYA
* month: 6, agecat: 6 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* month: 6, agecat: 6 months, studyid: ki1000304-EU, country: INDIA
* month: 6, agecat: 6 months, studyid: ki1000304-VITAMIN-A, country: INDIA
* month: 6, agecat: 6 months, studyid: ki1000304-Vitamin-B12, country: INDIA
* month: 6, agecat: 6 months, studyid: ki1000304-ZnMort, country: INDIA
* month: 6, agecat: 6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* month: 6, agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* month: 6, agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* month: 6, agecat: 6 months, studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO
* month: 6, agecat: 6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* month: 6, agecat: 6 months, studyid: ki1119695-PROBIT, country: BELARUS
* month: 6, agecat: 6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* month: 6, agecat: 6 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* month: 6, agecat: 6 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* month: 6, agecat: 6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* month: 6, agecat: 6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* month: 6, agecat: 6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* month: 6, agecat: Birth, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* month: 6, agecat: Birth, studyid: ki1119695-PROBIT, country: BELARUS
* month: 6, agecat: Birth, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* month: 6, agecat: Birth, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* month: 6, agecat: Birth, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* month: 7, agecat: 24 months, studyid: iLiNS_DYADM_LNS, country: MALAWI
* month: 7, agecat: 24 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* month: 7, agecat: 24 months, studyid: ki1000111-WASH-Kenya, country: KENYA
* month: 7, agecat: 24 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* month: 7, agecat: 24 months, studyid: ki1000304-EU, country: INDIA
* month: 7, agecat: 24 months, studyid: ki1000304-Vitamin-B12, country: INDIA
* month: 7, agecat: 24 months, studyid: ki1000304-ZnMort, country: INDIA
* month: 7, agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* month: 7, agecat: 24 months, studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO
* month: 7, agecat: 24 months, studyid: ki1119695-PROBIT, country: BELARUS
* month: 7, agecat: 24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* month: 7, agecat: 24 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* month: 7, agecat: 24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* month: 7, agecat: 24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* month: 7, agecat: 24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* month: 7, agecat: 24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* month: 7, agecat: 6 months, studyid: iLiNS_DYADM_LNS, country: MALAWI
* month: 7, agecat: 6 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* month: 7, agecat: 6 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* month: 7, agecat: 6 months, studyid: ki1000304-EU, country: INDIA
* month: 7, agecat: 6 months, studyid: ki1000304-VITAMIN-A, country: INDIA
* month: 7, agecat: 6 months, studyid: ki1000304-Vitamin-B12, country: INDIA
* month: 7, agecat: 6 months, studyid: ki1000304-ZnMort, country: INDIA
* month: 7, agecat: 6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* month: 7, agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* month: 7, agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* month: 7, agecat: 6 months, studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO
* month: 7, agecat: 6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* month: 7, agecat: 6 months, studyid: ki1119695-PROBIT, country: BELARUS
* month: 7, agecat: 6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* month: 7, agecat: 6 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* month: 7, agecat: 6 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* month: 7, agecat: 6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* month: 7, agecat: 6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* month: 7, agecat: 6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* month: 7, agecat: Birth, studyid: iLiNS_DYADM_LNS, country: MALAWI
* month: 7, agecat: Birth, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* month: 7, agecat: Birth, studyid: ki1119695-PROBIT, country: BELARUS
* month: 7, agecat: Birth, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* month: 7, agecat: Birth, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* month: 7, agecat: Birth, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* month: 7, agecat: Birth, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* month: 8, agecat: 24 months, studyid: iLiNS_DYADM_LNS, country: MALAWI
* month: 8, agecat: 24 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* month: 8, agecat: 24 months, studyid: ki1000111-WASH-Kenya, country: KENYA
* month: 8, agecat: 24 months, studyid: ki1000304-EU, country: INDIA
* month: 8, agecat: 24 months, studyid: ki1000304-Vitamin-B12, country: INDIA
* month: 8, agecat: 24 months, studyid: ki1000304-ZnMort, country: INDIA
* month: 8, agecat: 24 months, studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO
* month: 8, agecat: 24 months, studyid: ki1119695-PROBIT, country: BELARUS
* month: 8, agecat: 24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* month: 8, agecat: 24 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* month: 8, agecat: 24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* month: 8, agecat: 24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* month: 8, agecat: 24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* month: 8, agecat: 24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* month: 8, agecat: 6 months, studyid: iLiNS_DYADM_LNS, country: MALAWI
* month: 8, agecat: 6 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* month: 8, agecat: 6 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* month: 8, agecat: 6 months, studyid: ki1000304-EU, country: INDIA
* month: 8, agecat: 6 months, studyid: ki1000304-VITAMIN-A, country: INDIA
* month: 8, agecat: 6 months, studyid: ki1000304-Vitamin-B12, country: INDIA
* month: 8, agecat: 6 months, studyid: ki1000304-ZnMort, country: INDIA
* month: 8, agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* month: 8, agecat: 6 months, studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO
* month: 8, agecat: 6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* month: 8, agecat: 6 months, studyid: ki1119695-PROBIT, country: BELARUS
* month: 8, agecat: 6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* month: 8, agecat: 6 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* month: 8, agecat: 6 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* month: 8, agecat: 6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* month: 8, agecat: 6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* month: 8, agecat: 6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* month: 8, agecat: Birth, studyid: ki1119695-PROBIT, country: BELARUS
* month: 8, agecat: Birth, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* month: 8, agecat: Birth, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* month: 8, agecat: Birth, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* month: 9, agecat: 24 months, studyid: iLiNS_DYADM_LNS, country: MALAWI
* month: 9, agecat: 24 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* month: 9, agecat: 24 months, studyid: ki1000111-WASH-Kenya, country: KENYA
* month: 9, agecat: 24 months, studyid: ki1000304-EU, country: INDIA
* month: 9, agecat: 24 months, studyid: ki1000304-Vitamin-B12, country: INDIA
* month: 9, agecat: 24 months, studyid: ki1000304-ZnMort, country: INDIA
* month: 9, agecat: 24 months, studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO
* month: 9, agecat: 24 months, studyid: ki1119695-PROBIT, country: BELARUS
* month: 9, agecat: 24 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* month: 9, agecat: 24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* month: 9, agecat: 24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* month: 9, agecat: 24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* month: 9, agecat: 24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* month: 9, agecat: 6 months, studyid: iLiNS_DYADM_LNS, country: MALAWI
* month: 9, agecat: 6 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* month: 9, agecat: 6 months, studyid: ki1000111-WASH-Kenya, country: KENYA
* month: 9, agecat: 6 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* month: 9, agecat: 6 months, studyid: ki1000304-EU, country: INDIA
* month: 9, agecat: 6 months, studyid: ki1000304-VITAMIN-A, country: INDIA
* month: 9, agecat: 6 months, studyid: ki1000304-Vitamin-B12, country: INDIA
* month: 9, agecat: 6 months, studyid: ki1000304-ZnMort, country: INDIA
* month: 9, agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* month: 9, agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* month: 9, agecat: 6 months, studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO
* month: 9, agecat: 6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* month: 9, agecat: 6 months, studyid: ki1119695-PROBIT, country: BELARUS
* month: 9, agecat: 6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* month: 9, agecat: 6 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* month: 9, agecat: 6 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* month: 9, agecat: 6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* month: 9, agecat: 6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* month: 9, agecat: 6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* month: 9, agecat: Birth, studyid: ki1119695-PROBIT, country: BELARUS
* month: 9, agecat: Birth, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* month: 9, agecat: Birth, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* month: 9, agecat: Birth, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* month: 12, agecat: 6 months, studyid: ki1000107-Serrinha-VitA, country: BRAZIL
* month: 2, agecat: 24 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* month: 11, agecat: 6 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* month: 12, agecat: 24 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* month: 12, agecat: 6 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* month: 3, agecat: 24 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* month: 1, agecat: 6 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* month: 1, agecat: 24 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* month: 2, agecat: 6 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* month: 4, agecat: 6 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* month: 5, agecat: 6 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* month: 6, agecat: 6 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* month: 10, agecat: 6 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* month: 7, agecat: 6 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* month: 8, agecat: 6 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* month: 9, agecat: 6 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* month: 9, agecat: 6 months, studyid: ki1000111-WASH-Kenya, country: KENYA
* month: 9, agecat: 24 months, studyid: ki1000111-WASH-Kenya, country: KENYA
* month: 8, agecat: 24 months, studyid: ki1000111-WASH-Kenya, country: KENYA
* month: 1, agecat: 6 months, studyid: ki1000111-WASH-Kenya, country: KENYA
* month: 11, agecat: 6 months, studyid: ki1000111-WASH-Kenya, country: KENYA
* month: 10, agecat: 6 months, studyid: ki1000111-WASH-Kenya, country: KENYA
* month: 12, agecat: 6 months, studyid: ki1000111-WASH-Kenya, country: KENYA
* month: 2, agecat: 6 months, studyid: ki1000111-WASH-Kenya, country: KENYA
* month: 3, agecat: 6 months, studyid: ki1000111-WASH-Kenya, country: KENYA
* month: 4, agecat: 6 months, studyid: ki1000111-WASH-Kenya, country: KENYA
* month: 5, agecat: 6 months, studyid: ki1000111-WASH-Kenya, country: KENYA
* month: 7, agecat: 24 months, studyid: ki1000111-WASH-Kenya, country: KENYA
* month: 6, agecat: 6 months, studyid: ki1000111-WASH-Kenya, country: KENYA
* month: 6, agecat: 6 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* month: 8, agecat: 6 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* month: 7, agecat: 24 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* month: 10, agecat: 6 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* month: 5, agecat: 6 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* month: 9, agecat: 6 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* month: 10, agecat: 24 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* month: 2, agecat: 6 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* month: 11, agecat: Birth, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* month: 1, agecat: Birth, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* month: 12, agecat: Birth, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* month: 3, agecat: 6 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* month: 9, agecat: 24 months, studyid: ki1000304-EU, country: INDIA
* month: 9, agecat: 6 months, studyid: ki1000304-EU, country: INDIA
* month: 2, agecat: 24 months, studyid: ki1000304-EU, country: INDIA
* month: 10, agecat: 24 months, studyid: ki1000304-EU, country: INDIA
* month: 10, agecat: 6 months, studyid: ki1000304-EU, country: INDIA
* month: 1, agecat: 24 months, studyid: ki1000304-EU, country: INDIA
* month: 11, agecat: 24 months, studyid: ki1000304-EU, country: INDIA
* month: 12, agecat: 24 months, studyid: ki1000304-EU, country: INDIA
* month: 12, agecat: 6 months, studyid: ki1000304-EU, country: INDIA
* month: 2, agecat: 6 months, studyid: ki1000304-EU, country: INDIA
* month: 4, agecat: 24 months, studyid: ki1000304-EU, country: INDIA
* month: 5, agecat: 6 months, studyid: ki1000304-EU, country: INDIA
* month: 5, agecat: 24 months, studyid: ki1000304-EU, country: INDIA
* month: 6, agecat: 6 months, studyid: ki1000304-EU, country: INDIA
* month: 7, agecat: 6 months, studyid: ki1000304-EU, country: INDIA
* month: 6, agecat: 24 months, studyid: ki1000304-EU, country: INDIA
* month: 7, agecat: 24 months, studyid: ki1000304-EU, country: INDIA
* month: 6, agecat: 6 months, studyid: ki1000304-Vitamin-B12, country: INDIA
* month: 2, agecat: 24 months, studyid: ki1000304-Vitamin-B12, country: INDIA
* month: 6, agecat: 24 months, studyid: ki1000304-Vitamin-B12, country: INDIA
* month: 1, agecat: 6 months, studyid: ki1000304-Vitamin-B12, country: INDIA
* month: 7, agecat: 24 months, studyid: ki1000304-Vitamin-B12, country: INDIA
* month: 7, agecat: 6 months, studyid: ki1000304-Vitamin-B12, country: INDIA
* month: 5, agecat: 24 months, studyid: ki1000304-Vitamin-B12, country: INDIA
* month: 8, agecat: 6 months, studyid: ki1000304-Vitamin-B12, country: INDIA
* month: 8, agecat: 24 months, studyid: ki1000304-Vitamin-B12, country: INDIA
* month: 9, agecat: 24 months, studyid: ki1000304-Vitamin-B12, country: INDIA
* month: 9, agecat: 6 months, studyid: ki1000304-Vitamin-B12, country: INDIA
* month: 10, agecat: 6 months, studyid: ki1000304-Vitamin-B12, country: INDIA
* month: 10, agecat: 24 months, studyid: ki1000304-Vitamin-B12, country: INDIA
* month: 11, agecat: 24 months, studyid: ki1000304-Vitamin-B12, country: INDIA
* month: 11, agecat: 6 months, studyid: ki1000304-Vitamin-B12, country: INDIA
* month: 12, agecat: 24 months, studyid: ki1000304-Vitamin-B12, country: INDIA
* month: 12, agecat: 6 months, studyid: ki1000304-Vitamin-B12, country: INDIA
* month: 1, agecat: 24 months, studyid: ki1000304-Vitamin-B12, country: INDIA
* month: 2, agecat: 6 months, studyid: ki1000304-Vitamin-B12, country: INDIA
* month: 8, agecat: 6 months, studyid: ki1000304-ZnMort, country: INDIA
* month: 9, agecat: 6 months, studyid: ki1000304-ZnMort, country: INDIA
* month: 4, agecat: 24 months, studyid: ki1000304-ZnMort, country: INDIA
* month: 3, agecat: 24 months, studyid: ki1000304-ZnMort, country: INDIA
* month: 4, agecat: 6 months, studyid: ki1000304-ZnMort, country: INDIA
* month: 10, agecat: 6 months, studyid: ki1000304-ZnMort, country: INDIA
* month: 3, agecat: 6 months, studyid: ki1000304-ZnMort, country: INDIA
* month: 5, agecat: 6 months, studyid: ki1000304-ZnMort, country: INDIA
* month: 6, agecat: 24 months, studyid: ki1000304-ZnMort, country: INDIA
* month: 6, agecat: 6 months, studyid: ki1000304-ZnMort, country: INDIA
* month: 11, agecat: 6 months, studyid: ki1000304-ZnMort, country: INDIA
* month: 8, agecat: 24 months, studyid: ki1000304-ZnMort, country: INDIA
* month: 7, agecat: 24 months, studyid: ki1000304-ZnMort, country: INDIA
* month: 7, agecat: 6 months, studyid: ki1000304-ZnMort, country: INDIA
* month: 12, agecat: 6 months, studyid: ki1000304-ZnMort, country: INDIA
* month: 1, agecat: 6 months, studyid: ki1000304-ZnMort, country: INDIA
* month: 9, agecat: 24 months, studyid: ki1000304-ZnMort, country: INDIA
* month: 2, agecat: 6 months, studyid: ki1000304-ZnMort, country: INDIA
* month: 10, agecat: 24 months, studyid: ki1000304-ZnMort, country: INDIA
* month: 11, agecat: 24 months, studyid: ki1000304-ZnMort, country: INDIA
* month: 12, agecat: 24 months, studyid: ki1000304-ZnMort, country: INDIA
* month: 1, agecat: 24 months, studyid: ki1000304-ZnMort, country: INDIA
* month: 2, agecat: 24 months, studyid: ki1000304-ZnMort, country: INDIA
* month: 10, agecat: Birth, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* month: 11, agecat: Birth, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* month: 12, agecat: Birth, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* month: 2, agecat: Birth, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* month: 3, agecat: 6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* month: 3, agecat: Birth, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* month: 4, agecat: Birth, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* month: 5, agecat: Birth, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* month: 6, agecat: Birth, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* month: 7, agecat: 6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* month: 1, agecat: Birth, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* month: 7, agecat: Birth, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* month: 9, agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* month: 10, agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* month: 4, agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* month: 6, agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* month: 2, agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* month: 3, agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* month: 5, agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* month: 7, agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* month: 11, agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* month: 8, agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* month: 7, agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* month: 9, agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* month: 11, agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* month: 12, agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* month: 1, agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* month: 2, agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* month: 3, agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* month: 4, agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* month: 4, agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* month: 5, agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* month: 6, agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* month: 6, agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* month: 7, agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* month: 3, agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* month: 12, agecat: 24 months, studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO
* month: 7, agecat: 6 months, studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO
* month: 12, agecat: 6 months, studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO
* month: 8, agecat: 6 months, studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO
* month: 1, agecat: 6 months, studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO
* month: 2, agecat: 6 months, studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO
* month: 6, agecat: 6 months, studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO
* month: 3, agecat: 6 months, studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO
* month: 3, agecat: 24 months, studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO
* month: 3, agecat: 6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* month: 4, agecat: 6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* month: 5, agecat: 6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* month: 6, agecat: 6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* month: 10, agecat: 6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* month: 1, agecat: 6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* month: 7, agecat: 6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* month: 8, agecat: 6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* month: 2, agecat: 6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* month: 12, agecat: 6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* month: 11, agecat: 6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* month: 6, agecat: Birth, studyid: ki1119695-PROBIT, country: BELARUS
* month: 7, agecat: Birth, studyid: ki1119695-PROBIT, country: BELARUS
* month: 8, agecat: Birth, studyid: ki1119695-PROBIT, country: BELARUS
* month: 9, agecat: Birth, studyid: ki1119695-PROBIT, country: BELARUS
* month: 10, agecat: Birth, studyid: ki1119695-PROBIT, country: BELARUS
* month: 11, agecat: Birth, studyid: ki1119695-PROBIT, country: BELARUS
* month: 11, agecat: 24 months, studyid: ki1119695-PROBIT, country: BELARUS
* month: 12, agecat: Birth, studyid: ki1119695-PROBIT, country: BELARUS
* month: 2, agecat: Birth, studyid: ki1119695-PROBIT, country: BELARUS
* month: 3, agecat: Birth, studyid: ki1119695-PROBIT, country: BELARUS
* month: 3, agecat: 24 months, studyid: ki1119695-PROBIT, country: BELARUS
* month: 4, agecat: Birth, studyid: ki1119695-PROBIT, country: BELARUS
* month: 5, agecat: Birth, studyid: ki1119695-PROBIT, country: BELARUS
* month: 7, agecat: 24 months, studyid: ki1119695-PROBIT, country: BELARUS
* month: 4, agecat: 24 months, studyid: ki1119695-PROBIT, country: BELARUS
* month: 5, agecat: 24 months, studyid: ki1119695-PROBIT, country: BELARUS
* month: 6, agecat: 24 months, studyid: ki1119695-PROBIT, country: BELARUS
* month: 8, agecat: 24 months, studyid: ki1119695-PROBIT, country: BELARUS
* month: 9, agecat: 24 months, studyid: ki1119695-PROBIT, country: BELARUS
* month: 2, agecat: 24 months, studyid: ki1119695-PROBIT, country: BELARUS
* month: 1, agecat: 24 months, studyid: ki1119695-PROBIT, country: BELARUS
* month: 1, agecat: 24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* month: 2, agecat: 24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* month: 11, agecat: 24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* month: 12, agecat: 24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* month: 3, agecat: 24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* month: 6, agecat: 24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* month: 7, agecat: 24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* month: 8, agecat: 24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* month: 10, agecat: 24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* month: 4, agecat: 24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* month: 5, agecat: 24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* month: 8, agecat: 24 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* month: 9, agecat: 24 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* month: 12, agecat: 24 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* month: 10, agecat: 24 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* month: 11, agecat: 24 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* month: 4, agecat: 24 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* month: 6, agecat: 24 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* month: 7, agecat: 24 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* month: 7, agecat: 6 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* month: 7, agecat: Birth, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* month: 10, agecat: 6 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* month: 10, agecat: 24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* month: 11, agecat: 24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* month: 9, agecat: 24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* month: 12, agecat: 24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* month: 1, agecat: 6 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* month: 1, agecat: 24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* month: 2, agecat: 24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* month: 3, agecat: 6 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* month: 3, agecat: 24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* month: 4, agecat: 24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* month: 6, agecat: 24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* month: 5, agecat: 24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* month: 7, agecat: 24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* month: 8, agecat: 24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* month: 2, agecat: 24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* month: 3, agecat: 24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* month: 1, agecat: 6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* month: 4, agecat: 24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* month: 1, agecat: 24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* month: 5, agecat: 24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* month: 6, agecat: 24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* month: 7, agecat: 24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* month: 8, agecat: 6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* month: 8, agecat: 24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* month: 9, agecat: 6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* month: 9, agecat: 24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* month: 10, agecat: 6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* month: 10, agecat: 24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* month: 11, agecat: 6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* month: 11, agecat: 24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* month: 12, agecat: 6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* month: 12, agecat: 24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* month: 7, agecat: 24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* month: 4, agecat: 24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* month: 12, agecat: 24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* month: 6, agecat: 24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* month: 11, agecat: 24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* month: 10, agecat: 24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* month: 2, agecat: 24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* month: 5, agecat: 24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* month: 8, agecat: 24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* month: 3, agecat: 24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* month: 1, agecat: 24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* month: 9, agecat: 24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* month: 7, agecat: Birth, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* month: 3, agecat: 24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* month: 10, agecat: 24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* month: 9, agecat: Birth, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* month: 5, agecat: Birth, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* month: 12, agecat: 24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* month: 10, agecat: Birth, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* month: 8, agecat: Birth, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* month: 1, agecat: 6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* month: 11, agecat: 24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* month: 1, agecat: 24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* month: 6, agecat: 24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* month: 2, agecat: 24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* month: 7, agecat: 6 months, studyid: iLiNS_DYADM_LNS, country: MALAWI
* month: 7, agecat: Birth, studyid: iLiNS_DYADM_LNS, country: MALAWI
* month: 10, agecat: 6 months, studyid: iLiNS_DYADM_LNS, country: MALAWI
* month: 10, agecat: 24 months, studyid: iLiNS_DYADM_LNS, country: MALAWI
* month: 11, agecat: 24 months, studyid: iLiNS_DYADM_LNS, country: MALAWI
* month: 9, agecat: 24 months, studyid: iLiNS_DYADM_LNS, country: MALAWI
* month: 12, agecat: 24 months, studyid: iLiNS_DYADM_LNS, country: MALAWI
* month: 1, agecat: 6 months, studyid: iLiNS_DYADM_LNS, country: MALAWI
* month: 2, agecat: 6 months, studyid: iLiNS_DYADM_LNS, country: MALAWI
* month: 2, agecat: 24 months, studyid: iLiNS_DYADM_LNS, country: MALAWI
* month: 1, agecat: 24 months, studyid: iLiNS_DYADM_LNS, country: MALAWI
* month: 3, agecat: 6 months, studyid: iLiNS_DYADM_LNS, country: MALAWI
* month: 3, agecat: 24 months, studyid: iLiNS_DYADM_LNS, country: MALAWI
* month: 4, agecat: 24 months, studyid: iLiNS_DYADM_LNS, country: MALAWI
* month: 6, agecat: 6 months, studyid: iLiNS_DYADM_LNS, country: MALAWI
* month: 5, agecat: 24 months, studyid: iLiNS_DYADM_LNS, country: MALAWI
* month: 6, agecat: 24 months, studyid: iLiNS_DYADM_LNS, country: MALAWI
* month: 8, agecat: 24 months, studyid: iLiNS_DYADM_LNS, country: MALAWI
* month: 7, agecat: 24 months, studyid: iLiNS_DYADM_LNS, country: MALAWI

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness



```
##           stunted
## tr           0
##   Control  433
##   LNS        0
##   Maternal 425
##   Other      0
##   VitA       0
##   Zinc       0
##           stunted
## tr         0 1
##   Control  0 0
##   LNS      0 0
##   Maternal 0 0
##   Other    0 0
##   VitA     0 0
##   Zinc     8 8
##           stunted
## tr          0
##   Control   0
##   LNS       0
##   Maternal  0
##   Other     0
##   VitA      0
##   Zinc     16
##           stunted
## tr          0  1
##   Control   0  0
##   LNS       0  0
##   Maternal  0  0
##   Other     0  0
##   VitA      0  0
##   Zinc     47 20
##           stunted
## tr          0  1
##   Control   0  0
##   LNS       0  0
##   Maternal  0  0
##   Other     0  0
##   VitA      0  0
##   Zinc     40 12
##           stunted
## tr          0  1
##   Control   0  0
##   LNS       0  0
##   Maternal  0  0
##   Other     0  0
##   VitA      0  0
##   Zinc     42 49
##           stunted
## tr          0  1
##   Control   0  0
##   LNS       0  0
##   Maternal  0  0
##   Other     0  0
##   VitA      0  0
##   Zinc     83 14
##           stunted
## tr          0  1
##   Control   0  0
##   LNS       0  0
##   Maternal  0  0
##   Other     0  0
##   VitA      0  0
##   Zinc     10 10
##           stunted
## tr         0 1
##   Control  0 0
##   LNS      0 0
##   Maternal 0 0
##   Other    0 0
##   VitA     0 0
##   Zinc     9 6
##           stunted
## tr          0  1
##   Control   0  0
##   LNS       0  0
##   Maternal  0  0
##   Other     0  0
##   VitA      0  0
##   Zinc     29 26
##           stunted
## tr          0  1
##   Control   0  0
##   LNS       0  0
##   Maternal  0  0
##   Other     0  0
##   VitA      0  0
##   Zinc     13  7
##           stunted
## tr          0  1
##   Control   0  0
##   LNS       0  0
##   Maternal  0  0
##   Other     0  0
##   VitA      0  0
##   Zinc     70  9
```




# Results Detail

## Results Plots
![](/tmp/bd535605-b959-4334-8461-200879838216/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/bd535605-b959-4334-8461-200879838216/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/bd535605-b959-4334-8461-200879838216/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/bd535605-b959-4334-8461-200879838216/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


month   agecat      studyid                     country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------  ----------  --------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
1       Birth       ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                0.1608187   0.1509077   0.1707298
1       Birth       ki1126311-ZVITAMBO          ZIMBABWE                       VitA                 NA                0.1177645   0.1028796   0.1326493
1       Birth       kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                0.3680258   0.3495253   0.3865262
1       Birth       kiGH5241-JiVitA-3           BANGLADESH                     Maternal             NA                0.3560209   0.3378619   0.3741800
1       6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Control              NA                0.3888889   0.3347724   0.4430053
1       6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Maternal             NA                0.2820513   0.2355470   0.3285556
1       6 months    ki1000304-EU                INDIA                          Control              NA                0.3888889   0.1605740   0.6172038
1       6 months    ki1000304-EU                INDIA                          Zinc                 NA                0.2631579   0.0624260   0.4638898
1       6 months    ki1000304-VITAMIN-A         INDIA                          Control              NA                0.3206107   0.2808776   0.3603438
1       6 months    ki1000304-VITAMIN-A         INDIA                          VitA                 NA                0.3233083   0.2831849   0.3634317
1       6 months    ki1000304b-SAS-CompFeed     INDIA                          Control              NA                0.2647059   0.1759871   0.3534246
1       6 months    ki1000304b-SAS-CompFeed     INDIA                          Other                NA                0.2857143   0.1948025   0.3766260
1       6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Control              NA                0.5000000   0.4339296   0.5660704
1       6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Other                NA                0.5238095   0.4095021   0.6381169
1       6 months    ki1119695-PROBIT            BELARUS                        Control              NA                0.0942529   0.0748772   0.1136285
1       6 months    ki1119695-PROBIT            BELARUS                        Maternal             NA                0.0850575   0.0664707   0.1036442
1       6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                0.1871921   0.1723419   0.2020424
1       6 months    ki1126311-ZVITAMBO          ZIMBABWE                       VitA                 NA                0.1619586   0.1392740   0.1846431
1       6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                0.2580645   0.2316100   0.2845191
1       6 months    ki1148112-iLiNS-DOSE        MALAWI                         LNS                  NA                0.3266667   0.2642952   0.3890381
1       6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                0.2801788   0.2588703   0.3014874
1       6 months    kiGH5241-JiVitA-3           BANGLADESH                     Maternal             NA                0.2459259   0.2272843   0.2645676
1       24 months   ki1000111-WASH-Kenya        KENYA                          Control              NA                0.3440000   0.2605967   0.4274033
1       24 months   ki1000111-WASH-Kenya        KENYA                          LNS                  NA                0.2727273   0.1731008   0.3723537
1       24 months   ki1000111-WASH-Kenya        KENYA                          Other                NA                0.3828125   0.2984783   0.4671467
1       24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Control              NA                0.5277778   0.3644148   0.6911407
1       24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc                 NA                0.3346614   0.2761832   0.3931395
1       24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                0.3846154   0.3329146   0.4363162
1       24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS                  NA                0.5000000   0.3917057   0.6082943
2       Birth       ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                0.1294118   0.1192665   0.1395570
2       Birth       ki1126311-ZVITAMBO          ZIMBABWE                       VitA                 NA                0.1549296   0.1357898   0.1740694
2       Birth       kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                0.3497942   0.3286883   0.3709002
2       Birth       kiGH5241-JiVitA-3           BANGLADESH                     Maternal             NA                0.2754491   0.2574329   0.2934654
2       Birth       kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                0.2424242   0.0878094   0.3970391
2       Birth       kiGH5241-JiVitA-4           BANGLADESH                     LNS                  NA                0.2972973   0.1234708   0.4711238
2       Birth       kiGH5241-JiVitA-4           BANGLADESH                     Other                NA                0.3166667   0.1937980   0.4395353
2       6 months    ki1000304-VITAMIN-A         INDIA                          Control              NA                0.3626374   0.3166591   0.4086157
2       6 months    ki1000304-VITAMIN-A         INDIA                          VitA                 NA                0.2761905   0.2302586   0.3221223
2       6 months    ki1000304b-SAS-CompFeed     INDIA                          Control              NA                0.3333333   0.1562432   0.5104234
2       6 months    ki1000304b-SAS-CompFeed     INDIA                          Other                NA                0.2432432   0.1888594   0.2976271
2       6 months    ki1119695-PROBIT            BELARUS                        Control              NA                0.0882353   0.0615486   0.1149220
2       6 months    ki1119695-PROBIT            BELARUS                        Maternal             NA                0.0757576   0.0614471   0.0900681
2       6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                0.2035398   0.1872669   0.2198127
2       6 months    ki1126311-ZVITAMBO          ZIMBABWE                       VitA                 NA                0.1538462   0.1263077   0.1813846
2       6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                0.3529412   0.3262346   0.3796478
2       6 months    ki1148112-iLiNS-DOSE        MALAWI                         LNS                  NA                0.2631579   0.2079693   0.3183465
2       6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Control              NA                0.2058824   0.1403341   0.2714306
2       6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Maternal             NA                0.1891892   0.1229555   0.2554228
2       6 months    ki1148112-LCNI-5            MALAWI                         Control              NA                0.4444444   0.2561871   0.6327018
2       6 months    ki1148112-LCNI-5            MALAWI                         LNS                  NA                0.3103448   0.1907574   0.4299323
2       6 months    ki1148112-LCNI-5            MALAWI                         Other                NA                0.3103448   0.1412227   0.4794670
2       6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                0.2641844   0.2413962   0.2869726
2       6 months    kiGH5241-JiVitA-3           BANGLADESH                     Maternal             NA                0.2351047   0.2142752   0.2559341
2       6 months    kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                0.2051282   0.0686731   0.3415833
2       6 months    kiGH5241-JiVitA-4           BANGLADESH                     LNS                  NA                0.1627907   0.0509793   0.2746021
2       6 months    kiGH5241-JiVitA-4           BANGLADESH                     Other                NA                0.1951220   0.1048185   0.2854254
2       24 months   ki1000111-WASH-Kenya        KENYA                          Control              NA                0.2452830   0.1291430   0.3614230
2       24 months   ki1000111-WASH-Kenya        KENYA                          LNS                  NA                0.3714286   0.2109286   0.5319285
2       24 months   ki1000111-WASH-Kenya        KENYA                          Other                NA                0.2352941   0.1527575   0.3178307
2       24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Control              NA                0.3181818   0.2056598   0.4307038
2       24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc                 NA                0.3333333   0.2801825   0.3864841
2       24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                0.5625000   0.5241825   0.6008175
2       24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS                  NA                0.4302326   0.3415707   0.5188945
3       Birth       ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                0.1155235   0.1063728   0.1246741
3       Birth       ki1126311-ZVITAMBO          ZIMBABWE                       VitA                 NA                0.1205098   0.1040598   0.1369599
3       Birth       kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                0.3259669   0.3076735   0.3442602
3       Birth       kiGH5241-JiVitA-3           BANGLADESH                     Maternal             NA                0.2644628   0.2471056   0.2818200
3       Birth       kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                0.3333333   0.1962420   0.4704247
3       Birth       kiGH5241-JiVitA-4           BANGLADESH                     LNS                  NA                0.4807692   0.3395365   0.6220020
3       Birth       kiGH5241-JiVitA-4           BANGLADESH                     Other                NA                0.2972973   0.1827562   0.4118384
3       6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                0.3181818   0.1226188   0.5137448
3       6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                  NA                0.2051282   0.0777911   0.3324653
3       6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Other                NA                0.1136364   0.0194118   0.2078610
3       6 months    ki1000304-EU                INDIA                          Control              NA                0.3181818   0.1205346   0.5158290
3       6 months    ki1000304-EU                INDIA                          Zinc                 NA                0.5454545   0.2466400   0.8442690
3       6 months    ki1000304-VITAMIN-A         INDIA                          Control              NA                0.3703704   0.3197993   0.4209415
3       6 months    ki1000304-VITAMIN-A         INDIA                          VitA                 NA                0.3563218   0.3113081   0.4013356
3       6 months    ki1119695-PROBIT            BELARUS                        Control              NA                0.0705009   0.0539169   0.0870849
3       6 months    ki1119695-PROBIT            BELARUS                        Maternal             NA                0.0448065   0.0303108   0.0593022
3       6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                0.2159091   0.2005707   0.2312475
3       6 months    ki1126311-ZVITAMBO          ZIMBABWE                       VitA                 NA                0.2145594   0.1882040   0.2409148
3       6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                0.2368421   0.2141639   0.2595203
3       6 months    ki1148112-iLiNS-DOSE        MALAWI                         LNS                  NA                0.2433862   0.1923361   0.2944364
3       6 months    ki1148112-LCNI-5            MALAWI                         Control              NA                0.3703704   0.1872848   0.5534559
3       6 months    ki1148112-LCNI-5            MALAWI                         LNS                  NA                0.2653061   0.1410539   0.3895583
3       6 months    ki1148112-LCNI-5            MALAWI                         Other                NA                0.5454545   0.3363171   0.7545920
3       6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                0.2461964   0.2271126   0.2652802
3       6 months    kiGH5241-JiVitA-3           BANGLADESH                     Maternal             NA                0.2126437   0.1951666   0.2301208
3       6 months    kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                0.2592593   0.1720093   0.3465092
3       6 months    kiGH5241-JiVitA-4           BANGLADESH                     LNS                  NA                0.2086331   0.1485326   0.2687336
3       6 months    kiGH5241-JiVitA-4           BANGLADESH                     Other                NA                0.2677596   0.1958143   0.3397048
3       24 months   ki1000111-WASH-Kenya        KENYA                          Control              NA                0.2405063   0.1460146   0.3349981
3       24 months   ki1000111-WASH-Kenya        KENYA                          LNS                  NA                0.1904762   0.0714089   0.3095435
3       24 months   ki1000111-WASH-Kenya        KENYA                          Other                NA                0.2676056   0.1643597   0.3708516
3       24 months   ki1000304-EU                INDIA                          Control              NA                0.5384615   0.2621021   0.8148210
3       24 months   ki1000304-EU                INDIA                          Zinc                 NA                0.5384615   0.2621021   0.8148210
3       24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                0.5000000   0.4566852   0.5433148
3       24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS                  NA                0.4533333   0.3599634   0.5467032
4       Birth       ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                0.1011673   0.0917536   0.1105810
4       Birth       ki1126311-ZVITAMBO          ZIMBABWE                       VitA                 NA                0.1133333   0.0964280   0.1302387
4       Birth       kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                0.2885196   0.2679687   0.3090705
4       Birth       kiGH5241-JiVitA-3           BANGLADESH                     Maternal             NA                0.2621083   0.2422419   0.2819747
4       Birth       kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                0.3428571   0.1728440   0.5128702
4       Birth       kiGH5241-JiVitA-4           BANGLADESH                     LNS                  NA                0.2820513   0.1328901   0.4312124
4       Birth       kiGH5241-JiVitA-4           BANGLADESH                     Other                NA                0.2705882   0.1747018   0.3664746
4       6 months    iLiNS_DYADM_LNS             MALAWI                         Control              NA                0.2272727   0.1297325   0.3248130
4       6 months    iLiNS_DYADM_LNS             MALAWI                         LNS                  NA                0.3333333   0.2340867   0.4325800
4       6 months    ki1000304-EU                INDIA                          Control              NA                0.2777778   0.0673236   0.4882320
4       6 months    ki1000304-EU                INDIA                          Zinc                 NA                0.4166667   0.1329585   0.7003749
4       6 months    ki1000304-VITAMIN-A         INDIA                          Control              NA                0.3545455   0.3129656   0.3961253
4       6 months    ki1000304-VITAMIN-A         INDIA                          VitA                 NA                0.2834646   0.2413737   0.3255554
4       6 months    ki1000304b-SAS-CompFeed     INDIA                          Control              NA                0.2380952   0.1566363   0.3195542
4       6 months    ki1000304b-SAS-CompFeed     INDIA                          Other                NA                0.2222222   0.1023450   0.3420994
4       6 months    ki1119695-PROBIT            BELARUS                        Control              NA                0.0627530   0.0389142   0.0865919
4       6 months    ki1119695-PROBIT            BELARUS                        Maternal             NA                0.0598456   0.0427043   0.0769869
4       6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                0.1883117   0.1729122   0.2037111
4       6 months    ki1126311-ZVITAMBO          ZIMBABWE                       VitA                 NA                0.1767241   0.1506451   0.2028031
4       6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                0.3939394   0.3678041   0.4200747
4       6 months    ki1148112-iLiNS-DOSE        MALAWI                         LNS                  NA                0.3258427   0.2676201   0.3840653
4       6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Control              NA                0.2272727   0.1602696   0.2942758
4       6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Maternal             NA                0.2222222   0.1371928   0.3072517
4       6 months    ki1148112-LCNI-5            MALAWI                         Control              NA                0.2758621   0.1124550   0.4392692
4       6 months    ki1148112-LCNI-5            MALAWI                         LNS                  NA                0.5178571   0.3863916   0.6493227
4       6 months    ki1148112-LCNI-5            MALAWI                         Other                NA                0.5000000   0.3069381   0.6930619
4       6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                0.2512479   0.2309868   0.2715091
4       6 months    kiGH5241-JiVitA-3           BANGLADESH                     Maternal             NA                0.2101695   0.1903001   0.2300389
4       6 months    kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                0.2435897   0.1853967   0.3017828
4       6 months    kiGH5241-JiVitA-4           BANGLADESH                     LNS                  NA                0.2428571   0.1733625   0.3123518
4       6 months    kiGH5241-JiVitA-4           BANGLADESH                     Other                NA                0.3004926   0.2481899   0.3527953
4       24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                0.2727273   0.0856386   0.4598160
4       24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                  NA                0.3200000   0.1361746   0.5038254
4       24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                NA                0.4791667   0.3370915   0.6212418
4       24 months   ki1000111-WASH-Kenya        KENYA                          Control              NA                0.2962963   0.2100509   0.3825417
4       24 months   ki1000111-WASH-Kenya        KENYA                          LNS                  NA                0.2771084   0.1806785   0.3735384
4       24 months   ki1000111-WASH-Kenya        KENYA                          Other                NA                0.3243243   0.2487946   0.3998540
4       24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                0.5909091   0.3750812   0.8067370
4       24 months   kiGH5241-JiVitA-4           BANGLADESH                     LNS                  NA                0.4615385   0.1956027   0.7274743
4       24 months   kiGH5241-JiVitA-4           BANGLADESH                     Other                NA                0.5555556   0.3923528   0.7187583
5       Birth       ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                0.1219512   0.1118869   0.1320156
5       Birth       ki1126311-ZVITAMBO          ZIMBABWE                       VitA                 NA                0.1312997   0.1131145   0.1494849
5       Birth       kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                0.2940000   0.2709367   0.3170633
5       Birth       kiGH5241-JiVitA-3           BANGLADESH                     Maternal             NA                0.3036876   0.2804042   0.3269710
5       6 months    iLiNS_DYADM_LNS             MALAWI                         Control              NA                0.2916667   0.1913310   0.3920023
5       6 months    iLiNS_DYADM_LNS             MALAWI                         LNS                  NA                0.3000000   0.2076553   0.3923447
5       6 months    ki1000304-VITAMIN-A         INDIA                          Control              NA                0.3543307   0.3139300   0.3947314
5       6 months    ki1000304-VITAMIN-A         INDIA                          VitA                 NA                0.3333333   0.2922810   0.3743857
5       6 months    ki1000304b-SAS-CompFeed     INDIA                          Control              NA                0.4230769   0.3079988   0.5381551
5       6 months    ki1000304b-SAS-CompFeed     INDIA                          Other                NA                0.2222222   0.1443502   0.3000943
5       6 months    ki1119695-PROBIT            BELARUS                        Control              NA                0.0527273   0.0376415   0.0678130
5       6 months    ki1119695-PROBIT            BELARUS                        Maternal             NA                0.0382409   0.0276578   0.0488240
5       6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                0.1911765   0.1753386   0.2070143
5       6 months    ki1126311-ZVITAMBO          ZIMBABWE                       VitA                 NA                0.1712963   0.1442506   0.1983420
5       6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                0.2105263   0.1888751   0.2321775
5       6 months    ki1148112-iLiNS-DOSE        MALAWI                         LNS                  NA                0.2736842   0.2207383   0.3266301
5       6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Control              NA                0.2916667   0.2250340   0.3582994
5       6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Maternal             NA                0.2857143   0.1981058   0.3733227
5       6 months    ki1148112-LCNI-5            MALAWI                         Control              NA                0.3333333   0.1438646   0.5228021
5       6 months    ki1148112-LCNI-5            MALAWI                         LNS                  NA                0.3508772   0.2264105   0.4753439
5       6 months    ki1148112-LCNI-5            MALAWI                         Other                NA                0.3571429   0.1788440   0.5354418
5       6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                0.2547009   0.2340893   0.2753124
5       6 months    kiGH5241-JiVitA-3           BANGLADESH                     Maternal             NA                0.2352941   0.2148765   0.2557117
5       6 months    kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                0.2439024   0.1779891   0.3098158
5       6 months    kiGH5241-JiVitA-4           BANGLADESH                     LNS                  NA                0.2080537   0.1322789   0.2838285
5       6 months    kiGH5241-JiVitA-4           BANGLADESH                     Other                NA                0.2800000   0.2186708   0.3413292
5       24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                0.5625000   0.3180331   0.8069669
5       24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                  NA                0.4062500   0.2351093   0.5773907
5       24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                NA                0.5000000   0.3441633   0.6558367
5       24 months   ki1000111-WASH-Kenya        KENYA                          Control              NA                0.3076923   0.2188461   0.3965385
5       24 months   ki1000111-WASH-Kenya        KENYA                          LNS                  NA                0.2837838   0.1808999   0.3866677
5       24 months   ki1000111-WASH-Kenya        KENYA                          Other                NA                0.3157895   0.2366642   0.3949148
5       24 months   ki1000304-ZnMort            INDIA                          Control              NA                0.4666667   0.2093900   0.7239433
5       24 months   ki1000304-ZnMort            INDIA                          Zinc                 NA                0.5833333   0.2990801   0.8675866
5       24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                0.3529412   0.3148929   0.3909894
5       24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS                  NA                0.5411765   0.4524631   0.6298898
5       24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                0.3846154   0.1411930   0.6280378
5       24 months   kiGH5241-JiVitA-4           BANGLADESH                     LNS                  NA                0.3888889   0.1635075   0.6142702
5       24 months   kiGH5241-JiVitA-4           BANGLADESH                     Other                NA                0.4800000   0.2710950   0.6889050
6       Birth       ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                0.1209964   0.1115269   0.1304660
6       Birth       ki1126311-ZVITAMBO          ZIMBABWE                       VitA                 NA                0.1116334   0.0957204   0.1275464
6       Birth       kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                0.3161034   0.2936390   0.3385678
6       Birth       kiGH5241-JiVitA-3           BANGLADESH                     Maternal             NA                0.2387755   0.2163777   0.2611733
6       Birth       kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                0.4193548   0.2394169   0.5992928
6       Birth       kiGH5241-JiVitA-4           BANGLADESH                     LNS                  NA                0.3793103   0.1894544   0.5691663
6       Birth       kiGH5241-JiVitA-4           BANGLADESH                     Other                NA                0.2941176   0.1374837   0.4507516
6       6 months    ki1000304-VITAMIN-A         INDIA                          Control              NA                0.3523810   0.3056937   0.3990682
6       6 months    ki1000304-VITAMIN-A         INDIA                          VitA                 NA                0.3663366   0.3201552   0.4125181
6       6 months    ki1000304b-SAS-CompFeed     INDIA                          Control              NA                0.4166667   0.4010480   0.4322853
6       6 months    ki1000304b-SAS-CompFeed     INDIA                          Other                NA                0.2222222   0.1938403   0.2506041
6       6 months    ki1119695-PROBIT            BELARUS                        Control              NA                0.0719424   0.0554531   0.0884318
6       6 months    ki1119695-PROBIT            BELARUS                        Maternal             NA                0.0520000   0.0334634   0.0705366
6       6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                0.1703704   0.1560173   0.1847234
6       6 months    ki1126311-ZVITAMBO          ZIMBABWE                       VitA                 NA                0.1623377   0.1362939   0.1883814
6       6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                0.4285714   0.3925810   0.4645618
6       6 months    ki1148112-iLiNS-DOSE        MALAWI                         LNS                  NA                0.2815534   0.2091130   0.3539938
6       6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Control              NA                0.2800000   0.2166875   0.3433125
6       6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Maternal             NA                0.2222222   0.1435716   0.3008729
6       6 months    ki1148112-LCNI-5            MALAWI                         Control              NA                0.4166667   0.2183338   0.6149995
6       6 months    ki1148112-LCNI-5            MALAWI                         LNS                  NA                0.2558140   0.1246797   0.3869482
6       6 months    ki1148112-LCNI-5            MALAWI                         Other                NA                0.3750000   0.1802410   0.5697590
6       6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                0.2645051   0.2443098   0.2847004
6       6 months    kiGH5241-JiVitA-3           BANGLADESH                     Maternal             NA                0.2182131   0.1984756   0.2379505
6       6 months    kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                0.2017544   0.1142700   0.2892388
6       6 months    kiGH5241-JiVitA-4           BANGLADESH                     LNS                  NA                0.2790698   0.1920087   0.3661309
6       6 months    kiGH5241-JiVitA-4           BANGLADESH                     Other                NA                0.2331606   0.1713971   0.2949241
6       24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                0.6666667   0.4264790   0.9068543
6       24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                  NA                0.5882353   0.3526880   0.8237826
6       24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                NA                0.5000000   0.3477533   0.6522467
6       24 months   ki1000111-WASH-Kenya        KENYA                          Control              NA                0.2127660   0.0953258   0.3302061
6       24 months   ki1000111-WASH-Kenya        KENYA                          LNS                  NA                0.2692308   0.0980999   0.4403616
6       24 months   ki1000111-WASH-Kenya        KENYA                          Other                NA                0.3225806   0.2057882   0.4393731
7       Birth       ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                0.1023102   0.0935146   0.1111059
7       Birth       ki1126311-ZVITAMBO          ZIMBABWE                       VitA                 NA                0.1030928   0.0881125   0.1180731
7       Birth       kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                0.2897727   0.2668174   0.3127281
7       Birth       kiGH5241-JiVitA-3           BANGLADESH                     Maternal             NA                0.2992832   0.2775356   0.3210307
7       6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Control              NA                0.3620690   0.2588473   0.4652907
7       6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Maternal             NA                0.5000000   0.4511533   0.5488467
7       6 months    ki1000304-VITAMIN-A         INDIA                          Control              NA                0.3114754   0.2696158   0.3533350
7       6 months    ki1000304-VITAMIN-A         INDIA                          VitA                 NA                0.3898305   0.3464747   0.4331864
7       6 months    ki1119695-PROBIT            BELARUS                        Control              NA                0.0608309   0.0456868   0.0759750
7       6 months    ki1119695-PROBIT            BELARUS                        Maternal             NA                0.0463768   0.0384666   0.0542870
7       6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                0.1835443   0.1681247   0.1989639
7       6 months    ki1126311-ZVITAMBO          ZIMBABWE                       VitA                 NA                0.1887202   0.1620974   0.2153430
7       6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                0.3636364   0.3334500   0.3938227
7       6 months    ki1148112-iLiNS-DOSE        MALAWI                         LNS                  NA                0.2880000   0.2202664   0.3557336
7       6 months    ki1148112-LCNI-5            MALAWI                         Control              NA                0.2631579   0.0637677   0.4625481
7       6 months    ki1148112-LCNI-5            MALAWI                         LNS                  NA                0.5588235   0.3907539   0.7268931
7       6 months    ki1148112-LCNI-5            MALAWI                         Other                NA                0.4210526   0.1974916   0.6446137
7       6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                0.2475248   0.2271530   0.2678965
7       6 months    kiGH5241-JiVitA-3           BANGLADESH                     Maternal             NA                0.2594340   0.2405184   0.2783496
7       6 months    kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                0.2522936   0.1862279   0.3183593
7       6 months    kiGH5241-JiVitA-4           BANGLADESH                     LNS                  NA                0.3117409   0.2485373   0.3749445
7       6 months    kiGH5241-JiVitA-4           BANGLADESH                     Other                NA                0.2982005   0.2468395   0.3495615
7       24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                0.5333333   0.2789313   0.7877353
7       24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                  NA                0.5000000   0.2894661   0.7105339
7       24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                NA                0.4137931   0.2331666   0.5944196
7       24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                0.4523810   0.3362059   0.5685560
7       24 months   kiGH5241-JiVitA-4           BANGLADESH                     LNS                  NA                0.4591837   0.3515848   0.5667825
7       24 months   kiGH5241-JiVitA-4           BANGLADESH                     Other                NA                0.4353742   0.3490723   0.5216760
8       Birth       ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                0.0868167   0.0788753   0.0947581
8       Birth       ki1126311-ZVITAMBO          ZIMBABWE                       VitA                 NA                0.0699454   0.0576064   0.0822843
8       Birth       kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                0.3299101   0.3104226   0.3493977
8       Birth       kiGH5241-JiVitA-3           BANGLADESH                     Maternal             NA                0.2946927   0.2752418   0.3141437
8       6 months    iLiNS_DYADM_LNS             MALAWI                         Control              NA                0.3448276   0.2619026   0.4277526
8       6 months    iLiNS_DYADM_LNS             MALAWI                         LNS                  NA                0.2500000   0.1706434   0.3293566
8       6 months    ki1000304-EU                INDIA                          Control              NA                0.4285714   0.1655621   0.6915808
8       6 months    ki1000304-EU                INDIA                          Zinc                 NA                0.3809524   0.1702204   0.5916843
8       6 months    ki1000304-VITAMIN-A         INDIA                          Control              NA                0.3728814   0.3342614   0.4115014
8       6 months    ki1000304-VITAMIN-A         INDIA                          VitA                 NA                0.2800000   0.2469892   0.3130108
8       6 months    ki1119695-PROBIT            BELARUS                        Control              NA                0.0698630   0.0524826   0.0872434
8       6 months    ki1119695-PROBIT            BELARUS                        Maternal             NA                0.0494905   0.0382799   0.0607011
8       6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                0.1097561   0.0985398   0.1209724
8       6 months    ki1126311-ZVITAMBO          ZIMBABWE                       VitA                 NA                0.1417910   0.1191621   0.1644200
8       6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                0.2608696   0.2289969   0.2927422
8       6 months    ki1148112-iLiNS-DOSE        MALAWI                         LNS                  NA                0.3271028   0.2536531   0.4005525
8       6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Control              NA                0.3448276   0.2887732   0.4008820
8       6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Maternal             NA                0.2622951   0.1870578   0.3375324
8       6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                0.2358491   0.2168709   0.2548272
8       6 months    kiGH5241-JiVitA-3           BANGLADESH                     Maternal             NA                0.2356164   0.2168283   0.2544046
8       6 months    kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                0.2411348   0.1640102   0.3182593
8       6 months    kiGH5241-JiVitA-4           BANGLADESH                     LNS                  NA                0.1785714   0.1142233   0.2429196
8       6 months    kiGH5241-JiVitA-4           BANGLADESH                     Other                NA                0.2047244   0.1463466   0.2631022
8       24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                0.5000000   0.3312991   0.6687009
8       24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                  NA                0.3235294   0.1656851   0.4813737
8       24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                NA                0.4461538   0.3248521   0.5674556
8       24 months   ki1000304-EU                INDIA                          Control              NA                0.6428571   0.3872580   0.8984563
8       24 months   ki1000304-EU                INDIA                          Zinc                 NA                0.6428571   0.3872580   0.8984563
8       24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                0.3720930   0.2266911   0.5174950
8       24 months   kiGH5241-JiVitA-4           BANGLADESH                     LNS                  NA                0.5000000   0.2999577   0.7000423
8       24 months   kiGH5241-JiVitA-4           BANGLADESH                     Other                NA                0.3333333   0.2270932   0.4395735
9       Birth       ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                0.0683230   0.0615623   0.0750837
9       Birth       ki1126311-ZVITAMBO          ZIMBABWE                       VitA                 NA                0.0615540   0.0502555   0.0728524
9       Birth       kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                0.3113402   0.2937653   0.3289152
9       Birth       kiGH5241-JiVitA-3           BANGLADESH                     Maternal             NA                0.2764771   0.2590060   0.2939483
9       6 months    iLiNS_DYADM_LNS             MALAWI                         Control              NA                0.3500000   0.2597307   0.4402693
9       6 months    iLiNS_DYADM_LNS             MALAWI                         LNS                  NA                0.2307692   0.1664822   0.2950563
9       6 months    ki1000304-VITAMIN-A         INDIA                          Control              NA                0.3980583   0.3504453   0.4456712
9       6 months    ki1000304-VITAMIN-A         INDIA                          VitA                 NA                0.3725490   0.3257499   0.4193481
9       6 months    ki1112895-Guatemala BSC     GUATEMALA                      Control              NA                0.3125000   0.1803374   0.4446626
9       6 months    ki1112895-Guatemala BSC     GUATEMALA                      Other                NA                0.4166667   0.2949274   0.5384059
9       6 months    ki1119695-PROBIT            BELARUS                        Control              NA                0.0774194   0.0629628   0.0918760
9       6 months    ki1119695-PROBIT            BELARUS                        Maternal             NA                0.0535211   0.0395029   0.0675394
9       6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                0.0930233   0.0823189   0.1037277
9       6 months    ki1126311-ZVITAMBO          ZIMBABWE                       VitA                 NA                0.1482890   0.1253857   0.1711922
9       6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                0.3043478   0.2719501   0.3367456
9       6 months    ki1148112-iLiNS-DOSE        MALAWI                         LNS                  NA                0.3423423   0.2689482   0.4157365
9       6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Control              NA                0.3500000   0.2867641   0.4132359
9       6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Maternal             NA                0.1666667   0.1092585   0.2240748
9       6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                0.2314578   0.2136358   0.2492798
9       6 months    kiGH5241-JiVitA-3           BANGLADESH                     Maternal             NA                0.2365729   0.2185033   0.2546425
9       6 months    kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                0.2527473   0.1501590   0.3553356
9       6 months    kiGH5241-JiVitA-4           BANGLADESH                     LNS                  NA                0.2377049   0.1639915   0.3114183
9       6 months    kiGH5241-JiVitA-4           BANGLADESH                     Other                NA                0.2486772   0.1839055   0.3134490
9       24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                0.3703704   0.2412943   0.4994465
9       24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                  NA                0.4655172   0.3368693   0.5941652
9       24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                NA                0.4214876   0.3333141   0.5096611
9       24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                0.5121951   0.3447035   0.6796868
9       24 months   kiGH5241-JiVitA-4           BANGLADESH                     LNS                  NA                0.2093023   0.0851537   0.3334509
9       24 months   kiGH5241-JiVitA-4           BANGLADESH                     Other                NA                0.2982456   0.1708012   0.4256900
10      Birth       ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                0.0739300   0.0660361   0.0818238
10      Birth       ki1126311-ZVITAMBO          ZIMBABWE                       VitA                 NA                0.0840764   0.0694449   0.0987080
10      Birth       kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                0.3576779   0.3390342   0.3763216
10      Birth       kiGH5241-JiVitA-3           BANGLADESH                     Maternal             NA                0.3222749   0.3058992   0.3386506
10      6 months    ki1000304-VITAMIN-A         INDIA                          Control              NA                0.3880597   0.3294984   0.4466211
10      6 months    ki1000304-VITAMIN-A         INDIA                          VitA                 NA                0.3432836   0.2862248   0.4003424
10      6 months    ki1000304b-SAS-CompFeed     INDIA                          Control              NA                0.2000000   0.1769364   0.2230636
10      6 months    ki1000304b-SAS-CompFeed     INDIA                          Other                NA                0.3333333   0.2468278   0.4198388
10      6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              NA                0.1063830   0.0179935   0.1947725
10      6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                NA                0.1111111   0.0190377   0.2031845
10      6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                 NA                0.1208791   0.0537181   0.1880401
10      6 months    ki1119695-PROBIT            BELARUS                        Control              NA                0.0740741   0.0555371   0.0926110
10      6 months    ki1119695-PROBIT            BELARUS                        Maternal             NA                0.0668287   0.0569421   0.0767153
10      6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                0.1653543   0.1505294   0.1801792
10      6 months    ki1126311-ZVITAMBO          ZIMBABWE                       VitA                 NA                0.1662763   0.1390323   0.1935203
10      6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                0.5714286   0.5321940   0.6106632
10      6 months    ki1148112-iLiNS-DOSE        MALAWI                         LNS                  NA                0.3291139   0.2406179   0.4176099
10      6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                0.2860759   0.2671081   0.3050438
10      6 months    kiGH5241-JiVitA-3           BANGLADESH                     Maternal             NA                0.2482759   0.2294611   0.2670906
10      6 months    kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                0.2537313   0.1596032   0.3478595
10      6 months    kiGH5241-JiVitA-4           BANGLADESH                     LNS                  NA                0.2676056   0.1525692   0.3826421
10      6 months    kiGH5241-JiVitA-4           BANGLADESH                     Other                NA                0.3023256   0.2193356   0.3853155
10      24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                0.2666667   0.1078797   0.4254537
10      24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                  NA                0.2368421   0.1012029   0.3724814
10      24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                NA                0.3461538   0.2402125   0.4520952
10      24 months   ki1000111-WASH-Kenya        KENYA                          Control              NA                0.4347826   0.3175770   0.5519882
10      24 months   ki1000111-WASH-Kenya        KENYA                          LNS                  NA                0.4428571   0.3262581   0.5594562
10      24 months   ki1000111-WASH-Kenya        KENYA                          Other                NA                0.3796296   0.2879184   0.4713409
10      24 months   ki1119695-PROBIT            BELARUS                        Control              NA                0.1666667   0.0787802   0.2545532
10      24 months   ki1119695-PROBIT            BELARUS                        Maternal             NA                0.1764706   0.0928565   0.2600847
11      Birth       ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                0.0851064   0.0770039   0.0932089
11      Birth       ki1126311-ZVITAMBO          ZIMBABWE                       VitA                 NA                0.0833333   0.0693837   0.0972829
11      Birth       kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                0.3939394   0.3765394   0.4113394
11      Birth       kiGH5241-JiVitA-3           BANGLADESH                     Maternal             NA                0.3395005   0.3220823   0.3569187
11      6 months    iLiNS_DYADM_LNS             MALAWI                         Control              NA                0.1891892   0.1220025   0.2563759
11      6 months    iLiNS_DYADM_LNS             MALAWI                         LNS                  NA                0.1818182   0.1193333   0.2443031
11      6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Control              NA                0.3838384   0.3332574   0.4344194
11      6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Maternal             NA                0.2022472   0.1626359   0.2418585
11      6 months    ki1000304-EU                INDIA                          Control              NA                0.5000000   0.2780778   0.7219222
11      6 months    ki1000304-EU                INDIA                          Zinc                 NA                0.3000000   0.0966049   0.5033951
11      6 months    ki1000304-VITAMIN-A         INDIA                          Control              NA                0.3456790   0.2924137   0.3989443
11      6 months    ki1000304-VITAMIN-A         INDIA                          VitA                 NA                0.3506494   0.2985429   0.4027558
11      6 months    ki1000304b-SAS-CompFeed     INDIA                          Control              NA                0.2400000   0.1789973   0.3010027
11      6 months    ki1000304b-SAS-CompFeed     INDIA                          Other                NA                0.2884615   0.2279886   0.3489345
11      6 months    ki1119695-PROBIT            BELARUS                        Control              NA                0.0907618   0.0706628   0.1108607
11      6 months    ki1119695-PROBIT            BELARUS                        Maternal             NA                0.0558376   0.0426092   0.0690659
11      6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                0.1352941   0.1222580   0.1483302
11      6 months    ki1126311-ZVITAMBO          ZIMBABWE                       VitA                 NA                0.1776447   0.1526370   0.2026524
11      6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                0.4736842   0.4324690   0.5148994
11      6 months    ki1148112-iLiNS-DOSE        MALAWI                         LNS                  NA                0.2941176   0.2145660   0.3736693
11      6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Control              NA                0.1891892   0.1473111   0.2310672
11      6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Maternal             NA                0.2133333   0.1509695   0.2756972
11      6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                0.3063170   0.2882656   0.3243685
11      6 months    kiGH5241-JiVitA-3           BANGLADESH                     Maternal             NA                0.2688297   0.2510041   0.2866552
11      6 months    kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                0.1470588   0.0088517   0.2852660
11      6 months    kiGH5241-JiVitA-4           BANGLADESH                     LNS                  NA                0.2250000   0.0808375   0.3691625
11      6 months    kiGH5241-JiVitA-4           BANGLADESH                     Other                NA                0.2638889   0.1497113   0.3780665
11      24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                0.4838710   0.3072925   0.6604494
11      24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                  NA                0.2500000   0.1080210   0.3919790
11      24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                NA                0.2835821   0.1752493   0.3919149
11      24 months   ki1000111-WASH-Kenya        KENYA                          Control              NA                0.2352941   0.1449622   0.3256261
11      24 months   ki1000111-WASH-Kenya        KENYA                          LNS                  NA                0.2272727   0.1032336   0.3513118
11      24 months   ki1000111-WASH-Kenya        KENYA                          Other                NA                0.2857143   0.2158127   0.3556159
12      Birth       ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                0.0870968   0.0793402   0.0948534
12      Birth       ki1126311-ZVITAMBO          ZIMBABWE                       VitA                 NA                0.1026455   0.0880693   0.1172217
12      Birth       kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                0.3820537   0.3644566   0.3996507
12      Birth       kiGH5241-JiVitA-3           BANGLADESH                     Maternal             NA                0.3585727   0.3413003   0.3758451
12      6 months    iLiNS_DYADM_LNS             MALAWI                         Control              NA                0.2553191   0.1946033   0.3160350
12      6 months    iLiNS_DYADM_LNS             MALAWI                         LNS                  NA                0.2400000   0.1786628   0.3013372
12      6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Control              NA                0.2602740   0.2097730   0.3107750
12      6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Maternal             NA                0.2739726   0.2226417   0.3253035
12      6 months    ki1000304-VITAMIN-A         INDIA                          Control              NA                0.3953488   0.3200919   0.4706057
12      6 months    ki1000304-VITAMIN-A         INDIA                          VitA                 NA                0.3658537   0.2934585   0.4382489
12      6 months    ki1000304b-SAS-CompFeed     INDIA                          Control              NA                0.2857143   0.2055205   0.3659080
12      6 months    ki1000304b-SAS-CompFeed     INDIA                          Other                NA                0.2972973   0.2275905   0.3670041
12      6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Control              NA                0.3571429   0.2926648   0.4216209
12      6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Other                NA                0.3170732   0.2099142   0.4242322
12      6 months    ki1119695-PROBIT            BELARUS                        Control              NA                0.0664011   0.0474368   0.0853653
12      6 months    ki1119695-PROBIT            BELARUS                        Maternal             NA                0.0471584   0.0361659   0.0581509
12      6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                0.1421569   0.1297274   0.1545863
12      6 months    ki1126311-ZVITAMBO          ZIMBABWE                       VitA                 NA                0.1389365   0.1181247   0.1597483
12      6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                0.3333333   0.3022243   0.3644424
12      6 months    ki1148112-iLiNS-DOSE        MALAWI                         LNS                  NA                0.3196721   0.2502850   0.3890593
12      6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Control              NA                0.2553191   0.2114312   0.2992071
12      6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Maternal             NA                0.2298851   0.1722665   0.2875036
12      6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                0.2669963   0.2493364   0.2846562
12      6 months    kiGH5241-JiVitA-3           BANGLADESH                     Maternal             NA                0.2627907   0.2457496   0.2798318
12      6 months    kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                0.2380952   0.0575237   0.4186668
12      6 months    kiGH5241-JiVitA-4           BANGLADESH                     LNS                  NA                0.3500000   0.1277467   0.5722533
12      6 months    kiGH5241-JiVitA-4           BANGLADESH                     Other                NA                0.2285714   0.0939813   0.3631615
12      24 months   ki1000107-Serrinha-VitA     BRAZIL                         Control              NA                0.4366197   0.3738540   0.4993854
12      24 months   ki1000107-Serrinha-VitA     BRAZIL                         VitA                 NA                0.4333333   0.3756844   0.4909823
12      24 months   ki1000111-WASH-Kenya        KENYA                          Control              NA                0.4027778   0.2891706   0.5163850
12      24 months   ki1000111-WASH-Kenya        KENYA                          LNS                  NA                0.2000000   0.0756913   0.3243087
12      24 months   ki1000111-WASH-Kenya        KENYA                          Other                NA                0.3181818   0.2054954   0.4308682
12      24 months   ki1119695-PROBIT            BELARUS                        Control              NA                0.2391304   0.1627629   0.3154980
12      24 months   ki1119695-PROBIT            BELARUS                        Maternal             NA                0.1875000   0.0917252   0.2832748


### Parameter: E(Y)


month   agecat      studyid                     country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------  ----------  --------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
1       Birth       ki1126311-ZVITAMBO          ZIMBABWE                       NA                   NA                0.1287202   0.1108095   0.1466309
1       Birth       kiGH5241-JiVitA-3           BANGLADESH                     NA                   NA                0.3619502   0.3360269   0.3878734
1       6 months    ki1000125-AgaKhanUniv       PAKISTAN                       NA                   NA                0.3392857   0.2674766   0.4110948
1       6 months    ki1000304-EU                INDIA                          NA                   NA                0.3243243   0.1714073   0.4772413
1       6 months    ki1000304-VITAMIN-A         INDIA                          NA                   NA                0.3219697   0.2655017   0.3784377
1       6 months    ki1000304b-SAS-CompFeed     INDIA                          NA                   NA                0.2741935   0.1464943   0.4018928
1       6 months    ki1000304b-SAS-FoodSuppl    INDIA                          NA                   NA                0.5178571   0.3858007   0.6499136
1       6 months    ki1119695-PROBIT            BELARUS                        NA                   NA                0.0896552   0.0628477   0.1164627
1       6 months    ki1126311-ZVITAMBO          ZIMBABWE                       NA                   NA                0.1689373   0.1418120   0.1960627
1       6 months    ki1148112-iLiNS-DOSE        MALAWI                         NA                   NA                0.3149171   0.2470622   0.3827721
1       6 months    kiGH5241-JiVitA-3           BANGLADESH                     NA                   NA                0.2630015   0.2346336   0.2913693
1       24 months   ki1000111-WASH-Kenya        KENYA                          NA                   NA                0.3424242   0.2911493   0.3936992
1       24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   NA                   NA                0.3588850   0.3032932   0.4144768
1       24 months   ki1148112-iLiNS-DOSE        MALAWI                         NA                   NA                0.4776119   0.3571055   0.5981184
2       Birth       ki1126311-ZVITAMBO          ZIMBABWE                       NA                   NA                0.1486486   0.1269760   0.1703213
2       Birth       kiGH5241-JiVitA-3           BANGLADESH                     NA                   NA                0.3101023   0.2821651   0.3380395
2       Birth       kiGH5241-JiVitA-4           BANGLADESH                     NA                   NA                0.2923077   0.2072537   0.3773617
2       6 months    ki1000304-VITAMIN-A         INDIA                          NA                   NA                0.3163265   0.2510551   0.3815979
2       6 months    ki1000304b-SAS-CompFeed     INDIA                          NA                   NA                0.2835821   0.0903268   0.4768374
2       6 months    ki1119695-PROBIT            BELARUS                        NA                   NA                0.0823389   0.0515361   0.1131417
2       6 months    ki1126311-ZVITAMBO          ZIMBABWE                       NA                   NA                0.1647287   0.1326923   0.1967650
2       6 months    ki1148112-iLiNS-DOSE        MALAWI                         NA                   NA                0.2780488   0.2165669   0.3395307
2       6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         NA                   NA                0.1971831   0.1039775   0.2903887
2       6 months    ki1148112-LCNI-5            MALAWI                         NA                   NA                0.3421053   0.2546337   0.4295768
2       6 months    kiGH5241-JiVitA-3           BANGLADESH                     NA                   NA                0.2489451   0.2180189   0.2798714
2       6 months    kiGH5241-JiVitA-4           BANGLADESH                     NA                   NA                0.1890244   0.1259573   0.2520915
2       24 months   ki1000111-WASH-Kenya        KENYA                          NA                   NA                0.2631579   0.2003792   0.3259366
2       24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   NA                   NA                0.3306233   0.2825586   0.3786880
2       24 months   ki1148112-iLiNS-DOSE        MALAWI                         NA                   NA                0.4509804   0.3539383   0.5480225
3       Birth       ki1126311-ZVITAMBO          ZIMBABWE                       NA                   NA                0.1192982   0.1004740   0.1381225
3       Birth       kiGH5241-JiVitA-3           BANGLADESH                     NA                   NA                0.2941805   0.2689076   0.3194533
3       Birth       kiGH5241-JiVitA-4           BANGLADESH                     NA                   NA                0.3620690   0.2864010   0.4377369
3       6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     NA                   NA                0.1904762   0.1150075   0.2659448
3       6 months    ki1000304-EU                INDIA                          NA                   NA                0.3939394   0.2246437   0.5632351
3       6 months    ki1000304-VITAMIN-A         INDIA                          NA                   NA                0.3641026   0.2963926   0.4318125
3       6 months    ki1119695-PROBIT            BELARUS                        NA                   NA                0.0582524   0.0362599   0.0802450
3       6 months    ki1126311-ZVITAMBO          ZIMBABWE                       NA                   NA                0.2148997   0.1844059   0.2453936
3       6 months    ki1148112-iLiNS-DOSE        MALAWI                         NA                   NA                0.2422907   0.1864291   0.2981524
3       6 months    ki1148112-LCNI-5            MALAWI                         NA                   NA                0.3571429   0.2617885   0.4524972
3       6 months    kiGH5241-JiVitA-3           BANGLADESH                     NA                   NA                0.2297393   0.2038154   0.2556631
3       6 months    kiGH5241-JiVitA-4           BANGLADESH                     NA                   NA                0.2465116   0.2041664   0.2888569
3       24 months   ki1000111-WASH-Kenya        KENYA                          NA                   NA                0.2395833   0.1790513   0.3001154
3       24 months   ki1000304-EU                INDIA                          NA                   NA                0.5384615   0.3430459   0.7338772
3       24 months   ki1148112-iLiNS-DOSE        MALAWI                         NA                   NA                0.4615385   0.3585454   0.5645316
4       Birth       ki1126311-ZVITAMBO          ZIMBABWE                       NA                   NA                0.1102284   0.0908760   0.1295808
4       Birth       kiGH5241-JiVitA-3           BANGLADESH                     NA                   NA                0.2749267   0.2463333   0.3035201
4       Birth       kiGH5241-JiVitA-4           BANGLADESH                     NA                   NA                0.2893082   0.2158682   0.3627482
4       6 months    iLiNS_DYADM_LNS             MALAWI                         NA                   NA                0.2750000   0.1348635   0.4151365
4       6 months    ki1000304-EU                INDIA                          NA                   NA                0.3333333   0.1617627   0.5049039
4       6 months    ki1000304-VITAMIN-A         INDIA                          NA                   NA                0.3164557   0.2571178   0.3757936
4       6 months    ki1000304b-SAS-CompFeed     INDIA                          NA                   NA                0.2291667   0.0841998   0.3741335
4       6 months    ki1119695-PROBIT            BELARUS                        NA                   NA                0.0612648   0.0318318   0.0906978
4       6 months    ki1126311-ZVITAMBO          ZIMBABWE                       NA                   NA                0.1796117   0.1493228   0.2099005
4       6 months    ki1148112-iLiNS-DOSE        MALAWI                         NA                   NA                0.3364929   0.2725858   0.4004000
4       6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         NA                   NA                0.2241379   0.1158798   0.3323961
4       6 months    ki1148112-LCNI-5            MALAWI                         NA                   NA                0.4504505   0.3574728   0.5434281
4       6 months    kiGH5241-JiVitA-3           BANGLADESH                     NA                   NA                0.2308984   0.2025122   0.2592846
4       6 months    kiGH5241-JiVitA-4           BANGLADESH                     NA                   NA                0.2705882   0.2360749   0.3051015
4       24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     NA                   NA                0.3894737   0.2908967   0.4880506
4       24 months   ki1000111-WASH-Kenya        KENYA                          NA                   NA                0.3038348   0.2548045   0.3528651
4       24 months   kiGH5241-JiVitA-4           BANGLADESH                     NA                   NA                0.5492958   0.4318958   0.6666957
5       Birth       ki1126311-ZVITAMBO          ZIMBABWE                       NA                   NA                0.1290000   0.1082141   0.1497859
5       Birth       kiGH5241-JiVitA-3           BANGLADESH                     NA                   NA                0.2986472   0.2658678   0.3314267
5       6 months    iLiNS_DYADM_LNS             MALAWI                         NA                   NA                0.2954545   0.1590862   0.4318229
5       6 months    ki1000304-VITAMIN-A         INDIA                          NA                   NA                0.3435115   0.2858996   0.4011233
5       6 months    ki1000304b-SAS-CompFeed     INDIA                          NA                   NA                0.3207547   0.1379694   0.5035400
5       6 months    ki1119695-PROBIT            BELARUS                        NA                   NA                0.0456664   0.0269261   0.0644067
5       6 months    ki1126311-ZVITAMBO          ZIMBABWE                       NA                   NA                0.1760563   0.1447068   0.2074059
5       6 months    ki1148112-iLiNS-DOSE        MALAWI                         NA                   NA                0.2631579   0.2058743   0.3204415
5       6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         NA                   NA                0.2878788   0.1778077   0.3979499
5       6 months    ki1148112-LCNI-5            MALAWI                         NA                   NA                0.3486239   0.2587506   0.4384972
5       6 months    kiGH5241-JiVitA-3           BANGLADESH                     NA                   NA                0.2452007   0.2161917   0.2742097
5       6 months    kiGH5241-JiVitA-4           BANGLADESH                     NA                   NA                0.2517007   0.2124576   0.2909438
5       24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     NA                   NA                0.4772727   0.3723162   0.5822292
5       24 months   ki1000111-WASH-Kenya        KENYA                          NA                   NA                0.3054662   0.2541924   0.3567400
5       24 months   ki1000304-ZnMort            INDIA                          NA                   NA                0.5185185   0.3264601   0.7105769
5       24 months   ki1148112-iLiNS-DOSE        MALAWI                         NA                   NA                0.5098039   0.4123108   0.6072970
5       24 months   kiGH5241-JiVitA-4           BANGLADESH                     NA                   NA                0.4285714   0.2964253   0.5607176
6       Birth       ki1126311-ZVITAMBO          ZIMBABWE                       NA                   NA                0.1139576   0.0954387   0.1324765
6       Birth       kiGH5241-JiVitA-3           BANGLADESH                     NA                   NA                0.2779456   0.2460179   0.3098734
6       Birth       kiGH5241-JiVitA-4           BANGLADESH                     NA                   NA                0.3617021   0.2607622   0.4626420
6       6 months    ki1000304-VITAMIN-A         INDIA                          NA                   NA                0.3592233   0.2935473   0.4248993
6       6 months    ki1000304b-SAS-CompFeed     INDIA                          NA                   NA                0.3194444   0.2395434   0.3993454
6       6 months    ki1119695-PROBIT            BELARUS                        NA                   NA                0.0625000   0.0375561   0.0874439
6       6 months    ki1126311-ZVITAMBO          ZIMBABWE                       NA                   NA                0.1641541   0.1344160   0.1938923
6       6 months    ki1148112-iLiNS-DOSE        MALAWI                         NA                   NA                0.3064516   0.2249784   0.3879248
6       6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         NA                   NA                0.2428571   0.1416787   0.3440356
6       6 months    ki1148112-LCNI-5            MALAWI                         NA                   NA                0.3296703   0.2325498   0.4267908
6       6 months    kiGH5241-JiVitA-3           BANGLADESH                     NA                   NA                0.2414384   0.2131538   0.2697229
6       6 months    kiGH5241-JiVitA-4           BANGLADESH                     NA                   NA                0.2385321   0.1943173   0.2827469
6       24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     NA                   NA                0.5540541   0.4400281   0.6680800
6       24 months   ki1000111-WASH-Kenya        KENYA                          NA                   NA                0.2740741   0.1985517   0.3495965
7       Birth       ki1126311-ZVITAMBO          ZIMBABWE                       NA                   NA                0.1028912   0.0855195   0.1202628
7       Birth       kiGH5241-JiVitA-3           BANGLADESH                     NA                   NA                0.2946593   0.2630286   0.3262900
7       6 months    ki1000125-AgaKhanUniv       PAKISTAN                       NA                   NA                0.3857143   0.2708615   0.5005671
7       6 months    ki1000304-VITAMIN-A         INDIA                          NA                   NA                0.3500000   0.2895300   0.4104700
7       6 months    ki1119695-PROBIT            BELARUS                        NA                   NA                0.0535191   0.0352254   0.0718128
7       6 months    ki1126311-ZVITAMBO          ZIMBABWE                       NA                   NA                0.1873990   0.1566327   0.2181654
7       6 months    ki1148112-iLiNS-DOSE        MALAWI                         NA                   NA                0.2993197   0.2250350   0.3736044
7       6 months    ki1148112-LCNI-5            MALAWI                         NA                   NA                0.4444444   0.3288621   0.5600268
7       6 months    kiGH5241-JiVitA-3           BANGLADESH                     NA                   NA                0.2536232   0.2258402   0.2814061
7       6 months    kiGH5241-JiVitA-4           BANGLADESH                     NA                   NA                0.2903981   0.2561211   0.3246752
7       24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     NA                   NA                0.4696970   0.3483686   0.5910253
7       24 months   kiGH5241-JiVitA-4           BANGLADESH                     NA                   NA                0.4468085   0.3885515   0.5050655
8       Birth       ki1126311-ZVITAMBO          ZIMBABWE                       NA                   NA                0.0742251   0.0595457   0.0889045
8       Birth       kiGH5241-JiVitA-3           BANGLADESH                     NA                   NA                0.3130435   0.2854544   0.3406325
8       6 months    iLiNS_DYADM_LNS             MALAWI                         NA                   NA                0.2950820   0.1796800   0.4104839
8       6 months    ki1000304-EU                INDIA                          NA                   NA                0.4000000   0.2353301   0.5646699
8       6 months    ki1000304-VITAMIN-A         INDIA                          NA                   NA                0.3302752   0.2792217   0.3813287
8       6 months    ki1119695-PROBIT            BELARUS                        NA                   NA                0.0599859   0.0382770   0.0816948
8       6 months    ki1126311-ZVITAMBO          ZIMBABWE                       NA                   NA                0.1342857   0.1090095   0.1595619
8       6 months    ki1148112-iLiNS-DOSE        MALAWI                         NA                   NA                0.3153846   0.2351989   0.3955703
8       6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         NA                   NA                0.2888889   0.1947244   0.3830534
8       6 months    kiGH5241-JiVitA-3           BANGLADESH                     NA                   NA                0.2357337   0.2090359   0.2624315
8       6 months    kiGH5241-JiVitA-4           BANGLADESH                     NA                   NA                0.2074766   0.1691154   0.2458379
8       24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     NA                   NA                0.4285714   0.3441498   0.5129931
8       24 months   ki1000304-EU                INDIA                          NA                   NA                0.6428571   0.4621212   0.8235930
8       24 months   kiGH5241-JiVitA-4           BANGLADESH                     NA                   NA                0.3790850   0.2986530   0.4595169
9       Birth       ki1126311-ZVITAMBO          ZIMBABWE                       NA                   NA                0.0632140   0.0500464   0.0763817
9       Birth       kiGH5241-JiVitA-3           BANGLADESH                     NA                   NA                0.2945903   0.2697560   0.3194245
9       6 months    iLiNS_DYADM_LNS             MALAWI                         NA                   NA                0.3030303   0.1913076   0.4147530
9       6 months    ki1000304-VITAMIN-A         INDIA                          NA                   NA                0.3853659   0.3185810   0.4521507
9       6 months    ki1112895-Guatemala BSC     GUATEMALA                      NA                   NA                0.3571429   0.1764070   0.5378788
9       6 months    ki1119695-PROBIT            BELARUS                        NA                   NA                0.0646617   0.0435926   0.0857307
9       6 months    ki1126311-ZVITAMBO          ZIMBABWE                       NA                   NA                0.1346705   0.1093275   0.1600135
9       6 months    ki1148112-iLiNS-DOSE        MALAWI                         NA                   NA                0.3358209   0.2555573   0.4160845
9       6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         NA                   NA                0.2446809   0.1573089   0.3320528
9       6 months    kiGH5241-JiVitA-3           BANGLADESH                     NA                   NA                0.2340153   0.2086361   0.2593946
9       6 months    kiGH5241-JiVitA-4           BANGLADESH                     NA                   NA                0.2462687   0.2018923   0.2906450
9       24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     NA                   NA                0.4206009   0.3570783   0.4841234
9       24 months   kiGH5241-JiVitA-4           BANGLADESH                     NA                   NA                0.3333333   0.2503957   0.4162710
10      Birth       ki1126311-ZVITAMBO          ZIMBABWE                       NA                   NA                0.0815739   0.0649466   0.0982011
10      Birth       kiGH5241-JiVitA-3           BANGLADESH                     NA                   NA                0.3400848   0.3151049   0.3650647
10      6 months    ki1000304-VITAMIN-A         INDIA                          NA                   NA                0.3656716   0.2838205   0.4475228
10      6 months    ki1000304b-SAS-CompFeed     INDIA                          NA                   NA                0.2619048   0.1534932   0.3703164
10      6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1147541   0.0684490   0.1610592
10      6 months    ki1119695-PROBIT            BELARUS                        NA                   NA                0.0701639   0.0488756   0.0914522
10      6 months    ki1126311-ZVITAMBO          ZIMBABWE                       NA                   NA                0.1660650   0.1350486   0.1970813
10      6 months    ki1148112-iLiNS-DOSE        MALAWI                         NA                   NA                0.3655914   0.2671820   0.4640008
10      6 months    kiGH5241-JiVitA-3           BANGLADESH                     NA                   NA                0.2662651   0.2394604   0.2930697
10      6 months    kiGH5241-JiVitA-4           BANGLADESH                     NA                   NA                0.2808989   0.2251243   0.3366735
10      24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     NA                   NA                0.3013699   0.2266841   0.3760556
10      24 months   ki1000111-WASH-Kenya        KENYA                          NA                   NA                0.4129555   0.3514282   0.4744827
10      24 months   ki1119695-PROBIT            BELARUS                        NA                   NA                0.1717172   0.0508670   0.2925674
11      Birth       ki1126311-ZVITAMBO          ZIMBABWE                       NA                   NA                0.0837743   0.0676422   0.0999063
11      Birth       kiGH5241-JiVitA-3           BANGLADESH                     NA                   NA                0.3668203   0.3421195   0.3915211
11      6 months    iLiNS_DYADM_LNS             MALAWI                         NA                   NA                0.1857143   0.0939583   0.2774703
11      6 months    ki1000125-AgaKhanUniv       PAKISTAN                       NA                   NA                0.2978723   0.2323257   0.3634190
11      6 months    ki1000304-EU                INDIA                          NA                   NA                0.4000000   0.2462478   0.5537522
11      6 months    ki1000304-VITAMIN-A         INDIA                          NA                   NA                0.3481013   0.2735867   0.4226158
11      6 months    ki1000304b-SAS-CompFeed     INDIA                          NA                   NA                0.2727273   0.1871708   0.3582838
11      6 months    ki1119695-PROBIT            BELARUS                        NA                   NA                0.0711744   0.0456616   0.0966872
11      6 months    ki1126311-ZVITAMBO          ZIMBABWE                       NA                   NA                0.1669151   0.1386791   0.1951510
11      6 months    ki1148112-iLiNS-DOSE        MALAWI                         NA                   NA                0.3269231   0.2363322   0.4175140
11      6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         NA                   NA                0.2053571   0.1302074   0.2805069
11      6 months    kiGH5241-JiVitA-3           BANGLADESH                     NA                   NA                0.2873090   0.2619197   0.3126984
11      6 months    kiGH5241-JiVitA-4           BANGLADESH                     NA                   NA                0.2260274   0.1498519   0.3022029
11      24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     NA                   NA                0.3208955   0.2415591   0.4002319
11      24 months   ki1000111-WASH-Kenya        KENYA                          NA                   NA                0.2620690   0.2113682   0.3127698
12      Birth       ki1126311-ZVITAMBO          ZIMBABWE                       NA                   NA                0.0988048   0.0822891   0.1153205
12      Birth       kiGH5241-JiVitA-3           BANGLADESH                     NA                   NA                0.3699552   0.3453249   0.3945854
12      6 months    iLiNS_DYADM_LNS             MALAWI                         NA                   NA                0.2474227   0.1611034   0.3337420
12      6 months    ki1000125-AgaKhanUniv       PAKISTAN                       NA                   NA                0.2671233   0.1951062   0.3391404
12      6 months    ki1000304-VITAMIN-A         INDIA                          NA                   NA                0.3809524   0.2764788   0.4854259
12      6 months    ki1000304b-SAS-CompFeed     INDIA                          NA                   NA                0.2911392   0.1848389   0.3974396
12      6 months    ki1000304b-SAS-FoodSuppl    INDIA                          NA                   NA                0.3272727   0.2021242   0.4524212
12      6 months    ki1119695-PROBIT            BELARUS                        NA                   NA                0.0563291   0.0338408   0.0788175
12      6 months    ki1126311-ZVITAMBO          ZIMBABWE                       NA                   NA                0.1397713   0.1155302   0.1640124
12      6 months    ki1148112-iLiNS-DOSE        MALAWI                         NA                   NA                0.3219178   0.2458716   0.3979641
12      6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         NA                   NA                0.2388060   0.1663469   0.3112650
12      6 months    kiGH5241-JiVitA-3           BANGLADESH                     NA                   NA                0.2648292   0.2402824   0.2893760
12      6 months    kiGH5241-JiVitA-4           BANGLADESH                     NA                   NA                0.2631579   0.1631624   0.3631534
12      24 months   ki1000107-Serrinha-VitA     BRAZIL                         NA                   NA                0.4351145   0.3498912   0.5203378
12      24 months   ki1000111-WASH-Kenya        KENYA                          NA                   NA                0.3258427   0.2567955   0.3948899
12      24 months   ki1119695-PROBIT            BELARUS                        NA                   NA                0.2090909   0.0869330   0.3312488


### Parameter: RR


month   agecat      studyid                     country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------  ----------  --------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
1       Birth       ki1126311-ZVITAMBO          ZIMBABWE                       Control              Control           1.0000000   1.0000000   1.0000000
1       Birth       ki1126311-ZVITAMBO          ZIMBABWE                       VitA                 Control           0.7322809   0.6362204   0.8428453
1       Birth       kiGH5241-JiVitA-3           BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
1       Birth       kiGH5241-JiVitA-3           BANGLADESH                     Maternal             Control           0.9673805   0.9005149   1.0392110
1       6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Control              Control           1.0000000   1.0000000   1.0000000
1       6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Maternal             Control           0.7252747   0.5845234   0.8999184
1       6 months    ki1000304-EU                INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
1       6 months    ki1000304-EU                INDIA                          Zinc                 Control           0.6766917   0.2584388   1.7718384
1       6 months    ki1000304-VITAMIN-A         INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
1       6 months    ki1000304-VITAMIN-A         INDIA                          VitA                 Control           1.0084139   0.8461941   1.2017320
1       6 months    ki1000304b-SAS-CompFeed     INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
1       6 months    ki1000304b-SAS-CompFeed     INDIA                          Other                Control           1.0793651   0.6797487   1.7139114
1       6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
1       6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Other                Control           1.0476190   0.8117257   1.3520647
1       6 months    ki1119695-PROBIT            BELARUS                        Control              Control           1.0000000   1.0000000   1.0000000
1       6 months    ki1119695-PROBIT            BELARUS                        Maternal             Control           0.9024390   0.6686952   1.2178886
1       6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control              Control           1.0000000   1.0000000   1.0000000
1       6 months    ki1126311-ZVITAMBO          ZIMBABWE                       VitA                 Control           0.8651997   0.7365596   1.0163068
1       6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
1       6 months    ki1148112-iLiNS-DOSE        MALAWI                         LNS                  Control           1.2658333   1.0192009   1.5721473
1       6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
1       6 months    kiGH5241-JiVitA-3           BANGLADESH                     Maternal             Control           0.8777463   0.7883818   0.9772404
1       24 months   ki1000111-WASH-Kenya        KENYA                          Control              Control           1.0000000   1.0000000   1.0000000
1       24 months   ki1000111-WASH-Kenya        KENYA                          LNS                  Control           0.7928118   0.5113998   1.2290788
1       24 months   ki1000111-WASH-Kenya        KENYA                          Other                Control           1.1128270   0.8019678   1.5441817
1       24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Control              Control           1.0000000   1.0000000   1.0000000
1       24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc                 Control           0.6340952   0.4444123   0.9047380
1       24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
1       24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS                  Control           1.3000000   1.0074806   1.6774517
2       Birth       ki1126311-ZVITAMBO          ZIMBABWE                       Control              Control           1.0000000   1.0000000   1.0000000
2       Birth       ki1126311-ZVITAMBO          ZIMBABWE                       VitA                 Control           1.1971831   1.0342310   1.3858097
2       Birth       kiGH5241-JiVitA-3           BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
2       Birth       kiGH5241-JiVitA-3           BANGLADESH                     Maternal             Control           0.7874604   0.7204013   0.8607617
2       Birth       kiGH5241-JiVitA-4           BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
2       Birth       kiGH5241-JiVitA-4           BANGLADESH                     LNS                  Control           1.2263514   0.5161147   2.9139601
2       Birth       kiGH5241-JiVitA-4           BANGLADESH                     Other                Control           1.3062500   0.6191028   2.7560676
2       6 months    ki1000304-VITAMIN-A         INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
2       6 months    ki1000304-VITAMIN-A         INDIA                          VitA                 Control           0.7616162   0.6178953   0.9387661
2       6 months    ki1000304b-SAS-CompFeed     INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
2       6 months    ki1000304b-SAS-CompFeed     INDIA                          Other                Control           0.7297297   0.4079334   1.3053736
2       6 months    ki1119695-PROBIT            BELARUS                        Control              Control           1.0000000   1.0000000   1.0000000
2       6 months    ki1119695-PROBIT            BELARUS                        Maternal             Control           0.8585859   0.6020972   1.2243367
2       6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control              Control           1.0000000   1.0000000   1.0000000
2       6 months    ki1126311-ZVITAMBO          ZIMBABWE                       VitA                 Control           0.7558528   0.6212933   0.9195552
2       6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
2       6 months    ki1148112-iLiNS-DOSE        MALAWI                         LNS                  Control           0.7456140   0.5966065   0.9318375
2       6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
2       6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Maternal             Control           0.9189189   0.5724852   1.4749936
2       6 months    ki1148112-LCNI-5            MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
2       6 months    ki1148112-LCNI-5            MALAWI                         LNS                  Control           0.6982759   0.3938559   1.2379886
2       6 months    ki1148112-LCNI-5            MALAWI                         Other                Control           0.6982759   0.3501652   1.3924548
2       6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
2       6 months    kiGH5241-JiVitA-3           BANGLADESH                     Maternal             Control           0.8899264   0.7863904   1.0070939
2       6 months    kiGH5241-JiVitA-4           BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
2       6 months    kiGH5241-JiVitA-4           BANGLADESH                     LNS                  Control           0.7936047   0.3052093   2.0635291
2       6 months    kiGH5241-JiVitA-4           BANGLADESH                     Other                Control           0.9512195   0.4229610   2.1392484
2       24 months   ki1000111-WASH-Kenya        KENYA                          Control              Control           1.0000000   1.0000000   1.0000000
2       24 months   ki1000111-WASH-Kenya        KENYA                          LNS                  Control           1.5142857   0.7976490   2.8747748
2       24 months   ki1000111-WASH-Kenya        KENYA                          Other                Control           0.9592760   0.5321392   1.7292664
2       24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Control              Control           1.0000000   1.0000000   1.0000000
2       24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc                 Control           1.0476190   0.7107702   1.5441076
2       24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
2       24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS                  Control           0.7648579   0.6156288   0.9502602
3       Birth       ki1126311-ZVITAMBO          ZIMBABWE                       Control              Control           1.0000000   1.0000000   1.0000000
3       Birth       ki1126311-ZVITAMBO          ZIMBABWE                       VitA                 Control           1.0431634   0.8908643   1.2214989
3       Birth       kiGH5241-JiVitA-3           BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
3       Birth       kiGH5241-JiVitA-3           BANGLADESH                     Maternal             Control           0.8113181   0.7442016   0.8844875
3       Birth       kiGH5241-JiVitA-4           BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
3       Birth       kiGH5241-JiVitA-4           BANGLADESH                     LNS                  Control           1.4423077   0.8700801   2.3908736
3       Birth       kiGH5241-JiVitA-4           BANGLADESH                     Other                Control           0.8918919   0.5076539   1.5669556
3       6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
3       6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                  Control           0.6446886   0.2691316   1.5443131
3       6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Other                Control           0.3571429   0.1272307   1.0025173
3       6 months    ki1000304-EU                INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
3       6 months    ki1000304-EU                INDIA                          Zinc                 Control           1.7142857   0.7488329   3.9244745
3       6 months    ki1000304-VITAMIN-A         INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
3       6 months    ki1000304-VITAMIN-A         INDIA                          VitA                 Control           0.9620690   0.7987661   1.1587582
3       6 months    ki1119695-PROBIT            BELARUS                        Control              Control           1.0000000   1.0000000   1.0000000
3       6 months    ki1119695-PROBIT            BELARUS                        Maternal             Control           0.6355451   0.4256011   0.9490520
3       6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control              Control           1.0000000   1.0000000   1.0000000
3       6 months    ki1126311-ZVITAMBO          ZIMBABWE                       VitA                 Control           0.9937487   0.8622849   1.1452556
3       6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
3       6 months    ki1148112-iLiNS-DOSE        MALAWI                         LNS                  Control           1.0276308   0.8160204   1.2941161
3       6 months    ki1148112-LCNI-5            MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
3       6 months    ki1148112-LCNI-5            MALAWI                         LNS                  Control           0.7163265   0.3625564   1.4152933
3       6 months    ki1148112-LCNI-5            MALAWI                         Other                Control           1.4727273   0.7878227   2.7530630
3       6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
3       6 months    kiGH5241-JiVitA-3           BANGLADESH                     Maternal             Control           0.8637156   0.7714460   0.9670213
3       6 months    kiGH5241-JiVitA-4           BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
3       6 months    kiGH5241-JiVitA-4           BANGLADESH                     LNS                  Control           0.8047276   0.5166231   1.2534990
3       6 months    kiGH5241-JiVitA-4           BANGLADESH                     Other                Control           1.0327869   0.6710747   1.5894636
3       24 months   ki1000111-WASH-Kenya        KENYA                          Control              Control           1.0000000   1.0000000   1.0000000
3       24 months   ki1000111-WASH-Kenya        KENYA                          LNS                  Control           0.7919799   0.3785006   1.6571500
3       24 months   ki1000111-WASH-Kenya        KENYA                          Other                Control           1.1126761   0.6415430   1.9297975
3       24 months   ki1000304-EU                INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
3       24 months   ki1000304-EU                INDIA                          Zinc                 Control           1.0000000   0.4839229   2.0664448
3       24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
3       24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS                  Control           0.9066667   0.7251183   1.1336694
4       Birth       ki1126311-ZVITAMBO          ZIMBABWE                       Control              Control           1.0000000   1.0000000   1.0000000
4       Birth       ki1126311-ZVITAMBO          ZIMBABWE                       VitA                 Control           1.1202564   0.9396472   1.3355804
4       Birth       kiGH5241-JiVitA-3           BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
4       Birth       kiGH5241-JiVitA-3           BANGLADESH                     Maternal             Control           0.9084590   0.8186896   1.0080716
4       Birth       kiGH5241-JiVitA-4           BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
4       Birth       kiGH5241-JiVitA-4           BANGLADESH                     LNS                  Control           0.8226496   0.3984663   1.6983931
4       Birth       kiGH5241-JiVitA-4           BANGLADESH                     Other                Control           0.7892157   0.4290360   1.4517696
4       6 months    iLiNS_DYADM_LNS             MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
4       6 months    iLiNS_DYADM_LNS             MALAWI                         LNS                  Control           1.4666667   0.8699230   2.4727605
4       6 months    ki1000304-EU                INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
4       6 months    ki1000304-EU                INDIA                          Zinc                 Control           1.5000000   0.5416264   4.1541549
4       6 months    ki1000304-VITAMIN-A         INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
4       6 months    ki1000304-VITAMIN-A         INDIA                          VitA                 Control           0.7995154   0.6616859   0.9660549
4       6 months    ki1000304b-SAS-CompFeed     INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
4       6 months    ki1000304b-SAS-CompFeed     INDIA                          Other                Control           0.9333333   0.4916464   1.7718243
4       6 months    ki1119695-PROBIT            BELARUS                        Control              Control           1.0000000   1.0000000   1.0000000
4       6 months    ki1119695-PROBIT            BELARUS                        Maternal             Control           0.9536680   0.5928968   1.5339645
4       6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control              Control           1.0000000   1.0000000   1.0000000
4       6 months    ki1126311-ZVITAMBO          ZIMBABWE                       VitA                 Control           0.9384661   0.7927707   1.1109374
4       6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
4       6 months    ki1148112-iLiNS-DOSE        MALAWI                         LNS                  Control           0.8271392   0.6835986   1.0008201
4       6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
4       6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Maternal             Control           0.9777778   0.6031992   1.5849646
4       6 months    ki1148112-LCNI-5            MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
4       6 months    ki1148112-LCNI-5            MALAWI                         LNS                  Control           1.8772321   0.9854470   3.5760426
4       6 months    ki1148112-LCNI-5            MALAWI                         Other                Control           1.8125000   0.8937054   3.6758828
4       6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
4       6 months    kiGH5241-JiVitA-3           BANGLADESH                     Maternal             Control           0.8365024   0.7387756   0.9471567
4       6 months    kiGH5241-JiVitA-4           BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
4       6 months    kiGH5241-JiVitA-4           BANGLADESH                     LNS                  Control           0.9969925   0.6866608   1.4475766
4       6 months    kiGH5241-JiVitA-4           BANGLADESH                     Other                Control           1.2336012   0.9180002   1.6577034
4       24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
4       24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                  Control           1.1733333   0.4795515   2.8708309
4       24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                Control           1.7569444   0.8321419   3.7095281
4       24 months   ki1000111-WASH-Kenya        KENYA                          Control              Control           1.0000000   1.0000000   1.0000000
4       24 months   ki1000111-WASH-Kenya        KENYA                          LNS                  Control           0.9352410   0.5941485   1.4721500
4       24 months   ki1000111-WASH-Kenya        KENYA                          Other                Control           1.0945946   0.7539790   1.5890857
4       24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
4       24 months   kiGH5241-JiVitA-4           BANGLADESH                     LNS                  Control           0.7810651   0.3948212   1.5451619
4       24 months   kiGH5241-JiVitA-4           BANGLADESH                     Other                Control           0.9401709   0.5883729   1.5023150
5       Birth       ki1126311-ZVITAMBO          ZIMBABWE                       Control              Control           1.0000000   1.0000000   1.0000000
5       Birth       ki1126311-ZVITAMBO          ZIMBABWE                       VitA                 Control           1.0766578   0.9163443   1.2650181
5       Birth       kiGH5241-JiVitA-3           BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
5       Birth       kiGH5241-JiVitA-3           BANGLADESH                     Maternal             Control           1.0329511   0.9256349   1.1527094
5       6 months    iLiNS_DYADM_LNS             MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
5       6 months    iLiNS_DYADM_LNS             MALAWI                         LNS                  Control           1.0285714   0.6482699   1.6319733
5       6 months    ki1000304-VITAMIN-A         INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
5       6 months    ki1000304-VITAMIN-A         INDIA                          VitA                 Control           0.9407407   0.7953911   1.1126515
5       6 months    ki1000304b-SAS-CompFeed     INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
5       6 months    ki1000304b-SAS-CompFeed     INDIA                          Other                Control           0.5252525   0.3414706   0.8079473
5       6 months    ki1119695-PROBIT            BELARUS                        Control              Control           1.0000000   1.0000000   1.0000000
5       6 months    ki1119695-PROBIT            BELARUS                        Maternal             Control           0.7252588   0.4861286   1.0820187
5       6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control              Control           1.0000000   1.0000000   1.0000000
5       6 months    ki1126311-ZVITAMBO          ZIMBABWE                       VitA                 Control           0.8960114   0.7496830   1.0709012
5       6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
5       6 months    ki1148112-iLiNS-DOSE        MALAWI                         LNS                  Control           1.3000000   1.0442206   1.6184320
5       6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
5       6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Maternal             Control           0.9795918   0.6683135   1.4358533
5       6 months    ki1148112-LCNI-5            MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
5       6 months    ki1148112-LCNI-5            MALAWI                         LNS                  Control           1.0526316   0.5386330   2.0571211
5       6 months    ki1148112-LCNI-5            MALAWI                         Other                Control           1.0714286   0.5028177   2.2830524
5       6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
5       6 months    kiGH5241-JiVitA-3           BANGLADESH                     Maternal             Control           0.9238058   0.8204585   1.0401710
5       6 months    kiGH5241-JiVitA-4           BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
5       6 months    kiGH5241-JiVitA-4           BANGLADESH                     LNS                  Control           0.8530201   0.5420068   1.3424986
5       6 months    kiGH5241-JiVitA-4           BANGLADESH                     Other                Control           1.1480000   0.8107302   1.6255765
5       24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
5       24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                  Control           0.7222222   0.3942806   1.3229283
5       24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                Control           0.8888889   0.5206926   1.5174471
5       24 months   ki1000111-WASH-Kenya        KENYA                          Control              Control           1.0000000   1.0000000   1.0000000
5       24 months   ki1000111-WASH-Kenya        KENYA                          LNS                  Control           0.9222973   0.5802082   1.4660810
5       24 months   ki1000111-WASH-Kenya        KENYA                          Other                Control           1.0263158   0.7002405   1.5042320
5       24 months   ki1000304-ZnMort            INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
5       24 months   ki1000304-ZnMort            INDIA                          Zinc                 Control           1.2500000   0.5989063   2.6089224
5       24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
5       24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS                  Control           1.5333333   1.2601694   1.8657104
5       24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
5       24 months   kiGH5241-JiVitA-4           BANGLADESH                     LNS                  Control           1.0111111   0.4284904   2.3859242
5       24 months   kiGH5241-JiVitA-4           BANGLADESH                     Other                Control           1.2480000   0.5789400   2.6902683
6       Birth       ki1126311-ZVITAMBO          ZIMBABWE                       Control              Control           1.0000000   1.0000000   1.0000000
6       Birth       ki1126311-ZVITAMBO          ZIMBABWE                       VitA                 Control           0.9226170   0.7841466   1.0855395
6       Birth       kiGH5241-JiVitA-3           BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
6       Birth       kiGH5241-JiVitA-3           BANGLADESH                     Maternal             Control           0.7553716   0.6715049   0.8497127
6       Birth       kiGH5241-JiVitA-4           BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
6       Birth       kiGH5241-JiVitA-4           BANGLADESH                     LNS                  Control           0.9045093   0.4679506   1.7483406
6       Birth       kiGH5241-JiVitA-4           BANGLADESH                     Other                Control           0.7013575   0.3540976   1.3891714
6       6 months    ki1000304-VITAMIN-A         INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
6       6 months    ki1000304-VITAMIN-A         INDIA                          VitA                 Control           1.0396040   0.8658516   1.2482236
6       6 months    ki1000304b-SAS-CompFeed     INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
6       6 months    ki1000304b-SAS-CompFeed     INDIA                          Other                Control           0.5333333   0.4668529   0.6092807
6       6 months    ki1119695-PROBIT            BELARUS                        Control              Control           1.0000000   1.0000000   1.0000000
6       6 months    ki1119695-PROBIT            BELARUS                        Maternal             Control           0.7228000   0.4730880   1.1043186
6       6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control              Control           1.0000000   1.0000000   1.0000000
6       6 months    ki1126311-ZVITAMBO          ZIMBABWE                       VitA                 Control           0.9528515   0.7949306   1.1421449
6       6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
6       6 months    ki1148112-iLiNS-DOSE        MALAWI                         LNS                  Control           0.6569579   0.5011841   0.8611481
6       6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
6       6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Maternal             Control           0.7936508   0.5214698   1.2078967
6       6 months    ki1148112-LCNI-5            MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
6       6 months    ki1148112-LCNI-5            MALAWI                         LNS                  Control           0.6139535   0.3050219   1.2357763
6       6 months    ki1148112-LCNI-5            MALAWI                         Other                Control           0.9000000   0.4449243   1.8205344
6       6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
6       6 months    kiGH5241-JiVitA-3           BANGLADESH                     Maternal             Control           0.8249861   0.7328899   0.9286554
6       6 months    kiGH5241-JiVitA-4           BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
6       6 months    kiGH5241-JiVitA-4           BANGLADESH                     LNS                  Control           1.3832154   0.8107647   2.3598521
6       6 months    kiGH5241-JiVitA-4           BANGLADESH                     Other                Control           1.1556657   0.6952732   1.9209185
6       24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
6       24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                  Control           0.8823529   0.5148826   1.5120858
6       24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                Control           0.7500000   0.4679465   1.2020604
6       24 months   ki1000111-WASH-Kenya        KENYA                          Control              Control           1.0000000   1.0000000   1.0000000
6       24 months   ki1000111-WASH-Kenya        KENYA                          LNS                  Control           1.2653846   0.5452759   2.9364918
6       24 months   ki1000111-WASH-Kenya        KENYA                          Other                Control           1.5161290   0.7835216   2.9337381
7       Birth       ki1126311-ZVITAMBO          ZIMBABWE                       Control              Control           1.0000000   1.0000000   1.0000000
7       Birth       ki1126311-ZVITAMBO          ZIMBABWE                       VitA                 Control           1.0076488   0.8511079   1.1929817
7       Birth       kiGH5241-JiVitA-3           BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
7       Birth       kiGH5241-JiVitA-3           BANGLADESH                     Maternal             Control           1.0328203   0.9275556   1.1500310
7       6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Control              Control           1.0000000   1.0000000   1.0000000
7       6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Maternal             Control           1.3809524   1.0216416   1.8666326
7       6 months    ki1000304-VITAMIN-A         INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
7       6 months    ki1000304-VITAMIN-A         INDIA                          VitA                 Control           1.2515611   1.0512173   1.4900869
7       6 months    ki1119695-PROBIT            BELARUS                        Control              Control           1.0000000   1.0000000   1.0000000
7       6 months    ki1119695-PROBIT            BELARUS                        Maternal             Control           0.7623896   0.5675864   1.0240517
7       6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control              Control           1.0000000   1.0000000   1.0000000
7       6 months    ki1126311-ZVITAMBO          ZIMBABWE                       VitA                 Control           1.0281996   0.8725099   1.2116703
7       6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
7       6 months    ki1148112-iLiNS-DOSE        MALAWI                         LNS                  Control           0.7920000   0.6171764   1.0163447
7       6 months    ki1148112-LCNI-5            MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
7       6 months    ki1148112-LCNI-5            MALAWI                         LNS                  Control           2.1235294   0.9397775   4.7983453
7       6 months    ki1148112-LCNI-5            MALAWI                         Other                Control           1.6000000   0.6343221   4.0358047
7       6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
7       6 months    kiGH5241-JiVitA-3           BANGLADESH                     Maternal             Control           1.0481132   0.9389633   1.1699513
7       6 months    kiGH5241-JiVitA-4           BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
7       6 months    kiGH5241-JiVitA-4           BANGLADESH                     LNS                  Control           1.2356275   0.8871165   1.7210541
7       6 months    kiGH5241-JiVitA-4           BANGLADESH                     Other                Control           1.1819584   0.8640141   1.6169015
7       24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
7       24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                  Control           0.9375000   0.4961874   1.7713191
7       24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                Control           0.7758621   0.4064195   1.4811344
7       24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
7       24 months   kiGH5241-JiVitA-4           BANGLADESH                     LNS                  Control           1.0150376   0.7169692   1.4370230
7       24 months   kiGH5241-JiVitA-4           BANGLADESH                     Other                Control           0.9624060   0.6957731   1.3312176
8       Birth       ki1126311-ZVITAMBO          ZIMBABWE                       Control              Control           1.0000000   1.0000000   1.0000000
8       Birth       ki1126311-ZVITAMBO          ZIMBABWE                       VitA                 Control           0.8056669   0.6604729   0.9827793
8       Birth       kiGH5241-JiVitA-3           BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
8       Birth       kiGH5241-JiVitA-3           BANGLADESH                     Maternal             Control           0.8932515   0.8175328   0.9759832
8       6 months    iLiNS_DYADM_LNS             MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
8       6 months    iLiNS_DYADM_LNS             MALAWI                         LNS                  Control           0.7250000   0.4868404   1.0796660
8       6 months    ki1000304-EU                INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
8       6 months    ki1000304-EU                INDIA                          Zinc                 Control           0.8888889   0.3890737   2.0307810
8       6 months    ki1000304-VITAMIN-A         INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
8       6 months    ki1000304-VITAMIN-A         INDIA                          VitA                 Control           0.7509091   0.6418510   0.8784975
8       6 months    ki1119695-PROBIT            BELARUS                        Control              Control           1.0000000   1.0000000   1.0000000
8       6 months    ki1119695-PROBIT            BELARUS                        Maternal             Control           0.7083940   0.5068288   0.9901213
8       6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control              Control           1.0000000   1.0000000   1.0000000
8       6 months    ki1126311-ZVITAMBO          ZIMBABWE                       VitA                 Control           1.2918740   1.0688520   1.5614307
8       6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
8       6 months    ki1148112-iLiNS-DOSE        MALAWI                         LNS                  Control           1.2538941   0.9710478   1.6191278
8       6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
8       6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Maternal             Control           0.7606557   0.5470164   1.0577327
8       6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
8       6 months    kiGH5241-JiVitA-3           BANGLADESH                     Maternal             Control           0.9990137   0.8919885   1.1188803
8       6 months    kiGH5241-JiVitA-4           BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
8       6 months    kiGH5241-JiVitA-4           BANGLADESH                     LNS                  Control           0.7405462   0.4572937   1.1992483
8       6 months    kiGH5241-JiVitA-4           BANGLADESH                     Other                Control           0.8490042   0.5532243   1.3029219
8       24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
8       24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                  Control           0.6470588   0.3575416   1.1710111
8       24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                Control           0.8923077   0.5785341   1.3762593
8       24 months   ki1000304-EU                INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
8       24 months   ki1000304-EU                INDIA                          Zinc                 Control           1.0000000   0.5699028   1.7546852
8       24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
8       24 months   kiGH5241-JiVitA-4           BANGLADESH                     LNS                  Control           1.3437500   0.7681336   2.3507161
8       24 months   kiGH5241-JiVitA-4           BANGLADESH                     Other                Control           0.8958333   0.5411661   1.4829410
9       Birth       ki1126311-ZVITAMBO          ZIMBABWE                       Control              Control           1.0000000   1.0000000   1.0000000
9       Birth       ki1126311-ZVITAMBO          ZIMBABWE                       VitA                 Control           0.9009265   0.7313536   1.1098170
9       Birth       kiGH5241-JiVitA-3           BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
9       Birth       kiGH5241-JiVitA-3           BANGLADESH                     Maternal             Control           0.8880226   0.8158773   0.9665475
9       6 months    iLiNS_DYADM_LNS             MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
9       6 months    iLiNS_DYADM_LNS             MALAWI                         LNS                  Control           0.6593407   0.4510615   0.9637934
9       6 months    ki1000304-VITAMIN-A         INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
9       6 months    ki1000304-VITAMIN-A         INDIA                          VitA                 Control           0.9359158   0.7868743   1.1131873
9       6 months    ki1112895-Guatemala BSC     GUATEMALA                      Control              Control           1.0000000   1.0000000   1.0000000
9       6 months    ki1112895-Guatemala BSC     GUATEMALA                      Other                Control           1.3333333   0.7974402   2.2293555
9       6 months    ki1119695-PROBIT            BELARUS                        Control              Control           1.0000000   1.0000000   1.0000000
9       6 months    ki1119695-PROBIT            BELARUS                        Maternal             Control           0.6913146   0.5014245   0.9531162
9       6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control              Control           1.0000000   1.0000000   1.0000000
9       6 months    ki1126311-ZVITAMBO          ZIMBABWE                       VitA                 Control           1.5941064   1.3148319   1.9326996
9       6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
9       6 months    ki1148112-iLiNS-DOSE        MALAWI                         LNS                  Control           1.1248391   0.8853950   1.4290379
9       6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
9       6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Maternal             Control           0.4761905   0.3227443   0.7025914
9       6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
9       6 months    kiGH5241-JiVitA-3           BANGLADESH                     Maternal             Control           1.0220994   0.9170431   1.1391910
9       6 months    kiGH5241-JiVitA-4           BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
9       6 months    kiGH5241-JiVitA-4           BANGLADESH                     LNS                  Control           0.9404847   0.5642517   1.5675830
9       6 months    kiGH5241-JiVitA-4           BANGLADESH                     Other                Control           0.9838969   0.6074899   1.5935297
9       24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
9       24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                  Control           1.2568966   0.8056281   1.9609407
9       24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                Control           1.1380165   0.7579146   1.7087435
9       24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
9       24 months   kiGH5241-JiVitA-4           BANGLADESH                     LNS                  Control           0.4086379   0.2074856   0.8048023
9       24 months   kiGH5241-JiVitA-4           BANGLADESH                     Other                Control           0.5822891   0.3400910   0.9969701
10      Birth       ki1126311-ZVITAMBO          ZIMBABWE                       Control              Control           1.0000000   1.0000000   1.0000000
10      Birth       ki1126311-ZVITAMBO          ZIMBABWE                       VitA                 Control           1.1372444   0.9272207   1.3948402
10      Birth       kiGH5241-JiVitA-3           BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
10      Birth       kiGH5241-JiVitA-3           BANGLADESH                     Maternal             Control           0.9010198   0.8378111   0.9689973
10      6 months    ki1000304-VITAMIN-A         INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
10      6 months    ki1000304-VITAMIN-A         INDIA                          VitA                 Control           0.8846154   0.7067324   1.1072711
10      6 months    ki1000304b-SAS-CompFeed     INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
10      6 months    ki1000304b-SAS-CompFeed     INDIA                          Other                Control           1.6666667   1.2571462   2.2095901
10      6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              Control           1.0000000   1.0000000   1.0000000
10      6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                Control           1.0444444   0.3230412   3.3768573
10      6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                 Control           1.1362637   0.4182114   3.0871831
10      6 months    ki1119695-PROBIT            BELARUS                        Control              Control           1.0000000   1.0000000   1.0000000
10      6 months    ki1119695-PROBIT            BELARUS                        Maternal             Control           0.9021871   0.6753064   1.2052924
10      6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control              Control           1.0000000   1.0000000   1.0000000
10      6 months    ki1126311-ZVITAMBO          ZIMBABWE                       VitA                 Control           1.0055760   0.8342581   1.2120747
10      6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
10      6 months    ki1148112-iLiNS-DOSE        MALAWI                         LNS                  Control           0.5759494   0.4363743   0.7601678
10      6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
10      6 months    kiGH5241-JiVitA-3           BANGLADESH                     Maternal             Control           0.8678670   0.7847095   0.9598368
10      6 months    kiGH5241-JiVitA-4           BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
10      6 months    kiGH5241-JiVitA-4           BANGLADESH                     LNS                  Control           1.0546810   0.5979847   1.8601682
10      6 months    kiGH5241-JiVitA-4           BANGLADESH                     Other                Control           1.1915185   0.7507390   1.8910916
10      24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
10      24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                  Control           0.8881579   0.3887692   2.0290302
10      24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                Control           1.2980769   0.6645691   2.5354829
10      24 months   ki1000111-WASH-Kenya        KENYA                          Control              Control           1.0000000   1.0000000   1.0000000
10      24 months   ki1000111-WASH-Kenya        KENYA                          LNS                  Control           1.0185714   0.6987832   1.4847063
10      24 months   ki1000111-WASH-Kenya        KENYA                          Other                Control           0.8731481   0.6079687   1.2539917
10      24 months   ki1119695-PROBIT            BELARUS                        Control              Control           1.0000000   1.0000000   1.0000000
10      24 months   ki1119695-PROBIT            BELARUS                        Maternal             Control           1.0588235   0.5191150   2.1596513
11      Birth       ki1126311-ZVITAMBO          ZIMBABWE                       Control              Control           1.0000000   1.0000000   1.0000000
11      Birth       ki1126311-ZVITAMBO          ZIMBABWE                       VitA                 Control           0.9791667   0.8076489   1.1871092
11      Birth       kiGH5241-JiVitA-3           BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
11      Birth       kiGH5241-JiVitA-3           BANGLADESH                     Maternal             Control           0.8618089   0.8053975   0.9221714
11      6 months    iLiNS_DYADM_LNS             MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
11      6 months    iLiNS_DYADM_LNS             MALAWI                         LNS                  Control           0.9610390   0.5862959   1.5753067
11      6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Control              Control           1.0000000   1.0000000   1.0000000
11      6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Maternal             Control           0.5269072   0.4161159   0.6671967
11      6 months    ki1000304-EU                INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
11      6 months    ki1000304-EU                INDIA                          Zinc                 Control           0.6000000   0.2668227   1.3492107
11      6 months    ki1000304-VITAMIN-A         INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
11      6 months    ki1000304-VITAMIN-A         INDIA                          VitA                 Control           1.0143785   0.8189008   1.2565181
11      6 months    ki1000304b-SAS-CompFeed     INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
11      6 months    ki1000304b-SAS-CompFeed     INDIA                          Other                Control           1.2019231   0.8649094   1.6702548
11      6 months    ki1119695-PROBIT            BELARUS                        Control              Control           1.0000000   1.0000000   1.0000000
11      6 months    ki1119695-PROBIT            BELARUS                        Maternal             Control           0.6152103   0.4450947   0.8503442
11      6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control              Control           1.0000000   1.0000000   1.0000000
11      6 months    ki1126311-ZVITAMBO          ZIMBABWE                       VitA                 Control           1.3130261   1.1070994   1.5572564
11      6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
11      6 months    ki1148112-iLiNS-DOSE        MALAWI                         LNS                  Control           0.6209150   0.4673451   0.8249481
11      6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
11      6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Maternal             Control           1.1276190   0.7814742   1.6270848
11      6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
11      6 months    kiGH5241-JiVitA-3           BANGLADESH                     Maternal             Control           0.8776190   0.8031092   0.9590416
11      6 months    kiGH5241-JiVitA-4           BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
11      6 months    kiGH5241-JiVitA-4           BANGLADESH                     LNS                  Control           1.5300000   0.4907368   4.7701739
11      6 months    kiGH5241-JiVitA-4           BANGLADESH                     Other                Control           1.7944444   0.6371381   5.0538980
11      24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
11      24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                  Control           0.5166667   0.2630492   1.0148079
11      24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                Control           0.5860697   0.3455478   0.9940090
11      24 months   ki1000111-WASH-Kenya        KENYA                          Control              Control           1.0000000   1.0000000   1.0000000
11      24 months   ki1000111-WASH-Kenya        KENYA                          LNS                  Control           0.9659091   0.4956131   1.8824771
11      24 months   ki1000111-WASH-Kenya        KENYA                          Other                Control           1.2142857   0.7702158   1.9143852
12      Birth       ki1126311-ZVITAMBO          ZIMBABWE                       Control              Control           1.0000000   1.0000000   1.0000000
12      Birth       ki1126311-ZVITAMBO          ZIMBABWE                       VitA                 Control           1.1785224   0.9966461   1.3935890
12      Birth       kiGH5241-JiVitA-3           BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
12      Birth       kiGH5241-JiVitA-3           BANGLADESH                     Maternal             Control           0.9385401   0.8779775   1.0032802
12      6 months    iLiNS_DYADM_LNS             MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
12      6 months    iLiNS_DYADM_LNS             MALAWI                         LNS                  Control           0.9400000   0.6630063   1.3327174
12      6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Control              Control           1.0000000   1.0000000   1.0000000
12      6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Maternal             Control           1.0526316   0.8037797   1.3785285
12      6 months    ki1000304-VITAMIN-A         INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
12      6 months    ki1000304-VITAMIN-A         INDIA                          VitA                 Control           0.9253945   0.7032021   1.2177936
12      6 months    ki1000304b-SAS-CompFeed     INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
12      6 months    ki1000304b-SAS-CompFeed     INDIA                          Other                Control           1.0405405   0.7233384   1.4968438
12      6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
12      6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Other                Control           0.8878049   0.6052187   1.3023350
12      6 months    ki1119695-PROBIT            BELARUS                        Control              Control           1.0000000   1.0000000   1.0000000
12      6 months    ki1119695-PROBIT            BELARUS                        Maternal             Control           0.7102056   0.4912942   1.0266596
12      6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control              Control           1.0000000   1.0000000   1.0000000
12      6 months    ki1126311-ZVITAMBO          ZIMBABWE                       VitA                 Control           0.9773467   0.8217178   1.1624508
12      6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
12      6 months    ki1148112-iLiNS-DOSE        MALAWI                         LNS                  Control           0.9590164   0.7572076   1.2146106
12      6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
12      6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Maternal             Control           0.9003831   0.6644093   1.2201663
12      6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
12      6 months    kiGH5241-JiVitA-3           BANGLADESH                     Maternal             Control           0.9842485   0.8971807   1.0797659
12      6 months    kiGH5241-JiVitA-4           BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
12      6 months    kiGH5241-JiVitA-4           BANGLADESH                     LNS                  Control           1.4700000   0.5469497   3.9508201
12      6 months    kiGH5241-JiVitA-4           BANGLADESH                     Other                Control           0.9600000   0.3673768   2.5085959
12      24 months   ki1000107-Serrinha-VitA     BRAZIL                         Control              Control           1.0000000   1.0000000   1.0000000
12      24 months   ki1000107-Serrinha-VitA     BRAZIL                         VitA                 Control           0.9924731   0.8159339   1.2072091
12      24 months   ki1000111-WASH-Kenya        KENYA                          Control              Control           1.0000000   1.0000000   1.0000000
12      24 months   ki1000111-WASH-Kenya        KENYA                          LNS                  Control           0.4965517   0.2509210   0.9826343
12      24 months   ki1000111-WASH-Kenya        KENYA                          Other                Control           0.7899687   0.5023217   1.2423322
12      24 months   ki1119695-PROBIT            BELARUS                        Control              Control           1.0000000   1.0000000   1.0000000
12      24 months   ki1119695-PROBIT            BELARUS                        Maternal             Control           0.7840909   0.4299670   1.4298737


### Parameter: PAR


month   agecat      studyid                     country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------  ----------  --------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
1       Birth       ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                -0.0320985   -0.0470171   -0.0171799
1       Birth       kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                -0.0060756   -0.0242498    0.0120987
1       6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Control              NA                -0.0496032   -0.0968044   -0.0024019
1       6 months    ki1000304-EU                INDIA                          Control              NA                -0.0645646   -0.2220208    0.0928917
1       6 months    ki1000304-VITAMIN-A         INDIA                          Control              NA                 0.0013590   -0.0387647    0.0414828
1       6 months    ki1000304b-SAS-CompFeed     INDIA                          Control              NA                 0.0094877   -0.0825428    0.1015182
1       6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Control              NA                 0.0178571   -0.0964827    0.1321970
1       6 months    ki1119695-PROBIT            BELARUS                        Control              NA                -0.0045977   -0.0231281    0.0139327
1       6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                -0.0182548   -0.0409540    0.0044445
1       6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                 0.0568526   -0.0056330    0.1193382
1       6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                -0.0171774   -0.0358954    0.0015407
1       24 months   ki1000111-WASH-Kenya        KENYA                          Control              NA                -0.0015758   -0.0672678    0.0641163
1       24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Control              NA                -0.1688928   -0.3208230   -0.0169626
1       24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                 0.0929966   -0.0158558    0.2018489
2       Birth       ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                 0.0192369    0.0000854    0.0383884
2       Birth       kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                -0.0396919   -0.0579257   -0.0214582
2       Birth       kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                 0.0498834   -0.0881549    0.1879218
2       6 months    ki1000304-VITAMIN-A         INDIA                          Control              NA                -0.0463108   -0.0926396    0.0000179
2       6 months    ki1000304b-SAS-CompFeed     INDIA                          Control              NA                -0.0497512   -0.1104420    0.0109395
2       6 months    ki1119695-PROBIT            BELARUS                        Control              NA                -0.0058964   -0.0207762    0.0089834
2       6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                -0.0388111   -0.0664068   -0.0112155
2       6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                -0.0748924   -0.1302710   -0.0195138
2       6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Control              NA                -0.0086993   -0.0749617    0.0575632
2       6 months    ki1148112-LCNI-5            MALAWI                         Control              NA                -0.1023392   -0.2645253    0.0598470
2       6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                -0.0152392   -0.0360933    0.0056148
2       6 months    kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                -0.0161038   -0.1331900    0.1009823
2       24 months   ki1000111-WASH-Kenya        KENYA                          Control              NA                 0.0178749   -0.0816465    0.1173963
2       24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Control              NA                 0.0124415   -0.0897456    0.1146286
2       24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                -0.1115196   -0.2006764   -0.0223628
3       Birth       ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                 0.0037748   -0.0126757    0.0202253
3       Birth       kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                -0.0317864   -0.0493216   -0.0142512
3       Birth       kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                 0.0287356   -0.0902205    0.1476917
3       6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                -0.1277056   -0.2947804    0.0393691
3       6 months    ki1000304-EU                INDIA                          Control              NA                 0.0757576   -0.0493006    0.2008158
3       6 months    ki1000304-VITAMIN-A         INDIA                          Control              NA                -0.0062678   -0.0512923    0.0387567
3       6 months    ki1119695-PROBIT            BELARUS                        Control              NA                -0.0122485   -0.0275960    0.0030990
3       6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                -0.0010094   -0.0273648    0.0253461
3       6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                 0.0054486   -0.0456025    0.0564998
3       6 months    ki1148112-LCNI-5            MALAWI                         Control              NA                -0.0132275   -0.1686057    0.1421507
3       6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                -0.0164572   -0.0340053    0.0010910
3       6 months    kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                -0.0127476   -0.0876241    0.0621289
3       24 months   ki1000111-WASH-Kenya        KENYA                          Control              NA                -0.0009230   -0.0733471    0.0715011
3       24 months   ki1000304-EU                INDIA                          Control              NA                 0.0000000   -0.1954157    0.1954157
3       24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                -0.0384615   -0.1319035    0.0549805
4       Birth       ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                 0.0090611   -0.0078474    0.0259696
4       Birth       kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                -0.0135930   -0.0334600    0.0062741
4       Birth       kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                -0.0535490   -0.2004681    0.0933702
4       6 months    iLiNS_DYADM_LNS             MALAWI                         Control              NA                 0.0477273   -0.0528914    0.1483460
4       6 months    ki1000304-EU                INDIA                          Control              NA                 0.0555556   -0.0878957    0.1990068
4       6 months    ki1000304-VITAMIN-A         INDIA                          Control              NA                -0.0380898   -0.0804229    0.0042434
4       6 months    ki1000304b-SAS-CompFeed     INDIA                          Control              NA                -0.0089286   -0.1297035    0.1118463
4       6 months    ki1119695-PROBIT            BELARUS                        Control              NA                -0.0014882   -0.0186538    0.0156774
4       6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                -0.0087000   -0.0347820    0.0173820
4       6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                -0.0574465   -0.1157652    0.0008722
4       6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Control              NA                -0.0031348   -0.0881666    0.0818970
4       6 months    ki1148112-LCNI-5            MALAWI                         Control              NA                 0.1745884    0.0283202    0.3208566
4       6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                -0.0203495   -0.0402497   -0.0004493
4       6 months    kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                 0.0269985   -0.0250081    0.0790050
4       24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                 0.1167464   -0.0520969    0.2855897
4       24 months   ki1000111-WASH-Kenya        KENYA                          Control              NA                 0.0075385   -0.0638954    0.0789725
4       24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                -0.0416133   -0.2193455    0.1361188
5       Birth       ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                 0.0070488   -0.0111381    0.0252357
5       Birth       kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                 0.0046472   -0.0186385    0.0279330
5       6 months    iLiNS_DYADM_LNS             MALAWI                         Control              NA                 0.0037879   -0.0885652    0.0961409
5       6 months    ki1000304-VITAMIN-A         INDIA                          Control              NA                -0.0108193   -0.0518913    0.0302528
5       6 months    ki1000304b-SAS-CompFeed     INDIA                          Control              NA                -0.1023222   -0.2321337    0.0274893
5       6 months    ki1119695-PROBIT            BELARUS                        Control              NA                -0.0070609   -0.0177870    0.0036652
5       6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                -0.0151201   -0.0421748    0.0119346
5       6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                 0.0526316   -0.0004028    0.1056659
5       6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Control              NA                -0.0037879   -0.0913991    0.0838233
5       6 months    ki1148112-LCNI-5            MALAWI                         Control              NA                 0.0152905   -0.1525402    0.1831212
5       6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                -0.0095002   -0.0299194    0.0109191
5       6 months    kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                 0.0077982   -0.0510150    0.0666115
5       24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                -0.0852273   -0.3066941    0.1362395
5       24 months   ki1000111-WASH-Kenya        KENYA                          Control              NA                -0.0022261   -0.0746367    0.0701845
5       24 months   ki1000304-ZnMort            INDIA                          Control              NA                 0.0518519   -0.1199965    0.2237002
5       24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                 0.1568627    0.0671006    0.2466248
5       24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                 0.0439560   -0.1763887    0.2643008
6       Birth       ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                -0.0070388   -0.0229536    0.0088759
6       Birth       kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                -0.0381578   -0.0608709   -0.0154446
6       Birth       kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                -0.0576527   -0.2038373    0.0885318
6       6 months    ki1000304-VITAMIN-A         INDIA                          Control              NA                 0.0068423   -0.0393490    0.0530337
6       6 months    ki1000304b-SAS-CompFeed     INDIA                          Control              NA                -0.0972222   -0.1758221   -0.0186223
6       6 months    ki1119695-PROBIT            BELARUS                        Control              NA                -0.0094424   -0.0283356    0.0094507
6       6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                -0.0062163   -0.0322614    0.0198288
6       6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                -0.1221198   -0.1952127   -0.0490269
6       6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Control              NA                -0.0371429   -0.1160643    0.0417786
6       6 months    ki1148112-LCNI-5            MALAWI                         Control              NA                -0.0869963   -0.2543872    0.0803945
6       6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                -0.0230668   -0.0429158   -0.0032177
6       6 months    kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                 0.0367777   -0.0381008    0.1116563
6       24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                -0.1126126   -0.3301078    0.1048825
6       24 months   ki1000111-WASH-Kenya        KENYA                          Control              NA                 0.0613081   -0.0381523    0.1607685
7       Birth       ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                 0.0005809   -0.0143994    0.0155612
7       Birth       kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                 0.0048866   -0.0168663    0.0266394
7       6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Control              NA                 0.0236453   -0.0267178    0.0740085
7       6 months    ki1000304-VITAMIN-A         INDIA                          Control              NA                 0.0385246   -0.0051148    0.0821639
7       6 months    ki1119695-PROBIT            BELARUS                        Control              NA                -0.0073118   -0.0164281    0.0018045
7       6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                 0.0038547   -0.0227687    0.0304781
7       6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                -0.0643166   -0.1321915    0.0035582
7       6 months    ki1148112-LCNI-5            MALAWI                         Control              NA                 0.1812865    0.0020293    0.3605438
7       6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                 0.0060984   -0.0127962    0.0249931
7       6 months    kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                 0.0381045   -0.0192601    0.0954692
7       24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                -0.0636364   -0.2872937    0.1600209
7       24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                -0.0055724   -0.1055655    0.0944206
8       Birth       ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                -0.0125916   -0.0249374   -0.0002458
8       Birth       kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                -0.0168667   -0.0363983    0.0026650
8       6 months    iLiNS_DYADM_LNS             MALAWI                         Control              NA                -0.0497456   -0.1300018    0.0305106
8       6 months    ki1000304-EU                INDIA                          Control              NA                -0.0285714   -0.2309349    0.1737920
8       6 months    ki1000304-VITAMIN-A         INDIA                          Control              NA                -0.0426061   -0.0759971   -0.0092152
8       6 months    ki1119695-PROBIT            BELARUS                        Control              NA                -0.0098771   -0.0218577    0.0021034
8       6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                 0.0245296    0.0018784    0.0471809
8       6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                 0.0545151   -0.0190640    0.1280941
8       6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Control              NA                -0.0559387   -0.1316015    0.0197241
8       6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                -0.0001154   -0.0189031    0.0186724
8       6 months    kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                -0.0336581   -0.0992211    0.0319049
8       24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                -0.0714286   -0.2164666    0.0736095
8       24 months   ki1000304-EU                INDIA                          Control              NA                 0.0000000   -0.1807359    0.1807359
8       24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                 0.0069919   -0.1182743    0.1322582
9       Birth       ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                -0.0051090   -0.0164085    0.0061906
9       Birth       kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                -0.0167500   -0.0342813    0.0007814
9       6 months    iLiNS_DYADM_LNS             MALAWI                         Control              NA                -0.0469697   -0.1127983    0.0188590
9       6 months    ki1000304-VITAMIN-A         INDIA                          Control              NA                -0.0126924   -0.0595242    0.0341394
9       6 months    ki1112895-Guatemala BSC     GUATEMALA                      Control              NA                 0.0446429   -0.0786394    0.1679251
9       6 months    ki1119695-PROBIT            BELARUS                        Control              NA                -0.0127577   -0.0279296    0.0024142
9       6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                 0.0416472    0.0186758    0.0646186
9       6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                 0.0314731   -0.0419615    0.1049076
9       6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Control              NA                -0.1053191   -0.1656108   -0.0450275
9       6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                 0.0025575   -0.0155111    0.0206262
9       6 months    kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                -0.0064786   -0.0944034    0.0814462
9       24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                 0.0502305   -0.0636696    0.1641306
9       24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                -0.1788618   -0.3170383   -0.0406853
10      Birth       ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                 0.0076439   -0.0069900    0.0222779
10      Birth       kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                -0.0175931   -0.0341580   -0.0010282
10      6 months    ki1000304-VITAMIN-A         INDIA                          Control              NA                -0.0223881   -0.0795736    0.0347975
10      6 months    ki1000304b-SAS-CompFeed     INDIA                          Control              NA                 0.0619048   -0.0410913    0.1649009
10      6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              NA                 0.0083711   -0.0687248    0.0854670
10      6 months    ki1119695-PROBIT            BELARUS                        Control              NA                -0.0039101   -0.0139792    0.0061589
10      6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                 0.0007107   -0.0265334    0.0279547
10      6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                -0.2058372   -0.2960872   -0.1155872
10      6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                -0.0198109   -0.0386739   -0.0009479
10      6 months    kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                 0.0271675   -0.0593631    0.1136982
10      24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                 0.0347032   -0.1082291    0.1776355
10      24 months   ki1000111-WASH-Kenya        KENYA                          Control              NA                -0.0218271   -0.1210630    0.0774087
10      24 months   ki1119695-PROBIT            BELARUS                        Control              NA                 0.0050505   -0.0789849    0.0890859
11      Birth       ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                -0.0013321   -0.0152818    0.0126175
11      Birth       kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                -0.0271191   -0.0446603   -0.0095779
11      6 months    iLiNS_DYADM_LNS             MALAWI                         Control              NA                -0.0034749   -0.0659658    0.0590160
11      6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Control              NA                -0.0859660   -0.1276545   -0.0442776
11      6 months    ki1000304-EU                INDIA                          Control              NA                -0.1000000   -0.2537522    0.0537522
11      6 months    ki1000304-VITAMIN-A         INDIA                          Control              NA                 0.0024223   -0.0496856    0.0545301
11      6 months    ki1000304b-SAS-CompFeed     INDIA                          Control              NA                 0.0327273   -0.0273833    0.0928379
11      6 months    ki1119695-PROBIT            BELARUS                        Control              NA                -0.0195874   -0.0344332   -0.0047416
11      6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                 0.0316209    0.0065743    0.0566675
11      6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                -0.1467611   -0.2274334   -0.0660888
11      6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Control              NA                 0.0161680   -0.0462317    0.0785676
11      6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                -0.0190080   -0.0369164   -0.0010996
11      6 months    kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                 0.0789686   -0.0485937    0.2065308
11      24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                -0.1629754   -0.3147900   -0.0111609
11      24 months   ki1000111-WASH-Kenya        KENYA                          Control              NA                 0.0267748   -0.0503424    0.1038921
12      Birth       ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                 0.0117080   -0.0028730    0.0262890
12      Birth       kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                -0.0120985   -0.0293359    0.0051389
12      6 months    iLiNS_DYADM_LNS             MALAWI                         Control              NA                -0.0078965   -0.0692528    0.0534599
12      6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Control              NA                 0.0068493   -0.0444937    0.0581924
12      6 months    ki1000304-VITAMIN-A         INDIA                          Control              NA                -0.0143965   -0.0868611    0.0580682
12      6 months    ki1000304b-SAS-CompFeed     INDIA                          Control              NA                 0.0054250   -0.0638659    0.0747158
12      6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Control              NA                -0.0298701   -0.1371302    0.0773899
12      6 months    ki1119695-PROBIT            BELARUS                        Control              NA                -0.0100719   -0.0216167    0.0014728
12      6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                -0.0023856   -0.0231976    0.0184264
12      6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                -0.0114155   -0.0808076    0.0579765
12      6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Control              NA                -0.0165132   -0.0741687    0.0411423
12      6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                -0.0021671   -0.0192114    0.0148773
12      6 months    kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                 0.0250627   -0.1313807    0.1815060
12      24 months   ki1000107-Serrinha-VitA     BRAZIL                         Control              NA                -0.0015052   -0.0591548    0.0561444
12      24 months   ki1000111-WASH-Kenya        KENYA                          Control              NA                -0.0769351   -0.1619811    0.0081109
12      24 months   ki1119695-PROBIT            BELARUS                        Control              NA                -0.0300395   -0.1257559    0.0656769


### Parameter: PAF


month   agecat      studyid                     country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------  ----------  --------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
1       Birth       ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                -0.2493662   -0.4043156   -0.1115136
1       Birth       kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                -0.0167856   -0.0691509    0.0330149
1       6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Control              NA                -0.1461988   -0.3192326    0.0041394
1       6 months    ki1000304-EU                INDIA                          Control              NA                -0.1990741   -0.7996261    0.2010682
1       6 months    ki1000304-VITAMIN-A         INDIA                          Control              NA                 0.0042209   -0.1279377    0.1208947
1       6 months    ki1000304b-SAS-CompFeed     INDIA                          Control              NA                 0.0346021   -0.3507362    0.3100110
1       6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Control              NA                 0.0344828   -0.2041211    0.2258059
1       6 months    ki1119695-PROBIT            BELARUS                        Control              NA                -0.0512821   -0.2929968    0.1452462
1       6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                -0.1080566   -0.2677526    0.0315229
1       6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                 0.1805320   -0.0001805    0.3285933
1       6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                -0.0653128   -0.1440957    0.0080452
1       24 months   ki1000111-WASH-Kenya        KENYA                          Control              NA                -0.0046018   -0.2159877    0.1700371
1       24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Control              NA                -0.4706041   -0.9665620   -0.0997245
1       24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                 0.1947115   -0.0129358    0.3597921
2       Birth       ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                 0.1294118    0.0093064    0.2349563
2       Birth       kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                -0.1279963   -0.1969450   -0.0630192
2       Birth       kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                 0.1706539   -0.4613408    0.5293261
2       6 months    ki1000304-VITAMIN-A         INDIA                          Control              NA                -0.1464020   -0.3287764    0.0109415
2       6 months    ki1000304b-SAS-CompFeed     INDIA                          Control              NA                -0.1754386   -0.4978867    0.0775965
2       6 months    ki1119695-PROBIT            BELARUS                        Control              NA                -0.0716113   -0.2860594    0.1070781
2       6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                -0.2356065   -0.4624883   -0.0439217
2       6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                -0.2693498   -0.5507109   -0.0390390
2       6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Control              NA                -0.0441176   -0.4615695    0.2541021
2       6 months    ki1148112-LCNI-5            MALAWI                         Control              NA                -0.2991453   -0.8744010    0.0995638
2       6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                -0.0612153   -0.1541488    0.0242351
2       6 months    kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                -0.0851944   -0.9184139    0.3861352
2       24 months   ki1000111-WASH-Kenya        KENYA                          Control              NA                 0.0679245   -0.3983250    0.3787105
2       24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Control              NA                 0.0376304   -0.3268401    0.3019843
2       24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                -0.2472826   -0.5210169   -0.0228117
3       Birth       ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                 0.0316415   -0.1115589    0.1563937
3       Birth       kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                -0.1080507   -0.1764305   -0.0436453
3       Birth       kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                 0.0793651   -0.3146203    0.3552749
3       6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                -0.6704545   -1.8095142    0.0067968
3       6 months    ki1000304-EU                INDIA                          Control              NA                 0.1923077   -0.1973745    0.4551689
3       6 months    ki1000304-VITAMIN-A         INDIA                          Control              NA                -0.0172144   -0.1511357    0.1011267
3       6 months    ki1119695-PROBIT            BELARUS                        Control              NA                -0.2102659   -0.5782650    0.0719280
3       6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                -0.0046970   -0.1357884    0.1112641
3       6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                 0.0224880   -0.2067952    0.2082089
3       6 months    ki1148112-LCNI-5            MALAWI                         Control              NA                -0.0370370   -0.5776010    0.3183030
3       6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                -0.0716340   -0.1569282    0.0073718
3       6 months    kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                -0.0517121   -0.4036397    0.2119785
3       24 months   ki1000111-WASH-Kenya        KENYA                          Control              NA                -0.0038525   -0.3565930    0.2571686
3       24 months   ki1000304-EU                INDIA                          Control              NA                 0.0000000   -0.4375134    0.3043543
3       24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                -0.0833333   -0.3266130    0.1153327
4       Birth       ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                 0.0822028   -0.0701588    0.2128723
4       Birth       kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                -0.0494421   -0.1281845    0.0238045
4       Birth       kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                -0.1850932   -0.8159853    0.2266205
4       6 months    iLiNS_DYADM_LNS             MALAWI                         Control              NA                 0.1735537   -0.2005389    0.4310776
4       6 months    ki1000304-EU                INDIA                          Control              NA                 0.1666667   -0.3942968    0.5019393
4       6 months    ki1000304-VITAMIN-A         INDIA                          Control              NA                -0.1203636   -0.2816763    0.0206461
4       6 months    ki1000304b-SAS-CompFeed     INDIA                          Control              NA                -0.0389610   -0.7599185    0.3866534
4       6 months    ki1119695-PROBIT            BELARUS                        Control              NA                -0.0242915   -0.3557815    0.2261488
4       6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                -0.0484380   -0.2123599    0.0933201
4       6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                -0.1707213   -0.3927817    0.0159345
4       6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Control              NA                -0.0139860   -0.4818397    0.3061546
4       6 months    ki1148112-LCNI-5            MALAWI                         Control              NA                 0.3875862   -0.0407472    0.6396333
4       6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                -0.0881319   -0.1864126    0.0020074
4       6 months    kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                 0.0997770   -0.1127608    0.2717200
4       24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                 0.2997543   -0.2992106    0.6225831
4       24 months   ki1000111-WASH-Kenya        KENYA                          Control              NA                 0.0248112   -0.2410530    0.2337207
4       24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                -0.0757576   -0.4531633    0.2036309
5       Birth       ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                 0.0546417   -0.0885697    0.1790123
5       Birth       kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                 0.0155610   -0.0642780    0.0894106
5       6 months    iLiNS_DYADM_LNS             MALAWI                         Control              NA                 0.0128205   -0.3494638    0.2778440
5       6 months    ki1000304-VITAMIN-A         INDIA                          Control              NA                -0.0314961   -0.1625659    0.0847967
5       6 months    ki1000304b-SAS-CompFeed     INDIA                          Control              NA                -0.3190045   -1.0139424    0.1361357
5       6 months    ki1119695-PROBIT            BELARUS                        Control              NA                -0.1546197   -0.4680400    0.0918867
5       6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                -0.0858824   -0.2664632    0.0689501
5       6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                 0.2000000    0.0203561    0.3467014
5       6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Control              NA                -0.0131579   -0.3735803    0.2526910
5       6 months    ki1148112-LCNI-5            MALAWI                         Control              NA                 0.0438596   -0.5819287    0.4220951
5       6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                -0.0387444   -0.1290159    0.0443094
5       6 months    kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                 0.0309822   -0.2324522    0.2381080
5       24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                -0.1785714   -0.7500475    0.2062898
5       24 months   ki1000111-WASH-Kenya        KENYA                          Control              NA                -0.0072874   -0.2745525    0.2039339
5       24 months   ki1000304-ZnMort            INDIA                          Control              NA                 0.1000000   -0.3034803    0.3785867
5       24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                 0.3076923    0.1718456    0.4212553
5       24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                 0.1025641   -0.5867186    0.4924171
6       Birth       ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                -0.0617672   -0.2210036    0.0767025
6       Birth       kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                -0.1372850   -0.2348274   -0.0474478
6       Birth       kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                -0.1593928   -0.6446630    0.1826948
6       6 months    ki1000304-VITAMIN-A         INDIA                          Control              NA                 0.0190476   -0.1155863    0.1374333
6       6 months    ki1000304b-SAS-CompFeed     INDIA                          Control              NA                -0.3043478   -0.6683652   -0.0197547
6       6 months    ki1119695-PROBIT            BELARUS                        Control              NA                -0.1510791   -0.5598656    0.1505786
6       6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                -0.0378685   -0.2163611    0.1144316
6       6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                -0.3984962   -0.7793489   -0.0991615
6       6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Control              NA                -0.1529412   -0.5985897    0.1684712
6       6 months    ki1148112-LCNI-5            MALAWI                         Control              NA                -0.2638889   -0.8909415    0.1552277
6       6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                -0.0955389   -0.1897753   -0.0087665
6       6 months    kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                 0.1541835   -0.2283667    0.4175962
6       24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                -0.2032520   -0.6735310    0.1348738
6       24 months   ki1000111-WASH-Kenya        KENYA                          Control              NA                 0.2236918   -0.2354799    0.5122102
7       Birth       ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                 0.0056460   -0.1501962    0.1403729
7       Birth       kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                 0.0165838   -0.0587745    0.0865785
7       6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Control              NA                 0.0613027   -0.0708721    0.1771635
7       6 months    ki1000304-VITAMIN-A         INDIA                          Control              NA                 0.1100703   -0.0089857    0.2150781
7       6 months    ki1119695-PROBIT            BELARUS                        Control              NA                -0.1366205   -0.3558408    0.0471550
7       6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                 0.0205696   -0.1289571    0.1502920
7       6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                -0.2148760   -0.5251706    0.0322894
7       6 months    ki1148112-LCNI-5            MALAWI                         Control              NA                 0.4078947   -0.1686690    0.7000103
7       6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                 0.0240453   -0.0514672    0.0941347
7       6 months    kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                 0.1312149   -0.0908469    0.3080719
7       24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                -0.1354839   -0.7290296    0.2543080
7       24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                -0.0124717   -0.2629159    0.1883079
8       Birth       ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                -0.1696406   -0.3822992    0.0103017
8       Birth       kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                -0.0538796   -0.1218193    0.0099455
8       6 months    iLiNS_DYADM_LNS             MALAWI                         Control              NA                -0.1685824   -0.5384503    0.1123634
8       6 months    ki1000304-EU                INDIA                          Control              NA                -0.0714286   -0.7186102    0.3320422
8       6 months    ki1000304-VITAMIN-A         INDIA                          Control              NA                -0.1290019   -0.2502123   -0.0195431
8       6 months    ki1119695-PROBIT            BELARUS                        Control              NA                -0.1646575   -0.4315608    0.0524837
8       6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                 0.1826674    0.0314931    0.3102448
8       6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                 0.1728526   -0.0454852    0.3455930
8       6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Control              NA                -0.1936340   -0.5539449    0.0831322
8       6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                -0.0004894   -0.0834909    0.0761538
8       6 months    kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                -0.1622261   -0.5258347    0.1147341
8       24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                -0.1666667   -0.5608784    0.1279839
8       24 months   ki1000304-EU                INDIA                          Control              NA                 0.0000000   -0.3246453    0.2450809
8       24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                 0.0184443   -0.3741816    0.2988906
9       Birth       ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                -0.0808202   -0.2925920    0.0962560
9       Birth       kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                -0.0568585   -0.1217622    0.0042900
9       6 months    iLiNS_DYADM_LNS             MALAWI                         Control              NA                -0.1550000   -0.4404889    0.0739082
9       6 months    ki1000304-VITAMIN-A         INDIA                          Control              NA                -0.0329360   -0.1664847    0.0853230
9       6 months    ki1112895-Guatemala BSC     GUATEMALA                      Control              NA                 0.1250000   -0.2407097    0.3829137
9       6 months    ki1119695-PROBIT            BELARUS                        Control              NA                -0.1972993   -0.5188750    0.0561925
9       6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                 0.3092528    0.1777690    0.4197109
9       6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                 0.0937198   -0.1280523    0.2718921
9       6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Control              NA                -0.4304348   -0.8521895   -0.1047161
9       6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                 0.0109290   -0.0684690    0.0844268
9       6 months    kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                -0.0263070   -0.4526446    0.2749045
9       24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                 0.1194255   -0.1978632    0.3526712
9       24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                -0.5365854   -1.0245907   -0.1662083
10      Birth       ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                 0.0937057   -0.0846777    0.2427525
10      Birth       kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                -0.0517316   -0.1043196   -0.0016478
10      6 months    ki1000304-VITAMIN-A         INDIA                          Control              NA                -0.0612245   -0.2412030    0.0926565
10      6 months    ki1000304b-SAS-CompFeed     INDIA                          Control              NA                 0.2363636   -0.1286405    0.4833248
10      6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              NA                 0.0729483   -0.9125303    0.5506347
10      6 months    ki1119695-PROBIT            BELARUS                        Control              NA                -0.0557286   -0.2198390    0.0863033
10      6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                 0.0042794   -0.1732390    0.1549381
10      6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                -0.5630252   -1.0067007   -0.2174450
10      6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                -0.0744029   -0.1534984   -0.0007309
10      6 months    kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                 0.0967164   -0.2663430    0.3556870
10      24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                 0.1151515   -0.5119914    0.4821685
10      24 months   ki1000111-WASH-Kenya        KENYA                          Control              NA                -0.0528559   -0.3228755    0.1620484
10      24 months   ki1119695-PROBIT            BELARUS                        Control              NA                 0.0294118   -0.5840193    0.4052841
11      Birth       ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                -0.0159015   -0.1999719    0.1399334
11      Birth       kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                -0.0739303   -0.1266564   -0.0236717
11      6 months    iLiNS_DYADM_LNS             MALAWI                         Control              NA                -0.0187110   -0.4263138    0.2724097
11      6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Control              NA                -0.2886003   -0.4897163   -0.1146355
11      6 months    ki1000304-EU                INDIA                          Control              NA                -0.2500000   -0.7108477    0.0867100
11      6 months    ki1000304-VITAMIN-A         INDIA                          Control              NA                 0.0069585   -0.1533984    0.1450210
11      6 months    ki1000304b-SAS-CompFeed     INDIA                          Control              NA                 0.1200000   -0.0993656    0.2955938
11      6 months    ki1119695-PROBIT            BELARUS                        Control              NA                -0.2752026   -0.5888258   -0.0234864
11      6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                 0.1894433    0.0571725    0.3031576
11      6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                -0.4489164   -0.8601379   -0.1286038
11      6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Control              NA                 0.0787309   -0.2490151    0.3204752
11      6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                -0.0661587   -0.1348538   -0.0016219
11      6 months    kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                 0.3493761   -0.5353256    0.7242856
11      24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                -0.5078770   -1.0732450   -0.0966832
11      24 months   ki1000111-WASH-Kenya        KENYA                          Control              NA                 0.1021672   -0.2457140    0.3528982
12      Birth       ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                 0.1184964   -0.0220640    0.2397260
12      Birth       kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                -0.0327026   -0.0819840    0.0143342
12      6 months    iLiNS_DYADM_LNS             MALAWI                         Control              NA                -0.0319149   -0.3224871    0.1948138
12      6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Control              NA                 0.0256410   -0.1809228    0.1960733
12      6 months    ki1000304-VITAMIN-A         INDIA                          Control              NA                -0.0377907   -0.2553944    0.1420947
12      6 months    ki1000304b-SAS-CompFeed     INDIA                          Control              NA                 0.0186335   -0.2450993    0.2265033
12      6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Control              NA                -0.0912698   -0.5151207    0.2140099
12      6 months    ki1119695-PROBIT            BELARUS                        Control              NA                -0.1788054   -0.4581434    0.0470196
12      6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                -0.0170677   -0.1803746    0.1236453
12      6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                -0.0354610   -0.2845782    0.1653451
12      6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Control              NA                -0.0691489   -0.3615010    0.1604270
12      6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                -0.0081828   -0.0752053    0.0546618
12      6 months    kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                 0.0952381   -0.7433485    0.5304472
12      24 months   ki1000107-Serrinha-VitA     BRAZIL                         Control              NA                -0.0034594   -0.1456215    0.1210617
12      24 months   ki1000111-WASH-Kenya        KENYA                          Control              NA                -0.2361111   -0.5278687   -0.0000668
12      24 months   ki1119695-PROBIT            BELARUS                        Control              NA                -0.1436673   -0.8113740    0.2779101
