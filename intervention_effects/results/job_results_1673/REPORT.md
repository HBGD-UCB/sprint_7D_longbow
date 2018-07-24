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
        value: TRUE        
      baseline_level:
        input: 'character'
        value: "[1,2)"
  output_directory:
    value: ''

---







## Methods
## Outcome Variable

**Outcome Variable:** ever_stunted

## Predictor Variables

**Intervention Variable:** tr.x

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* brthmon
* agecat
* studyid
* country

## Data Summary

brthmon   agecat        studyid                     country                        tr.x       ever_stunted   n_cell      n
--------  ------------  --------------------------  -----------------------------  --------  -------------  -------  -----
6         0-6 months    ki1000107-Serrinha-VitA     BRAZIL                         Control               0        5     10
6         0-6 months    ki1000107-Serrinha-VitA     BRAZIL                         Control               1        1     10
6         0-6 months    ki1000107-Serrinha-VitA     BRAZIL                         Other                 0        4     10
6         0-6 months    ki1000107-Serrinha-VitA     BRAZIL                         Other                 1        0     10
5         0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                   0        1      4
5         0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Other                 0        3      4
6         0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Control               0        3     11
6         0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                   0        4     11
6         0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Other                 0        4     11
7         0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Control               0        6     44
7         0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Control               1        0     44
7         0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                   0       10     44
7         0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                   1        1     44
7         0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Other                 0       27     44
7         0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Other                 1        0     44
8         0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Control               0       13     54
8         0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Control               1        0     54
8         0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                   0       11     54
8         0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                   1        1     54
8         0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Other                 0       27     54
8         0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Other                 1        2     54
9         0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Control               0        6     42
9         0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Control               1        0     42
9         0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                   0       11     42
9         0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                   1        4     42
9         0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Other                 0       18     42
9         0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Other                 1        3     42
10        0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Control               0        2     36
10        0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Control               1        3     36
10        0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                   0       15     36
10        0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                   1        1     36
10        0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Other                 0       14     36
10        0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Other                 1        1     36
12        0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Control               0        4     15
12        0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Control               1        2     15
12        0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                   0        2     15
12        0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                   1        0     15
12        0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Other                 0        5     15
12        0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Other                 1        2     15
11        0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Control               0        3     22
11        0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Control               1        1     22
11        0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                   0        7     22
11        0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                   1        0     22
11        0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Other                 0       10     22
11        0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Other                 1        1     22
1         0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Other                 0        1      2
1         0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Other                 1        1      2
2         0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Other                 0        1      1
4         0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                   0        1      1
5         0-6 months    ki1000111-WASH-Kenya        KENYA                          Control               0        3      8
5         0-6 months    ki1000111-WASH-Kenya        KENYA                          LNS                   0        2      8
5         0-6 months    ki1000111-WASH-Kenya        KENYA                          Other                 0        3      8
11        0-6 months    ki1000111-WASH-Kenya        KENYA                          Control               0        3     13
11        0-6 months    ki1000111-WASH-Kenya        KENYA                          Control               1        0     13
11        0-6 months    ki1000111-WASH-Kenya        KENYA                          LNS                   0        5     13
11        0-6 months    ki1000111-WASH-Kenya        KENYA                          LNS                   1        0     13
11        0-6 months    ki1000111-WASH-Kenya        KENYA                          Other                 0        4     13
11        0-6 months    ki1000111-WASH-Kenya        KENYA                          Other                 1        1     13
8         0-6 months    ki1000111-WASH-Kenya        KENYA                          Control               0        4     14
8         0-6 months    ki1000111-WASH-Kenya        KENYA                          Control               1        2     14
8         0-6 months    ki1000111-WASH-Kenya        KENYA                          LNS                   0        3     14
8         0-6 months    ki1000111-WASH-Kenya        KENYA                          LNS                   1        0     14
8         0-6 months    ki1000111-WASH-Kenya        KENYA                          Other                 0        5     14
8         0-6 months    ki1000111-WASH-Kenya        KENYA                          Other                 1        0     14
10        0-6 months    ki1000111-WASH-Kenya        KENYA                          Control               0        2     12
10        0-6 months    ki1000111-WASH-Kenya        KENYA                          Control               1        0     12
10        0-6 months    ki1000111-WASH-Kenya        KENYA                          LNS                   0        2     12
10        0-6 months    ki1000111-WASH-Kenya        KENYA                          LNS                   1        0     12
10        0-6 months    ki1000111-WASH-Kenya        KENYA                          Other                 0        7     12
10        0-6 months    ki1000111-WASH-Kenya        KENYA                          Other                 1        1     12
7         0-6 months    ki1000111-WASH-Kenya        KENYA                          Control               0        4     12
7         0-6 months    ki1000111-WASH-Kenya        KENYA                          Control               1        0     12
7         0-6 months    ki1000111-WASH-Kenya        KENYA                          LNS                   0        3     12
7         0-6 months    ki1000111-WASH-Kenya        KENYA                          LNS                   1        0     12
7         0-6 months    ki1000111-WASH-Kenya        KENYA                          Other                 0        4     12
7         0-6 months    ki1000111-WASH-Kenya        KENYA                          Other                 1        1     12
6         0-6 months    ki1000111-WASH-Kenya        KENYA                          Control               0        3      6
6         0-6 months    ki1000111-WASH-Kenya        KENYA                          Control               1        0      6
6         0-6 months    ki1000111-WASH-Kenya        KENYA                          LNS                   0        1      6
6         0-6 months    ki1000111-WASH-Kenya        KENYA                          LNS                   1        0      6
6         0-6 months    ki1000111-WASH-Kenya        KENYA                          Other                 0        1      6
6         0-6 months    ki1000111-WASH-Kenya        KENYA                          Other                 1        1      6
9         0-6 months    ki1000111-WASH-Kenya        KENYA                          Control               0        3     10
9         0-6 months    ki1000111-WASH-Kenya        KENYA                          LNS                   0        1     10
9         0-6 months    ki1000111-WASH-Kenya        KENYA                          Other                 0        6     10
12        0-6 months    ki1000111-WASH-Kenya        KENYA                          Control               0        1      7
12        0-6 months    ki1000111-WASH-Kenya        KENYA                          Control               1        0      7
12        0-6 months    ki1000111-WASH-Kenya        KENYA                          LNS                   0        3      7
12        0-6 months    ki1000111-WASH-Kenya        KENYA                          LNS                   1        0      7
12        0-6 months    ki1000111-WASH-Kenya        KENYA                          Other                 0        2      7
12        0-6 months    ki1000111-WASH-Kenya        KENYA                          Other                 1        1      7
3         0-6 months    ki1000111-WASH-Kenya        KENYA                          Control               0        1      4
3         0-6 months    ki1000111-WASH-Kenya        KENYA                          LNS                   0        1      4
3         0-6 months    ki1000111-WASH-Kenya        KENYA                          Other                 0        2      4
1         0-6 months    ki1000111-WASH-Kenya        KENYA                          Control               0        1      4
1         0-6 months    ki1000111-WASH-Kenya        KENYA                          LNS                   0        1      4
1         0-6 months    ki1000111-WASH-Kenya        KENYA                          Other                 0        2      4
4         0-6 months    ki1000111-WASH-Kenya        KENYA                          Other                 0        1      1
2         0-6 months    ki1000111-WASH-Kenya        KENYA                          LNS                   0        1      1
11        0-6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Control               0       25     88
11        0-6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Control               1        6     88
11        0-6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Other                 0       44     88
11        0-6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Other                 1       13     88
10        0-6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Control               0       21     63
10        0-6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Control               1       10     63
10        0-6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Other                 0       23     63
10        0-6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Other                 1        9     63
9         0-6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Control               0        2      8
9         0-6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Other                 0        6      8
12        0-6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Control               0       20     53
12        0-6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Control               1       14     53
12        0-6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Other                 0       13     53
12        0-6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Other                 1        6     53
1         0-6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Control               0       24     69
1         0-6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Control               1       10     69
1         0-6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Other                 0       26     69
1         0-6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Other                 1        9     69
2         0-6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Control               0        7     11
2         0-6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Other                 0        4     11
9         0-6 months    ki1000304-EU                INDIA                          Control               0        0      5
9         0-6 months    ki1000304-EU                INDIA                          Control               1        2      5
9         0-6 months    ki1000304-EU                INDIA                          Zinc                  0        1      5
9         0-6 months    ki1000304-EU                INDIA                          Zinc                  1        2      5
11        0-6 months    ki1000304-EU                INDIA                          Control               0        1      1
1         0-6 months    ki1000304-EU                INDIA                          Control               0        1      4
1         0-6 months    ki1000304-EU                INDIA                          Control               1        1      4
1         0-6 months    ki1000304-EU                INDIA                          Zinc                  0        2      4
1         0-6 months    ki1000304-EU                INDIA                          Zinc                  1        0      4
2         0-6 months    ki1000304-EU                INDIA                          Control               0        0      4
2         0-6 months    ki1000304-EU                INDIA                          Control               1        1      4
2         0-6 months    ki1000304-EU                INDIA                          Zinc                  0        2      4
2         0-6 months    ki1000304-EU                INDIA                          Zinc                  1        1      4
12        0-6 months    ki1000304-VITAMIN-A         INDIA                          Control               0       15     40
12        0-6 months    ki1000304-VITAMIN-A         INDIA                          Control               1        3     40
12        0-6 months    ki1000304-VITAMIN-A         INDIA                          Other                 0       17     40
12        0-6 months    ki1000304-VITAMIN-A         INDIA                          Other                 1        5     40
5         0-6 months    ki1000304-VITAMIN-A         INDIA                          Control               0       11     30
5         0-6 months    ki1000304-VITAMIN-A         INDIA                          Control               1        4     30
5         0-6 months    ki1000304-VITAMIN-A         INDIA                          Other                 0       11     30
5         0-6 months    ki1000304-VITAMIN-A         INDIA                          Other                 1        4     30
6         0-6 months    ki1000304-VITAMIN-A         INDIA                          Control               0       11     33
6         0-6 months    ki1000304-VITAMIN-A         INDIA                          Control               1        6     33
6         0-6 months    ki1000304-VITAMIN-A         INDIA                          Other                 0        5     33
6         0-6 months    ki1000304-VITAMIN-A         INDIA                          Other                 1       11     33
3         0-6 months    ki1000304-VITAMIN-A         INDIA                          Control               0       12     31
3         0-6 months    ki1000304-VITAMIN-A         INDIA                          Control               1        5     31
3         0-6 months    ki1000304-VITAMIN-A         INDIA                          Other                 0       10     31
3         0-6 months    ki1000304-VITAMIN-A         INDIA                          Other                 1        4     31
4         0-6 months    ki1000304-VITAMIN-A         INDIA                          Control               0        8     21
4         0-6 months    ki1000304-VITAMIN-A         INDIA                          Control               1        4     21
4         0-6 months    ki1000304-VITAMIN-A         INDIA                          Other                 0        5     21
4         0-6 months    ki1000304-VITAMIN-A         INDIA                          Other                 1        4     21
7         0-6 months    ki1000304-VITAMIN-A         INDIA                          Control               0       16     42
7         0-6 months    ki1000304-VITAMIN-A         INDIA                          Control               1        5     42
7         0-6 months    ki1000304-VITAMIN-A         INDIA                          Other                 0       11     42
7         0-6 months    ki1000304-VITAMIN-A         INDIA                          Other                 1       10     42
8         0-6 months    ki1000304-VITAMIN-A         INDIA                          Control               0       11     31
8         0-6 months    ki1000304-VITAMIN-A         INDIA                          Control               1       10     31
8         0-6 months    ki1000304-VITAMIN-A         INDIA                          Other                 0        6     31
8         0-6 months    ki1000304-VITAMIN-A         INDIA                          Other                 1        4     31
1         0-6 months    ki1000304-VITAMIN-A         INDIA                          Control               0       11     35
1         0-6 months    ki1000304-VITAMIN-A         INDIA                          Control               1        5     35
1         0-6 months    ki1000304-VITAMIN-A         INDIA                          Other                 0       17     35
1         0-6 months    ki1000304-VITAMIN-A         INDIA                          Other                 1        2     35
9         0-6 months    ki1000304-VITAMIN-A         INDIA                          Control               0        8     27
9         0-6 months    ki1000304-VITAMIN-A         INDIA                          Control               1        4     27
9         0-6 months    ki1000304-VITAMIN-A         INDIA                          Other                 0       11     27
9         0-6 months    ki1000304-VITAMIN-A         INDIA                          Other                 1        4     27
10        0-6 months    ki1000304-VITAMIN-A         INDIA                          Control               0        6     15
10        0-6 months    ki1000304-VITAMIN-A         INDIA                          Control               1        1     15
10        0-6 months    ki1000304-VITAMIN-A         INDIA                          Other                 0        6     15
10        0-6 months    ki1000304-VITAMIN-A         INDIA                          Other                 1        2     15
11        0-6 months    ki1000304-VITAMIN-A         INDIA                          Control               0        4     11
11        0-6 months    ki1000304-VITAMIN-A         INDIA                          Control               1        3     11
11        0-6 months    ki1000304-VITAMIN-A         INDIA                          Other                 0        4     11
11        0-6 months    ki1000304-VITAMIN-A         INDIA                          Other                 1        0     11
2         0-6 months    ki1000304-VITAMIN-A         INDIA                          Control               0        5     18
2         0-6 months    ki1000304-VITAMIN-A         INDIA                          Control               1        3     18
2         0-6 months    ki1000304-VITAMIN-A         INDIA                          Other                 0        6     18
2         0-6 months    ki1000304-VITAMIN-A         INDIA                          Other                 1        4     18
1         0-6 months    ki1000304-Vitamin-B12       INDIA                          Control               0        1      1
10        0-6 months    ki1000304-ZnMort            INDIA                          Other                 0        6     22
10        0-6 months    ki1000304-ZnMort            INDIA                          Other                 1        6     22
10        0-6 months    ki1000304-ZnMort            INDIA                          Zinc                  0        5     22
10        0-6 months    ki1000304-ZnMort            INDIA                          Zinc                  1        5     22
12        0-6 months    ki1000304-ZnMort            INDIA                          Other                 0        7     22
12        0-6 months    ki1000304-ZnMort            INDIA                          Other                 1        3     22
12        0-6 months    ki1000304-ZnMort            INDIA                          Zinc                  0        5     22
12        0-6 months    ki1000304-ZnMort            INDIA                          Zinc                  1        7     22
9         0-6 months    ki1000304-ZnMort            INDIA                          Other                 0        1     17
9         0-6 months    ki1000304-ZnMort            INDIA                          Other                 1        3     17
9         0-6 months    ki1000304-ZnMort            INDIA                          Zinc                  0        9     17
9         0-6 months    ki1000304-ZnMort            INDIA                          Zinc                  1        4     17
2         0-6 months    ki1000304-ZnMort            INDIA                          Other                 0        1     11
2         0-6 months    ki1000304-ZnMort            INDIA                          Other                 1        0     11
2         0-6 months    ki1000304-ZnMort            INDIA                          Zinc                  0        5     11
2         0-6 months    ki1000304-ZnMort            INDIA                          Zinc                  1        5     11
11        0-6 months    ki1000304-ZnMort            INDIA                          Other                 0        1     19
11        0-6 months    ki1000304-ZnMort            INDIA                          Other                 1        2     19
11        0-6 months    ki1000304-ZnMort            INDIA                          Zinc                  0       12     19
11        0-6 months    ki1000304-ZnMort            INDIA                          Zinc                  1        4     19
3         0-6 months    ki1000304-ZnMort            INDIA                          Other                 0        4     14
3         0-6 months    ki1000304-ZnMort            INDIA                          Other                 1        4     14
3         0-6 months    ki1000304-ZnMort            INDIA                          Zinc                  0        4     14
3         0-6 months    ki1000304-ZnMort            INDIA                          Zinc                  1        2     14
4         0-6 months    ki1000304-ZnMort            INDIA                          Other                 0        3      8
4         0-6 months    ki1000304-ZnMort            INDIA                          Other                 1        1      8
4         0-6 months    ki1000304-ZnMort            INDIA                          Zinc                  0        3      8
4         0-6 months    ki1000304-ZnMort            INDIA                          Zinc                  1        1      8
1         0-6 months    ki1000304-ZnMort            INDIA                          Other                 0        7     16
1         0-6 months    ki1000304-ZnMort            INDIA                          Other                 1        5     16
1         0-6 months    ki1000304-ZnMort            INDIA                          Zinc                  0        2     16
1         0-6 months    ki1000304-ZnMort            INDIA                          Zinc                  1        2     16
5         0-6 months    ki1000304-ZnMort            INDIA                          Other                 0        5     11
5         0-6 months    ki1000304-ZnMort            INDIA                          Other                 1        1     11
5         0-6 months    ki1000304-ZnMort            INDIA                          Zinc                  0        3     11
5         0-6 months    ki1000304-ZnMort            INDIA                          Zinc                  1        2     11
6         0-6 months    ki1000304-ZnMort            INDIA                          Other                 0        5     10
6         0-6 months    ki1000304-ZnMort            INDIA                          Other                 1        4     10
6         0-6 months    ki1000304-ZnMort            INDIA                          Zinc                  0        1     10
6         0-6 months    ki1000304-ZnMort            INDIA                          Zinc                  1        0     10
7         0-6 months    ki1000304-ZnMort            INDIA                          Other                 0        6     14
7         0-6 months    ki1000304-ZnMort            INDIA                          Other                 1        2     14
7         0-6 months    ki1000304-ZnMort            INDIA                          Zinc                  0        4     14
7         0-6 months    ki1000304-ZnMort            INDIA                          Zinc                  1        2     14
8         0-6 months    ki1000304-ZnMort            INDIA                          Other                 0        8     17
8         0-6 months    ki1000304-ZnMort            INDIA                          Other                 1        4     17
8         0-6 months    ki1000304-ZnMort            INDIA                          Zinc                  0        2     17
8         0-6 months    ki1000304-ZnMort            INDIA                          Zinc                  1        3     17
10        0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Control               0       47    133
10        0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Control               1       17    133
10        0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Other                 0       46    133
10        0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Other                 1       23    133
11        0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Control               0       28    104
11        0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Control               1       10    104
11        0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Other                 0       46    104
11        0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Other                 1       20    104
12        0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Control               0       39    109
12        0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Control               1       20    109
12        0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Other                 0       40    109
12        0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Other                 1       10    109
1         0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Control               0       28     78
1         0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Control               1       15     78
1         0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Other                 0       26     78
1         0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Other                 1        9     78
2         0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Control               0       25     64
2         0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Control               1        4     64
2         0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Other                 0       25     64
2         0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Other                 1       10     64
3         0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Control               0       24     71
3         0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Control               1        5     71
3         0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Other                 0       27     71
3         0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Other                 1       15     71
4         0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Control               0       19     59
4         0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Control               1        5     59
4         0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Other                 0       27     59
4         0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Other                 1        8     59
5         0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Control               0       25     84
5         0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Control               1       10     84
5         0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Other                 0       38     84
5         0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Other                 1       11     84
6         0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Control               0       29     90
6         0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Control               1       17     90
6         0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Other                 0       30     90
6         0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Other                 1       14     90
5         0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Control               0        3     14
5         0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Control               1        0     14
5         0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Other                 0        8     14
5         0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Other                 1        3     14
6         0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Control               0        2     25
6         0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Control               1        4     25
6         0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Other                 0       11     25
6         0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Other                 1        8     25
8         0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Control               0       10     67
8         0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Control               1        7     67
8         0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Other                 0       34     67
8         0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Other                 1       16     67
9         0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Control               0       11     65
9         0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Control               1        6     65
9         0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Other                 0       23     65
9         0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Other                 1       25     65
12        0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Control               0        4     38
12        0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Control               1        6     38
12        0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Other                 0       20     38
12        0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Other                 1        8     38
2         0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Control               0        7     36
2         0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Control               1        2     36
2         0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Other                 0       21     36
2         0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Other                 1        6     36
10        0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Control               0        7     50
10        0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Control               1        6     50
10        0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Other                 0       19     50
10        0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Other                 1       18     50
11        0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Control               0        3     33
11        0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Control               1        3     33
11        0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Other                 0       16     33
11        0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Other                 1       11     33
1         0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Control               0        4     26
1         0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Control               1        3     26
1         0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Other                 0       13     26
1         0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Other                 1        6     26
3         0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Control               0        5     21
3         0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Control               1        1     21
3         0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Other                 0        7     21
3         0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Other                 1        8     21
4         0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Control               0        1      4
4         0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Control               1        0      4
4         0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Other                 0        2      4
4         0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Other                 1        1      4
7         0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Control               0        6     37
7         0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Control               1        4     37
7         0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Other                 0       20     37
7         0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Other                 1        7     37
7         0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control               0       46    207
7         0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control               1        3    207
7         0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                 0       99    207
7         0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                 1       10    207
7         0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                  0       47    207
7         0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                  1        2    207
8         0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control               0       54    213
8         0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control               1        3    213
8         0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                 0       95    213
8         0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                 1        8    213
8         0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                  0       47    213
8         0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                  1        6    213
9         0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control               0       42    206
9         0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control               1        4    206
9         0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                 0      101    206
9         0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                 1        8    206
9         0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                  0       50    206
9         0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                  1        1    206
10        0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control               0       54    226
10        0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control               1        5    226
10        0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                 0      100    226
10        0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                 1       11    226
10        0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                  0       50    226
10        0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                  1        6    226
11        0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control               0       55    213
11        0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control               1        1    213
11        0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                 0      101    213
11        0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                 1        4    213
11        0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                  0       49    213
11        0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                  1        3    213
12        0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control               0       48    189
12        0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control               1        3    189
12        0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                 0       87    189
12        0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                 1        3    189
12        0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                  0       46    189
12        0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                  1        2    189
1         0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control               0       36    160
1         0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control               1        3    160
1         0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                 0       80    160
1         0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                 1        4    160
1         0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                  0       34    160
1         0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                  1        3    160
2         0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control               0       37    165
2         0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control               1        2    165
2         0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                 0       77    165
2         0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                 1        4    165
2         0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                  0       41    165
2         0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                  1        4    165
3         0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control               0       31    156
3         0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control               1        2    156
3         0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                 0       74    156
3         0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                 1        6    156
3         0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                  0       36    156
3         0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                  1        7    156
4         0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control               0       41    171
4         0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control               1        5    171
4         0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                 0       73    171
4         0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                 1        5    171
4         0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                  0       41    171
4         0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                  1        6    171
5         0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control               0       37    170
5         0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control               1        5    170
5         0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                 0       89    170
5         0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                 1        4    170
5         0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                  0       31    170
5         0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                  1        4    170
6         0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control               0       36    158
6         0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control               1        4    158
6         0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                 0       67    158
6         0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                 1        5    158
6         0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                  0       43    158
6         0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                  1        3    158
1         0-6 months    ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc                  0        3      4
1         0-6 months    ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc                  1        1      4
11        0-6 months    ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc                  0       11     13
11        0-6 months    ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc                  1        2     13
12        0-6 months    ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc                  0        2      3
12        0-6 months    ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc                  1        1      3
8         0-6 months    ki1112895-Burkina Faso Zn   BURKINA FASO                   Control               0        2      4
8         0-6 months    ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc                  0        2      4
10        0-6 months    ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc                  0        3      3
2         0-6 months    ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc                  0        4      4
7         0-6 months    ki1112895-Burkina Faso Zn   BURKINA FASO                   Control               0        4      7
7         0-6 months    ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc                  0        3      7
6         0-6 months    ki1112895-Burkina Faso Zn   BURKINA FASO                   Control               0        1      2
6         0-6 months    ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc                  0        1      2
4         0-6 months    ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc                  0        2      3
4         0-6 months    ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc                  1        1      3
9         0-6 months    ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc                  0        2      2
3         0-6 months    ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc                  0        1      1
11        0-6 months    ki1112895-Guatemala BSC     GUATEMALA                      Control               0        1     17
11        0-6 months    ki1112895-Guatemala BSC     GUATEMALA                      Control               1        2     17
11        0-6 months    ki1112895-Guatemala BSC     GUATEMALA                      Other                 0       11     17
11        0-6 months    ki1112895-Guatemala BSC     GUATEMALA                      Other                 1        3     17
12        0-6 months    ki1112895-Guatemala BSC     GUATEMALA                      Control               0        9     25
12        0-6 months    ki1112895-Guatemala BSC     GUATEMALA                      Control               1        0     25
12        0-6 months    ki1112895-Guatemala BSC     GUATEMALA                      Other                 0       13     25
12        0-6 months    ki1112895-Guatemala BSC     GUATEMALA                      Other                 1        3     25
1         0-6 months    ki1112895-Guatemala BSC     GUATEMALA                      Control               0        1     25
1         0-6 months    ki1112895-Guatemala BSC     GUATEMALA                      Control               1        3     25
1         0-6 months    ki1112895-Guatemala BSC     GUATEMALA                      Other                 0       17     25
1         0-6 months    ki1112895-Guatemala BSC     GUATEMALA                      Other                 1        4     25
2         0-6 months    ki1112895-Guatemala BSC     GUATEMALA                      Control               0        5     21
2         0-6 months    ki1112895-Guatemala BSC     GUATEMALA                      Control               1        1     21
2         0-6 months    ki1112895-Guatemala BSC     GUATEMALA                      Other                 0       13     21
2         0-6 months    ki1112895-Guatemala BSC     GUATEMALA                      Other                 1        2     21
5         0-6 months    ki1112895-Guatemala BSC     GUATEMALA                      Control               0        7     26
5         0-6 months    ki1112895-Guatemala BSC     GUATEMALA                      Control               1        0     26
5         0-6 months    ki1112895-Guatemala BSC     GUATEMALA                      Other                 0       11     26
5         0-6 months    ki1112895-Guatemala BSC     GUATEMALA                      Other                 1        8     26
6         0-6 months    ki1112895-Guatemala BSC     GUATEMALA                      Control               0        4     19
6         0-6 months    ki1112895-Guatemala BSC     GUATEMALA                      Control               1        1     19
6         0-6 months    ki1112895-Guatemala BSC     GUATEMALA                      Other                 0       12     19
6         0-6 months    ki1112895-Guatemala BSC     GUATEMALA                      Other                 1        2     19
8         0-6 months    ki1112895-Guatemala BSC     GUATEMALA                      Control               0        0     11
8         0-6 months    ki1112895-Guatemala BSC     GUATEMALA                      Control               1        1     11
8         0-6 months    ki1112895-Guatemala BSC     GUATEMALA                      Other                 0        9     11
8         0-6 months    ki1112895-Guatemala BSC     GUATEMALA                      Other                 1        1     11
10        0-6 months    ki1112895-Guatemala BSC     GUATEMALA                      Control               0        5     20
10        0-6 months    ki1112895-Guatemala BSC     GUATEMALA                      Control               1        1     20
10        0-6 months    ki1112895-Guatemala BSC     GUATEMALA                      Other                 0       12     20
10        0-6 months    ki1112895-Guatemala BSC     GUATEMALA                      Other                 1        2     20
3         0-6 months    ki1112895-Guatemala BSC     GUATEMALA                      Control               0        4     23
3         0-6 months    ki1112895-Guatemala BSC     GUATEMALA                      Control               1        1     23
3         0-6 months    ki1112895-Guatemala BSC     GUATEMALA                      Other                 0       13     23
3         0-6 months    ki1112895-Guatemala BSC     GUATEMALA                      Other                 1        5     23
4         0-6 months    ki1112895-Guatemala BSC     GUATEMALA                      Control               0        5     27
4         0-6 months    ki1112895-Guatemala BSC     GUATEMALA                      Control               1        2     27
4         0-6 months    ki1112895-Guatemala BSC     GUATEMALA                      Other                 0       15     27
4         0-6 months    ki1112895-Guatemala BSC     GUATEMALA                      Other                 1        5     27
7         0-6 months    ki1112895-Guatemala BSC     GUATEMALA                      Control               0        3     16
7         0-6 months    ki1112895-Guatemala BSC     GUATEMALA                      Control               1        1     16
7         0-6 months    ki1112895-Guatemala BSC     GUATEMALA                      Other                 0       10     16
7         0-6 months    ki1112895-Guatemala BSC     GUATEMALA                      Other                 1        2     16
9         0-6 months    ki1112895-Guatemala BSC     GUATEMALA                      Control               0        3     11
9         0-6 months    ki1112895-Guatemala BSC     GUATEMALA                      Control               1        1     11
9         0-6 months    ki1112895-Guatemala BSC     GUATEMALA                      Other                 0        3     11
9         0-6 months    ki1112895-Guatemala BSC     GUATEMALA                      Other                 1        4     11
6         0-6 months    ki1119695-PROBIT            BELARUS                        Control               0      570   1172
6         0-6 months    ki1119695-PROBIT            BELARUS                        Control               1       36   1172
6         0-6 months    ki1119695-PROBIT            BELARUS                        Other                 0      545   1172
6         0-6 months    ki1119695-PROBIT            BELARUS                        Other                 1       21   1172
7         0-6 months    ki1119695-PROBIT            BELARUS                        Control               0      703   1546
7         0-6 months    ki1119695-PROBIT            BELARUS                        Control               1       48   1546
7         0-6 months    ki1119695-PROBIT            BELARUS                        Other                 0      752   1546
7         0-6 months    ki1119695-PROBIT            BELARUS                        Other                 1       43   1546
8         0-6 months    ki1119695-PROBIT            BELARUS                        Control               0      731   1539
8         0-6 months    ki1119695-PROBIT            BELARUS                        Control               1       48   1539
8         0-6 months    ki1119695-PROBIT            BELARUS                        Other                 0      720   1539
8         0-6 months    ki1119695-PROBIT            BELARUS                        Other                 1       40   1539
9         0-6 months    ki1119695-PROBIT            BELARUS                        Control               0      671   1558
9         0-6 months    ki1119695-PROBIT            BELARUS                        Control               1       48   1558
9         0-6 months    ki1119695-PROBIT            BELARUS                        Other                 0      773   1558
9         0-6 months    ki1119695-PROBIT            BELARUS                        Other                 1       66   1558
10        0-6 months    ki1119695-PROBIT            BELARUS                        Control               0      736   1761
10        0-6 months    ki1119695-PROBIT            BELARUS                        Control               1       57   1761
10        0-6 months    ki1119695-PROBIT            BELARUS                        Other                 0      904   1761
10        0-6 months    ki1119695-PROBIT            BELARUS                        Other                 1       64   1761
11        0-6 months    ki1119695-PROBIT            BELARUS                        Control               0      672   1647
11        0-6 months    ki1119695-PROBIT            BELARUS                        Control               1       63   1647
11        0-6 months    ki1119695-PROBIT            BELARUS                        Other                 0      847   1647
11        0-6 months    ki1119695-PROBIT            BELARUS                        Other                 1       65   1647
12        0-6 months    ki1119695-PROBIT            BELARUS                        Control               0      769   1757
12        0-6 months    ki1119695-PROBIT            BELARUS                        Control               1       56   1757
12        0-6 months    ki1119695-PROBIT            BELARUS                        Other                 0      884   1757
12        0-6 months    ki1119695-PROBIT            BELARUS                        Other                 1       48   1757
1         0-6 months    ki1119695-PROBIT            BELARUS                        Control               0      431    957
1         0-6 months    ki1119695-PROBIT            BELARUS                        Control               1       43    957
1         0-6 months    ki1119695-PROBIT            BELARUS                        Other                 0      437    957
1         0-6 months    ki1119695-PROBIT            BELARUS                        Other                 1       46    957
2         0-6 months    ki1119695-PROBIT            BELARUS                        Control               0      419    897
2         0-6 months    ki1119695-PROBIT            BELARUS                        Control               1       34    897
2         0-6 months    ki1119695-PROBIT            BELARUS                        Other                 0      415    897
2         0-6 months    ki1119695-PROBIT            BELARUS                        Other                 1       29    897
3         0-6 months    ki1119695-PROBIT            BELARUS                        Control               0      519   1107
3         0-6 months    ki1119695-PROBIT            BELARUS                        Control               1       39   1107
3         0-6 months    ki1119695-PROBIT            BELARUS                        Other                 0      516   1107
3         0-6 months    ki1119695-PROBIT            BELARUS                        Other                 1       33   1107
4         0-6 months    ki1119695-PROBIT            BELARUS                        Control               0      502   1118
4         0-6 months    ki1119695-PROBIT            BELARUS                        Control               1       29   1118
4         0-6 months    ki1119695-PROBIT            BELARUS                        Other                 0      550   1118
4         0-6 months    ki1119695-PROBIT            BELARUS                        Other                 1       37   1118
5         0-6 months    ki1119695-PROBIT            BELARUS                        Control               0      551   1126
5         0-6 months    ki1119695-PROBIT            BELARUS                        Control               1       32   1126
5         0-6 months    ki1119695-PROBIT            BELARUS                        Other                 0      516   1126
5         0-6 months    ki1119695-PROBIT            BELARUS                        Other                 1       27   1126
11        0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control               0      182    789
11        0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control               1       27    789
11        0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Other                 0      494    789
11        0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Other                 1       86    789
12        0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control               0      203    833
12        0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control               1       15    833
12        0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Other                 0      530    833
12        0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Other                 1       85    833
1         0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control               0      190    893
1         0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control               1       39    893
1         0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Other                 0      545    893
1         0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Other                 1      119    893
2         0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control               0      113    624
2         0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control               1       32    624
2         0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Other                 0      404    624
2         0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Other                 1       75    624
3         0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control               0      160    790
3         0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control               1       32    790
3         0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Other                 0      502    790
3         0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Other                 1       96    790
4         0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control               0      143    661
4         0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control               1       33    661
4         0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Other                 0      393    661
4         0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Other                 1       92    661
6         0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control               0      142    798
6         0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control               1       51    798
6         0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Other                 0      446    798
6         0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Other                 1      159    798
7         0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control               0      168    733
7         0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control               1       30    733
7         0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Other                 0      428    733
7         0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Other                 1      107    733
8         0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control               0      170    836
8         0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control               1       38    836
8         0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Other                 0      526    836
8         0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Other                 1      102    836
9         0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control               0      165    783
9         0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control               1       29    783
9         0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Other                 0      502    783
9         0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Other                 1       87    783
10        0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control               0      122    654
10        0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control               1       30    654
10        0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Other                 0      415    654
10        0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Other                 1       87    654
5         0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control               0      140    708
5         0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control               1       32    708
5         0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Other                 0      424    708
5         0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Other                 1      112    708
6         0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control               0        7     74
6         0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control               1        4     74
6         0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         LNS                   0       49     74
6         0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         LNS                   1       14     74
3         0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control               0       15    104
3         0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control               1        5    104
3         0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         LNS                   0       55    104
3         0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         LNS                   1       29    104
2         0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control               0       11     86
2         0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control               1        4     86
2         0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         LNS                   0       48     86
2         0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         LNS                   1       23     86
4         0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control               0        7     82
4         0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control               1        6     82
4         0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         LNS                   0       48     82
4         0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         LNS                   1       21     82
8         0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control               0       11     78
8         0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control               1        3     78
8         0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         LNS                   0       46     78
8         0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         LNS                   1       18     78
5         0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control               0        4     81
5         0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control               1        8     81
5         0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         LNS                   0       48     81
5         0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         LNS                   1       21     81
7         0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control               0        8     60
7         0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control               1        1     60
7         0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         LNS                   0       31     60
7         0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         LNS                   1       20     60
9         0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control               0       11     95
9         0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control               1        3     95
9         0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         LNS                   0       61     95
9         0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         LNS                   1       20     95
10        0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control               0       15    147
10        0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control               1        6    147
10        0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         LNS                   0      101    147
10        0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         LNS                   1       25    147
11        0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control               0       17    182
11        0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control               1        8    182
11        0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         LNS                   0      104    182
11        0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         LNS                   1       53    182
12        0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control               0       14    118
12        0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control               1        5    118
12        0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         LNS                   0       78    118
12        0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         LNS                   1       21    118
1         0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control               0        8     90
1         0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control               1        7     90
1         0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         LNS                   0       52     90
1         0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         LNS                   1       23     90
11        0-6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Control               0        3      6
11        0-6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Control               1        0      6
11        0-6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Other                 0        1      6
11        0-6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Other                 1        2      6
1         0-6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         LNS                   0        4      6
1         0-6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Other                 0        2      6
3         0-6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Control               0        3      9
3         0-6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Control               1        0      9
3         0-6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         LNS                   0        1      9
3         0-6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         LNS                   1        2      9
3         0-6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Other                 0        3      9
3         0-6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Other                 1        0      9
4         0-6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Control               0        3      7
4         0-6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Control               1        0      7
4         0-6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         LNS                   0        1      7
4         0-6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         LNS                   1        0      7
4         0-6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Other                 0        2      7
4         0-6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Other                 1        1      7
5         0-6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Control               0        1      6
5         0-6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Control               1        2      6
5         0-6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         LNS                   0        0      6
5         0-6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         LNS                   1        1      6
5         0-6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Other                 0        2      6
5         0-6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Other                 1        0      6
6         0-6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Control               0        2      7
6         0-6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Control               1        0      7
6         0-6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         LNS                   0        1      7
6         0-6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         LNS                   1        0      7
6         0-6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Other                 0        2      7
6         0-6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Other                 1        2      7
10        0-6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Control               0        4     11
10        0-6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Control               1        1     11
10        0-6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         LNS                   0        2     11
10        0-6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         LNS                   1        2     11
10        0-6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Other                 0        2     11
10        0-6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Other                 1        0     11
9         0-6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         LNS                   0        3      5
9         0-6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Other                 0        2      5
12        0-6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Control               0        1      3
12        0-6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Control               1        1      3
12        0-6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Other                 0        1      3
12        0-6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Other                 1        0      3
2         0-6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Control               0        1      4
2         0-6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         LNS                   0        1      4
2         0-6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Other                 0        2      4
7         0-6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         LNS                   0        1      2
7         0-6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Other                 0        1      2
8         0-6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Control               0        0      4
8         0-6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Control               1        1      4
8         0-6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         LNS                   0        1      4
8         0-6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         LNS                   1        0      4
8         0-6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Other                 0        1      4
8         0-6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Other                 1        1      4
8         0-6 months    ki1148112-LCNI-5            MALAWI                         Control               0       10     32
8         0-6 months    ki1148112-LCNI-5            MALAWI                         Control               1        5     32
8         0-6 months    ki1148112-LCNI-5            MALAWI                         LNS                   0       15     32
8         0-6 months    ki1148112-LCNI-5            MALAWI                         LNS                   1        2     32
10        0-6 months    ki1148112-LCNI-5            MALAWI                         Control               0       20     69
10        0-6 months    ki1148112-LCNI-5            MALAWI                         Control               1       15     69
10        0-6 months    ki1148112-LCNI-5            MALAWI                         LNS                   0       20     69
10        0-6 months    ki1148112-LCNI-5            MALAWI                         LNS                   1       14     69
9         0-6 months    ki1148112-LCNI-5            MALAWI                         Control               0       14     53
9         0-6 months    ki1148112-LCNI-5            MALAWI                         Control               1       13     53
9         0-6 months    ki1148112-LCNI-5            MALAWI                         LNS                   0       19     53
9         0-6 months    ki1148112-LCNI-5            MALAWI                         LNS                   1        7     53
11        0-6 months    ki1148112-LCNI-5            MALAWI                         Control               0        8     30
11        0-6 months    ki1148112-LCNI-5            MALAWI                         Control               1        5     30
11        0-6 months    ki1148112-LCNI-5            MALAWI                         LNS                   0       11     30
11        0-6 months    ki1148112-LCNI-5            MALAWI                         LNS                   1        6     30
12        0-6 months    ki1148112-LCNI-5            MALAWI                         Control               0        8     28
12        0-6 months    ki1148112-LCNI-5            MALAWI                         Control               1        5     28
12        0-6 months    ki1148112-LCNI-5            MALAWI                         LNS                   0       11     28
12        0-6 months    ki1148112-LCNI-5            MALAWI                         LNS                   1        4     28
1         0-6 months    ki1148112-LCNI-5            MALAWI                         Control               0       10     29
1         0-6 months    ki1148112-LCNI-5            MALAWI                         Control               1        6     29
1         0-6 months    ki1148112-LCNI-5            MALAWI                         LNS                   0        8     29
1         0-6 months    ki1148112-LCNI-5            MALAWI                         LNS                   1        5     29
2         0-6 months    ki1148112-LCNI-5            MALAWI                         Control               0        3      4
2         0-6 months    ki1148112-LCNI-5            MALAWI                         LNS                   0        1      4
3         0-6 months    ki1148112-LCNI-5            MALAWI                         Control               0        1      4
3         0-6 months    ki1148112-LCNI-5            MALAWI                         Control               1        1      4
3         0-6 months    ki1148112-LCNI-5            MALAWI                         LNS                   0        1      4
3         0-6 months    ki1148112-LCNI-5            MALAWI                         LNS                   1        1      4
4         0-6 months    ki1148112-LCNI-5            MALAWI                         Control               0        2      5
4         0-6 months    ki1148112-LCNI-5            MALAWI                         Control               1        1      5
4         0-6 months    ki1148112-LCNI-5            MALAWI                         LNS                   0        0      5
4         0-6 months    ki1148112-LCNI-5            MALAWI                         LNS                   1        2      5
5         0-6 months    ki1148112-LCNI-5            MALAWI                         Control               0        3     10
5         0-6 months    ki1148112-LCNI-5            MALAWI                         Control               1        0     10
5         0-6 months    ki1148112-LCNI-5            MALAWI                         LNS                   0        6     10
5         0-6 months    ki1148112-LCNI-5            MALAWI                         LNS                   1        1     10
6         0-6 months    ki1148112-LCNI-5            MALAWI                         Control               0        1      5
6         0-6 months    ki1148112-LCNI-5            MALAWI                         Control               1        1      5
6         0-6 months    ki1148112-LCNI-5            MALAWI                         LNS                   0        1      5
6         0-6 months    ki1148112-LCNI-5            MALAWI                         LNS                   1        2      5
7         0-6 months    ki1148112-LCNI-5            MALAWI                         Control               0        1      3
7         0-6 months    ki1148112-LCNI-5            MALAWI                         Control               1        0      3
7         0-6 months    ki1148112-LCNI-5            MALAWI                         LNS                   0        1      3
7         0-6 months    ki1148112-LCNI-5            MALAWI                         LNS                   1        1      3
11        0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control               0      894   2760
11        0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control               1      482   2760
11        0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Other                 0      951   2760
11        0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Other                 1      433   2760
1         0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control               0      358   1035
1         0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control               1      140   1035
1         0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Other                 0      410   1035
1         0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Other                 1      127   1035
9         0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control               0      687   1918
9         0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control               1      293   1918
9         0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Other                 0      693   1918
9         0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Other                 1      245   1918
4         0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control               0      383    995
4         0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control               1       96    995
4         0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Other                 0      430    995
4         0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Other                 1       86    995
6         0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control               0      508   1253
6         0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control               1      113   1253
6         0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Other                 0      527   1253
6         0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Other                 1      105   1253
7         0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control               0      534   1374
7         0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control               1      136   1374
7         0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Other                 0      571   1374
7         0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Other                 1      133   1374
5         0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control               0      491   1195
5         0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control               1      122   1195
5         0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Other                 0      473   1195
5         0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Other                 1      109   1195
8         0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control               0      638   1763
8         0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control               1      239   1763
8         0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Other                 0      688   1763
8         0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Other                 1      198   1763
12        0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control               0      494   1446
12        0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control               1      220   1446
12        0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Other                 0      542   1446
12        0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Other                 1      190   1446
10        0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control               0      854   2683
10        0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control               1      473   2683
10        0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Other                 0      972   2683
10        0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Other                 1      384   2683
3         0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control               0      840   2225
3         0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control               1      245   2225
3         0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Other                 0      932   2225
3         0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Other                 1      208   2225
2         0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control               0      259    712
2         0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control               1      101    712
2         0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Other                 0      275    712
2         0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Other                 1       77    712
10        0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     Control               0       27    125
10        0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     Control               1        9    125
10        0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     LNS                   0       26    125
10        0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     LNS                   1        7    125
10        0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     MMN                   0       16    125
10        0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     MMN                   1        6    125
10        0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     Other                 0       28    125
10        0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     Other                 1        6    125
7         0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     Control               0      117    515
7         0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     Control               1       25    515
7         0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     LNS                   0      120    515
7         0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     LNS                   1       44    515
7         0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     MMN                   0       56    515
7         0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     MMN                   1       18    515
7         0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     Other                 0       97    515
7         0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     Other                 1       38    515
3         0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     Control               0      176    867
3         0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     Control               1       50    867
3         0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     LNS                   0      193    867
3         0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     LNS                   1       87    867
3         0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     MMN                   0       89    867
3         0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     MMN                   1       41    867
3         0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     Other                 0      169    867
3         0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     Other                 1       62    867
2         0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     Control               0      117    617
2         0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     Control               1       36    617
2         0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     LNS                   0      139    617
2         0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     LNS                   1       44    617
2         0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     MMN                   0       68    617
2         0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     MMN                   1       32    617
2         0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     Other                 0      129    617
2         0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     Other                 1       52    617
6         0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     Control               0       79    386
6         0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     Control               1       23    386
6         0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     LNS                   0       95    386
6         0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     LNS                   1       22    386
6         0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     MMN                   0       54    386
6         0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     MMN                   1       10    386
6         0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     Other                 0       76    386
6         0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     Other                 1       27    386
5         0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     Control               0      100    492
5         0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     Control               1       39    492
5         0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     LNS                   0      113    492
5         0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     LNS                   1       35    492
5         0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     MMN                   0       53    492
5         0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     MMN                   1       19    492
5         0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     Other                 0      111    492
5         0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     Other                 1       22    492
4         0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     Control               0      135    664
4         0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     Control               1       44    664
4         0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     LNS                   0      160    664
4         0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     LNS                   1       55    664
4         0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     MMN                   0       71    664
4         0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     MMN                   1       31    664
4         0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     Other                 0      132    664
4         0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     Other                 1       36    664
8         0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     Control               0       88    534
8         0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     Control               1       36    534
8         0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     LNS                   0      142    534
8         0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     LNS                   1       41    534
8         0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     MMN                   0       57    534
8         0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     MMN                   1       19    534
8         0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     Other                 0      111    534
8         0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     Other                 1       40    534
9         0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     Control               0       67    368
9         0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     Control               1       13    368
9         0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     LNS                   0       87    368
9         0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     LNS                   1       34    368
9         0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     MMN                   0       38    368
9         0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     MMN                   1       17    368
9         0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     Other                 0       81    368
9         0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     Other                 1       31    368
12        6-24 months   ki1000107-Serrinha-VitA     BRAZIL                         Control               0       21     43
12        6-24 months   ki1000107-Serrinha-VitA     BRAZIL                         Control               1        3     43
12        6-24 months   ki1000107-Serrinha-VitA     BRAZIL                         Other                 0       18     43
12        6-24 months   ki1000107-Serrinha-VitA     BRAZIL                         Other                 1        1     43
7         6-24 months   ki1000107-Serrinha-VitA     BRAZIL                         Control               0       12     24
7         6-24 months   ki1000107-Serrinha-VitA     BRAZIL                         Control               1        1     24
7         6-24 months   ki1000107-Serrinha-VitA     BRAZIL                         Other                 0       11     24
7         6-24 months   ki1000107-Serrinha-VitA     BRAZIL                         Other                 1        0     24
3         6-24 months   ki1000107-Serrinha-VitA     BRAZIL                         Control               0       14     45
3         6-24 months   ki1000107-Serrinha-VitA     BRAZIL                         Control               1        1     45
3         6-24 months   ki1000107-Serrinha-VitA     BRAZIL                         Other                 0       24     45
3         6-24 months   ki1000107-Serrinha-VitA     BRAZIL                         Other                 1        6     45
10        6-24 months   ki1000107-Serrinha-VitA     BRAZIL                         Control               0        9     20
10        6-24 months   ki1000107-Serrinha-VitA     BRAZIL                         Control               1        1     20
10        6-24 months   ki1000107-Serrinha-VitA     BRAZIL                         Other                 0        9     20
10        6-24 months   ki1000107-Serrinha-VitA     BRAZIL                         Other                 1        1     20
8         6-24 months   ki1000107-Serrinha-VitA     BRAZIL                         Control               0       15     22
8         6-24 months   ki1000107-Serrinha-VitA     BRAZIL                         Other                 0        7     22
1         6-24 months   ki1000107-Serrinha-VitA     BRAZIL                         Control               0       17     39
1         6-24 months   ki1000107-Serrinha-VitA     BRAZIL                         Control               1        0     39
1         6-24 months   ki1000107-Serrinha-VitA     BRAZIL                         Other                 0       20     39
1         6-24 months   ki1000107-Serrinha-VitA     BRAZIL                         Other                 1        2     39
4         6-24 months   ki1000107-Serrinha-VitA     BRAZIL                         Control               0       25     47
4         6-24 months   ki1000107-Serrinha-VitA     BRAZIL                         Control               1        1     47
4         6-24 months   ki1000107-Serrinha-VitA     BRAZIL                         Other                 0       20     47
4         6-24 months   ki1000107-Serrinha-VitA     BRAZIL                         Other                 1        1     47
5         6-24 months   ki1000107-Serrinha-VitA     BRAZIL                         Control               0       17     35
5         6-24 months   ki1000107-Serrinha-VitA     BRAZIL                         Control               1        0     35
5         6-24 months   ki1000107-Serrinha-VitA     BRAZIL                         Other                 0       16     35
5         6-24 months   ki1000107-Serrinha-VitA     BRAZIL                         Other                 1        2     35
6         6-24 months   ki1000107-Serrinha-VitA     BRAZIL                         Control               0       15     32
6         6-24 months   ki1000107-Serrinha-VitA     BRAZIL                         Control               1        1     32
6         6-24 months   ki1000107-Serrinha-VitA     BRAZIL                         Other                 0       15     32
6         6-24 months   ki1000107-Serrinha-VitA     BRAZIL                         Other                 1        1     32
11        6-24 months   ki1000107-Serrinha-VitA     BRAZIL                         Control               0        5     15
11        6-24 months   ki1000107-Serrinha-VitA     BRAZIL                         Control               1        2     15
11        6-24 months   ki1000107-Serrinha-VitA     BRAZIL                         Other                 0        7     15
11        6-24 months   ki1000107-Serrinha-VitA     BRAZIL                         Other                 1        1     15
9         6-24 months   ki1000107-Serrinha-VitA     BRAZIL                         Control               0       11     23
9         6-24 months   ki1000107-Serrinha-VitA     BRAZIL                         Control               1        2     23
9         6-24 months   ki1000107-Serrinha-VitA     BRAZIL                         Other                 0       10     23
9         6-24 months   ki1000107-Serrinha-VitA     BRAZIL                         Other                 1        0     23
2         6-24 months   ki1000107-Serrinha-VitA     BRAZIL                         Control               0       20     36
2         6-24 months   ki1000107-Serrinha-VitA     BRAZIL                         Control               1        1     36
2         6-24 months   ki1000107-Serrinha-VitA     BRAZIL                         Other                 0       14     36
2         6-24 months   ki1000107-Serrinha-VitA     BRAZIL                         Other                 1        1     36
2         6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control               0       27    145
2         6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control               1       10    145
2         6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                   0       29    145
2         6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                   1        4    145
2         6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                 0       55    145
2         6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                 1       20    145
1         6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control               0       31    205
1         6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control               1       13    205
1         6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                   0       50    205
1         6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                   1        7    205
1         6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                 0       84    205
1         6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                 1       20    205
12        6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control               0       66    325
12        6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control               1        6    325
12        6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                   0       94    325
12        6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                   1        9    325
12        6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                 0      132    325
12        6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                 1       18    325
3         6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control               0       39    165
3         6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control               1        6    165
3         6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                   0       33    165
3         6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                   1        3    165
3         6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                 0       61    165
3         6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                 1       23    165
11        6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control               0       88    416
11        6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control               1       20    416
11        6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                   0       91    416
11        6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                   1        8    416
11        6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                 0      182    416
11        6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                 1       27    416
10        6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control               0       90    431
10        6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control               1       12    431
10        6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                   0       91    431
10        6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                   1       18    431
10        6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                 0      184    431
10        6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                 1       36    431
9         6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control               0       82    419
9         6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control               1       19    419
9         6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                   0       95    419
9         6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                   1       16    419
9         6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                 0      168    419
9         6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                 1       39    419
4         6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control               0       40    216
4         6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control               1       12    216
4         6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                   0       43    216
4         6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                   1       15    216
4         6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                 0       84    216
4         6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                 1       22    216
5         6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control               0       63    291
5         6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control               1       15    291
5         6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                   0       54    291
5         6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                   1       12    291
5         6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                 0      110    291
5         6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                 1       37    291
6         6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control               0       64    319
6         6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control               1       16    319
6         6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                   0       74    319
6         6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                   1       19    319
6         6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                 0      107    319
6         6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                 1       39    319
8         6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control               0       83    416
8         6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control               1       28    416
8         6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                   0       91    416
8         6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                   1       14    416
8         6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                 0      153    416
8         6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                 1       47    416
7         6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control               0       56    378
7         6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control               1       24    378
7         6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                   0       78    378
7         6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                   1       17    378
7         6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                 0      159    378
7         6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                 1       44    378
9         6-24 months   ki1000111-WASH-Kenya        KENYA                          Control               0      147    444
9         6-24 months   ki1000111-WASH-Kenya        KENYA                          Control               1        6    444
9         6-24 months   ki1000111-WASH-Kenya        KENYA                          LNS                   0       86    444
9         6-24 months   ki1000111-WASH-Kenya        KENYA                          LNS                   1        6    444
9         6-24 months   ki1000111-WASH-Kenya        KENYA                          Other                 0      181    444
9         6-24 months   ki1000111-WASH-Kenya        KENYA                          Other                 1       18    444
6         6-24 months   ki1000111-WASH-Kenya        KENYA                          Control               0      124    400
6         6-24 months   ki1000111-WASH-Kenya        KENYA                          Control               1       14    400
6         6-24 months   ki1000111-WASH-Kenya        KENYA                          LNS                   0       90    400
6         6-24 months   ki1000111-WASH-Kenya        KENYA                          LNS                   1        8    400
6         6-24 months   ki1000111-WASH-Kenya        KENYA                          Other                 0      146    400
6         6-24 months   ki1000111-WASH-Kenya        KENYA                          Other                 1       18    400
1         6-24 months   ki1000111-WASH-Kenya        KENYA                          Control               0      140    442
1         6-24 months   ki1000111-WASH-Kenya        KENYA                          Control               1        9    442
1         6-24 months   ki1000111-WASH-Kenya        KENYA                          LNS                   0      100    442
1         6-24 months   ki1000111-WASH-Kenya        KENYA                          LNS                   1        5    442
1         6-24 months   ki1000111-WASH-Kenya        KENYA                          Other                 0      172    442
1         6-24 months   ki1000111-WASH-Kenya        KENYA                          Other                 1       16    442
10        6-24 months   ki1000111-WASH-Kenya        KENYA                          Control               0      159    502
10        6-24 months   ki1000111-WASH-Kenya        KENYA                          Control               1       12    502
10        6-24 months   ki1000111-WASH-Kenya        KENYA                          LNS                   0      108    502
10        6-24 months   ki1000111-WASH-Kenya        KENYA                          LNS                   1        4    502
10        6-24 months   ki1000111-WASH-Kenya        KENYA                          Other                 0      203    502
10        6-24 months   ki1000111-WASH-Kenya        KENYA                          Other                 1       16    502
7         6-24 months   ki1000111-WASH-Kenya        KENYA                          Control               0       92    327
7         6-24 months   ki1000111-WASH-Kenya        KENYA                          Control               1        8    327
7         6-24 months   ki1000111-WASH-Kenya        KENYA                          LNS                   0       73    327
7         6-24 months   ki1000111-WASH-Kenya        KENYA                          LNS                   1        6    327
7         6-24 months   ki1000111-WASH-Kenya        KENYA                          Other                 0      135    327
7         6-24 months   ki1000111-WASH-Kenya        KENYA                          Other                 1       13    327
2         6-24 months   ki1000111-WASH-Kenya        KENYA                          Control               0      125    407
2         6-24 months   ki1000111-WASH-Kenya        KENYA                          Control               1       10    407
2         6-24 months   ki1000111-WASH-Kenya        KENYA                          LNS                   0       93    407
2         6-24 months   ki1000111-WASH-Kenya        KENYA                          LNS                   1        5    407
2         6-24 months   ki1000111-WASH-Kenya        KENYA                          Other                 0      156    407
2         6-24 months   ki1000111-WASH-Kenya        KENYA                          Other                 1       18    407
8         6-24 months   ki1000111-WASH-Kenya        KENYA                          Control               0      116    381
8         6-24 months   ki1000111-WASH-Kenya        KENYA                          Control               1        7    381
8         6-24 months   ki1000111-WASH-Kenya        KENYA                          LNS                   0       80    381
8         6-24 months   ki1000111-WASH-Kenya        KENYA                          LNS                   1        9    381
8         6-24 months   ki1000111-WASH-Kenya        KENYA                          Other                 0      156    381
8         6-24 months   ki1000111-WASH-Kenya        KENYA                          Other                 1       13    381
12        6-24 months   ki1000111-WASH-Kenya        KENYA                          Control               0      169    497
12        6-24 months   ki1000111-WASH-Kenya        KENYA                          Control               1       10    497
12        6-24 months   ki1000111-WASH-Kenya        KENYA                          LNS                   0      110    497
12        6-24 months   ki1000111-WASH-Kenya        KENYA                          LNS                   1        4    497
12        6-24 months   ki1000111-WASH-Kenya        KENYA                          Other                 0      188    497
12        6-24 months   ki1000111-WASH-Kenya        KENYA                          Other                 1       16    497
11        6-24 months   ki1000111-WASH-Kenya        KENYA                          Control               0      162    491
11        6-24 months   ki1000111-WASH-Kenya        KENYA                          Control               1        5    491
11        6-24 months   ki1000111-WASH-Kenya        KENYA                          LNS                   0      105    491
11        6-24 months   ki1000111-WASH-Kenya        KENYA                          LNS                   1        1    491
11        6-24 months   ki1000111-WASH-Kenya        KENYA                          Other                 0      206    491
11        6-24 months   ki1000111-WASH-Kenya        KENYA                          Other                 1       12    491
4         6-24 months   ki1000111-WASH-Kenya        KENYA                          Control               0      169    495
4         6-24 months   ki1000111-WASH-Kenya        KENYA                          Control               1        9    495
4         6-24 months   ki1000111-WASH-Kenya        KENYA                          LNS                   0      117    495
4         6-24 months   ki1000111-WASH-Kenya        KENYA                          LNS                   1        5    495
4         6-24 months   ki1000111-WASH-Kenya        KENYA                          Other                 0      183    495
4         6-24 months   ki1000111-WASH-Kenya        KENYA                          Other                 1       12    495
3         6-24 months   ki1000111-WASH-Kenya        KENYA                          Control               0      156    497
3         6-24 months   ki1000111-WASH-Kenya        KENYA                          Control               1       14    497
3         6-24 months   ki1000111-WASH-Kenya        KENYA                          LNS                   0      100    497
3         6-24 months   ki1000111-WASH-Kenya        KENYA                          LNS                   1        7    497
3         6-24 months   ki1000111-WASH-Kenya        KENYA                          Other                 0      207    497
3         6-24 months   ki1000111-WASH-Kenya        KENYA                          Other                 1       13    497
5         6-24 months   ki1000111-WASH-Kenya        KENYA                          Control               0      153    449
5         6-24 months   ki1000111-WASH-Kenya        KENYA                          Control               1       10    449
5         6-24 months   ki1000111-WASH-Kenya        KENYA                          LNS                   0       86    449
5         6-24 months   ki1000111-WASH-Kenya        KENYA                          LNS                   1        7    449
5         6-24 months   ki1000111-WASH-Kenya        KENYA                          Other                 0      184    449
5         6-24 months   ki1000111-WASH-Kenya        KENYA                          Other                 1        9    449
10        6-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Control               0       48    139
10        6-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Control               1       24    139
10        6-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Other                 0       50    139
10        6-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Other                 1       17    139
11        6-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Control               0       72    191
11        6-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Control               1       42    191
11        6-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Other                 0       61    191
11        6-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Other                 1       16    191
12        6-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Control               0       57    189
12        6-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Control               1       28    189
12        6-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Other                 0       78    189
12        6-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Other                 1       26    189
1         6-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Control               0       63    189
1         6-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Control               1       28    189
1         6-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Other                 0       69    189
1         6-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Other                 1       29    189
2         6-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Control               0        8     61
2         6-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Control               1        8     61
2         6-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Other                 0       27     61
2         6-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Other                 1       18     61
9         6-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Control               0        8     45
9         6-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Control               1       10     45
9         6-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Other                 0       19     45
9         6-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Other                 1        8     45
8         6-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Control               1        1      1
3         6-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Control               0       14     40
3         6-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Control               1        1     40
3         6-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Other                 0       21     40
3         6-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Other                 1        4     40
5         6-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Control               0        8     28
5         6-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Control               1        2     28
5         6-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Other                 0       14     28
5         6-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Other                 1        4     28
4         6-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Control               0        9     31
4         6-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Control               1        5     31
4         6-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Other                 0       10     31
4         6-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Other                 1        7     31
6         6-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Control               0        9     31
6         6-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Control               1        1     31
6         6-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Other                 0       21     31
6         6-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Other                 1        0     31
7         6-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Control               0        6     10
7         6-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Other                 0        4     10
12        6-24 months   ki1000304-EU                INDIA                          Control               0       59    109
12        6-24 months   ki1000304-EU                INDIA                          Control               1        6    109
12        6-24 months   ki1000304-EU                INDIA                          Zinc                  0       42    109
12        6-24 months   ki1000304-EU                INDIA                          Zinc                  1        2    109
4         6-24 months   ki1000304-EU                INDIA                          Control               0       37     81
4         6-24 months   ki1000304-EU                INDIA                          Control               1        1     81
4         6-24 months   ki1000304-EU                INDIA                          Zinc                  0       42     81
4         6-24 months   ki1000304-EU                INDIA                          Zinc                  1        1     81
7         6-24 months   ki1000304-EU                INDIA                          Control               0       48    104
7         6-24 months   ki1000304-EU                INDIA                          Control               1        1    104
7         6-24 months   ki1000304-EU                INDIA                          Zinc                  0       54    104
7         6-24 months   ki1000304-EU                INDIA                          Zinc                  1        1    104
11        6-24 months   ki1000304-EU                INDIA                          Control               0       50    102
11        6-24 months   ki1000304-EU                INDIA                          Control               1        1    102
11        6-24 months   ki1000304-EU                INDIA                          Zinc                  0       47    102
11        6-24 months   ki1000304-EU                INDIA                          Zinc                  1        4    102
10        6-24 months   ki1000304-EU                INDIA                          Control               0       57    125
10        6-24 months   ki1000304-EU                INDIA                          Control               1        4    125
10        6-24 months   ki1000304-EU                INDIA                          Zinc                  0       60    125
10        6-24 months   ki1000304-EU                INDIA                          Zinc                  1        4    125
3         6-24 months   ki1000304-EU                INDIA                          Control               0       34    106
3         6-24 months   ki1000304-EU                INDIA                          Control               1        4    106
3         6-24 months   ki1000304-EU                INDIA                          Zinc                  0       61    106
3         6-24 months   ki1000304-EU                INDIA                          Zinc                  1        7    106
9         6-24 months   ki1000304-EU                INDIA                          Control               0       50    101
9         6-24 months   ki1000304-EU                INDIA                          Control               1        0    101
9         6-24 months   ki1000304-EU                INDIA                          Zinc                  0       50    101
9         6-24 months   ki1000304-EU                INDIA                          Zinc                  1        1    101
8         6-24 months   ki1000304-EU                INDIA                          Control               0       53    113
8         6-24 months   ki1000304-EU                INDIA                          Control               1        1    113
8         6-24 months   ki1000304-EU                INDIA                          Zinc                  0       55    113
8         6-24 months   ki1000304-EU                INDIA                          Zinc                  1        4    113
5         6-24 months   ki1000304-EU                INDIA                          Control               0       32     72
5         6-24 months   ki1000304-EU                INDIA                          Control               1        1     72
5         6-24 months   ki1000304-EU                INDIA                          Zinc                  0       36     72
5         6-24 months   ki1000304-EU                INDIA                          Zinc                  1        3     72
1         6-24 months   ki1000304-EU                INDIA                          Control               0       46     78
1         6-24 months   ki1000304-EU                INDIA                          Control               1        1     78
1         6-24 months   ki1000304-EU                INDIA                          Zinc                  0       30     78
1         6-24 months   ki1000304-EU                INDIA                          Zinc                  1        1     78
2         6-24 months   ki1000304-EU                INDIA                          Control               0       40     87
2         6-24 months   ki1000304-EU                INDIA                          Control               1        1     87
2         6-24 months   ki1000304-EU                INDIA                          Zinc                  0       45     87
2         6-24 months   ki1000304-EU                INDIA                          Zinc                  1        1     87
6         6-24 months   ki1000304-EU                INDIA                          Control               0       37     77
6         6-24 months   ki1000304-EU                INDIA                          Control               1        4     77
6         6-24 months   ki1000304-EU                INDIA                          Zinc                  0       35     77
6         6-24 months   ki1000304-EU                INDIA                          Zinc                  1        1     77
12        6-24 months   ki1000304-VITAMIN-A         INDIA                          Control               0       86    184
12        6-24 months   ki1000304-VITAMIN-A         INDIA                          Control               1       12    184
12        6-24 months   ki1000304-VITAMIN-A         INDIA                          Other                 0       77    184
12        6-24 months   ki1000304-VITAMIN-A         INDIA                          Other                 1        9    184
1         6-24 months   ki1000304-VITAMIN-A         INDIA                          Control               0       86    204
1         6-24 months   ki1000304-VITAMIN-A         INDIA                          Control               1        9    204
1         6-24 months   ki1000304-VITAMIN-A         INDIA                          Other                 0       99    204
1         6-24 months   ki1000304-VITAMIN-A         INDIA                          Other                 1       10    204
3         6-24 months   ki1000304-VITAMIN-A         INDIA                          Control               0       92    214
3         6-24 months   ki1000304-VITAMIN-A         INDIA                          Control               1        6    214
3         6-24 months   ki1000304-VITAMIN-A         INDIA                          Other                 0      105    214
3         6-24 months   ki1000304-VITAMIN-A         INDIA                          Other                 1       11    214
5         6-24 months   ki1000304-VITAMIN-A         INDIA                          Control               0       97    199
5         6-24 months   ki1000304-VITAMIN-A         INDIA                          Control               1        1    199
5         6-24 months   ki1000304-VITAMIN-A         INDIA                          Other                 0       97    199
5         6-24 months   ki1000304-VITAMIN-A         INDIA                          Other                 1        4    199
6         6-24 months   ki1000304-VITAMIN-A         INDIA                          Control               0       92    189
6         6-24 months   ki1000304-VITAMIN-A         INDIA                          Control               1        8    189
6         6-24 months   ki1000304-VITAMIN-A         INDIA                          Other                 0       83    189
6         6-24 months   ki1000304-VITAMIN-A         INDIA                          Other                 1        6    189
4         6-24 months   ki1000304-VITAMIN-A         INDIA                          Control               0      102    217
4         6-24 months   ki1000304-VITAMIN-A         INDIA                          Control               1        9    217
4         6-24 months   ki1000304-VITAMIN-A         INDIA                          Other                 0       97    217
4         6-24 months   ki1000304-VITAMIN-A         INDIA                          Other                 1        9    217
7         6-24 months   ki1000304-VITAMIN-A         INDIA                          Control               0      122    262
7         6-24 months   ki1000304-VITAMIN-A         INDIA                          Control               1       10    262
7         6-24 months   ki1000304-VITAMIN-A         INDIA                          Other                 0      121    262
7         6-24 months   ki1000304-VITAMIN-A         INDIA                          Other                 1        9    262
8         6-24 months   ki1000304-VITAMIN-A         INDIA                          Control               0       97    206
8         6-24 months   ki1000304-VITAMIN-A         INDIA                          Control               1        9    206
8         6-24 months   ki1000304-VITAMIN-A         INDIA                          Other                 0       93    206
8         6-24 months   ki1000304-VITAMIN-A         INDIA                          Other                 1        7    206
9         6-24 months   ki1000304-VITAMIN-A         INDIA                          Control               0       67    147
9         6-24 months   ki1000304-VITAMIN-A         INDIA                          Control               1        4    147
9         6-24 months   ki1000304-VITAMIN-A         INDIA                          Other                 0       71    147
9         6-24 months   ki1000304-VITAMIN-A         INDIA                          Other                 1        5    147
10        6-24 months   ki1000304-VITAMIN-A         INDIA                          Control               0       52    120
10        6-24 months   ki1000304-VITAMIN-A         INDIA                          Control               1        6    120
10        6-24 months   ki1000304-VITAMIN-A         INDIA                          Other                 0       57    120
10        6-24 months   ki1000304-VITAMIN-A         INDIA                          Other                 1        5    120
11        6-24 months   ki1000304-VITAMIN-A         INDIA                          Control               0       36     80
11        6-24 months   ki1000304-VITAMIN-A         INDIA                          Control               1        4     80
11        6-24 months   ki1000304-VITAMIN-A         INDIA                          Other                 0       37     80
11        6-24 months   ki1000304-VITAMIN-A         INDIA                          Other                 1        3     80
2         6-24 months   ki1000304-VITAMIN-A         INDIA                          Control               0       66    145
2         6-24 months   ki1000304-VITAMIN-A         INDIA                          Control               1        6    145
2         6-24 months   ki1000304-VITAMIN-A         INDIA                          Other                 0       68    145
2         6-24 months   ki1000304-VITAMIN-A         INDIA                          Other                 1        5    145
2         6-24 months   ki1000304-Vitamin-B12       INDIA                          Control               0       15     35
2         6-24 months   ki1000304-Vitamin-B12       INDIA                          Control               1        2     35
2         6-24 months   ki1000304-Vitamin-B12       INDIA                          Other                 0       18     35
2         6-24 months   ki1000304-Vitamin-B12       INDIA                          Other                 1        0     35
12        6-24 months   ki1000304-Vitamin-B12       INDIA                          Control               0       17     40
12        6-24 months   ki1000304-Vitamin-B12       INDIA                          Control               1        1     40
12        6-24 months   ki1000304-Vitamin-B12       INDIA                          Other                 0       19     40
12        6-24 months   ki1000304-Vitamin-B12       INDIA                          Other                 1        3     40
7         6-24 months   ki1000304-Vitamin-B12       INDIA                          Control               0       27     59
7         6-24 months   ki1000304-Vitamin-B12       INDIA                          Control               1        4     59
7         6-24 months   ki1000304-Vitamin-B12       INDIA                          Other                 0       26     59
7         6-24 months   ki1000304-Vitamin-B12       INDIA                          Other                 1        2     59
8         6-24 months   ki1000304-Vitamin-B12       INDIA                          Control               0       21     50
8         6-24 months   ki1000304-Vitamin-B12       INDIA                          Control               1        1     50
8         6-24 months   ki1000304-Vitamin-B12       INDIA                          Other                 0       26     50
8         6-24 months   ki1000304-Vitamin-B12       INDIA                          Other                 1        2     50
11        6-24 months   ki1000304-Vitamin-B12       INDIA                          Control               0       23     45
11        6-24 months   ki1000304-Vitamin-B12       INDIA                          Control               1        3     45
11        6-24 months   ki1000304-Vitamin-B12       INDIA                          Other                 0       18     45
11        6-24 months   ki1000304-Vitamin-B12       INDIA                          Other                 1        1     45
9         6-24 months   ki1000304-Vitamin-B12       INDIA                          Control               0       20     40
9         6-24 months   ki1000304-Vitamin-B12       INDIA                          Control               1        2     40
9         6-24 months   ki1000304-Vitamin-B12       INDIA                          Other                 0       13     40
9         6-24 months   ki1000304-Vitamin-B12       INDIA                          Other                 1        5     40
10        6-24 months   ki1000304-Vitamin-B12       INDIA                          Control               0       19     37
10        6-24 months   ki1000304-Vitamin-B12       INDIA                          Control               1        2     37
10        6-24 months   ki1000304-Vitamin-B12       INDIA                          Other                 0       16     37
10        6-24 months   ki1000304-Vitamin-B12       INDIA                          Other                 1        0     37
5         6-24 months   ki1000304-Vitamin-B12       INDIA                          Control               0       15     42
5         6-24 months   ki1000304-Vitamin-B12       INDIA                          Control               1        1     42
5         6-24 months   ki1000304-Vitamin-B12       INDIA                          Other                 0       21     42
5         6-24 months   ki1000304-Vitamin-B12       INDIA                          Other                 1        5     42
6         6-24 months   ki1000304-Vitamin-B12       INDIA                          Control               0       17     41
6         6-24 months   ki1000304-Vitamin-B12       INDIA                          Control               1        2     41
6         6-24 months   ki1000304-Vitamin-B12       INDIA                          Other                 0       19     41
6         6-24 months   ki1000304-Vitamin-B12       INDIA                          Other                 1        3     41
3         6-24 months   ki1000304-Vitamin-B12       INDIA                          Control               0       27     59
3         6-24 months   ki1000304-Vitamin-B12       INDIA                          Control               1        5     59
3         6-24 months   ki1000304-Vitamin-B12       INDIA                          Other                 0       24     59
3         6-24 months   ki1000304-Vitamin-B12       INDIA                          Other                 1        3     59
1         6-24 months   ki1000304-Vitamin-B12       INDIA                          Control               0       13     32
1         6-24 months   ki1000304-Vitamin-B12       INDIA                          Control               1        1     32
1         6-24 months   ki1000304-Vitamin-B12       INDIA                          Other                 0       16     32
1         6-24 months   ki1000304-Vitamin-B12       INDIA                          Other                 1        2     32
4         6-24 months   ki1000304-Vitamin-B12       INDIA                          Control               0        8     24
4         6-24 months   ki1000304-Vitamin-B12       INDIA                          Other                 0       16     24
8         6-24 months   ki1000304-ZnMort            INDIA                          Other                 0       49    107
8         6-24 months   ki1000304-ZnMort            INDIA                          Zinc                  0       58    107
2         6-24 months   ki1000304-ZnMort            INDIA                          Other                 0       41     73
2         6-24 months   ki1000304-ZnMort            INDIA                          Zinc                  0       32     73
3         6-24 months   ki1000304-ZnMort            INDIA                          Other                 0       27     62
3         6-24 months   ki1000304-ZnMort            INDIA                          Zinc                  0       35     62
7         6-24 months   ki1000304-ZnMort            INDIA                          Other                 0       45     88
7         6-24 months   ki1000304-ZnMort            INDIA                          Zinc                  0       43     88
9         6-24 months   ki1000304-ZnMort            INDIA                          Other                 0       35     71
9         6-24 months   ki1000304-ZnMort            INDIA                          Zinc                  0       36     71
10        6-24 months   ki1000304-ZnMort            INDIA                          Other                 0       41     86
10        6-24 months   ki1000304-ZnMort            INDIA                          Zinc                  0       45     86
5         6-24 months   ki1000304-ZnMort            INDIA                          Other                 0       23     52
5         6-24 months   ki1000304-ZnMort            INDIA                          Zinc                  0       29     52
6         6-24 months   ki1000304-ZnMort            INDIA                          Other                 0       37     70
6         6-24 months   ki1000304-ZnMort            INDIA                          Zinc                  0       33     70
1         6-24 months   ki1000304-ZnMort            INDIA                          Other                 0       36     68
1         6-24 months   ki1000304-ZnMort            INDIA                          Zinc                  0       32     68
11        6-24 months   ki1000304-ZnMort            INDIA                          Other                 0       41     89
11        6-24 months   ki1000304-ZnMort            INDIA                          Zinc                  0       48     89
12        6-24 months   ki1000304-ZnMort            INDIA                          Other                 0       37     66
12        6-24 months   ki1000304-ZnMort            INDIA                          Zinc                  0       29     66
4         6-24 months   ki1000304-ZnMort            INDIA                          Other                 0       24     54
4         6-24 months   ki1000304-ZnMort            INDIA                          Zinc                  0       30     54
10        6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control               0       32     98
10        6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control               1       18     98
10        6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Other                 0       24     98
10        6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Other                 1       24     98
11        6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control               0       23     87
11        6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control               1       12     87
11        6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Other                 0       40     87
11        6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Other                 1       12     87
12        6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control               0       31     97
12        6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control               1       18     97
12        6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Other                 0       35     97
12        6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Other                 1       13     97
1         6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control               0       25     65
1         6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control               1        9     65
1         6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Other                 0       27     65
1         6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Other                 1        4     65
2         6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control               0       23     58
2         6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control               1        5     58
2         6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Other                 0       23     58
2         6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Other                 1        7     58
3         6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control               0       19     56
3         6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control               1        8     56
3         6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Other                 0       19     56
3         6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Other                 1       10     56
4         6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control               0       11     49
4         6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control               1        6     49
4         6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Other                 0       24     49
4         6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Other                 1        8     49
5         6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control               0       15     65
5         6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control               1        9     65
5         6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Other                 0       30     65
5         6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Other                 1       11     65
6         6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control               0       19     72
6         6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control               1       13     72
6         6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Other                 0       27     72
6         6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Other                 1       13     72
5         6-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Control               0        0      8
5         6-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Control               1        2      8
5         6-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Other                 0        2      8
5         6-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Other                 1        4      8
8         6-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Control               0        4     44
8         6-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Control               1        4     44
8         6-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Other                 0       18     44
8         6-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Other                 1       18     44
9         6-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Control               0        1     32
9         6-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Control               1        9     32
9         6-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Other                 0        6     32
9         6-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Other                 1       16     32
12        6-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Control               0        0     21
12        6-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Control               1        3     21
12        6-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Other                 0        8     21
12        6-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Other                 1       10     21
6         6-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Control               0        1     13
6         6-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Control               1        0     13
6         6-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Other                 0        3     13
6         6-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Other                 1        9     13
10        6-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Control               0        3     22
10        6-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Control               1        3     22
10        6-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Other                 0        6     22
10        6-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Other                 1       10     22
11        6-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Control               0        2     16
11        6-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Control               1        1     16
11        6-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Other                 0        4     16
11        6-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Other                 1        9     16
1         6-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Control               0        2     15
1         6-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Control               1        0     15
1         6-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Other                 0        7     15
1         6-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Other                 1        6     15
2         6-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Control               0        2     21
2         6-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Control               1        2     21
2         6-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Other                 0       11     21
2         6-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Other                 1        6     21
3         6-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Control               0        2      7
3         6-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Control               1        0      7
3         6-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Other                 0        4      7
3         6-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Other                 1        1      7
4         6-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Other                 0        2      2
7         6-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Control               0        2     25
7         6-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Control               1        5     25
7         6-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Other                 0        9     25
7         6-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Other                 1        9     25
7         6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control               0       38    181
7         6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control               1        4    181
7         6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                 0       81    181
7         6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                 1       14    181
7         6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                  0       38    181
7         6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                  1        6    181
8         6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control               0       46    182
8         6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control               1        5    182
8         6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                 0       80    182
8         6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                 1        6    182
8         6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                  0       41    182
8         6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                  1        4    182
9         6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control               0       36    173
9         6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control               1        5    173
9         6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                 0       77    173
9         6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                 1       11    173
9         6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                  0       37    173
9         6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                  1        7    173
10        6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control               0       41    192
10        6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control               1        9    192
10        6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                 0       90    192
10        6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                 1        8    192
10        6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                  0       37    192
10        6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                  1        7    192
11        6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control               0       39    178
11        6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control               1        7    178
11        6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                 0       79    178
11        6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                 1        7    178
11        6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                  0       38    178
11        6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                  1        8    178
12        6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control               0       37    159
12        6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control               1        6    159
12        6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                 0       63    159
12        6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                 1       13    159
12        6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                  0       37    159
12        6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                  1        3    159
1         6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control               0       25    124
1         6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control               1        5    124
1         6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                 0       51    124
1         6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                 1       15    124
1         6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                  0       23    124
1         6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                  1        5    124
2         6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control               0       35    143
2         6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control               1        1    143
2         6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                 0       63    143
2         6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                 1        7    143
2         6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                  0       30    143
2         6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                  1        7    143
3         6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control               0       20    126
3         6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control               1        9    126
3         6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                 0       55    126
3         6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                 1       10    126
3         6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                  0       29    126
3         6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                  1        3    126
4         6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control               0       21    131
4         6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control               1       10    131
4         6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                 0       55    131
4         6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                 1       12    131
4         6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                  0       21    131
4         6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                  1       12    131
5         6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control               0       32    133
5         6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control               1        3    133
5         6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                 0       63    133
5         6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                 1        5    133
5         6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                  0       27    133
5         6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                  1        3    133
6         6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control               0       32    125
6         6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control               1        0    125
6         6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                 0       49    125
6         6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                 1        6    125
6         6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                  0       34    125
6         6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                  1        4    125
4         6-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Control               0       89    471
4         6-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Control               1       13    471
4         6-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc                  0      313    471
4         6-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc                  1       56    471
2         6-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Control               0       80    516
2         6-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Control               1       11    516
2         6-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc                  0      388    516
2         6-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc                  1       37    516
12        6-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Control               0       49    362
12        6-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Control               1        3    362
12        6-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc                  0      286    362
12        6-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc                  1       24    362
1         6-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Control               0       66    496
1         6-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Control               1        5    496
1         6-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc                  0      391    496
1         6-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc                  1       34    496
9         6-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Control               0       58    386
9         6-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Control               1        0    386
9         6-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc                  0      304    386
9         6-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc                  1       24    386
3         6-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Control               0      110    549
3         6-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Control               1       11    549
3         6-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc                  0      391    549
3         6-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc                  1       37    549
5         6-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Control               0      102    497
5         6-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Control               1        9    497
5         6-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc                  0      331    497
5         6-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc                  1       55    497
8         6-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Control               0       67    409
8         6-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Control               1        3    409
8         6-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc                  0      314    409
8         6-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc                  1       25    409
7         6-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Control               0       73    421
7         6-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Control               1       12    421
7         6-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc                  0      306    421
7         6-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc                  1       30    421
6         6-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Control               0       99    471
6         6-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Control               1       17    471
6         6-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc                  0      311    471
6         6-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc                  1       44    471
11        6-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Control               0       45    364
11        6-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Control               1        1    364
11        6-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc                  0      287    364
11        6-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc                  1       31    364
10        6-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Control               0       38    384
10        6-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Control               1        0    384
10        6-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc                  0      309    384
10        6-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc                  1       37    384
9         6-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Control               0        1      9
9         6-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Control               1        2      9
9         6-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Other                 0        4      9
9         6-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Other                 1        2      9
12        6-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Control               0        4     16
12        6-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Control               1        2     16
12        6-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Other                 0        9     16
12        6-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Other                 1        1     16
1         6-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Control               0        1     18
1         6-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Control               1        1     18
1         6-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Other                 0       10     18
1         6-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Other                 1        6     18
2         6-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Control               0        5     21
2         6-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Control               1        1     21
2         6-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Other                 0       13     21
2         6-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Other                 1        2     21
6         6-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Control               0        2     10
6         6-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Control               1        0     10
6         6-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Other                 0        6     10
6         6-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Other                 1        2     10
8         6-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Other                 0        7      7
10        6-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Control               0        6     20
10        6-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Control               1        0     20
10        6-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Other                 0        9     20
10        6-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Other                 1        5     20
3         6-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Control               0        4     16
3         6-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Control               1        0     16
3         6-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Other                 0        9     16
3         6-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Other                 1        3     16
5         6-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Control               0        7     17
5         6-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Control               1        0     17
5         6-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Other                 0        7     17
5         6-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Other                 1        3     17
7         6-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Control               0        3     10
7         6-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Control               1        0     10
7         6-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Other                 0        5     10
7         6-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Other                 1        2     10
11        6-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Control               0        2     11
11        6-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Control               1        0     11
11        6-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Other                 0        7     11
11        6-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Other                 1        2     11
4         6-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Control               0        4     22
4         6-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Control               1        1     22
4         6-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Other                 0       14     22
4         6-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Other                 1        3     22
8         6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Control               0       53    249
8         6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Control               1       10    249
8         6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   LNS                   0      166    249
8         6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   LNS                   1       20    249
1         6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Control               0       44    265
1         6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Control               1        9    265
1         6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   LNS                   0      180    265
1         6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   LNS                   1       32    265
10        6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Control               0       64    309
10        6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Control               1       13    309
10        6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   LNS                   0      197    309
10        6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   LNS                   1       35    309
2         6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Control               0       34    155
2         6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Control               1        9    155
2         6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   LNS                   0      103    155
2         6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   LNS                   1        9    155
9         6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Control               0       52    346
9         6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Control               1       20    346
9         6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   LNS                   0      230    346
9         6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   LNS                   1       44    346
7         6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Control               0       34    153
7         6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Control               1        9    153
7         6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   LNS                   0       96    153
7         6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   LNS                   1       14    153
12        6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Control               0       54    263
12        6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Control               1       16    263
12        6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   LNS                   0      166    263
12        6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   LNS                   1       27    263
3         6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Control               0       30    165
3         6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Control               1       10    165
3         6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   LNS                   0      109    165
3         6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   LNS                   1       16    165
11        6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Control               0       49    270
11        6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Control               1        9    270
11        6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   LNS                   0      182    270
11        6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   LNS                   1       30    270
6         6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Control               0       31    156
6         6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Control               1       10    156
6         6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   LNS                   0      100    156
6         6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   LNS                   1       15    156
4         6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Control               0       23    164
4         6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Control               1        8    164
4         6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   LNS                   0      113    164
4         6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   LNS                   1       20    164
5         6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Control               0       41    182
5         6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Control               1        7    182
5         6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   LNS                   0      117    182
5         6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   LNS                   1       17    182
6         6-24 months   ki1119695-PROBIT            BELARUS                        Control               0      582   1171
6         6-24 months   ki1119695-PROBIT            BELARUS                        Control               1       19   1171
6         6-24 months   ki1119695-PROBIT            BELARUS                        Other                 0      556   1171
6         6-24 months   ki1119695-PROBIT            BELARUS                        Other                 1       14   1171
7         6-24 months   ki1119695-PROBIT            BELARUS                        Control               0      714   1526
7         6-24 months   ki1119695-PROBIT            BELARUS                        Control               1       19   1526
7         6-24 months   ki1119695-PROBIT            BELARUS                        Other                 0      774   1526
7         6-24 months   ki1119695-PROBIT            BELARUS                        Other                 1       19   1526
8         6-24 months   ki1119695-PROBIT            BELARUS                        Control               0      752   1542
8         6-24 months   ki1119695-PROBIT            BELARUS                        Control               1       24   1542
8         6-24 months   ki1119695-PROBIT            BELARUS                        Other                 0      741   1542
8         6-24 months   ki1119695-PROBIT            BELARUS                        Other                 1       25   1542
9         6-24 months   ki1119695-PROBIT            BELARUS                        Control               0      687   1561
9         6-24 months   ki1119695-PROBIT            BELARUS                        Control               1       21   1561
9         6-24 months   ki1119695-PROBIT            BELARUS                        Other                 0      828   1561
9         6-24 months   ki1119695-PROBIT            BELARUS                        Other                 1       25   1561
10        6-24 months   ki1119695-PROBIT            BELARUS                        Control               0      761   1758
10        6-24 months   ki1119695-PROBIT            BELARUS                        Control               1       33   1758
10        6-24 months   ki1119695-PROBIT            BELARUS                        Other                 0      930   1758
10        6-24 months   ki1119695-PROBIT            BELARUS                        Other                 1       34   1758
11        6-24 months   ki1119695-PROBIT            BELARUS                        Control               0      702   1639
11        6-24 months   ki1119695-PROBIT            BELARUS                        Control               1       18   1639
11        6-24 months   ki1119695-PROBIT            BELARUS                        Other                 0      889   1639
11        6-24 months   ki1119695-PROBIT            BELARUS                        Other                 1       30   1639
12        6-24 months   ki1119695-PROBIT            BELARUS                        Control               0      794   1811
12        6-24 months   ki1119695-PROBIT            BELARUS                        Control               1       43   1811
12        6-24 months   ki1119695-PROBIT            BELARUS                        Other                 0      930   1811
12        6-24 months   ki1119695-PROBIT            BELARUS                        Other                 1       44   1811
1         6-24 months   ki1119695-PROBIT            BELARUS                        Control               0      457    978
1         6-24 months   ki1119695-PROBIT            BELARUS                        Control               1       24    978
1         6-24 months   ki1119695-PROBIT            BELARUS                        Other                 0      475    978
1         6-24 months   ki1119695-PROBIT            BELARUS                        Other                 1       22    978
2         6-24 months   ki1119695-PROBIT            BELARUS                        Control               0      446    947
2         6-24 months   ki1119695-PROBIT            BELARUS                        Control               1       33    947
2         6-24 months   ki1119695-PROBIT            BELARUS                        Other                 0      438    947
2         6-24 months   ki1119695-PROBIT            BELARUS                        Other                 1       30    947
3         6-24 months   ki1119695-PROBIT            BELARUS                        Control               0      533   1114
3         6-24 months   ki1119695-PROBIT            BELARUS                        Control               1       27   1114
3         6-24 months   ki1119695-PROBIT            BELARUS                        Other                 0      524   1114
3         6-24 months   ki1119695-PROBIT            BELARUS                        Other                 1       30   1114
4         6-24 months   ki1119695-PROBIT            BELARUS                        Control               0      508   1117
4         6-24 months   ki1119695-PROBIT            BELARUS                        Control               1       22   1117
4         6-24 months   ki1119695-PROBIT            BELARUS                        Other                 0      569   1117
4         6-24 months   ki1119695-PROBIT            BELARUS                        Other                 1       18   1117
5         6-24 months   ki1119695-PROBIT            BELARUS                        Control               0      559   1139
5         6-24 months   ki1119695-PROBIT            BELARUS                        Control               1       26   1139
5         6-24 months   ki1119695-PROBIT            BELARUS                        Other                 0      534   1139
5         6-24 months   ki1119695-PROBIT            BELARUS                        Other                 1       20   1139
11        6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control               0      178    821
11        6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control               1       38    821
11        6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Other                 0      527    821
11        6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Other                 1       78    821
12        6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control               0      190    870
12        6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control               1       30    870
12        6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Other                 0      550    870
12        6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Other                 1      100    870
1         6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control               0      207    904
1         6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control               1       34    904
1         6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Other                 0      558    904
1         6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Other                 1      105    904
2         6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control               0      142    717
2         6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control               1       27    717
2         6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Other                 0      479    717
2         6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Other                 1       69    717
3         6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control               0      158    797
3         6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control               1       33    797
3         6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Other                 0      534    797
3         6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Other                 1       72    797
4         6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control               0      147    665
4         6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control               1       22    665
4         6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Other                 0      437    665
4         6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Other                 1       59    665
6         6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control               0      170    761
6         6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control               1       16    761
6         6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Other                 0      487    761
6         6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Other                 1       88    761
7         6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control               0      175    754
7         6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control               1       25    754
7         6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Other                 0      485    754
7         6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Other                 1       69    754
8         6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control               0      177    820
8         6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control               1       31    820
8         6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Other                 0      529    820
8         6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Other                 1       83    820
9         6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control               0      204    876
9         6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control               1       25    876
9         6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Other                 0      568    876
9         6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Other                 1       79    876
10        6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control               0      137    672
10        6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control               1       21    672
10        6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Other                 0      447    672
10        6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Other                 1       67    672
5         6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control               0      146    660
5         6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control               1       19    660
5         6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Other                 0      418    660
5         6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Other                 1       77    660
7         6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control               0       15    127
7         6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control               1        4    127
7         6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS                   0       83    127
7         6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS                   1       25    127
2         6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control               0        8     73
2         6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control               1        2     73
2         6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS                   0       51     73
2         6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS                   1       12     73
3         6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control               0       13     62
3         6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control               1        1     62
3         6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS                   0       40     62
3         6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS                   1        8     62
6         6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control               0       13     90
6         6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control               1        3     90
6         6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS                   0       60     90
6         6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS                   1       14     90
4         6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control               0        9     61
4         6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control               1        0     61
4         6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS                   0       45     61
4         6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS                   1        7     61
5         6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control               0       12     76
5         6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control               1        2     76
5         6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS                   0       55     76
5         6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS                   1        7     76
8         6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control               0       21    144
8         6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control               1        5    144
8         6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS                   0       88    144
8         6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS                   1       30    144
9         6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control               0       18    135
9         6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control               1        4    135
9         6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS                   0       90    135
9         6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS                   1       23    135
10        6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control               0       15    140
10        6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control               1        8    140
10        6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS                   0       96    140
10        6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS                   1       21    140
11        6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control               0       16    127
11        6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control               1        3    127
11        6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS                   0       77    127
11        6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS                   1       31    127
12        6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control               0       17     96
12        6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control               1        3     96
12        6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS                   0       54     96
12        6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS                   1       22     96
1         6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control               0       10     81
1         6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control               1        2     81
1         6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS                   0       52     81
1         6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS                   1       17     81
8         6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control               0       19     74
8         6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control               1        6     74
8         6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         LNS                   0       18     74
8         6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         LNS                   1        8     74
8         6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Other                 0       18     74
8         6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Other                 1        5     74
7         6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control               0       10     64
7         6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control               1        4     64
7         6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         LNS                   0       18     64
7         6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         LNS                   1        6     64
7         6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Other                 0       20     64
7         6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Other                 1        6     64
9         6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control               0       21     78
9         6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control               1        7     78
9         6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         LNS                   0       16     78
9         6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         LNS                   1        5     78
9         6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Other                 0       19     78
9         6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Other                 1       10     78
10        6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control               0       23     97
10        6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control               1        6     97
10        6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         LNS                   0       23     97
10        6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         LNS                   1       14     97
10        6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Other                 0       23     97
10        6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Other                 1        8     97
11        6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control               0       28    103
11        6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control               1        7    103
11        6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         LNS                   0       22    103
11        6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         LNS                   1       14    103
11        6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Other                 0       25    103
11        6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Other                 1        7    103
12        6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control               0       27    121
12        6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control               1       12    121
12        6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         LNS                   0       34    121
12        6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         LNS                   1       11    121
12        6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Other                 0       27    121
12        6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Other                 1       10    121
4         6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control               0       17     53
4         6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control               1        4     53
4         6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         LNS                   0       10     53
4         6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         LNS                   1        2     53
4         6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Other                 0       17     53
4         6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Other                 1        3     53
1         6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control               0       25     82
1         6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control               1       10     82
1         6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         LNS                   0       13     82
1         6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         LNS                   1        4     82
1         6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Other                 0       20     82
1         6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Other                 1       10     82
2         6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control               0       17     67
2         6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control               1        8     67
2         6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         LNS                   0       12     67
2         6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         LNS                   1        7     67
2         6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Other                 0       12     67
2         6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Other                 1       11     67
3         6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control               0       14     69
3         6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control               1        3     69
3         6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         LNS                   0       24     69
3         6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         LNS                   1        8     69
3         6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Other                 0       14     69
3         6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Other                 1        6     69
5         6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control               0       18     62
5         6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control               1        2     62
5         6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         LNS                   0       13     62
5         6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         LNS                   1        4     62
5         6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Other                 0       19     62
5         6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Other                 1        6     62
6         6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control               0       19     61
6         6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control               1        5     61
6         6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         LNS                   0       12     61
6         6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         LNS                   1        6     61
6         6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Other                 0       15     61
6         6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Other                 1        4     61
8         6-24 months   ki1148112-LCNI-5            MALAWI                         Control               0       27     69
8         6-24 months   ki1148112-LCNI-5            MALAWI                         Control               1        9     69
8         6-24 months   ki1148112-LCNI-5            MALAWI                         LNS                   0       24     69
8         6-24 months   ki1148112-LCNI-5            MALAWI                         LNS                   1        9     69
10        6-24 months   ki1148112-LCNI-5            MALAWI                         Control               0       28     83
10        6-24 months   ki1148112-LCNI-5            MALAWI                         Control               1       18     83
10        6-24 months   ki1148112-LCNI-5            MALAWI                         LNS                   0       23     83
10        6-24 months   ki1148112-LCNI-5            MALAWI                         LNS                   1       14     83
9         6-24 months   ki1148112-LCNI-5            MALAWI                         Control               0       21     69
9         6-24 months   ki1148112-LCNI-5            MALAWI                         Control               1        6     69
9         6-24 months   ki1148112-LCNI-5            MALAWI                         LNS                   0       27     69
9         6-24 months   ki1148112-LCNI-5            MALAWI                         LNS                   1       15     69
7         6-24 months   ki1148112-LCNI-5            MALAWI                         Control               0       18     50
7         6-24 months   ki1148112-LCNI-5            MALAWI                         Control               1       11     50
7         6-24 months   ki1148112-LCNI-5            MALAWI                         LNS                   0       16     50
7         6-24 months   ki1148112-LCNI-5            MALAWI                         LNS                   1        5     50
11        6-24 months   ki1148112-LCNI-5            MALAWI                         Control               0       23     76
11        6-24 months   ki1148112-LCNI-5            MALAWI                         Control               1       14     76
11        6-24 months   ki1148112-LCNI-5            MALAWI                         LNS                   0       23     76
11        6-24 months   ki1148112-LCNI-5            MALAWI                         LNS                   1       16     76
12        6-24 months   ki1148112-LCNI-5            MALAWI                         Control               0       20     66
12        6-24 months   ki1148112-LCNI-5            MALAWI                         Control               1        9     66
12        6-24 months   ki1148112-LCNI-5            MALAWI                         LNS                   0       23     66
12        6-24 months   ki1148112-LCNI-5            MALAWI                         LNS                   1       14     66
1         6-24 months   ki1148112-LCNI-5            MALAWI                         Control               0       16     43
1         6-24 months   ki1148112-LCNI-5            MALAWI                         Control               1        8     43
1         6-24 months   ki1148112-LCNI-5            MALAWI                         LNS                   0       16     43
1         6-24 months   ki1148112-LCNI-5            MALAWI                         LNS                   1        3     43
2         6-24 months   ki1148112-LCNI-5            MALAWI                         Control               0       11     39
2         6-24 months   ki1148112-LCNI-5            MALAWI                         Control               1        7     39
2         6-24 months   ki1148112-LCNI-5            MALAWI                         LNS                   0       20     39
2         6-24 months   ki1148112-LCNI-5            MALAWI                         LNS                   1        1     39
3         6-24 months   ki1148112-LCNI-5            MALAWI                         Control               0        5     16
3         6-24 months   ki1148112-LCNI-5            MALAWI                         Control               1        1     16
3         6-24 months   ki1148112-LCNI-5            MALAWI                         LNS                   0        8     16
3         6-24 months   ki1148112-LCNI-5            MALAWI                         LNS                   1        2     16
4         6-24 months   ki1148112-LCNI-5            MALAWI                         Control               0       11     31
4         6-24 months   ki1148112-LCNI-5            MALAWI                         Control               1        3     31
4         6-24 months   ki1148112-LCNI-5            MALAWI                         LNS                   0       11     31
4         6-24 months   ki1148112-LCNI-5            MALAWI                         LNS                   1        6     31
5         6-24 months   ki1148112-LCNI-5            MALAWI                         Control               0       14     27
5         6-24 months   ki1148112-LCNI-5            MALAWI                         Control               1        0     27
5         6-24 months   ki1148112-LCNI-5            MALAWI                         LNS                   0       10     27
5         6-24 months   ki1148112-LCNI-5            MALAWI                         LNS                   1        3     27
6         6-24 months   ki1148112-LCNI-5            MALAWI                         Control               0        7     20
6         6-24 months   ki1148112-LCNI-5            MALAWI                         Control               1        3     20
6         6-24 months   ki1148112-LCNI-5            MALAWI                         LNS                   0        7     20
6         6-24 months   ki1148112-LCNI-5            MALAWI                         LNS                   1        3     20
12        6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control               0      463   1224
12        6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control               1      127   1224
12        6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Other                 0      474   1224
12        6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Other                 1      160   1224
11        6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control               0      485   1294
11        6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control               1      145   1294
11        6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Other                 0      496   1294
11        6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Other                 1      168   1294
1         6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control               0      400   1041
1         6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control               1      112   1041
1         6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Other                 0      385   1041
1         6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Other                 1      144   1041
10        6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control               0      488   1293
10        6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control               1      123   1293
10        6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Other                 0      559   1293
10        6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Other                 1      123   1293
6         6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control               0      390    989
6         6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control               1       86    989
6         6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Other                 0      429    989
6         6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Other                 1       84    989
7         6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control               0      423   1020
7         6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control               1       78   1020
7         6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Other                 0      425   1020
7         6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Other                 1       94   1020
5         6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control               0      391    907
5         6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control               1       67    907
5         6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Other                 0      359    907
5         6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Other                 1       90    907
9         6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control               0      518   1306
9         6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control               1      124   1306
9         6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Other                 0      548   1306
9         6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Other                 1      116   1306
8         6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control               0      508   1218
8         6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control               1      100   1218
8         6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Other                 0      527   1218
8         6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Other                 1       83   1218
4         6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control               0      383    949
4         6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control               1       75    949
4         6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Other                 0      412    949
4         6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Other                 1       79    949
2         6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control               0      334    911
2         6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control               1      101    911
2         6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Other                 0      340    911
2         6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Other                 1      136    911
3         6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control               0      474   1152
3         6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control               1       98   1152
3         6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Other                 0      471   1152
3         6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Other                 1      109   1152
10        6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control               0       20    112
10        6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control               1       11    112
10        6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     LNS                   0       23    112
10        6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     LNS                   1        8    112
10        6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     MMN                   0       14    112
10        6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     MMN                   1        6    112
10        6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Other                 0       28    112
10        6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Other                 1        2    112
7         6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control               0       75    411
7         6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control               1       43    411
7         6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     LNS                   0       85    411
7         6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     LNS                   1       47    411
7         6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     MMN                   0       37    411
7         6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     MMN                   1       22    411
7         6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Other                 0       72    411
7         6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Other                 1       30    411
3         6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control               0      146    798
3         6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control               1       63    798
3         6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     LNS                   0      184    798
3         6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     LNS                   1       65    798
3         6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     MMN                   0       85    798
3         6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     MMN                   1       32    798
3         6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Other                 0      164    798
3         6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Other                 1       59    798
2         6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control               0      139    731
2         6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control               1       58    731
2         6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     LNS                   0      149    731
2         6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     LNS                   1       47    731
2         6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     MMN                   0       88    731
2         6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     MMN                   1       38    731
2         6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Other                 0      163    731
2         6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Other                 1       49    731
6         6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control               0       69    368
6         6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control               1       29    368
6         6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     LNS                   0       79    368
6         6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     LNS                   1       33    368
6         6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     MMN                   0       38    368
6         6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     MMN                   1       22    368
6         6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Other                 0       62    368
6         6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Other                 1       36    368
5         6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control               0       98    506
5         6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control               1       52    506
5         6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     LNS                   0      107    506
5         6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     LNS                   1       41    506
5         6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     MMN                   0       46    506
5         6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     MMN                   1       21    506
5         6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Other                 0       99    506
5         6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Other                 1       42    506
4         6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control               0      110    602
4         6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control               1       55    602
4         6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     LNS                   0      127    602
4         6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     LNS                   1       59    602
4         6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     MMN                   0       57    602
4         6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     MMN                   1       30    602
4         6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Other                 0      118    602
4         6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Other                 1       46    602
9         6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control               0       57    327
9         6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control               1       19    327
9         6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     LNS                   0       78    327
9         6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     LNS                   1       29    327
9         6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     MMN                   0       38    327
9         6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     MMN                   1       12    327
9         6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Other                 0       74    327
9         6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Other                 1       20    327
8         6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control               0       75    457
8         6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control               1       37    457
8         6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     LNS                   0      105    457
8         6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     LNS                   1       50    457
8         6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     MMN                   0       48    457
8         6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     MMN                   1       12    457
8         6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Other                 0       83    457
8         6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Other                 1       47    457
12        0-24 months   ki1000107-Serrinha-VitA     BRAZIL                         Control               0       21     49
12        0-24 months   ki1000107-Serrinha-VitA     BRAZIL                         Control               1        6     49
12        0-24 months   ki1000107-Serrinha-VitA     BRAZIL                         Other                 0       18     49
12        0-24 months   ki1000107-Serrinha-VitA     BRAZIL                         Other                 1        4     49
7         0-24 months   ki1000107-Serrinha-VitA     BRAZIL                         Control               0       12     31
7         0-24 months   ki1000107-Serrinha-VitA     BRAZIL                         Control               1        4     31
7         0-24 months   ki1000107-Serrinha-VitA     BRAZIL                         Other                 0       11     31
7         0-24 months   ki1000107-Serrinha-VitA     BRAZIL                         Other                 1        4     31
3         0-24 months   ki1000107-Serrinha-VitA     BRAZIL                         Control               0       14     57
3         0-24 months   ki1000107-Serrinha-VitA     BRAZIL                         Control               1        6     57
3         0-24 months   ki1000107-Serrinha-VitA     BRAZIL                         Other                 0       24     57
3         0-24 months   ki1000107-Serrinha-VitA     BRAZIL                         Other                 1       13     57
10        0-24 months   ki1000107-Serrinha-VitA     BRAZIL                         Control               0        9     25
10        0-24 months   ki1000107-Serrinha-VitA     BRAZIL                         Control               1        2     25
10        0-24 months   ki1000107-Serrinha-VitA     BRAZIL                         Other                 0        9     25
10        0-24 months   ki1000107-Serrinha-VitA     BRAZIL                         Other                 1        5     25
8         0-24 months   ki1000107-Serrinha-VitA     BRAZIL                         Control               0       14     31
8         0-24 months   ki1000107-Serrinha-VitA     BRAZIL                         Control               1        4     31
8         0-24 months   ki1000107-Serrinha-VitA     BRAZIL                         Other                 0        7     31
8         0-24 months   ki1000107-Serrinha-VitA     BRAZIL                         Other                 1        6     31
1         0-24 months   ki1000107-Serrinha-VitA     BRAZIL                         Control               0       17     47
1         0-24 months   ki1000107-Serrinha-VitA     BRAZIL                         Control               1        6     47
1         0-24 months   ki1000107-Serrinha-VitA     BRAZIL                         Other                 0       19     47
1         0-24 months   ki1000107-Serrinha-VitA     BRAZIL                         Other                 1        5     47
6         0-24 months   ki1000107-Serrinha-VitA     BRAZIL                         Control               0       15     46
6         0-24 months   ki1000107-Serrinha-VitA     BRAZIL                         Control               1        8     46
6         0-24 months   ki1000107-Serrinha-VitA     BRAZIL                         Other                 0       15     46
6         0-24 months   ki1000107-Serrinha-VitA     BRAZIL                         Other                 1        8     46
4         0-24 months   ki1000107-Serrinha-VitA     BRAZIL                         Control               0       25     55
4         0-24 months   ki1000107-Serrinha-VitA     BRAZIL                         Control               1        3     55
4         0-24 months   ki1000107-Serrinha-VitA     BRAZIL                         Other                 0       20     55
4         0-24 months   ki1000107-Serrinha-VitA     BRAZIL                         Other                 1        7     55
5         0-24 months   ki1000107-Serrinha-VitA     BRAZIL                         Control               0       17     51
5         0-24 months   ki1000107-Serrinha-VitA     BRAZIL                         Control               1        7     51
5         0-24 months   ki1000107-Serrinha-VitA     BRAZIL                         Other                 0       15     51
5         0-24 months   ki1000107-Serrinha-VitA     BRAZIL                         Other                 1       12     51
11        0-24 months   ki1000107-Serrinha-VitA     BRAZIL                         Control               0        5     22
11        0-24 months   ki1000107-Serrinha-VitA     BRAZIL                         Control               1        6     22
11        0-24 months   ki1000107-Serrinha-VitA     BRAZIL                         Other                 0        7     22
11        0-24 months   ki1000107-Serrinha-VitA     BRAZIL                         Other                 1        4     22
2         0-24 months   ki1000107-Serrinha-VitA     BRAZIL                         Control               0       20     50
2         0-24 months   ki1000107-Serrinha-VitA     BRAZIL                         Control               1        6     50
2         0-24 months   ki1000107-Serrinha-VitA     BRAZIL                         Other                 0       14     50
2         0-24 months   ki1000107-Serrinha-VitA     BRAZIL                         Other                 1       10     50
9         0-24 months   ki1000107-Serrinha-VitA     BRAZIL                         Control               0       11     30
9         0-24 months   ki1000107-Serrinha-VitA     BRAZIL                         Control               1        5     30
9         0-24 months   ki1000107-Serrinha-VitA     BRAZIL                         Other                 0        9     30
9         0-24 months   ki1000107-Serrinha-VitA     BRAZIL                         Other                 1        5     30
2         0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control               0       27    164
2         0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control               1       17    164
2         0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                   0       29    164
2         0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                   1        7    164
2         0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                 0       54    164
2         0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                 1       30    164
1         0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control               0       31    243
1         0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control               1       21    243
1         0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                   0       50    243
1         0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                   1       15    243
1         0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                 0       83    243
1         0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                 1       43    243
12        0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control               0       66    406
12        0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control               1       24    406
12        0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                   0       93    406
12        0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                   1       28    406
12        0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                 0      130    406
12        0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                 1       65    406
3         0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control               0       39    192
3         0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control               1       16    192
3         0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                   0       33    192
3         0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                   1        8    192
3         0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                 0       60    192
3         0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                 1       36    192
11        0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control               0       85    542
11        0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control               1       57    542
11        0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                   0       87    542
11        0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                   1       38    542
11        0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                 0      177    542
11        0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                 1       98    542
10        0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control               0       84    591
10        0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control               1       51    591
10        0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                   0       88    591
10        0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                   1       58    591
10        0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                 0      183    591
10        0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                 1      127    591
9         0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control               0       79    562
9         0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control               1       53    562
9         0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                   0       93    562
9         0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                   1       52    562
9         0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                 0      165    562
9         0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                 1      120    562
4         0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control               0       40    256
4         0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control               1       20    256
4         0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                   0       43    256
4         0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                   1       25    256
4         0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                 0       82    256
4         0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                 1       46    256
5         0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control               0       60    370
5         0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control               1       37    370
5         0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                   0       53    370
5         0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                   1       30    370
5         0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                 0      108    370
5         0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                 1       82    370
6         0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control               0       63    387
6         0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control               1       21    387
6         0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                   0       74    387
6         0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                   1       39    387
6         0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                 0      105    387
6         0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                 1       85    387
8         0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control               0       81    588
8         0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control               1       86    588
8         0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                   0       88    588
8         0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                   1       52    588
8         0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                 0      150    588
8         0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                 1      131    588
7         0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control               0       56    516
7         0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control               1       62    516
7         0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                   0       77    516
7         0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                   1       51    516
7         0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                 0      156    516
7         0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                 1      114    516
8         0-24 months   ki1000111-WASH-Kenya        KENYA                          Control               0      118    524
8         0-24 months   ki1000111-WASH-Kenya        KENYA                          Control               1       53    524
8         0-24 months   ki1000111-WASH-Kenya        KENYA                          LNS                   0       79    524
8         0-24 months   ki1000111-WASH-Kenya        KENYA                          LNS                   1       38    524
8         0-24 months   ki1000111-WASH-Kenya        KENYA                          Other                 0      159    524
8         0-24 months   ki1000111-WASH-Kenya        KENYA                          Other                 1       77    524
9         0-24 months   ki1000111-WASH-Kenya        KENYA                          Control               0      148    587
9         0-24 months   ki1000111-WASH-Kenya        KENYA                          Control               1       56    587
9         0-24 months   ki1000111-WASH-Kenya        KENYA                          LNS                   0       86    587
9         0-24 months   ki1000111-WASH-Kenya        KENYA                          LNS                   1       36    587
9         0-24 months   ki1000111-WASH-Kenya        KENYA                          Other                 0      185    587
9         0-24 months   ki1000111-WASH-Kenya        KENYA                          Other                 1       76    587
6         0-24 months   ki1000111-WASH-Kenya        KENYA                          Control               0      126    485
6         0-24 months   ki1000111-WASH-Kenya        KENYA                          Control               1       37    485
6         0-24 months   ki1000111-WASH-Kenya        KENYA                          LNS                   0       90    485
6         0-24 months   ki1000111-WASH-Kenya        KENYA                          LNS                   1       28    485
6         0-24 months   ki1000111-WASH-Kenya        KENYA                          Other                 0      144    485
6         0-24 months   ki1000111-WASH-Kenya        KENYA                          Other                 1       60    485
1         0-24 months   ki1000111-WASH-Kenya        KENYA                          Control               0      141    538
1         0-24 months   ki1000111-WASH-Kenya        KENYA                          Control               1       40    538
1         0-24 months   ki1000111-WASH-Kenya        KENYA                          LNS                   0       98    538
1         0-24 months   ki1000111-WASH-Kenya        KENYA                          LNS                   1       24    538
1         0-24 months   ki1000111-WASH-Kenya        KENYA                          Other                 0      174    538
1         0-24 months   ki1000111-WASH-Kenya        KENYA                          Other                 1       61    538
10        0-24 months   ki1000111-WASH-Kenya        KENYA                          Control               0      160    628
10        0-24 months   ki1000111-WASH-Kenya        KENYA                          Control               1       55    628
10        0-24 months   ki1000111-WASH-Kenya        KENYA                          LNS                   0      109    628
10        0-24 months   ki1000111-WASH-Kenya        KENYA                          LNS                   1       19    628
10        0-24 months   ki1000111-WASH-Kenya        KENYA                          Other                 0      207    628
10        0-24 months   ki1000111-WASH-Kenya        KENYA                          Other                 1       78    628
7         0-24 months   ki1000111-WASH-Kenya        KENYA                          Control               0       93    430
7         0-24 months   ki1000111-WASH-Kenya        KENYA                          Control               1       41    430
7         0-24 months   ki1000111-WASH-Kenya        KENYA                          LNS                   0       75    430
7         0-24 months   ki1000111-WASH-Kenya        KENYA                          LNS                   1       21    430
7         0-24 months   ki1000111-WASH-Kenya        KENYA                          Other                 0      137    430
7         0-24 months   ki1000111-WASH-Kenya        KENYA                          Other                 1       63    430
2         0-24 months   ki1000111-WASH-Kenya        KENYA                          Control               0      123    482
2         0-24 months   ki1000111-WASH-Kenya        KENYA                          Control               1       35    482
2         0-24 months   ki1000111-WASH-Kenya        KENYA                          LNS                   0       93    482
2         0-24 months   ki1000111-WASH-Kenya        KENYA                          LNS                   1       20    482
2         0-24 months   ki1000111-WASH-Kenya        KENYA                          Other                 0      155    482
2         0-24 months   ki1000111-WASH-Kenya        KENYA                          Other                 1       56    482
5         0-24 months   ki1000111-WASH-Kenya        KENYA                          Control               0      155    565
5         0-24 months   ki1000111-WASH-Kenya        KENYA                          Control               1       44    565
5         0-24 months   ki1000111-WASH-Kenya        KENYA                          LNS                   0       88    565
5         0-24 months   ki1000111-WASH-Kenya        KENYA                          LNS                   1       30    565
5         0-24 months   ki1000111-WASH-Kenya        KENYA                          Other                 0      185    565
5         0-24 months   ki1000111-WASH-Kenya        KENYA                          Other                 1       63    565
12        0-24 months   ki1000111-WASH-Kenya        KENYA                          Control               0      169    622
12        0-24 months   ki1000111-WASH-Kenya        KENYA                          Control               1       56    622
12        0-24 months   ki1000111-WASH-Kenya        KENYA                          LNS                   0      112    622
12        0-24 months   ki1000111-WASH-Kenya        KENYA                          LNS                   1       24    622
12        0-24 months   ki1000111-WASH-Kenya        KENYA                          Other                 0      189    622
12        0-24 months   ki1000111-WASH-Kenya        KENYA                          Other                 1       72    622
11        0-24 months   ki1000111-WASH-Kenya        KENYA                          Control               0      162    610
11        0-24 months   ki1000111-WASH-Kenya        KENYA                          Control               1       44    610
11        0-24 months   ki1000111-WASH-Kenya        KENYA                          LNS                   0      109    610
11        0-24 months   ki1000111-WASH-Kenya        KENYA                          LNS                   1       23    610
11        0-24 months   ki1000111-WASH-Kenya        KENYA                          Other                 0      209    610
11        0-24 months   ki1000111-WASH-Kenya        KENYA                          Other                 1       63    610
3         0-24 months   ki1000111-WASH-Kenya        KENYA                          Control               0      157    604
3         0-24 months   ki1000111-WASH-Kenya        KENYA                          Control               1       58    604
3         0-24 months   ki1000111-WASH-Kenya        KENYA                          LNS                   0      101    604
3         0-24 months   ki1000111-WASH-Kenya        KENYA                          LNS                   1       23    604
3         0-24 months   ki1000111-WASH-Kenya        KENYA                          Other                 0      207    604
3         0-24 months   ki1000111-WASH-Kenya        KENYA                          Other                 1       58    604
4         0-24 months   ki1000111-WASH-Kenya        KENYA                          Control               0      169    630
4         0-24 months   ki1000111-WASH-Kenya        KENYA                          Control               1       59    630
4         0-24 months   ki1000111-WASH-Kenya        KENYA                          LNS                   0      115    630
4         0-24 months   ki1000111-WASH-Kenya        KENYA                          LNS                   1       33    630
4         0-24 months   ki1000111-WASH-Kenya        KENYA                          Other                 0      182    630
4         0-24 months   ki1000111-WASH-Kenya        KENYA                          Other                 1       72    630
10        0-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Control               0       66    286
10        0-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Control               1       87    286
10        0-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Other                 0       68    286
10        0-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Other                 1       65    286
12        0-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Control               0       72    353
12        0-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Control               1      108    353
12        0-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Other                 0       87    353
12        0-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Other                 1       86    353
1         0-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Control               0       82    346
1         0-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Control               1       76    346
1         0-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Other                 0       93    346
1         0-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Other                 1       95    346
11        0-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Control               0       93    371
11        0-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Control               1      114    371
11        0-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Other                 0       99    371
11        0-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Other                 1       65    371
2         0-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Control               0       14     91
2         0-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Control               1       12     91
2         0-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Other                 0       29     91
2         0-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Other                 1       36     91
9         0-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Control               0       10     84
9         0-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Control               1       24     84
9         0-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Other                 0       24     84
9         0-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Other                 1       26     84
8         0-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Control               1        3      4
8         0-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Other                 1        1      4
3         0-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Control               0       14     51
3         0-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Control               1        7     51
3         0-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Other                 0       19     51
3         0-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Other                 1       11     51
5         0-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Control               0        8     38
5         0-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Control               1        6     38
5         0-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Other                 0       12     38
5         0-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Other                 1       12     38
4         0-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Control               0        9     46
4         0-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Control               1       11     46
4         0-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Other                 0        9     46
4         0-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Other                 1       17     46
6         0-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Control               0        9     41
6         0-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Control               1        3     41
6         0-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Other                 0       21     41
6         0-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Other                 1        8     41
7         0-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Control               0        6     14
7         0-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Control               1        1     14
7         0-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Other                 0        4     14
7         0-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Other                 1        3     14
12        0-24 months   ki1000304-EU                INDIA                          Control               0       54    173
12        0-24 months   ki1000304-EU                INDIA                          Control               1       48    173
12        0-24 months   ki1000304-EU                INDIA                          Zinc                  0       42    173
12        0-24 months   ki1000304-EU                INDIA                          Zinc                  1       29    173
4         0-24 months   ki1000304-EU                INDIA                          Control               0       35    119
4         0-24 months   ki1000304-EU                INDIA                          Control               1       22    119
4         0-24 months   ki1000304-EU                INDIA                          Zinc                  0       41    119
4         0-24 months   ki1000304-EU                INDIA                          Zinc                  1       21    119
1         0-24 months   ki1000304-EU                INDIA                          Control               0       44    146
1         0-24 months   ki1000304-EU                INDIA                          Control               1       47    146
1         0-24 months   ki1000304-EU                INDIA                          Zinc                  0       30    146
1         0-24 months   ki1000304-EU                INDIA                          Zinc                  1       25    146
10        0-24 months   ki1000304-EU                INDIA                          Control               0       56    225
10        0-24 months   ki1000304-EU                INDIA                          Control               1       57    225
10        0-24 months   ki1000304-EU                INDIA                          Zinc                  0       59    225
10        0-24 months   ki1000304-EU                INDIA                          Zinc                  1       53    225
11        0-24 months   ki1000304-EU                INDIA                          Control               0       48    194
11        0-24 months   ki1000304-EU                INDIA                          Control               1       49    194
11        0-24 months   ki1000304-EU                INDIA                          Zinc                  0       45    194
11        0-24 months   ki1000304-EU                INDIA                          Zinc                  1       52    194
7         0-24 months   ki1000304-EU                INDIA                          Control               0       47    180
7         0-24 months   ki1000304-EU                INDIA                          Control               1       40    180
7         0-24 months   ki1000304-EU                INDIA                          Zinc                  0       54    180
7         0-24 months   ki1000304-EU                INDIA                          Zinc                  1       39    180
3         0-24 months   ki1000304-EU                INDIA                          Control               0       33    166
3         0-24 months   ki1000304-EU                INDIA                          Control               1       39    166
3         0-24 months   ki1000304-EU                INDIA                          Zinc                  0       58    166
3         0-24 months   ki1000304-EU                INDIA                          Zinc                  1       36    166
9         0-24 months   ki1000304-EU                INDIA                          Control               0       49    188
9         0-24 months   ki1000304-EU                INDIA                          Control               1       43    188
9         0-24 months   ki1000304-EU                INDIA                          Zinc                  0       47    188
9         0-24 months   ki1000304-EU                INDIA                          Zinc                  1       49    188
8         0-24 months   ki1000304-EU                INDIA                          Control               0       52    213
8         0-24 months   ki1000304-EU                INDIA                          Control               1       58    213
8         0-24 months   ki1000304-EU                INDIA                          Zinc                  0       55    213
8         0-24 months   ki1000304-EU                INDIA                          Zinc                  1       48    213
5         0-24 months   ki1000304-EU                INDIA                          Control               0       32    120
5         0-24 months   ki1000304-EU                INDIA                          Control               1       23    120
5         0-24 months   ki1000304-EU                INDIA                          Zinc                  0       36    120
5         0-24 months   ki1000304-EU                INDIA                          Zinc                  1       29    120
2         0-24 months   ki1000304-EU                INDIA                          Control               0       39    139
2         0-24 months   ki1000304-EU                INDIA                          Control               1       28    139
2         0-24 months   ki1000304-EU                INDIA                          Zinc                  0       45    139
2         0-24 months   ki1000304-EU                INDIA                          Zinc                  1       27    139
6         0-24 months   ki1000304-EU                INDIA                          Control               0       37    153
6         0-24 months   ki1000304-EU                INDIA                          Control               1       48    153
6         0-24 months   ki1000304-EU                INDIA                          Zinc                  0       35    153
6         0-24 months   ki1000304-EU                INDIA                          Zinc                  1       33    153
12        0-24 months   ki1000304-VITAMIN-A         INDIA                          Control               0       87    319
12        0-24 months   ki1000304-VITAMIN-A         INDIA                          Control               1       78    319
12        0-24 months   ki1000304-VITAMIN-A         INDIA                          Other                 0       77    319
12        0-24 months   ki1000304-VITAMIN-A         INDIA                          Other                 1       77    319
1         0-24 months   ki1000304-VITAMIN-A         INDIA                          Control               0       88    326
1         0-24 months   ki1000304-VITAMIN-A         INDIA                          Control               1       74    326
1         0-24 months   ki1000304-VITAMIN-A         INDIA                          Other                 0       99    326
1         0-24 months   ki1000304-VITAMIN-A         INDIA                          Other                 1       65    326
3         0-24 months   ki1000304-VITAMIN-A         INDIA                          Control               0       85    345
3         0-24 months   ki1000304-VITAMIN-A         INDIA                          Control               1       83    345
3         0-24 months   ki1000304-VITAMIN-A         INDIA                          Other                 0      107    345
3         0-24 months   ki1000304-VITAMIN-A         INDIA                          Other                 1       70    345
5         0-24 months   ki1000304-VITAMIN-A         INDIA                          Control               0       97    337
5         0-24 months   ki1000304-VITAMIN-A         INDIA                          Control               1       73    337
5         0-24 months   ki1000304-VITAMIN-A         INDIA                          Other                 0       96    337
5         0-24 months   ki1000304-VITAMIN-A         INDIA                          Other                 1       71    337
6         0-24 months   ki1000304-VITAMIN-A         INDIA                          Control               0       91    307
6         0-24 months   ki1000304-VITAMIN-A         INDIA                          Control               1       66    307
6         0-24 months   ki1000304-VITAMIN-A         INDIA                          Other                 0       80    307
6         0-24 months   ki1000304-VITAMIN-A         INDIA                          Other                 1       70    307
4         0-24 months   ki1000304-VITAMIN-A         INDIA                          Control               0      100    335
4         0-24 months   ki1000304-VITAMIN-A         INDIA                          Control               1       71    335
4         0-24 months   ki1000304-VITAMIN-A         INDIA                          Other                 0       95    335
4         0-24 months   ki1000304-VITAMIN-A         INDIA                          Other                 1       69    335
7         0-24 months   ki1000304-VITAMIN-A         INDIA                          Control               0      119    404
7         0-24 months   ki1000304-VITAMIN-A         INDIA                          Control               1       86    404
7         0-24 months   ki1000304-VITAMIN-A         INDIA                          Other                 0      118    404
7         0-24 months   ki1000304-VITAMIN-A         INDIA                          Other                 1       81    404
8         0-24 months   ki1000304-VITAMIN-A         INDIA                          Control               0       94    336
8         0-24 months   ki1000304-VITAMIN-A         INDIA                          Control               1       79    336
8         0-24 months   ki1000304-VITAMIN-A         INDIA                          Other                 0       89    336
8         0-24 months   ki1000304-VITAMIN-A         INDIA                          Other                 1       74    336
9         0-24 months   ki1000304-VITAMIN-A         INDIA                          Control               0       66    243
9         0-24 months   ki1000304-VITAMIN-A         INDIA                          Control               1       58    243
9         0-24 months   ki1000304-VITAMIN-A         INDIA                          Other                 0       70    243
9         0-24 months   ki1000304-VITAMIN-A         INDIA                          Other                 1       49    243
10        0-24 months   ki1000304-VITAMIN-A         INDIA                          Control               0       51    191
10        0-24 months   ki1000304-VITAMIN-A         INDIA                          Control               1       42    191
10        0-24 months   ki1000304-VITAMIN-A         INDIA                          Other                 0       57    191
10        0-24 months   ki1000304-VITAMIN-A         INDIA                          Other                 1       41    191
11        0-24 months   ki1000304-VITAMIN-A         INDIA                          Control               0       36    144
11        0-24 months   ki1000304-VITAMIN-A         INDIA                          Control               1       37    144
11        0-24 months   ki1000304-VITAMIN-A         INDIA                          Other                 0       37    144
11        0-24 months   ki1000304-VITAMIN-A         INDIA                          Other                 1       34    144
2         0-24 months   ki1000304-VITAMIN-A         INDIA                          Control               0       64    256
2         0-24 months   ki1000304-VITAMIN-A         INDIA                          Control               1       64    256
2         0-24 months   ki1000304-VITAMIN-A         INDIA                          Other                 0       67    256
2         0-24 months   ki1000304-VITAMIN-A         INDIA                          Other                 1       61    256
3         0-24 months   ki1000304-Vitamin-B12       INDIA                          Control               0       25     80
3         0-24 months   ki1000304-Vitamin-B12       INDIA                          Control               1       17     80
3         0-24 months   ki1000304-Vitamin-B12       INDIA                          Other                 0       23     80
3         0-24 months   ki1000304-Vitamin-B12       INDIA                          Other                 1       15     80
2         0-24 months   ki1000304-Vitamin-B12       INDIA                          Control               0       13     67
2         0-24 months   ki1000304-Vitamin-B12       INDIA                          Control               1       21     67
2         0-24 months   ki1000304-Vitamin-B12       INDIA                          Other                 0       16     67
2         0-24 months   ki1000304-Vitamin-B12       INDIA                          Other                 1       17     67
12        0-24 months   ki1000304-Vitamin-B12       INDIA                          Control               0       17     65
12        0-24 months   ki1000304-Vitamin-B12       INDIA                          Control               1       13     65
12        0-24 months   ki1000304-Vitamin-B12       INDIA                          Other                 0       19     65
12        0-24 months   ki1000304-Vitamin-B12       INDIA                          Other                 1       16     65
9         0-24 months   ki1000304-Vitamin-B12       INDIA                          Control               0       18     66
9         0-24 months   ki1000304-Vitamin-B12       INDIA                          Control               1       17     66
9         0-24 months   ki1000304-Vitamin-B12       INDIA                          Other                 0       12     66
9         0-24 months   ki1000304-Vitamin-B12       INDIA                          Other                 1       19     66
7         0-24 months   ki1000304-Vitamin-B12       INDIA                          Control               0       25     81
7         0-24 months   ki1000304-Vitamin-B12       INDIA                          Control               1       20     81
7         0-24 months   ki1000304-Vitamin-B12       INDIA                          Other                 0       24     81
7         0-24 months   ki1000304-Vitamin-B12       INDIA                          Other                 1       12     81
8         0-24 months   ki1000304-Vitamin-B12       INDIA                          Control               0       21     76
8         0-24 months   ki1000304-Vitamin-B12       INDIA                          Control               1       15     76
8         0-24 months   ki1000304-Vitamin-B12       INDIA                          Other                 0       23     76
8         0-24 months   ki1000304-Vitamin-B12       INDIA                          Other                 1       17     76
11        0-24 months   ki1000304-Vitamin-B12       INDIA                          Control               0       22     75
11        0-24 months   ki1000304-Vitamin-B12       INDIA                          Control               1       21     75
11        0-24 months   ki1000304-Vitamin-B12       INDIA                          Other                 0       17     75
11        0-24 months   ki1000304-Vitamin-B12       INDIA                          Other                 1       15     75
10        0-24 months   ki1000304-Vitamin-B12       INDIA                          Control               0       16     61
10        0-24 months   ki1000304-Vitamin-B12       INDIA                          Control               1       16     61
10        0-24 months   ki1000304-Vitamin-B12       INDIA                          Other                 0       16     61
10        0-24 months   ki1000304-Vitamin-B12       INDIA                          Other                 1       13     61
6         0-24 months   ki1000304-Vitamin-B12       INDIA                          Control               0       16     62
6         0-24 months   ki1000304-Vitamin-B12       INDIA                          Control               1       14     62
6         0-24 months   ki1000304-Vitamin-B12       INDIA                          Other                 0       16     62
6         0-24 months   ki1000304-Vitamin-B12       INDIA                          Other                 1       16     62
5         0-24 months   ki1000304-Vitamin-B12       INDIA                          Control               0       14     67
5         0-24 months   ki1000304-Vitamin-B12       INDIA                          Control               1       16     67
5         0-24 months   ki1000304-Vitamin-B12       INDIA                          Other                 0       20     67
5         0-24 months   ki1000304-Vitamin-B12       INDIA                          Other                 1       17     67
1         0-24 months   ki1000304-Vitamin-B12       INDIA                          Control               0       13     65
1         0-24 months   ki1000304-Vitamin-B12       INDIA                          Control               1       18     65
1         0-24 months   ki1000304-Vitamin-B12       INDIA                          Other                 0       16     65
1         0-24 months   ki1000304-Vitamin-B12       INDIA                          Other                 1       18     65
4         0-24 months   ki1000304-Vitamin-B12       INDIA                          Control               0        8     39
4         0-24 months   ki1000304-Vitamin-B12       INDIA                          Control               1       10     39
4         0-24 months   ki1000304-Vitamin-B12       INDIA                          Other                 0       14     39
4         0-24 months   ki1000304-Vitamin-B12       INDIA                          Other                 1        7     39
8         0-24 months   ki1000304-ZnMort            INDIA                          Other                 0       57    235
8         0-24 months   ki1000304-ZnMort            INDIA                          Other                 1       58    235
8         0-24 months   ki1000304-ZnMort            INDIA                          Zinc                  0       60    235
8         0-24 months   ki1000304-ZnMort            INDIA                          Zinc                  1       60    235
1         0-24 months   ki1000304-ZnMort            INDIA                          Other                 0       43    168
1         0-24 months   ki1000304-ZnMort            INDIA                          Other                 1       47    168
1         0-24 months   ki1000304-ZnMort            INDIA                          Zinc                  0       34    168
1         0-24 months   ki1000304-ZnMort            INDIA                          Zinc                  1       44    168
2         0-24 months   ki1000304-ZnMort            INDIA                          Other                 0       42    151
2         0-24 months   ki1000304-ZnMort            INDIA                          Other                 1       31    151
2         0-24 months   ki1000304-ZnMort            INDIA                          Zinc                  0       37    151
2         0-24 months   ki1000304-ZnMort            INDIA                          Zinc                  1       41    151
4         0-24 months   ki1000304-ZnMort            INDIA                          Other                 0       27    114
4         0-24 months   ki1000304-ZnMort            INDIA                          Other                 1       25    114
4         0-24 months   ki1000304-ZnMort            INDIA                          Zinc                  0       33    114
4         0-24 months   ki1000304-ZnMort            INDIA                          Zinc                  1       29    114
3         0-24 months   ki1000304-ZnMort            INDIA                          Other                 0       31    144
3         0-24 months   ki1000304-ZnMort            INDIA                          Other                 1       38    144
3         0-24 months   ki1000304-ZnMort            INDIA                          Zinc                  0       39    144
3         0-24 months   ki1000304-ZnMort            INDIA                          Zinc                  1       36    144
7         0-24 months   ki1000304-ZnMort            INDIA                          Other                 0       51    182
7         0-24 months   ki1000304-ZnMort            INDIA                          Other                 1       41    182
7         0-24 months   ki1000304-ZnMort            INDIA                          Zinc                  0       47    182
7         0-24 months   ki1000304-ZnMort            INDIA                          Zinc                  1       43    182
9         0-24 months   ki1000304-ZnMort            INDIA                          Other                 0       36    195
9         0-24 months   ki1000304-ZnMort            INDIA                          Other                 1       63    195
9         0-24 months   ki1000304-ZnMort            INDIA                          Zinc                  0       45    195
9         0-24 months   ki1000304-ZnMort            INDIA                          Zinc                  1       51    195
10        0-24 months   ki1000304-ZnMort            INDIA                          Other                 0       47    211
10        0-24 months   ki1000304-ZnMort            INDIA                          Other                 1       62    211
10        0-24 months   ki1000304-ZnMort            INDIA                          Zinc                  0       50    211
10        0-24 months   ki1000304-ZnMort            INDIA                          Zinc                  1       52    211
5         0-24 months   ki1000304-ZnMort            INDIA                          Other                 0       28    126
5         0-24 months   ki1000304-ZnMort            INDIA                          Other                 1       35    126
5         0-24 months   ki1000304-ZnMort            INDIA                          Zinc                  0       32    126
5         0-24 months   ki1000304-ZnMort            INDIA                          Zinc                  1       31    126
6         0-24 months   ki1000304-ZnMort            INDIA                          Other                 0       42    148
6         0-24 months   ki1000304-ZnMort            INDIA                          Other                 1       32    148
6         0-24 months   ki1000304-ZnMort            INDIA                          Zinc                  0       34    148
6         0-24 months   ki1000304-ZnMort            INDIA                          Zinc                  1       40    148
12        0-24 months   ki1000304-ZnMort            INDIA                          Other                 0       44    179
12        0-24 months   ki1000304-ZnMort            INDIA                          Other                 1       48    179
12        0-24 months   ki1000304-ZnMort            INDIA                          Zinc                  0       34    179
12        0-24 months   ki1000304-ZnMort            INDIA                          Zinc                  1       53    179
11        0-24 months   ki1000304-ZnMort            INDIA                          Other                 0       42    183
11        0-24 months   ki1000304-ZnMort            INDIA                          Other                 1       43    183
11        0-24 months   ki1000304-ZnMort            INDIA                          Zinc                  0       60    183
11        0-24 months   ki1000304-ZnMort            INDIA                          Zinc                  1       38    183
10        0-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control               0       27    157
10        0-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control               1       51    157
10        0-24 months   ki1000304b-SAS-CompFeed     INDIA                          Other                 0       24    157
10        0-24 months   ki1000304b-SAS-CompFeed     INDIA                          Other                 1       55    157
11        0-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control               0       18    129
11        0-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control               1       29    129
11        0-24 months   ki1000304b-SAS-CompFeed     INDIA                          Other                 0       36    129
11        0-24 months   ki1000304b-SAS-CompFeed     INDIA                          Other                 1       46    129
12        0-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control               0       30    132
12        0-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control               1       42    132
12        0-24 months   ki1000304b-SAS-CompFeed     INDIA                          Other                 0       31    132
12        0-24 months   ki1000304b-SAS-CompFeed     INDIA                          Other                 1       29    132
1         0-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control               0       19    100
1         0-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control               1       32    100
1         0-24 months   ki1000304b-SAS-CompFeed     INDIA                          Other                 0       23    100
1         0-24 months   ki1000304b-SAS-CompFeed     INDIA                          Other                 1       26    100
2         0-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control               0       22     85
2         0-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control               1       18     85
2         0-24 months   ki1000304b-SAS-CompFeed     INDIA                          Other                 0       20     85
2         0-24 months   ki1000304b-SAS-CompFeed     INDIA                          Other                 1       25     85
3         0-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control               0       19     79
3         0-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control               1       15     79
3         0-24 months   ki1000304b-SAS-CompFeed     INDIA                          Other                 0       18     79
3         0-24 months   ki1000304b-SAS-CompFeed     INDIA                          Other                 1       27     79
4         0-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control               0       11     71
4         0-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control               1       15     71
4         0-24 months   ki1000304b-SAS-CompFeed     INDIA                          Other                 0       20     71
4         0-24 months   ki1000304b-SAS-CompFeed     INDIA                          Other                 1       25     71
5         0-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control               0       12     93
5         0-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control               1       29     93
5         0-24 months   ki1000304b-SAS-CompFeed     INDIA                          Other                 0       26     93
5         0-24 months   ki1000304b-SAS-CompFeed     INDIA                          Other                 1       26     93
6         0-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control               0       18    103
6         0-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control               1       32    103
6         0-24 months   ki1000304b-SAS-CompFeed     INDIA                          Other                 0       27    103
6         0-24 months   ki1000304b-SAS-CompFeed     INDIA                          Other                 1       26    103
5         0-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Control               0        0     14
5         0-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Control               1        3     14
5         0-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Other                 0        3     14
5         0-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Other                 1        8     14
6         0-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Control               0        1     25
6         0-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Control               1        5     25
6         0-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Other                 0        2     25
6         0-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Other                 1       17     25
8         0-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Control               0        5     67
8         0-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Control               1       12     67
8         0-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Other                 0       17     67
8         0-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Other                 1       33     67
9         0-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Control               0        1     66
9         0-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Control               1       17     66
9         0-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Other                 0        8     66
9         0-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Other                 1       40     66
12        0-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Control               0        0     38
12        0-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Control               1       10     38
12        0-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Other                 0        8     38
12        0-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Other                 1       20     38
2         0-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Control               0        2     36
2         0-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Control               1        7     36
2         0-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Other                 0       12     36
2         0-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Other                 1       15     36
10        0-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Control               0        4     51
10        0-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Control               1        9     51
10        0-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Other                 0        8     51
10        0-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Other                 1       30     51
11        0-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Control               0        2     33
11        0-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Control               1        4     33
11        0-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Other                 0        6     33
11        0-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Other                 1       21     33
1         0-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Control               0        1     26
1         0-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Control               1        6     26
1         0-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Other                 0        7     26
1         0-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Other                 1       12     26
3         0-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Control               0        2     21
3         0-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Control               1        4     21
3         0-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Other                 0        4     21
3         0-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Other                 1       11     21
4         0-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Control               0        0      4
4         0-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Control               1        1      4
4         0-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Other                 0        2      4
4         0-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Other                 1        1      4
7         0-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Control               0        2     37
7         0-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Control               1        8     37
7         0-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Other                 0        9     37
7         0-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Other                 1       18     37
7         0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control               0       37    207
7         0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control               1       12    207
7         0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                 0       78    207
7         0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                 1       31    207
7         0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                  0       38    207
7         0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                  1       11    207
8         0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control               0       47    216
8         0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control               1       11    216
8         0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                 0       81    216
8         0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                 1       23    216
8         0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                  0       41    216
8         0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                  1       13    216
9         0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control               0       36    206
9         0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control               1       10    206
9         0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                 0       80    206
9         0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                 1       29    206
9         0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                  0       41    206
9         0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                  1       10    206
10        0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control               0       45    229
10        0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control               1       14    229
10        0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                 0       88    229
10        0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                 1       24    229
10        0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                  0       43    229
10        0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                  1       15    229
11        0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control               0       45    214
11        0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control               1       11    214
11        0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                 0       88    214
11        0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                 1       17    214
11        0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                  0       38    214
11        0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                  1       15    214
12        0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control               0       43    190
12        0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control               1        9    190
12        0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                 0       69    190
12        0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                 1       21    190
12        0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                  0       42    190
12        0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                  1        6    190
1         0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control               0       27    161
1         0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control               1       12    161
1         0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                 0       58    161
1         0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                 1       26    161
1         0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                  0       30    161
1         0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                  1        8    161
2         0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control               0       35    166
2         0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control               1        5    166
2         0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                 0       67    166
2         0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                 1       14    166
2         0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                  0       33    166
2         0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                  1       12    166
3         0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control               0       24    159
3         0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control               1       10    159
3         0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                 0       64    159
3         0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                 1       18    159
3         0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                  0       30    159
3         0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                  1       13    159
4         0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control               0       29    175
4         0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control               1       17    175
4         0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                 0       61    175
4         0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                 1       21    175
4         0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                  0       28    175
4         0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                  1       19    175
5         0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control               0       34    172
5         0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control               1        9    172
5         0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                 0       78    172
5         0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                 1       16    172
5         0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                  0       27    172
5         0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                  1        8    172
6         0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control               0       31    160
6         0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control               1        9    160
6         0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                 0       58    160
6         0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                 1       16    160
6         0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                  0       37    160
6         0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                  1        9    160
4         0-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Control               0       87    620
4         0-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Control               1       32    620
4         0-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc                  0      309    620
4         0-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc                  1      192    620
2         0-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Control               0       78    677
2         0-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Control               1       29    677
2         0-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc                  0      381    677
2         0-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc                  1      189    677
12        0-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Control               0       48    485
12        0-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Control               1       28    485
12        0-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc                  0      280    485
12        0-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc                  1      129    485
1         0-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Control               0       64    652
1         0-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Control               1       23    652
1         0-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc                  0      388    652
1         0-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc                  1      177    652
6         0-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Control               0       96    660
6         0-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Control               1       45    660
6         0-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc                  0      307    660
6         0-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc                  1      212    660
9         0-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Control               0       58    543
9         0-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Control               1       25    543
9         0-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc                  0      293    543
9         0-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc                  1      167    543
8         0-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Control               0       67    565
8         0-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Control               1       36    565
8         0-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc                  0      309    565
8         0-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc                  1      153    565
3         0-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Control               0      108    740
3         0-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Control               1       32    740
3         0-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc                  0      388    740
3         0-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc                  1      212    740
5         0-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Control               0      102    654
5         0-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Control               1       23    654
5         0-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc                  0      329    654
5         0-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc                  1      200    654
7         0-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Control               0       74    566
7         0-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Control               1       41    566
7         0-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc                  0      302    566
7         0-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc                  1      149    566
11        0-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Control               0       45    472
11        0-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Control               1       15    472
11        0-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc                  0      278    472
11        0-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc                  1      134    472
10        0-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Control               0       38    530
10        0-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Control               1       19    530
10        0-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc                  0      298    530
10        0-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc                  1      175    530
9         0-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Control               0        1     12
9         0-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Control               1        3     12
9         0-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Other                 0        3     12
9         0-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Other                 1        5     12
11        0-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Control               0        2     20
11        0-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Control               1        2     20
11        0-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Other                 0        7     20
11        0-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Other                 1        9     20
12        0-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Control               0        5     27
12        0-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Control               1        4     27
12        0-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Other                 0        8     27
12        0-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Other                 1       10     27
1         0-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Control               0        0     25
1         0-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Control               1        4     25
1         0-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Other                 0        8     25
1         0-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Other                 1       13     25
2         0-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Control               0        5     24
2         0-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Control               1        2     24
2         0-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Other                 0       14     24
2         0-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Other                 1        3     24
5         0-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Control               0        7     26
5         0-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Control               1        0     26
5         0-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Other                 0        7     26
5         0-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Other                 1       12     26
6         0-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Control               0        2     19
6         0-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Control               1        3     19
6         0-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Other                 0        7     19
6         0-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Other                 1        7     19
8         0-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Control               0        0     11
8         0-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Control               1        1     11
8         0-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Other                 0        6     11
8         0-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Other                 1        4     11
10        0-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Control               0        6     25
10        0-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Control               1        1     25
10        0-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Other                 0        8     25
10        0-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Other                 1       10     25
3         0-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Control               0        4     25
3         0-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Control               1        1     25
3         0-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Other                 0        9     25
3         0-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Other                 1       11     25
4         0-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Control               0        4     28
4         0-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Control               1        3     28
4         0-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Other                 0       13     28
4         0-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Other                 1        8     28
7         0-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Control               0        3     17
7         0-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Control               1        2     17
7         0-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Other                 0        5     17
7         0-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Other                 1        7     17
10        0-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Control               0       63    372
10        0-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Control               1       28    372
10        0-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   LNS                   0      193    372
10        0-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   LNS                   1       88    372
8         0-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Control               0       50    303
8         0-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Control               1       32    303
8         0-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   LNS                   0      155    303
8         0-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   LNS                   1       66    303
1         0-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Control               0       44    323
1         0-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Control               1       28    323
1         0-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   LNS                   0      172    323
1         0-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   LNS                   1       79    323
2         0-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Control               0       34    181
2         0-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Control               1       14    181
2         0-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   LNS                   0       96    181
2         0-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   LNS                   1       37    181
9         0-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Control               0       52    411
9         0-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Control               1       40    411
9         0-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   LNS                   0      216    411
9         0-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   LNS                   1      103    411
7         0-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Control               0       34    196
7         0-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Control               1       22    196
7         0-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   LNS                   0       90    196
7         0-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   LNS                   1       50    196
6         0-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Control               0       30    192
6         0-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Control               1       16    192
6         0-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   LNS                   0       99    192
6         0-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   LNS                   1       47    192
12        0-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Control               0       53    321
12        0-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Control               1       38    321
12        0-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   LNS                   0      158    321
12        0-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   LNS                   1       72    321
3         0-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Control               0       29    197
3         0-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Control               1       20    197
3         0-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   LNS                   0       98    197
3         0-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   LNS                   1       50    197
11        0-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Control               0       49    342
11        0-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Control               1       25    342
11        0-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   LNS                   0      174    342
11        0-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   LNS                   1       94    342
4         0-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Control               0       22    209
4         0-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Control               1       16    209
4         0-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   LNS                   0      105    209
4         0-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   LNS                   1       66    209
5         0-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Control               0       38    218
5         0-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Control               1       20    218
5         0-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   LNS                   0      106    218
5         0-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   LNS                   1       54    218
6         0-24 months   ki1119695-PROBIT            BELARUS                        Control               0      539   1201
6         0-24 months   ki1119695-PROBIT            BELARUS                        Control               1       80   1201
6         0-24 months   ki1119695-PROBIT            BELARUS                        Other                 0      529   1201
6         0-24 months   ki1119695-PROBIT            BELARUS                        Other                 1       53   1201
7         0-24 months   ki1119695-PROBIT            BELARUS                        Control               0      667   1575
7         0-24 months   ki1119695-PROBIT            BELARUS                        Control               1       91   1575
7         0-24 months   ki1119695-PROBIT            BELARUS                        Other                 0      738   1575
7         0-24 months   ki1119695-PROBIT            BELARUS                        Other                 1       79   1575
8         0-24 months   ki1119695-PROBIT            BELARUS                        Control               0      699   1576
8         0-24 months   ki1119695-PROBIT            BELARUS                        Control               1       96   1576
8         0-24 months   ki1119695-PROBIT            BELARUS                        Other                 0      702   1576
8         0-24 months   ki1119695-PROBIT            BELARUS                        Other                 1       79   1576
9         0-24 months   ki1119695-PROBIT            BELARUS                        Control               0      631   1601
9         0-24 months   ki1119695-PROBIT            BELARUS                        Control               1       99   1601
9         0-24 months   ki1119695-PROBIT            BELARUS                        Other                 0      766   1601
9         0-24 months   ki1119695-PROBIT            BELARUS                        Other                 1      105   1601
10        0-24 months   ki1119695-PROBIT            BELARUS                        Control               0      694   1799
10        0-24 months   ki1119695-PROBIT            BELARUS                        Control               1      119   1799
10        0-24 months   ki1119695-PROBIT            BELARUS                        Other                 0      869   1799
10        0-24 months   ki1119695-PROBIT            BELARUS                        Other                 1      117   1799
11        0-24 months   ki1119695-PROBIT            BELARUS                        Control               0      654   1693
11        0-24 months   ki1119695-PROBIT            BELARUS                        Control               1      101   1693
11        0-24 months   ki1119695-PROBIT            BELARUS                        Other                 0      815   1693
11        0-24 months   ki1119695-PROBIT            BELARUS                        Other                 1      123   1693
12        0-24 months   ki1119695-PROBIT            BELARUS                        Control               0      732   1849
12        0-24 months   ki1119695-PROBIT            BELARUS                        Control               1      127   1849
12        0-24 months   ki1119695-PROBIT            BELARUS                        Other                 0      881   1849
12        0-24 months   ki1119695-PROBIT            BELARUS                        Other                 1      109   1849
1         0-24 months   ki1119695-PROBIT            BELARUS                        Control               0      413   1019
1         0-24 months   ki1119695-PROBIT            BELARUS                        Control               1       87   1019
1         0-24 months   ki1119695-PROBIT            BELARUS                        Other                 0      431   1019
1         0-24 months   ki1119695-PROBIT            BELARUS                        Other                 1       88   1019
2         0-24 months   ki1119695-PROBIT            BELARUS                        Control               0      404    975
2         0-24 months   ki1119695-PROBIT            BELARUS                        Control               1       93    975
2         0-24 months   ki1119695-PROBIT            BELARUS                        Other                 0      408    975
2         0-24 months   ki1119695-PROBIT            BELARUS                        Other                 1       70    975
3         0-24 months   ki1119695-PROBIT            BELARUS                        Control               0      491   1137
3         0-24 months   ki1119695-PROBIT            BELARUS                        Control               1       84   1137
3         0-24 months   ki1119695-PROBIT            BELARUS                        Other                 0      490   1137
3         0-24 months   ki1119695-PROBIT            BELARUS                        Other                 1       72   1137
4         0-24 months   ki1119695-PROBIT            BELARUS                        Control               0      477   1154
4         0-24 months   ki1119695-PROBIT            BELARUS                        Control               1       67   1154
4         0-24 months   ki1119695-PROBIT            BELARUS                        Other                 0      537   1154
4         0-24 months   ki1119695-PROBIT            BELARUS                        Other                 1       73   1154
5         0-24 months   ki1119695-PROBIT            BELARUS                        Control               0      529   1156
5         0-24 months   ki1119695-PROBIT            BELARUS                        Control               1       69   1156
5         0-24 months   ki1119695-PROBIT            BELARUS                        Other                 0      504   1156
5         0-24 months   ki1119695-PROBIT            BELARUS                        Other                 1       54   1156
11        0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control               0      183   1019
11        0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control               1       81   1019
11        0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Other                 0      524   1019
11        0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Other                 1      231   1019
12        0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control               0      199   1070
12        0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control               1       69   1070
12        0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Other                 0      562   1070
12        0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Other                 1      240   1070
1         0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control               0      200   1168
1         0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control               1      102   1168
1         0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Other                 0      570   1168
1         0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Other                 1      296   1168
2         0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control               0      136    903
2         0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control               1       83    903
2         0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Other                 0      467    903
2         0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Other                 1      217    903
3         0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control               0      160   1012
3         0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control               1       87   1012
3         0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Other                 0      506   1012
3         0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Other                 1      259   1012
4         0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control               0      147    860
4         0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control               1       75    860
4         0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Other                 0      429    860
4         0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Other                 1      209    860
6         0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control               0      156    965
6         0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control               1       84    965
6         0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Other                 0      452    965
6         0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Other                 1      273    965
7         0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control               0      176    956
7         0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control               1       76    956
7         0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Other                 0      469    956
7         0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Other                 1      235    956
8         0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control               0      174   1038
8         0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control               1       81   1038
8         0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Other                 0      541   1038
8         0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Other                 1      242   1038
9         0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control               0      200   1081
9         0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control               1       74   1081
9         0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Other                 0      571   1081
9         0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Other                 1      236   1081
10        0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control               0      144    865
10        0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control               1       70    865
10        0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Other                 0      435    865
10        0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Other                 1      216    865
5         0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control               0      140    872
5         0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control               1       73    872
5         0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Other                 0      428    872
5         0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Other                 1      231    872
5         0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control               0       10    127
5         0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control               1       11    127
5         0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS                   0       57    127
5         0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS                   1       49    127
6         0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control               0        9    134
6         0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control               1       16    134
6         0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS                   0       56    134
6         0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS                   1       53    134
7         0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control               0       14    179
7         0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control               1       13    179
7         0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS                   0       78    179
7         0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS                   1       74    179
2         0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control               0        9    124
2         0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control               1       10    124
2         0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS                   0       46    124
2         0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS                   1       59    124
3         0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control               0       14    132
3         0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control               1       12    132
3         0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS                   0       51    132
3         0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS                   1       55    132
4         0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control               0        9    104
4         0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control               1        6    104
4         0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS                   0       47    104
4         0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS                   1       42    104
8         0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control               0       19    204
8         0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control               1       17    204
8         0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS                   0       86    204
8         0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS                   1       82    204
9         0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control               0       18    191
9         0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control               1       12    191
9         0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS                   0       88    191
9         0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS                   1       73    191
10        0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control               0       17    216
10        0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control               1       20    216
10        0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS                   0       99    216
10        0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS                   1       80    216
11        0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control               0       17    221
11        0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control               1       15    221
11        0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS                   0       81    221
11        0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS                   1      108    221
12        0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control               0       16    156
12        0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control               1       14    156
12        0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS                   0       68    156
12        0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS                   1       58    156
1         0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control               0        9    143
1         0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control               1       13    143
1         0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS                   0       60    143
1         0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS                   1       61    143
8         0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control               0       17     98
8         0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control               1       16     98
8         0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         LNS                   0       18     98
8         0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         LNS                   1       15     98
8         0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Other                 0       16     98
8         0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Other                 1       16     98
7         0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control               0       10     75
7         0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control               1        8     75
7         0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         LNS                   0       17     75
7         0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         LNS                   1       11     75
7         0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Other                 0       19     75
7         0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Other                 1       10     75
9         0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control               0       20    101
9         0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control               1       21    101
9         0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         LNS                   0       16    101
9         0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         LNS                   1       12    101
9         0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Other                 0       19    101
9         0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Other                 1       13    101
10        0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control               0       23    118
10        0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control               1       14    118
10        0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         LNS                   0       22    118
10        0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         LNS                   1       21    118
10        0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Other                 0       22    118
10        0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Other                 1       16    118
11        0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control               0       28    123
11        0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control               1       12    123
11        0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         LNS                   0       21    123
11        0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         LNS                   1       21    123
11        0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Other                 0       24    123
11        0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Other                 1       17    123
12        0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control               0       24    145
12        0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control               1       23    145
12        0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         LNS                   0       30    145
12        0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         LNS                   1       23    145
12        0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Other                 0       24    145
12        0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Other                 1       21    145
4         0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control               0       17     69
4         0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control               1       11     69
4         0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         LNS                   0       10     69
4         0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         LNS                   1       10     69
4         0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Other                 0       16     69
4         0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Other                 1        5     69
1         0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control               0       24    103
1         0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control               1       14    103
1         0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         LNS                   0       13    103
1         0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         LNS                   1       12    103
1         0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Other                 0       18    103
1         0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Other                 1       22    103
2         0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control               0       16     81
2         0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control               1       14     81
2         0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         LNS                   0       12     81
2         0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         LNS                   1       12     81
2         0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Other                 0       11     81
2         0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Other                 1       16     81
3         0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control               0       14     88
3         0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control               1        7     88
3         0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         LNS                   0       22     88
3         0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         LNS                   1       19     88
3         0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Other                 0       14     88
3         0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Other                 1       12     88
5         0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control               0       18     79
5         0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control               1        9     79
5         0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         LNS                   0       13     79
5         0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         LNS                   1       10     79
5         0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Other                 0       18     79
5         0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Other                 1       11     79
6         0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control               0       17     76
6         0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control               1       13     76
6         0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         LNS                   0       12     76
6         0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         LNS                   1        9     76
6         0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Other                 0       14     76
6         0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Other                 1       11     76
7         0-24 months   ki1148112-LCNI-5            MALAWI                         Control               0       15     62
7         0-24 months   ki1148112-LCNI-5            MALAWI                         Control               1       16     62
7         0-24 months   ki1148112-LCNI-5            MALAWI                         LNS                   0       13     62
7         0-24 months   ki1148112-LCNI-5            MALAWI                         LNS                   1       18     62
8         0-24 months   ki1148112-LCNI-5            MALAWI                         Control               0       24     93
8         0-24 months   ki1148112-LCNI-5            MALAWI                         Control               1       24     93
8         0-24 months   ki1148112-LCNI-5            MALAWI                         LNS                   0       23     93
8         0-24 months   ki1148112-LCNI-5            MALAWI                         LNS                   1       22     93
10        0-24 months   ki1148112-LCNI-5            MALAWI                         Control               0       25    135
10        0-24 months   ki1148112-LCNI-5            MALAWI                         Control               1       39    135
10        0-24 months   ki1148112-LCNI-5            MALAWI                         LNS                   0       22    135
10        0-24 months   ki1148112-LCNI-5            MALAWI                         LNS                   1       49    135
9         0-24 months   ki1148112-LCNI-5            MALAWI                         Control               0       19     93
9         0-24 months   ki1148112-LCNI-5            MALAWI                         Control               1       26     93
9         0-24 months   ki1148112-LCNI-5            MALAWI                         LNS                   0       21     93
9         0-24 months   ki1148112-LCNI-5            MALAWI                         LNS                   1       27     93
11        0-24 months   ki1148112-LCNI-5            MALAWI                         Control               0       20    105
11        0-24 months   ki1148112-LCNI-5            MALAWI                         Control               1       31    105
11        0-24 months   ki1148112-LCNI-5            MALAWI                         LNS                   0       20    105
11        0-24 months   ki1148112-LCNI-5            MALAWI                         LNS                   1       34    105
12        0-24 months   ki1148112-LCNI-5            MALAWI                         Control               0       19     95
12        0-24 months   ki1148112-LCNI-5            MALAWI                         Control               1       31     95
12        0-24 months   ki1148112-LCNI-5            MALAWI                         LNS                   0       21     95
12        0-24 months   ki1148112-LCNI-5            MALAWI                         LNS                   1       24     95
1         0-24 months   ki1148112-LCNI-5            MALAWI                         Control               0       14     68
1         0-24 months   ki1148112-LCNI-5            MALAWI                         Control               1       21     68
1         0-24 months   ki1148112-LCNI-5            MALAWI                         LNS                   0       11     68
1         0-24 months   ki1148112-LCNI-5            MALAWI                         LNS                   1       22     68
2         0-24 months   ki1148112-LCNI-5            MALAWI                         Control               0       10     46
2         0-24 months   ki1148112-LCNI-5            MALAWI                         Control               1       11     46
2         0-24 months   ki1148112-LCNI-5            MALAWI                         LNS                   0       16     46
2         0-24 months   ki1148112-LCNI-5            MALAWI                         LNS                   1        9     46
3         0-24 months   ki1148112-LCNI-5            MALAWI                         Control               0        4     26
3         0-24 months   ki1148112-LCNI-5            MALAWI                         Control               1        9     26
3         0-24 months   ki1148112-LCNI-5            MALAWI                         LNS                   0        8     26
3         0-24 months   ki1148112-LCNI-5            MALAWI                         LNS                   1        5     26
4         0-24 months   ki1148112-LCNI-5            MALAWI                         Control               0       10     39
4         0-24 months   ki1148112-LCNI-5            MALAWI                         Control               1        9     39
4         0-24 months   ki1148112-LCNI-5            MALAWI                         LNS                   0        7     39
4         0-24 months   ki1148112-LCNI-5            MALAWI                         LNS                   1       13     39
5         0-24 months   ki1148112-LCNI-5            MALAWI                         Control               0       13     44
5         0-24 months   ki1148112-LCNI-5            MALAWI                         Control               1       10     44
5         0-24 months   ki1148112-LCNI-5            MALAWI                         LNS                   0       11     44
5         0-24 months   ki1148112-LCNI-5            MALAWI                         LNS                   1       10     44
6         0-24 months   ki1148112-LCNI-5            MALAWI                         Control               0        7     34
6         0-24 months   ki1148112-LCNI-5            MALAWI                         Control               1       11     34
6         0-24 months   ki1148112-LCNI-5            MALAWI                         LNS                   0        6     34
6         0-24 months   ki1148112-LCNI-5            MALAWI                         LNS                   1       10     34
12        0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control               0      588   2148
12        0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control               1      461   2148
12        0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Other                 0      638   2148
12        0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Other                 1      461   2148
11        0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control               0      777   2877
11        0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control               1      661   2877
11        0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Other                 0      819   2877
11        0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Other                 1      620   2877
1         0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control               0      477   1704
1         0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control               1      364   1704
1         0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Other                 0      495   1704
1         0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Other                 1      368   1704
10        0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control               0      759   2795
10        0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control               1      619   2795
10        0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Other                 0      880   2795
10        0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Other                 1      537   2795
9         0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control               0      734   2383
9         0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control               1      476   2383
9         0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Other                 0      750   2383
9         0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Other                 1      423   2383
4         0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control               0      413   1375
4         0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control               1      260   1375
4         0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Other                 0      468   1375
4         0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Other                 1      234   1375
6         0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control               0      394   1342
6         0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control               1      270   1342
6         0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Other                 0      432   1342
6         0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Other                 1      246   1342
7         0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control               0      438   1434
7         0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control               1      260   1434
7         0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Other                 0      436   1434
7         0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Other                 1      300   1434
5         0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control               0      400   1283
5         0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control               1      257   1283
5         0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Other                 0      375   1283
5         0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Other                 1      251   1283
8         0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control               0      541   1846
8         0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control               1      375   1846
8         0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Other                 0      579   1846
8         0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Other                 1      351   1846
3         0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control               0      738   2318
3         0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control               1      390   2318
3         0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Other                 0      815   2318
3         0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Other                 1      375   2318
2         0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control               0      391   1428
2         0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control               1      305   1428
2         0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Other                 0      421   1428
2         0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Other                 1      311   1428
10        0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control               0       20    133
10        0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control               1       18    133
10        0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     LNS                   0       21    133
10        0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     LNS                   1       15    133
10        0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     MMN                   0       12    133
10        0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     MMN                   1       12    133
10        0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Other                 0       26    133
10        0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Other                 1        9    133
7         0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control               0       70    537
7         0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control               1       78    537
7         0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     LNS                   0       72    537
7         0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     LNS                   1      100    537
7         0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     MMN                   0       34    537
7         0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     MMN                   1       44    537
7         0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Other                 0       63    537
7         0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Other                 1       76    537
3         0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control               0      135   1022
3         0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control               1      135   1022
3         0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     LNS                   0      172   1022
3         0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     LNS                   1      148   1022
3         0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     MMN                   0       76   1022
3         0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     MMN                   1       84   1022
3         0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Other                 0      151   1022
3         0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Other                 1      121   1022
2         0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control               0      126    916
2         0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control               1      107    916
2         0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     LNS                   0      140    916
2         0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     LNS                   1      113    916
2         0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     MMN                   0       79    916
2         0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     MMN                   1       80    916
2         0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Other                 0      145    916
2         0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Other                 1      126    916
6         0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control               0       68    460
6         0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control               1       55    460
6         0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     LNS                   0       69    460
6         0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     LNS                   1       67    460
6         0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     MMN                   0       35    460
6         0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     MMN                   1       39    460
6         0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Other                 0       57    460
6         0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Other                 1       70    460
5         0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control               0       88    641
5         0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control               1      103    641
5         0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     LNS                   0      100    641
5         0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     LNS                   1       81    641
5         0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     MMN                   0       45    641
5         0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     MMN                   1       50    641
5         0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Other                 0       93    641
5         0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Other                 1       81    641
4         0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control               0       94    773
4         0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control               1      110    773
4         0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     LNS                   0      115    773
4         0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     LNS                   1      131    773
4         0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     MMN                   0       49    773
4         0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     MMN                   1       70    773
4         0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Other                 0      108    773
4         0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Other                 1       96    773
8         0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control               0       66    555
8         0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control               1       69    555
8         0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     LNS                   0       96    555
8         0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     LNS                   1       93    555
8         0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     MMN                   0       43    555
8         0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     MMN                   1       35    555
8         0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Other                 0       70    555
8         0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Other                 1       83    555
9         0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control               0       58    403
9         0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control               1       33    403
9         0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     LNS                   0       66    403
9         0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     LNS                   1       67    403
9         0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     MMN                   0       36    403
9         0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     MMN                   1       27    403
9         0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Other                 0       61    403
9         0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Other                 1       55    403


The following strata were considered:

* brthmon: 1, agecat: 0-24 months, studyid: ki1000107-Serrinha-VitA, country: BRAZIL
* brthmon: 1, agecat: 0-24 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* brthmon: 1, agecat: 0-24 months, studyid: ki1000111-WASH-Kenya, country: KENYA
* brthmon: 1, agecat: 0-24 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* brthmon: 1, agecat: 0-24 months, studyid: ki1000304-EU, country: INDIA
* brthmon: 1, agecat: 0-24 months, studyid: ki1000304-VITAMIN-A, country: INDIA
* brthmon: 1, agecat: 0-24 months, studyid: ki1000304-Vitamin-B12, country: INDIA
* brthmon: 1, agecat: 0-24 months, studyid: ki1000304-ZnMort, country: INDIA
* brthmon: 1, agecat: 0-24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* brthmon: 1, agecat: 0-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* brthmon: 1, agecat: 0-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* brthmon: 1, agecat: 0-24 months, studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO
* brthmon: 1, agecat: 0-24 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* brthmon: 1, agecat: 0-24 months, studyid: ki1112895-iLiNS-Zinc, country: BURKINA FASO
* brthmon: 1, agecat: 0-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* brthmon: 1, agecat: 0-24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* brthmon: 1, agecat: 0-24 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* brthmon: 1, agecat: 0-24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* brthmon: 1, agecat: 0-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* brthmon: 1, agecat: 0-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* brthmon: 1, agecat: 0-6 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* brthmon: 1, agecat: 0-6 months, studyid: ki1000111-WASH-Kenya, country: KENYA
* brthmon: 1, agecat: 0-6 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* brthmon: 1, agecat: 0-6 months, studyid: ki1000304-EU, country: INDIA
* brthmon: 1, agecat: 0-6 months, studyid: ki1000304-VITAMIN-A, country: INDIA
* brthmon: 1, agecat: 0-6 months, studyid: ki1000304-Vitamin-B12, country: INDIA
* brthmon: 1, agecat: 0-6 months, studyid: ki1000304-ZnMort, country: INDIA
* brthmon: 1, agecat: 0-6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* brthmon: 1, agecat: 0-6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* brthmon: 1, agecat: 0-6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* brthmon: 1, agecat: 0-6 months, studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO
* brthmon: 1, agecat: 0-6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* brthmon: 1, agecat: 0-6 months, studyid: ki1119695-PROBIT, country: BELARUS
* brthmon: 1, agecat: 0-6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* brthmon: 1, agecat: 0-6 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* brthmon: 1, agecat: 0-6 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* brthmon: 1, agecat: 0-6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* brthmon: 1, agecat: 0-6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* brthmon: 1, agecat: 6-24 months, studyid: ki1000107-Serrinha-VitA, country: BRAZIL
* brthmon: 1, agecat: 6-24 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* brthmon: 1, agecat: 6-24 months, studyid: ki1000111-WASH-Kenya, country: KENYA
* brthmon: 1, agecat: 6-24 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* brthmon: 1, agecat: 6-24 months, studyid: ki1000304-EU, country: INDIA
* brthmon: 1, agecat: 6-24 months, studyid: ki1000304-VITAMIN-A, country: INDIA
* brthmon: 1, agecat: 6-24 months, studyid: ki1000304-Vitamin-B12, country: INDIA
* brthmon: 1, agecat: 6-24 months, studyid: ki1000304-ZnMort, country: INDIA
* brthmon: 1, agecat: 6-24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* brthmon: 1, agecat: 6-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* brthmon: 1, agecat: 6-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* brthmon: 1, agecat: 6-24 months, studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO
* brthmon: 1, agecat: 6-24 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* brthmon: 1, agecat: 6-24 months, studyid: ki1112895-iLiNS-Zinc, country: BURKINA FASO
* brthmon: 1, agecat: 6-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* brthmon: 1, agecat: 6-24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* brthmon: 1, agecat: 6-24 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* brthmon: 1, agecat: 6-24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* brthmon: 1, agecat: 6-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* brthmon: 1, agecat: 6-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* brthmon: 10, agecat: 0-24 months, studyid: ki1000107-Serrinha-VitA, country: BRAZIL
* brthmon: 10, agecat: 0-24 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* brthmon: 10, agecat: 0-24 months, studyid: ki1000111-WASH-Kenya, country: KENYA
* brthmon: 10, agecat: 0-24 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* brthmon: 10, agecat: 0-24 months, studyid: ki1000304-EU, country: INDIA
* brthmon: 10, agecat: 0-24 months, studyid: ki1000304-VITAMIN-A, country: INDIA
* brthmon: 10, agecat: 0-24 months, studyid: ki1000304-Vitamin-B12, country: INDIA
* brthmon: 10, agecat: 0-24 months, studyid: ki1000304-ZnMort, country: INDIA
* brthmon: 10, agecat: 0-24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* brthmon: 10, agecat: 0-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* brthmon: 10, agecat: 0-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* brthmon: 10, agecat: 0-24 months, studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO
* brthmon: 10, agecat: 0-24 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* brthmon: 10, agecat: 0-24 months, studyid: ki1112895-iLiNS-Zinc, country: BURKINA FASO
* brthmon: 10, agecat: 0-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* brthmon: 10, agecat: 0-24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* brthmon: 10, agecat: 0-24 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* brthmon: 10, agecat: 0-24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* brthmon: 10, agecat: 0-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* brthmon: 10, agecat: 0-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* brthmon: 10, agecat: 0-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* brthmon: 10, agecat: 0-6 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* brthmon: 10, agecat: 0-6 months, studyid: ki1000111-WASH-Kenya, country: KENYA
* brthmon: 10, agecat: 0-6 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* brthmon: 10, agecat: 0-6 months, studyid: ki1000304-VITAMIN-A, country: INDIA
* brthmon: 10, agecat: 0-6 months, studyid: ki1000304-ZnMort, country: INDIA
* brthmon: 10, agecat: 0-6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* brthmon: 10, agecat: 0-6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* brthmon: 10, agecat: 0-6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* brthmon: 10, agecat: 0-6 months, studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO
* brthmon: 10, agecat: 0-6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* brthmon: 10, agecat: 0-6 months, studyid: ki1119695-PROBIT, country: BELARUS
* brthmon: 10, agecat: 0-6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* brthmon: 10, agecat: 0-6 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* brthmon: 10, agecat: 0-6 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* brthmon: 10, agecat: 0-6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* brthmon: 10, agecat: 0-6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* brthmon: 10, agecat: 0-6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* brthmon: 10, agecat: 6-24 months, studyid: ki1000107-Serrinha-VitA, country: BRAZIL
* brthmon: 10, agecat: 6-24 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* brthmon: 10, agecat: 6-24 months, studyid: ki1000111-WASH-Kenya, country: KENYA
* brthmon: 10, agecat: 6-24 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* brthmon: 10, agecat: 6-24 months, studyid: ki1000304-EU, country: INDIA
* brthmon: 10, agecat: 6-24 months, studyid: ki1000304-VITAMIN-A, country: INDIA
* brthmon: 10, agecat: 6-24 months, studyid: ki1000304-Vitamin-B12, country: INDIA
* brthmon: 10, agecat: 6-24 months, studyid: ki1000304-ZnMort, country: INDIA
* brthmon: 10, agecat: 6-24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* brthmon: 10, agecat: 6-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* brthmon: 10, agecat: 6-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* brthmon: 10, agecat: 6-24 months, studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO
* brthmon: 10, agecat: 6-24 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* brthmon: 10, agecat: 6-24 months, studyid: ki1112895-iLiNS-Zinc, country: BURKINA FASO
* brthmon: 10, agecat: 6-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* brthmon: 10, agecat: 6-24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* brthmon: 10, agecat: 6-24 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* brthmon: 10, agecat: 6-24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* brthmon: 10, agecat: 6-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* brthmon: 10, agecat: 6-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* brthmon: 10, agecat: 6-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* brthmon: 11, agecat: 0-24 months, studyid: ki1000107-Serrinha-VitA, country: BRAZIL
* brthmon: 11, agecat: 0-24 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* brthmon: 11, agecat: 0-24 months, studyid: ki1000111-WASH-Kenya, country: KENYA
* brthmon: 11, agecat: 0-24 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* brthmon: 11, agecat: 0-24 months, studyid: ki1000304-EU, country: INDIA
* brthmon: 11, agecat: 0-24 months, studyid: ki1000304-VITAMIN-A, country: INDIA
* brthmon: 11, agecat: 0-24 months, studyid: ki1000304-Vitamin-B12, country: INDIA
* brthmon: 11, agecat: 0-24 months, studyid: ki1000304-ZnMort, country: INDIA
* brthmon: 11, agecat: 0-24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* brthmon: 11, agecat: 0-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* brthmon: 11, agecat: 0-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* brthmon: 11, agecat: 0-24 months, studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO
* brthmon: 11, agecat: 0-24 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* brthmon: 11, agecat: 0-24 months, studyid: ki1112895-iLiNS-Zinc, country: BURKINA FASO
* brthmon: 11, agecat: 0-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* brthmon: 11, agecat: 0-24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* brthmon: 11, agecat: 0-24 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* brthmon: 11, agecat: 0-24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* brthmon: 11, agecat: 0-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* brthmon: 11, agecat: 0-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* brthmon: 11, agecat: 0-6 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* brthmon: 11, agecat: 0-6 months, studyid: ki1000111-WASH-Kenya, country: KENYA
* brthmon: 11, agecat: 0-6 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* brthmon: 11, agecat: 0-6 months, studyid: ki1000304-EU, country: INDIA
* brthmon: 11, agecat: 0-6 months, studyid: ki1000304-VITAMIN-A, country: INDIA
* brthmon: 11, agecat: 0-6 months, studyid: ki1000304-ZnMort, country: INDIA
* brthmon: 11, agecat: 0-6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* brthmon: 11, agecat: 0-6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* brthmon: 11, agecat: 0-6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* brthmon: 11, agecat: 0-6 months, studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO
* brthmon: 11, agecat: 0-6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* brthmon: 11, agecat: 0-6 months, studyid: ki1119695-PROBIT, country: BELARUS
* brthmon: 11, agecat: 0-6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* brthmon: 11, agecat: 0-6 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* brthmon: 11, agecat: 0-6 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* brthmon: 11, agecat: 0-6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* brthmon: 11, agecat: 0-6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* brthmon: 11, agecat: 6-24 months, studyid: ki1000107-Serrinha-VitA, country: BRAZIL
* brthmon: 11, agecat: 6-24 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* brthmon: 11, agecat: 6-24 months, studyid: ki1000111-WASH-Kenya, country: KENYA
* brthmon: 11, agecat: 6-24 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* brthmon: 11, agecat: 6-24 months, studyid: ki1000304-EU, country: INDIA
* brthmon: 11, agecat: 6-24 months, studyid: ki1000304-VITAMIN-A, country: INDIA
* brthmon: 11, agecat: 6-24 months, studyid: ki1000304-Vitamin-B12, country: INDIA
* brthmon: 11, agecat: 6-24 months, studyid: ki1000304-ZnMort, country: INDIA
* brthmon: 11, agecat: 6-24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* brthmon: 11, agecat: 6-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* brthmon: 11, agecat: 6-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* brthmon: 11, agecat: 6-24 months, studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO
* brthmon: 11, agecat: 6-24 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* brthmon: 11, agecat: 6-24 months, studyid: ki1112895-iLiNS-Zinc, country: BURKINA FASO
* brthmon: 11, agecat: 6-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* brthmon: 11, agecat: 6-24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* brthmon: 11, agecat: 6-24 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* brthmon: 11, agecat: 6-24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* brthmon: 11, agecat: 6-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* brthmon: 11, agecat: 6-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* brthmon: 12, agecat: 0-24 months, studyid: ki1000107-Serrinha-VitA, country: BRAZIL
* brthmon: 12, agecat: 0-24 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* brthmon: 12, agecat: 0-24 months, studyid: ki1000111-WASH-Kenya, country: KENYA
* brthmon: 12, agecat: 0-24 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* brthmon: 12, agecat: 0-24 months, studyid: ki1000304-EU, country: INDIA
* brthmon: 12, agecat: 0-24 months, studyid: ki1000304-VITAMIN-A, country: INDIA
* brthmon: 12, agecat: 0-24 months, studyid: ki1000304-Vitamin-B12, country: INDIA
* brthmon: 12, agecat: 0-24 months, studyid: ki1000304-ZnMort, country: INDIA
* brthmon: 12, agecat: 0-24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* brthmon: 12, agecat: 0-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* brthmon: 12, agecat: 0-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* brthmon: 12, agecat: 0-24 months, studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO
* brthmon: 12, agecat: 0-24 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* brthmon: 12, agecat: 0-24 months, studyid: ki1112895-iLiNS-Zinc, country: BURKINA FASO
* brthmon: 12, agecat: 0-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* brthmon: 12, agecat: 0-24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* brthmon: 12, agecat: 0-24 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* brthmon: 12, agecat: 0-24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* brthmon: 12, agecat: 0-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* brthmon: 12, agecat: 0-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* brthmon: 12, agecat: 0-6 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* brthmon: 12, agecat: 0-6 months, studyid: ki1000111-WASH-Kenya, country: KENYA
* brthmon: 12, agecat: 0-6 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* brthmon: 12, agecat: 0-6 months, studyid: ki1000304-VITAMIN-A, country: INDIA
* brthmon: 12, agecat: 0-6 months, studyid: ki1000304-ZnMort, country: INDIA
* brthmon: 12, agecat: 0-6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* brthmon: 12, agecat: 0-6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* brthmon: 12, agecat: 0-6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* brthmon: 12, agecat: 0-6 months, studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO
* brthmon: 12, agecat: 0-6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* brthmon: 12, agecat: 0-6 months, studyid: ki1119695-PROBIT, country: BELARUS
* brthmon: 12, agecat: 0-6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* brthmon: 12, agecat: 0-6 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* brthmon: 12, agecat: 0-6 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* brthmon: 12, agecat: 0-6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* brthmon: 12, agecat: 0-6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* brthmon: 12, agecat: 6-24 months, studyid: ki1000107-Serrinha-VitA, country: BRAZIL
* brthmon: 12, agecat: 6-24 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* brthmon: 12, agecat: 6-24 months, studyid: ki1000111-WASH-Kenya, country: KENYA
* brthmon: 12, agecat: 6-24 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* brthmon: 12, agecat: 6-24 months, studyid: ki1000304-EU, country: INDIA
* brthmon: 12, agecat: 6-24 months, studyid: ki1000304-VITAMIN-A, country: INDIA
* brthmon: 12, agecat: 6-24 months, studyid: ki1000304-Vitamin-B12, country: INDIA
* brthmon: 12, agecat: 6-24 months, studyid: ki1000304-ZnMort, country: INDIA
* brthmon: 12, agecat: 6-24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* brthmon: 12, agecat: 6-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* brthmon: 12, agecat: 6-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* brthmon: 12, agecat: 6-24 months, studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO
* brthmon: 12, agecat: 6-24 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* brthmon: 12, agecat: 6-24 months, studyid: ki1112895-iLiNS-Zinc, country: BURKINA FASO
* brthmon: 12, agecat: 6-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* brthmon: 12, agecat: 6-24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* brthmon: 12, agecat: 6-24 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* brthmon: 12, agecat: 6-24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* brthmon: 12, agecat: 6-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* brthmon: 12, agecat: 6-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* brthmon: 2, agecat: 0-24 months, studyid: ki1000107-Serrinha-VitA, country: BRAZIL
* brthmon: 2, agecat: 0-24 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* brthmon: 2, agecat: 0-24 months, studyid: ki1000111-WASH-Kenya, country: KENYA
* brthmon: 2, agecat: 0-24 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* brthmon: 2, agecat: 0-24 months, studyid: ki1000304-EU, country: INDIA
* brthmon: 2, agecat: 0-24 months, studyid: ki1000304-VITAMIN-A, country: INDIA
* brthmon: 2, agecat: 0-24 months, studyid: ki1000304-Vitamin-B12, country: INDIA
* brthmon: 2, agecat: 0-24 months, studyid: ki1000304-ZnMort, country: INDIA
* brthmon: 2, agecat: 0-24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* brthmon: 2, agecat: 0-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* brthmon: 2, agecat: 0-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* brthmon: 2, agecat: 0-24 months, studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO
* brthmon: 2, agecat: 0-24 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* brthmon: 2, agecat: 0-24 months, studyid: ki1112895-iLiNS-Zinc, country: BURKINA FASO
* brthmon: 2, agecat: 0-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* brthmon: 2, agecat: 0-24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* brthmon: 2, agecat: 0-24 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* brthmon: 2, agecat: 0-24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* brthmon: 2, agecat: 0-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* brthmon: 2, agecat: 0-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* brthmon: 2, agecat: 0-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* brthmon: 2, agecat: 0-6 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* brthmon: 2, agecat: 0-6 months, studyid: ki1000111-WASH-Kenya, country: KENYA
* brthmon: 2, agecat: 0-6 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* brthmon: 2, agecat: 0-6 months, studyid: ki1000304-EU, country: INDIA
* brthmon: 2, agecat: 0-6 months, studyid: ki1000304-VITAMIN-A, country: INDIA
* brthmon: 2, agecat: 0-6 months, studyid: ki1000304-ZnMort, country: INDIA
* brthmon: 2, agecat: 0-6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* brthmon: 2, agecat: 0-6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* brthmon: 2, agecat: 0-6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* brthmon: 2, agecat: 0-6 months, studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO
* brthmon: 2, agecat: 0-6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* brthmon: 2, agecat: 0-6 months, studyid: ki1119695-PROBIT, country: BELARUS
* brthmon: 2, agecat: 0-6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* brthmon: 2, agecat: 0-6 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* brthmon: 2, agecat: 0-6 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* brthmon: 2, agecat: 0-6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* brthmon: 2, agecat: 0-6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* brthmon: 2, agecat: 0-6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* brthmon: 2, agecat: 6-24 months, studyid: ki1000107-Serrinha-VitA, country: BRAZIL
* brthmon: 2, agecat: 6-24 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* brthmon: 2, agecat: 6-24 months, studyid: ki1000111-WASH-Kenya, country: KENYA
* brthmon: 2, agecat: 6-24 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* brthmon: 2, agecat: 6-24 months, studyid: ki1000304-EU, country: INDIA
* brthmon: 2, agecat: 6-24 months, studyid: ki1000304-VITAMIN-A, country: INDIA
* brthmon: 2, agecat: 6-24 months, studyid: ki1000304-Vitamin-B12, country: INDIA
* brthmon: 2, agecat: 6-24 months, studyid: ki1000304-ZnMort, country: INDIA
* brthmon: 2, agecat: 6-24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* brthmon: 2, agecat: 6-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* brthmon: 2, agecat: 6-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* brthmon: 2, agecat: 6-24 months, studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO
* brthmon: 2, agecat: 6-24 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* brthmon: 2, agecat: 6-24 months, studyid: ki1112895-iLiNS-Zinc, country: BURKINA FASO
* brthmon: 2, agecat: 6-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* brthmon: 2, agecat: 6-24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* brthmon: 2, agecat: 6-24 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* brthmon: 2, agecat: 6-24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* brthmon: 2, agecat: 6-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* brthmon: 2, agecat: 6-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* brthmon: 2, agecat: 6-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* brthmon: 3, agecat: 0-24 months, studyid: ki1000107-Serrinha-VitA, country: BRAZIL
* brthmon: 3, agecat: 0-24 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* brthmon: 3, agecat: 0-24 months, studyid: ki1000111-WASH-Kenya, country: KENYA
* brthmon: 3, agecat: 0-24 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* brthmon: 3, agecat: 0-24 months, studyid: ki1000304-EU, country: INDIA
* brthmon: 3, agecat: 0-24 months, studyid: ki1000304-VITAMIN-A, country: INDIA
* brthmon: 3, agecat: 0-24 months, studyid: ki1000304-Vitamin-B12, country: INDIA
* brthmon: 3, agecat: 0-24 months, studyid: ki1000304-ZnMort, country: INDIA
* brthmon: 3, agecat: 0-24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* brthmon: 3, agecat: 0-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* brthmon: 3, agecat: 0-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* brthmon: 3, agecat: 0-24 months, studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO
* brthmon: 3, agecat: 0-24 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* brthmon: 3, agecat: 0-24 months, studyid: ki1112895-iLiNS-Zinc, country: BURKINA FASO
* brthmon: 3, agecat: 0-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* brthmon: 3, agecat: 0-24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* brthmon: 3, agecat: 0-24 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* brthmon: 3, agecat: 0-24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* brthmon: 3, agecat: 0-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* brthmon: 3, agecat: 0-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* brthmon: 3, agecat: 0-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* brthmon: 3, agecat: 0-6 months, studyid: ki1000111-WASH-Kenya, country: KENYA
* brthmon: 3, agecat: 0-6 months, studyid: ki1000304-VITAMIN-A, country: INDIA
* brthmon: 3, agecat: 0-6 months, studyid: ki1000304-ZnMort, country: INDIA
* brthmon: 3, agecat: 0-6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* brthmon: 3, agecat: 0-6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* brthmon: 3, agecat: 0-6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* brthmon: 3, agecat: 0-6 months, studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO
* brthmon: 3, agecat: 0-6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* brthmon: 3, agecat: 0-6 months, studyid: ki1119695-PROBIT, country: BELARUS
* brthmon: 3, agecat: 0-6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* brthmon: 3, agecat: 0-6 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* brthmon: 3, agecat: 0-6 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* brthmon: 3, agecat: 0-6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* brthmon: 3, agecat: 0-6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* brthmon: 3, agecat: 0-6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* brthmon: 3, agecat: 6-24 months, studyid: ki1000107-Serrinha-VitA, country: BRAZIL
* brthmon: 3, agecat: 6-24 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* brthmon: 3, agecat: 6-24 months, studyid: ki1000111-WASH-Kenya, country: KENYA
* brthmon: 3, agecat: 6-24 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* brthmon: 3, agecat: 6-24 months, studyid: ki1000304-EU, country: INDIA
* brthmon: 3, agecat: 6-24 months, studyid: ki1000304-VITAMIN-A, country: INDIA
* brthmon: 3, agecat: 6-24 months, studyid: ki1000304-Vitamin-B12, country: INDIA
* brthmon: 3, agecat: 6-24 months, studyid: ki1000304-ZnMort, country: INDIA
* brthmon: 3, agecat: 6-24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* brthmon: 3, agecat: 6-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* brthmon: 3, agecat: 6-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* brthmon: 3, agecat: 6-24 months, studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO
* brthmon: 3, agecat: 6-24 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* brthmon: 3, agecat: 6-24 months, studyid: ki1112895-iLiNS-Zinc, country: BURKINA FASO
* brthmon: 3, agecat: 6-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* brthmon: 3, agecat: 6-24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* brthmon: 3, agecat: 6-24 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* brthmon: 3, agecat: 6-24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* brthmon: 3, agecat: 6-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* brthmon: 3, agecat: 6-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* brthmon: 3, agecat: 6-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* brthmon: 4, agecat: 0-24 months, studyid: ki1000107-Serrinha-VitA, country: BRAZIL
* brthmon: 4, agecat: 0-24 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* brthmon: 4, agecat: 0-24 months, studyid: ki1000111-WASH-Kenya, country: KENYA
* brthmon: 4, agecat: 0-24 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* brthmon: 4, agecat: 0-24 months, studyid: ki1000304-EU, country: INDIA
* brthmon: 4, agecat: 0-24 months, studyid: ki1000304-VITAMIN-A, country: INDIA
* brthmon: 4, agecat: 0-24 months, studyid: ki1000304-Vitamin-B12, country: INDIA
* brthmon: 4, agecat: 0-24 months, studyid: ki1000304-ZnMort, country: INDIA
* brthmon: 4, agecat: 0-24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* brthmon: 4, agecat: 0-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* brthmon: 4, agecat: 0-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* brthmon: 4, agecat: 0-24 months, studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO
* brthmon: 4, agecat: 0-24 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* brthmon: 4, agecat: 0-24 months, studyid: ki1112895-iLiNS-Zinc, country: BURKINA FASO
* brthmon: 4, agecat: 0-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* brthmon: 4, agecat: 0-24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* brthmon: 4, agecat: 0-24 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* brthmon: 4, agecat: 0-24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* brthmon: 4, agecat: 0-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* brthmon: 4, agecat: 0-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* brthmon: 4, agecat: 0-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* brthmon: 4, agecat: 0-6 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* brthmon: 4, agecat: 0-6 months, studyid: ki1000111-WASH-Kenya, country: KENYA
* brthmon: 4, agecat: 0-6 months, studyid: ki1000304-VITAMIN-A, country: INDIA
* brthmon: 4, agecat: 0-6 months, studyid: ki1000304-ZnMort, country: INDIA
* brthmon: 4, agecat: 0-6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* brthmon: 4, agecat: 0-6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* brthmon: 4, agecat: 0-6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* brthmon: 4, agecat: 0-6 months, studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO
* brthmon: 4, agecat: 0-6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* brthmon: 4, agecat: 0-6 months, studyid: ki1119695-PROBIT, country: BELARUS
* brthmon: 4, agecat: 0-6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* brthmon: 4, agecat: 0-6 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* brthmon: 4, agecat: 0-6 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* brthmon: 4, agecat: 0-6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* brthmon: 4, agecat: 0-6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* brthmon: 4, agecat: 0-6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* brthmon: 4, agecat: 6-24 months, studyid: ki1000107-Serrinha-VitA, country: BRAZIL
* brthmon: 4, agecat: 6-24 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* brthmon: 4, agecat: 6-24 months, studyid: ki1000111-WASH-Kenya, country: KENYA
* brthmon: 4, agecat: 6-24 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* brthmon: 4, agecat: 6-24 months, studyid: ki1000304-EU, country: INDIA
* brthmon: 4, agecat: 6-24 months, studyid: ki1000304-VITAMIN-A, country: INDIA
* brthmon: 4, agecat: 6-24 months, studyid: ki1000304-Vitamin-B12, country: INDIA
* brthmon: 4, agecat: 6-24 months, studyid: ki1000304-ZnMort, country: INDIA
* brthmon: 4, agecat: 6-24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* brthmon: 4, agecat: 6-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* brthmon: 4, agecat: 6-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* brthmon: 4, agecat: 6-24 months, studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO
* brthmon: 4, agecat: 6-24 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* brthmon: 4, agecat: 6-24 months, studyid: ki1112895-iLiNS-Zinc, country: BURKINA FASO
* brthmon: 4, agecat: 6-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* brthmon: 4, agecat: 6-24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* brthmon: 4, agecat: 6-24 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* brthmon: 4, agecat: 6-24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* brthmon: 4, agecat: 6-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* brthmon: 4, agecat: 6-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* brthmon: 4, agecat: 6-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* brthmon: 5, agecat: 0-24 months, studyid: ki1000107-Serrinha-VitA, country: BRAZIL
* brthmon: 5, agecat: 0-24 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* brthmon: 5, agecat: 0-24 months, studyid: ki1000111-WASH-Kenya, country: KENYA
* brthmon: 5, agecat: 0-24 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* brthmon: 5, agecat: 0-24 months, studyid: ki1000304-EU, country: INDIA
* brthmon: 5, agecat: 0-24 months, studyid: ki1000304-VITAMIN-A, country: INDIA
* brthmon: 5, agecat: 0-24 months, studyid: ki1000304-Vitamin-B12, country: INDIA
* brthmon: 5, agecat: 0-24 months, studyid: ki1000304-ZnMort, country: INDIA
* brthmon: 5, agecat: 0-24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* brthmon: 5, agecat: 0-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* brthmon: 5, agecat: 0-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* brthmon: 5, agecat: 0-24 months, studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO
* brthmon: 5, agecat: 0-24 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* brthmon: 5, agecat: 0-24 months, studyid: ki1112895-iLiNS-Zinc, country: BURKINA FASO
* brthmon: 5, agecat: 0-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* brthmon: 5, agecat: 0-24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* brthmon: 5, agecat: 0-24 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* brthmon: 5, agecat: 0-24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* brthmon: 5, agecat: 0-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* brthmon: 5, agecat: 0-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* brthmon: 5, agecat: 0-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* brthmon: 5, agecat: 0-6 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* brthmon: 5, agecat: 0-6 months, studyid: ki1000111-WASH-Kenya, country: KENYA
* brthmon: 5, agecat: 0-6 months, studyid: ki1000304-VITAMIN-A, country: INDIA
* brthmon: 5, agecat: 0-6 months, studyid: ki1000304-ZnMort, country: INDIA
* brthmon: 5, agecat: 0-6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* brthmon: 5, agecat: 0-6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* brthmon: 5, agecat: 0-6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* brthmon: 5, agecat: 0-6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* brthmon: 5, agecat: 0-6 months, studyid: ki1119695-PROBIT, country: BELARUS
* brthmon: 5, agecat: 0-6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* brthmon: 5, agecat: 0-6 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* brthmon: 5, agecat: 0-6 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* brthmon: 5, agecat: 0-6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* brthmon: 5, agecat: 0-6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* brthmon: 5, agecat: 0-6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* brthmon: 5, agecat: 6-24 months, studyid: ki1000107-Serrinha-VitA, country: BRAZIL
* brthmon: 5, agecat: 6-24 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* brthmon: 5, agecat: 6-24 months, studyid: ki1000111-WASH-Kenya, country: KENYA
* brthmon: 5, agecat: 6-24 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* brthmon: 5, agecat: 6-24 months, studyid: ki1000304-EU, country: INDIA
* brthmon: 5, agecat: 6-24 months, studyid: ki1000304-VITAMIN-A, country: INDIA
* brthmon: 5, agecat: 6-24 months, studyid: ki1000304-Vitamin-B12, country: INDIA
* brthmon: 5, agecat: 6-24 months, studyid: ki1000304-ZnMort, country: INDIA
* brthmon: 5, agecat: 6-24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* brthmon: 5, agecat: 6-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* brthmon: 5, agecat: 6-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* brthmon: 5, agecat: 6-24 months, studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO
* brthmon: 5, agecat: 6-24 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* brthmon: 5, agecat: 6-24 months, studyid: ki1112895-iLiNS-Zinc, country: BURKINA FASO
* brthmon: 5, agecat: 6-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* brthmon: 5, agecat: 6-24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* brthmon: 5, agecat: 6-24 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* brthmon: 5, agecat: 6-24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* brthmon: 5, agecat: 6-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* brthmon: 5, agecat: 6-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* brthmon: 5, agecat: 6-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* brthmon: 6, agecat: 0-24 months, studyid: ki1000107-Serrinha-VitA, country: BRAZIL
* brthmon: 6, agecat: 0-24 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* brthmon: 6, agecat: 0-24 months, studyid: ki1000111-WASH-Kenya, country: KENYA
* brthmon: 6, agecat: 0-24 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* brthmon: 6, agecat: 0-24 months, studyid: ki1000304-EU, country: INDIA
* brthmon: 6, agecat: 0-24 months, studyid: ki1000304-VITAMIN-A, country: INDIA
* brthmon: 6, agecat: 0-24 months, studyid: ki1000304-Vitamin-B12, country: INDIA
* brthmon: 6, agecat: 0-24 months, studyid: ki1000304-ZnMort, country: INDIA
* brthmon: 6, agecat: 0-24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* brthmon: 6, agecat: 0-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* brthmon: 6, agecat: 0-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* brthmon: 6, agecat: 0-24 months, studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO
* brthmon: 6, agecat: 0-24 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* brthmon: 6, agecat: 0-24 months, studyid: ki1112895-iLiNS-Zinc, country: BURKINA FASO
* brthmon: 6, agecat: 0-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* brthmon: 6, agecat: 0-24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* brthmon: 6, agecat: 0-24 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* brthmon: 6, agecat: 0-24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* brthmon: 6, agecat: 0-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* brthmon: 6, agecat: 0-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* brthmon: 6, agecat: 0-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* brthmon: 6, agecat: 0-6 months, studyid: ki1000107-Serrinha-VitA, country: BRAZIL
* brthmon: 6, agecat: 0-6 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* brthmon: 6, agecat: 0-6 months, studyid: ki1000111-WASH-Kenya, country: KENYA
* brthmon: 6, agecat: 0-6 months, studyid: ki1000304-VITAMIN-A, country: INDIA
* brthmon: 6, agecat: 0-6 months, studyid: ki1000304-ZnMort, country: INDIA
* brthmon: 6, agecat: 0-6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* brthmon: 6, agecat: 0-6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* brthmon: 6, agecat: 0-6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* brthmon: 6, agecat: 0-6 months, studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO
* brthmon: 6, agecat: 0-6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* brthmon: 6, agecat: 0-6 months, studyid: ki1119695-PROBIT, country: BELARUS
* brthmon: 6, agecat: 0-6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* brthmon: 6, agecat: 0-6 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* brthmon: 6, agecat: 0-6 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* brthmon: 6, agecat: 0-6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* brthmon: 6, agecat: 0-6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* brthmon: 6, agecat: 0-6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* brthmon: 6, agecat: 6-24 months, studyid: ki1000107-Serrinha-VitA, country: BRAZIL
* brthmon: 6, agecat: 6-24 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* brthmon: 6, agecat: 6-24 months, studyid: ki1000111-WASH-Kenya, country: KENYA
* brthmon: 6, agecat: 6-24 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* brthmon: 6, agecat: 6-24 months, studyid: ki1000304-EU, country: INDIA
* brthmon: 6, agecat: 6-24 months, studyid: ki1000304-VITAMIN-A, country: INDIA
* brthmon: 6, agecat: 6-24 months, studyid: ki1000304-Vitamin-B12, country: INDIA
* brthmon: 6, agecat: 6-24 months, studyid: ki1000304-ZnMort, country: INDIA
* brthmon: 6, agecat: 6-24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* brthmon: 6, agecat: 6-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* brthmon: 6, agecat: 6-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* brthmon: 6, agecat: 6-24 months, studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO
* brthmon: 6, agecat: 6-24 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* brthmon: 6, agecat: 6-24 months, studyid: ki1112895-iLiNS-Zinc, country: BURKINA FASO
* brthmon: 6, agecat: 6-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* brthmon: 6, agecat: 6-24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* brthmon: 6, agecat: 6-24 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* brthmon: 6, agecat: 6-24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* brthmon: 6, agecat: 6-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* brthmon: 6, agecat: 6-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* brthmon: 6, agecat: 6-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* brthmon: 7, agecat: 0-24 months, studyid: ki1000107-Serrinha-VitA, country: BRAZIL
* brthmon: 7, agecat: 0-24 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* brthmon: 7, agecat: 0-24 months, studyid: ki1000111-WASH-Kenya, country: KENYA
* brthmon: 7, agecat: 0-24 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* brthmon: 7, agecat: 0-24 months, studyid: ki1000304-EU, country: INDIA
* brthmon: 7, agecat: 0-24 months, studyid: ki1000304-VITAMIN-A, country: INDIA
* brthmon: 7, agecat: 0-24 months, studyid: ki1000304-Vitamin-B12, country: INDIA
* brthmon: 7, agecat: 0-24 months, studyid: ki1000304-ZnMort, country: INDIA
* brthmon: 7, agecat: 0-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* brthmon: 7, agecat: 0-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* brthmon: 7, agecat: 0-24 months, studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO
* brthmon: 7, agecat: 0-24 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* brthmon: 7, agecat: 0-24 months, studyid: ki1112895-iLiNS-Zinc, country: BURKINA FASO
* brthmon: 7, agecat: 0-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* brthmon: 7, agecat: 0-24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* brthmon: 7, agecat: 0-24 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* brthmon: 7, agecat: 0-24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* brthmon: 7, agecat: 0-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* brthmon: 7, agecat: 0-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* brthmon: 7, agecat: 0-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* brthmon: 7, agecat: 0-6 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* brthmon: 7, agecat: 0-6 months, studyid: ki1000111-WASH-Kenya, country: KENYA
* brthmon: 7, agecat: 0-6 months, studyid: ki1000304-VITAMIN-A, country: INDIA
* brthmon: 7, agecat: 0-6 months, studyid: ki1000304-ZnMort, country: INDIA
* brthmon: 7, agecat: 0-6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* brthmon: 7, agecat: 0-6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* brthmon: 7, agecat: 0-6 months, studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO
* brthmon: 7, agecat: 0-6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* brthmon: 7, agecat: 0-6 months, studyid: ki1119695-PROBIT, country: BELARUS
* brthmon: 7, agecat: 0-6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* brthmon: 7, agecat: 0-6 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* brthmon: 7, agecat: 0-6 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* brthmon: 7, agecat: 0-6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* brthmon: 7, agecat: 0-6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* brthmon: 7, agecat: 0-6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* brthmon: 7, agecat: 6-24 months, studyid: ki1000107-Serrinha-VitA, country: BRAZIL
* brthmon: 7, agecat: 6-24 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* brthmon: 7, agecat: 6-24 months, studyid: ki1000111-WASH-Kenya, country: KENYA
* brthmon: 7, agecat: 6-24 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* brthmon: 7, agecat: 6-24 months, studyid: ki1000304-EU, country: INDIA
* brthmon: 7, agecat: 6-24 months, studyid: ki1000304-VITAMIN-A, country: INDIA
* brthmon: 7, agecat: 6-24 months, studyid: ki1000304-Vitamin-B12, country: INDIA
* brthmon: 7, agecat: 6-24 months, studyid: ki1000304-ZnMort, country: INDIA
* brthmon: 7, agecat: 6-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* brthmon: 7, agecat: 6-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* brthmon: 7, agecat: 6-24 months, studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO
* brthmon: 7, agecat: 6-24 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* brthmon: 7, agecat: 6-24 months, studyid: ki1112895-iLiNS-Zinc, country: BURKINA FASO
* brthmon: 7, agecat: 6-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* brthmon: 7, agecat: 6-24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* brthmon: 7, agecat: 6-24 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* brthmon: 7, agecat: 6-24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* brthmon: 7, agecat: 6-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* brthmon: 7, agecat: 6-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* brthmon: 7, agecat: 6-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* brthmon: 8, agecat: 0-24 months, studyid: ki1000107-Serrinha-VitA, country: BRAZIL
* brthmon: 8, agecat: 0-24 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* brthmon: 8, agecat: 0-24 months, studyid: ki1000111-WASH-Kenya, country: KENYA
* brthmon: 8, agecat: 0-24 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* brthmon: 8, agecat: 0-24 months, studyid: ki1000304-EU, country: INDIA
* brthmon: 8, agecat: 0-24 months, studyid: ki1000304-VITAMIN-A, country: INDIA
* brthmon: 8, agecat: 0-24 months, studyid: ki1000304-Vitamin-B12, country: INDIA
* brthmon: 8, agecat: 0-24 months, studyid: ki1000304-ZnMort, country: INDIA
* brthmon: 8, agecat: 0-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* brthmon: 8, agecat: 0-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* brthmon: 8, agecat: 0-24 months, studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO
* brthmon: 8, agecat: 0-24 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* brthmon: 8, agecat: 0-24 months, studyid: ki1112895-iLiNS-Zinc, country: BURKINA FASO
* brthmon: 8, agecat: 0-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* brthmon: 8, agecat: 0-24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* brthmon: 8, agecat: 0-24 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* brthmon: 8, agecat: 0-24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* brthmon: 8, agecat: 0-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* brthmon: 8, agecat: 0-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* brthmon: 8, agecat: 0-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* brthmon: 8, agecat: 0-6 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* brthmon: 8, agecat: 0-6 months, studyid: ki1000111-WASH-Kenya, country: KENYA
* brthmon: 8, agecat: 0-6 months, studyid: ki1000304-VITAMIN-A, country: INDIA
* brthmon: 8, agecat: 0-6 months, studyid: ki1000304-ZnMort, country: INDIA
* brthmon: 8, agecat: 0-6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* brthmon: 8, agecat: 0-6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* brthmon: 8, agecat: 0-6 months, studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO
* brthmon: 8, agecat: 0-6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* brthmon: 8, agecat: 0-6 months, studyid: ki1119695-PROBIT, country: BELARUS
* brthmon: 8, agecat: 0-6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* brthmon: 8, agecat: 0-6 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* brthmon: 8, agecat: 0-6 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* brthmon: 8, agecat: 0-6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* brthmon: 8, agecat: 0-6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* brthmon: 8, agecat: 0-6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* brthmon: 8, agecat: 6-24 months, studyid: ki1000107-Serrinha-VitA, country: BRAZIL
* brthmon: 8, agecat: 6-24 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* brthmon: 8, agecat: 6-24 months, studyid: ki1000111-WASH-Kenya, country: KENYA
* brthmon: 8, agecat: 6-24 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* brthmon: 8, agecat: 6-24 months, studyid: ki1000304-EU, country: INDIA
* brthmon: 8, agecat: 6-24 months, studyid: ki1000304-VITAMIN-A, country: INDIA
* brthmon: 8, agecat: 6-24 months, studyid: ki1000304-Vitamin-B12, country: INDIA
* brthmon: 8, agecat: 6-24 months, studyid: ki1000304-ZnMort, country: INDIA
* brthmon: 8, agecat: 6-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* brthmon: 8, agecat: 6-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* brthmon: 8, agecat: 6-24 months, studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO
* brthmon: 8, agecat: 6-24 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* brthmon: 8, agecat: 6-24 months, studyid: ki1112895-iLiNS-Zinc, country: BURKINA FASO
* brthmon: 8, agecat: 6-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* brthmon: 8, agecat: 6-24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* brthmon: 8, agecat: 6-24 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* brthmon: 8, agecat: 6-24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* brthmon: 8, agecat: 6-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* brthmon: 8, agecat: 6-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* brthmon: 8, agecat: 6-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* brthmon: 9, agecat: 0-24 months, studyid: ki1000107-Serrinha-VitA, country: BRAZIL
* brthmon: 9, agecat: 0-24 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* brthmon: 9, agecat: 0-24 months, studyid: ki1000111-WASH-Kenya, country: KENYA
* brthmon: 9, agecat: 0-24 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* brthmon: 9, agecat: 0-24 months, studyid: ki1000304-EU, country: INDIA
* brthmon: 9, agecat: 0-24 months, studyid: ki1000304-VITAMIN-A, country: INDIA
* brthmon: 9, agecat: 0-24 months, studyid: ki1000304-Vitamin-B12, country: INDIA
* brthmon: 9, agecat: 0-24 months, studyid: ki1000304-ZnMort, country: INDIA
* brthmon: 9, agecat: 0-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* brthmon: 9, agecat: 0-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* brthmon: 9, agecat: 0-24 months, studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO
* brthmon: 9, agecat: 0-24 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* brthmon: 9, agecat: 0-24 months, studyid: ki1112895-iLiNS-Zinc, country: BURKINA FASO
* brthmon: 9, agecat: 0-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* brthmon: 9, agecat: 0-24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* brthmon: 9, agecat: 0-24 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* brthmon: 9, agecat: 0-24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* brthmon: 9, agecat: 0-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* brthmon: 9, agecat: 0-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* brthmon: 9, agecat: 0-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* brthmon: 9, agecat: 0-6 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* brthmon: 9, agecat: 0-6 months, studyid: ki1000111-WASH-Kenya, country: KENYA
* brthmon: 9, agecat: 0-6 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* brthmon: 9, agecat: 0-6 months, studyid: ki1000304-EU, country: INDIA
* brthmon: 9, agecat: 0-6 months, studyid: ki1000304-VITAMIN-A, country: INDIA
* brthmon: 9, agecat: 0-6 months, studyid: ki1000304-ZnMort, country: INDIA
* brthmon: 9, agecat: 0-6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* brthmon: 9, agecat: 0-6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* brthmon: 9, agecat: 0-6 months, studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO
* brthmon: 9, agecat: 0-6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* brthmon: 9, agecat: 0-6 months, studyid: ki1119695-PROBIT, country: BELARUS
* brthmon: 9, agecat: 0-6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* brthmon: 9, agecat: 0-6 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* brthmon: 9, agecat: 0-6 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* brthmon: 9, agecat: 0-6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* brthmon: 9, agecat: 0-6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* brthmon: 9, agecat: 0-6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* brthmon: 9, agecat: 6-24 months, studyid: ki1000107-Serrinha-VitA, country: BRAZIL
* brthmon: 9, agecat: 6-24 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* brthmon: 9, agecat: 6-24 months, studyid: ki1000111-WASH-Kenya, country: KENYA
* brthmon: 9, agecat: 6-24 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* brthmon: 9, agecat: 6-24 months, studyid: ki1000304-EU, country: INDIA
* brthmon: 9, agecat: 6-24 months, studyid: ki1000304-VITAMIN-A, country: INDIA
* brthmon: 9, agecat: 6-24 months, studyid: ki1000304-Vitamin-B12, country: INDIA
* brthmon: 9, agecat: 6-24 months, studyid: ki1000304-ZnMort, country: INDIA
* brthmon: 9, agecat: 6-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* brthmon: 9, agecat: 6-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* brthmon: 9, agecat: 6-24 months, studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO
* brthmon: 9, agecat: 6-24 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* brthmon: 9, agecat: 6-24 months, studyid: ki1112895-iLiNS-Zinc, country: BURKINA FASO
* brthmon: 9, agecat: 6-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* brthmon: 9, agecat: 6-24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* brthmon: 9, agecat: 6-24 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* brthmon: 9, agecat: 6-24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* brthmon: 9, agecat: 6-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* brthmon: 9, agecat: 6-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* brthmon: 9, agecat: 6-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* brthmon: 6, agecat: 0-6 months, studyid: ki1000107-Serrinha-VitA, country: BRAZIL
* brthmon: 5, agecat: 0-6 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* brthmon: 6, agecat: 0-6 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* brthmon: 7, agecat: 0-6 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* brthmon: 8, agecat: 0-6 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* brthmon: 9, agecat: 0-6 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* brthmon: 10, agecat: 0-6 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* brthmon: 12, agecat: 0-6 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* brthmon: 11, agecat: 0-6 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* brthmon: 1, agecat: 0-6 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* brthmon: 2, agecat: 0-6 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* brthmon: 4, agecat: 0-6 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* brthmon: 5, agecat: 0-6 months, studyid: ki1000111-WASH-Kenya, country: KENYA
* brthmon: 11, agecat: 0-6 months, studyid: ki1000111-WASH-Kenya, country: KENYA
* brthmon: 8, agecat: 0-6 months, studyid: ki1000111-WASH-Kenya, country: KENYA
* brthmon: 10, agecat: 0-6 months, studyid: ki1000111-WASH-Kenya, country: KENYA
* brthmon: 7, agecat: 0-6 months, studyid: ki1000111-WASH-Kenya, country: KENYA
* brthmon: 6, agecat: 0-6 months, studyid: ki1000111-WASH-Kenya, country: KENYA
* brthmon: 9, agecat: 0-6 months, studyid: ki1000111-WASH-Kenya, country: KENYA
* brthmon: 12, agecat: 0-6 months, studyid: ki1000111-WASH-Kenya, country: KENYA
* brthmon: 3, agecat: 0-6 months, studyid: ki1000111-WASH-Kenya, country: KENYA
* brthmon: 1, agecat: 0-6 months, studyid: ki1000111-WASH-Kenya, country: KENYA
* brthmon: 4, agecat: 0-6 months, studyid: ki1000111-WASH-Kenya, country: KENYA
* brthmon: 2, agecat: 0-6 months, studyid: ki1000111-WASH-Kenya, country: KENYA
* brthmon: 9, agecat: 0-6 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* brthmon: 2, agecat: 0-6 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* brthmon: 9, agecat: 0-6 months, studyid: ki1000304-EU, country: INDIA
* brthmon: 11, agecat: 0-6 months, studyid: ki1000304-EU, country: INDIA
* brthmon: 1, agecat: 0-6 months, studyid: ki1000304-EU, country: INDIA
* brthmon: 2, agecat: 0-6 months, studyid: ki1000304-EU, country: INDIA
* brthmon: 12, agecat: 0-6 months, studyid: ki1000304-VITAMIN-A, country: INDIA
* brthmon: 5, agecat: 0-6 months, studyid: ki1000304-VITAMIN-A, country: INDIA
* brthmon: 3, agecat: 0-6 months, studyid: ki1000304-VITAMIN-A, country: INDIA
* brthmon: 4, agecat: 0-6 months, studyid: ki1000304-VITAMIN-A, country: INDIA
* brthmon: 8, agecat: 0-6 months, studyid: ki1000304-VITAMIN-A, country: INDIA
* brthmon: 1, agecat: 0-6 months, studyid: ki1000304-VITAMIN-A, country: INDIA
* brthmon: 9, agecat: 0-6 months, studyid: ki1000304-VITAMIN-A, country: INDIA
* brthmon: 10, agecat: 0-6 months, studyid: ki1000304-VITAMIN-A, country: INDIA
* brthmon: 11, agecat: 0-6 months, studyid: ki1000304-VITAMIN-A, country: INDIA
* brthmon: 2, agecat: 0-6 months, studyid: ki1000304-VITAMIN-A, country: INDIA
* brthmon: 1, agecat: 0-6 months, studyid: ki1000304-Vitamin-B12, country: INDIA
* brthmon: 12, agecat: 0-6 months, studyid: ki1000304-ZnMort, country: INDIA
* brthmon: 9, agecat: 0-6 months, studyid: ki1000304-ZnMort, country: INDIA
* brthmon: 2, agecat: 0-6 months, studyid: ki1000304-ZnMort, country: INDIA
* brthmon: 11, agecat: 0-6 months, studyid: ki1000304-ZnMort, country: INDIA
* brthmon: 3, agecat: 0-6 months, studyid: ki1000304-ZnMort, country: INDIA
* brthmon: 4, agecat: 0-6 months, studyid: ki1000304-ZnMort, country: INDIA
* brthmon: 1, agecat: 0-6 months, studyid: ki1000304-ZnMort, country: INDIA
* brthmon: 5, agecat: 0-6 months, studyid: ki1000304-ZnMort, country: INDIA
* brthmon: 6, agecat: 0-6 months, studyid: ki1000304-ZnMort, country: INDIA
* brthmon: 7, agecat: 0-6 months, studyid: ki1000304-ZnMort, country: INDIA
* brthmon: 8, agecat: 0-6 months, studyid: ki1000304-ZnMort, country: INDIA
* brthmon: 2, agecat: 0-6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* brthmon: 5, agecat: 0-6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* brthmon: 6, agecat: 0-6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* brthmon: 12, agecat: 0-6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* brthmon: 2, agecat: 0-6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* brthmon: 11, agecat: 0-6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* brthmon: 1, agecat: 0-6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* brthmon: 3, agecat: 0-6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* brthmon: 4, agecat: 0-6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* brthmon: 7, agecat: 0-6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* brthmon: 7, agecat: 0-6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* brthmon: 8, agecat: 0-6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* brthmon: 9, agecat: 0-6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* brthmon: 11, agecat: 0-6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* brthmon: 12, agecat: 0-6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* brthmon: 1, agecat: 0-6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* brthmon: 2, agecat: 0-6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* brthmon: 3, agecat: 0-6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* brthmon: 5, agecat: 0-6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* brthmon: 6, agecat: 0-6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* brthmon: 1, agecat: 0-6 months, studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO
* brthmon: 11, agecat: 0-6 months, studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO
* brthmon: 12, agecat: 0-6 months, studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO
* brthmon: 8, agecat: 0-6 months, studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO
* brthmon: 10, agecat: 0-6 months, studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO
* brthmon: 2, agecat: 0-6 months, studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO
* brthmon: 7, agecat: 0-6 months, studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO
* brthmon: 6, agecat: 0-6 months, studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO
* brthmon: 4, agecat: 0-6 months, studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO
* brthmon: 9, agecat: 0-6 months, studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO
* brthmon: 3, agecat: 0-6 months, studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO
* brthmon: 11, agecat: 0-6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* brthmon: 12, agecat: 0-6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* brthmon: 1, agecat: 0-6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* brthmon: 2, agecat: 0-6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* brthmon: 5, agecat: 0-6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* brthmon: 6, agecat: 0-6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* brthmon: 8, agecat: 0-6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* brthmon: 10, agecat: 0-6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* brthmon: 3, agecat: 0-6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* brthmon: 4, agecat: 0-6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* brthmon: 7, agecat: 0-6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* brthmon: 9, agecat: 0-6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* brthmon: 6, agecat: 0-6 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* brthmon: 2, agecat: 0-6 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* brthmon: 8, agecat: 0-6 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* brthmon: 5, agecat: 0-6 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* brthmon: 7, agecat: 0-6 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* brthmon: 9, agecat: 0-6 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* brthmon: 11, agecat: 0-6 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* brthmon: 1, agecat: 0-6 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* brthmon: 3, agecat: 0-6 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* brthmon: 4, agecat: 0-6 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* brthmon: 5, agecat: 0-6 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* brthmon: 6, agecat: 0-6 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* brthmon: 10, agecat: 0-6 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* brthmon: 9, agecat: 0-6 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* brthmon: 12, agecat: 0-6 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* brthmon: 2, agecat: 0-6 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* brthmon: 7, agecat: 0-6 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* brthmon: 8, agecat: 0-6 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* brthmon: 8, agecat: 0-6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* brthmon: 12, agecat: 0-6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* brthmon: 2, agecat: 0-6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* brthmon: 3, agecat: 0-6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* brthmon: 4, agecat: 0-6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* brthmon: 5, agecat: 0-6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* brthmon: 6, agecat: 0-6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* brthmon: 7, agecat: 0-6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* brthmon: 12, agecat: 6-24 months, studyid: ki1000107-Serrinha-VitA, country: BRAZIL
* brthmon: 7, agecat: 6-24 months, studyid: ki1000107-Serrinha-VitA, country: BRAZIL
* brthmon: 3, agecat: 6-24 months, studyid: ki1000107-Serrinha-VitA, country: BRAZIL
* brthmon: 10, agecat: 6-24 months, studyid: ki1000107-Serrinha-VitA, country: BRAZIL
* brthmon: 1, agecat: 6-24 months, studyid: ki1000107-Serrinha-VitA, country: BRAZIL
* brthmon: 4, agecat: 6-24 months, studyid: ki1000107-Serrinha-VitA, country: BRAZIL
* brthmon: 5, agecat: 6-24 months, studyid: ki1000107-Serrinha-VitA, country: BRAZIL
* brthmon: 6, agecat: 6-24 months, studyid: ki1000107-Serrinha-VitA, country: BRAZIL
* brthmon: 11, agecat: 6-24 months, studyid: ki1000107-Serrinha-VitA, country: BRAZIL
* brthmon: 9, agecat: 6-24 months, studyid: ki1000107-Serrinha-VitA, country: BRAZIL
* brthmon: 2, agecat: 6-24 months, studyid: ki1000107-Serrinha-VitA, country: BRAZIL
* brthmon: 2, agecat: 6-24 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* brthmon: 3, agecat: 6-24 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* brthmon: 10, agecat: 6-24 months, studyid: ki1000111-WASH-Kenya, country: KENYA
* brthmon: 12, agecat: 6-24 months, studyid: ki1000111-WASH-Kenya, country: KENYA
* brthmon: 11, agecat: 6-24 months, studyid: ki1000111-WASH-Kenya, country: KENYA
* brthmon: 8, agecat: 6-24 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* brthmon: 3, agecat: 6-24 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* brthmon: 5, agecat: 6-24 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* brthmon: 6, agecat: 6-24 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* brthmon: 7, agecat: 6-24 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* brthmon: 12, agecat: 6-24 months, studyid: ki1000304-EU, country: INDIA
* brthmon: 4, agecat: 6-24 months, studyid: ki1000304-EU, country: INDIA
* brthmon: 7, agecat: 6-24 months, studyid: ki1000304-EU, country: INDIA
* brthmon: 11, agecat: 6-24 months, studyid: ki1000304-EU, country: INDIA
* brthmon: 10, agecat: 6-24 months, studyid: ki1000304-EU, country: INDIA
* brthmon: 3, agecat: 6-24 months, studyid: ki1000304-EU, country: INDIA
* brthmon: 9, agecat: 6-24 months, studyid: ki1000304-EU, country: INDIA
* brthmon: 8, agecat: 6-24 months, studyid: ki1000304-EU, country: INDIA
* brthmon: 5, agecat: 6-24 months, studyid: ki1000304-EU, country: INDIA
* brthmon: 1, agecat: 6-24 months, studyid: ki1000304-EU, country: INDIA
* brthmon: 2, agecat: 6-24 months, studyid: ki1000304-EU, country: INDIA
* brthmon: 6, agecat: 6-24 months, studyid: ki1000304-EU, country: INDIA
* brthmon: 5, agecat: 6-24 months, studyid: ki1000304-VITAMIN-A, country: INDIA
* brthmon: 9, agecat: 6-24 months, studyid: ki1000304-VITAMIN-A, country: INDIA
* brthmon: 11, agecat: 6-24 months, studyid: ki1000304-VITAMIN-A, country: INDIA
* brthmon: 2, agecat: 6-24 months, studyid: ki1000304-Vitamin-B12, country: INDIA
* brthmon: 12, agecat: 6-24 months, studyid: ki1000304-Vitamin-B12, country: INDIA
* brthmon: 7, agecat: 6-24 months, studyid: ki1000304-Vitamin-B12, country: INDIA
* brthmon: 8, agecat: 6-24 months, studyid: ki1000304-Vitamin-B12, country: INDIA
* brthmon: 11, agecat: 6-24 months, studyid: ki1000304-Vitamin-B12, country: INDIA
* brthmon: 9, agecat: 6-24 months, studyid: ki1000304-Vitamin-B12, country: INDIA
* brthmon: 10, agecat: 6-24 months, studyid: ki1000304-Vitamin-B12, country: INDIA
* brthmon: 5, agecat: 6-24 months, studyid: ki1000304-Vitamin-B12, country: INDIA
* brthmon: 6, agecat: 6-24 months, studyid: ki1000304-Vitamin-B12, country: INDIA
* brthmon: 3, agecat: 6-24 months, studyid: ki1000304-Vitamin-B12, country: INDIA
* brthmon: 1, agecat: 6-24 months, studyid: ki1000304-Vitamin-B12, country: INDIA
* brthmon: 1, agecat: 6-24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* brthmon: 5, agecat: 6-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* brthmon: 8, agecat: 6-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* brthmon: 9, agecat: 6-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* brthmon: 12, agecat: 6-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* brthmon: 6, agecat: 6-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* brthmon: 10, agecat: 6-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* brthmon: 11, agecat: 6-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* brthmon: 1, agecat: 6-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* brthmon: 2, agecat: 6-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* brthmon: 3, agecat: 6-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* brthmon: 4, agecat: 6-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* brthmon: 7, agecat: 6-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* brthmon: 7, agecat: 6-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* brthmon: 8, agecat: 6-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* brthmon: 12, agecat: 6-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* brthmon: 2, agecat: 6-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* brthmon: 3, agecat: 6-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* brthmon: 5, agecat: 6-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* brthmon: 6, agecat: 6-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* brthmon: 12, agecat: 6-24 months, studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO
* brthmon: 9, agecat: 6-24 months, studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO
* brthmon: 8, agecat: 6-24 months, studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO
* brthmon: 11, agecat: 6-24 months, studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO
* brthmon: 10, agecat: 6-24 months, studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO
* brthmon: 9, agecat: 6-24 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* brthmon: 12, agecat: 6-24 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* brthmon: 1, agecat: 6-24 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* brthmon: 2, agecat: 6-24 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* brthmon: 6, agecat: 6-24 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* brthmon: 10, agecat: 6-24 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* brthmon: 3, agecat: 6-24 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* brthmon: 5, agecat: 6-24 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* brthmon: 7, agecat: 6-24 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* brthmon: 11, agecat: 6-24 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* brthmon: 4, agecat: 6-24 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* brthmon: 7, agecat: 6-24 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* brthmon: 2, agecat: 6-24 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* brthmon: 3, agecat: 6-24 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* brthmon: 6, agecat: 6-24 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* brthmon: 4, agecat: 6-24 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* brthmon: 5, agecat: 6-24 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* brthmon: 9, agecat: 6-24 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* brthmon: 11, agecat: 6-24 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* brthmon: 12, agecat: 6-24 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* brthmon: 1, agecat: 6-24 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* brthmon: 7, agecat: 6-24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* brthmon: 4, agecat: 6-24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* brthmon: 1, agecat: 6-24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* brthmon: 3, agecat: 6-24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* brthmon: 5, agecat: 6-24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* brthmon: 6, agecat: 6-24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* brthmon: 1, agecat: 6-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* brthmon: 2, agecat: 6-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* brthmon: 3, agecat: 6-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* brthmon: 4, agecat: 6-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* brthmon: 5, agecat: 6-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* brthmon: 6, agecat: 6-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* brthmon: 10, agecat: 6-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* brthmon: 12, agecat: 0-24 months, studyid: ki1000107-Serrinha-VitA, country: BRAZIL
* brthmon: 7, agecat: 0-24 months, studyid: ki1000107-Serrinha-VitA, country: BRAZIL
* brthmon: 10, agecat: 0-24 months, studyid: ki1000107-Serrinha-VitA, country: BRAZIL
* brthmon: 8, agecat: 0-24 months, studyid: ki1000107-Serrinha-VitA, country: BRAZIL
* brthmon: 4, agecat: 0-24 months, studyid: ki1000107-Serrinha-VitA, country: BRAZIL
* brthmon: 11, agecat: 0-24 months, studyid: ki1000107-Serrinha-VitA, country: BRAZIL
* brthmon: 8, agecat: 0-24 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* brthmon: 6, agecat: 0-24 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* brthmon: 7, agecat: 0-24 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* brthmon: 5, agecat: 0-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* brthmon: 6, agecat: 0-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* brthmon: 9, agecat: 0-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* brthmon: 12, agecat: 0-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* brthmon: 2, agecat: 0-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* brthmon: 10, agecat: 0-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* brthmon: 11, agecat: 0-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* brthmon: 1, agecat: 0-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* brthmon: 3, agecat: 0-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* brthmon: 4, agecat: 0-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* brthmon: 7, agecat: 0-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* brthmon: 9, agecat: 0-24 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* brthmon: 11, agecat: 0-24 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* brthmon: 12, agecat: 0-24 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* brthmon: 1, agecat: 0-24 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* brthmon: 2, agecat: 0-24 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* brthmon: 5, agecat: 0-24 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* brthmon: 6, agecat: 0-24 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* brthmon: 8, agecat: 0-24 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* brthmon: 10, agecat: 0-24 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* brthmon: 3, agecat: 0-24 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* brthmon: 4, agecat: 0-24 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* brthmon: 7, agecat: 0-24 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* brthmon: 3, agecat: 0-24 months, studyid: ki1148112-LCNI-5, country: MALAWI

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness



```
##          ever_stunted
## tr.x       0
##   Control  0
##   LNS      0
##   MMN      0
##   Other   36
##   Zinc    32
##          ever_stunted
## tr.x       0
##   Control  0
##   LNS      0
##   MMN      0
##   Other   41
##   Zinc    45
##          ever_stunted
## tr.x       0
##   Control  0
##   LNS      0
##   MMN      0
##   Other   41
##   Zinc    48
##          ever_stunted
## tr.x       0
##   Control  0
##   LNS      0
##   MMN      0
##   Other   37
##   Zinc    29
##          ever_stunted
## tr.x       0
##   Control  0
##   LNS      0
##   MMN      0
##   Other   41
##   Zinc    32
##          ever_stunted
## tr.x       0
##   Control  0
##   LNS      0
##   MMN      0
##   Other   27
##   Zinc    35
##          ever_stunted
## tr.x       0
##   Control  8
##   LNS      0
##   MMN      0
##   Other   16
##   Zinc     0
##          ever_stunted
## tr.x       0
##   Control  0
##   LNS      0
##   MMN      0
##   Other   24
##   Zinc    30
##          ever_stunted
## tr.x       0
##   Control  0
##   LNS      0
##   MMN      0
##   Other   23
##   Zinc    29
##          ever_stunted
## tr.x       0
##   Control  0
##   LNS      0
##   MMN      0
##   Other   37
##   Zinc    33
##          ever_stunted
## tr.x       0
##   Control  0
##   LNS      0
##   MMN      0
##   Other   45
##   Zinc    43
##          ever_stunted
## tr.x       0
##   Control 15
##   LNS      0
##   MMN      0
##   Other    7
##   Zinc     0
##          ever_stunted
## tr.x       0
##   Control  0
##   LNS      0
##   MMN      0
##   Other   49
##   Zinc    58
##          ever_stunted
## tr.x      0
##   Control 0
##   LNS     0
##   MMN     0
##   Other   7
##   Zinc    0
##          ever_stunted
## tr.x       0
##   Control  0
##   LNS      0
##   MMN      0
##   Other   35
##   Zinc    36
```




# Results Detail

## Results Plots
![](/tmp/0d194fc8-13ba-4333-ad57-0c7403c660dc/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->


```
## Warning: Removed 413 rows containing missing values (geom_errorbar).
```

![](/tmp/0d194fc8-13ba-4333-ad57-0c7403c660dc/REPORT_files/figure-html/plot_rr-1.png)<!-- -->

![](/tmp/0d194fc8-13ba-4333-ad57-0c7403c660dc/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/0d194fc8-13ba-4333-ad57-0c7403c660dc/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


brthmon   agecat        studyid                     country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
--------  ------------  --------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
1         0-24 months   ki1000107-Serrinha-VitA     BRAZIL                         Control              NA                0.2608696   0.1721016   0.3496376
1         0-24 months   ki1000107-Serrinha-VitA     BRAZIL                         Other                NA                0.2083333   0.1244692   0.2921975
1         0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                0.4038462   0.2702084   0.5374839
1         0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                  NA                0.2307692   0.1281322   0.3334063
1         0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                NA                0.3412698   0.2583113   0.4242284
1         0-24 months   ki1000111-WASH-Kenya        KENYA                          Control              NA                0.2209945   0.1604919   0.2814970
1         0-24 months   ki1000111-WASH-Kenya        KENYA                          LNS                  NA                0.1967213   0.1261170   0.2673256
1         0-24 months   ki1000111-WASH-Kenya        KENYA                          Other                NA                0.2595745   0.2034710   0.3156780
1         0-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Control              NA                0.4810127   0.4453851   0.5166402
1         0-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Other                NA                0.5053191   0.4664303   0.5442080
1         0-24 months   ki1000304-EU                INDIA                          Control              NA                0.5164835   0.4134559   0.6195111
1         0-24 months   ki1000304-EU                INDIA                          Zinc                 NA                0.4545455   0.3224989   0.5865920
1         0-24 months   ki1000304-VITAMIN-A         INDIA                          Control              NA                0.4567901   0.4186135   0.4949667
1         0-24 months   ki1000304-VITAMIN-A         INDIA                          Other                NA                0.3963415   0.3586233   0.4340596
1         0-24 months   ki1000304-Vitamin-B12       INDIA                          Control              NA                0.5806452   0.4971563   0.6641340
1         0-24 months   ki1000304-Vitamin-B12       INDIA                          Other                NA                0.5294118   0.4409698   0.6178537
1         0-24 months   ki1000304-ZnMort            INDIA                          Other                NA                0.5222222   0.4187166   0.6257278
1         0-24 months   ki1000304-ZnMort            INDIA                          Zinc                 NA                0.5641026   0.4537282   0.6744770
1         0-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control              NA                0.6274510   0.5688275   0.6860745
1         0-24 months   ki1000304b-SAS-CompFeed     INDIA                          Other                NA                0.5306122   0.4993057   0.5619188
1         0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              NA                0.3076923   0.1623886   0.4529960
1         0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                NA                0.3095238   0.2103532   0.4086944
1         0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                 NA                0.2105263   0.0805000   0.3405526
1         0-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Control              NA                0.2643678   0.1716301   0.3571055
1         0-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc                 NA                0.3132743   0.2749997   0.3515490
1         0-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Control              NA                0.3888889   0.3512341   0.4265437
1         0-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   LNS                  NA                0.3147410   0.2606889   0.3687932
1         0-24 months   ki1119695-PROBIT            BELARUS                        Control              NA                0.1740000   0.1519447   0.1960553
1         0-24 months   ki1119695-PROBIT            BELARUS                        Other                NA                0.1695568   0.1466637   0.1924499
1         0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                0.3377483   0.3239508   0.3515459
1         0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Other                NA                0.3418014   0.3183691   0.3652337
1         0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                0.5909091   0.5591902   0.6226279
1         0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS                  NA                0.5041322   0.4284866   0.5797778
1         0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control              NA                0.3684211   0.2143004   0.5225417
1         0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         LNS                  NA                0.4800000   0.2832028   0.6767972
1         0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Other                NA                0.5500000   0.3950740   0.7049260
1         0-24 months   ki1148112-LCNI-5            MALAWI                         Control              NA                0.6000000   0.5158419   0.6841581
1         0-24 months   ki1148112-LCNI-5            MALAWI                         LNS                  NA                0.6666667   0.5880333   0.7453000
1         0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                0.4328181   0.4125373   0.4530989
1         0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Other                NA                0.4264195   0.4073698   0.4454692
1         0-6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Control              NA                0.2941176   0.2180964   0.3701389
1         0-6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Other                NA                0.2571429   0.1831580   0.3311277
1         0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Control              NA                0.3488372   0.2922141   0.4054603
1         0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Other                NA                0.2571429   0.2351744   0.2791114
1         0-6 months    ki1119695-PROBIT            BELARUS                        Control              NA                0.0907173   0.0735465   0.1078881
1         0-6 months    ki1119695-PROBIT            BELARUS                        Other                NA                0.0952381   0.0716185   0.1188577
1         0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                0.1703057   0.1578137   0.1827977
1         0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Other                NA                0.1792169   0.1575135   0.2009203
1         0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                0.4666667   0.4243530   0.5089803
1         0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         LNS                  NA                0.3066667   0.2192153   0.3941181
1         0-6 months    ki1148112-LCNI-5            MALAWI                         Control              NA                0.3750000   0.2418057   0.5081943
1         0-6 months    ki1148112-LCNI-5            MALAWI                         LNS                  NA                0.3846154   0.2639651   0.5052657
1         0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                0.2811245   0.2573212   0.3049278
1         0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Other                NA                0.2364991   0.2148056   0.2581926
1         6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                0.2954545   0.1603147   0.4305944
1         6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                  NA                0.1228070   0.0373925   0.2082215
1         6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                NA                0.1923077   0.1163775   0.2682379
1         6-24 months   ki1000111-WASH-Kenya        KENYA                          Control              NA                0.0604027   0.0221074   0.0986980
1         6-24 months   ki1000111-WASH-Kenya        KENYA                          LNS                  NA                0.0476190   0.0068396   0.0883985
1         6-24 months   ki1000111-WASH-Kenya        KENYA                          Other                NA                0.0851064   0.0451738   0.1250390
1         6-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Control              NA                0.3076923   0.2619132   0.3534714
1         6-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Other                NA                0.2959184   0.2489345   0.3429022
1         6-24 months   ki1000304-VITAMIN-A         INDIA                          Control              NA                0.0947368   0.0672456   0.1222280
1         6-24 months   ki1000304-VITAMIN-A         INDIA                          Other                NA                0.0917431   0.0627170   0.1207693
1         6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              NA                0.1666667   0.0327670   0.3005663
1         6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                NA                0.2272727   0.1257598   0.3287856
1         6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                 NA                0.1785714   0.0361359   0.3210069
1         6-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Control              NA                0.0704225   0.0108487   0.1299964
1         6-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc                 NA                0.0800000   0.0541815   0.1058185
1         6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Control              NA                0.1698113   0.1402697   0.1993530
1         6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   LNS                  NA                0.1509434   0.1070168   0.1948700
1         6-24 months   ki1119695-PROBIT            BELARUS                        Control              NA                0.0498961   0.0369380   0.0628541
1         6-24 months   ki1119695-PROBIT            BELARUS                        Other                NA                0.0442656   0.0343078   0.0542234
1         6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                0.1410788   0.1293559   0.1528018
1         6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Other                NA                0.1583710   0.1379783   0.1787638
1         6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                0.2187500   0.1994506   0.2380494
1         6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Other                NA                0.2722117   0.2493871   0.2950364
2         0-24 months   ki1000107-Serrinha-VitA     BRAZIL                         Control              NA                0.2307692   0.1457007   0.3158378
2         0-24 months   ki1000107-Serrinha-VitA     BRAZIL                         Other                NA                0.4166667   0.3210302   0.5123031
2         0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                0.3863636   0.2420513   0.5306760
2         0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                  NA                0.1944444   0.0647652   0.3241237
2         0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                NA                0.3571429   0.2543614   0.4599243
2         0-24 months   ki1000111-WASH-Kenya        KENYA                          Control              NA                0.2215190   0.1567003   0.2863376
2         0-24 months   ki1000111-WASH-Kenya        KENYA                          LNS                  NA                0.1769912   0.1065481   0.2474342
2         0-24 months   ki1000111-WASH-Kenya        KENYA                          Other                NA                0.2654028   0.2057632   0.3250425
2         0-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Control              NA                0.4615385   0.4064863   0.5165906
2         0-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Other                NA                0.5538462   0.4670502   0.6406422
2         0-24 months   ki1000304-EU                INDIA                          Control              NA                0.4179104   0.2993841   0.5364368
2         0-24 months   ki1000304-EU                INDIA                          Zinc                 NA                0.3750000   0.2627709   0.4872291
2         0-24 months   ki1000304-VITAMIN-A         INDIA                          Control              NA                0.5000000   0.4566057   0.5433943
2         0-24 months   ki1000304-VITAMIN-A         INDIA                          Other                NA                0.4765625   0.4332159   0.5199091
2         0-24 months   ki1000304-Vitamin-B12       INDIA                          Control              NA                0.6176471   0.5341290   0.7011652
2         0-24 months   ki1000304-Vitamin-B12       INDIA                          Other                NA                0.5151515   0.4305328   0.5997702
2         0-24 months   ki1000304-ZnMort            INDIA                          Other                NA                0.4246575   0.3108916   0.5384234
2         0-24 months   ki1000304-ZnMort            INDIA                          Zinc                 NA                0.5256410   0.4144571   0.6368249
2         0-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control              NA                0.4500000   0.3601683   0.5398317
2         0-24 months   ki1000304b-SAS-CompFeed     INDIA                          Other                NA                0.5555556   0.4329790   0.6781321
2         0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              NA                0.1250000   0.0222009   0.2277991
2         0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                NA                0.1728395   0.0902483   0.2554308
2         0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                 NA                0.2666667   0.1370714   0.3962619
2         0-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Control              NA                0.2710280   0.1867451   0.3553110
2         0-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc                 NA                0.3315789   0.2929022   0.3702557
2         0-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Control              NA                0.2916667   0.2529733   0.3303601
2         0-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   LNS                  NA                0.2781955   0.1754301   0.3809609
2         0-24 months   ki1119695-PROBIT            BELARUS                        Control              NA                0.1871227   0.1590502   0.2151953
2         0-24 months   ki1119695-PROBIT            BELARUS                        Other                NA                0.1464435   0.1208761   0.1720109
2         0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                0.3789954   0.3634040   0.3945869
2         0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Other                NA                0.3172515   0.2908176   0.3436854
2         0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                0.5263158   0.4917752   0.5608563
2         0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS                  NA                0.5619048   0.4812194   0.6425902
2         0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control              NA                0.4666667   0.2870330   0.6463003
2         0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         LNS                  NA                0.5000000   0.2987157   0.7012843
2         0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Other                NA                0.5925926   0.4061023   0.7790829
2         0-24 months   ki1148112-LCNI-5            MALAWI                         Control              NA                0.5238095   0.4252157   0.6224033
2         0-24 months   ki1148112-LCNI-5            MALAWI                         LNS                  NA                0.3600000   0.2566110   0.4633890
2         0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                0.4382184   0.4161755   0.4602613
2         0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Other                NA                0.4248634   0.4044432   0.4452835
2         0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                0.4592275   0.3809322   0.5375227
2         0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     LNS                  NA                0.4466403   0.3721416   0.5211390
2         0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     MMN                  NA                0.5031447   0.4167562   0.5895331
2         0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Other                NA                0.4649446   0.4013359   0.5285534
2         0-6 months    ki1119695-PROBIT            BELARUS                        Control              NA                0.0750552   0.0591368   0.0909736
2         0-6 months    ki1119695-PROBIT            BELARUS                        Other                NA                0.0653153   0.0502388   0.0803918
2         0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                0.2206897   0.2049917   0.2363876
2         0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Other                NA                0.1565762   0.1315747   0.1815777
2         0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                0.2805556   0.2528069   0.3083042
2         0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Other                NA                0.2187500   0.1950153   0.2424847
2         0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                0.2352941   0.1542183   0.3163699
2         0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     LNS                  NA                0.2404372   0.1754978   0.3053765
2         0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     MMN                  NA                0.3200000   0.2172988   0.4227012
2         0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     Other                NA                0.2872928   0.2196163   0.3549693
2         6-24 months   ki1000111-WASH-Kenya        KENYA                          Control              NA                0.0740741   0.0298421   0.1183061
2         6-24 months   ki1000111-WASH-Kenya        KENYA                          LNS                  NA                0.0510204   0.0074020   0.0946388
2         6-24 months   ki1000111-WASH-Kenya        KENYA                          Other                NA                0.1034483   0.0581421   0.1487544
2         6-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Control              NA                0.5000000   0.4352056   0.5647944
2         6-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Other                NA                0.4000000   0.2935319   0.5064681
2         6-24 months   ki1000304-VITAMIN-A         INDIA                          Control              NA                0.0833333   0.0515233   0.1151434
2         6-24 months   ki1000304-VITAMIN-A         INDIA                          Other                NA                0.0684932   0.0392206   0.0977657
2         6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control              NA                0.1785714   0.0740262   0.2831167
2         6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Other                NA                0.2333333   0.1566173   0.3100494
2         6-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Control              NA                0.1208791   0.0538369   0.1879214
2         6-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc                 NA                0.0870588   0.0602299   0.1138877
2         6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Control              NA                0.2093023   0.1702358   0.2483688
2         6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   LNS                  NA                0.0803571   0.0391035   0.1216108
2         6-24 months   ki1119695-PROBIT            BELARUS                        Control              NA                0.0688935   0.0472832   0.0905038
2         6-24 months   ki1119695-PROBIT            BELARUS                        Other                NA                0.0641026   0.0423031   0.0859020
2         6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                0.1597633   0.1467342   0.1727924
2         6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Other                NA                0.1259124   0.1046685   0.1471563
2         6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control              NA                0.3200000   0.1357646   0.5042354
2         6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         LNS                  NA                0.3684211   0.1498852   0.5869569
2         6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Other                NA                0.4782609   0.2725730   0.6839488
2         6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                0.2321839   0.2092231   0.2551447
2         6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Other                NA                0.2857143   0.2619710   0.3094576
2         6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                0.2944162   0.2201001   0.3687324
2         6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     LNS                  NA                0.2397959   0.1671438   0.3124480
2         6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     MMN                  NA                0.3015873   0.2156613   0.3875133
2         6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Other                NA                0.2311321   0.1745212   0.2877430
3         0-24 months   ki1000107-Serrinha-VitA     BRAZIL                         Control              NA                0.3000000   0.2289046   0.3710954
3         0-24 months   ki1000107-Serrinha-VitA     BRAZIL                         Other                NA                0.3513514   0.2506134   0.4520893
3         0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                0.2909091   0.1705635   0.4112547
3         0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                  NA                0.1951220   0.0735011   0.3167428
3         0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                NA                0.3750000   0.2779038   0.4720962
3         0-24 months   ki1000111-WASH-Kenya        KENYA                          Control              NA                0.2697674   0.2103910   0.3291439
3         0-24 months   ki1000111-WASH-Kenya        KENYA                          LNS                  NA                0.1854839   0.1170139   0.2539538
3         0-24 months   ki1000111-WASH-Kenya        KENYA                          Other                NA                0.2188679   0.1690440   0.2686919
3         0-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Control              NA                0.3333333   0.2494875   0.4171791
3         0-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Other                NA                0.3666667   0.2642217   0.4691116
3         0-24 months   ki1000304-EU                INDIA                          Control              NA                0.5416667   0.4262282   0.6571052
3         0-24 months   ki1000304-EU                INDIA                          Zinc                 NA                0.3829787   0.2844112   0.4815462
3         0-24 months   ki1000304-VITAMIN-A         INDIA                          Control              NA                0.4940476   0.4571793   0.5309159
3         0-24 months   ki1000304-VITAMIN-A         INDIA                          Other                NA                0.3954802   0.3584707   0.4324898
3         0-24 months   ki1000304-Vitamin-B12       INDIA                          Control              NA                0.4047619   0.3263360   0.4831878
3         0-24 months   ki1000304-Vitamin-B12       INDIA                          Other                NA                0.3947368   0.3204508   0.4690229
3         0-24 months   ki1000304-ZnMort            INDIA                          Other                NA                0.5507246   0.4329477   0.6685016
3         0-24 months   ki1000304-ZnMort            INDIA                          Zinc                 NA                0.4800000   0.3665373   0.5934627
3         0-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control              NA                0.4411765   0.3338492   0.5485037
3         0-24 months   ki1000304b-SAS-CompFeed     INDIA                          Other                NA                0.6000000   0.5007580   0.6992420
3         0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              NA                0.2941176   0.1404773   0.4477580
3         0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                NA                0.2195122   0.1296404   0.3093840
3         0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                 NA                0.3023256   0.1646212   0.4400300
3         0-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Control              NA                0.2285714   0.1589671   0.2981758
3         0-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc                 NA                0.3533333   0.3150598   0.3916069
3         0-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Control              NA                0.4081633   0.3443494   0.4719772
3         0-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   LNS                  NA                0.3378378   0.2604280   0.4152477
3         0-24 months   ki1119695-PROBIT            BELARUS                        Control              NA                0.1460870   0.1234213   0.1687526
3         0-24 months   ki1119695-PROBIT            BELARUS                        Other                NA                0.1281139   0.1042238   0.1520040
3         0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                0.3522267   0.3376804   0.3667730
3         0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Other                NA                0.3385621   0.3132005   0.3639237
3         0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                0.4615385   0.4236512   0.4994257
3         0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS                  NA                0.5188679   0.4421955   0.5955403
3         0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control              NA                0.3333333   0.1305586   0.5361081
3         0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         LNS                  NA                0.4634146   0.3099027   0.6169266
3         0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Other                NA                0.4615385   0.2688195   0.6542574
3         0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                0.3457447   0.3284609   0.3630285
3         0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Other                NA                0.3151261   0.2999713   0.3302808
3         0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                0.5000000   0.4300026   0.5699974
3         0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     LNS                  NA                0.4625000   0.3961413   0.5288587
3         0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     MMN                  NA                0.5250000   0.4436883   0.6063117
3         0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Other                NA                0.4448529   0.3740890   0.5156168
3         0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Control              NA                0.1724138   0.0848414   0.2599861
3         0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Other                NA                0.3571429   0.2544790   0.4598067
3         0-6 months    ki1119695-PROBIT            BELARUS                        Control              NA                0.0698925   0.0538185   0.0859664
3         0-6 months    ki1119695-PROBIT            BELARUS                        Other                NA                0.0601093   0.0425187   0.0776999
3         0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                0.1666667   0.1538469   0.1794864
3         0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Other                NA                0.1605351   0.1382491   0.1828212
3         0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                0.2500000   0.2133285   0.2866715
3         0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         LNS                  NA                0.3452381   0.2627192   0.4277570
3         0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                0.2258065   0.2101961   0.2414168
3         0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Other                NA                0.1824561   0.1693731   0.1955392
3         0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                0.2212389   0.1591262   0.2833517
3         0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     LNS                  NA                0.3107143   0.2444178   0.3770108
3         0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     MMN                  NA                0.3153846   0.2359110   0.3948583
3         0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     Other                NA                0.2683983   0.2043120   0.3324845
3         6-24 months   ki1000111-WASH-Kenya        KENYA                          Control              NA                0.0823529   0.0409874   0.1237185
3         6-24 months   ki1000111-WASH-Kenya        KENYA                          LNS                  NA                0.0654206   0.0185221   0.1123190
3         6-24 months   ki1000111-WASH-Kenya        KENYA                          Other                NA                0.0590909   0.0279014   0.0902804
3         6-24 months   ki1000304-VITAMIN-A         INDIA                          Control              NA                0.0612245   0.0394370   0.0830120
3         6-24 months   ki1000304-VITAMIN-A         INDIA                          Other                NA                0.0948276   0.0658599   0.1237952
3         6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control              NA                0.2962963   0.1897754   0.4028172
3         6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Other                NA                0.3448276   0.2378057   0.4518495
3         6-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Control              NA                0.0909091   0.0396396   0.1421785
3         6-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc                 NA                0.0864486   0.0598004   0.1130968
3         6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Control              NA                0.2500000   0.1920041   0.3079959
3         6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   LNS                  NA                0.1280000   0.0570820   0.1989180
3         6-24 months   ki1119695-PROBIT            BELARUS                        Control              NA                0.0482143   0.0295061   0.0669225
3         6-24 months   ki1119695-PROBIT            BELARUS                        Other                NA                0.0541516   0.0433950   0.0649083
3         6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                0.1727749   0.1599181   0.1856316
3         6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Other                NA                0.1188119   0.0992116   0.1384122
3         6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                0.1713287   0.1537494   0.1889079
3         6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Other                NA                0.1879310   0.1690308   0.2068313
3         6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                0.3014354   0.2281187   0.3747521
3         6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     LNS                  NA                0.2610442   0.1971363   0.3249520
3         6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     MMN                  NA                0.2735043   0.1924226   0.3545860
3         6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Other                NA                0.2645740   0.1982967   0.3308513
4         0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                0.3333333   0.2138201   0.4528466
4         0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                  NA                0.3676471   0.2528214   0.4824727
4         0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                NA                0.3593750   0.2760896   0.4426604
4         0-24 months   ki1000111-WASH-Kenya        KENYA                          Control              NA                0.2587719   0.2018788   0.3156651
4         0-24 months   ki1000111-WASH-Kenya        KENYA                          LNS                  NA                0.2229730   0.1558600   0.2900859
4         0-24 months   ki1000111-WASH-Kenya        KENYA                          Other                NA                0.2834646   0.2279963   0.3389328
4         0-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Control              NA                0.5500000   0.4541559   0.6458441
4         0-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Other                NA                0.6538462   0.5493448   0.7583475
4         0-24 months   ki1000304-EU                INDIA                          Control              NA                0.3859649   0.2590497   0.5128801
4         0-24 months   ki1000304-EU                INDIA                          Zinc                 NA                0.3387097   0.2204070   0.4570124
4         0-24 months   ki1000304-VITAMIN-A         INDIA                          Control              NA                0.4152047   0.3774489   0.4529605
4         0-24 months   ki1000304-VITAMIN-A         INDIA                          Other                NA                0.4207317   0.3836878   0.4577756
4         0-24 months   ki1000304-Vitamin-B12       INDIA                          Control              NA                0.5555556   0.4482227   0.6628884
4         0-24 months   ki1000304-Vitamin-B12       INDIA                          Other                NA                0.3333333   0.2233499   0.4433168
4         0-24 months   ki1000304-ZnMort            INDIA                          Other                NA                0.4807692   0.3443712   0.6171673
4         0-24 months   ki1000304-ZnMort            INDIA                          Zinc                 NA                0.4677419   0.3429950   0.5924888
4         0-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control              NA                0.5769231   0.4994407   0.6544055
4         0-24 months   ki1000304b-SAS-CompFeed     INDIA                          Other                NA                0.5555556   0.4471559   0.6639553
4         0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              NA                0.3695652   0.2296776   0.5094528
4         0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                NA                0.2560976   0.1613547   0.3508404
4         0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                 NA                0.4042553   0.2635529   0.5449577
4         0-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Control              NA                0.2689076   0.1891792   0.3486359
4         0-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc                 NA                0.3832335   0.3406274   0.4258396
4         0-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Control              NA                0.4210526   0.3542802   0.4878250
4         0-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   LNS                  NA                0.3859649   0.3007224   0.4712074
4         0-24 months   ki1119695-PROBIT            BELARUS                        Control              NA                0.1231618   0.0992931   0.1470304
4         0-24 months   ki1119695-PROBIT            BELARUS                        Other                NA                0.1196721   0.0978061   0.1415382
4         0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                0.3378378   0.3217679   0.3539078
4         0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Other                NA                0.3275862   0.3005532   0.3546192
4         0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                0.4000000   0.3640694   0.4359306
4         0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS                  NA                0.4719101   0.3827252   0.5610950
4         0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control              NA                0.3928571   0.2106347   0.5750796
4         0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         LNS                  NA                0.5000000   0.2792640   0.7207360
4         0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Other                NA                0.2380952   0.0545960   0.4215945
4         0-24 months   ki1148112-LCNI-5            MALAWI                         Control              NA                0.4736842   0.3628769   0.5844915
4         0-24 months   ki1148112-LCNI-5            MALAWI                         LNS                  NA                0.6500000   0.5414000   0.7586000
4         0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                0.3863299   0.3646518   0.4080079
4         0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Other                NA                0.3333333   0.3121885   0.3544782
4         0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                0.5392157   0.4574525   0.6209789
4         0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     LNS                  NA                0.5325203   0.4637581   0.6012825
4         0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     MMN                  NA                0.5882353   0.4903209   0.6861497
4         0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Other                NA                0.4705882   0.3925292   0.5486472
4         0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Control              NA                0.2083333   0.1134151   0.3032516
4         0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Other                NA                0.2285714   0.1955215   0.2616214
4         0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              NA                0.1086957   0.0184842   0.1989071
4         0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                NA                0.0641026   0.0095863   0.1186188
4         0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                 NA                0.1276596   0.0319749   0.2233443
4         0-6 months    ki1119695-PROBIT            BELARUS                        Control              NA                0.0546139   0.0385018   0.0707261
4         0-6 months    ki1119695-PROBIT            BELARUS                        Other                NA                0.0630324   0.0511920   0.0748728
4         0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                0.1875000   0.1721346   0.2028654
4         0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Other                NA                0.1896907   0.1640698   0.2153116
4         0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                0.4615385   0.4183118   0.5047651
4         0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         LNS                  NA                0.3043478   0.2124290   0.3962666
4         0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                0.2004175   0.1800502   0.2207849
4         0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Other                NA                0.1666667   0.1468273   0.1865061
4         0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                0.2458101   0.1764803   0.3151398
4         0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     LNS                  NA                0.2558140   0.1944471   0.3171808
4         0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     MMN                  NA                0.3039216   0.2046046   0.4032385
4         0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     Other                NA                0.2142857   0.1485457   0.2800258
4         6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                0.2307692   0.1159879   0.3455506
4         6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                  NA                0.2586207   0.1456688   0.3715726
4         6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                NA                0.2075472   0.1301637   0.2849306
4         6-24 months   ki1000111-WASH-Kenya        KENYA                          Control              NA                0.0505618   0.0183421   0.0827815
4         6-24 months   ki1000111-WASH-Kenya        KENYA                          LNS                  NA                0.0409836   0.0057688   0.0761984
4         6-24 months   ki1000111-WASH-Kenya        KENYA                          Other                NA                0.0615385   0.0277747   0.0953023
4         6-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Control              NA                0.3571429   0.2419173   0.4723684
4         6-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Other                NA                0.4117647   0.2813486   0.5421808
4         6-24 months   ki1000304-VITAMIN-A         INDIA                          Control              NA                0.0810811   0.0550465   0.1071157
4         6-24 months   ki1000304-VITAMIN-A         INDIA                          Other                NA                0.0849057   0.0589253   0.1108860
4         6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control              NA                0.3529412   0.2085287   0.4973537
4         6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Other                NA                0.2500000   0.1809803   0.3190197
4         6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              NA                0.3225806   0.1573924   0.4877689
4         6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                NA                0.1791045   0.0869382   0.2712707
4         6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                 NA                0.3636364   0.1988803   0.5283924
4         6-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Control              NA                0.1274510   0.0626657   0.1922362
4         6-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc                 NA                0.1517615   0.1151147   0.1884083
4         6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Control              NA                0.2580645   0.1896266   0.3265025
4         6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   LNS                  NA                0.1503759   0.1137805   0.1869713
4         6-24 months   ki1119695-PROBIT            BELARUS                        Control              NA                0.0415094   0.0314568   0.0515620
4         6-24 months   ki1119695-PROBIT            BELARUS                        Other                NA                0.0306644   0.0209394   0.0403894
4         6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                0.1301775   0.1172748   0.1430802
4         6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Other                NA                0.1189516   0.0976859   0.1402173
4         6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                0.1637555   0.1445474   0.1829635
4         6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Other                NA                0.1608961   0.1422044   0.1795879
4         6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                0.3333333   0.2526180   0.4140487
4         6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     LNS                  NA                0.3172043   0.2454043   0.3890043
4         6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     MMN                  NA                0.3448276   0.2292961   0.4603590
4         6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Other                NA                0.2804878   0.2017176   0.3592580
5         0-24 months   ki1000107-Serrinha-VitA     BRAZIL                         Control              NA                0.2916667   0.2052404   0.3780930
5         0-24 months   ki1000107-Serrinha-VitA     BRAZIL                         Other                NA                0.4444444   0.3442295   0.5446594
5         0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                0.3814433   0.2846479   0.4782387
5         0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                  NA                0.3614458   0.2579513   0.4649403
5         0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                NA                0.4315789   0.3610570   0.5021009
5         0-24 months   ki1000111-WASH-Kenya        KENYA                          Control              NA                0.2211055   0.1633963   0.2788148
5         0-24 months   ki1000111-WASH-Kenya        KENYA                          LNS                  NA                0.2542373   0.1756030   0.3328715
5         0-24 months   ki1000111-WASH-Kenya        KENYA                          Other                NA                0.2540323   0.1998058   0.3082587
5         0-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Control              NA                0.4285714   0.3317855   0.5253573
5         0-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Other                NA                0.5000000   0.3719643   0.6280357
5         0-24 months   ki1000304-EU                INDIA                          Control              NA                0.4181818   0.2872757   0.5490880
5         0-24 months   ki1000304-EU                INDIA                          Zinc                 NA                0.4461538   0.3248023   0.5675054
5         0-24 months   ki1000304-VITAMIN-A         INDIA                          Control              NA                0.4294118   0.3918206   0.4670030
5         0-24 months   ki1000304-VITAMIN-A         INDIA                          Other                NA                0.4251497   0.3879388   0.4623606
5         0-24 months   ki1000304-Vitamin-B12       INDIA                          Control              NA                0.5333333   0.4527951   0.6138716
5         0-24 months   ki1000304-Vitamin-B12       INDIA                          Other                NA                0.4594595   0.3701130   0.5488059
5         0-24 months   ki1000304-ZnMort            INDIA                          Other                NA                0.5555556   0.4323641   0.6787470
5         0-24 months   ki1000304-ZnMort            INDIA                          Zinc                 NA                0.4920635   0.3681201   0.6160069
5         0-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control              NA                0.7073171   0.6784846   0.7361495
5         0-24 months   ki1000304b-SAS-CompFeed     INDIA                          Other                NA                0.5000000   0.4682089   0.5317911
5         0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              NA                0.2093023   0.0873550   0.3312497
5         0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                NA                0.1702128   0.0940172   0.2464083
5         0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                 NA                0.2285714   0.0890506   0.3680923
5         0-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Control              NA                0.1840000   0.1160203   0.2519797
5         0-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc                 NA                0.3780718   0.3367186   0.4194251
5         0-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Control              NA                0.3448276   0.2891489   0.4005063
5         0-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   LNS                  NA                0.3375000   0.2763553   0.3986447
5         0-24 months   ki1119695-PROBIT            BELARUS                        Control              NA                0.1153846   0.0933858   0.1373834
5         0-24 months   ki1119695-PROBIT            BELARUS                        Other                NA                0.0967742   0.0792688   0.1142796
5         0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                0.3427230   0.3271448   0.3583012
5         0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Other                NA                0.3505311   0.3229846   0.3780776
5         0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                0.5238095   0.4883488   0.5592703
5         0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS                  NA                0.4622642   0.3827319   0.5417964
5         0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control              NA                0.3333333   0.1543856   0.5122811
5         0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         LNS                  NA                0.4347826   0.2308934   0.6386718
5         0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Other                NA                0.3793103   0.2015848   0.5570359
5         0-24 months   ki1148112-LCNI-5            MALAWI                         Control              NA                0.4347826   0.3276565   0.5419087
5         0-24 months   ki1148112-LCNI-5            MALAWI                         LNS                  NA                0.4761905   0.3730630   0.5793179
5         0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                0.3911720   0.3689532   0.4133908
5         0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Other                NA                0.4009585   0.3785126   0.4234043
5         0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                0.5392670   0.4618340   0.6167000
5         0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     LNS                  NA                0.4475138   0.3612367   0.5337910
5         0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     MMN                  NA                0.5263158   0.4050194   0.6476122
5         0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Other                NA                0.4655172   0.3860421   0.5449924
5         0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Control              NA                0.2857143   0.2279521   0.3434764
5         0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Other                NA                0.2244898   0.1640779   0.2849017
5         0-6 months    ki1119695-PROBIT            BELARUS                        Control              NA                0.0548885   0.0353490   0.0744280
5         0-6 months    ki1119695-PROBIT            BELARUS                        Other                NA                0.0497238   0.0374775   0.0619700
5         0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                0.1860465   0.1719082   0.2001848
5         0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Other                NA                0.2089552   0.1828798   0.2350306
5         0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                0.1990212   0.1806470   0.2173954
5         0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Other                NA                0.1872852   0.1681745   0.2063959
5         0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                0.2805755   0.2055591   0.3555920
5         0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     LNS                  NA                0.2364865   0.1653498   0.3076232
5         0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     MMN                  NA                0.2638889   0.1492372   0.3785405
5         0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     Other                NA                0.1654135   0.0939274   0.2368996
5         6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                0.1923077   0.1046945   0.2799209
5         6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                  NA                0.1818182   0.0886072   0.2750292
5         6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                NA                0.2517007   0.1814231   0.3219783
5         6-24 months   ki1000111-WASH-Kenya        KENYA                          Control              NA                0.0613497   0.0244692   0.0982302
5         6-24 months   ki1000111-WASH-Kenya        KENYA                          LNS                  NA                0.0752688   0.0215896   0.1289480
5         6-24 months   ki1000111-WASH-Kenya        KENYA                          Other                NA                0.0466321   0.0168520   0.0764122
5         6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control              NA                0.3750000   0.2597971   0.4902029
5         6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Other                NA                0.2682927   0.2500378   0.2865476
5         6-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Control              NA                0.0810811   0.0302508   0.1319113
5         6-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc                 NA                0.1424870   0.1075811   0.1773930
5         6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Control              NA                0.1458333   0.1198131   0.1718536
5         6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   LNS                  NA                0.1268657   0.0714480   0.1822834
5         6-24 months   ki1119695-PROBIT            BELARUS                        Control              NA                0.0444444   0.0309898   0.0578991
5         6-24 months   ki1119695-PROBIT            BELARUS                        Other                NA                0.0361011   0.0258230   0.0463791
5         6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                0.1151515   0.1029660   0.1273371
5         6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Other                NA                0.1555556   0.1315913   0.1795198
5         6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                0.1462882   0.1274967   0.1650797
5         6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Other                NA                0.2004454   0.1792538   0.2216371
5         6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                0.3466667   0.2647900   0.4285434
5         6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     LNS                  NA                0.2770270   0.1944072   0.3596469
5         6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     MMN                  NA                0.3134328   0.1823483   0.4445174
5         6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Other                NA                0.2978723   0.2145202   0.3812245
6         0-24 months   ki1000107-Serrinha-VitA     BRAZIL                         Control              NA                0.3478261   0.2494273   0.4462248
6         0-24 months   ki1000107-Serrinha-VitA     BRAZIL                         Other                NA                0.3478261   0.2494273   0.4462248
6         0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                0.2500000   0.1572805   0.3427195
6         0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                  NA                0.3451327   0.2573639   0.4329016
6         0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                NA                0.4473684   0.3765765   0.5181603
6         0-24 months   ki1000111-WASH-Kenya        KENYA                          Control              NA                0.2269939   0.1626213   0.2913665
6         0-24 months   ki1000111-WASH-Kenya        KENYA                          LNS                  NA                0.2372881   0.1604506   0.3141257
6         0-24 months   ki1000111-WASH-Kenya        KENYA                          Other                NA                0.2941176   0.2315272   0.3567081
6         0-24 months   ki1000304-EU                INDIA                          Control              NA                0.5647059   0.4589596   0.6704522
6         0-24 months   ki1000304-EU                INDIA                          Zinc                 NA                0.4852941   0.3661151   0.6044731
6         0-24 months   ki1000304-VITAMIN-A         INDIA                          Control              NA                0.4203822   0.3808308   0.4599335
6         0-24 months   ki1000304-VITAMIN-A         INDIA                          Other                NA                0.4666667   0.4275946   0.5057388
6         0-24 months   ki1000304-Vitamin-B12       INDIA                          Control              NA                0.4666667   0.3795802   0.5537531
6         0-24 months   ki1000304-Vitamin-B12       INDIA                          Other                NA                0.5000000   0.4098569   0.5901431
6         0-24 months   ki1000304-ZnMort            INDIA                          Other                NA                0.4324324   0.3191735   0.5456913
6         0-24 months   ki1000304-ZnMort            INDIA                          Zinc                 NA                0.5405405   0.4266095   0.6544716
6         0-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control              NA                0.6400000   0.6002702   0.6797298
6         0-24 months   ki1000304b-SAS-CompFeed     INDIA                          Other                NA                0.4905660   0.4165245   0.5646076
6         0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              NA                0.2250000   0.0951860   0.3548140
6         0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                NA                0.2162162   0.1221278   0.3103046
6         0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                 NA                0.1956522   0.0806530   0.3106514
6         0-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Control              NA                0.3191489   0.2421490   0.3961489
6         0-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc                 NA                0.4084778   0.3661561   0.4507996
6         0-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Control              NA                0.3478261   0.2823044   0.4133478
6         0-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   LNS                  NA                0.3219178   0.2513049   0.3925307
6         0-24 months   ki1119695-PROBIT            BELARUS                        Control              NA                0.1292407   0.0995988   0.1588826
6         0-24 months   ki1119695-PROBIT            BELARUS                        Other                NA                0.0910653   0.0686454   0.1134852
6         0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                0.3500000   0.3349844   0.3650156
6         0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Other                NA                0.3765517   0.3500406   0.4030628
6         0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                0.6400000   0.6047644   0.6752356
6         0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS                  NA                0.4862385   0.4096280   0.5628491
6         0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control              NA                0.4333333   0.2548332   0.6118335
6         0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         LNS                  NA                0.4285714   0.2155088   0.6416340
6         0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Other                NA                0.4400000   0.2441270   0.6358730
6         0-24 months   ki1148112-LCNI-5            MALAWI                         Control              NA                0.6111111   0.4900901   0.7321321
6         0-24 months   ki1148112-LCNI-5            MALAWI                         LNS                  NA                0.6250000   0.5116902   0.7383098
6         0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                0.4066265   0.3842186   0.4290345
6         0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Other                NA                0.3628319   0.3409489   0.3847148
6         0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                0.4471545   0.3454922   0.5488167
6         0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     LNS                  NA                0.4926471   0.4036994   0.5815947
6         0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     MMN                  NA                0.5270270   0.4142349   0.6398192
6         0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Other                NA                0.5511811   0.4569637   0.6453985
6         0-6 months    ki1000304-VITAMIN-A         INDIA                          Control              NA                0.3529412   0.2341009   0.4717814
6         0-6 months    ki1000304-VITAMIN-A         INDIA                          Other                NA                0.6875000   0.5756754   0.7993246
6         0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Control              NA                0.3695652   0.3187809   0.4203496
6         0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Other                NA                0.3181818   0.2668733   0.3694903
6         0-6 months    ki1119695-PROBIT            BELARUS                        Control              NA                0.0594059   0.0370614   0.0817505
6         0-6 months    ki1119695-PROBIT            BELARUS                        Other                NA                0.0371025   0.0288904   0.0453146
6         0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                0.2642487   0.2491941   0.2793033
6         0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Other                NA                0.2628099   0.2362023   0.2894175
6         0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                0.1819646   0.1654210   0.1985082
6         0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Other                NA                0.1661392   0.1489827   0.1832957
6         0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                0.2254902   0.1343713   0.3166090
6         0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     LNS                  NA                0.1880342   0.1082592   0.2678092
6         0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     MMN                  NA                0.1562500   0.0662521   0.2462479
6         0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     Other                NA                0.2621359   0.1661448   0.3581270
6         6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                0.2000000   0.1122100   0.2877900
6         6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                  NA                0.2043011   0.1222285   0.2863737
6         6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                NA                0.2671233   0.1952405   0.3390061
6         6-24 months   ki1000111-WASH-Kenya        KENYA                          Control              NA                0.1014493   0.0510124   0.1518861
6         6-24 months   ki1000111-WASH-Kenya        KENYA                          LNS                  NA                0.0816327   0.0273553   0.1359100
6         6-24 months   ki1000111-WASH-Kenya        KENYA                          Other                NA                0.1097561   0.0618558   0.1576564
6         6-24 months   ki1000304-VITAMIN-A         INDIA                          Control              NA                0.0800000   0.0517917   0.1082083
6         6-24 months   ki1000304-VITAMIN-A         INDIA                          Other                NA                0.0674157   0.0428201   0.0920114
6         6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control              NA                0.4062500   0.3489543   0.4635457
6         6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Other                NA                0.3250000   0.2395681   0.4104319
6         6-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Control              NA                0.1465517   0.0821252   0.2109782
6         6-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc                 NA                0.1239437   0.0896295   0.1582578
6         6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Control              NA                0.2439024   0.1763254   0.3114795
6         6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   LNS                  NA                0.1304348   0.0794594   0.1814101
6         6-24 months   ki1119695-PROBIT            BELARUS                        Control              NA                0.0316140   0.0202608   0.0429671
6         6-24 months   ki1119695-PROBIT            BELARUS                        Other                NA                0.0245614   0.0163523   0.0327705
6         6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                0.0860215   0.0761660   0.0958770
6         6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Other                NA                0.1530435   0.1307939   0.1752930
6         6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                0.1806723   0.1599985   0.2013460
6         6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Other                NA                0.1637427   0.1455666   0.1819188
6         6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                0.2959184   0.1909199   0.4009168
6         6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     LNS                  NA                0.2946429   0.2020277   0.3872580
6         6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     MMN                  NA                0.3666667   0.2419185   0.4914148
6         6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Other                NA                0.3673469   0.2655090   0.4691849
7         0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                0.5254237   0.4352383   0.6156091
7         0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                  NA                0.3984375   0.3135420   0.4833330
7         0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                NA                0.4222222   0.3632512   0.4811932
7         0-24 months   ki1000111-WASH-Kenya        KENYA                          Control              NA                0.3059701   0.2278560   0.3840843
7         0-24 months   ki1000111-WASH-Kenya        KENYA                          LNS                  NA                0.2187500   0.1359582   0.3015418
7         0-24 months   ki1000111-WASH-Kenya        KENYA                          Other                NA                0.3150000   0.2505476   0.3794524
7         0-24 months   ki1000304-EU                INDIA                          Control              NA                0.4597701   0.3547535   0.5647867
7         0-24 months   ki1000304-EU                INDIA                          Zinc                 NA                0.4193548   0.3187862   0.5199235
7         0-24 months   ki1000304-VITAMIN-A         INDIA                          Control              NA                0.4195122   0.3851919   0.4538325
7         0-24 months   ki1000304-VITAMIN-A         INDIA                          Other                NA                0.4070352   0.3733715   0.4406989
7         0-24 months   ki1000304-Vitamin-B12       INDIA                          Control              NA                0.4444444   0.3632849   0.5256039
7         0-24 months   ki1000304-Vitamin-B12       INDIA                          Other                NA                0.3333333   0.2644672   0.4021994
7         0-24 months   ki1000304-ZnMort            INDIA                          Other                NA                0.4456522   0.3438072   0.5474972
7         0-24 months   ki1000304-ZnMort            INDIA                          Zinc                 NA                0.4777778   0.3742960   0.5812596
7         0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              NA                0.2448980   0.1242008   0.3655951
7         0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                NA                0.2844037   0.1995075   0.3692998
7         0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                 NA                0.2244898   0.1073799   0.3415997
7         0-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Control              NA                0.3565217   0.2689038   0.4441397
7         0-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc                 NA                0.3303769   0.2869295   0.3738243
7         0-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Control              NA                0.3928571   0.3254919   0.4602223
7         0-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   LNS                  NA                0.3571429   0.2786305   0.4356552
7         0-24 months   ki1119695-PROBIT            BELARUS                        Control              NA                0.1200528   0.1034691   0.1366364
7         0-24 months   ki1119695-PROBIT            BELARUS                        Other                NA                0.0966952   0.0835680   0.1098224
7         0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                0.3015873   0.2866428   0.3165318
7         0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Other                NA                0.3338068   0.3081412   0.3594724
7         0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                0.4814815   0.4529736   0.5099894
7         0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS                  NA                0.4868421   0.4191788   0.5545054
7         0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control              NA                0.4444444   0.2133449   0.6755440
7         0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         LNS                  NA                0.3928571   0.2107418   0.5749725
7         0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Other                NA                0.3448276   0.1706699   0.5189853
7         0-24 months   ki1148112-LCNI-5            MALAWI                         Control              NA                0.5161290   0.4274518   0.6048063
7         0-24 months   ki1148112-LCNI-5            MALAWI                         LNS                  NA                0.5806452   0.4930834   0.6682069
7         0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                0.3724928   0.3518493   0.3931364
7         0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Other                NA                0.4076087   0.3872625   0.4279549
7         0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                0.5270270   0.4373142   0.6167398
7         0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     LNS                  NA                0.5813953   0.5033658   0.6594249
7         0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     MMN                  NA                0.5641026   0.4497371   0.6784680
7         0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Other                NA                0.5467626   0.4519292   0.6415960
7         0-6 months    ki1000304-VITAMIN-A         INDIA                          Control              NA                0.2380952   0.1459088   0.3302816
7         0-6 months    ki1000304-VITAMIN-A         INDIA                          Other                NA                0.4761905   0.3680923   0.5842886
7         0-6 months    ki1119695-PROBIT            BELARUS                        Control              NA                0.0639148   0.0505825   0.0772471
7         0-6 months    ki1119695-PROBIT            BELARUS                        Other                NA                0.0540881   0.0428006   0.0653755
7         0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                0.1515152   0.1380155   0.1650148
7         0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Other                NA                0.2000000   0.1752442   0.2247558
7         0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                0.2029851   0.1847559   0.2212142
7         0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Other                NA                0.1889205   0.1719197   0.2059212
7         0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                0.1760563   0.1008255   0.2512872
7         0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     LNS                  NA                0.2682927   0.1934577   0.3431277
7         0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     MMN                  NA                0.2432432   0.1355809   0.3509056
7         0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     Other                NA                0.2814815   0.1958061   0.3671569
7         6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                0.3000000   0.1994486   0.4005514
7         6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                  NA                0.1789474   0.1017665   0.2561282
7         6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                NA                0.2167488   0.1599938   0.2735038
7         6-24 months   ki1000111-WASH-Kenya        KENYA                          Control              NA                0.0800000   0.0267460   0.1332540
7         6-24 months   ki1000111-WASH-Kenya        KENYA                          LNS                  NA                0.0759494   0.0174421   0.1344566
7         6-24 months   ki1000111-WASH-Kenya        KENYA                          Other                NA                0.0878378   0.0421649   0.1335108
7         6-24 months   ki1000304-VITAMIN-A         INDIA                          Control              NA                0.0757576   0.0529715   0.0985437
7         6-24 months   ki1000304-VITAMIN-A         INDIA                          Other                NA                0.0692308   0.0475378   0.0909238
7         6-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Control              NA                0.1411765   0.0670645   0.2152884
7         6-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc                 NA                0.0892857   0.0587592   0.1198122
7         6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Control              NA                0.2093023   0.1333468   0.2852579
7         6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   LNS                  NA                0.1272727   0.0796489   0.1748966
7         6-24 months   ki1119695-PROBIT            BELARUS                        Control              NA                0.0259209   0.0175289   0.0343128
7         6-24 months   ki1119695-PROBIT            BELARUS                        Other                NA                0.0239596   0.0181243   0.0297949
7         6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                0.1250000   0.1128342   0.1371658
7         6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Other                NA                0.1245487   0.1043323   0.1447652
7         6-24 months   ki1148112-LCNI-5            MALAWI                         Control              NA                0.3793103   0.2758441   0.4827766
7         6-24 months   ki1148112-LCNI-5            MALAWI                         LNS                  NA                0.2380952   0.1608093   0.3153812
7         6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                0.1556886   0.1368566   0.1745207
7         6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Other                NA                0.1811175   0.1638216   0.1984135
7         6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                0.3644068   0.2721697   0.4566439
7         6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     LNS                  NA                0.3560606   0.2730837   0.4390375
7         6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     MMN                  NA                0.3728814   0.2376042   0.5081586
7         6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Other                NA                0.2941176   0.1894045   0.3988308
8         0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                0.5149701   0.4391062   0.5908339
8         0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                  NA                0.3714286   0.2913219   0.4515352
8         0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                NA                0.4661922   0.4078155   0.5245689
8         0-24 months   ki1000111-WASH-Kenya        KENYA                          Control              NA                0.3099415   0.2405594   0.3793237
8         0-24 months   ki1000111-WASH-Kenya        KENYA                          LNS                  NA                0.3247863   0.2398508   0.4097219
8         0-24 months   ki1000111-WASH-Kenya        KENYA                          Other                NA                0.3262712   0.2663971   0.3861453
8         0-24 months   ki1000304-EU                INDIA                          Control              NA                0.5272727   0.4337544   0.6207910
8         0-24 months   ki1000304-EU                INDIA                          Zinc                 NA                0.4660194   0.3694552   0.5625836
8         0-24 months   ki1000304-VITAMIN-A         INDIA                          Control              NA                0.4566474   0.4183728   0.4949220
8         0-24 months   ki1000304-VITAMIN-A         INDIA                          Other                NA                0.4539877   0.4168536   0.4911218
8         0-24 months   ki1000304-Vitamin-B12       INDIA                          Control              NA                0.4166667   0.3398749   0.4934584
8         0-24 months   ki1000304-Vitamin-B12       INDIA                          Other                NA                0.4250000   0.3438350   0.5061650
8         0-24 months   ki1000304-ZnMort            INDIA                          Other                NA                0.5043478   0.4127724   0.5959232
8         0-24 months   ki1000304-ZnMort            INDIA                          Zinc                 NA                0.5000000   0.4103493   0.5896507
8         0-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Control              NA                0.7058824   0.6505104   0.7612543
8         0-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Other                NA                0.6600000   0.5612732   0.7587268
8         0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              NA                0.1896552   0.0885301   0.2907803
8         0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                NA                0.2211538   0.1412050   0.3011027
8         0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                 NA                0.2407407   0.1264454   0.3550361
8         0-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Control              NA                0.3495146   0.2573497   0.4416795
8         0-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc                 NA                0.3311688   0.2882157   0.3741220
8         0-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Control              NA                0.3902439   0.3707183   0.4097695
8         0-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   LNS                  NA                0.2986425   0.2467155   0.3505696
8         0-24 months   ki1119695-PROBIT            BELARUS                        Control              NA                0.1207547   0.1090666   0.1324428
8         0-24 months   ki1119695-PROBIT            BELARUS                        Other                NA                0.1011524   0.0879255   0.1143793
8         0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                0.3176471   0.3036025   0.3316916
8         0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Other                NA                0.3090677   0.2846398   0.3334956
8         0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                0.4722222   0.4433729   0.5010715
8         0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS                  NA                0.4880952   0.4256950   0.5504955
8         0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control              NA                0.4848485   0.3134572   0.6562398
8         0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         LNS                  NA                0.4545455   0.2837854   0.6253055
8         0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Other                NA                0.5000000   0.3258713   0.6741287
8         0-24 months   ki1148112-LCNI-5            MALAWI                         Control              NA                0.5000000   0.4265988   0.5734012
8         0-24 months   ki1148112-LCNI-5            MALAWI                         LNS                  NA                0.4888889   0.4178360   0.5599418
8         0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                0.4093886   0.3907739   0.4280034
8         0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Other                NA                0.3774194   0.3591494   0.3956893
8         0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                0.5111111   0.4146742   0.6075480
8         0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     LNS                  NA                0.4920635   0.4190210   0.5651059
8         0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     MMN                  NA                0.4487179   0.3184757   0.5789602
8         0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Other                NA                0.5424837   0.4547981   0.6301692
8         0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Control              NA                0.4117647   0.3519562   0.4715733
8         0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Other                NA                0.3200000   0.2227805   0.4172195
8         0-6 months    ki1119695-PROBIT            BELARUS                        Control              NA                0.0616175   0.0519266   0.0713083
8         0-6 months    ki1119695-PROBIT            BELARUS                        Other                NA                0.0526316   0.0436022   0.0616609
8         0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                0.1826923   0.1696190   0.1957656
8         0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Other                NA                0.1624204   0.1407376   0.1841032
8         0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                0.2725200   0.2554171   0.2896228
8         0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Other                NA                0.2234763   0.2066409   0.2403117
8         0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                0.2903226   0.1970862   0.3835589
8         0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     LNS                  NA                0.2240437   0.1596819   0.2884056
8         0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     MMN                  NA                0.2500000   0.1449217   0.3550783
8         0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     Other                NA                0.2649007   0.1876130   0.3421883
8         6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                0.2522523   0.1713605   0.3331440
8         6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                  NA                0.1333333   0.0682348   0.1984319
8         6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                NA                0.2350000   0.1761671   0.2938329
8         6-24 months   ki1000111-WASH-Kenya        KENYA                          Control              NA                0.0569106   0.0159148   0.0979063
8         6-24 months   ki1000111-WASH-Kenya        KENYA                          LNS                  NA                0.1011236   0.0384045   0.1638427
8         6-24 months   ki1000111-WASH-Kenya        KENYA                          Other                NA                0.0769231   0.0366956   0.1171505
8         6-24 months   ki1000304-VITAMIN-A         INDIA                          Control              NA                0.0849057   0.0575346   0.1122767
8         6-24 months   ki1000304-VITAMIN-A         INDIA                          Other                NA                0.0700000   0.0456652   0.0943348
8         6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Control              NA                0.1587302   0.1324920   0.1849683
8         6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   LNS                  NA                0.1075269   0.0834065   0.1316473
8         6-24 months   ki1119695-PROBIT            BELARUS                        Control              NA                0.0309278   0.0215781   0.0402775
8         6-24 months   ki1119695-PROBIT            BELARUS                        Other                NA                0.0326371   0.0256014   0.0396727
8         6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                0.1490385   0.1367546   0.1613223
8         6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Other                NA                0.1356209   0.1153632   0.1558786
8         6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                0.1923077   0.1648599   0.2197554
8         6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS                  NA                0.2542373   0.1896332   0.3188413
8         6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control              NA                0.2400000   0.0714437   0.4085563
8         6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         LNS                  NA                0.3076923   0.1290749   0.4863097
8         6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Other                NA                0.2173913   0.0476717   0.3871109
8         6-24 months   ki1148112-LCNI-5            MALAWI                         Control              NA                0.2500000   0.1756603   0.3243397
8         6-24 months   ki1148112-LCNI-5            MALAWI                         LNS                  NA                0.2727273   0.1995226   0.3459320
8         6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                0.1644737   0.1476047   0.1813427
8         6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Other                NA                0.1360656   0.1209918   0.1511393
8         6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                0.3303571   0.2329313   0.4277830
8         6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     LNS                  NA                0.3225806   0.2444639   0.4006974
8         6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     MMN                  NA                0.2000000   0.0827159   0.3172841
8         6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Other                NA                0.3615385   0.2681676   0.4549094
9         0-24 months   ki1000107-Serrinha-VitA     BRAZIL                         Control              NA                0.3125000   0.1893003   0.4356997
9         0-24 months   ki1000107-Serrinha-VitA     BRAZIL                         Other                NA                0.3571429   0.2380102   0.4762755
9         0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                0.4015152   0.3178152   0.4852151
9         0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                  NA                0.3586207   0.2804892   0.4367522
9         0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                NA                0.4210526   0.3636806   0.4784246
9         0-24 months   ki1000111-WASH-Kenya        KENYA                          Control              NA                0.2745098   0.2132186   0.3358010
9         0-24 months   ki1000111-WASH-Kenya        KENYA                          LNS                  NA                0.2950820   0.2140831   0.3760809
9         0-24 months   ki1000111-WASH-Kenya        KENYA                          Other                NA                0.2911877   0.2360244   0.3463510
9         0-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Control              NA                0.7058824   0.6435181   0.7682466
9         0-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Other                NA                0.5200000   0.4370767   0.6029233
9         0-24 months   ki1000304-EU                INDIA                          Control              NA                0.4673913   0.3651664   0.5696162
9         0-24 months   ki1000304-EU                INDIA                          Zinc                 NA                0.5104167   0.4101524   0.6106810
9         0-24 months   ki1000304-VITAMIN-A         INDIA                          Control              NA                0.4677419   0.4228351   0.5126488
9         0-24 months   ki1000304-VITAMIN-A         INDIA                          Other                NA                0.4117647   0.3683726   0.4551568
9         0-24 months   ki1000304-Vitamin-B12       INDIA                          Control              NA                0.4857143   0.3972341   0.5741945
9         0-24 months   ki1000304-Vitamin-B12       INDIA                          Other                NA                0.6129032   0.5317500   0.6940565
9         0-24 months   ki1000304-ZnMort            INDIA                          Other                NA                0.6363636   0.5413615   0.7313657
9         0-24 months   ki1000304-ZnMort            INDIA                          Zinc                 NA                0.5312500   0.4311696   0.6313304
9         0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              NA                0.2173913   0.0979047   0.3368779
9         0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                NA                0.2660550   0.1828961   0.3492140
9         0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                 NA                0.1960784   0.0868486   0.3053083
9         0-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Control              NA                0.3012048   0.2024143   0.3999953
9         0-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc                 NA                0.3630435   0.3190586   0.4070284
9         0-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Control              NA                0.4347826   0.4154683   0.4540969
9         0-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   LNS                  NA                0.3228840   0.2565697   0.3891984
9         0-24 months   ki1119695-PROBIT            BELARUS                        Control              NA                0.1356164   0.1170423   0.1541906
9         0-24 months   ki1119695-PROBIT            BELARUS                        Other                NA                0.1205511   0.0995560   0.1415462
9         0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                0.2700730   0.2567415   0.2834045
9         0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Other                NA                0.2924411   0.2690010   0.3158813
9         0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                0.4000000   0.3723929   0.4276071
9         0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS                  NA                0.4534161   0.3884265   0.5184058
9         0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control              NA                0.5121951   0.3584301   0.6659602
9         0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         LNS                  NA                0.4285714   0.2443576   0.6127853
9         0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Other                NA                0.4062500   0.2352358   0.5772642
9         0-24 months   ki1148112-LCNI-5            MALAWI                         Control              NA                0.5777778   0.5075725   0.6479831
9         0-24 months   ki1148112-LCNI-5            MALAWI                         LNS                  NA                0.5625000   0.4896745   0.6353255
9         0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                0.3933884   0.3761412   0.4106356
9         0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Other                NA                0.3606138   0.3439461   0.3772815
9         0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                0.3626374   0.2491736   0.4761011
9         0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     LNS                  NA                0.5037594   0.4141296   0.5933892
9         0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     MMN                  NA                0.4285714   0.2951198   0.5620231
9         0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Other                NA                0.4741379   0.3714453   0.5768306
9         0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Control              NA                0.3529412   0.2930657   0.4128166
9         0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Other                NA                0.5208333   0.4156578   0.6260089
9         0-6 months    ki1119695-PROBIT            BELARUS                        Control              NA                0.0667594   0.0548743   0.0786445
9         0-6 months    ki1119695-PROBIT            BELARUS                        Other                NA                0.0786651   0.0635728   0.0937574
9         0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                0.1494845   0.1370450   0.1619241
9         0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Other                NA                0.1477080   0.1261396   0.1692764
9         0-6 months    ki1148112-LCNI-5            MALAWI                         Control              NA                0.4814815   0.3845506   0.5784124
9         0-6 months    ki1148112-LCNI-5            MALAWI                         LNS                  NA                0.2692308   0.1847909   0.3536707
9         0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                0.2989796   0.2825603   0.3153988
9         0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Other                NA                0.2611940   0.2442716   0.2781165
9         0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                0.1625000   0.0693002   0.2556998
9         0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     LNS                  NA                0.2809917   0.1914450   0.3705384
9         0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     MMN                  NA                0.3090909   0.1737006   0.4444812
9         0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     Other                NA                0.2767857   0.1863321   0.3672393
9         6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                0.1881188   0.1118111   0.2644266
9         6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                  NA                0.1441441   0.0787251   0.2095632
9         6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                NA                0.1884058   0.1350725   0.2417391
9         6-24 months   ki1000111-WASH-Kenya        KENYA                          Control              NA                0.0392157   0.0084239   0.0700075
9         6-24 months   ki1000111-WASH-Kenya        KENYA                          LNS                  NA                0.0652174   0.0147070   0.1157278
9         6-24 months   ki1000111-WASH-Kenya        KENYA                          Other                NA                0.0904523   0.0505559   0.1303487
9         6-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Control              NA                0.5555556   0.4626965   0.6484146
9         6-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Other                NA                0.2962963   0.1917869   0.4008057
9         6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              NA                0.1219512   0.0214972   0.2224053
9         6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                NA                0.1250000   0.0557014   0.1942986
9         6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                 NA                0.1590909   0.0507038   0.2674781
9         6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Control              NA                0.2777778   0.2495799   0.3059757
9         6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   LNS                  NA                0.1605839   0.1261803   0.1949876
9         6-24 months   ki1119695-PROBIT            BELARUS                        Control              NA                0.0296610   0.0215893   0.0377327
9         6-24 months   ki1119695-PROBIT            BELARUS                        Other                NA                0.0293083   0.0232533   0.0353634
9         6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                0.1091703   0.0986056   0.1197351
9         6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Other                NA                0.1221020   0.1034585   0.1407455
9         6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control              NA                0.2500000   0.0885747   0.4114253
9         6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         LNS                  NA                0.2380952   0.0547515   0.4214390
9         6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Other                NA                0.3448276   0.1707151   0.5189400
9         6-24 months   ki1148112-LCNI-5            MALAWI                         Control              NA                0.2222222   0.1604103   0.2840342
9         6-24 months   ki1148112-LCNI-5            MALAWI                         LNS                  NA                0.3571429   0.2682899   0.4459958
9         6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                0.1931464   0.1748889   0.2114040
9         6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Other                NA                0.1746988   0.1580886   0.1913090
9         6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                0.2500000   0.1377222   0.3622778
9         6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     LNS                  NA                0.2710280   0.1767647   0.3652914
9         6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     MMN                  NA                0.2400000   0.1064265   0.3735735
9         6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Other                NA                0.2127660   0.1248377   0.3006942
10        0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                0.3777778   0.2959238   0.4596318
10        0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                  NA                0.3972603   0.3178198   0.4767008
10        0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                NA                0.4096774   0.3548875   0.4644673
10        0-24 months   ki1000111-WASH-Kenya        KENYA                          Control              NA                0.2558140   0.1974456   0.3141824
10        0-24 months   ki1000111-WASH-Kenya        KENYA                          LNS                  NA                0.1484375   0.0867966   0.2100784
10        0-24 months   ki1000111-WASH-Kenya        KENYA                          Other                NA                0.2736842   0.2218807   0.3254877
10        0-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Control              NA                0.5686274   0.5265714   0.6106835
10        0-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Other                NA                0.4887218   0.4491462   0.5282974
10        0-24 months   ki1000304-EU                INDIA                          Control              NA                0.5044248   0.4120339   0.5968157
10        0-24 months   ki1000304-EU                INDIA                          Zinc                 NA                0.4732143   0.3805415   0.5658871
10        0-24 months   ki1000304-VITAMIN-A         INDIA                          Control              NA                0.4516129   0.4022361   0.5009897
10        0-24 months   ki1000304-VITAMIN-A         INDIA                          Other                NA                0.4183673   0.3681249   0.4686098
10        0-24 months   ki1000304-Vitamin-B12       INDIA                          Control              NA                0.5000000   0.4083669   0.5916331
10        0-24 months   ki1000304-Vitamin-B12       INDIA                          Other                NA                0.4482759   0.3615117   0.5350400
10        0-24 months   ki1000304-ZnMort            INDIA                          Other                NA                0.5688073   0.4756140   0.6620006
10        0-24 months   ki1000304-ZnMort            INDIA                          Zinc                 NA                0.5098039   0.4125592   0.6070487
10        0-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control              NA                0.6538462   0.6103634   0.6973289
10        0-24 months   ki1000304b-SAS-CompFeed     INDIA                          Other                NA                0.6962025   0.6497746   0.7426305
10        0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              NA                0.2372881   0.1284977   0.3460786
10        0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                NA                0.2142857   0.1381272   0.2904442
10        0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                 NA                0.2586207   0.1456837   0.3715577
10        0-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Control              NA                0.3333333   0.2108394   0.4558272
10        0-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc                 NA                0.3699789   0.3264283   0.4135294
10        0-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Control              NA                0.3076923   0.2703479   0.3450367
10        0-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   LNS                  NA                0.3131673   0.2526219   0.3737126
10        0-24 months   ki1119695-PROBIT            BELARUS                        Control              NA                0.1463715   0.1249084   0.1678346
10        0-24 months   ki1119695-PROBIT            BELARUS                        Other                NA                0.1186613   0.1077918   0.1295307
10        0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                0.3271028   0.3115429   0.3426627
10        0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Other                NA                0.3317972   0.3045599   0.3590345
10        0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                0.5405405   0.5129703   0.5681108
10        0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS                  NA                0.4469274   0.3864298   0.5074250
10        0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control              NA                0.3783784   0.2214428   0.5353140
10        0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         LNS                  NA                0.4883721   0.3383295   0.6384147
10        0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Other                NA                0.4210526   0.2634033   0.5787020
10        0-24 months   ki1148112-LCNI-5            MALAWI                         Control              NA                0.6093750   0.5524974   0.6662526
10        0-24 months   ki1148112-LCNI-5            MALAWI                         LNS                  NA                0.6901408   0.6333591   0.7469226
10        0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                0.4492017   0.4333312   0.4650723
10        0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Other                NA                0.3789697   0.3636444   0.3942949
10        0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                0.4736842   0.3110010   0.6363675
10        0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     LNS                  NA                0.4166667   0.2534073   0.5799261
10        0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     MMN                  NA                0.5000000   0.2860157   0.7139843
10        0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Other                NA                0.2571429   0.1067283   0.4075574
10        0-6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Control              NA                0.3225806   0.2409580   0.4042033
10        0-6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Other                NA                0.2812500   0.2014887   0.3610113
10        0-6 months    ki1000304-ZnMort            INDIA                          Other                NA                0.5000000   0.2104463   0.7895537
10        0-6 months    ki1000304-ZnMort            INDIA                          Zinc                 NA                0.5000000   0.1828098   0.8171902
10        0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Control              NA                0.2656250   0.2428316   0.2884184
10        0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Other                NA                0.3333333   0.2664059   0.4002607
10        0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Control              NA                0.4615385   0.3903650   0.5327119
10        0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Other                NA                0.4864865   0.3661001   0.6068728
10        0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              NA                0.0847458   0.0135236   0.1559679
10        0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                NA                0.0990991   0.0433904   0.1548078
10        0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                 NA                0.1071429   0.0259553   0.1883304
10        0-6 months    ki1119695-PROBIT            BELARUS                        Control              NA                0.0718789   0.0605712   0.0831867
10        0-6 months    ki1119695-PROBIT            BELARUS                        Other                NA                0.0661157   0.0582007   0.0740307
10        0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                0.1973684   0.1826514   0.2120855
10        0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Other                NA                0.1733068   0.1478716   0.1987419
10        0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                0.2857143   0.2580178   0.3134108
10        0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         LNS                  NA                0.1984127   0.1385221   0.2583033
10        0-6 months    ki1148112-LCNI-5            MALAWI                         Control              NA                0.4285714   0.3448000   0.5123428
10        0-6 months    ki1148112-LCNI-5            MALAWI                         LNS                  NA                0.4117647   0.3296523   0.4938771
10        0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                0.3564431   0.3409978   0.3718884
10        0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Other                NA                0.2831858   0.2689000   0.2974717
10        0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                0.2500000   0.1205778   0.3794222
10        0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     LNS                  NA                0.2121212   0.0622678   0.3619746
10        0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     MMN                  NA                0.2727273   0.0723452   0.4731093
10        0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     Other                NA                0.1764706   0.0530594   0.2998818
10        6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                0.1176471   0.0550485   0.1802456
10        6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                  NA                0.1651376   0.0953514   0.2349238
10        6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                NA                0.1636364   0.1146947   0.2125780
10        6-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Control              NA                0.3333333   0.2767275   0.3899392
10        6-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Other                NA                0.2537313   0.2033264   0.3041363
10        6-24 months   ki1000304-VITAMIN-A         INDIA                          Control              NA                0.1034483   0.0654077   0.1414889
10        6-24 months   ki1000304-VITAMIN-A         INDIA                          Other                NA                0.0806452   0.0454802   0.1158102
10        6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control              NA                0.3600000   0.3185861   0.4014139
10        6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Other                NA                0.5000000   0.4831637   0.5168363
10        6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              NA                0.1800000   0.0732322   0.2867678
10        6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                NA                0.0816327   0.0272815   0.1359839
10        6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                 NA                0.1590909   0.0507349   0.2674469
10        6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Control              NA                0.1688312   0.1398009   0.1978615
10        6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   LNS                  NA                0.1508621   0.0822533   0.2194709
10        6-24 months   ki1119695-PROBIT            BELARUS                        Control              NA                0.0415617   0.0320850   0.0510384
10        6-24 months   ki1119695-PROBIT            BELARUS                        Other                NA                0.0352697   0.0286474   0.0418921
10        6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                0.1329114   0.1204564   0.1453664
10        6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Other                NA                0.1303502   0.1080704   0.1526300
10        6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                0.3478261   0.3157336   0.3799186
10        6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS                  NA                0.1794872   0.1211656   0.2378087
10        6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control              NA                0.2068966   0.0586990   0.3550941
10        6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         LNS                  NA                0.3783784   0.2212974   0.5354594
10        6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Other                NA                0.2580645   0.1032311   0.4128979
10        6-24 months   ki1148112-LCNI-5            MALAWI                         Control              NA                0.3913043   0.3126653   0.4699434
10        6-24 months   ki1148112-LCNI-5            MALAWI                         LNS                  NA                0.3783784   0.3082927   0.4484640
10        6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                0.2013093   0.1825866   0.2200321
10        6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Other                NA                0.1803519   0.1638145   0.1968894
11        0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                0.4014085   0.3207103   0.4821066
11        0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                  NA                0.3040000   0.2232885   0.3847115
11        0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                NA                0.3563636   0.2997071   0.4130201
11        0-24 months   ki1000111-WASH-Kenya        KENYA                          Control              NA                0.2135922   0.1575794   0.2696050
11        0-24 months   ki1000111-WASH-Kenya        KENYA                          LNS                  NA                0.1742424   0.1094804   0.2390045
11        0-24 months   ki1000111-WASH-Kenya        KENYA                          Other                NA                0.2316176   0.1814418   0.2817935
11        0-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Control              NA                0.5507246   0.5128656   0.5885836
11        0-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Other                NA                0.3963415   0.3632045   0.4294784
11        0-24 months   ki1000304-EU                INDIA                          Control              NA                0.5051546   0.4054004   0.6049089
11        0-24 months   ki1000304-EU                INDIA                          Zinc                 NA                0.5360825   0.4365830   0.6355819
11        0-24 months   ki1000304-VITAMIN-A         INDIA                          Control              NA                0.5068493   0.4485062   0.5651924
11        0-24 months   ki1000304-VITAMIN-A         INDIA                          Other                NA                0.4788732   0.4213809   0.5363656
11        0-24 months   ki1000304-Vitamin-B12       INDIA                          Control              NA                0.4883721   0.4021361   0.5746080
11        0-24 months   ki1000304-Vitamin-B12       INDIA                          Other                NA                0.4687500   0.3944829   0.5430171
11        0-24 months   ki1000304-ZnMort            INDIA                          Other                NA                0.5058824   0.3993041   0.6124606
11        0-24 months   ki1000304-ZnMort            INDIA                          Zinc                 NA                0.3877551   0.2910240   0.4844862
11        0-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control              NA                0.6170213   0.5252915   0.7087511
11        0-24 months   ki1000304b-SAS-CompFeed     INDIA                          Other                NA                0.5609756   0.5194106   0.6025406
11        0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              NA                0.1964286   0.0921282   0.3007289
11        0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                NA                0.1619048   0.0912816   0.2325279
11        0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                 NA                0.2830189   0.1614594   0.4045783
11        0-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Control              NA                0.2500000   0.1403184   0.3596816
11        0-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc                 NA                0.3252427   0.2799595   0.3705260
11        0-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Control              NA                0.3378378   0.3020705   0.3736052
11        0-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   LNS                  NA                0.3507463   0.2832972   0.4181953
11        0-24 months   ki1119695-PROBIT            BELARUS                        Control              NA                0.1337748   0.1141215   0.1534281
11        0-24 months   ki1119695-PROBIT            BELARUS                        Other                NA                0.1311301   0.1116746   0.1505855
11        0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                0.3068182   0.2923986   0.3212378
11        0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Other                NA                0.3059603   0.2815942   0.3303263
11        0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                0.4687500   0.4436580   0.4938420
11        0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS                  NA                0.5714286   0.5109552   0.6319019
11        0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control              NA                0.3000000   0.1574063   0.4425937
11        0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         LNS                  NA                0.5000000   0.3481670   0.6518330
11        0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Other                NA                0.4146341   0.2632170   0.5660513
11        0-24 months   ki1148112-LCNI-5            MALAWI                         Control              NA                0.6078431   0.5424477   0.6732386
11        0-24 months   ki1148112-LCNI-5            MALAWI                         LNS                  NA                0.6296296   0.5630725   0.6961867
11        0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                0.4596662   0.4441578   0.4751746
11        0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Other                NA                0.4308548   0.4158023   0.4459072
11        0-6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Control              NA                0.1935484   0.1442751   0.2428217
11        0-6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Other                NA                0.2280702   0.1571111   0.2990292
11        0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Control              NA                0.2631579   0.2256728   0.3006430
11        0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Other                NA                0.3030303   0.2446017   0.3614589
11        0-6 months    ki1119695-PROBIT            BELARUS                        Control              NA                0.0857143   0.0703679   0.1010607
11        0-6 months    ki1119695-PROBIT            BELARUS                        Other                NA                0.0712719   0.0555790   0.0869648
11        0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                0.1291866   0.1171337   0.1412395
11        0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Other                NA                0.1482759   0.1270021   0.1695497
11        0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                0.3200000   0.2948132   0.3451868
11        0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         LNS                  NA                0.3375796   0.2735947   0.4015646
11        0-6 months    ki1148112-LCNI-5            MALAWI                         Control              NA                0.3846154   0.2680561   0.5011746
11        0-6 months    ki1148112-LCNI-5            MALAWI                         LNS                  NA                0.3529412   0.2220121   0.4838702
11        0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                0.3502907   0.3355091   0.3650723
11        0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Other                NA                0.3128613   0.2986519   0.3270706
11        6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                0.1851852   0.1118367   0.2585337
11        6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                  NA                0.0808081   0.0270574   0.1345587
11        6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                NA                0.1291866   0.0836596   0.1747136
11        6-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Control              NA                0.3684211   0.3154312   0.4214109
11        6-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Other                NA                0.2077922   0.1711624   0.2444220
11        6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control              NA                0.3428571   0.1621303   0.5235840
11        6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Other                NA                0.2307692   0.1768717   0.2846667
11        6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              NA                0.1521739   0.0480822   0.2562656
11        6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                NA                0.0813953   0.0234410   0.1393497
11        6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                 NA                0.1739130   0.0640703   0.2837558
11        6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Control              NA                0.1551724   0.1292485   0.1810963
11        6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   LNS                  NA                0.1415094   0.0974542   0.1855646
11        6-24 months   ki1119695-PROBIT            BELARUS                        Control              NA                0.0250000   0.0152775   0.0347225
11        6-24 months   ki1119695-PROBIT            BELARUS                        Other                NA                0.0326442   0.0254683   0.0398201
11        6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                0.1759259   0.1625586   0.1892933
11        6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Other                NA                0.1289256   0.1092357   0.1486156
11        6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control              NA                0.2000000   0.0668342   0.3331658
11        6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         LNS                  NA                0.3888889   0.2288637   0.5489140
11        6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Other                NA                0.2187500   0.0748169   0.3626831
11        6-24 months   ki1148112-LCNI-5            MALAWI                         Control              NA                0.3783784   0.3017944   0.4549623
11        6-24 months   ki1148112-LCNI-5            MALAWI                         LNS                  NA                0.4102564   0.3305116   0.4900012
11        6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                0.2301587   0.2105038   0.2498136
11        6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Other                NA                0.2530120   0.2320697   0.2739544
12        0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                0.2666667   0.1751927   0.3581406
12        0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                  NA                0.2314050   0.1561689   0.3066410
12        0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                NA                0.3333333   0.2670873   0.3995794
12        0-24 months   ki1000111-WASH-Kenya        KENYA                          Control              NA                0.2488889   0.1923482   0.3054296
12        0-24 months   ki1000111-WASH-Kenya        KENYA                          LNS                  NA                0.1764706   0.1123491   0.2405921
12        0-24 months   ki1000111-WASH-Kenya        KENYA                          Other                NA                0.2758621   0.2215953   0.3301288
12        0-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Control              NA                0.6000000   0.5634547   0.6365453
12        0-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Other                NA                0.4971098   0.4605440   0.5336756
12        0-24 months   ki1000304-EU                INDIA                          Control              NA                0.4705882   0.3734424   0.5677341
12        0-24 months   ki1000304-EU                INDIA                          Zinc                 NA                0.4084507   0.2937825   0.5231189
12        0-24 months   ki1000304-VITAMIN-A         INDIA                          Control              NA                0.4727273   0.4332630   0.5121915
12        0-24 months   ki1000304-VITAMIN-A         INDIA                          Other                NA                0.5000000   0.4618170   0.5381830
12        0-24 months   ki1000304-Vitamin-B12       INDIA                          Control              NA                0.4333333   0.3508556   0.5158111
12        0-24 months   ki1000304-Vitamin-B12       INDIA                          Other                NA                0.4571429   0.3675849   0.5467008
12        0-24 months   ki1000304-ZnMort            INDIA                          Other                NA                0.5217391   0.4193792   0.6240990
12        0-24 months   ki1000304-ZnMort            INDIA                          Zinc                 NA                0.6091954   0.5063788   0.7120120
12        0-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control              NA                0.5833333   0.4956759   0.6709908
12        0-24 months   ki1000304b-SAS-CompFeed     INDIA                          Other                NA                0.4833333   0.4671258   0.4995409
12        0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              NA                0.1730769   0.0699803   0.2761736
12        0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                NA                0.2333333   0.1457212   0.3209455
12        0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                 NA                0.1250000   0.0311936   0.2188064
12        0-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Control              NA                0.3684211   0.2598596   0.4769825
12        0-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc                 NA                0.3154034   0.2703233   0.3604836
12        0-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Control              NA                0.4175824   0.3931610   0.4420039
12        0-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   LNS                  NA                0.3130435   0.2329933   0.3930937
12        0-24 months   ki1119695-PROBIT            BELARUS                        Control              NA                0.1478463   0.1233771   0.1723156
12        0-24 months   ki1119695-PROBIT            BELARUS                        Other                NA                0.1101010   0.0943155   0.1258866
12        0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                0.2574627   0.2443452   0.2705802
12        0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Other                NA                0.2992519   0.2754860   0.3230178
12        0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                0.4666667   0.4322251   0.5011083
12        0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS                  NA                0.4603175   0.3897990   0.5308360
12        0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control              NA                0.4893617   0.3449543   0.6337691
12        0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         LNS                  NA                0.4339623   0.3001206   0.5678039
12        0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Other                NA                0.4666667   0.3193800   0.6139533
12        0-24 months   ki1148112-LCNI-5            MALAWI                         Control              NA                0.6200000   0.5488139   0.6911861
12        0-24 months   ki1148112-LCNI-5            MALAWI                         LNS                  NA                0.5333333   0.4639218   0.6027448
12        0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                0.4394662   0.4205382   0.4583941
12        0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Other                NA                0.4194722   0.4020746   0.4368699
12        0-6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Control              NA                0.4117647   0.3046256   0.5189038
12        0-6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Other                NA                0.3157895   0.2401447   0.3914343
12        0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Control              NA                0.3389831   0.2834212   0.3945449
12        0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Other                NA                0.2000000   0.1625604   0.2374396
12        0-6 months    ki1119695-PROBIT            BELARUS                        Control              NA                0.0678788   0.0565952   0.0791624
12        0-6 months    ki1119695-PROBIT            BELARUS                        Other                NA                0.0515021   0.0390541   0.0639502
12        0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                0.0688073   0.0600084   0.0776063
12        0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Other                NA                0.1382114   0.1180614   0.1583613
12        0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                0.2631579   0.2311405   0.2951753
12        0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         LNS                  NA                0.2121212   0.1442706   0.2799718
12        0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                0.3081232   0.2876055   0.3286410
12        0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Other                NA                0.2595628   0.2398724   0.2792532
12        6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                0.0833333   0.0193943   0.1472724
12        6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                  NA                0.0873786   0.0327593   0.1419980
12        6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                NA                0.1200000   0.0679161   0.1720839
12        6-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Control              NA                0.3294118   0.2843565   0.3744670
12        6-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Other                NA                0.2500000   0.2040849   0.2959151
12        6-24 months   ki1000304-VITAMIN-A         INDIA                          Control              NA                0.1224490   0.0877880   0.1571099
12        6-24 months   ki1000304-VITAMIN-A         INDIA                          Other                NA                0.1046512   0.0743310   0.1349713
12        6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control              NA                0.3673469   0.2783651   0.4563287
12        6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Other                NA                0.2708333   0.2271597   0.3145069
12        6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Control              NA                0.2285714   0.2003748   0.2567680
12        6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   LNS                  NA                0.1398964   0.1044950   0.1752978
12        6-24 months   ki1119695-PROBIT            BELARUS                        Control              NA                0.0513740   0.0298360   0.0729119
12        6-24 months   ki1119695-PROBIT            BELARUS                        Other                NA                0.0451745   0.0347669   0.0555821
12        6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                0.1363636   0.1248899   0.1478374
12        6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Other                NA                0.1538462   0.1331112   0.1745811
12        6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control              NA                0.3076923   0.1610211   0.4543635
12        6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         LNS                  NA                0.2444444   0.1177649   0.3711240
12        6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Other                NA                0.2702703   0.1253769   0.4151637
12        6-24 months   ki1148112-LCNI-5            MALAWI                         Control              NA                0.3103448   0.2357933   0.3848964
12        6-24 months   ki1148112-LCNI-5            MALAWI                         LNS                  NA                0.3783784   0.2901016   0.4666552
12        6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                0.2152542   0.1956847   0.2348238
12        6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Other                NA                0.2523659   0.2321142   0.2726177


### Parameter: E(Y)


brthmon   agecat        studyid                     country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
--------  ------------  --------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
1         0-24 months   ki1000107-Serrinha-VitA     BRAZIL                         NA                   NA                0.2340426   0.1116883   0.3563968
1         0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     NA                   NA                0.3251029   0.2660869   0.3841189
1         0-24 months   ki1000111-WASH-Kenya        KENYA                          NA                   NA                0.2323420   0.1966222   0.2680618
1         0-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       NA                   NA                0.4942197   0.4414627   0.5469766
1         0-24 months   ki1000304-EU                INDIA                          NA                   NA                0.4931507   0.4117752   0.5745261
1         0-24 months   ki1000304-VITAMIN-A         INDIA                          NA                   NA                0.4263804   0.3726132   0.4801475
1         0-24 months   ki1000304-Vitamin-B12       INDIA                          NA                   NA                0.5538462   0.4320608   0.6756315
1         0-24 months   ki1000304-ZnMort            INDIA                          NA                   NA                0.5416667   0.4660972   0.6172362
1         0-24 months   ki1000304b-SAS-CompFeed     INDIA                          NA                   NA                0.5800000   0.5072306   0.6527694
1         0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.2857143   0.2157156   0.3557130
1         0-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   NA                   NA                0.3067485   0.2713247   0.3421722
1         0-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   NA                   NA                0.3312693   0.2650290   0.3975097
1         0-24 months   ki1119695-PROBIT            BELARUS                        NA                   NA                0.1717370   0.1398148   0.2036592
1         0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       NA                   NA                0.3407534   0.3135604   0.3679464
1         0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         NA                   NA                0.5174825   0.4352945   0.5996705
1         0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         NA                   NA                0.4660194   0.3692111   0.5628278
1         0-24 months   ki1148112-LCNI-5            MALAWI                         NA                   NA                0.6323529   0.5168997   0.7478062
1         0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     NA                   NA                0.4295775   0.4017517   0.4574032
1         0-6 months    ki1000125-AgaKhanUniv       PAKISTAN                       NA                   NA                0.2753623   0.1691912   0.3815334
1         0-6 months    ki1000304b-SAS-CompFeed     INDIA                          NA                   NA                0.3076923   0.2429822   0.3724024
1         0-6 months    ki1119695-PROBIT            BELARUS                        NA                   NA                0.0929990   0.0638111   0.1221868
1         0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       NA                   NA                0.1769317   0.1518887   0.2019747
1         0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         NA                   NA                0.3333333   0.2353963   0.4312703
1         0-6 months    ki1148112-LCNI-5            MALAWI                         NA                   NA                0.3793103   0.1995873   0.5590334
1         0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     NA                   NA                0.2579710   0.2257285   0.2902135
1         6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     NA                   NA                0.1951220   0.1407405   0.2495034
1         6-24 months   ki1000111-WASH-Kenya        KENYA                          NA                   NA                0.0678733   0.0443978   0.0913489
1         6-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       NA                   NA                0.3015873   0.2359831   0.3671915
1         6-24 months   ki1000304-VITAMIN-A         INDIA                          NA                   NA                0.0931373   0.0531582   0.1331163
1         6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.2016129   0.1307104   0.2725154
1         6-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   NA                   NA                0.0786290   0.0549178   0.1023403
1         6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   NA                   NA                0.1547170   0.1015424   0.2078916
1         6-24 months   ki1119695-PROBIT            BELARUS                        NA                   NA                0.0470348   0.0305232   0.0635463
1         6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       NA                   NA                0.1537611   0.1302337   0.1772885
1         6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     NA                   NA                0.2459174   0.2158614   0.2759734
2         0-24 months   ki1000107-Serrinha-VitA     BRAZIL                         NA                   NA                0.3200000   0.1893891   0.4506109
2         0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     NA                   NA                0.3292683   0.2571237   0.4014129
2         0-24 months   ki1000111-WASH-Kenya        KENYA                          NA                   NA                0.2302905   0.1926654   0.2679155
2         0-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       NA                   NA                0.5274725   0.4243294   0.6306157
2         0-24 months   ki1000304-EU                INDIA                          NA                   NA                0.3956835   0.3140976   0.4772693
2         0-24 months   ki1000304-VITAMIN-A         INDIA                          NA                   NA                0.4882813   0.4269293   0.5496332
2         0-24 months   ki1000304-Vitamin-B12       INDIA                          NA                   NA                0.5671642   0.4476300   0.6866984
2         0-24 months   ki1000304-ZnMort            INDIA                          NA                   NA                0.4768212   0.3968920   0.5567504
2         0-24 months   ki1000304b-SAS-CompFeed     INDIA                          NA                   NA                0.5058824   0.3486267   0.6631380
2         0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1867470   0.1272841   0.2462098
2         0-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   NA                   NA                0.3220089   0.2867863   0.3572314
2         0-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   NA                   NA                0.2817680   0.1716856   0.3918503
2         0-24 months   ki1119695-PROBIT            BELARUS                        NA                   NA                0.1671795   0.1271294   0.2072295
2         0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       NA                   NA                0.3322259   0.3014879   0.3629640
2         0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         NA                   NA                0.5564516   0.4686546   0.6442486
2         0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         NA                   NA                0.5185185   0.4090284   0.6280087
2         0-24 months   ki1148112-LCNI-5            MALAWI                         NA                   NA                0.4347826   0.2899436   0.5796217
2         0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     NA                   NA                0.4313725   0.4013084   0.4614367
2         0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     NA                   NA                0.4650655   0.4276167   0.5025144
2         0-6 months    ki1119695-PROBIT            BELARUS                        NA                   NA                0.0702341   0.0479528   0.0925154
2         0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       NA                   NA                0.1714744   0.1418767   0.2010720
2         0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     NA                   NA                0.2500000   0.2132664   0.2867336
2         0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     NA                   NA                0.2658023   0.2276032   0.3040014
2         6-24 months   ki1000111-WASH-Kenya        KENYA                          NA                   NA                0.0810811   0.0545299   0.1076322
2         6-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       NA                   NA                0.4262295   0.3010990   0.5513601
2         6-24 months   ki1000304-VITAMIN-A         INDIA                          NA                   NA                0.0758621   0.0326159   0.1191082
2         6-24 months   ki1000304b-SAS-CompFeed     INDIA                          NA                   NA                0.2068966   0.0788199   0.3349732
2         6-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   NA                   NA                0.0930233   0.0679369   0.1181097
2         6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   NA                   NA                0.1161290   0.0565009   0.1757572
2         6-24 months   ki1119695-PROBIT            BELARUS                        NA                   NA                0.0665259   0.0357053   0.0973464
2         6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       NA                   NA                0.1338912   0.1089479   0.1588345
2         6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         NA                   NA                0.3880597   0.2704942   0.5056252
2         6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     NA                   NA                0.2601537   0.2270142   0.2932932
2         6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     NA                   NA                0.2626539   0.2269087   0.2983991
3         0-24 months   ki1000107-Serrinha-VitA     BRAZIL                         NA                   NA                0.3333333   0.2098672   0.4567995
3         0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     NA                   NA                0.3125000   0.2467656   0.3782344
3         0-24 months   ki1000111-WASH-Kenya        KENYA                          NA                   NA                0.2301325   0.1965365   0.2637284
3         0-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       NA                   NA                0.3529412   0.2204808   0.4854016
3         0-24 months   ki1000304-EU                INDIA                          NA                   NA                0.4518072   0.3758709   0.5277435
3         0-24 months   ki1000304-VITAMIN-A         INDIA                          NA                   NA                0.4434783   0.3909799   0.4959767
3         0-24 months   ki1000304-Vitamin-B12       INDIA                          NA                   NA                0.4000000   0.2919710   0.5080290
3         0-24 months   ki1000304-ZnMort            INDIA                          NA                   NA                0.5138889   0.4319703   0.5958075
3         0-24 months   ki1000304b-SAS-CompFeed     INDIA                          NA                   NA                0.5316456   0.3823409   0.6809502
3         0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.2578616   0.1896505   0.3260728
3         0-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   NA                   NA                0.3297297   0.2958352   0.3636243
3         0-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   NA                   NA                0.3553299   0.2564150   0.4542449
3         0-24 months   ki1119695-PROBIT            BELARUS                        NA                   NA                0.1372032   0.1040544   0.1703519
3         0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       NA                   NA                0.3418972   0.3126579   0.3711365
3         0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         NA                   NA                0.5075758   0.4219642   0.5931874
3         0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         NA                   NA                0.4318182   0.3277345   0.5359019
3         0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     NA                   NA                0.3300259   0.3070185   0.3530333
3         0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     NA                   NA                0.4774951   0.4414726   0.5135176
3         0-6 months    ki1000304b-SAS-CompFeed     INDIA                          NA                   NA                0.2816901   0.1397441   0.4236361
3         0-6 months    ki1119695-PROBIT            BELARUS                        NA                   NA                0.0650407   0.0411534   0.0889279
3         0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       NA                   NA                0.1620253   0.1363145   0.1877362
3         0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         NA                   NA                0.3269231   0.2363322   0.4175140
3         0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     NA                   NA                0.2035955   0.1831762   0.2240148
3         0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     NA                   NA                0.2768166   0.2425220   0.3111112
3         6-24 months   ki1000111-WASH-Kenya        KENYA                          NA                   NA                0.0684105   0.0461937   0.0906272
3         6-24 months   ki1000304-VITAMIN-A         INDIA                          NA                   NA                0.0794393   0.0431229   0.1157556
3         6-24 months   ki1000304b-SAS-CompFeed     INDIA                          NA                   NA                0.3214286   0.1723156   0.4705415
3         6-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   NA                   NA                0.0874317   0.0637820   0.1110814
3         6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   NA                   NA                0.1575758   0.0664177   0.2487338
3         6-24 months   ki1119695-PROBIT            BELARUS                        NA                   NA                0.0511670   0.0296399   0.0726941
3         6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       NA                   NA                0.1317440   0.1082487   0.1552393
3         6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     NA                   NA                0.1796875   0.1538601   0.2055149
3         6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     NA                   NA                0.2744361   0.2390601   0.3098121
4         0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     NA                   NA                0.3554688   0.2967197   0.4142178
4         0-24 months   ki1000111-WASH-Kenya        KENYA                          NA                   NA                0.2603175   0.2260251   0.2946098
4         0-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       NA                   NA                0.6086957   0.4661023   0.7512890
4         0-24 months   ki1000304-EU                INDIA                          NA                   NA                0.3613445   0.2746681   0.4480210
4         0-24 months   ki1000304-VITAMIN-A         INDIA                          NA                   NA                0.4179104   0.3650158   0.4708051
4         0-24 months   ki1000304-Vitamin-B12       INDIA                          NA                   NA                0.4358974   0.2782353   0.5935596
4         0-24 months   ki1000304-ZnMort            INDIA                          NA                   NA                0.4736842   0.3816230   0.5657454
4         0-24 months   ki1000304b-SAS-CompFeed     INDIA                          NA                   NA                0.5633803   0.4314903   0.6952703
4         0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.3257143   0.2560815   0.3953471
4         0-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   NA                   NA                0.3612903   0.3234476   0.3991331
4         0-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   NA                   NA                0.3923445   0.2838532   0.5008357
4         0-24 months   ki1119695-PROBIT            BELARUS                        NA                   NA                0.1213172   0.0890296   0.1536047
4         0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       NA                   NA                0.3302326   0.2987824   0.3616828
4         0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         NA                   NA                0.4615385   0.3652641   0.5578129
4         0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         NA                   NA                0.3768116   0.2616347   0.4919885
4         0-24 months   ki1148112-LCNI-5            MALAWI                         NA                   NA                0.5641026   0.4064404   0.7217647
4         0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     NA                   NA                0.3592727   0.3289245   0.3896210
4         0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     NA                   NA                0.5265201   0.4862810   0.5667591
4         0-6 months    ki1000304b-SAS-CompFeed     INDIA                          NA                   NA                0.2203390   0.1175151   0.3231629
4         0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0935673   0.0497895   0.1373450
4         0-6 months    ki1119695-PROBIT            BELARUS                        NA                   NA                0.0590340   0.0390858   0.0789822
4         0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       NA                   NA                0.1891074   0.1592321   0.2189827
4         0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         NA                   NA                0.3292683   0.2269260   0.4316105
4         0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     NA                   NA                0.1829146   0.1544651   0.2113640
4         0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     NA                   NA                0.2500000   0.2143045   0.2856955
4         6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     NA                   NA                0.2268519   0.1708720   0.2828317
4         6-24 months   ki1000111-WASH-Kenya        KENYA                          NA                   NA                0.0525253   0.0328531   0.0721974
4         6-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       NA                   NA                0.3870968   0.2127985   0.5613951
4         6-24 months   ki1000304-VITAMIN-A         INDIA                          NA                   NA                0.0829493   0.0461682   0.1197304
4         6-24 months   ki1000304b-SAS-CompFeed     INDIA                          NA                   NA                0.2857143   0.1273554   0.4440732
4         6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.2595420   0.1841838   0.3349002
4         6-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   NA                   NA                0.1464968   0.1145288   0.1784648
4         6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   NA                   NA                0.1707317   0.0878935   0.2535699
4         6-24 months   ki1119695-PROBIT            BELARUS                        NA                   NA                0.0358102   0.0218899   0.0497305
4         6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       NA                   NA                0.1218045   0.0969279   0.1466811
4         6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     NA                   NA                0.1622761   0.1354718   0.1890803
4         6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     NA                   NA                0.3156146   0.2740348   0.3571945
5         0-24 months   ki1000107-Serrinha-VitA     BRAZIL                         NA                   NA                0.3725490   0.2385367   0.5065613
5         0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     NA                   NA                0.4027027   0.3526621   0.4527433
5         0-24 months   ki1000111-WASH-Kenya        KENYA                          NA                   NA                0.2424779   0.2071073   0.2778485
5         0-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       NA                   NA                0.4736842   0.3127995   0.6345690
5         0-24 months   ki1000304-EU                INDIA                          NA                   NA                0.4333333   0.3443006   0.5223660
5         0-24 months   ki1000304-VITAMIN-A         INDIA                          NA                   NA                0.4272997   0.3744055   0.4801940
5         0-24 months   ki1000304-Vitamin-B12       INDIA                          NA                   NA                0.4925373   0.3719233   0.6131513
5         0-24 months   ki1000304-ZnMort            INDIA                          NA                   NA                0.5238095   0.4362567   0.6113623
5         0-24 months   ki1000304b-SAS-CompFeed     INDIA                          NA                   NA                0.5913978   0.4938047   0.6889910
5         0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1918605   0.1328423   0.2508787
5         0-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   NA                   NA                0.3409786   0.3046202   0.3773370
5         0-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   NA                   NA                0.3394495   0.2596037   0.4192954
5         0-24 months   ki1119695-PROBIT            BELARUS                        NA                   NA                0.1064014   0.0772014   0.1356014
5         0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       NA                   NA                0.3486239   0.3169768   0.3802709
5         0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         NA                   NA                0.4724409   0.3852699   0.5596120
5         0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         NA                   NA                0.3797468   0.2720427   0.4874510
5         0-24 months   ki1148112-LCNI-5            MALAWI                         NA                   NA                0.4545455   0.3057184   0.6033725
5         0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     NA                   NA                0.3959470   0.3643620   0.4275320
5         0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     NA                   NA                0.4914197   0.4475100   0.5353293
5         0-6 months    ki1000304b-SAS-CompFeed     INDIA                          NA                   NA                0.2500000   0.1591701   0.3408299
5         0-6 months    ki1119695-PROBIT            BELARUS                        NA                   NA                0.0523979   0.0289908   0.0758050
5         0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       NA                   NA                0.2033898   0.1737193   0.2330604
5         0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     NA                   NA                0.1933054   0.1668004   0.2198105
5         0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     NA                   NA                0.2337398   0.1939871   0.2734926
5         6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     NA                   NA                0.2199313   0.1722597   0.2676028
5         6-24 months   ki1000111-WASH-Kenya        KENYA                          NA                   NA                0.0579065   0.0362783   0.0795346
5         6-24 months   ki1000304b-SAS-CompFeed     INDIA                          NA                   NA                0.3076923   0.1891984   0.4261862
5         6-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   NA                   NA                0.1287726   0.0992955   0.1582497
5         6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   NA                   NA                0.1318681   0.0708041   0.1929322
5         6-24 months   ki1119695-PROBIT            BELARUS                        NA                   NA                0.0403863   0.0234803   0.0572923
5         6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       NA                   NA                0.1454545   0.1185369   0.1723722
5         6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     NA                   NA                0.1730981   0.1447407   0.2014556
5         6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     NA                   NA                0.3083004   0.2633100   0.3532908
6         0-24 months   ki1000107-Serrinha-VitA     BRAZIL                         NA                   NA                0.3478261   0.2086692   0.4869829
6         0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     NA                   NA                0.3746770   0.3263895   0.4229646
6         0-24 months   ki1000111-WASH-Kenya        KENYA                          NA                   NA                0.2577320   0.2187656   0.2966983
6         0-24 months   ki1000304-EU                INDIA                          NA                   NA                0.5294118   0.4500624   0.6087612
6         0-24 months   ki1000304-VITAMIN-A         INDIA                          NA                   NA                0.4429967   0.3873402   0.4986533
6         0-24 months   ki1000304-Vitamin-B12       INDIA                          NA                   NA                0.4838710   0.3584624   0.6092795
6         0-24 months   ki1000304-ZnMort            INDIA                          NA                   NA                0.4864865   0.4056885   0.5672845
6         0-24 months   ki1000304b-SAS-CompFeed     INDIA                          NA                   NA                0.5631068   0.4619940   0.6642196
6         0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.2125000   0.1489151   0.2760849
6         0-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   NA                   NA                0.3893939   0.3521650   0.4266229
6         0-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   NA                   NA                0.3281250   0.2317531   0.4244969
6         0-24 months   ki1119695-PROBIT            BELARUS                        NA                   NA                0.1107410   0.0728044   0.1486777
6         0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       NA                   NA                0.3699482   0.3394715   0.4004249
6         0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         NA                   NA                0.5149254   0.4299880   0.5998627
6         0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         NA                   NA                0.4342105   0.3220358   0.5463853
6         0-24 months   ki1148112-LCNI-5            MALAWI                         NA                   NA                0.6176471   0.4518436   0.7834505
6         0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     NA                   NA                0.3845007   0.3531056   0.4158959
6         0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     NA                   NA                0.5021739   0.4524731   0.5518748
6         0-6 months    ki1000304-VITAMIN-A         INDIA                          NA                   NA                0.5151515   0.3419931   0.6883099
6         0-6 months    ki1000304b-SAS-CompFeed     INDIA                          NA                   NA                0.3444444   0.2728408   0.4160481
6         0-6 months    ki1119695-PROBIT            BELARUS                        NA                   NA                0.0486348   0.0239132   0.0733565
6         0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       NA                   NA                0.2631579   0.2325866   0.2937292
6         0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     NA                   NA                0.1739824   0.1501476   0.1978173
6         0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     NA                   NA                0.2124352   0.1670054   0.2578651
6         6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     NA                   NA                0.2319749   0.1855830   0.2783669
6         6-24 months   ki1000111-WASH-Kenya        KENYA                          NA                   NA                0.1000000   0.0705637   0.1294363
6         6-24 months   ki1000304-VITAMIN-A         INDIA                          NA                   NA                0.0740741   0.0366380   0.1115102
6         6-24 months   ki1000304b-SAS-CompFeed     INDIA                          NA                   NA                0.3611111   0.2535900   0.4686322
6         6-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   NA                   NA                0.1295117   0.0991563   0.1598670
6         6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   NA                   NA                0.1602564   0.0733088   0.2472041
6         6-24 months   ki1119695-PROBIT            BELARUS                        NA                   NA                0.0281810   0.0140784   0.0422837
6         6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       NA                   NA                0.1366623   0.1122417   0.1610829
6         6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     NA                   NA                0.1718908   0.1443367   0.1994449
6         6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     NA                   NA                0.3260870   0.2737254   0.3784485
7         0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     NA                   NA                0.4399225   0.3970522   0.4827928
7         0-24 months   ki1000111-WASH-Kenya        KENYA                          NA                   NA                0.2906977   0.2477286   0.3336667
7         0-24 months   ki1000304-EU                INDIA                          NA                   NA                0.4388889   0.3661907   0.5115870
7         0-24 months   ki1000304-VITAMIN-A         INDIA                          NA                   NA                0.4133663   0.3652883   0.4614444
7         0-24 months   ki1000304-Vitamin-B12       INDIA                          NA                   NA                0.3950617   0.2879367   0.5021868
7         0-24 months   ki1000304-ZnMort            INDIA                          NA                   NA                0.4615385   0.3889128   0.5341641
7         0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.2608696   0.2009061   0.3208330
7         0-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   NA                   NA                0.3356890   0.2967506   0.3746275
7         0-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   NA                   NA                0.3673469   0.2656241   0.4690698
7         0-24 months   ki1119695-PROBIT            BELARUS                        NA                   NA                0.1079365   0.0853236   0.1305494
7         0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       NA                   NA                0.3253138   0.2956007   0.3550269
7         0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         NA                   NA                0.4860335   0.4126094   0.5594576
7         0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         NA                   NA                0.3866667   0.2757112   0.4976222
7         0-24 months   ki1148112-LCNI-5            MALAWI                         NA                   NA                0.5483871   0.4235022   0.6732720
7         0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     NA                   NA                0.3905160   0.3615288   0.4195032
7         0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     NA                   NA                0.5549348   0.5088473   0.6010223
7         0-6 months    ki1000304-VITAMIN-A         INDIA                          NA                   NA                0.3571429   0.2104752   0.5038105
7         0-6 months    ki1119695-PROBIT            BELARUS                        NA                   NA                0.0588616   0.0410835   0.0766396
7         0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       NA                   NA                0.1869031   0.1586627   0.2151436
7         0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     NA                   NA                0.1957787   0.1708446   0.2207129
7         0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     NA                   NA                0.2427184   0.2007677   0.2846692
7         6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     NA                   NA                0.2248677   0.1827244   0.2670111
7         6-24 months   ki1000111-WASH-Kenya        KENYA                          NA                   NA                0.0825688   0.0526920   0.1124456
7         6-24 months   ki1000304-VITAMIN-A         INDIA                          NA                   NA                0.0725191   0.0410556   0.1039825
7         6-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   NA                   NA                0.0997625   0.0711018   0.1284231
7         6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   NA                   NA                0.1503268   0.0545992   0.2460544
7         6-24 months   ki1119695-PROBIT            BELARUS                        NA                   NA                0.0249017   0.0146779   0.0351255
7         6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       NA                   NA                0.1246684   0.1010737   0.1482632
7         6-24 months   ki1148112-LCNI-5            MALAWI                         NA                   NA                0.3200000   0.1893891   0.4506109
7         6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     NA                   NA                0.1686275   0.1430702   0.1941847
7         6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     NA                   NA                0.3454988   0.2957621   0.3952355
8         0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     NA                   NA                0.4574830   0.4171813   0.4977847
8         0-24 months   ki1000111-WASH-Kenya        KENYA                          NA                   NA                0.3206107   0.2806120   0.3606094
8         0-24 months   ki1000304-EU                INDIA                          NA                   NA                0.4976526   0.4303479   0.5649573
8         0-24 months   ki1000304-VITAMIN-A         INDIA                          NA                   NA                0.4553571   0.4020289   0.5086854
8         0-24 months   ki1000304-Vitamin-B12       INDIA                          NA                   NA                0.4210526   0.3093135   0.5327917
8         0-24 months   ki1000304-ZnMort            INDIA                          NA                   NA                0.5021277   0.4380648   0.5661905
8         0-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          NA                   NA                0.6716418   0.5583447   0.7849389
8         0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.2175926   0.1624398   0.2727454
8         0-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   NA                   NA                0.3345133   0.2955743   0.3734523
8         0-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   NA                   NA                0.3234323   0.2645408   0.3823239
8         0-24 months   ki1119695-PROBIT            BELARUS                        NA                   NA                0.1110406   0.0923410   0.1297402
8         0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       NA                   NA                0.3111753   0.2829970   0.3393537
8         0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         NA                   NA                0.4852941   0.4165426   0.5540456
8         0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         NA                   NA                0.4795918   0.3801727   0.5790110
8         0-24 months   ki1148112-LCNI-5            MALAWI                         NA                   NA                0.4946237   0.3924594   0.5967879
8         0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     NA                   NA                0.3932828   0.3671742   0.4193914
8         0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     NA                   NA                0.5045045   0.4587352   0.5502738
8         0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          NA                   NA                0.3432836   0.2287345   0.4578327
8         0-6 months    ki1119695-PROBIT            BELARUS                        NA                   NA                0.0571800   0.0437301   0.0706299
8         0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       NA                   NA                0.1674641   0.1421381   0.1927902
8         0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     NA                   NA                0.2478729   0.2238206   0.2719253
8         0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     NA                   NA                0.2546816   0.2139435   0.2954198
8         6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     NA                   NA                0.2139423   0.1744875   0.2533971
8         6-24 months   ki1000111-WASH-Kenya        KENYA                          NA                   NA                0.0761155   0.0494529   0.1027780
8         6-24 months   ki1000304-VITAMIN-A         INDIA                          NA                   NA                0.0776699   0.0410311   0.1143087
8         6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   NA                   NA                0.1204819   0.0853357   0.1556282
8         6-24 months   ki1119695-PROBIT            BELARUS                        NA                   NA                0.0317769   0.0200923   0.0434616
8         6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       NA                   NA                0.1390244   0.1153299   0.1627189
8         6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         NA                   NA                0.2430556   0.1727540   0.3133571
8         6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         NA                   NA                0.2567568   0.1565463   0.3569672
8         6-24 months   ki1148112-LCNI-5            MALAWI                         NA                   NA                0.2608696   0.1565019   0.3652372
8         6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     NA                   NA                0.1502463   0.1275809   0.1729117
8         6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     NA                   NA                0.3194748   0.2721695   0.3667802
9         0-24 months   ki1000107-Serrinha-VitA     BRAZIL                         NA                   NA                0.3333333   0.1617627   0.5049039
9         0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     NA                   NA                0.4003559   0.3598109   0.4409008
9         0-24 months   ki1000111-WASH-Kenya        KENYA                          NA                   NA                0.2862010   0.2496059   0.3227961
9         0-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       NA                   NA                0.5952381   0.4896405   0.7008357
9         0-24 months   ki1000304-EU                INDIA                          NA                   NA                0.4893617   0.4177145   0.5610089
9         0-24 months   ki1000304-VITAMIN-A         INDIA                          NA                   NA                0.4403292   0.3777838   0.5028746
9         0-24 months   ki1000304-Vitamin-B12       INDIA                          NA                   NA                0.5454545   0.4244061   0.6665030
9         0-24 months   ki1000304-ZnMort            INDIA                          NA                   NA                0.5846154   0.5152716   0.6539592
9         0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.2378641   0.1795797   0.2961484
9         0-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   NA                   NA                0.3535912   0.3133424   0.3938399
9         0-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   NA                   NA                0.3479319   0.2761037   0.4197601
9         0-24 months   ki1119695-PROBIT            BELARUS                        NA                   NA                0.1274204   0.0988048   0.1560359
9         0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       NA                   NA                0.2867715   0.2597992   0.3137438
9         0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         NA                   NA                0.4450262   0.3743618   0.5156905
9         0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         NA                   NA                0.4554455   0.3578372   0.5530539
9         0-24 months   ki1148112-LCNI-5            MALAWI                         NA                   NA                0.5698925   0.4687254   0.6710595
9         0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     NA                   NA                0.3772556   0.3532323   0.4012789
9         0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     NA                   NA                0.4516129   0.3979248   0.5053010
9         0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          NA                   NA                0.4769231   0.3545559   0.5992903
9         0-6 months    ki1119695-PROBIT            BELARUS                        NA                   NA                0.0731707   0.0540565   0.0922849
9         0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       NA                   NA                0.1481481   0.1232496   0.1730467
9         0-6 months    ki1148112-LCNI-5            MALAWI                         NA                   NA                0.3773585   0.2456109   0.5091060
9         0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     NA                   NA                0.2805005   0.2568963   0.3041048
9         0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     NA                   NA                0.2581522   0.2081937   0.3081106
9         6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     NA                   NA                0.1766110   0.1400539   0.2131680
9         6-24 months   ki1000111-WASH-Kenya        KENYA                          NA                   NA                0.0675676   0.0441941   0.0909411
9         6-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       NA                   NA                0.4000000   0.2552471   0.5447529
9         6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1329480   0.0822083   0.1836876
9         6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   NA                   NA                0.1849711   0.1377108   0.2322314
9         6-24 months   ki1119695-PROBIT            BELARUS                        NA                   NA                0.0294683   0.0193623   0.0395743
9         6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       NA                   NA                0.1187215   0.0972893   0.1401536
9         6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         NA                   NA                0.2820513   0.1815403   0.3825623
9         6-24 months   ki1148112-LCNI-5            MALAWI                         NA                   NA                0.3043478   0.1949837   0.4137119
9         6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     NA                   NA                0.1837672   0.1590267   0.2085077
9         6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     NA                   NA                0.2446483   0.1926109   0.2966857
10        0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     NA                   NA                0.3993232   0.3598043   0.4388421
10        0-24 months   ki1000111-WASH-Kenya        KENYA                          NA                   NA                0.2420382   0.2085124   0.2755641
10        0-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       NA                   NA                0.5314685   0.4735345   0.5894026
10        0-24 months   ki1000304-EU                INDIA                          NA                   NA                0.4888889   0.4234273   0.5543505
10        0-24 months   ki1000304-VITAMIN-A         INDIA                          NA                   NA                0.4345550   0.3640712   0.5050387
10        0-24 months   ki1000304-Vitamin-B12       INDIA                          NA                   NA                0.4754098   0.3490478   0.6017719
10        0-24 months   ki1000304-ZnMort            INDIA                          NA                   NA                0.5402844   0.4728790   0.6076897
10        0-24 months   ki1000304b-SAS-CompFeed     INDIA                          NA                   NA                0.6751592   0.6097194   0.7405991
10        0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.2314410   0.1766967   0.2861854
10        0-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   NA                   NA                0.3660377   0.3249876   0.4070879
10        0-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   NA                   NA                0.3118280   0.2400940   0.3835619
10        0-24 months   ki1119695-PROBIT            BELARUS                        NA                   NA                0.1311840   0.1060558   0.1563121
10        0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       NA                   NA                0.3306358   0.2992671   0.3620046
10        0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         NA                   NA                0.4629630   0.3963124   0.5296136
10        0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         NA                   NA                0.4322034   0.3424407   0.5219660
10        0-24 months   ki1148112-LCNI-5            MALAWI                         NA                   NA                0.6518519   0.5711930   0.7325107
10        0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     NA                   NA                0.4135957   0.3912179   0.4359735
10        0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     NA                   NA                0.4060150   0.3196282   0.4924019
10        0-6 months    ki1000125-AgaKhanUniv       PAKISTAN                       NA                   NA                0.3015873   0.1873482   0.4158264
10        0-6 months    ki1000304-ZnMort            INDIA                          NA                   NA                0.5000000   0.2861504   0.7138496
10        0-6 months    ki1000304b-SAS-CompFeed     INDIA                          NA                   NA                0.3007519   0.2255823   0.3759215
10        0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          NA                   NA                0.4800000   0.3401146   0.6198854
10        0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0973451   0.0586127   0.1360776
10        0-6 months    ki1119695-PROBIT            BELARUS                        NA                   NA                0.0687110   0.0548110   0.0826109
10        0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       NA                   NA                0.1788991   0.1495027   0.2082955
10        0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         NA                   NA                0.2108844   0.1447139   0.2770548
10        0-6 months    ki1148112-LCNI-5            MALAWI                         NA                   NA                0.4202899   0.3029695   0.5376103
10        0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     NA                   NA                0.3194186   0.2980615   0.3407756
10        0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     NA                   NA                0.2240000   0.1506998   0.2973002
10        6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     NA                   NA                0.1531323   0.1190950   0.1871695
10        6-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       NA                   NA                0.2949640   0.2188791   0.3710490
10        6-24 months   ki1000304-VITAMIN-A         INDIA                          NA                   NA                0.0916667   0.0398221   0.1435112
10        6-24 months   ki1000304b-SAS-CompFeed     INDIA                          NA                   NA                0.4285714   0.3528426   0.5043002
10        6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1250000   0.0780981   0.1719019
10        6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   NA                   NA                0.1553398   0.0808960   0.2297837
10        6-24 months   ki1119695-PROBIT            BELARUS                        NA                   NA                0.0381115   0.0263676   0.0498554
10        6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       NA                   NA                0.1309524   0.1054274   0.1564774
10        6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         NA                   NA                0.2071429   0.1397718   0.2745139
10        6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         NA                   NA                0.2886598   0.1980147   0.3793049
10        6-24 months   ki1148112-LCNI-5            MALAWI                         NA                   NA                0.3855422   0.2801949   0.4908894
10        6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     NA                   NA                0.1902552   0.1652433   0.2152671
11        0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     NA                   NA                0.3560886   0.3157387   0.3964384
11        0-24 months   ki1000111-WASH-Kenya        KENYA                          NA                   NA                0.2131148   0.1805909   0.2456386
11        0-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       NA                   NA                0.4824798   0.4315642   0.5333953
11        0-24 months   ki1000304-EU                INDIA                          NA                   NA                0.5206186   0.4501379   0.5910992
11        0-24 months   ki1000304-VITAMIN-A         INDIA                          NA                   NA                0.4930556   0.4111132   0.5749979
11        0-24 months   ki1000304-Vitamin-B12       INDIA                          NA                   NA                0.4800000   0.3661706   0.5938294
11        0-24 months   ki1000304-ZnMort            INDIA                          NA                   NA                0.4426230   0.3704617   0.5147842
11        0-24 months   ki1000304b-SAS-CompFeed     INDIA                          NA                   NA                0.5813953   0.4752030   0.6875877
11        0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.2009346   0.1471229   0.2547463
11        0-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   NA                   NA                0.3156780   0.2737030   0.3576529
11        0-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   NA                   NA                0.3479532   0.2717268   0.4241797
11        0-24 months   ki1119695-PROBIT            BELARUS                        NA                   NA                0.1323095   0.1044661   0.1601529
11        0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       NA                   NA                0.3061825   0.2778695   0.3344956
11        0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         NA                   NA                0.5565611   0.4909148   0.6222074
11        0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         NA                   NA                0.4065041   0.3193456   0.4936625
11        0-24 months   ki1148112-LCNI-5            MALAWI                         NA                   NA                0.6190476   0.5257160   0.7123792
11        0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     NA                   NA                0.4452555   0.4236080   0.4669029
11        0-6 months    ki1000125-AgaKhanUniv       PAKISTAN                       NA                   NA                0.2159091   0.1294507   0.3023675
11        0-6 months    ki1000304b-SAS-CompFeed     INDIA                          NA                   NA                0.2884615   0.2192570   0.3576661
11        0-6 months    ki1119695-PROBIT            BELARUS                        NA                   NA                0.0777171   0.0554536   0.0999805
11        0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       NA                   NA                0.1432193   0.1187613   0.1676772
11        0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         NA                   NA                0.3351648   0.2663955   0.4039342
11        0-6 months    ki1148112-LCNI-5            MALAWI                         NA                   NA                0.3666667   0.1912782   0.5420551
11        0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     NA                   NA                0.3315217   0.3109993   0.3520442
11        6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     NA                   NA                0.1322115   0.0996229   0.1648001
11        6-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       NA                   NA                0.3036649   0.2382800   0.3690499
11        6-24 months   ki1000304b-SAS-CompFeed     INDIA                          NA                   NA                0.2758621   0.0700933   0.4816309
11        6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1235955   0.0751096   0.1720814
11        6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   NA                   NA                0.1444444   0.0939771   0.1949118
11        6-24 months   ki1119695-PROBIT            BELARUS                        NA                   NA                0.0292862   0.0172808   0.0412915
11        6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       NA                   NA                0.1412911   0.1174503   0.1651319
11        6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         NA                   NA                0.2718447   0.1855030   0.3581863
11        6-24 months   ki1148112-LCNI-5            MALAWI                         NA                   NA                0.3947368   0.2841144   0.5053593
11        6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     NA                   NA                0.2418856   0.2131455   0.2706257
12        0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     NA                   NA                0.2881773   0.2440674   0.3322873
12        0-24 months   ki1000111-WASH-Kenya        KENYA                          NA                   NA                0.2443730   0.2105756   0.2781703
12        0-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       NA                   NA                0.5495751   0.4975992   0.6015509
12        0-24 months   ki1000304-EU                INDIA                          NA                   NA                0.4450867   0.3708158   0.5193576
12        0-24 months   ki1000304-VITAMIN-A         INDIA                          NA                   NA                0.4858934   0.4309606   0.5408262
12        0-24 months   ki1000304-Vitamin-B12       INDIA                          NA                   NA                0.4461538   0.3243685   0.5679392
12        0-24 months   ki1000304-ZnMort            INDIA                          NA                   NA                0.5642458   0.4914019   0.6370897
12        0-24 months   ki1000304b-SAS-CompFeed     INDIA                          NA                   NA                0.5378788   0.4421340   0.6336236
12        0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1894737   0.1336041   0.2453432
12        0-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   NA                   NA                0.3237113   0.2820272   0.3653954
12        0-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   NA                   NA                0.3426791   0.2563298   0.4290284
12        0-24 months   ki1119695-PROBIT            BELARUS                        NA                   NA                0.1276366   0.0965478   0.1587253
12        0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       NA                   NA                0.2887850   0.2616177   0.3159524
12        0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         NA                   NA                0.4615385   0.3830576   0.5400193
12        0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         NA                   NA                0.4620690   0.3803166   0.5438213
12        0-24 months   ki1148112-LCNI-5            MALAWI                         NA                   NA                0.5789474   0.4791379   0.6787569
12        0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     NA                   NA                0.4292365   0.4035171   0.4549559
12        0-6 months    ki1000125-AgaKhanUniv       PAKISTAN                       NA                   NA                0.3773585   0.2456109   0.5091060
12        0-6 months    ki1000304b-SAS-CompFeed     INDIA                          NA                   NA                0.2752294   0.1946935   0.3557652
12        0-6 months    ki1119695-PROBIT            BELARUS                        NA                   NA                0.0591918   0.0423185   0.0760652
12        0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       NA                   NA                0.1200480   0.0979632   0.1421328
12        0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         NA                   NA                0.2203390   0.1452366   0.2954414
12        0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     NA                   NA                0.2835408   0.2550837   0.3119979
12        6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     NA                   NA                0.1015385   0.0686502   0.1344267
12        6-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       NA                   NA                0.2857143   0.2211383   0.3502903
12        6-24 months   ki1000304-VITAMIN-A         INDIA                          NA                   NA                0.1141304   0.0680615   0.1601994
12        6-24 months   ki1000304b-SAS-CompFeed     INDIA                          NA                   NA                0.3195876   0.2181682   0.4210070
12        6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   NA                   NA                0.1634981   0.1123072   0.2146890
12        6-24 months   ki1119695-PROBIT            BELARUS                        NA                   NA                0.0480398   0.0239278   0.0721517
12        6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       NA                   NA                0.1494253   0.1257221   0.1731285
12        6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         NA                   NA                0.2727273   0.1925022   0.3529523
12        6-24 months   ki1148112-LCNI-5            MALAWI                         NA                   NA                0.3484848   0.2326483   0.4643214
12        6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     NA                   NA                0.2344771   0.2062873   0.2626670


### Parameter: RR


brthmon   agecat        studyid                     country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
--------  ------------  --------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
1         0-24 months   ki1000107-Serrinha-VitA     BRAZIL                         Control              Control           1.0000000   1.0000000   1.0000000
1         0-24 months   ki1000107-Serrinha-VitA     BRAZIL                         Other                Control           0.7986111   0.4714320   1.3528561
1         0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
1         0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                  Control           0.5714286   0.3282513   0.9947580
1         0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                Control           0.8450491   0.5604791   1.2741029
1         0-24 months   ki1000111-WASH-Kenya        KENYA                          Control              Control           1.0000000   1.0000000   1.0000000
1         0-24 months   ki1000111-WASH-Kenya        KENYA                          LNS                  Control           0.8901639   0.5667975   1.3980157
1         0-24 months   ki1000111-WASH-Kenya        KENYA                          Other                Control           1.1745745   0.8286957   1.6648153
1         0-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Control              Control           1.0000000   1.0000000   1.0000000
1         0-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Other                Control           1.0505319   0.9441078   1.1689527
1         0-24 months   ki1000304-EU                INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
1         0-24 months   ki1000304-EU                INDIA                          Zinc                 Control           0.8800774   0.6186953   1.2518862
1         0-24 months   ki1000304-VITAMIN-A         INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
1         0-24 months   ki1000304-VITAMIN-A         INDIA                          Other                Control           0.8676664   0.7644469   0.9848232
1         0-24 months   ki1000304-Vitamin-B12       INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
1         0-24 months   ki1000304-Vitamin-B12       INDIA                          Other                Control           0.9117647   0.7314051   1.1365998
1         0-24 months   ki1000304-ZnMort            INDIA                          Other                Other             1.0000000   1.0000000   1.0000000
1         0-24 months   ki1000304-ZnMort            INDIA                          Zinc                 Other             1.0801964   0.8176113   1.4271136
1         0-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
1         0-24 months   ki1000304b-SAS-CompFeed     INDIA                          Other                Control           0.8456633   0.7573251   0.9443056
1         0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              Control           1.0000000   1.0000000   1.0000000
1         0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                Control           1.0059524   0.5685117   1.7799813
1         0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                 Control           0.6842105   0.3144390   1.4888233
1         0-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Control              Control           1.0000000   1.0000000   1.0000000
1         0-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc                 Control           1.1849942   0.8173237   1.7180601
1         0-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Control              Control           1.0000000   1.0000000   1.0000000
1         0-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   LNS                  Control           0.8093341   0.6632886   0.9875364
1         0-24 months   ki1119695-PROBIT            BELARUS                        Control              Control           1.0000000   1.0000000   1.0000000
1         0-24 months   ki1119695-PROBIT            BELARUS                        Other                Control           0.9744646   0.8099869   1.1723415
1         0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control              Control           1.0000000   1.0000000   1.0000000
1         0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Other                Control           1.0120002   0.9343769   1.0960720
1         0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
1         0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS                  Control           0.8531469   0.7274668   1.0005399
1         0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
1         0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         LNS                  Control           1.3028571   0.7252913   2.3403516
1         0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Other                Control           1.4928571   0.9015561   2.4719731
1         0-24 months   ki1148112-LCNI-5            MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
1         0-24 months   ki1148112-LCNI-5            MALAWI                         LNS                  Control           1.1111111   0.9250528   1.3345919
1         0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
1         0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Other                Control           0.9852164   0.9234516   1.0511123
1         0-6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Control              Control           1.0000000   1.0000000   1.0000000
1         0-6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Other                Control           0.8742857   0.5938569   1.2871376
1         0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
1         0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Other                Control           0.7371429   0.6143265   0.8845127
1         0-6 months    ki1119695-PROBIT            BELARUS                        Control              Control           1.0000000   1.0000000   1.0000000
1         0-6 months    ki1119695-PROBIT            BELARUS                        Other                Control           1.0498339   0.7682354   1.4346530
1         0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control              Control           1.0000000   1.0000000   1.0000000
1         0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Other                Control           1.0523247   0.9133999   1.2123794
1         0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
1         0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         LNS                  Control           0.6571429   0.4871956   0.8863723
1         0-6 months    ki1148112-LCNI-5            MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
1         0-6 months    ki1148112-LCNI-5            MALAWI                         LNS                  Control           1.0256410   0.6385483   1.6473921
1         0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
1         0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Other                Control           0.8412610   0.7425362   0.9531118
1         6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
1         6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                  Control           0.4156545   0.1808041   0.9555574
1         6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                Control           0.6508876   0.3557028   1.1910356
1         6-24 months   ki1000111-WASH-Kenya        KENYA                          Control              Control           1.0000000   1.0000000   1.0000000
1         6-24 months   ki1000111-WASH-Kenya        KENYA                          LNS                  Control           0.7883598   0.2716297   2.2880829
1         6-24 months   ki1000111-WASH-Kenya        KENYA                          Other                Control           1.4089835   0.6402653   3.1006433
1         6-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Control              Control           1.0000000   1.0000000   1.0000000
1         6-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Other                Control           0.9617347   0.7736733   1.1955093
1         6-24 months   ki1000304-VITAMIN-A         INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
1         6-24 months   ki1000304-VITAMIN-A         INDIA                          Other                Control           0.9683996   0.6303878   1.4876521
1         6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              Control           1.0000000   1.0000000   1.0000000
1         6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                Control           1.3636364   0.5438635   3.4190641
1         6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                 Control           1.0714286   0.3453771   3.3237850
1         6-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Control              Control           1.0000000   1.0000000   1.0000000
1         6-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc                 Control           1.1360000   0.4593667   2.8092935
1         6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Control              Control           1.0000000   1.0000000   1.0000000
1         6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   LNS                  Control           0.8888889   0.6330875   1.2480478
1         6-24 months   ki1119695-PROBIT            BELARUS                        Control              Control           1.0000000   1.0000000   1.0000000
1         6-24 months   ki1119695-PROBIT            BELARUS                        Other                Control           0.8871563   0.6292891   1.2506911
1         6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control              Control           1.0000000   1.0000000   1.0000000
1         6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Other                Control           1.1225712   0.9630718   1.3084862
1         6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
1         6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Other                Control           1.2443964   1.1018105   1.4054345
2         0-24 months   ki1000107-Serrinha-VitA     BRAZIL                         Control              Control           1.0000000   1.0000000   1.0000000
2         0-24 months   ki1000107-Serrinha-VitA     BRAZIL                         Other                Control           1.8055556   1.1695517   2.7874193
2         0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
2         0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                  Control           0.5032680   0.2343297   1.0808645
2         0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                Control           0.9243697   0.5768533   1.4812420
2         0-24 months   ki1000111-WASH-Kenya        KENYA                          Control              Control           1.0000000   1.0000000   1.0000000
2         0-24 months   ki1000111-WASH-Kenya        KENYA                          LNS                  Control           0.7989886   0.4875320   1.3094173
2         0-24 months   ki1000111-WASH-Kenya        KENYA                          Other                Control           1.1981043   0.8284493   1.7326997
2         0-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Control              Control           1.0000000   1.0000000   1.0000000
2         0-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Other                Control           1.2000000   0.9854833   1.4612120
2         0-24 months   ki1000304-EU                INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
2         0-24 months   ki1000304-EU                INDIA                          Zinc                 Control           0.8973214   0.5941293   1.3552366
2         0-24 months   ki1000304-VITAMIN-A         INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
2         0-24 months   ki1000304-VITAMIN-A         INDIA                          Other                Control           0.9531250   0.8405248   1.0808096
2         0-24 months   ki1000304-Vitamin-B12       INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
2         0-24 months   ki1000304-Vitamin-B12       INDIA                          Other                Control           0.8340548   0.6742102   1.0317962
2         0-24 months   ki1000304-ZnMort            INDIA                          Other                Other             1.0000000   1.0000000   1.0000000
2         0-24 months   ki1000304-ZnMort            INDIA                          Zinc                 Other             1.2377998   0.8798513   1.7413721
2         0-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
2         0-24 months   ki1000304b-SAS-CompFeed     INDIA                          Other                Control           1.2345679   0.9152592   1.6652746
2         0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              Control           1.0000000   1.0000000   1.0000000
2         0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                Control           1.3827160   0.5341431   3.5793848
2         0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                 Control           2.1333333   0.8207250   5.5452329
2         0-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Control              Control           1.0000000   1.0000000   1.0000000
2         0-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc                 Control           1.2234120   0.8776672   1.7053582
2         0-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Control              Control           1.0000000   1.0000000   1.0000000
2         0-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   LNS                  Control           0.9538131   0.6454742   1.4094435
2         0-24 months   ki1119695-PROBIT            BELARUS                        Control              Control           1.0000000   1.0000000   1.0000000
2         0-24 months   ki1119695-PROBIT            BELARUS                        Other                Control           0.7826067   0.6224177   0.9840229
2         0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control              Control           1.0000000   1.0000000   1.0000000
2         0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Other                Control           0.8370852   0.7628044   0.9185993
2         0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
2         0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS                  Control           1.0676190   0.9116967   1.2502080
2         0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
2         0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         LNS                  Control           1.0714286   0.6138578   1.8700734
2         0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Other                Control           1.2698413   0.7723570   2.0877611
2         0-24 months   ki1148112-LCNI-5            MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
2         0-24 months   ki1148112-LCNI-5            MALAWI                         LNS                  Control           0.6872727   0.4875314   0.9688480
2         0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
2         0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Other                Control           0.9695243   0.9043663   1.0393768
2         0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
2         0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     LNS                  Control           0.9725906   0.7661792   1.2346099
2         0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     MMN                  Control           1.0956328   0.8601711   1.3955492
2         0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Other                Control           1.0124496   0.8135520   1.2599737
2         0-6 months    ki1119695-PROBIT            BELARUS                        Control              Control           1.0000000   1.0000000   1.0000000
2         0-6 months    ki1119695-PROBIT            BELARUS                        Other                Control           0.8702305   0.6367831   1.1892607
2         0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control              Control           1.0000000   1.0000000   1.0000000
2         0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Other                Control           0.7094859   0.5957003   0.8450059
2         0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
2         0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Other                Control           0.7797030   0.6732490   0.9029894
2         0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
2         0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     LNS                  Control           1.0218579   0.6597246   1.5827720
2         0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     MMN                  Control           1.3600000   0.8492580   2.1779013
2         0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     Other                Control           1.2209945   0.8043675   1.8534160
2         6-24 months   ki1000111-WASH-Kenya        KENYA                          Control              Control           1.0000000   1.0000000   1.0000000
2         6-24 months   ki1000111-WASH-Kenya        KENYA                          LNS                  Control           0.6887755   0.2427674   1.9541818
2         6-24 months   ki1000111-WASH-Kenya        KENYA                          Other                Control           1.3965517   0.6659656   2.9286150
2         6-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Control              Control           1.0000000   1.0000000   1.0000000
2         6-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Other                Control           0.8000000   0.5950060   1.0756194
2         6-24 months   ki1000304-VITAMIN-A         INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
2         6-24 months   ki1000304-VITAMIN-A         INDIA                          Other                Control           0.8219178   0.4634090   1.4577811
2         6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
2         6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Other                Control           1.3066667   0.6579530   2.5949844
2         6-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Control              Control           1.0000000   1.0000000   1.0000000
2         6-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc                 Control           0.7202139   0.3818626   1.3583632
2         6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Control              Control           1.0000000   1.0000000   1.0000000
2         6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   LNS                  Control           0.3839286   0.2223187   0.6630174
2         6-24 months   ki1119695-PROBIT            BELARUS                        Control              Control           1.0000000   1.0000000   1.0000000
2         6-24 months   ki1119695-PROBIT            BELARUS                        Other                Control           0.9304584   0.5860868   1.4771752
2         6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control              Control           1.0000000   1.0000000   1.0000000
2         6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Other                Control           0.7881184   0.6534413   0.9505530
2         6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
2         6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         LNS                  Control           1.1513158   0.5037241   2.6314566
2         6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Other                Control           1.4945652   0.7284770   3.0662946
2         6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
2         6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Other                Control           1.2305516   1.0814214   1.4002472
2         6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
2         6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     LNS                  Control           0.8144792   0.5490623   1.2081988
2         6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     MMN                  Control           1.0243569   0.7000602   1.4988811
2         6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Other                Control           0.7850520   0.5522593   1.1159736
3         0-24 months   ki1000107-Serrinha-VitA     BRAZIL                         Control              Control           1.0000000   1.0000000   1.0000000
3         0-24 months   ki1000107-Serrinha-VitA     BRAZIL                         Other                Control           1.1711712   0.8073697   1.6989020
3         0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
3         0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                  Control           0.6707317   0.3174346   1.4172399
3         0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                Control           1.2890625   0.7912664   2.1000288
3         0-24 months   ki1000111-WASH-Kenya        KENYA                          Control              Control           1.0000000   1.0000000   1.0000000
3         0-24 months   ki1000111-WASH-Kenya        KENYA                          LNS                  Control           0.6875695   0.4473685   1.0567392
3         0-24 months   ki1000111-WASH-Kenya        KENYA                          Other                Control           0.8113208   0.5911171   1.1135549
3         0-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Control              Control           1.0000000   1.0000000   1.0000000
3         0-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Other                Control           1.1000000   0.7553059   1.6019998
3         0-24 months   ki1000304-EU                INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
3         0-24 months   ki1000304-EU                INDIA                          Zinc                 Control           0.7070376   0.5061992   0.9875602
3         0-24 months   ki1000304-VITAMIN-A         INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
3         0-24 months   ki1000304-VITAMIN-A         INDIA                          Other                Control           0.8004901   0.7101892   0.9022727
3         0-24 months   ki1000304-Vitamin-B12       INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
3         0-24 months   ki1000304-Vitamin-B12       INDIA                          Other                Control           0.9752322   0.7443921   1.2776571
3         0-24 months   ki1000304-ZnMort            INDIA                          Other                Other             1.0000000   1.0000000   1.0000000
3         0-24 months   ki1000304-ZnMort            INDIA                          Zinc                 Other             0.8715789   0.6336784   1.1987941
3         0-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
3         0-24 months   ki1000304b-SAS-CompFeed     INDIA                          Other                Control           1.3600000   1.0138083   1.8244080
3         0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              Control           1.0000000   1.0000000   1.0000000
3         0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                Control           0.7463415   0.3843224   1.4493705
3         0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                 Control           1.0279070   0.5139941   2.0556514
3         0-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Control              Control           1.0000000   1.0000000   1.0000000
3         0-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc                 Control           1.5458333   1.1189067   2.1356568
3         0-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Control              Control           1.0000000   1.0000000   1.0000000
3         0-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   LNS                  Control           0.8277027   0.6268958   1.0928319
3         0-24 months   ki1119695-PROBIT            BELARUS                        Control              Control           1.0000000   1.0000000   1.0000000
3         0-24 months   ki1119695-PROBIT            BELARUS                        Other                Control           0.8769700   0.6880644   1.1177390
3         0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control              Control           1.0000000   1.0000000   1.0000000
3         0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Other                Control           0.9612050   0.8824024   1.0470451
3         0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
3         0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS                  Control           1.1242138   0.9493716   1.3312562
3         0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
3         0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         LNS                  Control           1.3902439   0.6954529   2.7791646
3         0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Other                Control           1.3846154   0.6620455   2.8958127
3         0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
3         0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Other                Control           0.9114415   0.8503604   0.9769101
3         0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
3         0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     LNS                  Control           0.9250000   0.7569770   1.1303183
3         0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     MMN                  Control           1.0500000   0.8521556   1.2937779
3         0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Other                Control           0.8897059   0.7197386   1.0998112
3         0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
3         0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Other                Control           2.0714286   1.1593233   3.7011388
3         0-6 months    ki1119695-PROBIT            BELARUS                        Control              Control           1.0000000   1.0000000   1.0000000
3         0-6 months    ki1119695-PROBIT            BELARUS                        Other                Control           0.8600252   0.5922312   1.2489098
3         0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control              Control           1.0000000   1.0000000   1.0000000
3         0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Other                Control           0.9632107   0.8218546   1.1288795
3         0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
3         0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         LNS                  Control           1.3809524   1.0432406   1.8279862
3         0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
3         0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Other                Control           0.8080201   0.7314211   0.8926409
3         0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
3         0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     LNS                  Control           1.4044286   0.9870192   1.9983598
3         0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     MMN                  Control           1.4255385   0.9777319   2.0784430
3         0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     Other                Control           1.2131602   0.8389936   1.7541941
3         6-24 months   ki1000111-WASH-Kenya        KENYA                          Control              Control           1.0000000   1.0000000   1.0000000
3         6-24 months   ki1000111-WASH-Kenya        KENYA                          LNS                  Control           0.7943925   0.3310408   1.9062890
3         6-24 months   ki1000111-WASH-Kenya        KENYA                          Other                Control           0.7175325   0.3462605   1.4868944
3         6-24 months   ki1000304-VITAMIN-A         INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
3         6-24 months   ki1000304-VITAMIN-A         INDIA                          Other                Control           1.5488506   0.9690102   2.4756584
3         6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
3         6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Other                Control           1.1637931   0.7256106   1.8665858
3         6-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Control              Control           1.0000000   1.0000000   1.0000000
3         6-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc                 Control           0.9509346   0.5000636   1.8083232
3         6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Control              Control           1.0000000   1.0000000   1.0000000
3         6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   LNS                  Control           0.5120000   0.2813068   0.9318793
3         6-24 months   ki1119695-PROBIT            BELARUS                        Control              Control           1.0000000   1.0000000   1.0000000
3         6-24 months   ki1119695-PROBIT            BELARUS                        Other                Control           1.1231448   0.7265629   1.7361942
3         6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control              Control           1.0000000   1.0000000   1.0000000
3         6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Other                Control           0.6876688   0.5738291   0.8240927
3         6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
3         6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Other                Control           1.0969036   0.9501042   1.2663848
3         6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
3         6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     LNS                  Control           0.8660037   0.6132686   1.2228938
3         6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     MMN                  Control           0.9073396   0.6183184   1.3314581
3         6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Other                Control           0.8777137   0.6190553   1.2444467
4         0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
4         0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                  Control           1.1029412   0.6855613   1.7744281
4         0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                Control           1.0781250   0.7034948   1.6522560
4         0-24 months   ki1000111-WASH-Kenya        KENYA                          Control              Control           1.0000000   1.0000000   1.0000000
4         0-24 months   ki1000111-WASH-Kenya        KENYA                          LNS                  Control           0.8616583   0.5935496   1.2508726
4         0-24 months   ki1000111-WASH-Kenya        KENYA                          Other                Control           1.0954224   0.8161259   1.4703004
4         0-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Control              Control           1.0000000   1.0000000   1.0000000
4         0-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Other                Control           1.1888112   0.9384720   1.5059289
4         0-24 months   ki1000304-EU                INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
4         0-24 months   ki1000304-EU                INDIA                          Zinc                 Control           0.8775660   0.5431822   1.4177969
4         0-24 months   ki1000304-VITAMIN-A         INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
4         0-24 months   ki1000304-VITAMIN-A         INDIA                          Other                Control           1.0133116   0.8928379   1.1500412
4         0-24 months   ki1000304-Vitamin-B12       INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
4         0-24 months   ki1000304-Vitamin-B12       INDIA                          Other                Control           0.6000000   0.4093529   0.8794369
4         0-24 months   ki1000304-ZnMort            INDIA                          Other                Other             1.0000000   1.0000000   1.0000000
4         0-24 months   ki1000304-ZnMort            INDIA                          Zinc                 Other             0.9729032   0.6591173   1.4360732
4         0-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
4         0-24 months   ki1000304b-SAS-CompFeed     INDIA                          Other                Control           0.9629630   0.7562845   1.2261229
4         0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              Control           1.0000000   1.0000000   1.0000000
4         0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                Control           0.6929699   0.4081788   1.1764629
4         0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                 Control           1.0938673   0.6540990   1.8293036
4         0-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Control              Control           1.0000000   1.0000000   1.0000000
4         0-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc                 Control           1.4251497   1.0383455   1.9560462
4         0-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Control              Control           1.0000000   1.0000000   1.0000000
4         0-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   LNS                  Control           0.9166667   0.6980412   1.2037654
4         0-24 months   ki1119695-PROBIT            BELARUS                        Control              Control           1.0000000   1.0000000   1.0000000
4         0-24 months   ki1119695-PROBIT            BELARUS                        Other                Control           0.9716663   0.7441554   1.2687340
4         0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control              Control           1.0000000   1.0000000   1.0000000
4         0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Other                Control           0.9696552   0.8815582   1.0665559
4         0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
4         0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS                  Control           1.1797753   0.9570263   1.4543694
4         0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
4         0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         LNS                  Control           1.2727273   0.6708667   2.4145405
4         0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Other                Control           0.6060606   0.2465264   1.4899398
4         0-24 months   ki1148112-LCNI-5            MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
4         0-24 months   ki1148112-LCNI-5            MALAWI                         LNS                  Control           1.3722222   1.0293898   1.8292331
4         0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
4         0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Other                Control           0.8628205   0.7927572   0.9390760
4         0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
4         0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     LNS                  Control           0.9875831   0.8092645   1.2051938
4         0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     MMN                  Control           1.0909091   0.8710493   1.3662633
4         0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Other                Control           0.8727273   0.6970256   1.0927187
4         0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
4         0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Other                Control           1.0971429   0.6819289   1.7651730
4         0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              Control           1.0000000   1.0000000   1.0000000
4         0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                Control           0.5897436   0.1797159   1.9352627
4         0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                 Control           1.1744681   0.3838554   3.5934760
4         0-6 months    ki1119695-PROBIT            BELARUS                        Control              Control           1.0000000   1.0000000   1.0000000
4         0-6 months    ki1119695-PROBIT            BELARUS                        Other                Control           1.1541444   0.8133524   1.6377272
4         0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control              Control           1.0000000   1.0000000   1.0000000
4         0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Other                Control           1.0116838   0.8638407   1.1848299
4         0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
4         0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         LNS                  Control           0.6594203   0.4806568   0.9046686
4         0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
4         0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Other                Control           0.8315972   0.7111209   0.9724844
4         0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
4         0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     LNS                  Control           1.0406977   0.7186217   1.5071234
4         0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     MMN                  Control           1.2364082   0.8030186   1.9036985
4         0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     Other                Control           0.8717532   0.5745596   1.3226717
4         6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
4         6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                  Control           1.1206897   0.5781176   2.1724737
4         6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                Control           0.8993711   0.4830299   1.6745719
4         6-24 months   ki1000111-WASH-Kenya        KENYA                          Control              Control           1.0000000   1.0000000   1.0000000
4         6-24 months   ki1000111-WASH-Kenya        KENYA                          LNS                  Control           0.8105647   0.2781003   2.3625115
4         6-24 months   ki1000111-WASH-Kenya        KENYA                          Other                Control           1.2170940   0.5249643   2.8217496
4         6-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Control              Control           1.0000000   1.0000000   1.0000000
4         6-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Other                Control           1.1529412   0.7335964   1.8119955
4         6-24 months   ki1000304-VITAMIN-A         INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
4         6-24 months   ki1000304-VITAMIN-A         INDIA                          Other                Control           1.0471698   0.6720293   1.6317215
4         6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
4         6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Other                Control           0.7083333   0.4230396   1.1860263
4         6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              Control           1.0000000   1.0000000   1.0000000
4         6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                Control           0.5552239   0.2686469   1.1475045
4         6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                 Control           1.1272727   0.5689595   2.2334523
4         6-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Control              Control           1.0000000   1.0000000   1.0000000
4         6-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc                 Control           1.1907442   0.6782916   2.0903573
4         6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Control              Control           1.0000000   1.0000000   1.0000000
4         6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   LNS                  Control           0.5827068   0.4075831   0.8330746
4         6-24 months   ki1119695-PROBIT            BELARUS                        Control              Control           1.0000000   1.0000000   1.0000000
4         6-24 months   ki1119695-PROBIT            BELARUS                        Other                Control           0.7387332   0.4965572   1.0990207
4         6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control              Control           1.0000000   1.0000000   1.0000000
4         6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Other                Control           0.9137647   0.7448328   1.1210111
4         6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
4         6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Other                Control           0.9825390   0.8330175   1.1588988
4         6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
4         6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     LNS                  Control           0.9516129   0.6831329   1.3256091
4         6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     MMN                  Control           1.0344828   0.6842399   1.5640050
4         6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Other                Control           0.8414634   0.5807376   1.2192438
5         0-24 months   ki1000107-Serrinha-VitA     BRAZIL                         Control              Control           1.0000000   1.0000000   1.0000000
5         0-24 months   ki1000107-Serrinha-VitA     BRAZIL                         Other                Control           1.5238095   1.0500726   2.2112713
5         0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
5         0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                  Control           0.9475741   0.6463272   1.3892292
5         0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                Control           1.1314367   0.8366644   1.5300627
5         0-24 months   ki1000111-WASH-Kenya        KENYA                          Control              Control           1.0000000   1.0000000   1.0000000
5         0-24 months   ki1000111-WASH-Kenya        KENYA                          LNS                  Control           1.1498459   0.7671471   1.7234577
5         0-24 months   ki1000111-WASH-Kenya        KENYA                          Other                Control           1.1489186   0.8200771   1.6096218
5         0-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Control              Control           1.0000000   1.0000000   1.0000000
5         0-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Other                Control           1.1666667   0.8292133   1.6414487
5         0-24 months   ki1000304-EU                INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
5         0-24 months   ki1000304-EU                INDIA                          Zinc                 Control           1.0668896   0.7047241   1.6151760
5         0-24 months   ki1000304-VITAMIN-A         INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
5         0-24 months   ki1000304-VITAMIN-A         INDIA                          Other                Control           0.9900746   0.8747957   1.1205448
5         0-24 months   ki1000304-Vitamin-B12       INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
5         0-24 months   ki1000304-Vitamin-B12       INDIA                          Other                Control           0.8614865   0.6734753   1.1019840
5         0-24 months   ki1000304-ZnMort            INDIA                          Other                Other             1.0000000   1.0000000   1.0000000
5         0-24 months   ki1000304-ZnMort            INDIA                          Zinc                 Other             0.8857143   0.6332152   1.2388992
5         0-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
5         0-24 months   ki1000304b-SAS-CompFeed     INDIA                          Other                Control           0.7068966   0.6553742   0.7624693
5         0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              Control           1.0000000   1.0000000   1.0000000
5         0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                Control           0.8132388   0.3900504   1.6955688
5         0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                 Control           1.0920635   0.4696504   2.5393414
5         0-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Control              Control           1.0000000   1.0000000   1.0000000
5         0-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc                 Control           2.0547382   1.3977199   3.0205974
5         0-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Control              Control           1.0000000   1.0000000   1.0000000
5         0-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   LNS                  Control           0.9787500   0.7616284   1.2577676
5         0-24 months   ki1119695-PROBIT            BELARUS                        Control              Control           1.0000000   1.0000000   1.0000000
5         0-24 months   ki1119695-PROBIT            BELARUS                        Other                Control           0.8387097   0.6465070   1.0880531
5         0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control              Control           1.0000000   1.0000000   1.0000000
5         0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Other                Control           1.0227825   0.9340206   1.1199797
5         0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
5         0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS                  Control           0.8825043   0.7335344   1.0617277
5         0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
5         0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         LNS                  Control           1.3043478   0.6394702   2.6605202
5         0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Other                Control           1.1379310   0.5580279   2.3204701
5         0-24 months   ki1148112-LCNI-5            MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
5         0-24 months   ki1148112-LCNI-5            MALAWI                         LNS                  Control           1.0952381   0.7889383   1.5204567
5         0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
5         0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Other                Control           1.0250183   0.9464475   1.1101119
5         0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
5         0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     LNS                  Control           0.8298557   0.6525239   1.0553798
5         0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     MMN                  Control           0.9759836   0.7438948   1.2804823
5         0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Other                Control           0.8632407   0.6906215   1.0790058
5         0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
5         0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Other                Control           0.7857143   0.5617275   1.0990151
5         0-6 months    ki1119695-PROBIT            BELARUS                        Control              Control           1.0000000   1.0000000   1.0000000
5         0-6 months    ki1119695-PROBIT            BELARUS                        Other                Control           0.9059047   0.5895400   1.3920402
5         0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control              Control           1.0000000   1.0000000   1.0000000
5         0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Other                Control           1.1231343   0.9704609   1.2998265
5         0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
5         0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Other                Control           0.9410315   0.8200691   1.0798362
5         0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
5         0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     LNS                  Control           0.8428621   0.5635788   1.2605451
5         0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     MMN                  Control           0.9405271   0.5646917   1.5665028
5         0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     Other                Control           0.5895508   0.3546675   0.9799887
5         6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
5         6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                  Control           0.9454545   0.4761924   1.8771496
5         6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                Control           1.3088435   0.7670552   2.2333093
5         6-24 months   ki1000111-WASH-Kenya        KENYA                          Control              Control           1.0000000   1.0000000   1.0000000
5         6-24 months   ki1000111-WASH-Kenya        KENYA                          LNS                  Control           1.2268817   0.4827498   3.1180517
5         6-24 months   ki1000111-WASH-Kenya        KENYA                          Other                Control           0.7601036   0.3162095   1.8271356
5         6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
5         6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Other                Control           0.7154472   0.5227633   0.9791518
5         6-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Control              Control           1.0000000   1.0000000   1.0000000
5         6-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc                 Control           1.7573402   0.8964883   3.4448245
5         6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Control              Control           1.0000000   1.0000000   1.0000000
5         6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   LNS                  Control           0.8699360   0.5423643   1.3953511
5         6-24 months   ki1119695-PROBIT            BELARUS                        Control              Control           1.0000000   1.0000000   1.0000000
5         6-24 months   ki1119695-PROBIT            BELARUS                        Other                Control           0.8122744   0.5345058   1.2343918
5         6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control              Control           1.0000000   1.0000000   1.0000000
5         6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Other                Control           1.3508772   1.1205890   1.6284911
5         6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
5         6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Other                Control           1.3702091   1.1602341   1.6181846
5         6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
5         6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     LNS                  Control           0.7991164   0.5462536   1.1690303
5         6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     MMN                  Control           0.9041332   0.5593047   1.4615589
5         6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Other                Control           0.8592471   0.5957748   1.2392362
6         0-24 months   ki1000107-Serrinha-VitA     BRAZIL                         Control              Control           1.0000000   1.0000000   1.0000000
6         0-24 months   ki1000107-Serrinha-VitA     BRAZIL                         Other                Control           1.0000000   0.6702691   1.4919380
6         0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
6         0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                  Control           1.3805310   0.8805382   2.1644328
6         0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                Control           1.7894737   1.1956577   2.6782047
6         0-24 months   ki1000111-WASH-Kenya        KENYA                          Control              Control           1.0000000   1.0000000   1.0000000
6         0-24 months   ki1000111-WASH-Kenya        KENYA                          LNS                  Control           1.0453504   0.6797111   1.6076793
6         0-24 months   ki1000111-WASH-Kenya        KENYA                          Other                Control           1.2957075   0.9089206   1.8470896
6         0-24 months   ki1000304-EU                INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
6         0-24 months   ki1000304-EU                INDIA                          Zinc                 Control           0.8593750   0.6310439   1.1703233
6         0-24 months   ki1000304-VITAMIN-A         INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
6         0-24 months   ki1000304-VITAMIN-A         INDIA                          Other                Control           1.1101010   0.9787364   1.2590971
6         0-24 months   ki1000304-Vitamin-B12       INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
6         0-24 months   ki1000304-Vitamin-B12       INDIA                          Other                Control           1.0714286   0.8265597   1.3888401
6         0-24 months   ki1000304-ZnMort            INDIA                          Other                Other             1.0000000   1.0000000   1.0000000
6         0-24 months   ki1000304-ZnMort            INDIA                          Zinc                 Other             1.2500000   0.8931108   1.7495030
6         0-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
6         0-24 months   ki1000304b-SAS-CompFeed     INDIA                          Other                Control           0.7665094   0.6510193   0.9024873
6         0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              Control           1.0000000   1.0000000   1.0000000
6         0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                Control           0.9609610   0.4665079   1.9794863
6         0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                 Control           0.8695652   0.3816000   1.9815088
6         0-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Control              Control           1.0000000   1.0000000   1.0000000
6         0-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc                 Control           1.2798972   0.9843315   1.6642127
6         0-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Control              Control           1.0000000   1.0000000   1.0000000
6         0-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   LNS                  Control           0.9255137   0.6931340   1.2358009
6         0-24 months   ki1119695-PROBIT            BELARUS                        Control              Control           1.0000000   1.0000000   1.0000000
6         0-24 months   ki1119695-PROBIT            BELARUS                        Other                Control           0.7046177   0.5028639   0.9873171
6         0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control              Control           1.0000000   1.0000000   1.0000000
6         0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Other                Control           1.0758621   0.9907192   1.1683221
6         0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
6         0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS                  Control           0.7597477   0.6429627   0.8977450
6         0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
6         0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         LNS                  Control           0.9890110   0.5185715   1.8862256
6         0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Other                Control           1.0153846   0.5536393   1.8622339
6         0-24 months   ki1148112-LCNI-5            MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
6         0-24 months   ki1148112-LCNI-5            MALAWI                         LNS                  Control           1.0227273   0.7819105   1.3377120
6         0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
6         0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Other                Control           0.8922976   0.8222984   0.9682556
6         0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
6         0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     LNS                  Control           1.1017380   0.8242475   1.4726482
6         0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     MMN                  Control           1.1786241   0.8624571   1.6106942
6         0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Other                Control           1.2326414   0.9275566   1.6380723
6         0-6 months    ki1000304-VITAMIN-A         INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
6         0-6 months    ki1000304-VITAMIN-A         INDIA                          Other                Control           1.9479167   1.3401992   2.8312054
6         0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
6         0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Other                Control           0.8609626   0.6980608   1.0618796
6         0-6 months    ki1119695-PROBIT            BELARUS                        Control              Control           1.0000000   1.0000000   1.0000000
6         0-6 months    ki1119695-PROBIT            BELARUS                        Other                Control           0.6245583   0.4041977   0.9650553
6         0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control              Control           1.0000000   1.0000000   1.0000000
6         0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Other                Control           0.9945552   0.8854749   1.1170729
6         0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
6         0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Other                Control           0.9130307   0.7956547   1.0477222
6         0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
6         0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     LNS                  Control           0.8338907   0.4641648   1.4981182
6         0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     MMN                  Control           0.6929348   0.3428706   1.4004077
6         0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     Other                Control           1.1625158   0.6738859   2.0054480
6         6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
6         6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                  Control           1.0215054   0.5634081   1.8520736
6         6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                Control           1.3356164   0.7981350   2.2350494
6         6-24 months   ki1000111-WASH-Kenya        KENYA                          Control              Control           1.0000000   1.0000000   1.0000000
6         6-24 months   ki1000111-WASH-Kenya        KENYA                          LNS                  Control           0.8046647   0.3507974   1.8457531
6         6-24 months   ki1000111-WASH-Kenya        KENYA                          Other                Control           1.0818815   0.5583102   2.0964469
6         6-24 months   ki1000304-VITAMIN-A         INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
6         6-24 months   ki1000304-VITAMIN-A         INDIA                          Other                Control           0.8426966   0.5073633   1.3996631
6         6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
6         6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Other                Control           0.8000000   0.5933676   1.0785894
6         6-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Control              Control           1.0000000   1.0000000   1.0000000
6         6-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc                 Control           0.8457332   0.5030428   1.4218764
6         6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Control              Control           1.0000000   1.0000000   1.0000000
6         6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   LNS                  Control           0.5347826   0.3310646   0.8638569
6         6-24 months   ki1119695-PROBIT            BELARUS                        Control              Control           1.0000000   1.0000000   1.0000000
6         6-24 months   ki1119695-PROBIT            BELARUS                        Other                Control           0.7769160   0.4750054   1.2707191
6         6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control              Control           1.0000000   1.0000000   1.0000000
6         6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Other                Control           1.7791304   1.4784963   2.1408948
6         6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
6         6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Other                Control           0.9062967   0.7727458   1.0629289
6         6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
6         6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     LNS                  Control           0.9956897   0.6198776   1.5993446
6         6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     MMN                  Control           1.2390805   0.7579183   2.0257069
6         6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Other                Control           1.2413793   0.7912758   1.9475165
7         0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
7         0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                  Control           0.7583165   0.5767991   0.9969570
7         0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                Control           0.8035842   0.6440611   1.0026186
7         0-24 months   ki1000111-WASH-Kenya        KENYA                          Control              Control           1.0000000   1.0000000   1.0000000
7         0-24 months   ki1000111-WASH-Kenya        KENYA                          LNS                  Control           0.7149390   0.4528967   1.1285970
7         0-24 months   ki1000111-WASH-Kenya        KENYA                          Other                Control           1.0295122   0.7422344   1.4279794
7         0-24 months   ki1000304-EU                INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
7         0-24 months   ki1000304-EU                INDIA                          Zinc                 Control           0.9120968   0.6549509   1.2702029
7         0-24 months   ki1000304-VITAMIN-A         INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
7         0-24 months   ki1000304-VITAMIN-A         INDIA                          Other                Control           0.9702583   0.8637049   1.0899569
7         0-24 months   ki1000304-Vitamin-B12       INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
7         0-24 months   ki1000304-Vitamin-B12       INDIA                          Other                Control           0.7500000   0.5692615   0.9881224
7         0-24 months   ki1000304-ZnMort            INDIA                          Other                Other             1.0000000   1.0000000   1.0000000
7         0-24 months   ki1000304-ZnMort            INDIA                          Zinc                 Other             1.0720867   0.7825060   1.4688321
7         0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              Control           1.0000000   1.0000000   1.0000000
7         0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                Control           1.1613150   0.6526955   2.0662813
7         0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                 Control           0.9166667   0.4472339   1.8788329
7         0-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Control              Control           1.0000000   1.0000000   1.0000000
7         0-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc                 Control           0.9266670   0.7012487   1.2245467
7         0-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Control              Control           1.0000000   1.0000000   1.0000000
7         0-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   LNS                  Control           0.9090909   0.6842249   1.2078577
7         0-24 months   ki1119695-PROBIT            BELARUS                        Control              Control           1.0000000   1.0000000   1.0000000
7         0-24 months   ki1119695-PROBIT            BELARUS                        Other                Control           0.8054394   0.6650205   0.9755077
7         0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control              Control           1.0000000   1.0000000   1.0000000
7         0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Other                Control           1.1068331   1.0100811   1.2128527
7         0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
7         0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS                  Control           1.0111336   0.8693598   1.1760276
7         0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
7         0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         LNS                  Control           0.8839286   0.4404361   1.7739911
7         0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Other                Control           0.7758621   0.3758129   1.6017596
7         0-24 months   ki1148112-LCNI-5            MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
7         0-24 months   ki1148112-LCNI-5            MALAWI                         LNS                  Control           1.1250000   0.8950980   1.4139513
7         0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
7         0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Other                Control           1.0942726   1.0155814   1.1790611
7         0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
7         0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     LNS                  Control           1.1031604   0.8881898   1.3701608
7         0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     MMN                  Control           1.0703485   0.8214041   1.3947407
7         0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Other                Control           1.0374470   0.8136198   1.3228491
7         0-6 months    ki1000304-VITAMIN-A         INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
7         0-6 months    ki1000304-VITAMIN-A         INDIA                          Other                Control           2.0000000   1.2767578   3.1329357
7         0-6 months    ki1119695-PROBIT            BELARUS                        Control              Control           1.0000000   1.0000000   1.0000000
7         0-6 months    ki1119695-PROBIT            BELARUS                        Other                Control           0.8462526   0.6300703   1.1366088
7         0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control              Control           1.0000000   1.0000000   1.0000000
7         0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Other                Control           1.3200000   1.1332849   1.5374774
7         0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
7         0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Other                Control           0.9307111   0.8195915   1.0568961
7         0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
7         0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     LNS                  Control           1.5239024   0.9147554   2.5386882
7         0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     MMN                  Control           1.3816216   0.7468401   2.5559396
7         0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     Other                Control           1.5988148   0.9460858   2.7018785
7         6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
7         6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                  Control           0.5964912   0.3454465   1.0299765
7         6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                Control           0.7224959   0.4721913   1.1054849
7         6-24 months   ki1000111-WASH-Kenya        KENYA                          Control              Control           1.0000000   1.0000000   1.0000000
7         6-24 months   ki1000111-WASH-Kenya        KENYA                          LNS                  Control           0.9493671   0.3429835   2.6278173
7         6-24 months   ki1000111-WASH-Kenya        KENYA                          Other                Control           1.0979730   0.4717915   2.5552486
7         6-24 months   ki1000304-VITAMIN-A         INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
7         6-24 months   ki1000304-VITAMIN-A         INDIA                          Other                Control           0.9138462   0.5918913   1.4109259
7         6-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Control              Control           1.0000000   1.0000000   1.0000000
7         6-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc                 Control           0.6324405   0.3380207   1.1833031
7         6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Control              Control           1.0000000   1.0000000   1.0000000
7         6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   LNS                  Control           0.6080808   0.3633030   1.0177793
7         6-24 months   ki1119695-PROBIT            BELARUS                        Control              Control           1.0000000   1.0000000   1.0000000
7         6-24 months   ki1119695-PROBIT            BELARUS                        Other                Control           0.9243380   0.6161725   1.3866258
7         6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control              Control           1.0000000   1.0000000   1.0000000
7         6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Other                Control           0.9963899   0.8245835   1.2039930
7         6-24 months   ki1148112-LCNI-5            MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
7         6-24 months   ki1148112-LCNI-5            MALAWI                         LNS                  Control           0.6277056   0.4107876   0.9591680
7         6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
7         6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Other                Control           1.1633319   0.9972256   1.3571061
7         6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
7         6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     LNS                  Control           0.9770965   0.6926412   1.3783726
7         6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     MMN                  Control           1.0232558   0.6575069   1.5924585
7         6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Other                Control           0.8071135   0.5214816   1.2491952
8         0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
8         0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                  Control           0.7212625   0.5554730   0.9365343
8         0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                Control           0.9052801   0.7461295   1.0983779
8         0-24 months   ki1000111-WASH-Kenya        KENYA                          Control              Control           1.0000000   1.0000000   1.0000000
8         0-24 months   ki1000111-WASH-Kenya        KENYA                          LNS                  Control           1.0478955   0.7427066   1.4784910
8         0-24 months   ki1000111-WASH-Kenya        KENYA                          Other                Control           1.0526863   0.7881120   1.4060799
8         0-24 months   ki1000304-EU                INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
8         0-24 months   ki1000304-EU                INDIA                          Zinc                 Control           0.8838299   0.6728434   1.1609764
8         0-24 months   ki1000304-VITAMIN-A         INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
8         0-24 months   ki1000304-VITAMIN-A         INDIA                          Other                Control           0.9941757   0.8843031   1.1176996
8         0-24 months   ki1000304-Vitamin-B12       INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
8         0-24 months   ki1000304-Vitamin-B12       INDIA                          Other                Control           1.0200000   0.7822349   1.3300352
8         0-24 months   ki1000304-ZnMort            INDIA                          Other                Other             1.0000000   1.0000000   1.0000000
8         0-24 months   ki1000304-ZnMort            INDIA                          Zinc                 Other             0.9913793   0.7680972   1.2795685
8         0-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
8         0-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Other                Control           0.9350000   0.7896897   1.1070488
8         0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              Control           1.0000000   1.0000000   1.0000000
8         0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                Control           1.1660839   0.6122893   2.2207669
8         0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                 Control           1.2693603   0.6216198   2.5920596
8         0-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Control              Control           1.0000000   1.0000000   1.0000000
8         0-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc                 Control           0.9475108   0.7062524   1.2711840
8         0-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Control              Control           1.0000000   1.0000000   1.0000000
8         0-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   LNS                  Control           0.7652715   0.6381372   0.9177344
8         0-24 months   ki1119695-PROBIT            BELARUS                        Control              Control           1.0000000   1.0000000   1.0000000
8         0-24 months   ki1119695-PROBIT            BELARUS                        Other                Control           0.8376681   0.7125246   0.9847909
8         0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control              Control           1.0000000   1.0000000   1.0000000
8         0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Other                Control           0.9729909   0.8887456   1.0652219
8         0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
8         0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS                  Control           1.0336134   0.8970616   1.1909514
8         0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
8         0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         LNS                  Control           0.9375000   0.5596881   1.5703501
8         0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Other                Control           1.0312500   0.6278489   1.6938415
8         0-24 months   ki1148112-LCNI-5            MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
8         0-24 months   ki1148112-LCNI-5            MALAWI                         LNS                  Control           0.9777778   0.7952902   1.2021390
8         0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
8         0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Other                Control           0.9219097   0.8626596   0.9852293
8         0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
8         0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     LNS                  Control           0.9627329   0.7572501   1.2239743
8         0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     MMN                  Control           0.8779264   0.6210139   1.2411233
8         0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Other                Control           1.0613811   0.8278609   1.3607718
8         0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
8         0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Other                Control           0.7771429   0.5549497   1.0882987
8         0-6 months    ki1119695-PROBIT            BELARUS                        Control              Control           1.0000000   1.0000000   1.0000000
8         0-6 months    ki1119695-PROBIT            BELARUS                        Other                Control           0.8541667   0.6768530   1.0779309
8         0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control              Control           1.0000000   1.0000000   1.0000000
8         0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Other                Control           0.8890379   0.7640799   1.0344316
8         0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
8         0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Other                Control           0.8200365   0.7434253   0.9045425
8         0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
8         0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     LNS                  Control           0.7717061   0.5015601   1.1873560
8         0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     MMN                  Control           0.8611111   0.5073801   1.4614533
8         0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     Other                Control           0.9124356   0.5912422   1.4081180
8         6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
8         6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                  Control           0.5285714   0.2947255   0.9479593
8         6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                Control           0.9316071   0.6202241   1.3993199
8         6-24 months   ki1000111-WASH-Kenya        KENYA                          Control              Control           1.0000000   1.0000000   1.0000000
8         6-24 months   ki1000111-WASH-Kenya        KENYA                          LNS                  Control           1.7768860   0.6868020   4.5971384
8         6-24 months   ki1000111-WASH-Kenya        KENYA                          Other                Control           1.3516484   0.5549703   3.2919836
8         6-24 months   ki1000304-VITAMIN-A         INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
8         6-24 months   ki1000304-VITAMIN-A         INDIA                          Other                Control           0.8244444   0.5131683   1.3245335
8         6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Control              Control           1.0000000   1.0000000   1.0000000
8         6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   LNS                  Control           0.6774194   0.5082780   0.9028465
8         6-24 months   ki1119695-PROBIT            BELARUS                        Control              Control           1.0000000   1.0000000   1.0000000
8         6-24 months   ki1119695-PROBIT            BELARUS                        Other                Control           1.0552654   0.7282541   1.5291162
8         6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control              Control           1.0000000   1.0000000   1.0000000
8         6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Other                Control           0.9099726   0.7672508   1.0792431
8         6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
8         6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS                  Control           1.3220339   0.9877968   1.7693656
8         6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
8         6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         LNS                  Control           1.2820513   0.5154512   3.1887705
8         6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Other                Control           0.9057971   0.3169335   2.5887710
8         6-24 months   ki1148112-LCNI-5            MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
8         6-24 months   ki1148112-LCNI-5            MALAWI                         LNS                  Control           1.0909091   0.7308289   1.6284011
8         6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
8         6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Other                Control           0.8272787   0.7113508   0.9620993
8         6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
8         6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     LNS                  Control           0.9764603   0.6666714   1.4302021
8         6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     MMN                  Control           0.6054054   0.3140367   1.1671112
8         6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Other                Control           1.0943867   0.7394559   1.6196804
9         0-24 months   ki1000107-Serrinha-VitA     BRAZIL                         Control              Control           1.0000000   1.0000000   1.0000000
9         0-24 months   ki1000107-Serrinha-VitA     BRAZIL                         Other                Control           1.1428571   0.6818857   1.9154566
9         0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
9         0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                  Control           0.8931685   0.6606626   1.2074999
9         0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                Control           1.0486594   0.8174792   1.3452165
9         0-24 months   ki1000111-WASH-Kenya        KENYA                          Control              Control           1.0000000   1.0000000   1.0000000
9         0-24 months   ki1000111-WASH-Kenya        KENYA                          LNS                  Control           1.0749415   0.7545982   1.5312772
9         0-24 months   ki1000111-WASH-Kenya        KENYA                          Other                Control           1.0607553   0.7914940   1.4216176
9         0-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Control              Control           1.0000000   1.0000000   1.0000000
9         0-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Other                Control           0.7366667   0.6138982   0.8839866
9         0-24 months   ki1000304-EU                INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
9         0-24 months   ki1000304-EU                INDIA                          Zinc                 Control           1.0920543   0.8139005   1.4652681
9         0-24 months   ki1000304-VITAMIN-A         INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
9         0-24 months   ki1000304-VITAMIN-A         INDIA                          Other                Control           0.8803245   0.7633627   1.0152072
9         0-24 months   ki1000304-Vitamin-B12       INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
9         0-24 months   ki1000304-Vitamin-B12       INDIA                          Other                Control           1.2618596   1.0074117   1.5805749
9         0-24 months   ki1000304-ZnMort            INDIA                          Other                Other             1.0000000   1.0000000   1.0000000
9         0-24 months   ki1000304-ZnMort            INDIA                          Zinc                 Other             0.8348214   0.6564522   1.0616566
9         0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              Control           1.0000000   1.0000000   1.0000000
9         0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                Control           1.2238532   0.6503194   2.3032015
9         0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                 Control           0.9019608   0.4123987   1.9726861
9         0-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Control              Control           1.0000000   1.0000000   1.0000000
9         0-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc                 Control           1.2053043   0.8496640   1.7098036
9         0-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Control              Control           1.0000000   1.0000000   1.0000000
9         0-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   LNS                  Control           0.7426332   0.6018725   0.9163139
9         0-24 months   ki1119695-PROBIT            BELARUS                        Control              Control           1.0000000   1.0000000   1.0000000
9         0-24 months   ki1119695-PROBIT            BELARUS                        Other                Control           0.8889121   0.7128658   1.1084339
9         0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control              Control           1.0000000   1.0000000   1.0000000
9         0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Other                Control           1.0828226   0.9855425   1.1897049
9         0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
9         0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS                  Control           1.1335404   0.9668240   1.3290049
9         0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
9         0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         LNS                  Control           0.8367347   0.4953261   1.4134626
9         0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Other                Control           0.7931548   0.4729446   1.3301654
9         0-24 months   ki1148112-LCNI-5            MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
9         0-24 months   ki1148112-LCNI-5            MALAWI                         LNS                  Control           0.9735577   0.8151731   1.1627157
9         0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
9         0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Other                Control           0.9166864   0.8600872   0.9770101
9         0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
9         0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     LNS                  Control           1.3891547   0.9691888   1.9910990
9         0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     MMN                  Control           1.1818182   0.7600157   1.8377177
9         0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Other                Control           1.3074713   0.8936549   1.9129097
9         0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
9         0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Other                Control           1.4756944   1.1335891   1.9210436
9         0-6 months    ki1119695-PROBIT            BELARUS                        Control              Control           1.0000000   1.0000000   1.0000000
9         0-6 months    ki1119695-PROBIT            BELARUS                        Other                Control           1.1783373   0.9079898   1.5291788
9         0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control              Control           1.0000000   1.0000000   1.0000000
9         0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Other                Control           0.9881154   0.8352503   1.1689576
9         0-6 months    ki1148112-LCNI-5            MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
9         0-6 months    ki1148112-LCNI-5            MALAWI                         LNS                  Control           0.5591716   0.3852028   0.8117097
9         0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
9         0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Other                Control           0.8736183   0.8024427   0.9511070
9         0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
9         0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     LNS                  Control           1.7291799   0.8970722   3.3331355
9         0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     MMN                  Control           1.9020979   0.9241983   3.9147187
9         0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     Other                Control           1.7032967   0.8802423   3.2959330
9         6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
9         6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                  Control           0.7662399   0.4168788   1.4083797
9         6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                Control           1.0015256   0.6107181   1.6424165
9         6-24 months   ki1000111-WASH-Kenya        KENYA                          Control              Control           1.0000000   1.0000000   1.0000000
9         6-24 months   ki1000111-WASH-Kenya        KENYA                          LNS                  Control           1.6630435   0.5519823   5.0105112
9         6-24 months   ki1000111-WASH-Kenya        KENYA                          Other                Control           2.3065327   0.9372076   5.6765362
9         6-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Control              Control           1.0000000   1.0000000   1.0000000
9         6-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Other                Control           0.5333333   0.3609819   0.7879743
9         6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              Control           1.0000000   1.0000000   1.0000000
9         6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                Control           1.0250000   0.3797600   2.7665496
9         6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                 Control           1.3045455   0.4479356   3.7992939
9         6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Control              Control           1.0000000   1.0000000   1.0000000
9         6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   LNS                  Control           0.5781022   0.4553644   0.7339224
9         6-24 months   ki1119695-PROBIT            BELARUS                        Control              Control           1.0000000   1.0000000   1.0000000
9         6-24 months   ki1119695-PROBIT            BELARUS                        Other                Control           0.9881092   0.7023951   1.3900435
9         6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control              Control           1.0000000   1.0000000   1.0000000
9         6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Other                Control           1.1184544   0.9334904   1.3400677
9         6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
9         6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         LNS                  Control           0.9523810   0.3486361   2.6016513
9         6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Other                Control           1.3793103   0.6076844   3.1307319
9         6-24 months   ki1148112-LCNI-5            MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
9         6-24 months   ki1148112-LCNI-5            MALAWI                         LNS                  Control           1.6071429   1.1065815   2.3341329
9         6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
9         6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Other                Control           0.9044889   0.7910460   1.0342005
9         6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
9         6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     LNS                  Control           1.0841121   0.6142981   1.9132392
9         6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     MMN                  Control           0.9600000   0.4695486   1.9627361
9         6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Other                Control           0.8510638   0.4622796   1.5668214
10        0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
10        0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                  Control           1.0515713   0.7830472   1.4121783
10        0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                Control           1.0844402   0.8406672   1.3989016
10        0-24 months   ki1000111-WASH-Kenya        KENYA                          Control              Control           1.0000000   1.0000000   1.0000000
10        0-24 months   ki1000111-WASH-Kenya        KENYA                          LNS                  Control           0.5802557   0.3612783   0.9319592
10        0-24 months   ki1000111-WASH-Kenya        KENYA                          Other                Control           1.0698565   0.7953804   1.4390508
10        0-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Control              Control           1.0000000   1.0000000   1.0000000
10        0-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Other                Control           0.8594763   0.7702020   0.9590983
10        0-24 months   ki1000304-EU                INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
10        0-24 months   ki1000304-EU                INDIA                          Zinc                 Control           0.9381266   0.7174786   1.2266309
10        0-24 months   ki1000304-VITAMIN-A         INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
10        0-24 months   ki1000304-VITAMIN-A         INDIA                          Other                Control           0.9263848   0.7875153   1.0897425
10        0-24 months   ki1000304-Vitamin-B12       INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
10        0-24 months   ki1000304-Vitamin-B12       INDIA                          Other                Control           0.8965517   0.6867751   1.1704050
10        0-24 months   ki1000304-ZnMort            INDIA                          Other                Other             1.0000000   1.0000000   1.0000000
10        0-24 months   ki1000304-ZnMort            INDIA                          Zinc                 Other             0.8962682   0.6970007   1.1525049
10        0-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
10        0-24 months   ki1000304b-SAS-CompFeed     INDIA                          Other                Control           1.0647803   0.9690600   1.1699556
10        0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              Control           1.0000000   1.0000000   1.0000000
10        0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                Control           0.9030612   0.5055737   1.6130577
10        0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                 Control           1.0899015   0.5786390   2.0528951
10        0-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Control              Control           1.0000000   1.0000000   1.0000000
10        0-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc                 Control           1.1099366   0.7545973   1.6326048
10        0-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Control              Control           1.0000000   1.0000000   1.0000000
10        0-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   LNS                  Control           1.0177936   0.8112449   1.2769310
10        0-24 months   ki1119695-PROBIT            BELARUS                        Control              Control           1.0000000   1.0000000   1.0000000
10        0-24 months   ki1119695-PROBIT            BELARUS                        Other                Control           0.8106857   0.6823144   0.9632089
10        0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control              Control           1.0000000   1.0000000   1.0000000
10        0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Other                Control           1.0143515   0.9225375   1.1153032
10        0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
10        0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS                  Control           0.8268156   0.7154616   0.9555008
10        0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
10        0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         LNS                  Control           1.2906977   0.7703033   2.1626553
10        0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Other                Control           1.1127820   0.6364198   1.9457026
10        0-24 months   ki1148112-LCNI-5            MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
10        0-24 months   ki1148112-LCNI-5            MALAWI                         LNS                  Control           1.1325388   1.0000385   1.2825949
10        0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
10        0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Other                Control           0.8436513   0.7995592   0.8901749
10        0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
10        0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     LNS                  Control           0.8796296   0.5224263   1.4810670
10        0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     MMN                  Control           1.0555556   0.6097736   1.8272314
10        0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Other                Control           0.5428571   0.2754643   1.0698078
10        0-6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Control              Control           1.0000000   1.0000000   1.0000000
10        0-6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Other                Control           0.8718750   0.5962018   1.2750146
10        0-6 months    ki1000304-ZnMort            INDIA                          Other                Other             1.0000000   1.0000000   1.0000000
10        0-6 months    ki1000304-ZnMort            INDIA                          Zinc                 Other             1.0000000   0.4236044   2.3606929
10        0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
10        0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Other                Control           1.2549020   1.0085947   1.5613595
10        0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
10        0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Other                Control           1.0540541   0.7874672   1.4108905
10        0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              Control           1.0000000   1.0000000   1.0000000
10        0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                Control           1.1693694   0.4254386   3.2141528
10        0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                 Control           1.2642857   0.4077579   3.9200186
10        0-6 months    ki1119695-PROBIT            BELARUS                        Control              Control           1.0000000   1.0000000   1.0000000
10        0-6 months    ki1119695-PROBIT            BELARUS                        Other                Control           0.9198202   0.7546676   1.1211151
10        0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control              Control           1.0000000   1.0000000   1.0000000
10        0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Other                Control           0.8780876   0.7448079   1.0352172
10        0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
10        0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         LNS                  Control           0.6944444   0.5057690   0.9535047
10        0-6 months    ki1148112-LCNI-5            MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
10        0-6 months    ki1148112-LCNI-5            MALAWI                         LNS                  Control           0.9607843   0.7266987   1.2702740
10        0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
10        0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Other                Control           0.7944770   0.7433710   0.8490965
10        0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
10        0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     LNS                  Control           0.8484848   0.3534952   2.0365951
10        0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     MMN                  Control           1.0909091   0.4439834   2.6804664
10        0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     Other                Control           0.7058824   0.2954776   1.6863201
10        6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
10        6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                  Control           1.4036697   0.7114876   2.7692524
10        6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                Control           1.3909091   0.7554603   2.5608602
10        6-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Control              Control           1.0000000   1.0000000   1.0000000
10        6-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Other                Control           0.7611940   0.5861304   0.9885451
10        6-24 months   ki1000304-VITAMIN-A         INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
10        6-24 months   ki1000304-VITAMIN-A         INDIA                          Other                Control           0.7795699   0.4406895   1.3790418
10        6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
10        6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Other                Control           1.3888889   1.2319996   1.5657573
10        6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              Control           1.0000000   1.0000000   1.0000000
10        6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                Control           0.4535147   0.1859225   1.1062436
10        6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                 Control           0.8838384   0.3582034   2.1808011
10        6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Control              Control           1.0000000   1.0000000   1.0000000
10        6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   LNS                  Control           0.8935676   0.5504370   1.4505985
10        6-24 months   ki1119695-PROBIT            BELARUS                        Control              Control           1.0000000   1.0000000   1.0000000
10        6-24 months   ki1119695-PROBIT            BELARUS                        Other                Control           0.8486106   0.6319784   1.1395008
10        6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control              Control           1.0000000   1.0000000   1.0000000
10        6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Other                Control           0.9807300   0.8070387   1.1918033
10        6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
10        6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS                  Control           0.5160256   0.3681080   0.7233813
10        6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
10        6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         LNS                  Control           1.8288288   0.7991391   4.1852725
10        6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Other                Control           1.2473118   0.4899865   3.1751626
10        6-24 months   ki1148112-LCNI-5            MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
10        6-24 months   ki1148112-LCNI-5            MALAWI                         LNS                  Control           0.9669670   0.7357261   1.2708874
10        6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
10        6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Other                Control           0.8958944   0.7861858   1.0209124
11        0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
11        0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                  Control           0.7573333   0.5428205   1.0566177
11        0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                Control           0.8877831   0.6870605   1.1471462
11        0-24 months   ki1000111-WASH-Kenya        KENYA                          Control              Control           1.0000000   1.0000000   1.0000000
11        0-24 months   ki1000111-WASH-Kenya        KENYA                          LNS                  Control           0.8157713   0.5176269   1.2856420
11        0-24 months   ki1000111-WASH-Kenya        KENYA                          Other                Control           1.0843917   0.7717241   1.5237380
11        0-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Control              Control           1.0000000   1.0000000   1.0000000
11        0-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Other                Control           0.7196727   0.6458431   0.8019421
11        0-24 months   ki1000304-EU                INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
11        0-24 months   ki1000304-EU                INDIA                          Zinc                 Control           1.0612245   0.8093020   1.3915664
11        0-24 months   ki1000304-VITAMIN-A         INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
11        0-24 months   ki1000304-VITAMIN-A         INDIA                          Other                Control           0.9448040   0.8000327   1.1157726
11        0-24 months   ki1000304-Vitamin-B12       INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
11        0-24 months   ki1000304-Vitamin-B12       INDIA                          Other                Control           0.9598214   0.7571102   1.2168072
11        0-24 months   ki1000304-ZnMort            INDIA                          Other                Other             1.0000000   1.0000000   1.0000000
11        0-24 months   ki1000304-ZnMort            INDIA                          Zinc                 Other             0.7664926   0.5529687   1.0624669
11        0-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
11        0-24 months   ki1000304b-SAS-CompFeed     INDIA                          Other                Control           0.9091674   0.7706866   1.0725310
11        0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              Control           1.0000000   1.0000000   1.0000000
11        0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                Control           0.8242424   0.4145880   1.6386763
11        0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                 Control           1.4408233   0.7277945   2.8524150
11        0-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Control              Control           1.0000000   1.0000000   1.0000000
11        0-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc                 Control           1.3009709   0.8210447   2.0614287
11        0-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Control              Control           1.0000000   1.0000000   1.0000000
11        0-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   LNS                  Control           1.0382090   0.8335527   1.2931131
11        0-24 months   ki1119695-PROBIT            BELARUS                        Control              Control           1.0000000   1.0000000   1.0000000
11        0-24 months   ki1119695-PROBIT            BELARUS                        Other                Control           0.9802297   0.7960867   1.2069669
11        0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control              Control           1.0000000   1.0000000   1.0000000
11        0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Other                Control           0.9972038   0.9091261   1.0938146
11        0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
11        0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS                  Control           1.2190476   1.0827170   1.3725443
11        0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
11        0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         LNS                  Control           1.6666667   0.9481820   2.9295830
11        0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Other                Control           1.3821138   0.7589755   2.5168645
11        0-24 months   ki1148112-LCNI-5            MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
11        0-24 months   ki1148112-LCNI-5            MALAWI                         LNS                  Control           1.0358423   0.8908200   1.2044736
11        0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
11        0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Other                Control           0.9373209   0.8928812   0.9839725
11        0-6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Control              Control           1.0000000   1.0000000   1.0000000
11        0-6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Other                Control           1.1783626   0.7882949   1.7614453
11        0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
11        0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Other                Control           1.1515152   0.9056409   1.4641423
11        0-6 months    ki1119695-PROBIT            BELARUS                        Control              Control           1.0000000   1.0000000   1.0000000
11        0-6 months    ki1119695-PROBIT            BELARUS                        Other                Control           0.8315058   0.6253904   1.1055526
11        0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control              Control           1.0000000   1.0000000   1.0000000
11        0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Other                Control           1.1477650   0.9672240   1.3620056
11        0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
11        0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         LNS                  Control           1.0549363   0.8592008   1.2952626
11        0-6 months    ki1148112-LCNI-5            MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
11        0-6 months    ki1148112-LCNI-5            MALAWI                         LNS                  Control           0.9176471   0.5683832   1.4815288
11        0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
11        0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Other                Control           0.8931475   0.8394599   0.9502687
11        6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
11        6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                  Control           0.4363636   0.2012032   0.9463726
11        6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                Control           0.6976077   0.4105473   1.1853845
11        6-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Control              Control           1.0000000   1.0000000   1.0000000
11        6-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Other                Control           0.5640074   0.4492390   0.7080961
11        6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
11        6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Other                Control           0.6730769   0.3805203   1.1905609
11        6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              Control           1.0000000   1.0000000   1.0000000
11        6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                Control           0.5348837   0.1992779   1.4356866
11        6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                 Control           1.1428571   0.4504555   2.8995593
11        6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Control              Control           1.0000000   1.0000000   1.0000000
11        6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   LNS                  Control           0.9119497   0.6381467   1.3032306
11        6-24 months   ki1119695-PROBIT            BELARUS                        Control              Control           1.0000000   1.0000000   1.0000000
11        6-24 months   ki1119695-PROBIT            BELARUS                        Other                Control           1.3057671   0.8393690   2.0313209
11        6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control              Control           1.0000000   1.0000000   1.0000000
11        6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Other                Control           0.7328404   0.6179127   0.8691438
11        6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
11        6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         LNS                  Control           1.9444444   0.8889215   4.2533160
11        6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Other                Control           1.0937500   0.4289228   2.7890547
11        6-24 months   ki1148112-LCNI-5            MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
11        6-24 months   ki1148112-LCNI-5            MALAWI                         LNS                  Control           1.0842491   0.8189483   1.4354949
11        6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
11        6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Other                Control           1.0992937   0.9760018   1.2381603
12        0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
12        0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                  Control           0.8677686   0.5409349   1.3920757
12        0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                Control           1.2500000   0.8408884   1.8581539
12        0-24 months   ki1000111-WASH-Kenya        KENYA                          Control              Control           1.0000000   1.0000000   1.0000000
12        0-24 months   ki1000111-WASH-Kenya        KENYA                          LNS                  Control           0.7090336   0.4619133   1.0883616
12        0-24 months   ki1000111-WASH-Kenya        KENYA                          Other                Control           1.1083744   0.8206872   1.4969087
12        0-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Control              Control           1.0000000   1.0000000   1.0000000
12        0-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Other                Control           0.8285164   0.7530528   0.9115422
12        0-24 months   ki1000304-EU                INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
12        0-24 months   ki1000304-EU                INDIA                          Zinc                 Control           0.8679577   0.6125772   1.2298052
12        0-24 months   ki1000304-VITAMIN-A         INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
12        0-24 months   ki1000304-VITAMIN-A         INDIA                          Other                Control           1.0576923   0.9445448   1.1843938
12        0-24 months   ki1000304-Vitamin-B12       INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
12        0-24 months   ki1000304-Vitamin-B12       INDIA                          Other                Control           1.0549451   0.8027968   1.3862899
12        0-24 months   ki1000304-ZnMort            INDIA                          Other                Other             1.0000000   1.0000000   1.0000000
12        0-24 months   ki1000304-ZnMort            INDIA                          Zinc                 Other             1.1676245   0.9013836   1.5125048
12        0-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
12        0-24 months   ki1000304b-SAS-CompFeed     INDIA                          Other                Control           0.8285714   0.7103176   0.9665121
12        0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              Control           1.0000000   1.0000000   1.0000000
12        0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                Control           1.3481481   0.6667072   2.7260894
12        0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                 Control           0.7222222   0.2770534   1.8826873
12        0-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Control              Control           1.0000000   1.0000000   1.0000000
12        0-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc                 Control           0.8560950   0.6170069   1.1878290
12        0-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Control              Control           1.0000000   1.0000000   1.0000000
12        0-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   LNS                  Control           0.7496568   0.5768263   0.9742712
12        0-24 months   ki1119695-PROBIT            BELARUS                        Control              Control           1.0000000   1.0000000   1.0000000
12        0-24 months   ki1119695-PROBIT            BELARUS                        Other                Control           0.7446990   0.5989881   0.9258557
12        0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control              Control           1.0000000   1.0000000   1.0000000
12        0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Other                Control           1.1623116   1.0576561   1.2773229
12        0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
12        0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS                  Control           0.9863946   0.8321478   1.1692325
12        0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
12        0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         LNS                  Control           0.8867925   0.5786860   1.3589422
12        0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Other                Control           0.9536232   0.6190520   1.4690157
12        0-24 months   ki1148112-LCNI-5            MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
12        0-24 months   ki1148112-LCNI-5            MALAWI                         LNS                  Control           0.8602151   0.7231587   1.0232470
12        0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
12        0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Other                Control           0.9545041   0.8990959   1.0133269
12        0-6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Control              Control           1.0000000   1.0000000   1.0000000
12        0-6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Other                Control           0.7669173   0.5384583   1.0923077
12        0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
12        0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Other                Control           0.5900000   0.4599031   0.7568986
12        0-6 months    ki1119695-PROBIT            BELARUS                        Control              Control           1.0000000   1.0000000   1.0000000
12        0-6 months    ki1119695-PROBIT            BELARUS                        Other                Control           0.7587370   0.5657380   1.0175766
12        0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control              Control           1.0000000   1.0000000   1.0000000
12        0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Other                Control           2.0086721   1.6545796   2.4385430
12        0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
12        0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         LNS                  Control           0.8060606   0.5724552   1.1349948
12        0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
12        0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Other                Control           0.8423994   0.7615362   0.9318490
12        6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
12        6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                  Control           1.0485437   0.3897451   2.8209309
12        6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                Control           1.4400000   0.5963776   3.4769918
12        6-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Control              Control           1.0000000   1.0000000   1.0000000
12        6-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Other                Control           0.7589286   0.6036008   0.9542276
12        6-24 months   ki1000304-VITAMIN-A         INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
12        6-24 months   ki1000304-VITAMIN-A         INDIA                          Other                Control           0.8546512   0.5700034   1.2814462
12        6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
12        6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Other                Control           0.7372685   0.5515596   0.9855052
12        6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Control              Control           1.0000000   1.0000000   1.0000000
12        6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   LNS                  Control           0.6120466   0.4635973   0.8080313
12        6-24 months   ki1119695-PROBIT            BELARUS                        Control              Control           1.0000000   1.0000000   1.0000000
12        6-24 months   ki1119695-PROBIT            BELARUS                        Other                Control           0.8793277   0.5454823   1.4174925
12        6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control              Control           1.0000000   1.0000000   1.0000000
12        6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Other                Control           1.1282051   0.9624652   1.3224861
12        6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
12        6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         LNS                  Control           0.7944444   0.3928854   1.6064277
12        6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Other                Control           0.8783784   0.4286742   1.7998485
12        6-24 months   ki1148112-LCNI-5            MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
12        6-24 months   ki1148112-LCNI-5            MALAWI                         LNS                  Control           1.2192192   0.8722689   1.7041712
12        6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
12        6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Other                Control           1.1724087   1.0385232   1.3235545


### Parameter: PAR


brthmon   agecat        studyid                     country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
--------  ------------  --------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
1         0-24 months   ki1000107-Serrinha-VitA     BRAZIL                         Control              NA                -0.0268270   -0.1110339    0.0573798
1         0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                -0.0787433   -0.1957841    0.0382975
1         0-24 months   ki1000111-WASH-Kenya        KENYA                          Control              NA                 0.0113475   -0.0383858    0.0610809
1         0-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Control              NA                 0.0132070   -0.0257028    0.0521168
1         0-24 months   ki1000304-EU                INDIA                          Control              NA                -0.0233328   -0.0866151    0.0399494
1         0-24 months   ki1000304-VITAMIN-A         INDIA                          Control              NA                -0.0304098   -0.0682707    0.0074512
1         0-24 months   ki1000304-Vitamin-B12       INDIA                          Control              NA                -0.0267990   -0.1154629    0.0618648
1         0-24 months   ki1000304-ZnMort            INDIA                          Other                NA                 0.0194444   -0.0508799    0.0897687
1         0-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control              NA                -0.0474510   -0.0939717   -0.0009302
1         0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              NA                -0.0219780   -0.1476134    0.1036573
1         0-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Control              NA                 0.0423807   -0.0445674    0.1293287
1         0-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Control              NA                -0.0576195   -0.1144047   -0.0008344
1         0-24 months   ki1119695-PROBIT            BELARUS                        Control              NA                -0.0022630   -0.0252059    0.0206799
1         0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                 0.0030051   -0.0204275    0.0264376
1         0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                -0.0734266   -0.1492473    0.0023941
1         0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control              NA                 0.0975984   -0.0272952    0.2224920
1         0-24 months   ki1148112-LCNI-5            MALAWI                         Control              NA                 0.0323529   -0.0466841    0.1113900
1         0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                -0.0032406   -0.0222953    0.0158140
1         0-6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Control              NA                -0.0187553   -0.0928706    0.0553599
1         0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Control              NA                -0.0411449   -0.0794385   -0.0028513
1         0-6 months    ki1119695-PROBIT            BELARUS                        Control              NA                 0.0022817   -0.0213853    0.0259486
1         0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                 0.0066260   -0.0150789    0.0283309
1         0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                -0.1333333   -0.2216578   -0.0450088
1         0-6 months    ki1148112-LCNI-5            MALAWI                         Control              NA                 0.0043103   -0.1163530    0.1249736
1         0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                -0.0231535   -0.0449059   -0.0014011
1         6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                -0.1003326   -0.2160067    0.0153415
1         6-24 months   ki1000111-WASH-Kenya        KENYA                          Control              NA                 0.0074706   -0.0246056    0.0395469
1         6-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Control              NA                -0.0061050   -0.0530964    0.0408864
1         6-24 months   ki1000304-VITAMIN-A         INDIA                          Control              NA                -0.0015996   -0.0306265    0.0274273
1         6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              NA                 0.0349462   -0.0845565    0.1544490
1         6-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Control              NA                 0.0082065   -0.0474281    0.0638411
1         6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Control              NA                -0.0150943   -0.0594155    0.0292268
1         6-24 months   ki1119695-PROBIT            BELARUS                        Control              NA                -0.0028613   -0.0130778    0.0073552
1         6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                 0.0126822   -0.0077166    0.0330810
1         6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                 0.0271674    0.0041602    0.0501746
2         0-24 months   ki1000107-Serrinha-VitA     BRAZIL                         Control              NA                 0.0892308   -0.0098780    0.1883396
2         0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                -0.0570953   -0.1789803    0.0647896
2         0-24 months   ki1000111-WASH-Kenya        KENYA                          Control              NA                 0.0087715   -0.0447320    0.0622749
2         0-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Control              NA                 0.0659341   -0.0212885    0.1531566
2         0-24 months   ki1000304-EU                INDIA                          Control              NA                -0.0222270   -0.1068532    0.0623992
2         0-24 months   ki1000304-VITAMIN-A         INDIA                          Control              NA                -0.0117187   -0.0550892    0.0316517
2         0-24 months   ki1000304-Vitamin-B12       INDIA                          Control              NA                -0.0504829   -0.1359998    0.0350341
2         0-24 months   ki1000304-ZnMort            INDIA                          Other                NA                 0.0521637   -0.0304029    0.1347302
2         0-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control              NA                 0.0558824   -0.0769382    0.1887029
2         0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              NA                 0.0617470   -0.0331774    0.1566714
2         0-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Control              NA                 0.0509808   -0.0271139    0.1290756
2         0-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Control              NA                -0.0098987   -0.1124582    0.0926608
2         0-24 months   ki1119695-PROBIT            BELARUS                        Control              NA                -0.0199432   -0.0469232    0.0070367
2         0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                -0.0467695   -0.0732598   -0.0202793
2         0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                 0.0301358   -0.0505814    0.1108530
2         0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control              NA                 0.0518519   -0.0908154    0.1945191
2         0-24 months   ki1148112-LCNI-5            MALAWI                         Control              NA                -0.0890269   -0.1951288    0.0170750
2         0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                -0.0068458   -0.0272746    0.0135829
2         0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                 0.0058380   -0.0606165    0.0722925
2         0-6 months    ki1119695-PROBIT            BELARUS                        Control              NA                -0.0048211   -0.0201397    0.0104976
2         0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                -0.0492153   -0.0743070   -0.0241236
2         0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                -0.0305556   -0.0545131   -0.0065980
2         0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                 0.0305082   -0.0386299    0.0996462
2         6-24 months   ki1000111-WASH-Kenya        KENYA                          Control              NA                 0.0070070   -0.0299190    0.0439330
2         6-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Control              NA                -0.0737705   -0.1808188    0.0332778
2         6-24 months   ki1000304-VITAMIN-A         INDIA                          Control              NA                -0.0074713   -0.0367689    0.0218264
2         6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control              NA                 0.0283251   -0.0560855    0.1127357
2         6-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Control              NA                -0.0278559   -0.0873425    0.0316308
2         6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Control              NA                -0.0931733   -0.1400155   -0.0463310
2         6-24 months   ki1119695-PROBIT            BELARUS                        Control              NA                -0.0023677   -0.0241970    0.0194617
2         6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                -0.0258721   -0.0471420   -0.0046022
2         6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control              NA                 0.0680597   -0.0817200    0.2178394
2         6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                 0.0279698    0.0040424    0.0518972
2         6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                -0.0317623   -0.0936166    0.0300919
3         0-24 months   ki1000107-Serrinha-VitA     BRAZIL                         Control              NA                 0.0333333   -0.0676089    0.1342756
3         0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                 0.0215909   -0.0809103    0.1240921
3         0-24 months   ki1000111-WASH-Kenya        KENYA                          Control              NA                -0.0396350   -0.0859419    0.0066719
3         0-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Control              NA                 0.0196078   -0.0829380    0.1221537
3         0-24 months   ki1000304-EU                INDIA                          Control              NA                -0.0898594   -0.1766490   -0.0030699
3         0-24 months   ki1000304-VITAMIN-A         INDIA                          Control              NA                -0.0505694   -0.0879433   -0.0131954
3         0-24 months   ki1000304-Vitamin-B12       INDIA                          Control              NA                -0.0047619   -0.0790562    0.0695324
3         0-24 months   ki1000304-ZnMort            INDIA                          Other                NA                -0.0368357   -0.1222092    0.0485377
3         0-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control              NA                 0.0904691   -0.0241089    0.2050471
3         0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              NA                -0.0362560   -0.1710253    0.0985132
3         0-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Control              NA                 0.1011583    0.0366567    0.1656599
3         0-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Control              NA                -0.0528333   -0.1313990    0.0257324
3         0-24 months   ki1119695-PROBIT            BELARUS                        Control              NA                -0.0088838   -0.0329805    0.0152129
3         0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                -0.0103295   -0.0356937    0.0150347
3         0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                 0.0460373   -0.0307344    0.1228090
3         0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control              NA                 0.0984848   -0.0813114    0.2782811
3         0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                -0.0157188   -0.0309260   -0.0005116
3         0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                -0.0225049   -0.0826714    0.0376616
3         0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Control              NA                 0.1092763   -0.0088525    0.2274052
3         0-6 months    ki1119695-PROBIT            BELARUS                        Control              NA                -0.0048518   -0.0224433    0.0127397
3         0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                -0.0046414   -0.0269281    0.0176454
3         0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                 0.0769231   -0.0059136    0.1597598
3         0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                -0.0222109   -0.0353963   -0.0090256
3         0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                 0.0555777    0.0008538    0.1103015
3         6-24 months   ki1000111-WASH-Kenya        KENYA                          Control              NA                -0.0139425   -0.0461001    0.0182152
3         6-24 months   ki1000304-VITAMIN-A         INDIA                          Control              NA                 0.0182148   -0.0108400    0.0472695
3         6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control              NA                 0.0251323   -0.0826384    0.1329029
3         6-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Control              NA                -0.0034774   -0.0485239    0.0415691
3         6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Control              NA                -0.0924242   -0.1656423   -0.0192061
3         6-24 months   ki1119695-PROBIT            BELARUS                        Control              NA                 0.0029527   -0.0076824    0.0135877
3         6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                -0.0410308   -0.0606964   -0.0213653
3         6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                 0.0083588   -0.0105548    0.0272725
3         6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                -0.0269993   -0.0887699    0.0347712
4         0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                 0.0221354   -0.0829337    0.1272045
4         0-24 months   ki1000111-WASH-Kenya        KENYA                          Control              NA                 0.0015455   -0.0439511    0.0470422
4         0-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Control              NA                 0.0586957   -0.0468826    0.1642739
4         0-24 months   ki1000304-EU                INDIA                          Control              NA                -0.0246204   -0.1151167    0.0658760
4         0-24 months   ki1000304-VITAMIN-A         INDIA                          Control              NA                 0.0027058   -0.0343393    0.0397509
4         0-24 months   ki1000304-Vitamin-B12       INDIA                          Control              NA                -0.1196581   -0.2351441   -0.0041721
4         0-24 months   ki1000304-ZnMort            INDIA                          Other                NA                -0.0070850   -0.1076197    0.0934497
4         0-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control              NA                -0.0135428   -0.1244559    0.0973703
4         0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              NA                -0.0438509   -0.1627198    0.0750179
4         0-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Control              NA                 0.0923828    0.0192489    0.1655166
4         0-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Control              NA                -0.0287081   -0.1147166    0.0573004
4         0-24 months   ki1119695-PROBIT            BELARUS                        Control              NA                -0.0018446   -0.0236440    0.0199548
4         0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                -0.0076053   -0.0346399    0.0194294
4         0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                 0.0615385   -0.0277798    0.1508567
4         0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control              NA                -0.0160455   -0.1557658    0.1236747
4         0-24 months   ki1148112-LCNI-5            MALAWI                         Control              NA                 0.0904184   -0.0217382    0.2025749
4         0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                -0.0270571   -0.0483043   -0.0058099
4         0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                -0.0126956   -0.0818366    0.0564454
4         0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Control              NA                 0.0120056   -0.0226076    0.0466189
4         0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              NA                -0.0151284   -0.0904690    0.0602122
4         0-6 months    ki1119695-PROBIT            BELARUS                        Control              NA                 0.0044201   -0.0075412    0.0163813
4         0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                 0.0016074   -0.0240136    0.0272284
4         0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                -0.1322702   -0.2250354   -0.0395049
4         0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                -0.0175030   -0.0373909    0.0023850
4         0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                 0.0041899   -0.0548905    0.0632704
4         6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                -0.0039174   -0.1037427    0.0959079
4         6-24 months   ki1000111-WASH-Kenya        KENYA                          Control              NA                 0.0019635   -0.0240847    0.0280116
4         6-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Control              NA                 0.0299539   -0.1008244    0.1607322
4         6-24 months   ki1000304-VITAMIN-A         INDIA                          Control              NA                 0.0018682   -0.0241134    0.0278499
4         6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control              NA                -0.0672269   -0.1598087    0.0253549
4         6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              NA                -0.0630387   -0.2046419    0.0785646
4         6-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Control              NA                 0.0190458   -0.0392741    0.0773658
4         6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Control              NA                -0.0873328   -0.1307368   -0.0439288
4         6-24 months   ki1119695-PROBIT            BELARUS                        Control              NA                -0.0056992   -0.0154097    0.0040112
4         6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                -0.0083730   -0.0296419    0.0128959
4         6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                -0.0014794   -0.0201727    0.0172140
4         6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                -0.0177187   -0.0861067    0.0506693
5         0-24 months   ki1000107-Serrinha-VitA     BRAZIL                         Control              NA                 0.0808824   -0.0215374    0.1833021
5         0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                 0.0212594   -0.0621722    0.1046910
5         0-24 months   ki1000111-WASH-Kenya        KENYA                          Control              NA                 0.0213723   -0.0259082    0.0686529
5         0-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Control              NA                 0.0451128   -0.0834033    0.1736289
5         0-24 months   ki1000304-EU                INDIA                          Control              NA                 0.0151515   -0.0815690    0.1118720
5         0-24 months   ki1000304-VITAMIN-A         INDIA                          Control              NA                -0.0021121   -0.0393236    0.0350995
5         0-24 months   ki1000304-Vitamin-B12       INDIA                          Control              NA                -0.0407960   -0.1305809    0.0489889
5         0-24 months   ki1000304-ZnMort            INDIA                          Other                NA                -0.0317460   -0.1192989    0.0558068
5         0-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control              NA                -0.1159192   -0.2094754   -0.0223630
5         0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              NA                -0.0174419   -0.1219346    0.0870508
5         0-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Control              NA                 0.1569786    0.0923516    0.2216056
5         0-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Control              NA                -0.0053780   -0.0662301    0.0554740
5         0-24 months   ki1119695-PROBIT            BELARUS                        Control              NA                -0.0089832   -0.0273551    0.0093887
5         0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                 0.0059008   -0.0216465    0.0334482
5         0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                -0.0513686   -0.1310010    0.0282638
5         0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control              NA                 0.0464135   -0.1010104    0.1938374
5         0-24 months   ki1148112-LCNI-5            MALAWI                         Control              NA                 0.0197628   -0.0835497    0.1230754
5         0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                 0.0047750   -0.0176740    0.0272240
5         0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                -0.0478474   -0.1139156    0.0182209
5         0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Control              NA                -0.0357143   -0.1049935    0.0335650
5         0-6 months    ki1119695-PROBIT            BELARUS                        Control              NA                -0.0024906   -0.0148836    0.0099023
5         0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                 0.0173433   -0.0087422    0.0434288
5         0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                -0.0057158   -0.0248177    0.0133862
5         0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                -0.0468357   -0.1103366    0.0166652
5         6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                 0.0276236   -0.0487547    0.1040018
5         6-24 months   ki1000111-WASH-Kenya        KENYA                          Control              NA                -0.0034432   -0.0324326    0.0255462
5         6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control              NA                -0.0673077   -0.1088372   -0.0257782
5         6-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Control              NA                 0.0476916   -0.0002513    0.0956344
5         6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Control              NA                -0.0139652   -0.0695539    0.0416235
5         6-24 months   ki1119695-PROBIT            BELARUS                        Control              NA                -0.0040581   -0.0146636    0.0065473
5         6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                 0.0303030    0.0063016    0.0543045
5         6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                 0.0268099    0.0055584    0.0480614
5         6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                -0.0383663   -0.1072684    0.0305358
6         0-24 months   ki1000107-Serrinha-VitA     BRAZIL                         Control              NA                 0.0000000   -0.0983988    0.0983988
6         0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                 0.1246770    0.0398442    0.2095098
6         0-24 months   ki1000111-WASH-Kenya        KENYA                          Control              NA                 0.0307381   -0.0228984    0.0843746
6         0-24 months   ki1000304-EU                INDIA                          Control              NA                -0.0352941   -0.1063846    0.0357963
6         0-24 months   ki1000304-VITAMIN-A         INDIA                          Control              NA                 0.0226146   -0.0165434    0.0617726
6         0-24 months   ki1000304-Vitamin-B12       INDIA                          Control              NA                 0.0172043   -0.0730356    0.1074442
6         0-24 months   ki1000304-ZnMort            INDIA                          Other                NA                 0.0540541   -0.0267440    0.1348521
6         0-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control              NA                -0.0768932   -0.1681823    0.0143959
6         0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              NA                -0.0125000   -0.1241642    0.0991642
6         0-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Control              NA                 0.0702450    0.0010952    0.1393948
6         0-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Control              NA                -0.0197011   -0.0903913    0.0509891
6         0-24 months   ki1119695-PROBIT            BELARUS                        Control              NA                -0.0184997   -0.0415543    0.0045550
6         0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                 0.0199482   -0.0065728    0.0464692
6         0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                -0.1250746   -0.2023586   -0.0477907
6         0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control              NA                 0.0008772   -0.1380149    0.1397693
6         0-24 months   ki1148112-LCNI-5            MALAWI                         Control              NA                 0.0065359   -0.1067985    0.1198704
6         0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                -0.0221258   -0.0440872   -0.0001644
6         0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                 0.0550194   -0.0300340    0.1400729
6         0-6 months    ki1000304-VITAMIN-A         INDIA                          Control              NA                 0.1622103    0.0362706    0.2881501
6         0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Control              NA                -0.0251208   -0.0772848    0.0270433
6         0-6 months    ki1119695-PROBIT            BELARUS                        Control              NA                -0.0107711   -0.0200886   -0.0014536
6         0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                -0.0010908   -0.0276984    0.0255168
6         0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                -0.0079821   -0.0251605    0.0091962
6         0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                -0.0130550   -0.0903761    0.0642662
6         6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                 0.0319749   -0.0454439    0.1093937
6         6-24 months   ki1000111-WASH-Kenya        KENYA                          Control              NA                -0.0014493   -0.0421321    0.0392336
6         6-24 months   ki1000304-VITAMIN-A         INDIA                          Control              NA                -0.0059259   -0.0305379    0.0186861
6         6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control              NA                -0.0451389   -0.1345320    0.0442542
6         6-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Control              NA                -0.0170400   -0.0720644    0.0379843
6         6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Control              NA                -0.0836460   -0.1393181   -0.0279739
6         6-24 months   ki1119695-PROBIT            BELARUS                        Control              NA                -0.0034329   -0.0116728    0.0048069
6         6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                 0.0506408    0.0282972    0.0729843
6         6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                -0.0087815   -0.0269759    0.0094129
6         6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                 0.0301686   -0.0585848    0.1189219
7         0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                -0.0855012   -0.1645667   -0.0064358
7         0-24 months   ki1000111-WASH-Kenya        KENYA                          Control              NA                -0.0152725   -0.0796555    0.0491105
7         0-24 months   ki1000304-EU                INDIA                          Control              NA                -0.0208812   -0.0960652    0.0543028
7         0-24 months   ki1000304-VITAMIN-A         INDIA                          Control              NA                -0.0061459   -0.0398151    0.0275234
7         0-24 months   ki1000304-Vitamin-B12       INDIA                          Control              NA                -0.0493827   -0.1193035    0.0205381
7         0-24 months   ki1000304-ZnMort            INDIA                          Other                NA                 0.0158863   -0.0559504    0.0877229
7         0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              NA                 0.0159716   -0.0901726    0.1221158
7         0-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Control              NA                -0.0208327   -0.0987655    0.0571001
7         0-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Control              NA                -0.0255102   -0.1032633    0.0522429
7         0-24 months   ki1119695-PROBIT            BELARUS                        Control              NA                -0.0121163   -0.0266843    0.0024517
7         0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                 0.0237265   -0.0019549    0.0494079
7         0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                 0.0045520   -0.0631118    0.0722159
7         0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control              NA                -0.0577778   -0.2579846    0.1424290
7         0-24 months   ki1148112-LCNI-5            MALAWI                         Control              NA                 0.0322581   -0.0556771    0.1201932
7         0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                 0.0180232   -0.0023109    0.0383573
7         0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                 0.0279078   -0.0477850    0.1036006
7         0-6 months    ki1000304-VITAMIN-A         INDIA                          Control              NA                 0.1190476    0.0049728    0.2331225
7         0-6 months    ki1119695-PROBIT            BELARUS                        Control              NA                -0.0050532   -0.0168016    0.0066952
7         0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                 0.0353880    0.0105831    0.0601929
7         0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                -0.0072063   -0.0242269    0.0098142
7         0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                 0.0666621    0.0009025    0.1324217
7         6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                -0.0751323   -0.1623506    0.0120860
7         6-24 months   ki1000111-WASH-Kenya        KENYA                          Control              NA                 0.0025688   -0.0420861    0.0472237
7         6-24 months   ki1000304-VITAMIN-A         INDIA                          Control              NA                -0.0032385   -0.0249351    0.0184581
7         6-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Control              NA                -0.0414140   -0.1054148    0.0225868
7         6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Control              NA                -0.0589755   -0.1094749   -0.0084762
7         6-24 months   ki1119695-PROBIT            BELARUS                        Control              NA                -0.0010192   -0.0068506    0.0048122
7         6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                -0.0003316   -0.0205480    0.0198849
7         6-24 months   ki1148112-LCNI-5            MALAWI                         Control              NA                -0.0593103   -0.1390220    0.0204013
7         6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                 0.0129388   -0.0043452    0.0302228
7         6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                -0.0189080   -0.0970052    0.0591892
8         0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                -0.0574871   -0.1215992    0.0066251
8         0-24 months   ki1000111-WASH-Kenya        KENYA                          Control              NA                 0.0106692   -0.0465313    0.0678696
8         0-24 months   ki1000304-EU                INDIA                          Control              NA                -0.0296201   -0.0947547    0.0355144
8         0-24 months   ki1000304-VITAMIN-A         INDIA                          Control              NA                -0.0012903   -0.0384246    0.0358441
8         0-24 months   ki1000304-Vitamin-B12       INDIA                          Control              NA                 0.0043860   -0.0767845    0.0855565
8         0-24 months   ki1000304-ZnMort            INDIA                          Other                NA                -0.0022202   -0.0676608    0.0632205
8         0-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Control              NA                -0.0342406   -0.1330848    0.0646037
8         0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              NA                 0.0279374   -0.0602455    0.1161203
8         0-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Control              NA                -0.0150013   -0.0981491    0.0681465
8         0-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Control              NA                -0.0668116   -0.1231043   -0.0105188
8         0-24 months   ki1119695-PROBIT            BELARUS                        Control              NA                -0.0097141   -0.0235766    0.0041484
8         0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                -0.0064717   -0.0309006    0.0179572
8         0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                 0.0130719   -0.0493339    0.0754777
8         0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control              NA                -0.0052566   -0.1448131    0.1342998
8         0-24 months   ki1148112-LCNI-5            MALAWI                         Control              NA                -0.0053763   -0.0764383    0.0656856
8         0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                -0.0161059   -0.0343950    0.0021833
8         0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                -0.0066066   -0.0895146    0.0763013
8         0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Control              NA                -0.0684811   -0.1661767    0.0292145
8         0-6 months    ki1119695-PROBIT            BELARUS                        Control              NA                -0.0044375   -0.0136198    0.0047448
8         0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                -0.0152282   -0.0369191    0.0064627
8         0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                -0.0246470   -0.0415329   -0.0077612
8         0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                -0.0356409   -0.1151135    0.0438316
8         6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                -0.0383099   -0.1061937    0.0295738
8         6-24 months   ki1000111-WASH-Kenya        KENYA                          Control              NA                 0.0192049   -0.0169392    0.0553491
8         6-24 months   ki1000304-VITAMIN-A         INDIA                          Control              NA                -0.0072358   -0.0315919    0.0171204
8         6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Control              NA                -0.0382482   -0.0655185   -0.0109780
8         6-24 months   ki1119695-PROBIT            BELARUS                        Control              NA                 0.0008491   -0.0061875    0.0078857
8         6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                -0.0100141   -0.0302757    0.0102476
8         6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                 0.0507479   -0.0139741    0.1154698
8         6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control              NA                 0.0167568   -0.1220113    0.1555249
8         6-24 months   ki1148112-LCNI-5            MALAWI                         Control              NA                 0.0108696   -0.0623849    0.0841240
8         6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                -0.0142274   -0.0293720    0.0009173
8         6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                -0.0108823   -0.0950333    0.0732686
9         0-24 months   ki1000107-Serrinha-VitA     BRAZIL                         Control              NA                 0.0208333   -0.0985747    0.1402414
9         0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                -0.0011593   -0.0743621    0.0720435
9         0-24 months   ki1000111-WASH-Kenya        KENYA                          Control              NA                 0.0116912   -0.0381560    0.0615384
9         0-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Control              NA                -0.1106443   -0.1958591   -0.0254294
9         0-24 months   ki1000304-EU                INDIA                          Control              NA                 0.0219704   -0.0512119    0.0951527
9         0-24 months   ki1000304-VITAMIN-A         INDIA                          Control              NA                -0.0274127   -0.0709478    0.0161224
9         0-24 months   ki1000304-Vitamin-B12       INDIA                          Control              NA                 0.0597403   -0.0228672    0.1423477
9         0-24 months   ki1000304-ZnMort            INDIA                          Other                NA                -0.0517483   -0.1200835    0.0165870
9         0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              NA                 0.0204728   -0.0858191    0.1267646
9         0-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Control              NA                 0.0523863   -0.0392430    0.1440157
9         0-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Control              NA                -0.0868507   -0.1554091   -0.0182924
9         0-24 months   ki1119695-PROBIT            BELARUS                        Control              NA                -0.0081961   -0.0296510    0.0132588
9         0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                 0.0166985   -0.0067488    0.0401459
9         0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                 0.0450262   -0.0200222    0.1100746
9         0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control              NA                -0.0567496   -0.1749664    0.0614672
9         0-24 months   ki1148112-LCNI-5            MALAWI                         Control              NA                -0.0078853   -0.0807275    0.0649569
9         0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                -0.0161329   -0.0329004    0.0006347
9         0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                 0.0889755   -0.0109006    0.1888517
9         0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Control              NA                 0.1239819    0.0172642    0.2306996
9         0-6 months    ki1119695-PROBIT            BELARUS                        Control              NA                 0.0064113   -0.0085772    0.0213999
9         0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                -0.0013364   -0.0229048    0.0202321
9         0-6 months    ki1148112-LCNI-5            MALAWI                         Control              NA                -0.1041230   -0.1933520   -0.0148940
9         0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                -0.0184791   -0.0355192   -0.0014389
9         0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                 0.0956522    0.0094531    0.1818513
9         6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                -0.0115078   -0.0774782    0.0544625
9         6-24 months   ki1000111-WASH-Kenya        KENYA                          Control              NA                 0.0283519   -0.0006483    0.0573521
9         6-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Control              NA                -0.1555556   -0.2665988   -0.0445123
9         6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              NA                 0.0109968   -0.0777867    0.0997802
9         6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Control              NA                -0.0928067   -0.1336612   -0.0519522
9         6-24 months   ki1119695-PROBIT            BELARUS                        Control              NA                -0.0001927   -0.0062504    0.0058649
9         6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                 0.0095512   -0.0090962    0.0281985
9         6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control              NA                 0.0320513   -0.1000554    0.1641580
9         6-24 months   ki1148112-LCNI-5            MALAWI                         Control              NA                 0.0821256   -0.0080952    0.1723464
9         6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                -0.0093792   -0.0260397    0.0072813
9         6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                -0.0053517   -0.1025854    0.0918820
10        0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                 0.0215454   -0.0505717    0.0936625
10        0-24 months   ki1000111-WASH-Kenya        KENYA                          Control              NA                -0.0137757   -0.0606599    0.0331084
10        0-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Control              NA                -0.0371589   -0.0770041    0.0026863
10        0-24 months   ki1000304-EU                INDIA                          Control              NA                -0.0155359   -0.0807071    0.0496353
10        0-24 months   ki1000304-VITAMIN-A         INDIA                          Control              NA                -0.0170579   -0.0673559    0.0332401
10        0-24 months   ki1000304-Vitamin-B12       INDIA                          Control              NA                -0.0245902   -0.1116001    0.0624198
10        0-24 months   ki1000304-ZnMort            INDIA                          Other                NA                -0.0285230   -0.0937560    0.0367101
10        0-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control              NA                 0.0213131   -0.0279283    0.0705544
10        0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              NA                -0.0058471   -0.0993015    0.0876074
10        0-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Control              NA                 0.0327044   -0.0833233    0.1487321
10        0-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Control              NA                 0.0041356   -0.0564763    0.0647476
10        0-24 months   ki1119695-PROBIT            BELARUS                        Control              NA                -0.0151875   -0.0275307   -0.0028443
10        0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                 0.0035330   -0.0237046    0.0307707
10        0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                -0.0775776   -0.1382586   -0.0168966
10        0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control              NA                 0.0538250   -0.0774798    0.1851298
10        0-24 months   ki1148112-LCNI-5            MALAWI                         Control              NA                 0.0424769   -0.0147140    0.0996677
10        0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                -0.0356060   -0.0513220   -0.0198901
10        0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                -0.0676692   -0.2051364    0.0697981
10        0-6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Control              NA                -0.0209933   -0.1009203    0.0589336
10        0-6 months    ki1000304-ZnMort            INDIA                          Other                NA                 0.0000000   -0.1952171    0.1952171
10        0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Control              NA                 0.0351269   -0.0358389    0.1060926
10        0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Control              NA                 0.0184615   -0.1019638    0.1388869
10        0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              NA                 0.0125994   -0.0500446    0.0752434
10        0-6 months    ki1119695-PROBIT            BELARUS                        Control              NA                -0.0031680   -0.0111275    0.0047915
10        0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                -0.0184693   -0.0439164    0.0069778
10        0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                -0.0748299   -0.1349251   -0.0147347
10        0-6 months    ki1148112-LCNI-5            MALAWI                         Control              NA                -0.0082816   -0.0904182    0.0738551
10        0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                -0.0370245   -0.0517379   -0.0223111
10        0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                -0.0260000   -0.1379664    0.0859664
10        6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                 0.0354852   -0.0212808    0.0922512
10        6-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Control              NA                -0.0383693   -0.0892092    0.0124706
10        6-24 months   ki1000304-VITAMIN-A         INDIA                          Control              NA                -0.0117816   -0.0470062    0.0234429
10        6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control              NA                 0.0685714    0.0140510    0.1230919
10        6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              NA                -0.0550000   -0.1425327    0.0325327
10        6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Control              NA                -0.0134914   -0.0818634    0.0548806
10        6-24 months   ki1119695-PROBIT            BELARUS                        Control              NA                -0.0034502   -0.0102828    0.0033824
10        6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                -0.0019590   -0.0242390    0.0203210
10        6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                -0.1406832   -0.1999194   -0.0814470
10        6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control              NA                 0.0817632   -0.0488002    0.2123267
10        6-24 months   ki1148112-LCNI-5            MALAWI                         Control              NA                -0.0057622   -0.0758616    0.0643373
10        6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                -0.0110541   -0.0276545    0.0055462
11        0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                -0.0453199   -0.1140804    0.0234406
11        0-24 months   ki1000111-WASH-Kenya        KENYA                          Control              NA                -0.0004775   -0.0460426    0.0450877
11        0-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Control              NA                -0.0682449   -0.1022903   -0.0341994
11        0-24 months   ki1000304-EU                INDIA                          Control              NA                 0.0154639   -0.0550167    0.0859446
11        0-24 months   ki1000304-VITAMIN-A         INDIA                          Control              NA                -0.0137938   -0.0713318    0.0437443
11        0-24 months   ki1000304-Vitamin-B12       INDIA                          Control              NA                -0.0083721   -0.0826721    0.0659280
11        0-24 months   ki1000304-ZnMort            INDIA                          Other                NA                -0.0632594   -0.1408104    0.0142916
11        0-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control              NA                -0.0356259   -0.0844068    0.0131550
11        0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              NA                 0.0045060   -0.0853873    0.0943993
11        0-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Control              NA                 0.0656780   -0.0379244    0.1692804
11        0-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Control              NA                 0.0101154   -0.0572069    0.0774377
11        0-24 months   ki1119695-PROBIT            BELARUS                        Control              NA                -0.0014653   -0.0209400    0.0180094
11        0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                -0.0006356   -0.0250017    0.0237304
11        0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                 0.0878111    0.0271495    0.1484726
11        0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control              NA                 0.1065041   -0.0147596    0.2277677
11        0-24 months   ki1148112-LCNI-5            MALAWI                         Control              NA                 0.0112045   -0.0553855    0.0777945
11        0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                -0.0144107   -0.0295288    0.0007073
11        0-6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Control              NA                 0.0223607   -0.0486829    0.0934043
11        0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Control              NA                 0.0253036   -0.0327655    0.0833727
11        0-6 months    ki1119695-PROBIT            BELARUS                        Control              NA                -0.0079972   -0.0237923    0.0077978
11        0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                 0.0140327   -0.0072493    0.0353146
11        0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                 0.0151648   -0.0488262    0.0791559
11        0-6 months    ki1148112-LCNI-5            MALAWI                         Control              NA                -0.0179487   -0.1490023    0.1131049
11        0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                -0.0187690   -0.0330560   -0.0044820
11        6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                -0.0529736   -0.1133769    0.0074297
11        6-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Control              NA                -0.0647561   -0.1030610   -0.0264513
11        6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control              NA                -0.0669951   -0.1385187    0.0045286
11        6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              NA                -0.0285784   -0.1156749    0.0585181
11        6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Control              NA                -0.0107280   -0.0550443    0.0335883
11        6-24 months   ki1119695-PROBIT            BELARUS                        Control              NA                 0.0042862   -0.0027436    0.0113159
11        6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                -0.0346348   -0.0543756   -0.0148940
11        6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control              NA                 0.0718447   -0.0427693    0.1864587
11        6-24 months   ki1148112-LCNI-5            MALAWI                         Control              NA                 0.0163585   -0.0634678    0.0961847
11        6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                 0.0117269   -0.0092677    0.0327215
12        0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                 0.0215107   -0.0597509    0.1027723
12        0-24 months   ki1000111-WASH-Kenya        KENYA                          Control              NA                -0.0045159   -0.0495301    0.0404983
12        0-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Control              NA                -0.0504249   -0.0873834   -0.0134664
12        0-24 months   ki1000304-EU                INDIA                          Control              NA                -0.0255015   -0.0873488    0.0363458
12        0-24 months   ki1000304-VITAMIN-A         INDIA                          Control              NA                 0.0131661   -0.0250462    0.0513785
12        0-24 months   ki1000304-Vitamin-B12       INDIA                          Control              NA                 0.0128205   -0.0767846    0.1024257
12        0-24 months   ki1000304-ZnMort            INDIA                          Other                NA                 0.0425067   -0.0282998    0.1133132
12        0-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control              NA                -0.0454545   -0.0862871   -0.0046220
12        0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              NA                 0.0163968   -0.0726672    0.1054607
12        0-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Control              NA                -0.0447097   -0.1438537    0.0544342
12        0-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Control              NA                -0.0749033   -0.1569214    0.0071149
12        0-24 months   ki1119695-PROBIT            BELARUS                        Control              NA                -0.0202098   -0.0378603   -0.0025592
12        0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                 0.0313224    0.0075317    0.0551130
12        0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                -0.0051282   -0.0756478    0.0653914
12        0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control              NA                -0.0272927   -0.1456909    0.0911055
12        0-24 months   ki1148112-LCNI-5            MALAWI                         Control              NA                -0.0410526   -0.1110132    0.0289079
12        0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                -0.0102297   -0.0276327    0.0071734
12        0-6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Control              NA                -0.0344062   -0.1110784    0.0422660
12        0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Control              NA                -0.0637537   -0.1279784    0.0004710
12        0-6 months    ki1119695-PROBIT            BELARUS                        Control              NA                -0.0086870   -0.0212097    0.0038357
12        0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                 0.0512407    0.0309844    0.0714970
12        0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                -0.0428189   -0.1107546    0.0251167
12        0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                -0.0245824   -0.0443334   -0.0048315
12        6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                 0.0182051   -0.0397470    0.0761573
12        6-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Control              NA                -0.0436975   -0.0899585    0.0025636
12        6-24 months   ki1000304-VITAMIN-A         INDIA                          Control              NA                -0.0083185   -0.0386660    0.0220289
12        6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control              NA                -0.0477593   -0.0976700    0.0021514
12        6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Control              NA                -0.0650733   -0.1053023   -0.0248444
12        6-24 months   ki1119695-PROBIT            BELARUS                        Control              NA                -0.0033342   -0.0138462    0.0071778
12        6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                 0.0130617   -0.0076795    0.0338028
12        6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control              NA                -0.0349650   -0.1536283    0.0836983
12        6-24 months   ki1148112-LCNI-5            MALAWI                         Control              NA                 0.0381400   -0.0505176    0.1267976
12        6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                 0.0192229   -0.0010869    0.0395327


### Parameter: PAF


brthmon   agecat        studyid                     country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
--------  ------------  --------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
1         0-24 months   ki1000107-Serrinha-VitA     BRAZIL                         Control              NA                -0.1146245   -0.6006640    0.2238297
1         0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                -0.2422103   -0.6605230    0.0707226
1         0-24 months   ki1000111-WASH-Kenya        KENYA                          Control              NA                 0.0488398   -0.1911414    0.2404716
1         0-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Control              NA                 0.0267229   -0.0530263    0.1004325
1         0-24 months   ki1000304-EU                INDIA                          Control              NA                -0.0473138   -0.1841070    0.0736765
1         0-24 months   ki1000304-VITAMIN-A         INDIA                          Control              NA                -0.0713207   -0.1710354    0.0199031
1         0-24 months   ki1000304-Vitamin-B12       INDIA                          Control              NA                -0.0483871   -0.2305873    0.1068366
1         0-24 months   ki1000304-ZnMort            INDIA                          Other                NA                 0.0358974   -0.1032209    0.1574727
1         0-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control              NA                -0.0818120   -0.1720820    0.0015056
1         0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              NA                -0.0769231   -0.6199106    0.2840572
1         0-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Control              NA                 0.1381609   -0.1973131    0.3796388
1         0-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Control              NA                -0.1739356   -0.3931999    0.0108205
1         0-24 months   ki1119695-PROBIT            BELARUS                        Control              NA                -0.0131772   -0.1580126    0.1135434
1         0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                 0.0088189   -0.0617408    0.0746895
1         0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                -0.1418919   -0.3223397    0.0139318
1         0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control              NA                 0.2094298   -0.1114759    0.4376835
1         0-24 months   ki1148112-LCNI-5            MALAWI                         Control              NA                 0.0511628   -0.0753828    0.1628171
1         0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                -0.0075437   -0.0532425    0.0361723
1         0-6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Control              NA                -0.0681115   -0.3988109    0.1844058
1         0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Control              NA                -0.1337209   -0.2832841   -0.0015889
1         0-6 months    ki1119695-PROBIT            BELARUS                        Control              NA                 0.0245342   -0.2582293    0.2437519
1         0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                 0.0374496   -0.0882118    0.1486002
1         0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                -0.4000000   -0.8292689   -0.0714663
1         0-6 months    ki1148112-LCNI-5            MALAWI                         Control              NA                 0.0113636   -0.3589458    0.2807646
1         0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                -0.0897523   -0.1860304   -0.0012896
1         6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                -0.5142045   -1.2330078   -0.0267834
1         6-24 months   ki1000111-WASH-Kenya        KENYA                          Control              NA                 0.1100671   -0.5112378    0.4759392
1         6-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Control              NA                -0.0202429   -0.1922991    0.1269845
1         6-24 months   ki1000304-VITAMIN-A         INDIA                          Control              NA                -0.0171745   -0.3891964    0.2552212
1         6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              NA                 0.1733333   -0.6895304    0.5955221
1         6-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Control              NA                 0.1043698   -0.9721445    0.5932583
1         6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Control              NA                -0.0975610   -0.4622805    0.1761908
1         6-24 months   ki1119695-PROBIT            BELARUS                        Control              NA                -0.0608334   -0.3189831    0.1467916
1         6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                 0.0824801   -0.0478721    0.1966169
1         6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                 0.1104736    0.0227572    0.1903167
2         0-24 months   ki1000107-Serrinha-VitA     BRAZIL                         Control              NA                 0.2788462    0.0005755    0.4796377
2         0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                -0.1734007   -0.6090205    0.1442811
2         0-24 months   ki1000111-WASH-Kenya        KENYA                          Control              NA                 0.0380887   -0.2246560    0.2444627
2         0-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Control              NA                 0.1250000   -0.0330327    0.2588569
2         0-24 months   ki1000304-EU                INDIA                          Control              NA                -0.0561737   -0.2933875    0.1375339
2         0-24 months   ki1000304-VITAMIN-A         INDIA                          Control              NA                -0.0240000   -0.1191436    0.0630550
2         0-24 months   ki1000304-Vitamin-B12       INDIA                          Control              NA                -0.0890093   -0.2668429    0.0638608
2         0-24 months   ki1000304-ZnMort            INDIA                          Other                NA                 0.1093988   -0.0824759    0.2672627
2         0-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control              NA                 0.1104651   -0.1587277    0.3171197
2         0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              NA                 0.3306452   -0.4142329    0.6831951
2         0-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Control              NA                 0.1583212   -0.1225900    0.3689386
2         0-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Control              NA                -0.0351307   -0.4897425    0.2807511
2         0-24 months   ki1119695-PROBIT            BELARUS                        Control              NA                -0.1192924   -0.3179788    0.0494418
2         0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                -0.1407763   -0.2357211   -0.0531264
2         0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                 0.0541571   -0.0935417    0.1819071
2         0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control              NA                 0.1000000   -0.2228677    0.3376226
2         0-24 months   ki1148112-LCNI-5            MALAWI                         Control              NA                -0.2047619   -0.5424022    0.0589671
2         0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                -0.0158699   -0.0651441    0.0311249
2         0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                 0.0125531   -0.1412731    0.1456459
2         0-6 months    ki1119695-PROBIT            BELARUS                        Control              NA                -0.0686429   -0.3300723    0.1414018
2         0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                -0.2870126   -0.4919295   -0.1102411
2         0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                -0.1222222   -0.2360851   -0.0188479
2         0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                 0.1147776   -0.1896800    0.3413198
2         6-24 months   ki1000111-WASH-Kenya        KENYA                          Control              NA                 0.0864198   -0.5027686    0.4446059
2         6-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Control              NA                -0.1730769   -0.5095044    0.0883700
2         6-24 months   ki1000304-VITAMIN-A         INDIA                          Control              NA                -0.0984848   -0.6192345    0.2547905
2         6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control              NA                 0.1369048   -0.3176462    0.4346484
2         6-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Control              NA                -0.2994505   -1.1194826    0.2033095
2         6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Control              NA                -0.8023256   -1.7537740   -0.1796093
2         6-24 months   ki1119695-PROBIT            BELARUS                        Control              NA                -0.0355900   -0.4381675    0.2542964
2         6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                -0.1932322   -0.3997664   -0.0171720
2         6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control              NA                 0.1753846   -0.3170926    0.4837185
2         6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                 0.1075125    0.0209199    0.1864466
2         6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                -0.1209285   -0.3817734    0.0906753
3         0-24 months   ki1000107-Serrinha-VitA     BRAZIL                         Control              NA                 0.1000000   -0.2194404    0.3357609
3         0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                 0.0690909   -0.3240576    0.3455030
3         0-24 months   ki1000111-WASH-Kenya        KENYA                          Control              NA                -0.1722269   -0.3911888    0.0122722
3         0-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Control              NA                 0.0555556   -0.2632957    0.2939299
3         0-24 months   ki1000304-EU                INDIA                          Control              NA                -0.1988889   -0.4105406   -0.0189956
3         0-24 months   ki1000304-VITAMIN-A         INDIA                          Control              NA                -0.1140289   -0.2125022   -0.0235532
3         0-24 months   ki1000304-Vitamin-B12       INDIA                          Control              NA                -0.0119048   -0.2184559    0.1596321
3         0-24 months   ki1000304-ZnMort            INDIA                          Other                NA                -0.0716804   -0.2519616    0.0826405
3         0-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control              NA                 0.1701681   -0.0374680    0.3362484
3         0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              NA                -0.1406026   -0.8031434    0.2784965
3         0-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Control              NA                 0.3067916    0.0818538    0.4766216
3         0-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Control              NA                -0.1486880   -0.4331587    0.0793174
3         0-24 months   ki1119695-PROBIT            BELARUS                        Control              NA                -0.0647492   -0.2695914    0.1070428
3         0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                -0.0302123   -0.1095582    0.0434596
3         0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                 0.0907003   -0.0579725    0.2184808
3         0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control              NA                 0.2280702   -0.3249060    0.5502506
3         0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                -0.0476290   -0.0970962   -0.0003922
3         0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                -0.0471311   -0.1811035    0.0716447
3         0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Control              NA                 0.3879310    0.0149162    0.6196989
3         0-6 months    ki1119695-PROBIT            BELARUS                        Control              NA                -0.0745968   -0.4092278    0.1805738
3         0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                -0.0286458   -0.1803514    0.1035617
3         0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                 0.2352941    0.0124630    0.4078449
3         0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                -0.1090935   -0.1838034   -0.0390985
3         0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                 0.2007743   -0.0228605    0.3755144
3         6-24 months   ki1000111-WASH-Kenya        KENYA                          Control              NA                -0.2038062   -0.7731802    0.1827399
3         6-24 months   ki1000304-VITAMIN-A         INDIA                          Control              NA                 0.2292917   -0.1210822    0.4701626
3         6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control              NA                 0.0781893   -0.2916657    0.3421402
3         6-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Control              NA                -0.0397727   -0.7064712    0.3664544
3         6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Control              NA                -0.5865385   -1.5581978    0.0160634
3         6-24 months   ki1119695-PROBIT            BELARUS                        Control              NA                 0.0577068   -0.1613650    0.2354543
3         6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                -0.3114435   -0.5252946   -0.1275751
3         6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                 0.0465187   -0.0594280    0.1418704
3         6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                -0.0983811   -0.3475242    0.1046981
4         0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                 0.0622711   -0.2852066    0.3158022
4         0-24 months   ki1000111-WASH-Kenya        KENYA                          Control              NA                 0.0059371   -0.1851417    0.1662085
4         0-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Control              NA                 0.0964286   -0.0755820    0.2409307
4         0-24 months   ki1000304-EU                INDIA                          Control              NA                -0.0681355   -0.3505158    0.1552018
4         0-24 months   ki1000304-VITAMIN-A         INDIA                          Control              NA                 0.0064745   -0.0856187    0.0907554
4         0-24 months   ki1000304-Vitamin-B12       INDIA                          Control              NA                -0.2745098   -0.6698874    0.0272546
4         0-24 months   ki1000304-ZnMort            INDIA                          Other                NA                -0.0149573   -0.2510396    0.1765743
4         0-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control              NA                -0.0240385   -0.2466754    0.1588389
4         0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              NA                -0.1346301   -0.5652538    0.1775229
4         0-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Control              NA                 0.2557023    0.0234446    0.4327213
4         0-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Control              NA                -0.0731707   -0.3365007    0.1382755
4         0-24 months   ki1119695-PROBIT            BELARUS                        Control              NA                -0.0152048   -0.2150643    0.1517808
4         0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                -0.0230301   -0.1103127    0.0573912
4         0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                 0.1333333   -0.0521044    0.2860869
4         0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control              NA                -0.0425824   -0.4879649    0.2694867
4         0-24 months   ki1148112-LCNI-5            MALAWI                         Control              NA                 0.1602871   -0.0280178    0.3140996
4         0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                -0.0753109   -0.1409924   -0.0134103
4         0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                -0.0241123   -0.1641272    0.0990623
4         0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Control              NA                 0.0544872   -0.1069888    0.1924087
4         0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              NA                -0.1616848   -1.3179322    0.4177951
4         0-6 months    ki1119695-PROBIT            BELARUS                        Control              NA                 0.0748730   -0.1345804    0.2456595
4         0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                 0.0085000   -0.1353596    0.1341314
4         0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                -0.4017094   -0.8625100   -0.0549147
4         0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                -0.0956893   -0.2220551    0.0176098
4         0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                 0.0167598   -0.2504266    0.2268548
4         6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                -0.0172684   -0.5678249    0.3399549
4         6-24 months   ki1000111-WASH-Kenya        KENYA                          Control              NA                 0.0373812   -0.6110606    0.4248292
4         6-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Control              NA                 0.0773810   -0.2946318    0.3424958
4         6-24 months   ki1000304-VITAMIN-A         INDIA                          Control              NA                 0.0225225   -0.3371313    0.2854387
4         6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control              NA                -0.2352941   -0.7057198    0.1053915
4         6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              NA                -0.2428843   -0.9269387    0.1983340
4         6-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Control              NA                 0.1300085   -0.3736890    0.4490127
4         6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Control              NA                -0.5115207   -1.0281847   -0.1264728
4         6-24 months   ki1119695-PROBIT            BELARUS                        Control              NA                -0.1591509   -0.5238952    0.1182918
4         6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                -0.0687413   -0.2728134    0.1026116
4         6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                -0.0091164   -0.1323271    0.1006875
4         6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                -0.0561404   -0.2966319    0.1397463
5         0-24 months   ki1000107-Serrinha-VitA     BRAZIL                         Control              NA                 0.2171053   -0.0383011    0.4096855
5         0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                 0.0527918   -0.1788273    0.2389018
5         0-24 months   ki1000111-WASH-Kenya        KENYA                          Control              NA                 0.0881414   -0.1290460    0.2635499
5         0-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Control              NA                 0.0952381   -0.1877723    0.3108156
5         0-24 months   ki1000304-EU                INDIA                          Control              NA                 0.0349650   -0.2162279    0.2342780
5         0-24 months   ki1000304-VITAMIN-A         INDIA                          Control              NA                -0.0049428   -0.0963836    0.0788716
5         0-24 months   ki1000304-Vitamin-B12       INDIA                          Control              NA                -0.0828283   -0.2999107    0.0980018
5         0-24 months   ki1000304-ZnMort            INDIA                          Other                NA                -0.0606061   -0.2421218    0.0943841
5         0-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control              NA                -0.1960089   -0.4011572   -0.0208970
5         0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              NA                -0.0909091   -0.7966736    0.3376189
5         0-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Control              NA                 0.4603767    0.2373010    0.6182067
5         0-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Control              NA                -0.0158434   -0.2151200    0.1507523
5         0-24 months   ki1119695-PROBIT            BELARUS                        Control              NA                -0.0844278   -0.2905698    0.0887873
5         0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                 0.0169261   -0.0639094    0.0916197
5         0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                -0.1087302   -0.3124968    0.0634015
5         0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control              NA                 0.1222222   -0.3662119    0.4360364
5         0-24 months   ki1148112-LCNI-5            MALAWI                         Control              NA                 0.0434783   -0.2009203    0.2381394
5         0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                 0.0120597   -0.0455762    0.0665185
5         0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                -0.0973656   -0.2412117    0.0298100
5         0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Control              NA                -0.1428571   -0.5106774    0.1354061
5         0-6 months    ki1119695-PROBIT            BELARUS                        Control              NA                -0.0475332   -0.3284256    0.1739652
5         0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                 0.0852713   -0.0400714    0.1955086
5         0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                -0.0295686   -0.1365474    0.0673407
5         0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                -0.2003754   -0.5077962    0.0443662
5         6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                 0.1256010   -0.2999546    0.4118459
5         6-24 months   ki1000111-WASH-Kenya        KENYA                          Control              NA                -0.0594620   -0.6987349    0.3392378
5         6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control              NA                -0.2187500   -0.4084201   -0.0546225
5         6-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Control              NA                 0.3703547   -0.1230926    0.6469987
5         6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Control              NA                -0.1059028   -0.6860399    0.2746192
5         6-24 months   ki1119695-PROBIT            BELARUS                        Control              NA                -0.1004831   -0.4323121    0.1544698
5         6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                 0.2083333    0.0649343    0.3297411
5         6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                 0.1548828    0.0429429    0.2537299
5         6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                -0.1244444   -0.3728327    0.0790026
6         0-24 months   ki1000107-Serrinha-VitA     BRAZIL                         Control              NA                 0.0000000   -0.3269677    0.2464022
6         0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                 0.3327586    0.0643319    0.5241785
6         0-24 months   ki1000111-WASH-Kenya        KENYA                          Control              NA                 0.1192638   -0.1151050    0.3043738
6         0-24 months   ki1000304-EU                INDIA                          Control              NA                -0.0666667   -0.2103564    0.0599647
6         0-24 months   ki1000304-VITAMIN-A         INDIA                          Control              NA                 0.0510491   -0.0367860    0.1314429
6         0-24 months   ki1000304-Vitamin-B12       INDIA                          Control              NA                 0.0355556   -0.1623117    0.1997387
6         0-24 months   ki1000304-ZnMort            INDIA                          Other                NA                 0.1111111   -0.0723472    0.2631832
6         0-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control              NA                -0.1365517   -0.3373639    0.0341075
6         0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              NA                -0.0588235   -0.7390244    0.3553240
6         0-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Control              NA                 0.1803957   -0.0179410    0.3400883
6         0-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Control              NA                -0.0600414   -0.3152650    0.1456568
6         0-24 months   ki1119695-PROBIT            BELARUS                        Control              NA                -0.1670533   -0.4433432    0.0563481
6         0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                 0.0539216   -0.0164294    0.1194033
6         0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                -0.2428986   -0.4450276   -0.0690431
6         0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control              NA                 0.0020202   -0.3750612    0.2756950
6         0-24 months   ki1148112-LCNI-5            MALAWI                         Control              NA                 0.0105820   -0.1887085    0.1764609
6         0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                -0.0575441   -0.1198088    0.0012584
6         0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                 0.1095625   -0.0783826    0.2647517
6         0-6 months    ki1000304-VITAMIN-A         INDIA                          Control              NA                 0.3148789    0.1056764    0.4751442
6         0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Control              NA                -0.0729313   -0.2483749    0.0778559
6         0-6 months    ki1119695-PROBIT            BELARUS                        Control              NA                -0.2214695   -0.5121184    0.0133128
6         0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                -0.0041451   -0.1109837    0.0924193
6         0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                -0.0458789   -0.1545110    0.0525315
6         0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                -0.0614538   -0.4952702    0.2465012
6         6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                 0.1378378   -0.2688982    0.4141976
6         6-24 months   ki1000111-WASH-Kenya        KENYA                          Control              NA                -0.0144928   -0.5149592    0.3206447
6         6-24 months   ki1000304-VITAMIN-A         INDIA                          Control              NA                -0.0800000   -0.5074485    0.2262422
6         6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control              NA                -0.1250000   -0.4426073    0.1226823
6         6-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Control              NA                -0.1315715   -0.6461037    0.2221303
6         6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Control              NA                -0.5219512   -1.2131072   -0.0466441
6         6-24 months   ki1119695-PROBIT            BELARUS                        Control              NA                -0.1218172   -0.5084447    0.1657144
6         6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                 0.3705542    0.2547225    0.4683832
6         6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                -0.0510875   -0.1686409    0.0546412
6         6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                 0.0925170   -0.2263029    0.3284486
7         0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                -0.1943553   -0.3893225   -0.0267483
7         0-24 months   ki1000111-WASH-Kenya        KENYA                          Control              NA                -0.0525373   -0.2990177    0.1471750
7         0-24 months   ki1000304-EU                INDIA                          Control              NA                -0.0475775   -0.2338212    0.1105530
7         0-24 months   ki1000304-VITAMIN-A         INDIA                          Control              NA                -0.0148678   -0.1009999    0.0645260
7         0-24 months   ki1000304-Vitamin-B12       INDIA                          Control              NA                -0.1250000   -0.3447874    0.0588661
7         0-24 months   ki1000304-ZnMort            INDIA                          Other                NA                 0.0344203   -0.1345451    0.1782220
7         0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              NA                 0.0612245   -0.4479600    0.3913510
7         0-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Control              NA                -0.0620595   -0.3215556    0.1464828
7         0-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Control              NA                -0.0694444   -0.3216318    0.1346218
7         0-24 months   ki1119695-PROBIT            BELARUS                        Control              NA                -0.1122536   -0.2750819    0.0297815
7         0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                 0.0729342   -0.0033008    0.1433766
7         0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                 0.0093657   -0.1386094    0.1381098
7         0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control              NA                -0.1494253   -0.8047477    0.2679428
7         0-24 months   ki1148112-LCNI-5            MALAWI                         Control              NA                 0.0588235   -0.1052216    0.1985199
7         0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                 0.0461523   -0.0048914    0.0946032
7         0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                 0.0502902   -0.0965990    0.1775036
7         0-6 months    ki1000304-VITAMIN-A         INDIA                          Control              NA                 0.3333333    0.0591453    0.5276163
7         0-6 months    ki1119695-PROBIT            BELARUS                        Control              NA                -0.0858489   -0.3268041    0.1113474
7         0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                 0.1893386    0.0732966    0.2908499
7         0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                -0.0368085   -0.1310498    0.0495804
7         0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                 0.2746479   -0.0545495    0.5010801
7         6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                -0.3341176   -0.7827203    0.0015989
7         6-24 months   ki1000111-WASH-Kenya        KENYA                          Control              NA                 0.0311111   -0.6929646    0.4455019
7         6-24 months   ki1000304-VITAMIN-A         INDIA                          Control              NA                -0.0446571   -0.4094151    0.2257012
7         6-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Control              NA                -0.4151261   -1.2147707    0.0958063
7         6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Control              NA                -0.3923155   -1.0339419    0.0469038
7         6-24 months   ki1119695-PROBIT            BELARUS                        Control              NA                -0.0409277   -0.3161046    0.1767140
7         6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                -0.0026596   -0.1791788    0.1474353
7         6-24 months   ki1148112-LCNI-5            MALAWI                         Control              NA                -0.1853448   -0.5283848    0.0807012
7         6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                 0.0767303   -0.0233551    0.1670271
7         6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                -0.0547267   -0.3070697    0.1488990
8         0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                -0.1256595   -0.2753420    0.0064553
8         0-24 months   ki1000111-WASH-Kenya        KENYA                          Control              NA                 0.0332776   -0.1626525    0.1961897
8         0-24 months   ki1000304-EU                INDIA                          Control              NA                -0.0595197   -0.1991384    0.0638428
8         0-24 months   ki1000304-VITAMIN-A         INDIA                          Control              NA                -0.0028335   -0.0880421    0.0757021
8         0-24 months   ki1000304-Vitamin-B12       INDIA                          Control              NA                 0.0104167   -0.1999960    0.1839346
8         0-24 months   ki1000304-ZnMort            INDIA                          Other                NA                -0.0044215   -0.1435826    0.1178052
8         0-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Control              NA                -0.0509804   -0.2176781    0.0928968
8         0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              NA                 0.1283933   -0.3864886    0.4520703
8         0-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Control              NA                -0.0448451   -0.3254690    0.1763660
8         0-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Control              NA                -0.2065704   -0.4358425   -0.0139080
8         0-24 months   ki1119695-PROBIT            BELARUS                        Control              NA                -0.0874825   -0.2331078    0.0409451
8         0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                -0.0207977   -0.1041712    0.0562805
8         0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                 0.0269360   -0.1066074    0.1443636
8         0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control              NA                -0.0109607   -0.3481642    0.2419013
8         0-24 months   ki1148112-LCNI-5            MALAWI                         Control              NA                -0.0108696   -0.1670608    0.1244182
8         0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                -0.0409524   -0.0905465    0.0063864
8         0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                -0.0130952   -0.1914541    0.1385635
8         0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Control              NA                -0.1994885   -0.5967303    0.0989257
8         0-6 months    ki1119695-PROBIT            BELARUS                        Control              NA                -0.0776053   -0.2661398    0.0828554
8         0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                -0.0909341   -0.2420005    0.0417579
8         0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                -0.0994340   -0.1772877   -0.0267289
8         0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                -0.1399431   -0.4966683    0.1317580
8         6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                -0.1790667   -0.5423562    0.0986529
8         6-24 months   ki1000111-WASH-Kenya        KENYA                          Control              NA                 0.2523129   -0.3974004    0.5999457
8         6-24 months   ki1000304-VITAMIN-A         INDIA                          Control              NA                -0.0931604   -0.4979439    0.2022401
8         6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Control              NA                -0.3174603   -0.6502239   -0.0517977
8         6-24 months   ki1119695-PROBIT            BELARUS                        Control              NA                 0.0267200   -0.2147345    0.2201802
8         6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                -0.0720310   -0.2403798    0.0734688
8         6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                 0.2087912   -0.0343295    0.3947661
8         6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control              NA                 0.0652632   -0.6660953    0.4755804
8         6-24 months   ki1148112-LCNI-5            MALAWI                         Control              NA                 0.0416667   -0.2693719    0.2764904
8         6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                -0.0946937   -0.2113512    0.0107293
8         6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                -0.0340631   -0.3339760    0.1984215
9         0-24 months   ki1000107-Serrinha-VitA     BRAZIL                         Control              NA                 0.0625000   -0.3424981    0.3453203
9         0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                -0.0028956   -0.2034687    0.1642494
9         0-24 months   ki1000111-WASH-Kenya        KENYA                          Control              NA                 0.0408497   -0.1501126    0.2001050
9         0-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Control              NA                -0.1858824   -0.3696933   -0.0267386
9         0-24 months   ki1000304-EU                INDIA                          Control              NA                 0.0448960   -0.1171342    0.1834252
9         0-24 months   ki1000304-VITAMIN-A         INDIA                          Control              NA                -0.0622550   -0.1728586    0.0379183
9         0-24 months   ki1000304-Vitamin-B12       INDIA                          Control              NA                 0.1095238   -0.0374405    0.2356691
9         0-24 months   ki1000304-ZnMort            INDIA                          Other                NA                -0.0885167   -0.2129924    0.0231854
9         0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              NA                 0.0860692   -0.4898987    0.4393783
9         0-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Control              NA                 0.1481551   -0.1546703    0.3715611
9         0-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Control              NA                -0.2496199   -0.5228076   -0.0254414
9         0-24 months   ki1119695-PROBIT            BELARUS                        Control              NA                -0.0643231   -0.2599820    0.1009525
9         0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                 0.0582293   -0.0220600    0.1322114
9         0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                 0.1011765   -0.0404630    0.2235344
9         0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control              NA                -0.1246023   -0.4180852    0.1081422
9         0-24 months   ki1148112-LCNI-5            MALAWI                         Control              NA                -0.0138365   -0.1520814    0.1078196
9         0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                -0.0427638   -0.0901937    0.0026027
9         0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                 0.1970173   -0.0592684    0.3912957
9         0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Control              NA                 0.2599620    0.0703864    0.4108776
9         0-6 months    ki1119695-PROBIT            BELARUS                        Control              NA                 0.0876217   -0.1204831    0.2570756
9         0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                -0.0090206   -0.1671550    0.1276886
9         0-6 months    ki1148112-LCNI-5            MALAWI                         Control              NA                -0.2759259   -0.6267207   -0.0007784
9         0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                -0.0658789   -0.1327388   -0.0029654
9         0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                 0.3705263   -0.0654529    0.6281045
9         6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                -0.0651592   -0.5123798    0.2498153
9         6-24 months   ki1000111-WASH-Kenya        KENYA                          Control              NA                 0.4196078   -0.1684162    0.7116994
9         6-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Control              NA                -0.3888889   -0.8471071   -0.0443425
9         6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              NA                 0.0827147   -0.8985731    0.5568186
9         6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Control              NA                -0.5017361   -0.8743527   -0.2031947
9         6-24 months   ki1119695-PROBIT            BELARUS                        Control              NA                -0.0065402   -0.2362679    0.1804987
9         6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                 0.0804501   -0.0761497    0.2142617
9         6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control              NA                 0.1136364   -0.5026031    0.4771470
9         6-24 months   ki1148112-LCNI-5            MALAWI                         Control              NA                 0.2698413    0.0086614    0.4622102
9         6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                -0.0510384   -0.1509378    0.0401899
9         6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                -0.0218750   -0.5074218    0.3072751
10        0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                 0.0539548   -0.1450573    0.2183784
10        0-24 months   ki1000111-WASH-Kenya        KENYA                          Control              NA                -0.0569155   -0.2694451    0.1200325
10        0-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Control              NA                -0.0699174   -0.1534201    0.0075400
10        0-24 months   ki1000304-EU                INDIA                          Control              NA                -0.0317780   -0.1741525    0.0933327
10        0-24 months   ki1000304-VITAMIN-A         INDIA                          Control              NA                -0.0392538   -0.1668741    0.0744088
10        0-24 months   ki1000304-Vitamin-B12       INDIA                          Control              NA                -0.0517241   -0.2632618    0.1243908
10        0-24 months   ki1000304-ZnMort            INDIA                          Other                NA                -0.0527925   -0.1810235    0.0615156
10        0-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control              NA                 0.0315675   -0.0417509    0.0997258
10        0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              NA                -0.0252638   -0.5201017    0.3084897
10        0-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Control              NA                 0.0893471   -0.2898149    0.3570483
10        0-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Control              NA                 0.0132626   -0.1984201    0.1875548
10        0-24 months   ki1119695-PROBIT            BELARUS                        Control              NA                -0.1157723   -0.2284280   -0.0134479
10        0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                 0.0106856   -0.0742665    0.0889197
10        0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                -0.1675676   -0.3314545   -0.0238533
10        0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control              NA                 0.1245363   -0.2391634    0.3814886
10        0-24 months   ki1148112-LCNI-5            MALAWI                         Control              NA                 0.0651634   -0.0207760    0.1438674
10        0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                -0.0860890   -0.1283028   -0.0454546
10        0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                -0.1666667   -0.5617577    0.1284749
10        0-6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Control              NA                -0.0696095   -0.3950067    0.1798860
10        0-6 months    ki1000304-ZnMort            INDIA                          Other                NA                 0.0000000   -0.4776222    0.3232370
10        0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Control              NA                 0.1167969   -0.1181553    0.3023797
10        0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Control              NA                 0.0384615   -0.2358210    0.2518688
10        0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              NA                 0.1294299   -0.8196920    0.5835052
10        0-6 months    ki1119695-PROBIT            BELARUS                        Control              NA                -0.0461059   -0.1749453    0.0686056
10        0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                -0.1032389   -0.2721409    0.0432380
10        0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                -0.3548387   -0.8052851   -0.0167856
10        0-6 months    ki1148112-LCNI-5            MALAWI                         Control              NA                -0.0197044   -0.2398363    0.1613432
10        0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                -0.1159123   -0.1688499   -0.0653723
10        0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                -0.1160714   -0.7530584    0.2894615
10        6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                 0.2317291   -0.2405104    0.5241957
10        6-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Control              NA                -0.1300813   -0.3445497    0.0501773
10        6-24 months   ki1000304-VITAMIN-A         INDIA                          Control              NA                -0.1285266   -0.6620908    0.2337528
10        6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control              NA                 0.1600000    0.0488758    0.2581410
10        6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              NA                -0.4400000   -1.3231302    0.1074112
10        6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Control              NA                -0.0868506   -0.6883876    0.3003713
10        6-24 months   ki1119695-PROBIT            BELARUS                        Control              NA                -0.0905297   -0.3065023    0.0897413
10        6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                -0.0149597   -0.2032097    0.1438373
10        6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                -0.6791604   -1.2502625   -0.2530003
10        6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control              NA                 0.2832512   -0.3403115    0.6167094
10        6-24 months   ki1148112-LCNI-5            MALAWI                         Control              NA                -0.0149457   -0.2173548    0.1538090
10        6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                -0.0581015   -0.1547593    0.0304658
11        0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                -0.1272714   -0.3380535    0.0503064
11        0-24 months   ki1000111-WASH-Kenya        KENYA                          Control              NA                -0.0022405   -0.2405632    0.1902985
11        0-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Control              NA                -0.1414460   -0.2257172   -0.0629688
11        0-24 months   ki1000304-EU                INDIA                          Control              NA                 0.0297030   -0.1156509    0.1561193
11        0-24 months   ki1000304-VITAMIN-A         INDIA                          Control              NA                -0.0279761   -0.1552689    0.0852911
11        0-24 months   ki1000304-Vitamin-B12       INDIA                          Control              NA                -0.0174419   -0.1878131    0.1284926
11        0-24 months   ki1000304-ZnMort            INDIA                          Other                NA                -0.1429194   -0.3337380    0.0205987
11        0-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control              NA                -0.0612766   -0.1552953    0.0250908
11        0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              NA                 0.0224252   -0.5448661    0.3814011
11        0-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Control              NA                 0.2080537   -0.1981170    0.4765294
11        0-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Control              NA                 0.0290711   -0.1782190    0.1998916
11        0-24 months   ki1119695-PROBIT            BELARUS                        Control              NA                -0.0110750   -0.1714404    0.1273371
11        0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                -0.0020760   -0.0850805    0.0745789
11        0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                 0.1577744    0.0604809    0.2449925
11        0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control              NA                 0.2620000   -0.1057006    0.5074218
11        0-24 months   ki1148112-LCNI-5            MALAWI                         Control              NA                 0.0180995   -0.0934313    0.1182541
11        0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                -0.0323651   -0.0680371    0.0021155
11        0-6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Control              NA                 0.1035654   -0.2470350    0.3555954
11        0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Control              NA                 0.0877193   -0.1161122    0.2543258
11        0-6 months    ki1119695-PROBIT            BELARUS                        Control              NA                -0.1029018   -0.3531282    0.1010517
11        0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                 0.0979803   -0.0468220    0.2227527
11        0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                 0.0452459   -0.1556417    0.2112128
11        0-6 months    ki1148112-LCNI-5            MALAWI                         Control              NA                -0.0489510   -0.5000783    0.2665061
11        0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                -0.0566146   -0.1032090   -0.0119881
11        6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                -0.4006734   -0.9323422   -0.0152891
11        6-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Control              NA                -0.2132486   -0.3814294   -0.0655429
11        6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control              NA                -0.2428571   -0.6924263    0.0872903
11        6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              NA                -0.2312253   -1.1754923    0.3031850
11        6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Control              NA                -0.0742706   -0.4596797    0.2093764
11        6-24 months   ki1119695-PROBIT            BELARUS                        Control              NA                 0.1463542   -0.0924037    0.3329286
11        6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                -0.2451309   -0.4336077   -0.0814332
11        6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control              NA                 0.2642857   -0.2982471    0.5830720
11        6-24 months   ki1148112-LCNI-5            MALAWI                         Control              NA                 0.0414414   -0.1735998    0.2170802
11        6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                 0.0484812   -0.0379046    0.1276769
12        0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                 0.0746439   -0.2549449    0.3176721
12        0-24 months   ki1000111-WASH-Kenya        KENYA                          Control              NA                -0.0184795   -0.2203839    0.1500211
12        0-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Control              NA                -0.0917526   -0.1679678   -0.0205108
12        0-24 months   ki1000304-EU                INDIA                          Control              NA                -0.0572956   -0.2060569    0.0731166
12        0-24 months   ki1000304-VITAMIN-A         INDIA                          Control              NA                 0.0270968   -0.0525390    0.1007072
12        0-24 months   ki1000304-Vitamin-B12       INDIA                          Control              NA                 0.0287356   -0.1873893    0.2055222
12        0-24 months   ki1000304-ZnMort            INDIA                          Other                NA                 0.0753336   -0.0596699    0.1931375
12        0-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control              NA                -0.0845070   -0.1708989   -0.0044894
12        0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              NA                 0.0865385   -0.5275165    0.4537460
12        0-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Control              NA                -0.1381160   -0.4896182    0.1304430
12        0-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Control              NA                -0.2185814   -0.5492877    0.0415333
12        0-24 months   ki1119695-PROBIT            BELARUS                        Control              NA                -0.1583384   -0.3356279   -0.0045821
12        0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                 0.1084625    0.0317266    0.1791171
12        0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                -0.0111111   -0.1780311    0.1321573
12        0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control              NA                -0.0590664   -0.3491242    0.1686298
12        0-24 months   ki1148112-LCNI-5            MALAWI                         Control              NA                -0.0709091   -0.2087936    0.0512472
12        0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                -0.0238322   -0.0662102    0.0168614
12        0-6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Control              NA                -0.0911765   -0.3388594    0.1106862
12        0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Control              NA                -0.2316384   -0.5541375    0.0239389
12        0-6 months    ki1119695-PROBIT            BELARUS                        Control              NA                -0.1467599   -0.4190013    0.0732508
12        0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                 0.4268349    0.3156172    0.5199788
12        0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                -0.1943320   -0.6271265    0.1233448
12        0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                -0.0866981   -0.1653620   -0.0133441
12        6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                 0.1792929   -0.6403313    0.5893756
12        6-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Control              NA                -0.1529412   -0.3574061    0.0207254
12        6-24 months   ki1000304-VITAMIN-A         INDIA                          Control              NA                -0.0728863   -0.4008131    0.1782737
12        6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control              NA                -0.1494404   -0.3486429    0.0203386
12        6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Control              NA                -0.3980066   -0.8045427   -0.0830570
12        6-24 months   ki1119695-PROBIT            BELARUS                        Control              NA                -0.0694050   -0.3341489    0.1428041
12        6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                 0.0874126   -0.0486769    0.2058414
12        6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control              NA                -0.1282051   -0.6586179    0.2325858
12        6-24 months   ki1148112-LCNI-5            MALAWI                         Control              NA                 0.1094453   -0.1501047    0.3104213
12        6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                 0.0819819   -0.0014078    0.1584276
