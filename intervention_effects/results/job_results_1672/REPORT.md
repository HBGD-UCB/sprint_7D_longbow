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

* month
* agecat
* studyid
* country

## Data Summary

month   agecat        studyid                     country                        tr.x       ever_stunted   n_cell      n
------  ------------  --------------------------  -----------------------------  --------  -------------  -------  -----
12      0-6 months    ki1000107-Serrinha-VitA     BRAZIL                         Control               0        5     10
12      0-6 months    ki1000107-Serrinha-VitA     BRAZIL                         Control               1        1     10
12      0-6 months    ki1000107-Serrinha-VitA     BRAZIL                         Other                 0        4     10
12      0-6 months    ki1000107-Serrinha-VitA     BRAZIL                         Other                 1        0     10
11      0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Control               0        3     13
11      0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                   0        4     13
11      0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Other                 0        6     13
12      0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Control               0        2     21
12      0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                   0        7     21
12      0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Other                 0       12     21
1       0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Control               0       17     71
1       0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Control               1        0     71
1       0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                   0       14     71
1       0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                   1        1     71
1       0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Other                 0       36     71
1       0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Other                 1        3     71
2       0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Control               0        5     34
2       0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Control               1        0     34
2       0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                   0        7     34
2       0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                   1        2     34
2       0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Other                 0       18     34
2       0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Other                 1        2     34
3       0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Control               0        3     41
3       0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Control               1        0     41
3       0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                   0       16     41
3       0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                   1        4     41
3       0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Other                 0       17     41
3       0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Other                 1        1     41
4       0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Control               0        2     22
4       0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Control               1        3     22
4       0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                   0        7     22
4       0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                   1        0     22
4       0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Other                 0        9     22
4       0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Other                 1        1     22
5       0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Control               0        4     21
5       0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Control               1        1     21
5       0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                   0        5     21
5       0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                   1        0     21
5       0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Other                 0       10     21
5       0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Other                 1        1     21
6       0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Control               0        1      7
6       0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Control               1        2      7
6       0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                   0        1      7
6       0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                   1        0      7
6       0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Other                 0        1      7
6       0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Other                 1        2      7
9       0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                   0        1      1
10      0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Other                 0        1      1
9       0-6 months    ki1000111-WASH-Kenya        KENYA                          Control               0        3      5
9       0-6 months    ki1000111-WASH-Kenya        KENYA                          Other                 0        2      5
3       0-6 months    ki1000111-WASH-Kenya        KENYA                          Control               0        5     19
3       0-6 months    ki1000111-WASH-Kenya        KENYA                          Control               1        0     19
3       0-6 months    ki1000111-WASH-Kenya        KENYA                          LNS                   0        4     19
3       0-6 months    ki1000111-WASH-Kenya        KENYA                          LNS                   1        0     19
3       0-6 months    ki1000111-WASH-Kenya        KENYA                          Other                 0        9     19
3       0-6 months    ki1000111-WASH-Kenya        KENYA                          Other                 1        1     19
1       0-6 months    ki1000111-WASH-Kenya        KENYA                          Control               0        3     13
1       0-6 months    ki1000111-WASH-Kenya        KENYA                          Control               1        1     13
1       0-6 months    ki1000111-WASH-Kenya        KENYA                          LNS                   0        5     13
1       0-6 months    ki1000111-WASH-Kenya        KENYA                          LNS                   1        0     13
1       0-6 months    ki1000111-WASH-Kenya        KENYA                          Other                 0        4     13
1       0-6 months    ki1000111-WASH-Kenya        KENYA                          Other                 1        0     13
10      0-6 months    ki1000111-WASH-Kenya        KENYA                          LNS                   0        3      9
10      0-6 months    ki1000111-WASH-Kenya        KENYA                          LNS                   1        0      9
10      0-6 months    ki1000111-WASH-Kenya        KENYA                          Other                 0        5      9
10      0-6 months    ki1000111-WASH-Kenya        KENYA                          Other                 1        1      9
11      0-6 months    ki1000111-WASH-Kenya        KENYA                          Control               0        4      9
11      0-6 months    ki1000111-WASH-Kenya        KENYA                          Control               1        1      9
11      0-6 months    ki1000111-WASH-Kenya        KENYA                          LNS                   0        2      9
11      0-6 months    ki1000111-WASH-Kenya        KENYA                          LNS                   1        0      9
11      0-6 months    ki1000111-WASH-Kenya        KENYA                          Other                 0        2      9
11      0-6 months    ki1000111-WASH-Kenya        KENYA                          Other                 1        0      9
12      0-6 months    ki1000111-WASH-Kenya        KENYA                          Control               0        5      8
12      0-6 months    ki1000111-WASH-Kenya        KENYA                          Control               1        0      8
12      0-6 months    ki1000111-WASH-Kenya        KENYA                          Other                 0        2      8
12      0-6 months    ki1000111-WASH-Kenya        KENYA                          Other                 1        1      8
4       0-6 months    ki1000111-WASH-Kenya        KENYA                          Control               0        1      9
4       0-6 months    ki1000111-WASH-Kenya        KENYA                          Control               1        0      9
4       0-6 months    ki1000111-WASH-Kenya        KENYA                          LNS                   0        4      9
4       0-6 months    ki1000111-WASH-Kenya        KENYA                          LNS                   1        0      9
4       0-6 months    ki1000111-WASH-Kenya        KENYA                          Other                 0        3      9
4       0-6 months    ki1000111-WASH-Kenya        KENYA                          Other                 1        1      9
5       0-6 months    ki1000111-WASH-Kenya        KENYA                          Other                 0        2      3
5       0-6 months    ki1000111-WASH-Kenya        KENYA                          Other                 1        1      3
7       0-6 months    ki1000111-WASH-Kenya        KENYA                          Control               0        1      4
7       0-6 months    ki1000111-WASH-Kenya        KENYA                          LNS                   0        2      4
7       0-6 months    ki1000111-WASH-Kenya        KENYA                          Other                 0        1      4
6       0-6 months    ki1000111-WASH-Kenya        KENYA                          Control               0        1      4
6       0-6 months    ki1000111-WASH-Kenya        KENYA                          LNS                   0        1      4
6       0-6 months    ki1000111-WASH-Kenya        KENYA                          Other                 0        2      4
2       0-6 months    ki1000111-WASH-Kenya        KENYA                          Control               0        2      9
2       0-6 months    ki1000111-WASH-Kenya        KENYA                          LNS                   0        2      9
2       0-6 months    ki1000111-WASH-Kenya        KENYA                          Other                 0        5      9
11      0-6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Control               0       28     99
11      0-6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Control               1       14     99
11      0-6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Other                 0       44     99
11      0-6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Other                 1       13     99
12      0-6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Control               0       20     65
12      0-6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Control               1        2     65
12      0-6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Other                 0       31     65
12      0-6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Other                 1       12     65
1       0-6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Control               0       30     87
1       0-6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Control               1       21     87
1       0-6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Other                 0       27     87
1       0-6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Other                 1        9     87
2       0-6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Control               0       21     37
2       0-6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Control               1        3     37
2       0-6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Other                 0       10     37
2       0-6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Other                 1        3     37
10      0-6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Other                 0        4      4
3       0-6 months    ki1000304-EU                INDIA                          Control               0        0      5
3       0-6 months    ki1000304-EU                INDIA                          Control               1        2      5
3       0-6 months    ki1000304-EU                INDIA                          Zinc                  0        1      5
3       0-6 months    ki1000304-EU                INDIA                          Zinc                  1        2      5
5       0-6 months    ki1000304-EU                INDIA                          Control               0        1      1
7       0-6 months    ki1000304-EU                INDIA                          Control               0        1      4
7       0-6 months    ki1000304-EU                INDIA                          Control               1        1      4
7       0-6 months    ki1000304-EU                INDIA                          Zinc                  0        2      4
7       0-6 months    ki1000304-EU                INDIA                          Zinc                  1        0      4
8       0-6 months    ki1000304-EU                INDIA                          Control               0        0      4
8       0-6 months    ki1000304-EU                INDIA                          Control               1        1      4
8       0-6 months    ki1000304-EU                INDIA                          Zinc                  0        2      4
8       0-6 months    ki1000304-EU                INDIA                          Zinc                  1        1      4
1       0-6 months    ki1000304-VITAMIN-A         INDIA                          Control               0       15     40
1       0-6 months    ki1000304-VITAMIN-A         INDIA                          Control               1        5     40
1       0-6 months    ki1000304-VITAMIN-A         INDIA                          Other                 0       16     40
1       0-6 months    ki1000304-VITAMIN-A         INDIA                          Other                 1        4     40
6       0-6 months    ki1000304-VITAMIN-A         INDIA                          Control               0       11     28
6       0-6 months    ki1000304-VITAMIN-A         INDIA                          Control               1        5     28
6       0-6 months    ki1000304-VITAMIN-A         INDIA                          Other                 0        7     28
6       0-6 months    ki1000304-VITAMIN-A         INDIA                          Other                 1        5     28
7       0-6 months    ki1000304-VITAMIN-A         INDIA                          Control               0       11     37
7       0-6 months    ki1000304-VITAMIN-A         INDIA                          Control               1        6     37
7       0-6 months    ki1000304-VITAMIN-A         INDIA                          Other                 0        7     37
7       0-6 months    ki1000304-VITAMIN-A         INDIA                          Other                 1       13     37
4       0-6 months    ki1000304-VITAMIN-A         INDIA                          Control               0       11     30
4       0-6 months    ki1000304-VITAMIN-A         INDIA                          Control               1        5     30
4       0-6 months    ki1000304-VITAMIN-A         INDIA                          Other                 0       11     30
4       0-6 months    ki1000304-VITAMIN-A         INDIA                          Other                 1        3     30
5       0-6 months    ki1000304-VITAMIN-A         INDIA                          Control               0       10     25
5       0-6 months    ki1000304-VITAMIN-A         INDIA                          Control               1        4     25
5       0-6 months    ki1000304-VITAMIN-A         INDIA                          Other                 0        6     25
5       0-6 months    ki1000304-VITAMIN-A         INDIA                          Other                 1        5     25
8       0-6 months    ki1000304-VITAMIN-A         INDIA                          Control               0       16     44
8       0-6 months    ki1000304-VITAMIN-A         INDIA                          Control               1       10     44
8       0-6 months    ki1000304-VITAMIN-A         INDIA                          Other                 0       11     44
8       0-6 months    ki1000304-VITAMIN-A         INDIA                          Other                 1        7     44
9       0-6 months    ki1000304-VITAMIN-A         INDIA                          Control               0       11     27
9       0-6 months    ki1000304-VITAMIN-A         INDIA                          Control               1        5     27
9       0-6 months    ki1000304-VITAMIN-A         INDIA                          Other                 0        7     27
9       0-6 months    ki1000304-VITAMIN-A         INDIA                          Other                 1        4     27
2       0-6 months    ki1000304-VITAMIN-A         INDIA                          Control               0       11     35
2       0-6 months    ki1000304-VITAMIN-A         INDIA                          Control               1        3     35
2       0-6 months    ki1000304-VITAMIN-A         INDIA                          Other                 0       19     35
2       0-6 months    ki1000304-VITAMIN-A         INDIA                          Other                 1        2     35
10      0-6 months    ki1000304-VITAMIN-A         INDIA                          Control               0        7     21
10      0-6 months    ki1000304-VITAMIN-A         INDIA                          Control               1        2     21
10      0-6 months    ki1000304-VITAMIN-A         INDIA                          Other                 0        9     21
10      0-6 months    ki1000304-VITAMIN-A         INDIA                          Other                 1        3     21
11      0-6 months    ki1000304-VITAMIN-A         INDIA                          Control               0        5     15
11      0-6 months    ki1000304-VITAMIN-A         INDIA                          Control               1        2     15
11      0-6 months    ki1000304-VITAMIN-A         INDIA                          Other                 0        6     15
11      0-6 months    ki1000304-VITAMIN-A         INDIA                          Other                 1        2     15
12      0-6 months    ki1000304-VITAMIN-A         INDIA                          Control               0        4     12
12      0-6 months    ki1000304-VITAMIN-A         INDIA                          Control               1        2     12
12      0-6 months    ki1000304-VITAMIN-A         INDIA                          Other                 0        5     12
12      0-6 months    ki1000304-VITAMIN-A         INDIA                          Other                 1        1     12
3       0-6 months    ki1000304-VITAMIN-A         INDIA                          Control               0        6     20
3       0-6 months    ki1000304-VITAMIN-A         INDIA                          Control               1        4     20
3       0-6 months    ki1000304-VITAMIN-A         INDIA                          Other                 0        5     20
3       0-6 months    ki1000304-VITAMIN-A         INDIA                          Other                 1        5     20
7       0-6 months    ki1000304-Vitamin-B12       INDIA                          Control               0        1      1
10      0-6 months    ki1000304-ZnMort            INDIA                          Other                 0        8     13
10      0-6 months    ki1000304-ZnMort            INDIA                          Other                 1        0     13
10      0-6 months    ki1000304-ZnMort            INDIA                          Zinc                  0        2     13
10      0-6 months    ki1000304-ZnMort            INDIA                          Zinc                  1        3     13
12      0-6 months    ki1000304-ZnMort            INDIA                          Other                 0        5     16
12      0-6 months    ki1000304-ZnMort            INDIA                          Other                 1        5     16
12      0-6 months    ki1000304-ZnMort            INDIA                          Zinc                  0        1     16
12      0-6 months    ki1000304-ZnMort            INDIA                          Zinc                  1        5     16
3       0-6 months    ki1000304-ZnMort            INDIA                          Other                 0        2     25
3       0-6 months    ki1000304-ZnMort            INDIA                          Other                 1        6     25
3       0-6 months    ki1000304-ZnMort            INDIA                          Zinc                  0       13     25
3       0-6 months    ki1000304-ZnMort            INDIA                          Zinc                  1        4     25
4       0-6 months    ki1000304-ZnMort            INDIA                          Other                 0        4     18
4       0-6 months    ki1000304-ZnMort            INDIA                          Other                 1        1     18
4       0-6 months    ki1000304-ZnMort            INDIA                          Zinc                  0        8     18
4       0-6 months    ki1000304-ZnMort            INDIA                          Zinc                  1        5     18
6       0-6 months    ki1000304-ZnMort            INDIA                          Other                 0        8     18
6       0-6 months    ki1000304-ZnMort            INDIA                          Other                 1        3     18
6       0-6 months    ki1000304-ZnMort            INDIA                          Zinc                  0        5     18
6       0-6 months    ki1000304-ZnMort            INDIA                          Zinc                  1        2     18
5       0-6 months    ki1000304-ZnMort            INDIA                          Other                 0        4     11
5       0-6 months    ki1000304-ZnMort            INDIA                          Other                 1        1     11
5       0-6 months    ki1000304-ZnMort            INDIA                          Zinc                  0        2     11
5       0-6 months    ki1000304-ZnMort            INDIA                          Zinc                  1        4     11
8       0-6 months    ki1000304-ZnMort            INDIA                          Other                 0        5     14
8       0-6 months    ki1000304-ZnMort            INDIA                          Other                 1        2     14
8       0-6 months    ki1000304-ZnMort            INDIA                          Zinc                  0        4     14
8       0-6 months    ki1000304-ZnMort            INDIA                          Zinc                  1        3     14
1       0-6 months    ki1000304-ZnMort            INDIA                          Other                 0        7     21
1       0-6 months    ki1000304-ZnMort            INDIA                          Other                 1        5     21
1       0-6 months    ki1000304-ZnMort            INDIA                          Zinc                  0        7     21
1       0-6 months    ki1000304-ZnMort            INDIA                          Zinc                  1        2     21
9       0-6 months    ki1000304-ZnMort            INDIA                          Other                 0        3     17
9       0-6 months    ki1000304-ZnMort            INDIA                          Other                 1        6     17
9       0-6 months    ki1000304-ZnMort            INDIA                          Zinc                  0        5     17
9       0-6 months    ki1000304-ZnMort            INDIA                          Zinc                  1        3     17
7       0-6 months    ki1000304-ZnMort            INDIA                          Other                 0        2     10
7       0-6 months    ki1000304-ZnMort            INDIA                          Other                 1        2     10
7       0-6 months    ki1000304-ZnMort            INDIA                          Zinc                  0        2     10
7       0-6 months    ki1000304-ZnMort            INDIA                          Zinc                  1        4     10
11      0-6 months    ki1000304-ZnMort            INDIA                          Other                 0        3      9
11      0-6 months    ki1000304-ZnMort            INDIA                          Other                 1        1      9
11      0-6 months    ki1000304-ZnMort            INDIA                          Zinc                  0        5      9
11      0-6 months    ki1000304-ZnMort            INDIA                          Zinc                  1        0      9
2       0-6 months    ki1000304-ZnMort            INDIA                          Other                 0        3      9
2       0-6 months    ki1000304-ZnMort            INDIA                          Other                 1        3      9
2       0-6 months    ki1000304-ZnMort            INDIA                          Zinc                  0        1      9
2       0-6 months    ki1000304-ZnMort            INDIA                          Zinc                  1        2      9
10      0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Control               0       42    113
10      0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Control               1       14    113
10      0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Other                 0       40    113
10      0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Other                 1       17    113
11      0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Control               0       24    105
11      0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Control               1        8    105
11      0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Other                 0       49    105
11      0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Other                 1       24    105
12      0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Control               0       39    109
12      0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Control               1       23    109
12      0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Other                 0       35    109
12      0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Other                 1       12    109
1       0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Control               0       33     78
1       0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Control               1       12     78
1       0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Other                 0       24     78
1       0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Other                 1        9     78
2       0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Control               0       20     67
2       0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Control               1        8     67
2       0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Other                 0       31     67
2       0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Other                 1        8     67
3       0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Control               0       29     74
3       0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Control               1        5     74
3       0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Other                 0       26     74
3       0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Other                 1       14     74
4       0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Control               0       22     65
4       0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Control               1        5     65
4       0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Other                 0       29     65
4       0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Other                 1        9     65
5       0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Control               0       21     73
5       0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Control               1       10     73
5       0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Other                 0       31     73
5       0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Other                 1       11     73
6       0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Control               0       31     97
6       0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Control               1       16     97
6       0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Other                 0       38     97
6       0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Other                 1       12     97
7       0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Control               0        3     11
7       0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Control               1        2     11
7       0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Other                 0        2     11
7       0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Other                 1        4     11
9       0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Control               0        3     13
9       0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Control               1        1     13
9       0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Other                 0        6     13
9       0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Other                 1        3     13
12      0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Control               0       11     66
12      0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Control               1        6     66
12      0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Other                 0       32     66
12      0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Other                 1       17     66
10      0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Control               0        3     30
10      0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Control               1        4     30
10      0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Other                 0       14     30
10      0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Other                 1        9     30
4       0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Control               0        5     30
4       0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Control               1        3     30
4       0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Other                 0       15     30
4       0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Other                 1        7     30
6       0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Control               0        7     34
6       0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Control               1        2     34
6       0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Other                 0       20     34
6       0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Other                 1        5     34
1       0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Control               0        9     63
1       0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Control               1        7     63
1       0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Other                 0       20     63
1       0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Other                 1       27     63
2       0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Control               0        4     40
2       0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Control               1        5     40
2       0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Other                 0       20     40
2       0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Other                 1       11     40
3       0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Control               0        4     40
3       0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Control               1        6     40
3       0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Other                 0       18     40
3       0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Other                 1       12     40
5       0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Control               0        5     31
5       0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Control               1        3     31
5       0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Other                 0       15     31
5       0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Other                 1        8     31
7       0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Control               0        4     18
7       0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Control               1        1     18
7       0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Other                 0        6     18
7       0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Other                 1        7     18
11      0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Control               0        8     51
11      0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Control               1        4     51
11      0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Other                 0       28     51
11      0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Other                 1       11     51
8       0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control               0       56    220
8       0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control               1        3    220
8       0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                 0       97    220
8       0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                 1       10    220
8       0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                  0       48    220
8       0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                  1        6    220
7       0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control               0       43    198
7       0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control               1        3    198
7       0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                 0       97    198
7       0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                 1        8    198
7       0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                  0       45    198
7       0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                  1        2    198
9       0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control               0       41    206
9       0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control               1        4    206
9       0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                 0      101    206
9       0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                 1        8    206
9       0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                  0       51    206
9       0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                  1        1    206
10      0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control               0       56    227
10      0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control               1        5    227
10      0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                 0       99    227
10      0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                 1       11    227
10      0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                  0       50    227
10      0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                  1        6    227
11      0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control               0       53    211
11      0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control               1        1    211
11      0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                 0      102    211
11      0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                 1        4    211
11      0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                  0       48    211
11      0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                  1        3    211
12      0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control               0       49    195
12      0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control               1        3    195
12      0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                 0       90    195
12      0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                 1        3    195
12      0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                  0       48    195
12      0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                  1        2    195
1       0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control               0       37    152
1       0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control               1        3    152
1       0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                 0       76    152
1       0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                 1        3    152
1       0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                  0       30    152
1       0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                  1        3    152
2       0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control               0       36    166
2       0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control               1        1    166
2       0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                 0       79    166
2       0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                 1        5    166
2       0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                  0       41    166
2       0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                  1        4    166
3       0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control               0       32    163
3       0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control               1        3    163
3       0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                 0       75    163
3       0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                 1        6    163
3       0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                  0       40    163
3       0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                  1        7    163
4       0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control               0       42    166
4       0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control               1        5    166
4       0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                 0       69    166
4       0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                 1        5    166
4       0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                  0       39    166
4       0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                  1        6    166
5       0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control               0       37    174
5       0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control               1        5    174
5       0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                 0       91    174
5       0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                 1        4    174
5       0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                  0       33    174
5       0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                  1        4    174
6       0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control               0       35    156
6       0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control               1        4    156
6       0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                 0       67    156
6       0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                 1        5    156
6       0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                  0       42    156
6       0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                  1        3    156
7       0-6 months    ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc                  0        3      4
7       0-6 months    ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc                  1        1      4
5       0-6 months    ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc                  0       12     15
5       0-6 months    ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc                  1        3     15
2       0-6 months    ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc                  0        4      4
4       0-6 months    ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc                  0        3      3
8       0-6 months    ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc                  0        4      4
1       0-6 months    ki1112895-Burkina Faso Zn   BURKINA FASO                   Control               0        6      9
1       0-6 months    ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc                  0        3      9
12      0-6 months    ki1112895-Burkina Faso Zn   BURKINA FASO                   Control               0        1      2
12      0-6 months    ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc                  0        1      2
9       0-6 months    ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc                  0        3      4
9       0-6 months    ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc                  1        1      4
6       0-6 months    ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc                  0        1      1
4       0-6 months    ki1112895-Guatemala BSC     GUATEMALA                      Control               0        3     19
4       0-6 months    ki1112895-Guatemala BSC     GUATEMALA                      Control               1        2     19
4       0-6 months    ki1112895-Guatemala BSC     GUATEMALA                      Other                 0       12     19
4       0-6 months    ki1112895-Guatemala BSC     GUATEMALA                      Other                 1        2     19
5       0-6 months    ki1112895-Guatemala BSC     GUATEMALA                      Control               0        6     22
5       0-6 months    ki1112895-Guatemala BSC     GUATEMALA                      Control               1        0     22
5       0-6 months    ki1112895-Guatemala BSC     GUATEMALA                      Other                 0       13     22
5       0-6 months    ki1112895-Guatemala BSC     GUATEMALA                      Other                 1        3     22
6       0-6 months    ki1112895-Guatemala BSC     GUATEMALA                      Control               0        6     34
6       0-6 months    ki1112895-Guatemala BSC     GUATEMALA                      Control               1        3     34
6       0-6 months    ki1112895-Guatemala BSC     GUATEMALA                      Other                 0       21     34
6       0-6 months    ki1112895-Guatemala BSC     GUATEMALA                      Other                 1        4     34
10      0-6 months    ki1112895-Guatemala BSC     GUATEMALA                      Control               0        5     24
10      0-6 months    ki1112895-Guatemala BSC     GUATEMALA                      Control               1        2     24
10      0-6 months    ki1112895-Guatemala BSC     GUATEMALA                      Other                 0       13     24
10      0-6 months    ki1112895-Guatemala BSC     GUATEMALA                      Other                 1        4     24
1       0-6 months    ki1112895-Guatemala BSC     GUATEMALA                      Control               0        3     12
1       0-6 months    ki1112895-Guatemala BSC     GUATEMALA                      Control               1        0     12
1       0-6 months    ki1112895-Guatemala BSC     GUATEMALA                      Other                 0        6     12
1       0-6 months    ki1112895-Guatemala BSC     GUATEMALA                      Other                 1        3     12
2       0-6 months    ki1112895-Guatemala BSC     GUATEMALA                      Control               0        4     17
2       0-6 months    ki1112895-Guatemala BSC     GUATEMALA                      Control               1        1     17
2       0-6 months    ki1112895-Guatemala BSC     GUATEMALA                      Other                 0       10     17
2       0-6 months    ki1112895-Guatemala BSC     GUATEMALA                      Other                 1        2     17
3       0-6 months    ki1112895-Guatemala BSC     GUATEMALA                      Control               0        1     17
3       0-6 months    ki1112895-Guatemala BSC     GUATEMALA                      Control               1        1     17
3       0-6 months    ki1112895-Guatemala BSC     GUATEMALA                      Other                 0       11     17
3       0-6 months    ki1112895-Guatemala BSC     GUATEMALA                      Other                 1        4     17
7       0-6 months    ki1112895-Guatemala BSC     GUATEMALA                      Control               0        3     22
7       0-6 months    ki1112895-Guatemala BSC     GUATEMALA                      Control               1        2     22
7       0-6 months    ki1112895-Guatemala BSC     GUATEMALA                      Other                 0       13     22
7       0-6 months    ki1112895-Guatemala BSC     GUATEMALA                      Other                 1        4     22
9       0-6 months    ki1112895-Guatemala BSC     GUATEMALA                      Control               0        5     26
9       0-6 months    ki1112895-Guatemala BSC     GUATEMALA                      Control               1        1     26
9       0-6 months    ki1112895-Guatemala BSC     GUATEMALA                      Other                 0       12     26
9       0-6 months    ki1112895-Guatemala BSC     GUATEMALA                      Other                 1        8     26
8       0-6 months    ki1112895-Guatemala BSC     GUATEMALA                      Control               0        5     17
8       0-6 months    ki1112895-Guatemala BSC     GUATEMALA                      Control               1        0     17
8       0-6 months    ki1112895-Guatemala BSC     GUATEMALA                      Other                 0        9     17
8       0-6 months    ki1112895-Guatemala BSC     GUATEMALA                      Other                 1        3     17
12      0-6 months    ki1112895-Guatemala BSC     GUATEMALA                      Control               0        0      9
12      0-6 months    ki1112895-Guatemala BSC     GUATEMALA                      Control               1        1      9
12      0-6 months    ki1112895-Guatemala BSC     GUATEMALA                      Other                 0        7      9
12      0-6 months    ki1112895-Guatemala BSC     GUATEMALA                      Other                 1        1      9
11      0-6 months    ki1112895-Guatemala BSC     GUATEMALA                      Control               0        6     22
11      0-6 months    ki1112895-Guatemala BSC     GUATEMALA                      Control               1        1     22
11      0-6 months    ki1112895-Guatemala BSC     GUATEMALA                      Other                 0       12     22
11      0-6 months    ki1112895-Guatemala BSC     GUATEMALA                      Other                 1        3     22
6       0-6 months    ki1119695-PROBIT            BELARUS                        Control               0      565   1158
6       0-6 months    ki1119695-PROBIT            BELARUS                        Control               1       36   1158
6       0-6 months    ki1119695-PROBIT            BELARUS                        Other                 0      537   1158
6       0-6 months    ki1119695-PROBIT            BELARUS                        Other                 1       20   1158
7       0-6 months    ki1119695-PROBIT            BELARUS                        Control               0      689   1524
7       0-6 months    ki1119695-PROBIT            BELARUS                        Control               1       45   1524
7       0-6 months    ki1119695-PROBIT            BELARUS                        Other                 0      748   1524
7       0-6 months    ki1119695-PROBIT            BELARUS                        Other                 1       42   1524
8       0-6 months    ki1119695-PROBIT            BELARUS                        Control               0      744   1563
8       0-6 months    ki1119695-PROBIT            BELARUS                        Control               1       51   1563
8       0-6 months    ki1119695-PROBIT            BELARUS                        Other                 0      726   1563
8       0-6 months    ki1119695-PROBIT            BELARUS                        Other                 1       42   1563
9       0-6 months    ki1119695-PROBIT            BELARUS                        Control               0      663   1539
9       0-6 months    ki1119695-PROBIT            BELARUS                        Control               1       49   1539
9       0-6 months    ki1119695-PROBIT            BELARUS                        Other                 0      762   1539
9       0-6 months    ki1119695-PROBIT            BELARUS                        Other                 1       65   1539
10      0-6 months    ki1119695-PROBIT            BELARUS                        Control               0      744   1774
10      0-6 months    ki1119695-PROBIT            BELARUS                        Control               1       57   1774
10      0-6 months    ki1119695-PROBIT            BELARUS                        Other                 0      909   1774
10      0-6 months    ki1119695-PROBIT            BELARUS                        Other                 1       64   1774
11      0-6 months    ki1119695-PROBIT            BELARUS                        Control               0      678   1658
11      0-6 months    ki1119695-PROBIT            BELARUS                        Control               1       63   1658
11      0-6 months    ki1119695-PROBIT            BELARUS                        Other                 0      853   1658
11      0-6 months    ki1119695-PROBIT            BELARUS                        Other                 1       64   1658
12      0-6 months    ki1119695-PROBIT            BELARUS                        Control               0      762   1736
12      0-6 months    ki1119695-PROBIT            BELARUS                        Control               1       55   1736
12      0-6 months    ki1119695-PROBIT            BELARUS                        Other                 0      871   1736
12      0-6 months    ki1119695-PROBIT            BELARUS                        Other                 1       48   1736
1       0-6 months    ki1119695-PROBIT            BELARUS                        Control               0      440    983
1       0-6 months    ki1119695-PROBIT            BELARUS                        Control               1       40    983
1       0-6 months    ki1119695-PROBIT            BELARUS                        Other                 0      456    983
1       0-6 months    ki1119695-PROBIT            BELARUS                        Other                 1       47    983
2       0-6 months    ki1119695-PROBIT            BELARUS                        Control               0      409    890
2       0-6 months    ki1119695-PROBIT            BELARUS                        Control               1       36    890
2       0-6 months    ki1119695-PROBIT            BELARUS                        Other                 0      416    890
2       0-6 months    ki1119695-PROBIT            BELARUS                        Other                 1       29    890
3       0-6 months    ki1119695-PROBIT            BELARUS                        Control               0      533   1126
3       0-6 months    ki1119695-PROBIT            BELARUS                        Control               1       39   1126
3       0-6 months    ki1119695-PROBIT            BELARUS                        Other                 0      521   1126
3       0-6 months    ki1119695-PROBIT            BELARUS                        Other                 1       33   1126
4       0-6 months    ki1119695-PROBIT            BELARUS                        Control               0      495   1101
4       0-6 months    ki1119695-PROBIT            BELARUS                        Control               1       31   1101
4       0-6 months    ki1119695-PROBIT            BELARUS                        Other                 0      538   1101
4       0-6 months    ki1119695-PROBIT            BELARUS                        Other                 1       37   1101
5       0-6 months    ki1119695-PROBIT            BELARUS                        Control               0      552   1133
5       0-6 months    ki1119695-PROBIT            BELARUS                        Control               1       31   1133
5       0-6 months    ki1119695-PROBIT            BELARUS                        Other                 0      522   1133
5       0-6 months    ki1119695-PROBIT            BELARUS                        Other                 1       28   1133
11      0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control               0      174    762
11      0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control               1       27    762
11      0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Other                 0      482    762
11      0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Other                 1       79    762
1       0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control               0      193    900
1       0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control               1       39    900
1       0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Other                 0      550    900
1       0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Other                 1      118    900
12      0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control               0      209    858
12      0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control               1       17    858
12      0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Other                 0      542    858
12      0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Other                 1       90    858
2       0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control               0      111    622
2       0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control               1       32    622
2       0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Other                 0      404    622
2       0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Other                 1       75    622
3       0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control               0      154    768
3       0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control               1       32    768
3       0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Other                 0      488    768
3       0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Other                 1       94    768
4       0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control               0      146    673
4       0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control               1       32    673
4       0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Other                 0      402    673
4       0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Other                 1       93    673
6       0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control               0      142    795
6       0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control               1       51    795
6       0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Other                 0      445    795
6       0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Other                 1      157    795
7       0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control               0      171    745
7       0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control               1       29    745
7       0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Other                 0      436    745
7       0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Other                 1      109    745
8       0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control               0      165    814
8       0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control               1       40    814
8       0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Other                 0      509    814
8       0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Other                 1      100    814
9       0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control               0      167    798
9       0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control               1       28    798
9       0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Other                 0      513    798
9       0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Other                 1       90    798
10      0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control               0      124    651
10      0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control               1       29    651
10      0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Other                 0      412    651
10      0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Other                 1       86    651
5       0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control               0      137    696
5       0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control               1       32    696
5       0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Other                 0      416    696
5       0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Other                 1      111    696
12      0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control               0        8     78
12      0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control               1        1     78
12      0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         LNS                   0       49     78
12      0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         LNS                   1       20     78
8       0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control               0       16    101
8       0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control               1        5    101
8       0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         LNS                   0       56    101
8       0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         LNS                   1       24    101
9       0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control               0       12     97
9       0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control               1        4     97
9       0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         LNS                   0       54     97
9       0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         LNS                   1       27     97
1       0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control               0       11     77
1       0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control               1        3     77
1       0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         LNS                   0       40     77
1       0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         LNS                   1       23     77
5       0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control               0       22    174
5       0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control               1        5    174
5       0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         LNS                   0      110    174
5       0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         LNS                   1       37    174
10      0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control               0        4     72
10      0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control               1        7     72
10      0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         LNS                   0       39     72
10      0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         LNS                   1       22     72
11      0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control               0        5     76
11      0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control               1        9     76
11      0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         LNS                   0       46     76
11      0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         LNS                   1       16     76
2       0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control               0        7     69
2       0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control               1        3     69
2       0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         LNS                   0       45     69
2       0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         LNS                   1       14     69
3       0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control               0       15    117
3       0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control               1        5    117
3       0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         LNS                   0       77    117
3       0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         LNS                   1       20    117
4       0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control               0       13    149
4       0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control               1        7    149
4       0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         LNS                   0       90    149
4       0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         LNS                   1       39    149
6       0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control               0       10    104
6       0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control               1        6    104
6       0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         LNS                   0       65    104
6       0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         LNS                   1       23    104
7       0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control               0        5     83
7       0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control               1        5     83
7       0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         LNS                   0       50     83
7       0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         LNS                   1       23     83
11      0-6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Control               0        2      7
11      0-6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Control               1        1      7
11      0-6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Other                 0        2      7
11      0-6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Other                 1        2      7
2       0-6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Control               0        3      7
2       0-6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         LNS                   0        2      7
2       0-6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Other                 0        2      7
1       0-6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         LNS                   0        2      4
1       0-6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Other                 0        2      4
3       0-6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Control               0        3     10
3       0-6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Control               1        0     10
3       0-6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         LNS                   0        2     10
3       0-6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         LNS                   1        2     10
3       0-6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Other                 0        3     10
3       0-6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Other                 1        0     10
4       0-6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Control               0        1      5
4       0-6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Control               1        0      5
4       0-6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         LNS                   0        1      5
4       0-6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         LNS                   1        0      5
4       0-6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Other                 0        2      5
4       0-6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Other                 1        1      5
5       0-6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Control               0        1      6
5       0-6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Control               1        2      6
5       0-6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         LNS                   0        0      6
5       0-6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         LNS                   1        1      6
5       0-6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Other                 0        2      6
5       0-6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Other                 1        0      6
6       0-6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Control               0        2      6
6       0-6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Control               1        0      6
6       0-6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         LNS                   0        1      6
6       0-6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         LNS                   1        0      6
6       0-6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Other                 0        2      6
6       0-6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Other                 1        1      6
10      0-6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Control               0        3     11
10      0-6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Control               1        0     11
10      0-6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         LNS                   0        2     11
10      0-6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         LNS                   1        2     11
10      0-6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Other                 0        3     11
10      0-6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Other                 1        1     11
9       0-6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         LNS                   0        3      4
9       0-6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Other                 0        1      4
12      0-6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Control               0        1      3
12      0-6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Control               1        1      3
12      0-6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Other                 0        1      3
12      0-6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Other                 1        0      3
7       0-6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Control               0        2      3
7       0-6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         LNS                   0        1      3
8       0-6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Control               0        0      4
8       0-6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Control               1        1      4
8       0-6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         LNS                   0        1      4
8       0-6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         LNS                   1        0      4
8       0-6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Other                 0        1      4
8       0-6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Other                 1        1      4
2       0-6 months    ki1148112-LCNI-5            MALAWI                         Control               0       10     47
2       0-6 months    ki1148112-LCNI-5            MALAWI                         Control               1       10     47
2       0-6 months    ki1148112-LCNI-5            MALAWI                         LNS                   0       21     47
2       0-6 months    ki1148112-LCNI-5            MALAWI                         LNS                   1        6     47
3       0-6 months    ki1148112-LCNI-5            MALAWI                         Control               0       17     58
3       0-6 months    ki1148112-LCNI-5            MALAWI                         Control               1       13     58
3       0-6 months    ki1148112-LCNI-5            MALAWI                         LNS                   0       21     58
3       0-6 months    ki1148112-LCNI-5            MALAWI                         LNS                   1        7     58
1       0-6 months    ki1148112-LCNI-5            MALAWI                         Control               0        3      7
1       0-6 months    ki1148112-LCNI-5            MALAWI                         Control               1        0      7
1       0-6 months    ki1148112-LCNI-5            MALAWI                         LNS                   0        2      7
1       0-6 months    ki1148112-LCNI-5            MALAWI                         LNS                   1        2      7
4       0-6 months    ki1148112-LCNI-5            MALAWI                         Control               0       17     49
4       0-6 months    ki1148112-LCNI-5            MALAWI                         Control               1       11     49
4       0-6 months    ki1148112-LCNI-5            MALAWI                         LNS                   0       12     49
4       0-6 months    ki1148112-LCNI-5            MALAWI                         LNS                   1        9     49
5       0-6 months    ki1148112-LCNI-5            MALAWI                         Control               0        6     26
5       0-6 months    ki1148112-LCNI-5            MALAWI                         Control               1        4     26
5       0-6 months    ki1148112-LCNI-5            MALAWI                         LNS                   0       10     26
5       0-6 months    ki1148112-LCNI-5            MALAWI                         LNS                   1        6     26
6       0-6 months    ki1148112-LCNI-5            MALAWI                         Control               0        8     28
6       0-6 months    ki1148112-LCNI-5            MALAWI                         Control               1        5     28
6       0-6 months    ki1148112-LCNI-5            MALAWI                         LNS                   0       11     28
6       0-6 months    ki1148112-LCNI-5            MALAWI                         LNS                   1        4     28
7       0-6 months    ki1148112-LCNI-5            MALAWI                         Control               0       10     29
7       0-6 months    ki1148112-LCNI-5            MALAWI                         Control               1        6     29
7       0-6 months    ki1148112-LCNI-5            MALAWI                         LNS                   0        8     29
7       0-6 months    ki1148112-LCNI-5            MALAWI                         LNS                   1        5     29
8       0-6 months    ki1148112-LCNI-5            MALAWI                         Control               0        3      4
8       0-6 months    ki1148112-LCNI-5            MALAWI                         LNS                   0        1      4
9       0-6 months    ki1148112-LCNI-5            MALAWI                         Control               0        1      4
9       0-6 months    ki1148112-LCNI-5            MALAWI                         Control               1        1      4
9       0-6 months    ki1148112-LCNI-5            MALAWI                         LNS                   0        1      4
9       0-6 months    ki1148112-LCNI-5            MALAWI                         LNS                   1        1      4
10      0-6 months    ki1148112-LCNI-5            MALAWI                         Control               0        2      5
10      0-6 months    ki1148112-LCNI-5            MALAWI                         Control               1        1      5
10      0-6 months    ki1148112-LCNI-5            MALAWI                         LNS                   0        0      5
10      0-6 months    ki1148112-LCNI-5            MALAWI                         LNS                   1        2      5
11      0-6 months    ki1148112-LCNI-5            MALAWI                         Control               0        3     10
11      0-6 months    ki1148112-LCNI-5            MALAWI                         Control               1        0     10
11      0-6 months    ki1148112-LCNI-5            MALAWI                         LNS                   0        6     10
11      0-6 months    ki1148112-LCNI-5            MALAWI                         LNS                   1        1     10
12      0-6 months    ki1148112-LCNI-5            MALAWI                         Control               0        1      5
12      0-6 months    ki1148112-LCNI-5            MALAWI                         Control               1        1      5
12      0-6 months    ki1148112-LCNI-5            MALAWI                         LNS                   0        1      5
12      0-6 months    ki1148112-LCNI-5            MALAWI                         LNS                   1        2      5
11      0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control               0      880   2720
11      0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control               1      477   2720
11      0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Other                 0      952   2720
11      0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Other                 1      411   2720
1       0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control               0      375   1091
1       0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control               1      152   1091
1       0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Other                 0      428   1091
1       0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Other                 1      136   1091
9       0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control               0      677   1882
9       0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control               1      286   1882
9       0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Other                 0      697   1882
9       0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Other                 1      222   1882
4       0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control               0      424   1110
4       0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control               1      114   1110
4       0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Other                 0      472   1110
4       0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Other                 1      100   1110
6       0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control               0      495   1213
6       0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control               1      116   1213
6       0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Other                 0      504   1213
6       0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Other                 1       98   1213
7       0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control               0      538   1370
7       0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control               1      136   1370
7       0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Other                 0      557   1370
7       0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Other                 1      139   1370
5       0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control               0      484   1174
5       0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control               1      116   1174
5       0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Other                 0      467   1174
5       0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Other                 1      107   1174
8       0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control               0      622   1679
8       0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control               1      222   1679
8       0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Other                 0      662   1679
8       0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Other                 1      173   1679
12      0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control               0      561   1651
12      0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control               1      249   1651
12      0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Other                 0      602   1651
12      0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Other                 1      239   1651
10      0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control               0      821   2581
10      0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control               1      446   2581
10      0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Other                 0      929   2581
10      0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Other                 1      385   2581
3       0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control               0      789   2104
3       0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control               1      237   2104
3       0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Other                 0      884   2104
3       0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Other                 1      194   2104
2       0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control               0      274    784
2       0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control               1      109    784
2       0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Other                 0      310    784
2       0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Other                 1       91    784
10      0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     Control               0       47    256
10      0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     Control               1       16    256
10      0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     LNS                   0       55    256
10      0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     LNS                   1       26    256
10      0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     MMN                   0       34    256
10      0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     MMN                   1       12    256
10      0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     Other                 0       47    256
10      0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     Other                 1       19    256
12      0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     Control               0       13     73
12      0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     Control               1        8     73
12      0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     LNS                   0       10     73
12      0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     LNS                   1        8     73
12      0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     MMN                   0       11     73
12      0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     MMN                   1        3     73
12      0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     Other                 0       16     73
12      0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     Other                 1        4     73
4       0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     Control               0      185    834
4       0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     Control               1       46    834
4       0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     LNS                   0      196    834
4       0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     LNS                   1       77    834
4       0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     MMN                   0       92    834
4       0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     MMN                   1       39    834
4       0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     Other                 0      152    834
4       0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     Other                 1       47    834
2       0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     Control               0       52    246
2       0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     Control               1       15    246
2       0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     LNS                   0       53    246
2       0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     LNS                   1       12    246
2       0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     MMN                   0       30    246
2       0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     MMN                   1       15    246
2       0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     Other                 0       51    246
2       0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     Other                 1       18    246
6       0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     Control               0       78    384
6       0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     Control               1       23    384
6       0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     LNS                   0       88    384
6       0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     LNS                   1       22    384
6       0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     MMN                   0       50    384
6       0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     MMN                   1       13    384
6       0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     Other                 0       79    384
6       0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     Other                 1       31    384
5       0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     Control               0      106    521
5       0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     Control               1       40    521
5       0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     LNS                   0      124    521
5       0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     LNS                   1       45    521
5       0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     MMN                   0       51    521
5       0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     MMN                   1       24    521
5       0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     Other                 0      111    521
5       0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     Other                 1       20    521
11      0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     Control               0       28    133
11      0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     Control               1        4    133
11      0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     LNS                   0       38    133
11      0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     LNS                   1        9    133
11      0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     MMN                   0       14    133
11      0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     MMN                   1        4    133
11      0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     Other                 0       29    133
11      0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     Other                 1        7    133
7       0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     Control               0      162    828
7       0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     Control               1       49    828
7       0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     LNS                   0      192    828
7       0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     LNS                   1       70    828
7       0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     MMN                   0       87    828
7       0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     MMN                   1       33    828
7       0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     Other                 0      168    828
7       0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     Other                 1       67    828
8       0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     Control               0       94    508
8       0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     Control               1       30    508
8       0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     LNS                   0      132    508
8       0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     LNS                   1       32    508
8       0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     MMN                   0       65    508
8       0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     MMN                   1       18    508
8       0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     Other                 0      105    508
8       0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     Other                 1       32    508
3       0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     Control               0       79    409
3       0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     Control               1       24    409
3       0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     LNS                   0       87    409
3       0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     LNS                   1       41    409
3       0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     MMN                   0       35    409
3       0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     MMN                   1       14    409
3       0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     Other                 0       93    409
3       0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     Other                 1       36    409
9       0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     Control               0       48    327
9       0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     Control               1       16    327
9       0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     LNS                   0       94    327
9       0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     LNS                   1       25    327
9       0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     MMN                   0       29    327
9       0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     MMN                   1       14    327
9       0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     Other                 0       74    327
9       0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     Other                 1       27    327
1       0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     Control               0       14     49
1       0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     Control               1        4     49
1       0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     LNS                   0        6     49
1       0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     LNS                   1        2     49
1       0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     MMN                   0        4     49
1       0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     MMN                   1        4     49
1       0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     Other                 0        9     49
1       0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     Other                 1        6     49
12      6-24 months   ki1000107-Serrinha-VitA     BRAZIL                         Control               0      181    381
12      6-24 months   ki1000107-Serrinha-VitA     BRAZIL                         Control               1       13    381
12      6-24 months   ki1000107-Serrinha-VitA     BRAZIL                         Other                 0      171    381
12      6-24 months   ki1000107-Serrinha-VitA     BRAZIL                         Other                 1       16    381
10      6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control               0       64    337
10      6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control               1        6    337
10      6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                   0       89    337
10      6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                   1        5    337
10      6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                 0      159    337
10      6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                 1       14    337
11      6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control               0       58    281
11      6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control               1       11    281
11      6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                   0       63    281
11      6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                   1        7    281
11      6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                 0      114    281
11      6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                 1       28    281
9       6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control               0      106    515
9       6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control               1       23    515
9       6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                   0      121    515
9       6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                   1       17    515
9       6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                 0      212    515
9       6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                 1       36    515
2       6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control               0       48    228
2       6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control               1       13    228
2       6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                   0       46    228
2       6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                   1       12    228
2       6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                 0       84    228
2       6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                 1       25    228
12      6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control               0       48    250
12      6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control               1       10    250
12      6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                   0       47    250
12      6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                   1        9    250
12      6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                 0      104    250
12      6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                 1       32    250
3       6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control               0       43    265
3       6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control               1       17    265
3       6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                   0       61    265
3       6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                   1        8    265
3       6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                 0      104    265
3       6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                 1       32    265
1       6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control               0       70    352
1       6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control               1       16    352
1       6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                   0       71    352
1       6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                   1       19    352
1       6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                 0      142    352
1       6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                 1       34    352
4       6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control               0       74    324
4       6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control               1       20    324
4       6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                   0       66    324
4       6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                   1       14    324
4       6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                 0      106    324
4       6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                 1       44    324
7       6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control               0       27    163
7       6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control               1       12    163
7       6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                   0       35    163
7       6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                   1        6    163
7       6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                 0       72    163
7       6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                 1       11    163
5       6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control               0       67    375
5       6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control               1       23    375
5       6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                   0       85    375
5       6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                   1       19    375
5       6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                 0      132    375
5       6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                 1       49    375
6       6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control               0       58    305
6       6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control               1       16    305
6       6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                   0       66    305
6       6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                   1       16    305
6       6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                 0      112    305
6       6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                 1       37    305
8       6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control               0       66    331
8       6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control               1       14    331
8       6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                   0       73    331
8       6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                   1       10    331
8       6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                 0      138    331
8       6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                 1       30    331
10      6-24 months   ki1000111-WASH-Kenya        KENYA                          Control               0      141    490
10      6-24 months   ki1000111-WASH-Kenya        KENYA                          Control               1       16    490
10      6-24 months   ki1000111-WASH-Kenya        KENYA                          LNS                   0      105    490
10      6-24 months   ki1000111-WASH-Kenya        KENYA                          LNS                   1       12    490
10      6-24 months   ki1000111-WASH-Kenya        KENYA                          Other                 0      193    490
10      6-24 months   ki1000111-WASH-Kenya        KENYA                          Other                 1       23    490
6       6-24 months   ki1000111-WASH-Kenya        KENYA                          Control               0       85    254
6       6-24 months   ki1000111-WASH-Kenya        KENYA                          Control               1        5    254
6       6-24 months   ki1000111-WASH-Kenya        KENYA                          LNS                   0       48    254
6       6-24 months   ki1000111-WASH-Kenya        KENYA                          LNS                   1        3    254
6       6-24 months   ki1000111-WASH-Kenya        KENYA                          Other                 0      102    254
6       6-24 months   ki1000111-WASH-Kenya        KENYA                          Other                 1       11    254
9       6-24 months   ki1000111-WASH-Kenya        KENYA                          Control               0       38     91
9       6-24 months   ki1000111-WASH-Kenya        KENYA                          LNS                   0       18     91
9       6-24 months   ki1000111-WASH-Kenya        KENYA                          Other                 0       35     91
7       6-24 months   ki1000111-WASH-Kenya        KENYA                          Control               0       30     84
7       6-24 months   ki1000111-WASH-Kenya        KENYA                          LNS                   0       27     84
7       6-24 months   ki1000111-WASH-Kenya        KENYA                          Other                 0       27     84
2       6-24 months   ki1000111-WASH-Kenya        KENYA                          Control               0      138    458
2       6-24 months   ki1000111-WASH-Kenya        KENYA                          Control               1        8    458
2       6-24 months   ki1000111-WASH-Kenya        KENYA                          LNS                   0       93    458
2       6-24 months   ki1000111-WASH-Kenya        KENYA                          LNS                   1        8    458
2       6-24 months   ki1000111-WASH-Kenya        KENYA                          Other                 0      205    458
2       6-24 months   ki1000111-WASH-Kenya        KENYA                          Other                 1        6    458
1       6-24 months   ki1000111-WASH-Kenya        KENYA                          Control               0      289    866
1       6-24 months   ki1000111-WASH-Kenya        KENYA                          Control               1       19    866
1       6-24 months   ki1000111-WASH-Kenya        KENYA                          LNS                   0      200    866
1       6-24 months   ki1000111-WASH-Kenya        KENYA                          LNS                   1       13    866
1       6-24 months   ki1000111-WASH-Kenya        KENYA                          Other                 0      317    866
1       6-24 months   ki1000111-WASH-Kenya        KENYA                          Other                 1       28    866
12      6-24 months   ki1000111-WASH-Kenya        KENYA                          Control               0      190    546
12      6-24 months   ki1000111-WASH-Kenya        KENYA                          Control               1       21    546
12      6-24 months   ki1000111-WASH-Kenya        KENYA                          LNS                   0      119    546
12      6-24 months   ki1000111-WASH-Kenya        KENYA                          LNS                   1        4    546
12      6-24 months   ki1000111-WASH-Kenya        KENYA                          Other                 0      194    546
12      6-24 months   ki1000111-WASH-Kenya        KENYA                          Other                 1       18    546
3       6-24 months   ki1000111-WASH-Kenya        KENYA                          Control               0      168    452
3       6-24 months   ki1000111-WASH-Kenya        KENYA                          Control               1        7    452
3       6-24 months   ki1000111-WASH-Kenya        KENYA                          LNS                   0       99    452
3       6-24 months   ki1000111-WASH-Kenya        KENYA                          LNS                   1        4    452
3       6-24 months   ki1000111-WASH-Kenya        KENYA                          Other                 0      166    452
3       6-24 months   ki1000111-WASH-Kenya        KENYA                          Other                 1        8    452
11      6-24 months   ki1000111-WASH-Kenya        KENYA                          Control               0      177    622
11      6-24 months   ki1000111-WASH-Kenya        KENYA                          Control               1       11    622
11      6-24 months   ki1000111-WASH-Kenya        KENYA                          LNS                   0      114    622
11      6-24 months   ki1000111-WASH-Kenya        KENYA                          LNS                   1        2    622
11      6-24 months   ki1000111-WASH-Kenya        KENYA                          Other                 0      288    622
11      6-24 months   ki1000111-WASH-Kenya        KENYA                          Other                 1       30    622
8       6-24 months   ki1000111-WASH-Kenya        KENYA                          Control               0       21     69
8       6-24 months   ki1000111-WASH-Kenya        KENYA                          LNS                   0       14     69
8       6-24 months   ki1000111-WASH-Kenya        KENYA                          Other                 0       34     69
5       6-24 months   ki1000111-WASH-Kenya        KENYA                          Control               0      245    711
5       6-24 months   ki1000111-WASH-Kenya        KENYA                          Control               1       19    711
5       6-24 months   ki1000111-WASH-Kenya        KENYA                          LNS                   0      156    711
5       6-24 months   ki1000111-WASH-Kenya        KENYA                          LNS                   1       12    711
5       6-24 months   ki1000111-WASH-Kenya        KENYA                          Other                 0      262    711
5       6-24 months   ki1000111-WASH-Kenya        KENYA                          Other                 1       17    711
4       6-24 months   ki1000111-WASH-Kenya        KENYA                          Control               0      190    689
4       6-24 months   ki1000111-WASH-Kenya        KENYA                          Control               1        8    689
4       6-24 months   ki1000111-WASH-Kenya        KENYA                          LNS                   0      155    689
4       6-24 months   ki1000111-WASH-Kenya        KENYA                          LNS                   1        9    689
4       6-24 months   ki1000111-WASH-Kenya        KENYA                          Other                 0      294    689
4       6-24 months   ki1000111-WASH-Kenya        KENYA                          Other                 1       33    689
6       6-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Control               0        4     15
6       6-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Control               1        8     15
6       6-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Other                 0        2     15
6       6-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Other                 1        1     15
7       6-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Control               0       80    173
7       6-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Control               1       66    173
7       6-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Other                 0       15    173
7       6-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Other                 1       12    173
8       6-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Control               0        8    102
8       6-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Control               1        9    102
8       6-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Other                 0       54    102
8       6-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Other                 1       31    102
9       6-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Control               0        4     85
9       6-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Control               1        6     85
9       6-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Other                 0       49     85
9       6-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Other                 1       26     85
10      6-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Control               0       36    132
10      6-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Control               1       18    132
10      6-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Other                 0       54    132
10      6-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Other                 1       24    132
5       6-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Control               0        1      3
5       6-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Control               1        0      3
5       6-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Other                 0        0      3
5       6-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Other                 1        2      3
11      6-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Control               0       66    190
11      6-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Control               1       30    190
11      6-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Other                 0       76    190
11      6-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Other                 1       18    190
12      6-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Control               0       43     97
12      6-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Control               1        8     97
12      6-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Other                 0       37     97
12      6-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Other                 1        9     97
1       6-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Control               0       43    108
1       6-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Control               1        4    108
1       6-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Other                 0       57    108
1       6-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Other                 1        4    108
2       6-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Control               0       17     48
2       6-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Control               1        1     48
2       6-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Other                 0       28     48
2       6-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Other                 1        2     48
3       6-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Other                 0        2      2
2       6-24 months   ki1000304-EU                INDIA                          Control               0       39     90
2       6-24 months   ki1000304-EU                INDIA                          Control               1        5     90
2       6-24 months   ki1000304-EU                INDIA                          Zinc                  0       45     90
2       6-24 months   ki1000304-EU                INDIA                          Zinc                  1        1     90
1       6-24 months   ki1000304-EU                INDIA                          Control               0       44    107
1       6-24 months   ki1000304-EU                INDIA                          Control               1        1    107
1       6-24 months   ki1000304-EU                INDIA                          Zinc                  0       60    107
1       6-24 months   ki1000304-EU                INDIA                          Zinc                  1        2    107
9       6-24 months   ki1000304-EU                INDIA                          Control               0       42    105
9       6-24 months   ki1000304-EU                INDIA                          Control               1        2    105
9       6-24 months   ki1000304-EU                INDIA                          Zinc                  0       57    105
9       6-24 months   ki1000304-EU                INDIA                          Zinc                  1        4    105
8       6-24 months   ki1000304-EU                INDIA                          Control               0       44     95
8       6-24 months   ki1000304-EU                INDIA                          Control               1        0     95
8       6-24 months   ki1000304-EU                INDIA                          Zinc                  0       49     95
8       6-24 months   ki1000304-EU                INDIA                          Zinc                  1        2     95
10      6-24 months   ki1000304-EU                INDIA                          Control               0       58    110
10      6-24 months   ki1000304-EU                INDIA                          Control               1        1    110
10      6-24 months   ki1000304-EU                INDIA                          Zinc                  0       50    110
10      6-24 months   ki1000304-EU                INDIA                          Zinc                  1        1    110
11      6-24 months   ki1000304-EU                INDIA                          Control               0       39     89
11      6-24 months   ki1000304-EU                INDIA                          Control               1        3     89
11      6-24 months   ki1000304-EU                INDIA                          Zinc                  0       45     89
11      6-24 months   ki1000304-EU                INDIA                          Zinc                  1        2     89
3       6-24 months   ki1000304-EU                INDIA                          Control               0       57    105
3       6-24 months   ki1000304-EU                INDIA                          Control               1        2    105
3       6-24 months   ki1000304-EU                INDIA                          Zinc                  0       44    105
3       6-24 months   ki1000304-EU                INDIA                          Zinc                  1        2    105
12      6-24 months   ki1000304-EU                INDIA                          Control               0       52    103
12      6-24 months   ki1000304-EU                INDIA                          Control               1        2    103
12      6-24 months   ki1000304-EU                INDIA                          Zinc                  0       45    103
12      6-24 months   ki1000304-EU                INDIA                          Zinc                  1        4    103
4       6-24 months   ki1000304-EU                INDIA                          Control               0       45     96
4       6-24 months   ki1000304-EU                INDIA                          Control               1        4     96
4       6-24 months   ki1000304-EU                INDIA                          Zinc                  0       43     96
4       6-24 months   ki1000304-EU                INDIA                          Zinc                  1        4     96
5       6-24 months   ki1000304-EU                INDIA                          Control               0       26     58
5       6-24 months   ki1000304-EU                INDIA                          Control               1        2     58
5       6-24 months   ki1000304-EU                INDIA                          Zinc                  0       28     58
5       6-24 months   ki1000304-EU                INDIA                          Zinc                  1        2     58
6       6-24 months   ki1000304-EU                INDIA                          Control               0       42     85
6       6-24 months   ki1000304-EU                INDIA                          Control               1        1     85
6       6-24 months   ki1000304-EU                INDIA                          Zinc                  0       38     85
6       6-24 months   ki1000304-EU                INDIA                          Zinc                  1        4     85
7       6-24 months   ki1000304-EU                INDIA                          Control               0       55    112
7       6-24 months   ki1000304-EU                INDIA                          Control               1        2    112
7       6-24 months   ki1000304-EU                INDIA                          Zinc                  0       53    112
7       6-24 months   ki1000304-EU                INDIA                          Zinc                  1        2    112
1       6-24 months   ki1000304-VITAMIN-A         INDIA                          Control               0       98    217
1       6-24 months   ki1000304-VITAMIN-A         INDIA                          Control               1       14    217
1       6-24 months   ki1000304-VITAMIN-A         INDIA                          Other                 0       92    217
1       6-24 months   ki1000304-VITAMIN-A         INDIA                          Other                 1       13    217
2       6-24 months   ki1000304-VITAMIN-A         INDIA                          Control               0       73    176
2       6-24 months   ki1000304-VITAMIN-A         INDIA                          Control               1        6    176
2       6-24 months   ki1000304-VITAMIN-A         INDIA                          Other                 0       92    176
2       6-24 months   ki1000304-VITAMIN-A         INDIA                          Other                 1        5    176
4       6-24 months   ki1000304-VITAMIN-A         INDIA                          Control               0       96    219
4       6-24 months   ki1000304-VITAMIN-A         INDIA                          Control               1        7    219
4       6-24 months   ki1000304-VITAMIN-A         INDIA                          Other                 0      104    219
4       6-24 months   ki1000304-VITAMIN-A         INDIA                          Other                 1       12    219
6       6-24 months   ki1000304-VITAMIN-A         INDIA                          Control               0       88    177
6       6-24 months   ki1000304-VITAMIN-A         INDIA                          Control               1        2    177
6       6-24 months   ki1000304-VITAMIN-A         INDIA                          Other                 0       85    177
6       6-24 months   ki1000304-VITAMIN-A         INDIA                          Other                 1        2    177
7       6-24 months   ki1000304-VITAMIN-A         INDIA                          Control               0       97    200
7       6-24 months   ki1000304-VITAMIN-A         INDIA                          Control               1        8    200
7       6-24 months   ki1000304-VITAMIN-A         INDIA                          Other                 0       89    200
7       6-24 months   ki1000304-VITAMIN-A         INDIA                          Other                 1        6    200
5       6-24 months   ki1000304-VITAMIN-A         INDIA                          Control               0      110    237
5       6-24 months   ki1000304-VITAMIN-A         INDIA                          Control               1        6    237
5       6-24 months   ki1000304-VITAMIN-A         INDIA                          Other                 0      112    237
5       6-24 months   ki1000304-VITAMIN-A         INDIA                          Other                 1        9    237
8       6-24 months   ki1000304-VITAMIN-A         INDIA                          Control               0      134    288
8       6-24 months   ki1000304-VITAMIN-A         INDIA                          Control               1       15    288
8       6-24 months   ki1000304-VITAMIN-A         INDIA                          Other                 0      129    288
8       6-24 months   ki1000304-VITAMIN-A         INDIA                          Other                 1       10    288
9       6-24 months   ki1000304-VITAMIN-A         INDIA                          Control               0       81    175
9       6-24 months   ki1000304-VITAMIN-A         INDIA                          Control               1        7    175
9       6-24 months   ki1000304-VITAMIN-A         INDIA                          Other                 0       79    175
9       6-24 months   ki1000304-VITAMIN-A         INDIA                          Other                 1        8    175
10      6-24 months   ki1000304-VITAMIN-A         INDIA                          Control               0       54    116
10      6-24 months   ki1000304-VITAMIN-A         INDIA                          Control               1        0    116
10      6-24 months   ki1000304-VITAMIN-A         INDIA                          Other                 0       59    116
10      6-24 months   ki1000304-VITAMIN-A         INDIA                          Other                 1        3    116
11      6-24 months   ki1000304-VITAMIN-A         INDIA                          Control               0       57    131
11      6-24 months   ki1000304-VITAMIN-A         INDIA                          Control               1        8    131
11      6-24 months   ki1000304-VITAMIN-A         INDIA                          Other                 0       61    131
11      6-24 months   ki1000304-VITAMIN-A         INDIA                          Other                 1        5    131
12      6-24 months   ki1000304-VITAMIN-A         INDIA                          Control               0       27     63
12      6-24 months   ki1000304-VITAMIN-A         INDIA                          Control               1        3     63
12      6-24 months   ki1000304-VITAMIN-A         INDIA                          Other                 0       29     63
12      6-24 months   ki1000304-VITAMIN-A         INDIA                          Other                 1        4     63
3       6-24 months   ki1000304-VITAMIN-A         INDIA                          Control               0       80    168
3       6-24 months   ki1000304-VITAMIN-A         INDIA                          Control               1        8    168
3       6-24 months   ki1000304-VITAMIN-A         INDIA                          Other                 0       74    168
3       6-24 months   ki1000304-VITAMIN-A         INDIA                          Other                 1        6    168
1       6-24 months   ki1000304-Vitamin-B12       INDIA                          Control               0       32     79
1       6-24 months   ki1000304-Vitamin-B12       INDIA                          Control               1        3     79
1       6-24 months   ki1000304-Vitamin-B12       INDIA                          Other                 0       41     79
1       6-24 months   ki1000304-Vitamin-B12       INDIA                          Other                 1        3     79
6       6-24 months   ki1000304-Vitamin-B12       INDIA                          Control               0       36     74
6       6-24 months   ki1000304-Vitamin-B12       INDIA                          Control               1        3     74
6       6-24 months   ki1000304-Vitamin-B12       INDIA                          Other                 0       31     74
6       6-24 months   ki1000304-Vitamin-B12       INDIA                          Other                 1        4     74
7       6-24 months   ki1000304-Vitamin-B12       INDIA                          Control               0       38     85
7       6-24 months   ki1000304-Vitamin-B12       INDIA                          Control               1        5     85
7       6-24 months   ki1000304-Vitamin-B12       INDIA                          Other                 0       39     85
7       6-24 months   ki1000304-Vitamin-B12       INDIA                          Other                 1        3     85
5       6-24 months   ki1000304-Vitamin-B12       INDIA                          Other                 0        1      1
8       6-24 months   ki1000304-Vitamin-B12       INDIA                          Control               0        9     19
8       6-24 months   ki1000304-Vitamin-B12       INDIA                          Control               1        2     19
8       6-24 months   ki1000304-Vitamin-B12       INDIA                          Other                 0        7     19
8       6-24 months   ki1000304-Vitamin-B12       INDIA                          Other                 1        1     19
9       6-24 months   ki1000304-Vitamin-B12       INDIA                          Control               0        7     16
9       6-24 months   ki1000304-Vitamin-B12       INDIA                          Other                 0        9     16
10      6-24 months   ki1000304-Vitamin-B12       INDIA                          Control               0       24     49
10      6-24 months   ki1000304-Vitamin-B12       INDIA                          Control               1        1     49
10      6-24 months   ki1000304-Vitamin-B12       INDIA                          Other                 0       24     49
10      6-24 months   ki1000304-Vitamin-B12       INDIA                          Other                 1        0     49
11      6-24 months   ki1000304-Vitamin-B12       INDIA                          Control               0       15     42
11      6-24 months   ki1000304-Vitamin-B12       INDIA                          Control               1        4     42
11      6-24 months   ki1000304-Vitamin-B12       INDIA                          Other                 0       17     42
11      6-24 months   ki1000304-Vitamin-B12       INDIA                          Other                 1        6     42
12      6-24 months   ki1000304-Vitamin-B12       INDIA                          Control               0       31     68
12      6-24 months   ki1000304-Vitamin-B12       INDIA                          Control               1        3     68
12      6-24 months   ki1000304-Vitamin-B12       INDIA                          Other                 0       31     68
12      6-24 months   ki1000304-Vitamin-B12       INDIA                          Other                 1        3     68
2       6-24 months   ki1000304-Vitamin-B12       INDIA                          Control               0       30     71
2       6-24 months   ki1000304-Vitamin-B12       INDIA                          Control               1        3     71
2       6-24 months   ki1000304-Vitamin-B12       INDIA                          Other                 0       32     71
2       6-24 months   ki1000304-Vitamin-B12       INDIA                          Other                 1        6     71
8       6-24 months   ki1000304-ZnMort            INDIA                          Other                 0       37     75
8       6-24 months   ki1000304-ZnMort            INDIA                          Zinc                  0       38     75
2       6-24 months   ki1000304-ZnMort            INDIA                          Other                 0       28     55
2       6-24 months   ki1000304-ZnMort            INDIA                          Zinc                  0       27     55
3       6-24 months   ki1000304-ZnMort            INDIA                          Other                 0       58    111
3       6-24 months   ki1000304-ZnMort            INDIA                          Zinc                  0       53    111
9       6-24 months   ki1000304-ZnMort            INDIA                          Other                 0       34     70
9       6-24 months   ki1000304-ZnMort            INDIA                          Zinc                  0       36     70
10      6-24 months   ki1000304-ZnMort            INDIA                          Other                 0       16     41
10      6-24 months   ki1000304-ZnMort            INDIA                          Zinc                  0       25     41
4       6-24 months   ki1000304-ZnMort            INDIA                          Other                 0       50    120
4       6-24 months   ki1000304-ZnMort            INDIA                          Zinc                  0       70    120
6       6-24 months   ki1000304-ZnMort            INDIA                          Other                 0       47     86
6       6-24 months   ki1000304-ZnMort            INDIA                          Zinc                  0       39     86
7       6-24 months   ki1000304-ZnMort            INDIA                          Other                 0       38     75
7       6-24 months   ki1000304-ZnMort            INDIA                          Zinc                  0       37     75
1       6-24 months   ki1000304-ZnMort            INDIA                          Other                 0       15     34
1       6-24 months   ki1000304-ZnMort            INDIA                          Zinc                  0       19     34
12      6-24 months   ki1000304-ZnMort            INDIA                          Other                 0       36     56
12      6-24 months   ki1000304-ZnMort            INDIA                          Zinc                  0       20     56
5       6-24 months   ki1000304-ZnMort            INDIA                          Other                 0       56    116
5       6-24 months   ki1000304-ZnMort            INDIA                          Zinc                  0       60    116
11      6-24 months   ki1000304-ZnMort            INDIA                          Other                 0       21     47
11      6-24 months   ki1000304-ZnMort            INDIA                          Zinc                  0       26     47
10      6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control               0       27     81
10      6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control               1       14     81
10      6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Other                 0       19     81
10      6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Other                 1       21     81
11      6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control               0       20     87
11      6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control               1       12     87
11      6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Other                 0       42     87
11      6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Other                 1       13     87
12      6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control               0       35     96
12      6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control               1       19     96
12      6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Other                 0       29     96
12      6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Other                 1       13     96
1       6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control               0       23     63
1       6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control               1       10     63
1       6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Other                 0       24     63
1       6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Other                 1        6     63
2       6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control               0       20     61
2       6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control               1        6     61
2       6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Other                 0       30     61
2       6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Other                 1        5     61
3       6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control               0       24     59
3       6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control               1        8     59
3       6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Other                 0       18     59
3       6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Other                 1        9     59
4       6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control               0       15     58
4       6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control               1        7     58
4       6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Other                 0       26     58
4       6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Other                 1       10     58
5       6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control               0       11     52
5       6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control               1        6     52
5       6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Other                 0       23     52
5       6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Other                 1       12     52
6       6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control               0       22     83
6       6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control               1       14     83
6       6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Other                 0       36     83
6       6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Other                 1       11     83
7       6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control               0        1      7
7       6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control               1        2      7
7       6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Other                 0        2      7
7       6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Other                 1        2      7
9       6-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Control               0        0      7
9       6-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Control               1        2      7
9       6-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Other                 0        1      7
9       6-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Other                 1        4      7
12      6-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Control               0        4     41
12      6-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Control               1        6     41
12      6-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Other                 0       14     41
12      6-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Other                 1       17     41
4       6-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Control               0        0     16
4       6-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Control               1        3     16
4       6-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Other                 0        6     16
4       6-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Other                 1        7     16
1       6-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Control               0        1     29
1       6-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Control               1        7     29
1       6-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Other                 0        6     29
1       6-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Other                 1       15     29
10      6-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Control               0        1     16
10      6-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Control               1        1     16
10      6-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Other                 0        5     16
10      6-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Other                 1        9     16
2       6-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Control               0        2     21
2       6-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Control               1        2     21
2       6-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Other                 0        7     21
2       6-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Other                 1       10     21
3       6-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Control               0        2     18
3       6-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Control               1        1     18
3       6-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Other                 0        5     18
3       6-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Other                 1       10     18
5       6-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Control               0        3     16
5       6-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Control               1        0     16
5       6-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Other                 0        8     16
5       6-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Other                 1        5     16
6       6-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Control               0        1     20
6       6-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Control               1        2     20
6       6-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Other                 0       11     20
6       6-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Other                 1        6     20
7       6-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Control               0        2      7
7       6-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Control               1        0      7
7       6-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Other                 0        4      7
7       6-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Other                 1        1      7
11      6-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Control               0        3     35
11      6-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Control               1        5     35
11      6-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Other                 0       13     35
11      6-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Other                 1       14     35
8       6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control               0       48    188
8       6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control               1        5    188
8       6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                 0       80    188
8       6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                 1        8    188
8       6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                  0       43    188
8       6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                  1        4    188
7       6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control               0       35    172
7       6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control               1        4    172
7       6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                 0       79    172
7       6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                 1       12    172
7       6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                  0       36    172
7       6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                  1        6    172
9       6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control               0       36    173
9       6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control               1        4    173
9       6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                 0       79    173
9       6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                 1       10    173
9       6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                  0       37    173
9       6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                  1        7    173
10      6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control               0       42    193
10      6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control               1       10    193
10      6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                 0       88    193
10      6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                 1        9    193
10      6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                  0       38    193
10      6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                  1        6    193
11      6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control               0       39    178
11      6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control               1        7    178
11      6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                 0       81    178
11      6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                 1        6    178
11      6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                  0       36    178
11      6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                  1        9    178
12      6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control               0       37    164
12      6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control               1        6    164
12      6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                 0       65    164
12      6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                 1       14    164
12      6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                  0       39    164
12      6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                  1        3    164
1       6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control               0       26    122
1       6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control               1        5    122
1       6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                 0       50    122
1       6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                 1       14    122
1       6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                  0       22    122
1       6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                  1        5    122
2       6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control               0       34    140
2       6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control               1        0    140
2       6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                 0       63    140
2       6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                 1        8    140
2       6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                  0       28    140
2       6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                  1        7    140
3       6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control               0       22    133
3       6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control               1       10    133
3       6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                 0       56    133
3       6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                 1       10    133
3       6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                  0       32    133
3       6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                  1        3    133
4       6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control               0       21    124
4       6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control               1        9    124
4       6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                 0       51    124
4       6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                 1       12    124
4       6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                  0       20    124
4       6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                  1       11    124
5       6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control               0       31    136
5       6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control               1        4    136
5       6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                 0       64    136
5       6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                 1        5    136
5       6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                  0       28    136
5       6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                  1        4    136
6       6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control               0       31    124
6       6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control               1        0    124
6       6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                 0       50    124
6       6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                 1        6    124
6       6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                  0       33    124
6       6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                  1        4    124
12      6-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Control               0      206    917
12      6-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Control               1       16    917
12      6-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc                  0      640    917
12      6-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc                  1       55    917
4       6-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc                  0      291    324
4       6-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc                  1       33    324
3       6-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc                  0       16     16
7       6-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc                  0      166    174
7       6-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc                  1        8    174
1       6-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Control               0      325   1176
1       6-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Control               1       25   1176
1       6-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc                  0      716   1176
1       6-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc                  1      110   1176
2       6-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Control               0      345   1206
2       6-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Control               1       44   1206
2       6-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc                  0      715   1206
2       6-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc                  1      102   1206
5       6-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc                  0      407    480
5       6-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc                  1       73    480
9       6-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc                  0      403    416
9       6-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc                  1       13    416
6       6-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc                  0      147    169
6       6-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc                  1       22    169
10      6-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc                  0      102    109
10      6-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc                  1        7    109
8       6-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc                  0      328    339
8       6-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc                  1       11    339
3       6-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Control               0        1     10
3       6-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Control               1        0     10
3       6-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Other                 0        5     10
3       6-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Other                 1        4     10
5       6-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Control               0        4     21
5       6-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Control               1        2     21
5       6-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Other                 0       13     21
5       6-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Other                 1        2     21
6       6-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Control               0        6     28
6       6-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Control               1        1     28
6       6-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Other                 0       14     28
6       6-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Other                 1        7     28
10      6-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Control               0        4     15
10      6-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Control               1        0     15
10      6-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Other                 0        7     15
10      6-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Other                 1        4     15
1       6-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Control               0        1     10
1       6-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Control               1        2     10
1       6-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Other                 0        6     10
1       6-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Other                 1        1     10
2       6-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Control               0        4     13
2       6-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Control               1        0     13
2       6-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Other                 0        7     13
2       6-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Other                 1        2     13
4       6-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Control               0        2     13
4       6-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Control               1        0     13
4       6-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Other                 0        9     13
4       6-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Other                 1        2     13
7       6-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Control               0        2     15
7       6-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Control               1        1     15
7       6-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Other                 0        9     15
7       6-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Other                 1        3     15
9       6-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Control               0        6     21
9       6-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Control               1        0     21
9       6-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Other                 0       12     21
9       6-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Other                 1        3     21
8       6-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Control               0        4     14
8       6-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Control               1        1     14
8       6-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Other                 0        9     14
8       6-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Other                 1        0     14
12      6-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Other                 0        4      4
11      6-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Control               0        5     13
11      6-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Control               1        0     13
11      6-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Other                 0        5     13
11      6-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Other                 1        3     13
5       6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Control               0       45    201
5       6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Control               1       11    201
5       6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   LNS                   0      128    201
5       6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   LNS                   1       17    201
6       6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Control               0       58    305
6       6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Control               1       14    305
6       6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   LNS                   0      206    305
6       6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   LNS                   1       27    305
10      6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Control               0       46    312
10      6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Control               1       11    312
10      6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   LNS                   0      222    312
10      6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   LNS                   1       33    312
11      6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Control               0       35    159
11      6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Control               1       10    159
11      6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   LNS                   0       99    159
11      6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   LNS                   1       15    159
7       6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Control               0       55    346
7       6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Control               1       20    346
7       6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   LNS                   0      232    346
7       6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   LNS                   1       39    346
8       6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Control               0       57    292
8       6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Control               1        7    292
8       6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   LNS                   0      190    292
8       6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   LNS                   1       38    292
9       6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Control               0       54    234
9       6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Control               1       13    234
9       6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   LNS                   0      139    234
9       6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   LNS                   1       28    234
12      6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Control               0       28    136
12      6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Control               1        6    136
12      6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   LNS                   0       89    136
12      6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   LNS                   1       13    136
3       6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Control               0       38    183
3       6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Control               1       11    183
3       6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   LNS                   0      117    183
3       6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   LNS                   1       17    183
1       6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Control               0       37    202
1       6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Control               1       14    202
1       6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   LNS                   0      138    202
1       6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   LNS                   1       13    202
4       6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Control               0       24    147
4       6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Control               1        8    147
4       6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   LNS                   0       96    147
4       6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   LNS                   1       19    147
2       6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Control               0       32    160
2       6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Control               1        5    160
2       6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   LNS                   0      103    160
2       6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   LNS                   1       20    160
6       6-24 months   ki1119695-PROBIT            BELARUS                        Control               0      575   1158
6       6-24 months   ki1119695-PROBIT            BELARUS                        Control               1       19   1158
6       6-24 months   ki1119695-PROBIT            BELARUS                        Other                 0      550   1158
6       6-24 months   ki1119695-PROBIT            BELARUS                        Other                 1       14   1158
7       6-24 months   ki1119695-PROBIT            BELARUS                        Control               0      701   1507
7       6-24 months   ki1119695-PROBIT            BELARUS                        Control               1       19   1507
7       6-24 months   ki1119695-PROBIT            BELARUS                        Other                 0      769   1507
7       6-24 months   ki1119695-PROBIT            BELARUS                        Other                 1       18   1507
8       6-24 months   ki1119695-PROBIT            BELARUS                        Control               0      765   1561
8       6-24 months   ki1119695-PROBIT            BELARUS                        Control               1       24   1561
8       6-24 months   ki1119695-PROBIT            BELARUS                        Other                 0      747   1561
8       6-24 months   ki1119695-PROBIT            BELARUS                        Other                 1       25   1561
9       6-24 months   ki1119695-PROBIT            BELARUS                        Control               0      681   1544
9       6-24 months   ki1119695-PROBIT            BELARUS                        Control               1       20   1544
9       6-24 months   ki1119695-PROBIT            BELARUS                        Other                 0      817   1544
9       6-24 months   ki1119695-PROBIT            BELARUS                        Other                 1       26   1544
10      6-24 months   ki1119695-PROBIT            BELARUS                        Control               0      768   1771
10      6-24 months   ki1119695-PROBIT            BELARUS                        Control               1       34   1771
10      6-24 months   ki1119695-PROBIT            BELARUS                        Other                 0      937   1771
10      6-24 months   ki1119695-PROBIT            BELARUS                        Other                 1       32   1771
11      6-24 months   ki1119695-PROBIT            BELARUS                        Control               0      706   1646
11      6-24 months   ki1119695-PROBIT            BELARUS                        Control               1       18   1646
11      6-24 months   ki1119695-PROBIT            BELARUS                        Other                 0      892   1646
11      6-24 months   ki1119695-PROBIT            BELARUS                        Other                 1       30   1646
12      6-24 months   ki1119695-PROBIT            BELARUS                        Control               0      786   1790
12      6-24 months   ki1119695-PROBIT            BELARUS                        Control               1       42   1790
12      6-24 months   ki1119695-PROBIT            BELARUS                        Other                 0      920   1790
12      6-24 months   ki1119695-PROBIT            BELARUS                        Other                 1       42   1790
1       6-24 months   ki1119695-PROBIT            BELARUS                        Control               0      467   1007
1       6-24 months   ki1119695-PROBIT            BELARUS                        Control               1       22   1007
1       6-24 months   ki1119695-PROBIT            BELARUS                        Other                 0      493   1007
1       6-24 months   ki1119695-PROBIT            BELARUS                        Other                 1       25   1007
2       6-24 months   ki1119695-PROBIT            BELARUS                        Control               0      439    937
2       6-24 months   ki1119695-PROBIT            BELARUS                        Control               1       34    937
2       6-24 months   ki1119695-PROBIT            BELARUS                        Other                 0      434    937
2       6-24 months   ki1119695-PROBIT            BELARUS                        Other                 1       30    937
3       6-24 months   ki1119695-PROBIT            BELARUS                        Control               0      544   1136
3       6-24 months   ki1119695-PROBIT            BELARUS                        Control               1       29   1136
3       6-24 months   ki1119695-PROBIT            BELARUS                        Other                 0      533   1136
3       6-24 months   ki1119695-PROBIT            BELARUS                        Other                 1       30   1136
4       6-24 months   ki1119695-PROBIT            BELARUS                        Control               0      503   1100
4       6-24 months   ki1119695-PROBIT            BELARUS                        Control               1       22   1100
4       6-24 months   ki1119695-PROBIT            BELARUS                        Other                 0      556   1100
4       6-24 months   ki1119695-PROBIT            BELARUS                        Other                 1       19   1100
5       6-24 months   ki1119695-PROBIT            BELARUS                        Control               0      560   1146
5       6-24 months   ki1119695-PROBIT            BELARUS                        Control               1       26   1146
5       6-24 months   ki1119695-PROBIT            BELARUS                        Other                 0      540   1146
5       6-24 months   ki1119695-PROBIT            BELARUS                        Other                 1       20   1146
11      6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control               0      171    785
11      6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control               1       34    785
11      6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Other                 0      505    785
11      6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Other                 1       75    785
1       6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control               0      208    915
1       6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control               1       35    915
1       6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Other                 0      567    915
1       6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Other                 1      105    915
12      6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control               0      197    899
12      6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control               1       33    899
12      6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Other                 0      564    899
12      6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Other                 1      105    899
3       6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control               0      158    785
3       6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control               1       31    785
3       6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Other                 0      526    785
3       6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Other                 1       70    785
2       6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control               0      139    707
2       6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control               1       27    707
2       6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Other                 0      473    707
2       6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Other                 1       68    707
4       6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control               0      149    682
4       6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control               1       24    682
4       6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Other                 0      450    682
4       6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Other                 1       59    682
6       6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control               0      170    759
6       6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control               1       17    759
6       6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Other                 0      486    759
6       6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Other                 1       86    759
7       6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control               0      177    757
7       6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control               1       23    757
7       6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Other                 0      489    757
7       6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Other                 1       68    757
8       6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control               0      176    805
8       6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control               1       31    805
8       6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Other                 0      513    805
8       6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Other                 1       85    805
9       6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control               0      201    881
9       6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control               1       26    881
9       6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Other                 0      574    881
9       6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Other                 1       80    881
10      6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control               0      139    675
10      6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control               1       21    675
10      6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Other                 0      450    675
10      6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Other                 1       65    675
5       6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control               0      142    649
5       6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control               1       18    649
5       6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Other                 0      410    649
5       6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Other                 1       79    649
1       6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control               0       17    125
1       6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control               1        4    125
1       6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS                   0       77    125
1       6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS                   1       27    125
8       6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control               0       11     68
8       6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control               1        2     68
8       6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS                   0       47     68
8       6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS                   1        8     68
9       6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control               0       12     76
9       6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control               1        1     76
9       6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS                   0       50     76
9       6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS                   1       13     76
3       6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control               0       22    160
3       6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control               1        5    160
3       6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS                   0      105    160
3       6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS                   1       28    160
12      6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control               0       14     94
12      6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control               1        3     94
12      6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS                   0       59     94
12      6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS                   1       18     94
5       6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control               0       21    135
5       6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control               1        2    135
5       6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS                   0       80    135
5       6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS                   1       32    135
10      6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control               0        7     52
10      6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control               1        1     52
10      6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS                   0       38     52
10      6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS                   1        6     52
11      6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control               0       10     64
11      6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control               1        2     64
11      6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS                   0       48     64
11      6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS                   1        4     64
2       6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control               0       17    146
2       6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control               1        5    146
2       6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS                   0       96    146
2       6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS                   1       28    146
4       6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control               0       14    131
4       6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control               1        8    131
4       6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS                   0       89    131
4       6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS                   1       20    131
6       6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control               0        9     68
6       6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control               1        3     68
6       6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS                   0       45     68
6       6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS                   1       11     68
7       6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control               0       13     93
7       6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control               1        1     93
7       6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS                   0       57     93
7       6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS                   1       22     93
9       6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control               0       22     79
9       6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control               1        8     79
9       6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         LNS                   0       16     79
9       6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         LNS                   1        5     79
9       6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Other                 0       18     79
9       6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Other                 1       10     79
8       6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control               0       18     74
8       6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control               1        6     74
8       6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         LNS                   0       20     74
8       6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         LNS                   1        7     74
8       6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Other                 0       18     74
8       6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Other                 1        5     74
7       6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control               0       10     59
7       6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control               1        4     59
7       6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         LNS                   0       16     59
7       6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         LNS                   1        6     59
7       6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Other                 0       18     59
7       6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Other                 1        5     59
10      6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control               0       22     95
10      6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control               1        6     95
10      6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         LNS                   0       20     95
10      6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         LNS                   1       14     95
10      6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Other                 0       24     95
10      6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Other                 1        9     95
11      6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control               0       26    103
11      6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control               1        7    103
11      6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         LNS                   0       23    103
11      6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         LNS                   1       12    103
11      6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Other                 0       28    103
11      6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Other                 1        7    103
12      6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control               0       28    119
12      6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control               1       11    119
12      6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         LNS                   0       32    119
12      6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         LNS                   1       12    119
12      6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Other                 0       26    119
12      6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Other                 1       10    119
3       6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control               0       15     69
3       6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control               1        3     69
3       6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         LNS                   0       23     69
3       6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         LNS                   1       10     69
3       6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Other                 0       12     69
3       6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Other                 1        6     69
1       6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control               0       22     82
1       6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control               1       10     82
1       6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         LNS                   0       15     82
1       6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         LNS                   1        5     82
1       6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Other                 0       21     82
1       6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Other                 1        9     82
2       6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control               0       22     76
2       6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control               1        9     76
2       6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         LNS                   0       14     76
2       6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         LNS                   1        6     76
2       6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Other                 0       13     76
2       6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Other                 1       12     76
4       6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control               0       16     53
4       6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control               1        4     53
4       6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         LNS                   0       11     53
4       6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         LNS                   1        2     53
4       6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Other                 0       17     53
4       6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Other                 1        3     53
5       6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control               0       17     56
5       6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control               1        1     56
5       6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         LNS                   0       13     56
5       6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         LNS                   1        4     56
5       6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Other                 0       15     56
5       6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Other                 1        6     56
6       6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control               0       20     66
6       6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control               1        5     66
6       6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         LNS                   0       12     66
6       6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         LNS                   1        6     66
6       6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Other                 0       19     66
6       6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Other                 1        4     66
2       6-24 months   ki1148112-LCNI-5            MALAWI                         Control               0       34     86
2       6-24 months   ki1148112-LCNI-5            MALAWI                         Control               1       10     86
2       6-24 months   ki1148112-LCNI-5            MALAWI                         LNS                   0       31     86
2       6-24 months   ki1148112-LCNI-5            MALAWI                         LNS                   1       11     86
3       6-24 months   ki1148112-LCNI-5            MALAWI                         Control               0       21     69
3       6-24 months   ki1148112-LCNI-5            MALAWI                         Control               1        7     69
3       6-24 months   ki1148112-LCNI-5            MALAWI                         LNS                   0       25     69
3       6-24 months   ki1148112-LCNI-5            MALAWI                         LNS                   1       16     69
1       6-24 months   ki1148112-LCNI-5            MALAWI                         Control               0       14     45
1       6-24 months   ki1148112-LCNI-5            MALAWI                         Control               1       11     45
1       6-24 months   ki1148112-LCNI-5            MALAWI                         LNS                   0       14     45
1       6-24 months   ki1148112-LCNI-5            MALAWI                         LNS                   1        6     45
4       6-24 months   ki1148112-LCNI-5            MALAWI                         Control               0       25     70
4       6-24 months   ki1148112-LCNI-5            MALAWI                         Control               1       16     70
4       6-24 months   ki1148112-LCNI-5            MALAWI                         LNS                   0       20     70
4       6-24 months   ki1148112-LCNI-5            MALAWI                         LNS                   1        9     70
5       6-24 months   ki1148112-LCNI-5            MALAWI                         Control               0       23     78
5       6-24 months   ki1148112-LCNI-5            MALAWI                         Control               1       14     78
5       6-24 months   ki1148112-LCNI-5            MALAWI                         LNS                   0       24     78
5       6-24 months   ki1148112-LCNI-5            MALAWI                         LNS                   1       17     78
6       6-24 months   ki1148112-LCNI-5            MALAWI                         Control               0       20     64
6       6-24 months   ki1148112-LCNI-5            MALAWI                         Control               1        9     64
6       6-24 months   ki1148112-LCNI-5            MALAWI                         LNS                   0       22     64
6       6-24 months   ki1148112-LCNI-5            MALAWI                         LNS                   1       13     64
7       6-24 months   ki1148112-LCNI-5            MALAWI                         Control               0       17     45
7       6-24 months   ki1148112-LCNI-5            MALAWI                         Control               1        8     45
7       6-24 months   ki1148112-LCNI-5            MALAWI                         LNS                   0       16     45
7       6-24 months   ki1148112-LCNI-5            MALAWI                         LNS                   1        4     45
8       6-24 months   ki1148112-LCNI-5            MALAWI                         Control               0        9     35
8       6-24 months   ki1148112-LCNI-5            MALAWI                         Control               1        7     35
8       6-24 months   ki1148112-LCNI-5            MALAWI                         LNS                   0       19     35
8       6-24 months   ki1148112-LCNI-5            MALAWI                         LNS                   1        0     35
9       6-24 months   ki1148112-LCNI-5            MALAWI                         Control               0        6     18
9       6-24 months   ki1148112-LCNI-5            MALAWI                         Control               1        1     18
9       6-24 months   ki1148112-LCNI-5            MALAWI                         LNS                   0        8     18
9       6-24 months   ki1148112-LCNI-5            MALAWI                         LNS                   1        3     18
10      6-24 months   ki1148112-LCNI-5            MALAWI                         Control               0       10     28
10      6-24 months   ki1148112-LCNI-5            MALAWI                         Control               1        2     28
10      6-24 months   ki1148112-LCNI-5            MALAWI                         LNS                   0       11     28
10      6-24 months   ki1148112-LCNI-5            MALAWI                         LNS                   1        5     28
11      6-24 months   ki1148112-LCNI-5            MALAWI                         Control               0       15     32
11      6-24 months   ki1148112-LCNI-5            MALAWI                         Control               1        1     32
11      6-24 months   ki1148112-LCNI-5            MALAWI                         LNS                   0       12     32
11      6-24 months   ki1148112-LCNI-5            MALAWI                         LNS                   1        4     32
12      6-24 months   ki1148112-LCNI-5            MALAWI                         Control               0        7     19
12      6-24 months   ki1148112-LCNI-5            MALAWI                         Control               1        3     19
12      6-24 months   ki1148112-LCNI-5            MALAWI                         LNS                   0        6     19
12      6-24 months   ki1148112-LCNI-5            MALAWI                         LNS                   1        3     19
12      6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control               0      486   1290
12      6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control               1      138   1290
12      6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Other                 0      498   1290
12      6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Other                 1      168   1290
11      6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control               0      480   1274
11      6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control               1      134   1274
11      6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Other                 0      507   1274
11      6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Other                 1      153   1274
1       6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control               0      399   1042
1       6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control               1      110   1042
1       6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Other                 0      398   1042
1       6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Other                 1      135   1042
10      6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control               0      485   1290
10      6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control               1      117   1290
10      6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Other                 0      569   1290
10      6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Other                 1      119   1290
6       6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control               0      370    948
6       6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control               1       93    948
6       6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Other                 0      400    948
6       6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Other                 1       85    948
7       6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control               0      412    993
7       6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control               1       72    993
7       6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Other                 0      417    993
7       6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Other                 1       92    993
5       6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control               0      412    939
5       6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control               1       61    939
5       6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Other                 0      376    939
5       6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Other                 1       90    939
9       6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control               0      497   1263
9       6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control               1      130   1263
9       6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Other                 0      523   1263
9       6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Other                 1      113   1263
8       6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control               0      513   1194
8       6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control               1       92   1194
8       6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Other                 0      502   1194
8       6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Other                 1       87   1194
4       6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control               0      395    970
4       6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control               1       80    970
4       6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Other                 0      417    970
4       6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Other                 1       78    970
2       6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control               0      347    941
2       6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control               1       94    941
2       6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Other                 0      345    941
2       6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Other                 1      155    941
3       6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control               0      461   1160
3       6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control               1      115   1160
3       6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Other                 0      473   1160
3       6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Other                 1      111   1160
10      6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control               0       42    229
10      6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control               1       14    229
10      6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     LNS                   0       52    229
10      6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     LNS                   1       16    229
10      6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     MMN                   0       33    229
10      6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     MMN                   1        8    229
10      6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Other                 0       49    229
10      6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Other                 1       15    229
12      6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control               0       10     64
12      6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control               1        6     64
12      6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     LNS                   0        9     64
12      6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     LNS                   1        7     64
12      6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     MMN                   0        9     64
12      6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     MMN                   1        4     64
12      6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Other                 0       17     64
12      6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Other                 1        2     64
4       6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control               0      141    728
4       6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control               1       67    728
4       6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     LNS                   0      159    728
4       6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     LNS                   1       72    728
4       6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     MMN                   0       72    728
4       6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     MMN                   1       40    728
4       6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Other                 0      126    728
4       6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Other                 1       51    728
2       6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control               0       65    293
2       6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control               1       20    293
2       6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     LNS                   0       53    293
2       6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     LNS                   1       19    293
2       6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     MMN                   0       39    293
2       6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     MMN                   1       16    293
2       6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Other                 0       63    293
2       6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Other                 1       18    293
6       6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control               0       70    369
6       6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control               1       30    369
6       6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     LNS                   0       76    369
6       6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     LNS                   1       28    369
6       6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     MMN                   0       37    369
6       6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     MMN                   1       22    369
6       6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Other                 0       66    369
6       6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Other                 1       40    369
5       6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control               0       90    488
5       6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control               1       50    488
5       6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     LNS                   0      102    488
5       6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     LNS                   1       51    488
5       6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     MMN                   0       48    488
5       6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     MMN                   1       19    488
5       6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Other                 0       90    488
5       6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Other                 1       38    488
11      6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control               0       27    134
11      6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control               1        8    134
11      6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     LNS                   0       34    134
11      6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     LNS                   1       13    134
11      6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     MMN                   0       10    134
11      6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     MMN                   1        6    134
11      6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Other                 0       26    134
11      6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Other                 1       10    134
3       6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control               0       68    375
3       6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control               1       26    375
3       6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     LNS                   0       89    375
3       6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     LNS                   1       24    375
3       6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     MMN                   0       31    375
3       6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     MMN                   1       14    375
3       6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Other                 0       89    375
3       6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Other                 1       34    375
7       6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control               0      126    712
7       6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control               1       65    712
7       6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     LNS                   0      152    712
7       6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     LNS                   1       72    712
7       6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     MMN                   0       61    712
7       6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     MMN                   1       41    712
7       6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Other                 0      145    712
7       6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Other                 1       50    712
9       6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control               0       58    388
9       6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control               1       31    388
9       6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     LNS                   0       95    388
9       6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     LNS                   1       33    388
9       6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     MMN                   0       42    388
9       6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     MMN                   1       10    388
9       6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Other                 0       91    388
9       6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Other                 1       28    388
8       6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control               0       79    487
8       6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control               1       45    487
8       6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     LNS                   0      112    487
8       6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     LNS                   1       41    487
8       6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     MMN                   0       63    487
8       6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     MMN                   1       14    487
8       6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Other                 0       93    487
8       6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Other                 1       40    487
1       6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control               0       13     45
1       6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control               1        5     45
1       6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     LNS                   0        4     45
1       6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     LNS                   1        3     45
1       6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     MMN                   0        6     45
1       6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     MMN                   1        1     45
1       6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Other                 0        8     45
1       6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Other                 1        5     45
12      0-24 months   ki1000107-Serrinha-VitA     BRAZIL                         Control               0      180    494
12      0-24 months   ki1000107-Serrinha-VitA     BRAZIL                         Control               1       63    494
12      0-24 months   ki1000107-Serrinha-VitA     BRAZIL                         Other                 0      168    494
12      0-24 months   ki1000107-Serrinha-VitA     BRAZIL                         Other                 1       83    494
10      0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control               0       64    393
10      0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control               1       18    393
10      0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                   0       89    393
10      0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                   1       17    393
10      0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                 0      158    393
10      0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                 1       47    393
11      0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control               0       58    325
11      0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control               1       26    325
11      0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                   0       63    325
11      0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                   1       15    325
11      0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                 0      113    325
11      0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                 1       50    325
9       0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control               0      102    680
9       0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control               1       65    680
9       0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                   0      119    680
9       0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                   1       54    680
9       0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                 0      207    680
9       0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                 1      133    680
12      0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control               0       48    282
12      0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control               1       16    282
12      0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                   0       48    282
12      0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                   1       15    282
12      0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                 0      102    282
12      0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                 1       53    282
2       0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control               0       48    295
2       0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control               1       30    295
2       0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                   0       47    295
2       0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                   1       25    295
2       0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                 0       86    295
2       0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                 1       59    295
3       0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control               0       38    369
3       0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control               1       48    369
3       0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                   0       58    369
3       0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                   1       35    369
3       0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                 0      102    369
3       0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                 1       88    369
1       0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control               0       70    441
1       0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control               1       33    441
1       0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                   0       70    441
1       0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                   1       44    441
1       0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                 0      139    441
1       0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                 1       85    441
4       0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control               0       72    439
4       0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control               1       45    439
4       0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                   0       66    439
4       0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                   1       43    439
4       0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                 0      104    439
4       0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                 1      109    439
5       0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control               0       65    511
5       0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control               1       63    511
5       0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                   0       82    511
5       0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                   1       54    511
5       0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                 0      130    511
5       0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                 1      117    511
7       0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control               0       24    233
7       0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control               1       31    233
7       0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                   0       33    233
7       0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                   1       23    233
7       0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                 0       70    233
7       0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                 1       52    233
6       0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control               0       58    410
6       0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control               1       45    410
6       0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                   0       64    410
6       0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                   1       42    410
6       0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                 0      110    410
6       0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                 1       91    410
8       0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control               0       64    439
8       0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control               1       45    439
8       0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                   0       69    439
8       0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                   1       36    439
8       0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                 0      132    439
8       0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                 1       93    439
9       0-24 months   ki1000111-WASH-Kenya        KENYA                          Control               0       41    132
9       0-24 months   ki1000111-WASH-Kenya        KENYA                          Control               1       11    132
9       0-24 months   ki1000111-WASH-Kenya        KENYA                          LNS                   0       18    132
9       0-24 months   ki1000111-WASH-Kenya        KENYA                          LNS                   1        7    132
9       0-24 months   ki1000111-WASH-Kenya        KENYA                          Other                 0       37    132
9       0-24 months   ki1000111-WASH-Kenya        KENYA                          Other                 1       18    132
10      0-24 months   ki1000111-WASH-Kenya        KENYA                          Control               0      141    655
10      0-24 months   ki1000111-WASH-Kenya        KENYA                          Control               1       71    655
10      0-24 months   ki1000111-WASH-Kenya        KENYA                          LNS                   0      107    655
10      0-24 months   ki1000111-WASH-Kenya        KENYA                          LNS                   1       44    655
10      0-24 months   ki1000111-WASH-Kenya        KENYA                          Other                 0      196    655
10      0-24 months   ki1000111-WASH-Kenya        KENYA                          Other                 1       96    655
6       0-24 months   ki1000111-WASH-Kenya        KENYA                          Control               0       86    314
6       0-24 months   ki1000111-WASH-Kenya        KENYA                          Control               1       29    314
6       0-24 months   ki1000111-WASH-Kenya        KENYA                          LNS                   0       47    314
6       0-24 months   ki1000111-WASH-Kenya        KENYA                          LNS                   1       13    314
6       0-24 months   ki1000111-WASH-Kenya        KENYA                          Other                 0      103    314
6       0-24 months   ki1000111-WASH-Kenya        KENYA                          Other                 1       36    314
7       0-24 months   ki1000111-WASH-Kenya        KENYA                          Control               0       31    120
7       0-24 months   ki1000111-WASH-Kenya        KENYA                          Control               1        8    120
7       0-24 months   ki1000111-WASH-Kenya        KENYA                          LNS                   0       29    120
7       0-24 months   ki1000111-WASH-Kenya        KENYA                          LNS                   1        6    120
7       0-24 months   ki1000111-WASH-Kenya        KENYA                          Other                 0       28    120
7       0-24 months   ki1000111-WASH-Kenya        KENYA                          Other                 1       18    120
2       0-24 months   ki1000111-WASH-Kenya        KENYA                          Control               0      140    561
2       0-24 months   ki1000111-WASH-Kenya        KENYA                          Control               1       35    561
2       0-24 months   ki1000111-WASH-Kenya        KENYA                          LNS                   0       94    561
2       0-24 months   ki1000111-WASH-Kenya        KENYA                          LNS                   1       27    561
2       0-24 months   ki1000111-WASH-Kenya        KENYA                          Other                 0      207    561
2       0-24 months   ki1000111-WASH-Kenya        KENYA                          Other                 1       58    561
8       0-24 months   ki1000111-WASH-Kenya        KENYA                          Control               0       21    103
8       0-24 months   ki1000111-WASH-Kenya        KENYA                          Control               1       15    103
8       0-24 months   ki1000111-WASH-Kenya        KENYA                          LNS                   0       14    103
8       0-24 months   ki1000111-WASH-Kenya        KENYA                          LNS                   1        7    103
8       0-24 months   ki1000111-WASH-Kenya        KENYA                          Other                 0       34    103
8       0-24 months   ki1000111-WASH-Kenya        KENYA                          Other                 1       12    103
11      0-24 months   ki1000111-WASH-Kenya        KENYA                          Control               0      180    767
11      0-24 months   ki1000111-WASH-Kenya        KENYA                          Control               1       48    767
11      0-24 months   ki1000111-WASH-Kenya        KENYA                          LNS                   0      113    767
11      0-24 months   ki1000111-WASH-Kenya        KENYA                          LNS                   1       29    767
11      0-24 months   ki1000111-WASH-Kenya        KENYA                          Other                 0      289    767
11      0-24 months   ki1000111-WASH-Kenya        KENYA                          Other                 1      108    767
1       0-24 months   ki1000111-WASH-Kenya        KENYA                          Control               0      288   1053
1       0-24 months   ki1000111-WASH-Kenya        KENYA                          Control               1       83   1053
1       0-24 months   ki1000111-WASH-Kenya        KENYA                          LNS                   0      202   1053
1       0-24 months   ki1000111-WASH-Kenya        KENYA                          LNS                   1       46   1053
1       0-24 months   ki1000111-WASH-Kenya        KENYA                          Other                 0      320   1053
1       0-24 months   ki1000111-WASH-Kenya        KENYA                          Other                 1      114   1053
12      0-24 months   ki1000111-WASH-Kenya        KENYA                          Control               0      192    679
12      0-24 months   ki1000111-WASH-Kenya        KENYA                          Control               1       86    679
12      0-24 months   ki1000111-WASH-Kenya        KENYA                          LNS                   0      119    679
12      0-24 months   ki1000111-WASH-Kenya        KENYA                          LNS                   1       24    679
12      0-24 months   ki1000111-WASH-Kenya        KENYA                          Other                 0      195    679
12      0-24 months   ki1000111-WASH-Kenya        KENYA                          Other                 1       63    679
3       0-24 months   ki1000111-WASH-Kenya        KENYA                          Control               0      172    575
3       0-24 months   ki1000111-WASH-Kenya        KENYA                          Control               1       50    575
3       0-24 months   ki1000111-WASH-Kenya        KENYA                          LNS                   0      101    575
3       0-24 months   ki1000111-WASH-Kenya        KENYA                          LNS                   1       22    575
3       0-24 months   ki1000111-WASH-Kenya        KENYA                          Other                 0      175    575
3       0-24 months   ki1000111-WASH-Kenya        KENYA                          Other                 1       55    575
5       0-24 months   ki1000111-WASH-Kenya        KENYA                          Control               0      240    892
5       0-24 months   ki1000111-WASH-Kenya        KENYA                          Control               1       78    892
5       0-24 months   ki1000111-WASH-Kenya        KENYA                          LNS                   0      153    892
5       0-24 months   ki1000111-WASH-Kenya        KENYA                          LNS                   1       52    892
5       0-24 months   ki1000111-WASH-Kenya        KENYA                          Other                 0      260    892
5       0-24 months   ki1000111-WASH-Kenya        KENYA                          Other                 1      109    892
4       0-24 months   ki1000111-WASH-Kenya        KENYA                          Control               0      189    854
4       0-24 months   ki1000111-WASH-Kenya        KENYA                          Control               1       64    854
4       0-24 months   ki1000111-WASH-Kenya        KENYA                          LNS                   0      158    854
4       0-24 months   ki1000111-WASH-Kenya        KENYA                          LNS                   1       42    854
4       0-24 months   ki1000111-WASH-Kenya        KENYA                          Other                 0      289    854
4       0-24 months   ki1000111-WASH-Kenya        KENYA                          Other                 1      112    854
6       0-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Control               0        3     25
6       0-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Control               1       17     25
6       0-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Other                 0        2     25
6       0-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Other                 1        3     25
7       0-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Control               0       73    268
7       0-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Control               1      155    268
7       0-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Other                 0       13    268
7       0-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Other                 1       27    268
8       0-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Control               0        6    160
8       0-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Control               1       21    160
8       0-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Other                 0       51    160
8       0-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Other                 1       82    160
9       0-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Control               0        4    115
9       0-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Control               1        6    115
9       0-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Other                 0       47    115
9       0-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Other                 1       58    115
10      0-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Control               0       35    208
10      0-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Control               1       50    208
10      0-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Other                 0       54    208
10      0-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Other                 1       69    208
5       0-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Control               0        1      3
5       0-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Control               1        0      3
5       0-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Other                 0        0      3
5       0-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Other                 1        2      3
11      0-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Control               0       91    392
11      0-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Control               1      106    392
11      0-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Other                 0      114    392
11      0-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Other                 1       81    392
12      0-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Control               0       61    208
12      0-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Control               1       36    208
12      0-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Other                 0       64    208
12      0-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Other                 1       47    208
1       0-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Control               0       71    242
1       0-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Control               1       52    242
1       0-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Other                 0       80    242
1       0-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Other                 1       39    242
2       0-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Control               0       38    102
2       0-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Control               1        9    102
2       0-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Other                 0       38    102
2       0-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Other                 1       17    102
3       0-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Other                 0        2      2
2       0-24 months   ki1000304-EU                INDIA                          Control               0       36    162
2       0-24 months   ki1000304-EU                INDIA                          Control               1       46    162
2       0-24 months   ki1000304-EU                INDIA                          Zinc                  0       44    162
2       0-24 months   ki1000304-EU                INDIA                          Zinc                  1       36    162
1       0-24 months   ki1000304-EU                INDIA                          Control               0       43    182
1       0-24 months   ki1000304-EU                INDIA                          Control               1       41    182
1       0-24 months   ki1000304-EU                INDIA                          Zinc                  0       59    182
1       0-24 months   ki1000304-EU                INDIA                          Zinc                  1       39    182
9       0-24 months   ki1000304-EU                INDIA                          Control               0       40    163
9       0-24 months   ki1000304-EU                INDIA                          Control               1       37    163
9       0-24 months   ki1000304-EU                INDIA                          Zinc                  0       57    163
9       0-24 months   ki1000304-EU                INDIA                          Zinc                  1       29    163
8       0-24 months   ki1000304-EU                INDIA                          Control               0       41    186
8       0-24 months   ki1000304-EU                INDIA                          Control               1       53    186
8       0-24 months   ki1000304-EU                INDIA                          Zinc                  0       49    186
8       0-24 months   ki1000304-EU                INDIA                          Zinc                  1       43    186
10      0-24 months   ki1000304-EU                INDIA                          Control               0       57    181
10      0-24 months   ki1000304-EU                INDIA                          Control               1       40    181
10      0-24 months   ki1000304-EU                INDIA                          Zinc                  0       50    181
10      0-24 months   ki1000304-EU                INDIA                          Zinc                  1       34    181
11      0-24 months   ki1000304-EU                INDIA                          Control               0       38    162
11      0-24 months   ki1000304-EU                INDIA                          Control               1       43    162
11      0-24 months   ki1000304-EU                INDIA                          Zinc                  0       43    162
11      0-24 months   ki1000304-EU                INDIA                          Zinc                  1       38    162
3       0-24 months   ki1000304-EU                INDIA                          Control               0       57    191
3       0-24 months   ki1000304-EU                INDIA                          Control               1       50    191
3       0-24 months   ki1000304-EU                INDIA                          Zinc                  0       45    191
3       0-24 months   ki1000304-EU                INDIA                          Zinc                  1       39    191
12      0-24 months   ki1000304-EU                INDIA                          Control               0       52    155
12      0-24 months   ki1000304-EU                INDIA                          Control               1       31    155
12      0-24 months   ki1000304-EU                INDIA                          Zinc                  0       43    155
12      0-24 months   ki1000304-EU                INDIA                          Zinc                  1       29    155
4       0-24 months   ki1000304-EU                INDIA                          Control               0       45    167
4       0-24 months   ki1000304-EU                INDIA                          Control               1       41    167
4       0-24 months   ki1000304-EU                INDIA                          Zinc                  0       42    167
4       0-24 months   ki1000304-EU                INDIA                          Zinc                  1       39    167
5       0-24 months   ki1000304-EU                INDIA                          Control               0       24    107
5       0-24 months   ki1000304-EU                INDIA                          Control               1       29    107
5       0-24 months   ki1000304-EU                INDIA                          Zinc                  0       28    107
5       0-24 months   ki1000304-EU                INDIA                          Zinc                  1       26    107
6       0-24 months   ki1000304-EU                INDIA                          Control               0       39    156
6       0-24 months   ki1000304-EU                INDIA                          Control               1       40    156
6       0-24 months   ki1000304-EU                INDIA                          Zinc                  0       38    156
6       0-24 months   ki1000304-EU                INDIA                          Zinc                  1       39    156
7       0-24 months   ki1000304-EU                INDIA                          Control               0       54    204
7       0-24 months   ki1000304-EU                INDIA                          Control               1       51    204
7       0-24 months   ki1000304-EU                INDIA                          Zinc                  0       49    204
7       0-24 months   ki1000304-EU                INDIA                          Zinc                  1       50    204
1       0-24 months   ki1000304-VITAMIN-A         INDIA                          Control               0       99    370
1       0-24 months   ki1000304-VITAMIN-A         INDIA                          Control               1       89    370
1       0-24 months   ki1000304-VITAMIN-A         INDIA                          Other                 0       92    370
1       0-24 months   ki1000304-VITAMIN-A         INDIA                          Other                 1       90    370
2       0-24 months   ki1000304-VITAMIN-A         INDIA                          Control               0       75    287
2       0-24 months   ki1000304-VITAMIN-A         INDIA                          Control               1       67    287
2       0-24 months   ki1000304-VITAMIN-A         INDIA                          Other                 0       92    287
2       0-24 months   ki1000304-VITAMIN-A         INDIA                          Other                 1       53    287
4       0-24 months   ki1000304-VITAMIN-A         INDIA                          Control               0       88    344
4       0-24 months   ki1000304-VITAMIN-A         INDIA                          Control               1       82    344
4       0-24 months   ki1000304-VITAMIN-A         INDIA                          Other                 0      104    344
4       0-24 months   ki1000304-VITAMIN-A         INDIA                          Other                 1       70    344
6       0-24 months   ki1000304-VITAMIN-A         INDIA                          Control               0       88    295
6       0-24 months   ki1000304-VITAMIN-A         INDIA                          Control               1       61    295
6       0-24 months   ki1000304-VITAMIN-A         INDIA                          Other                 0       83    295
6       0-24 months   ki1000304-VITAMIN-A         INDIA                          Other                 1       63    295
7       0-24 months   ki1000304-VITAMIN-A         INDIA                          Control               0       96    330
7       0-24 months   ki1000304-VITAMIN-A         INDIA                          Control               1       71    330
7       0-24 months   ki1000304-VITAMIN-A         INDIA                          Other                 0       86    330
7       0-24 months   ki1000304-VITAMIN-A         INDIA                          Other                 1       77    330
5       0-24 months   ki1000304-VITAMIN-A         INDIA                          Control               0      109    370
5       0-24 months   ki1000304-VITAMIN-A         INDIA                          Control               1       75    370
5       0-24 months   ki1000304-VITAMIN-A         INDIA                          Other                 0      110    370
5       0-24 months   ki1000304-VITAMIN-A         INDIA                          Other                 1       76    370
8       0-24 months   ki1000304-VITAMIN-A         INDIA                          Control               0      131    437
8       0-24 months   ki1000304-VITAMIN-A         INDIA                          Control               1       99    437
8       0-24 months   ki1000304-VITAMIN-A         INDIA                          Other                 0      126    437
8       0-24 months   ki1000304-VITAMIN-A         INDIA                          Other                 1       81    437
9       0-24 months   ki1000304-VITAMIN-A         INDIA                          Control               0       79    292
9       0-24 months   ki1000304-VITAMIN-A         INDIA                          Control               1       68    292
9       0-24 months   ki1000304-VITAMIN-A         INDIA                          Other                 0       76    292
9       0-24 months   ki1000304-VITAMIN-A         INDIA                          Other                 1       69    292
10      0-24 months   ki1000304-VITAMIN-A         INDIA                          Control               0       53    193
10      0-24 months   ki1000304-VITAMIN-A         INDIA                          Control               1       44    193
10      0-24 months   ki1000304-VITAMIN-A         INDIA                          Other                 0       58    193
10      0-24 months   ki1000304-VITAMIN-A         INDIA                          Other                 1       38    193
11      0-24 months   ki1000304-VITAMIN-A         INDIA                          Control               0       56    210
11      0-24 months   ki1000304-VITAMIN-A         INDIA                          Control               1       47    210
11      0-24 months   ki1000304-VITAMIN-A         INDIA                          Other                 0       61    210
11      0-24 months   ki1000304-VITAMIN-A         INDIA                          Other                 1       46    210
12      0-24 months   ki1000304-VITAMIN-A         INDIA                          Control               0       27    122
12      0-24 months   ki1000304-VITAMIN-A         INDIA                          Control               1       34    122
12      0-24 months   ki1000304-VITAMIN-A         INDIA                          Other                 0       29    122
12      0-24 months   ki1000304-VITAMIN-A         INDIA                          Other                 1       32    122
3       0-24 months   ki1000304-VITAMIN-A         INDIA                          Control               0       77    293
3       0-24 months   ki1000304-VITAMIN-A         INDIA                          Control               1       74    293
3       0-24 months   ki1000304-VITAMIN-A         INDIA                          Other                 0       75    293
3       0-24 months   ki1000304-VITAMIN-A         INDIA                          Other                 1       67    293
1       0-24 months   ki1000304-Vitamin-B12       INDIA                          Control               0       30    129
1       0-24 months   ki1000304-Vitamin-B12       INDIA                          Control               1       36    129
1       0-24 months   ki1000304-Vitamin-B12       INDIA                          Other                 0       36    129
1       0-24 months   ki1000304-Vitamin-B12       INDIA                          Other                 1       27    129
6       0-24 months   ki1000304-Vitamin-B12       INDIA                          Control               0       35    109
6       0-24 months   ki1000304-Vitamin-B12       INDIA                          Control               1       21    109
6       0-24 months   ki1000304-Vitamin-B12       INDIA                          Other                 0       30    109
6       0-24 months   ki1000304-Vitamin-B12       INDIA                          Other                 1       23    109
2       0-24 months   ki1000304-Vitamin-B12       INDIA                          Control               0       28    102
2       0-24 months   ki1000304-Vitamin-B12       INDIA                          Control               1       23    102
2       0-24 months   ki1000304-Vitamin-B12       INDIA                          Other                 0       31    102
2       0-24 months   ki1000304-Vitamin-B12       INDIA                          Other                 1       20    102
7       0-24 months   ki1000304-Vitamin-B12       INDIA                          Control               0       36    136
7       0-24 months   ki1000304-Vitamin-B12       INDIA                          Control               1       27    136
7       0-24 months   ki1000304-Vitamin-B12       INDIA                          Other                 0       37    136
7       0-24 months   ki1000304-Vitamin-B12       INDIA                          Other                 1       36    136
5       0-24 months   ki1000304-Vitamin-B12       INDIA                          Control               0        0      7
5       0-24 months   ki1000304-Vitamin-B12       INDIA                          Control               1        4      7
5       0-24 months   ki1000304-Vitamin-B12       INDIA                          Other                 0        1      7
5       0-24 months   ki1000304-Vitamin-B12       INDIA                          Other                 1        2      7
8       0-24 months   ki1000304-Vitamin-B12       INDIA                          Control               0        8     32
8       0-24 months   ki1000304-Vitamin-B12       INDIA                          Control               1        8     32
8       0-24 months   ki1000304-Vitamin-B12       INDIA                          Other                 0        6     32
8       0-24 months   ki1000304-Vitamin-B12       INDIA                          Other                 1       10     32
9       0-24 months   ki1000304-Vitamin-B12       INDIA                          Control               0        7     27
9       0-24 months   ki1000304-Vitamin-B12       INDIA                          Control               1        6     27
9       0-24 months   ki1000304-Vitamin-B12       INDIA                          Other                 0        6     27
9       0-24 months   ki1000304-Vitamin-B12       INDIA                          Other                 1        8     27
10      0-24 months   ki1000304-Vitamin-B12       INDIA                          Control               0       20     88
10      0-24 months   ki1000304-Vitamin-B12       INDIA                          Control               1       31     88
10      0-24 months   ki1000304-Vitamin-B12       INDIA                          Other                 0       22     88
10      0-24 months   ki1000304-Vitamin-B12       INDIA                          Other                 1       15     88
11      0-24 months   ki1000304-Vitamin-B12       INDIA                          Control               0       14     77
11      0-24 months   ki1000304-Vitamin-B12       INDIA                          Control               1       25     77
11      0-24 months   ki1000304-Vitamin-B12       INDIA                          Other                 0       17     77
11      0-24 months   ki1000304-Vitamin-B12       INDIA                          Other                 1       21     77
12      0-24 months   ki1000304-Vitamin-B12       INDIA                          Control               0       30     97
12      0-24 months   ki1000304-Vitamin-B12       INDIA                          Control               1       17     97
12      0-24 months   ki1000304-Vitamin-B12       INDIA                          Other                 0       30     97
12      0-24 months   ki1000304-Vitamin-B12       INDIA                          Other                 1       20     97
8       0-24 months   ki1000304-ZnMort            INDIA                          Other                 0       42    157
8       0-24 months   ki1000304-ZnMort            INDIA                          Other                 1       33    157
8       0-24 months   ki1000304-ZnMort            INDIA                          Zinc                  0       42    157
8       0-24 months   ki1000304-ZnMort            INDIA                          Zinc                  1       40    157
3       0-24 months   ki1000304-ZnMort            INDIA                          Other                 0       60    247
3       0-24 months   ki1000304-ZnMort            INDIA                          Other                 1       54    247
3       0-24 months   ki1000304-ZnMort            INDIA                          Zinc                  0       66    247
3       0-24 months   ki1000304-ZnMort            INDIA                          Zinc                  1       67    247
2       0-24 months   ki1000304-ZnMort            INDIA                          Other                 0       31    108
2       0-24 months   ki1000304-ZnMort            INDIA                          Other                 1       21    108
2       0-24 months   ki1000304-ZnMort            INDIA                          Zinc                  0       28    108
2       0-24 months   ki1000304-ZnMort            INDIA                          Zinc                  1       28    108
4       0-24 months   ki1000304-ZnMort            INDIA                          Other                 0       54    266
4       0-24 months   ki1000304-ZnMort            INDIA                          Other                 1       67    266
4       0-24 months   ki1000304-ZnMort            INDIA                          Zinc                  0       78    266
4       0-24 months   ki1000304-ZnMort            INDIA                          Zinc                  1       67    266
1       0-24 months   ki1000304-ZnMort            INDIA                          Other                 0       22     85
1       0-24 months   ki1000304-ZnMort            INDIA                          Other                 1       23     85
1       0-24 months   ki1000304-ZnMort            INDIA                          Zinc                  0       26     85
1       0-24 months   ki1000304-ZnMort            INDIA                          Zinc                  1       14     85
9       0-24 months   ki1000304-ZnMort            INDIA                          Other                 0       37    152
9       0-24 months   ki1000304-ZnMort            INDIA                          Other                 1       49    152
9       0-24 months   ki1000304-ZnMort            INDIA                          Zinc                  0       41    152
9       0-24 months   ki1000304-ZnMort            INDIA                          Zinc                  1       25    152
10      0-24 months   ki1000304-ZnMort            INDIA                          Other                 0       24    116
10      0-24 months   ki1000304-ZnMort            INDIA                          Other                 1       32    116
10      0-24 months   ki1000304-ZnMort            INDIA                          Zinc                  0       27    116
10      0-24 months   ki1000304-ZnMort            INDIA                          Zinc                  1       33    116
6       0-24 months   ki1000304-ZnMort            INDIA                          Other                 0       55    231
6       0-24 months   ki1000304-ZnMort            INDIA                          Other                 1       62    231
6       0-24 months   ki1000304-ZnMort            INDIA                          Zinc                  0       44    231
6       0-24 months   ki1000304-ZnMort            INDIA                          Zinc                  1       70    231
7       0-24 months   ki1000304-ZnMort            INDIA                          Other                 0       40    149
7       0-24 months   ki1000304-ZnMort            INDIA                          Other                 1       31    149
7       0-24 months   ki1000304-ZnMort            INDIA                          Zinc                  0       39    149
7       0-24 months   ki1000304-ZnMort            INDIA                          Zinc                  1       39    149
12      0-24 months   ki1000304-ZnMort            INDIA                          Other                 0       41    137
12      0-24 months   ki1000304-ZnMort            INDIA                          Other                 1       42    137
12      0-24 months   ki1000304-ZnMort            INDIA                          Zinc                  0       21    137
12      0-24 months   ki1000304-ZnMort            INDIA                          Zinc                  1       33    137
5       0-24 months   ki1000304-ZnMort            INDIA                          Other                 0       60    276
5       0-24 months   ki1000304-ZnMort            INDIA                          Other                 1       77    276
5       0-24 months   ki1000304-ZnMort            INDIA                          Zinc                  0       62    276
5       0-24 months   ki1000304-ZnMort            INDIA                          Zinc                  1       77    276
11      0-24 months   ki1000304-ZnMort            INDIA                          Other                 0       24    112
11      0-24 months   ki1000304-ZnMort            INDIA                          Other                 1       32    112
11      0-24 months   ki1000304-ZnMort            INDIA                          Zinc                  0       31    112
11      0-24 months   ki1000304-ZnMort            INDIA                          Zinc                  1       25    112
10      0-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control               0       23    130
10      0-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control               1       42    130
10      0-24 months   ki1000304b-SAS-CompFeed     INDIA                          Other                 0       20    130
10      0-24 months   ki1000304b-SAS-CompFeed     INDIA                          Other                 1       45    130
11      0-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control               0       16    131
11      0-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control               1       27    131
11      0-24 months   ki1000304b-SAS-CompFeed     INDIA                          Other                 0       37    131
11      0-24 months   ki1000304b-SAS-CompFeed     INDIA                          Other                 1       51    131
12      0-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control               0       31    133
12      0-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control               1       45    133
12      0-24 months   ki1000304b-SAS-CompFeed     INDIA                          Other                 0       27    133
12      0-24 months   ki1000304b-SAS-CompFeed     INDIA                          Other                 1       30    133
1       0-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control               0       19     99
1       0-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control               1       33     99
1       0-24 months   ki1000304b-SAS-CompFeed     INDIA                          Other                 0       19     99
1       0-24 months   ki1000304b-SAS-CompFeed     INDIA                          Other                 1       28     99
2       0-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control               0       18     86
2       0-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control               1       21     86
2       0-24 months   ki1000304b-SAS-CompFeed     INDIA                          Other                 0       26     86
2       0-24 months   ki1000304b-SAS-CompFeed     INDIA                          Other                 1       21     86
3       0-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control               0       24     85
3       0-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control               1       16     85
3       0-24 months   ki1000304b-SAS-CompFeed     INDIA                          Other                 0       19     85
3       0-24 months   ki1000304b-SAS-CompFeed     INDIA                          Other                 1       26     85
4       0-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control               0       15     80
4       0-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control               1       16     80
4       0-24 months   ki1000304b-SAS-CompFeed     INDIA                          Other                 0       21     80
4       0-24 months   ki1000304b-SAS-CompFeed     INDIA                          Other                 1       28     80
5       0-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control               0       10     82
5       0-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control               1       25     82
5       0-24 months   ki1000304b-SAS-CompFeed     INDIA                          Other                 0       20     82
5       0-24 months   ki1000304b-SAS-CompFeed     INDIA                          Other                 1       27     82
6       0-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control               0       19    110
6       0-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control               1       33    110
6       0-24 months   ki1000304b-SAS-CompFeed     INDIA                          Other                 0       34    110
6       0-24 months   ki1000304b-SAS-CompFeed     INDIA                          Other                 1       24    110
7       0-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control               0        1     13
7       0-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control               1        5     13
7       0-24 months   ki1000304b-SAS-CompFeed     INDIA                          Other                 0        2     13
7       0-24 months   ki1000304b-SAS-CompFeed     INDIA                          Other                 1        5     13
9       0-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Control               0        0     13
9       0-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Control               1        4     13
9       0-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Other                 0        1     13
9       0-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Other                 1        8     13
12      0-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Control               0        4     66
12      0-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Control               1       13     66
12      0-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Other                 0       14     66
12      0-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Other                 1       35     66
10      0-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Control               0        1     30
10      0-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Control               1        6     30
10      0-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Other                 0        5     30
10      0-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Other                 1       18     30
4       0-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Control               0        0     30
4       0-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Control               1        8     30
4       0-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Other                 0        6     30
4       0-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Other                 1       16     30
6       0-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Control               0        1     34
6       0-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Control               1        8     34
6       0-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Other                 0       12     34
6       0-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Other                 1       13     34
1       0-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Control               0        1     64
1       0-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Control               1       16     64
1       0-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Other                 0        7     64
1       0-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Other                 1       40     64
2       0-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Control               0        2     41
2       0-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Control               1        7     41
2       0-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Other                 0        9     41
2       0-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Other                 1       23     41
3       0-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Control               0        3     40
3       0-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Control               1        7     40
3       0-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Other                 0        7     40
3       0-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Other                 1       23     40
5       0-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Control               0        2     31
5       0-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Control               1        6     31
5       0-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Other                 0        8     31
5       0-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Other                 1       15     31
7       0-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Control               0        2     18
7       0-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Control               1        3     18
7       0-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Other                 0        4     18
7       0-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Other                 1        9     18
11      0-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Control               0        4     51
11      0-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Control               1        8     51
11      0-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Other                 0       13     51
11      0-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Other                 1       26     51
8       0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control               0       49    222
8       0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control               1       11    222
8       0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                 0       81    222
8       0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                 1       26    222
8       0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                  0       42    222
8       0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                  1       13    222
7       0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control               0       34    198
7       0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control               1       12    198
7       0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                 0       77    198
7       0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                 1       28    198
7       0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                  0       36    198
7       0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                  1       11    198
9       0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control               0       36    207
9       0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control               1        9    207
9       0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                 0       82    207
9       0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                 1       28    207
9       0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                  0       42    207
9       0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                  1       10    207
10      0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control               0       46    230
10      0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control               1       15    230
10      0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                 0       86    230
10      0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                 1       25    230
10      0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                  0       44    230
10      0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                  1       14    230
11      0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control               0       44    211
11      0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control               1       10    211
11      0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                 0       90    211
11      0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                 1       16    211
11      0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                  0       36    211
11      0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                  1       15    211
12      0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control               0       44    197
12      0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control               1        9    197
12      0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                 0       71    197
12      0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                 1       22    197
12      0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                  0       44    197
12      0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                  1        7    197
1       0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control               0       28    153
1       0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control               1       12    153
1       0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                 0       56    153
1       0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                 1       23    153
1       0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                  0       26    153
1       0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                  1        8    153
2       0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control               0       35    167
2       0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control               1        3    167
2       0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                 0       68    167
2       0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                 1       16    167
2       0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                  0       33    167
2       0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                  1       12    167
3       0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control               0       24    166
3       0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control               1       12    166
3       0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                 0       65    166
3       0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                 1       18    166
3       0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                  0       34    166
3       0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                  1       13    166
4       0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control               0       30    169
4       0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control               1       17    169
4       0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                 0       56    169
4       0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                 1       21    169
4       0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                  0       27    169
4       0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                  1       18    169
5       0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control               0       33    177
5       0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control               1       10    177
5       0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                 0       80    177
5       0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                 1       17    177
5       0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                  0       28    177
5       0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                  1        9    177
6       0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control               0       30    158
6       0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control               1        9    158
6       0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                 0       58    158
6       0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                 1       16    158
6       0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                  0       36    158
6       0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                  1        9    158
12      0-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Control               0      204   1190
12      0-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Control               1       67   1190
12      0-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc                  0      624   1190
12      0-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc                  1      295   1190
4       0-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc                  0      287    426
4       0-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc                  1      139    426
3       0-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc                  0       16     20
3       0-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc                  1        4     20
7       0-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc                  0      163    209
7       0-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc                  1       46    209
8       0-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc                  0      325    461
8       0-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc                  1      136    461
1       0-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Control               0      321   1562
1       0-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Control               1      114   1562
1       0-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc                  0      703   1562
1       0-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc                  1      424   1562
2       0-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Control               0      340   1656
2       0-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Control               1      167   1656
2       0-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc                  0      705   1656
2       0-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc                  1      444   1656
5       0-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc                  0      397    724
5       0-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc                  1      327    724
9       0-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc                  0      399    561
9       0-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc                  1      162    561
6       0-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc                  0      143    210
6       0-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc                  1       67    210
10      0-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc                  0      100    145
10      0-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc                  1       45    145
3       0-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Control               0        1     18
3       0-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Control               1        1     18
3       0-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Other                 0        4     18
3       0-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Other                 1       12     18
4       0-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Control               0        3     23
4       0-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Control               1        3     23
4       0-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Other                 0        9     23
4       0-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Other                 1        8     23
5       0-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Control               0        4     26
5       0-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Control               1        3     26
5       0-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Other                 0       12     26
5       0-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Other                 1        7     26
6       0-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Control               0        5     36
6       0-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Control               1        4     36
6       0-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Other                 0       13     36
6       0-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Other                 1       14     36
10      0-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Control               0        4     25
10      0-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Control               1        3     25
10      0-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Other                 0        8     25
10      0-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Other                 1       10     25
1       0-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Control               0        1     13
1       0-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Control               1        3     13
1       0-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Other                 0        5     13
1       0-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Other                 1        4     13
2       0-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Control               0        4     17
2       0-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Control               1        1     17
2       0-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Other                 0        6     17
2       0-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Other                 1        6     17
7       0-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Control               0        2     22
7       0-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Control               1        3     22
7       0-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Other                 0        9     22
7       0-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Other                 1        8     22
9       0-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Control               0        6     30
9       0-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Control               1        1     30
9       0-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Other                 0       11     30
9       0-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Other                 1       12     30
8       0-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Control               0        4     18
8       0-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Control               1        1     18
8       0-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Other                 0        9     18
8       0-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Other                 1        4     18
12      0-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Control               0        0      9
12      0-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Control               1        1      9
12      0-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Other                 0        4      9
12      0-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Other                 1        4      9
11      0-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Control               0        5     22
11      0-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Control               1        2     22
11      0-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Other                 0        5     22
11      0-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Other                 1       10     22
7       0-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Control               0       54    411
7       0-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Control               1       38    411
7       0-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   LNS                   0      224    411
7       0-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   LNS                   1       95    411
5       0-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Control               0       44    258
5       0-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Control               1       34    258
5       0-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   LNS                   0      119    258
5       0-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   LNS                   1       61    258
6       0-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Control               0       56    366
6       0-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Control               1       37    366
6       0-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   LNS                   0      192    366
6       0-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   LNS                   1       81    366
10      0-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Control               0       45    372
10      0-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Control               1       28    372
10      0-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   LNS                   0      214    372
10      0-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   LNS                   1       85    372
11      0-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Control               0       35    197
11      0-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Control               1       20    197
11      0-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   LNS                   0       92    197
11      0-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   LNS                   1       50    197
3       0-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Control               0       37    214
3       0-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Control               1       20    214
3       0-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   LNS                   0      109    214
3       0-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   LNS                   1       48    214
8       0-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Control               0       57    361
8       0-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Control               1       21    361
8       0-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   LNS                   0      183    361
8       0-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   LNS                   1      100    361
9       0-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Control               0       54    294
9       0-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Control               1       33    294
9       0-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   LNS                   0      131    294
9       0-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   LNS                   1       76    294
1       0-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Control               0       36    239
1       0-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Control               1       24    239
1       0-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   LNS                   0      125    239
1       0-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   LNS                   1       54    239
12      0-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Control               0       28    162
12      0-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Control               1       14    162
12      0-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   LNS                   0       82    162
12      0-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   LNS                   1       38    162
2       0-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Control               0       28    208
2       0-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Control               1       19    208
2       0-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   LNS                   0       97    208
2       0-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   LNS                   1       64    208
4       0-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Control               0       24    183
4       0-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Control               1       11    183
4       0-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   LNS                   0       94    183
4       0-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   LNS                   1       54    183
6       0-24 months   ki1119695-PROBIT            BELARUS                        Control               0      534   1188
6       0-24 months   ki1119695-PROBIT            BELARUS                        Control               1       79   1188
6       0-24 months   ki1119695-PROBIT            BELARUS                        Other                 0      524   1188
6       0-24 months   ki1119695-PROBIT            BELARUS                        Other                 1       51   1188
7       0-24 months   ki1119695-PROBIT            BELARUS                        Control               0      655   1552
7       0-24 months   ki1119695-PROBIT            BELARUS                        Control               1       86   1552
7       0-24 months   ki1119695-PROBIT            BELARUS                        Other                 0      733   1552
7       0-24 months   ki1119695-PROBIT            BELARUS                        Other                 1       78   1552
8       0-24 months   ki1119695-PROBIT            BELARUS                        Control               0      711   1600
8       0-24 months   ki1119695-PROBIT            BELARUS                        Control               1      101   1600
8       0-24 months   ki1119695-PROBIT            BELARUS                        Other                 0      707   1600
8       0-24 months   ki1119695-PROBIT            BELARUS                        Other                 1       81   1600
9       0-24 months   ki1119695-PROBIT            BELARUS                        Control               0      626   1583
9       0-24 months   ki1119695-PROBIT            BELARUS                        Control               1       96   1583
9       0-24 months   ki1119695-PROBIT            BELARUS                        Other                 0      756   1583
9       0-24 months   ki1119695-PROBIT            BELARUS                        Other                 1      105   1583
10      0-24 months   ki1119695-PROBIT            BELARUS                        Control               0      700   1810
10      0-24 months   ki1119695-PROBIT            BELARUS                        Control               1      120   1810
10      0-24 months   ki1119695-PROBIT            BELARUS                        Other                 0      876   1810
10      0-24 months   ki1119695-PROBIT            BELARUS                        Other                 1      114   1810
11      0-24 months   ki1119695-PROBIT            BELARUS                        Control               0      656   1703
11      0-24 months   ki1119695-PROBIT            BELARUS                        Control               1      105   1703
11      0-24 months   ki1119695-PROBIT            BELARUS                        Other                 0      820   1703
11      0-24 months   ki1119695-PROBIT            BELARUS                        Other                 1      122   1703
12      0-24 months   ki1119695-PROBIT            BELARUS                        Control               0      728   1827
12      0-24 months   ki1119695-PROBIT            BELARUS                        Control               1      122   1827
12      0-24 months   ki1119695-PROBIT            BELARUS                        Other                 0      868   1827
12      0-24 months   ki1119695-PROBIT            BELARUS                        Other                 1      109   1827
1       0-24 months   ki1119695-PROBIT            BELARUS                        Control               0      421   1048
1       0-24 months   ki1119695-PROBIT            BELARUS                        Control               1       87   1048
1       0-24 months   ki1119695-PROBIT            BELARUS                        Other                 0      450   1048
1       0-24 months   ki1119695-PROBIT            BELARUS                        Other                 1       90   1048
2       0-24 months   ki1119695-PROBIT            BELARUS                        Control               0      400    964
2       0-24 months   ki1119695-PROBIT            BELARUS                        Control               1       89    964
2       0-24 months   ki1119695-PROBIT            BELARUS                        Other                 0      404    964
2       0-24 months   ki1119695-PROBIT            BELARUS                        Other                 1       71    964
3       0-24 months   ki1119695-PROBIT            BELARUS                        Control               0      499   1161
3       0-24 months   ki1119695-PROBIT            BELARUS                        Control               1       91   1161
3       0-24 months   ki1119695-PROBIT            BELARUS                        Other                 0      499   1161
3       0-24 months   ki1119695-PROBIT            BELARUS                        Other                 1       72   1161
4       0-24 months   ki1119695-PROBIT            BELARUS                        Control               0      472   1137
4       0-24 months   ki1119695-PROBIT            BELARUS                        Control               1       67   1137
4       0-24 months   ki1119695-PROBIT            BELARUS                        Other                 0      525   1137
4       0-24 months   ki1119695-PROBIT            BELARUS                        Other                 1       73   1137
5       0-24 months   ki1119695-PROBIT            BELARUS                        Control               0      528   1162
5       0-24 months   ki1119695-PROBIT            BELARUS                        Control               1       70   1162
5       0-24 months   ki1119695-PROBIT            BELARUS                        Other                 0      508   1162
5       0-24 months   ki1119695-PROBIT            BELARUS                        Other                 1       56   1162
11      0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control               0      175    981
11      0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control               1       78    981
11      0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Other                 0      507    981
11      0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Other                 1      221    981
1       0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control               0      201   1175
1       0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control               1      102   1175
1       0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Other                 0      577   1175
1       0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Other                 1      295   1175
12      0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control               0      205   1105
12      0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control               1       74   1105
12      0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Other                 0      574   1105
12      0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Other                 1      252   1105
3       0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control               0      160    997
3       0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control               1       87    997
3       0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Other                 0      498    997
3       0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Other                 1      252    997
2       0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control               0      133    893
2       0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control               1       81    893
2       0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Other                 0      464    893
2       0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Other                 1      215    893
4       0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control               0      148    877
4       0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control               1       76    877
4       0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Other                 0      441    877
4       0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Other                 1      212    877
6       0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control               0      154    962
6       0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control               1       85    962
6       0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Other                 0      453    962
6       0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Other                 1      270    962
7       0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control               0      179    961
7       0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control               1       74    961
7       0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Other                 0      471    961
7       0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Other                 1      237    961
8       0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control               0      171   1017
8       0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control               1       82   1017
8       0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Other                 0      529   1017
8       0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Other                 1      235   1017
9       0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control               0      200   1091
9       0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control               1       75   1091
9       0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Other                 0      573   1091
9       0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Other                 1      243   1091
10      0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control               0      148    869
10      0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control               1       68    869
10      0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Other                 0      439    869
10      0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Other                 1      214    869
5       0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control               0      137    858
5       0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control               1       72    858
5       0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Other                 0      418    858
5       0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Other                 1      231    858
12      0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control               0       11    146
12      0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control               1       13    146
12      0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS                   0       57    146
12      0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS                   1       65    146
1       0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control               0       16    181
1       0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control               1       15    181
1       0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS                   0       74    181
1       0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS                   1       76    181
8       0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control               0       13    130
8       0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control               1       10    130
8       0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS                   0       47    130
8       0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS                   1       60    130
9       0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control               0       13    134
9       0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control               1       10    134
9       0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS                   0       57    134
9       0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS                   1       54    134
3       0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control               0       23    227
3       0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control               1       15    227
3       0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS                   0      108    227
3       0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS                   1       81    227
5       0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control               0       25    228
5       0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control               1       13    228
5       0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS                   0       89    228
5       0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS                   1      101    228
10      0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control               0        5     94
10      0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control               1        9     94
10      0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS                   0       40     94
10      0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS                   1       40     94
11      0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control               0        9    104
11      0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control               1       10    104
11      0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS                   0       48    104
11      0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS                   1       37    104
2       0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control               0       14    205
2       0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control               1       20    205
2       0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS                   0       93    205
2       0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS                   1       78    205
4       0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control               0       14    211
4       0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control               1       19    211
4       0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS                   0       86    211
4       0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS                   1       92    211
6       0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control               0        7    124
6       0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control               1       14    124
6       0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS                   0       57    124
6       0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS                   1       46    124
7       0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control               0       11    147
7       0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control               1       11    147
7       0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS                   0       61    147
7       0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS                   1       64    147
9       0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control               0       21    102
9       0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control               1       22    102
9       0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         LNS                   0       16    102
9       0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         LNS                   1       13    102
9       0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Other                 0       17    102
9       0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Other                 1       13    102
8       0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control               0       16     97
8       0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control               1       16     97
8       0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         LNS                   0       20     97
8       0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         LNS                   1       13     97
8       0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Other                 0       17     97
8       0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Other                 1       15     97
7       0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control               0       11     71
7       0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control               1        9     71
7       0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         LNS                   0       15     71
7       0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         LNS                   1       11     71
7       0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Other                 0       17     71
7       0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Other                 1        8     71
4       0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control               0       15     67
4       0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control               1       10     67
4       0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         LNS                   0       11     67
4       0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         LNS                   1        9     67
4       0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Other                 0       16     67
4       0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Other                 1        6     67
11      0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control               0       26    126
11      0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control               1       15    126
11      0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         LNS                   0       22    126
11      0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         LNS                   1       18    126
11      0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Other                 0       27    126
11      0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Other                 1       18    126
10      0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control               0       22    112
10      0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control               1       11    112
10      0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         LNS                   0       19    112
10      0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         LNS                   1       20    112
10      0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Other                 0       22    112
10      0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Other                 1       18    112
12      0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control               0       25    144
12      0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control               1       22    144
12      0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         LNS                   0       29    144
12      0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         LNS                   1       25    144
12      0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Other                 0       23    144
12      0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Other                 1       20    144
3       0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control               0       15     89
3       0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control               1        7     89
3       0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         LNS                   0       21     89
3       0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         LNS                   1       22     89
3       0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Other                 0       12     89
3       0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Other                 1       12     89
1       0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control               0       21    100
1       0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control               1       13    100
1       0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         LNS                   0       14    100
1       0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         LNS                   1       12    100
1       0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Other                 0       19    100
1       0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Other                 1       21    100
2       0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control               0       21     91
2       0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control               1       16     91
2       0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         LNS                   0       14     91
2       0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         LNS                   1       12     91
2       0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Other                 0       12     91
2       0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Other                 1       16     91
5       0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control               0       17     75
5       0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control               1        9     75
5       0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         LNS                   0       13     75
5       0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         LNS                   1       10     75
5       0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Other                 0       14     75
5       0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Other                 1       12     75
6       0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control               0       18     82
6       0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control               1       12     82
6       0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         LNS                   0       12     82
6       0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         LNS                   1       10     82
6       0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Other                 0       19     82
6       0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Other                 1       11     82
2       0-24 months   ki1148112-LCNI-5            MALAWI                         Control               0       28    115
2       0-24 months   ki1148112-LCNI-5            MALAWI                         Control               1       29    115
2       0-24 months   ki1148112-LCNI-5            MALAWI                         LNS                   0       28    115
2       0-24 months   ki1148112-LCNI-5            MALAWI                         LNS                   1       30    115
3       0-24 months   ki1148112-LCNI-5            MALAWI                         Control               0       18     98
3       0-24 months   ki1148112-LCNI-5            MALAWI                         Control               1       31     98
3       0-24 months   ki1148112-LCNI-5            MALAWI                         LNS                   0       22     98
3       0-24 months   ki1148112-LCNI-5            MALAWI                         LNS                   1       27     98
1       0-24 months   ki1148112-LCNI-5            MALAWI                         Control               0       13     56
1       0-24 months   ki1148112-LCNI-5            MALAWI                         Control               1       14     56
1       0-24 months   ki1148112-LCNI-5            MALAWI                         LNS                   0       13     56
1       0-24 months   ki1148112-LCNI-5            MALAWI                         LNS                   1       16     56
4       0-24 months   ki1148112-LCNI-5            MALAWI                         Control               0       23    111
4       0-24 months   ki1148112-LCNI-5            MALAWI                         Control               1       32    111
4       0-24 months   ki1148112-LCNI-5            MALAWI                         LNS                   0       16    111
4       0-24 months   ki1148112-LCNI-5            MALAWI                         LNS                   1       40    111
5       0-24 months   ki1148112-LCNI-5            MALAWI                         Control               0       21    109
5       0-24 months   ki1148112-LCNI-5            MALAWI                         Control               1       31    109
5       0-24 months   ki1148112-LCNI-5            MALAWI                         LNS                   0       21    109
5       0-24 months   ki1148112-LCNI-5            MALAWI                         LNS                   1       36    109
6       0-24 months   ki1148112-LCNI-5            MALAWI                         Control               0       18     91
6       0-24 months   ki1148112-LCNI-5            MALAWI                         Control               1       30     91
6       0-24 months   ki1148112-LCNI-5            MALAWI                         LNS                   0       20     91
6       0-24 months   ki1148112-LCNI-5            MALAWI                         LNS                   1       23     91
7       0-24 months   ki1148112-LCNI-5            MALAWI                         Control               0       15     72
7       0-24 months   ki1148112-LCNI-5            MALAWI                         Control               1       23     72
7       0-24 months   ki1148112-LCNI-5            MALAWI                         LNS                   0       11     72
7       0-24 months   ki1148112-LCNI-5            MALAWI                         LNS                   1       23     72
8       0-24 months   ki1148112-LCNI-5            MALAWI                         Control               0        8     43
8       0-24 months   ki1148112-LCNI-5            MALAWI                         Control               1       12     43
8       0-24 months   ki1148112-LCNI-5            MALAWI                         LNS                   0       15     43
8       0-24 months   ki1148112-LCNI-5            MALAWI                         LNS                   1        8     43
9       0-24 months   ki1148112-LCNI-5            MALAWI                         Control               0        6     27
9       0-24 months   ki1148112-LCNI-5            MALAWI                         Control               1        7     27
9       0-24 months   ki1148112-LCNI-5            MALAWI                         LNS                   0        8     27
9       0-24 months   ki1148112-LCNI-5            MALAWI                         LNS                   1        6     27
10      0-24 months   ki1148112-LCNI-5            MALAWI                         Control               0        9     35
10      0-24 months   ki1148112-LCNI-5            MALAWI                         Control               1        7     35
10      0-24 months   ki1148112-LCNI-5            MALAWI                         LNS                   0        8     35
10      0-24 months   ki1148112-LCNI-5            MALAWI                         LNS                   1       11     35
11      0-24 months   ki1148112-LCNI-5            MALAWI                         Control               0       14     49
11      0-24 months   ki1148112-LCNI-5            MALAWI                         Control               1       11     49
11      0-24 months   ki1148112-LCNI-5            MALAWI                         LNS                   0       12     49
11      0-24 months   ki1148112-LCNI-5            MALAWI                         LNS                   1       12     49
12      0-24 months   ki1148112-LCNI-5            MALAWI                         Control               0        7     34
12      0-24 months   ki1148112-LCNI-5            MALAWI                         Control               1       11     34
12      0-24 months   ki1148112-LCNI-5            MALAWI                         LNS                   0        5     34
12      0-24 months   ki1148112-LCNI-5            MALAWI                         LNS                   1       11     34
12      0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control               0      633   2294
12      0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control               1      480   2294
12      0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Other                 0      672   2294
12      0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Other                 1      509   2294
11      0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control               0      770   2837
11      0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control               1      647   2837
11      0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Other                 0      830   2837
11      0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Other                 1      590   2837
1       0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control               0      483   1744
1       0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control               1      378   1744
1       0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Other                 0      514   1744
1       0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Other                 1      369   1744
10      0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control               0      744   2732
10      0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control               1      591   2732
10      0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Other                 0      860   2732
10      0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Other                 1      537   2732
9       0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control               0      689   2281
9       0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control               1      471   2281
9       0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Other                 0      720   2281
9       0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Other                 1      401   2281
4       0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control               0      434   1452
4       0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control               1      276   1452
4       0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Other                 0      503   1452
4       0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Other                 1      239   1452
6       0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control               0      375   1304
6       0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control               1      281   1304
6       0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Other                 0      404   1304
6       0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Other                 1      244   1304
7       0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control               0      441   1430
7       0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control               1      262   1430
7       0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Other                 0      431   1430
7       0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Other                 1      296   1430
5       0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control               0      426   1323
5       0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control               1      251   1323
5       0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Other                 0      394   1323
5       0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Other                 1      252   1323
8       0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control               0      537   1763
8       0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control               1      348   1763
8       0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Other                 0      550   1763
8       0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Other                 1      328   1763
3       0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control               0      711   2278
3       0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control               1      409   2278
3       0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Other                 0      793   2278
3       0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Other                 1      365   2278
2       0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control               0      407   1495
2       0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control               1      304   1495
2       0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Other                 0      437   1495
2       0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Other                 1      347   1495
10      0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control               0       39    297
10      0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control               1       32    297
10      0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     LNS                   0       44    297
10      0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     LNS                   1       49    297
10      0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     MMN                   0       31    297
10      0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     MMN                   1       23    297
10      0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Other                 0       44    297
10      0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Other                 1       35    297
12      0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control               0       11     81
12      0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control               1       12     81
12      0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     LNS                   0        6     81
12      0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     LNS                   1       15     81
12      0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     MMN                   0        9     81
12      0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     MMN                   1        6     81
12      0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Other                 0       13     81
12      0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Other                 1        9     81
4       0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control               0      124    936
4       0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control               1      132    936
4       0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     LNS                   0      144    936
4       0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     LNS                   1      159    936
4       0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     MMN                   0       64    936
4       0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     MMN                   1       88    936
4       0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Other                 0      113    936
4       0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Other                 1      112    936
2       0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control               0       56    365
2       0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control               1       44    365
2       0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     LNS                   0       48    365
2       0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     LNS                   1       41    365
2       0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     MMN                   0       37    365
2       0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     MMN                   1       34    365
2       0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Other                 0       60    365
2       0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Other                 1       45    365
6       0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control               0       70    461
6       0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control               1       55    461
6       0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     LNS                   0       68    461
6       0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     LNS                   1       59    461
6       0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     MMN                   0       34    461
6       0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     MMN                   1       40    461
6       0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Other                 0       60    461
6       0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Other                 1       75    461
5       0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control               0       81    625
5       0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control               1       95    625
5       0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     LNS                   0       92    625
5       0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     LNS                   1      106    625
5       0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     MMN                   0       43    625
5       0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     MMN                   1       55    625
5       0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Other                 0       85    625
5       0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Other                 1       68    625
11      0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control               0       27    162
11      0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control               1       13    162
11      0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     LNS                   0       31    162
11      0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     LNS                   1       26    162
11      0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     MMN                   0        9    162
11      0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     MMN                   1       12    162
11      0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Other                 0       23    162
11      0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Other                 1       21    162
3       0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control               0       64    472
3       0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control               1       56    472
3       0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     LNS                   0       82    472
3       0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     LNS                   1       61    472
3       0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     MMN                   0       28    472
3       0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     MMN                   1       33    472
3       0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Other                 0       78    472
3       0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Other                 1       70    472
7       0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control               0      115    919
7       0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control               1      120    919
7       0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     LNS                   0      139    919
7       0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     LNS                   1      150    919
7       0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     MMN                   0       55    919
7       0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     MMN                   1       74    919
7       0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Other                 0      131    919
7       0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Other                 1      135    919
8       0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control               0       73    586
8       0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control               1       79    586
8       0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     LNS                   0      103    586
8       0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     LNS                   1       78    586
8       0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     MMN                   0       58    586
8       0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     MMN                   1       41    586
8       0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Other                 0       83    586
8       0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Other                 1       71    586
9       0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control               0       52    482
9       0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control               1       62    482
9       0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     LNS                   0       90    482
9       0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     LNS                   1       65    482
9       0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     MMN                   0       37    482
9       0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     MMN                   1       31    482
9       0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Other                 0       76    482
9       0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Other                 1       69    482
1       0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control               0       13     54
1       0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control               1        8     54
1       0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     LNS                   0        4     54
1       0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     LNS                   1        6     54
1       0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     MMN                   0        4     54
1       0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     MMN                   1        4     54
1       0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Other                 0        8     54
1       0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Other                 1        7     54


The following strata were considered:

* month: 1, agecat: 0-24 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* month: 1, agecat: 0-24 months, studyid: ki1000111-WASH-Kenya, country: KENYA
* month: 1, agecat: 0-24 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* month: 1, agecat: 0-24 months, studyid: ki1000304-EU, country: INDIA
* month: 1, agecat: 0-24 months, studyid: ki1000304-VITAMIN-A, country: INDIA
* month: 1, agecat: 0-24 months, studyid: ki1000304-Vitamin-B12, country: INDIA
* month: 1, agecat: 0-24 months, studyid: ki1000304-ZnMort, country: INDIA
* month: 1, agecat: 0-24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* month: 1, agecat: 0-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* month: 1, agecat: 0-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* month: 1, agecat: 0-24 months, studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO
* month: 1, agecat: 0-24 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* month: 1, agecat: 0-24 months, studyid: ki1112895-iLiNS-Zinc, country: BURKINA FASO
* month: 1, agecat: 0-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* month: 1, agecat: 0-24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* month: 1, agecat: 0-24 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* month: 1, agecat: 0-24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* month: 1, agecat: 0-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* month: 1, agecat: 0-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* month: 1, agecat: 0-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* month: 1, agecat: 0-6 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* month: 1, agecat: 0-6 months, studyid: ki1000111-WASH-Kenya, country: KENYA
* month: 1, agecat: 0-6 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* month: 1, agecat: 0-6 months, studyid: ki1000304-VITAMIN-A, country: INDIA
* month: 1, agecat: 0-6 months, studyid: ki1000304-ZnMort, country: INDIA
* month: 1, agecat: 0-6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* month: 1, agecat: 0-6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* month: 1, agecat: 0-6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* month: 1, agecat: 0-6 months, studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO
* month: 1, agecat: 0-6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* month: 1, agecat: 0-6 months, studyid: ki1119695-PROBIT, country: BELARUS
* month: 1, agecat: 0-6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* month: 1, agecat: 0-6 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* month: 1, agecat: 0-6 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* month: 1, agecat: 0-6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* month: 1, agecat: 0-6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* month: 1, agecat: 0-6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* month: 1, agecat: 6-24 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* month: 1, agecat: 6-24 months, studyid: ki1000111-WASH-Kenya, country: KENYA
* month: 1, agecat: 6-24 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* month: 1, agecat: 6-24 months, studyid: ki1000304-EU, country: INDIA
* month: 1, agecat: 6-24 months, studyid: ki1000304-VITAMIN-A, country: INDIA
* month: 1, agecat: 6-24 months, studyid: ki1000304-Vitamin-B12, country: INDIA
* month: 1, agecat: 6-24 months, studyid: ki1000304-ZnMort, country: INDIA
* month: 1, agecat: 6-24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* month: 1, agecat: 6-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* month: 1, agecat: 6-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* month: 1, agecat: 6-24 months, studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO
* month: 1, agecat: 6-24 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* month: 1, agecat: 6-24 months, studyid: ki1112895-iLiNS-Zinc, country: BURKINA FASO
* month: 1, agecat: 6-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* month: 1, agecat: 6-24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* month: 1, agecat: 6-24 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* month: 1, agecat: 6-24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* month: 1, agecat: 6-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* month: 1, agecat: 6-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* month: 1, agecat: 6-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* month: 10, agecat: 0-24 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* month: 10, agecat: 0-24 months, studyid: ki1000111-WASH-Kenya, country: KENYA
* month: 10, agecat: 0-24 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* month: 10, agecat: 0-24 months, studyid: ki1000304-EU, country: INDIA
* month: 10, agecat: 0-24 months, studyid: ki1000304-VITAMIN-A, country: INDIA
* month: 10, agecat: 0-24 months, studyid: ki1000304-Vitamin-B12, country: INDIA
* month: 10, agecat: 0-24 months, studyid: ki1000304-ZnMort, country: INDIA
* month: 10, agecat: 0-24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* month: 10, agecat: 0-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* month: 10, agecat: 0-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* month: 10, agecat: 0-24 months, studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO
* month: 10, agecat: 0-24 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* month: 10, agecat: 0-24 months, studyid: ki1112895-iLiNS-Zinc, country: BURKINA FASO
* month: 10, agecat: 0-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* month: 10, agecat: 0-24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* month: 10, agecat: 0-24 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* month: 10, agecat: 0-24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* month: 10, agecat: 0-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* month: 10, agecat: 0-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* month: 10, agecat: 0-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* month: 10, agecat: 0-6 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* month: 10, agecat: 0-6 months, studyid: ki1000111-WASH-Kenya, country: KENYA
* month: 10, agecat: 0-6 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* month: 10, agecat: 0-6 months, studyid: ki1000304-VITAMIN-A, country: INDIA
* month: 10, agecat: 0-6 months, studyid: ki1000304-ZnMort, country: INDIA
* month: 10, agecat: 0-6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* month: 10, agecat: 0-6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* month: 10, agecat: 0-6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* month: 10, agecat: 0-6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* month: 10, agecat: 0-6 months, studyid: ki1119695-PROBIT, country: BELARUS
* month: 10, agecat: 0-6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* month: 10, agecat: 0-6 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* month: 10, agecat: 0-6 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* month: 10, agecat: 0-6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* month: 10, agecat: 0-6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* month: 10, agecat: 0-6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* month: 10, agecat: 6-24 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* month: 10, agecat: 6-24 months, studyid: ki1000111-WASH-Kenya, country: KENYA
* month: 10, agecat: 6-24 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* month: 10, agecat: 6-24 months, studyid: ki1000304-EU, country: INDIA
* month: 10, agecat: 6-24 months, studyid: ki1000304-VITAMIN-A, country: INDIA
* month: 10, agecat: 6-24 months, studyid: ki1000304-Vitamin-B12, country: INDIA
* month: 10, agecat: 6-24 months, studyid: ki1000304-ZnMort, country: INDIA
* month: 10, agecat: 6-24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* month: 10, agecat: 6-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* month: 10, agecat: 6-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* month: 10, agecat: 6-24 months, studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO
* month: 10, agecat: 6-24 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* month: 10, agecat: 6-24 months, studyid: ki1112895-iLiNS-Zinc, country: BURKINA FASO
* month: 10, agecat: 6-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* month: 10, agecat: 6-24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* month: 10, agecat: 6-24 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* month: 10, agecat: 6-24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* month: 10, agecat: 6-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* month: 10, agecat: 6-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* month: 10, agecat: 6-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* month: 11, agecat: 0-24 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* month: 11, agecat: 0-24 months, studyid: ki1000111-WASH-Kenya, country: KENYA
* month: 11, agecat: 0-24 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* month: 11, agecat: 0-24 months, studyid: ki1000304-EU, country: INDIA
* month: 11, agecat: 0-24 months, studyid: ki1000304-VITAMIN-A, country: INDIA
* month: 11, agecat: 0-24 months, studyid: ki1000304-Vitamin-B12, country: INDIA
* month: 11, agecat: 0-24 months, studyid: ki1000304-ZnMort, country: INDIA
* month: 11, agecat: 0-24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* month: 11, agecat: 0-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* month: 11, agecat: 0-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* month: 11, agecat: 0-24 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* month: 11, agecat: 0-24 months, studyid: ki1112895-iLiNS-Zinc, country: BURKINA FASO
* month: 11, agecat: 0-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* month: 11, agecat: 0-24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* month: 11, agecat: 0-24 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* month: 11, agecat: 0-24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* month: 11, agecat: 0-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* month: 11, agecat: 0-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* month: 11, agecat: 0-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* month: 11, agecat: 0-6 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* month: 11, agecat: 0-6 months, studyid: ki1000111-WASH-Kenya, country: KENYA
* month: 11, agecat: 0-6 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* month: 11, agecat: 0-6 months, studyid: ki1000304-VITAMIN-A, country: INDIA
* month: 11, agecat: 0-6 months, studyid: ki1000304-ZnMort, country: INDIA
* month: 11, agecat: 0-6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* month: 11, agecat: 0-6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* month: 11, agecat: 0-6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* month: 11, agecat: 0-6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* month: 11, agecat: 0-6 months, studyid: ki1119695-PROBIT, country: BELARUS
* month: 11, agecat: 0-6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* month: 11, agecat: 0-6 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* month: 11, agecat: 0-6 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* month: 11, agecat: 0-6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* month: 11, agecat: 0-6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* month: 11, agecat: 0-6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* month: 11, agecat: 6-24 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* month: 11, agecat: 6-24 months, studyid: ki1000111-WASH-Kenya, country: KENYA
* month: 11, agecat: 6-24 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* month: 11, agecat: 6-24 months, studyid: ki1000304-EU, country: INDIA
* month: 11, agecat: 6-24 months, studyid: ki1000304-VITAMIN-A, country: INDIA
* month: 11, agecat: 6-24 months, studyid: ki1000304-Vitamin-B12, country: INDIA
* month: 11, agecat: 6-24 months, studyid: ki1000304-ZnMort, country: INDIA
* month: 11, agecat: 6-24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* month: 11, agecat: 6-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* month: 11, agecat: 6-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* month: 11, agecat: 6-24 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* month: 11, agecat: 6-24 months, studyid: ki1112895-iLiNS-Zinc, country: BURKINA FASO
* month: 11, agecat: 6-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* month: 11, agecat: 6-24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* month: 11, agecat: 6-24 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* month: 11, agecat: 6-24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* month: 11, agecat: 6-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* month: 11, agecat: 6-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* month: 11, agecat: 6-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* month: 12, agecat: 0-24 months, studyid: ki1000107-Serrinha-VitA, country: BRAZIL
* month: 12, agecat: 0-24 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* month: 12, agecat: 0-24 months, studyid: ki1000111-WASH-Kenya, country: KENYA
* month: 12, agecat: 0-24 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* month: 12, agecat: 0-24 months, studyid: ki1000304-EU, country: INDIA
* month: 12, agecat: 0-24 months, studyid: ki1000304-VITAMIN-A, country: INDIA
* month: 12, agecat: 0-24 months, studyid: ki1000304-Vitamin-B12, country: INDIA
* month: 12, agecat: 0-24 months, studyid: ki1000304-ZnMort, country: INDIA
* month: 12, agecat: 0-24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* month: 12, agecat: 0-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* month: 12, agecat: 0-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* month: 12, agecat: 0-24 months, studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO
* month: 12, agecat: 0-24 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* month: 12, agecat: 0-24 months, studyid: ki1112895-iLiNS-Zinc, country: BURKINA FASO
* month: 12, agecat: 0-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* month: 12, agecat: 0-24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* month: 12, agecat: 0-24 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* month: 12, agecat: 0-24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* month: 12, agecat: 0-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* month: 12, agecat: 0-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* month: 12, agecat: 0-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* month: 12, agecat: 0-6 months, studyid: ki1000107-Serrinha-VitA, country: BRAZIL
* month: 12, agecat: 0-6 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* month: 12, agecat: 0-6 months, studyid: ki1000111-WASH-Kenya, country: KENYA
* month: 12, agecat: 0-6 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* month: 12, agecat: 0-6 months, studyid: ki1000304-VITAMIN-A, country: INDIA
* month: 12, agecat: 0-6 months, studyid: ki1000304-ZnMort, country: INDIA
* month: 12, agecat: 0-6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* month: 12, agecat: 0-6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* month: 12, agecat: 0-6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* month: 12, agecat: 0-6 months, studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO
* month: 12, agecat: 0-6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* month: 12, agecat: 0-6 months, studyid: ki1119695-PROBIT, country: BELARUS
* month: 12, agecat: 0-6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* month: 12, agecat: 0-6 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* month: 12, agecat: 0-6 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* month: 12, agecat: 0-6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* month: 12, agecat: 0-6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* month: 12, agecat: 0-6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* month: 12, agecat: 6-24 months, studyid: ki1000107-Serrinha-VitA, country: BRAZIL
* month: 12, agecat: 6-24 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* month: 12, agecat: 6-24 months, studyid: ki1000111-WASH-Kenya, country: KENYA
* month: 12, agecat: 6-24 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* month: 12, agecat: 6-24 months, studyid: ki1000304-EU, country: INDIA
* month: 12, agecat: 6-24 months, studyid: ki1000304-VITAMIN-A, country: INDIA
* month: 12, agecat: 6-24 months, studyid: ki1000304-Vitamin-B12, country: INDIA
* month: 12, agecat: 6-24 months, studyid: ki1000304-ZnMort, country: INDIA
* month: 12, agecat: 6-24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* month: 12, agecat: 6-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* month: 12, agecat: 6-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* month: 12, agecat: 6-24 months, studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO
* month: 12, agecat: 6-24 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* month: 12, agecat: 6-24 months, studyid: ki1112895-iLiNS-Zinc, country: BURKINA FASO
* month: 12, agecat: 6-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* month: 12, agecat: 6-24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* month: 12, agecat: 6-24 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* month: 12, agecat: 6-24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* month: 12, agecat: 6-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* month: 12, agecat: 6-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* month: 12, agecat: 6-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* month: 2, agecat: 0-24 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* month: 2, agecat: 0-24 months, studyid: ki1000111-WASH-Kenya, country: KENYA
* month: 2, agecat: 0-24 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* month: 2, agecat: 0-24 months, studyid: ki1000304-EU, country: INDIA
* month: 2, agecat: 0-24 months, studyid: ki1000304-VITAMIN-A, country: INDIA
* month: 2, agecat: 0-24 months, studyid: ki1000304-Vitamin-B12, country: INDIA
* month: 2, agecat: 0-24 months, studyid: ki1000304-ZnMort, country: INDIA
* month: 2, agecat: 0-24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* month: 2, agecat: 0-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* month: 2, agecat: 0-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* month: 2, agecat: 0-24 months, studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO
* month: 2, agecat: 0-24 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* month: 2, agecat: 0-24 months, studyid: ki1112895-iLiNS-Zinc, country: BURKINA FASO
* month: 2, agecat: 0-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* month: 2, agecat: 0-24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* month: 2, agecat: 0-24 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* month: 2, agecat: 0-24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* month: 2, agecat: 0-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* month: 2, agecat: 0-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* month: 2, agecat: 0-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* month: 2, agecat: 0-6 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* month: 2, agecat: 0-6 months, studyid: ki1000111-WASH-Kenya, country: KENYA
* month: 2, agecat: 0-6 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* month: 2, agecat: 0-6 months, studyid: ki1000304-VITAMIN-A, country: INDIA
* month: 2, agecat: 0-6 months, studyid: ki1000304-ZnMort, country: INDIA
* month: 2, agecat: 0-6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* month: 2, agecat: 0-6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* month: 2, agecat: 0-6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* month: 2, agecat: 0-6 months, studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO
* month: 2, agecat: 0-6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* month: 2, agecat: 0-6 months, studyid: ki1119695-PROBIT, country: BELARUS
* month: 2, agecat: 0-6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* month: 2, agecat: 0-6 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* month: 2, agecat: 0-6 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* month: 2, agecat: 0-6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* month: 2, agecat: 0-6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* month: 2, agecat: 0-6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* month: 2, agecat: 6-24 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* month: 2, agecat: 6-24 months, studyid: ki1000111-WASH-Kenya, country: KENYA
* month: 2, agecat: 6-24 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* month: 2, agecat: 6-24 months, studyid: ki1000304-EU, country: INDIA
* month: 2, agecat: 6-24 months, studyid: ki1000304-VITAMIN-A, country: INDIA
* month: 2, agecat: 6-24 months, studyid: ki1000304-Vitamin-B12, country: INDIA
* month: 2, agecat: 6-24 months, studyid: ki1000304-ZnMort, country: INDIA
* month: 2, agecat: 6-24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* month: 2, agecat: 6-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* month: 2, agecat: 6-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* month: 2, agecat: 6-24 months, studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO
* month: 2, agecat: 6-24 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* month: 2, agecat: 6-24 months, studyid: ki1112895-iLiNS-Zinc, country: BURKINA FASO
* month: 2, agecat: 6-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* month: 2, agecat: 6-24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* month: 2, agecat: 6-24 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* month: 2, agecat: 6-24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* month: 2, agecat: 6-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* month: 2, agecat: 6-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* month: 2, agecat: 6-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* month: 3, agecat: 0-24 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* month: 3, agecat: 0-24 months, studyid: ki1000111-WASH-Kenya, country: KENYA
* month: 3, agecat: 0-24 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* month: 3, agecat: 0-24 months, studyid: ki1000304-EU, country: INDIA
* month: 3, agecat: 0-24 months, studyid: ki1000304-VITAMIN-A, country: INDIA
* month: 3, agecat: 0-24 months, studyid: ki1000304-ZnMort, country: INDIA
* month: 3, agecat: 0-24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* month: 3, agecat: 0-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* month: 3, agecat: 0-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* month: 3, agecat: 0-24 months, studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO
* month: 3, agecat: 0-24 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* month: 3, agecat: 0-24 months, studyid: ki1112895-iLiNS-Zinc, country: BURKINA FASO
* month: 3, agecat: 0-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* month: 3, agecat: 0-24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* month: 3, agecat: 0-24 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* month: 3, agecat: 0-24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* month: 3, agecat: 0-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* month: 3, agecat: 0-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* month: 3, agecat: 0-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* month: 3, agecat: 0-6 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* month: 3, agecat: 0-6 months, studyid: ki1000111-WASH-Kenya, country: KENYA
* month: 3, agecat: 0-6 months, studyid: ki1000304-EU, country: INDIA
* month: 3, agecat: 0-6 months, studyid: ki1000304-VITAMIN-A, country: INDIA
* month: 3, agecat: 0-6 months, studyid: ki1000304-ZnMort, country: INDIA
* month: 3, agecat: 0-6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* month: 3, agecat: 0-6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* month: 3, agecat: 0-6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* month: 3, agecat: 0-6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* month: 3, agecat: 0-6 months, studyid: ki1119695-PROBIT, country: BELARUS
* month: 3, agecat: 0-6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* month: 3, agecat: 0-6 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* month: 3, agecat: 0-6 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* month: 3, agecat: 0-6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* month: 3, agecat: 0-6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* month: 3, agecat: 0-6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* month: 3, agecat: 6-24 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* month: 3, agecat: 6-24 months, studyid: ki1000111-WASH-Kenya, country: KENYA
* month: 3, agecat: 6-24 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* month: 3, agecat: 6-24 months, studyid: ki1000304-EU, country: INDIA
* month: 3, agecat: 6-24 months, studyid: ki1000304-VITAMIN-A, country: INDIA
* month: 3, agecat: 6-24 months, studyid: ki1000304-ZnMort, country: INDIA
* month: 3, agecat: 6-24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* month: 3, agecat: 6-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* month: 3, agecat: 6-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* month: 3, agecat: 6-24 months, studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO
* month: 3, agecat: 6-24 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* month: 3, agecat: 6-24 months, studyid: ki1112895-iLiNS-Zinc, country: BURKINA FASO
* month: 3, agecat: 6-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* month: 3, agecat: 6-24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* month: 3, agecat: 6-24 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* month: 3, agecat: 6-24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* month: 3, agecat: 6-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* month: 3, agecat: 6-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* month: 3, agecat: 6-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* month: 4, agecat: 0-24 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* month: 4, agecat: 0-24 months, studyid: ki1000111-WASH-Kenya, country: KENYA
* month: 4, agecat: 0-24 months, studyid: ki1000304-EU, country: INDIA
* month: 4, agecat: 0-24 months, studyid: ki1000304-VITAMIN-A, country: INDIA
* month: 4, agecat: 0-24 months, studyid: ki1000304-ZnMort, country: INDIA
* month: 4, agecat: 0-24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* month: 4, agecat: 0-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* month: 4, agecat: 0-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* month: 4, agecat: 0-24 months, studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO
* month: 4, agecat: 0-24 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* month: 4, agecat: 0-24 months, studyid: ki1112895-iLiNS-Zinc, country: BURKINA FASO
* month: 4, agecat: 0-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* month: 4, agecat: 0-24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* month: 4, agecat: 0-24 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* month: 4, agecat: 0-24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* month: 4, agecat: 0-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* month: 4, agecat: 0-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* month: 4, agecat: 0-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* month: 4, agecat: 0-6 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* month: 4, agecat: 0-6 months, studyid: ki1000111-WASH-Kenya, country: KENYA
* month: 4, agecat: 0-6 months, studyid: ki1000304-VITAMIN-A, country: INDIA
* month: 4, agecat: 0-6 months, studyid: ki1000304-ZnMort, country: INDIA
* month: 4, agecat: 0-6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* month: 4, agecat: 0-6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* month: 4, agecat: 0-6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* month: 4, agecat: 0-6 months, studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO
* month: 4, agecat: 0-6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* month: 4, agecat: 0-6 months, studyid: ki1119695-PROBIT, country: BELARUS
* month: 4, agecat: 0-6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* month: 4, agecat: 0-6 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* month: 4, agecat: 0-6 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* month: 4, agecat: 0-6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* month: 4, agecat: 0-6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* month: 4, agecat: 0-6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* month: 4, agecat: 6-24 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* month: 4, agecat: 6-24 months, studyid: ki1000111-WASH-Kenya, country: KENYA
* month: 4, agecat: 6-24 months, studyid: ki1000304-EU, country: INDIA
* month: 4, agecat: 6-24 months, studyid: ki1000304-VITAMIN-A, country: INDIA
* month: 4, agecat: 6-24 months, studyid: ki1000304-ZnMort, country: INDIA
* month: 4, agecat: 6-24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* month: 4, agecat: 6-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* month: 4, agecat: 6-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* month: 4, agecat: 6-24 months, studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO
* month: 4, agecat: 6-24 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* month: 4, agecat: 6-24 months, studyid: ki1112895-iLiNS-Zinc, country: BURKINA FASO
* month: 4, agecat: 6-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* month: 4, agecat: 6-24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* month: 4, agecat: 6-24 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* month: 4, agecat: 6-24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* month: 4, agecat: 6-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* month: 4, agecat: 6-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* month: 4, agecat: 6-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* month: 5, agecat: 0-24 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* month: 5, agecat: 0-24 months, studyid: ki1000111-WASH-Kenya, country: KENYA
* month: 5, agecat: 0-24 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* month: 5, agecat: 0-24 months, studyid: ki1000304-EU, country: INDIA
* month: 5, agecat: 0-24 months, studyid: ki1000304-VITAMIN-A, country: INDIA
* month: 5, agecat: 0-24 months, studyid: ki1000304-Vitamin-B12, country: INDIA
* month: 5, agecat: 0-24 months, studyid: ki1000304-ZnMort, country: INDIA
* month: 5, agecat: 0-24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* month: 5, agecat: 0-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* month: 5, agecat: 0-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* month: 5, agecat: 0-24 months, studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO
* month: 5, agecat: 0-24 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* month: 5, agecat: 0-24 months, studyid: ki1112895-iLiNS-Zinc, country: BURKINA FASO
* month: 5, agecat: 0-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* month: 5, agecat: 0-24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* month: 5, agecat: 0-24 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* month: 5, agecat: 0-24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* month: 5, agecat: 0-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* month: 5, agecat: 0-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* month: 5, agecat: 0-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* month: 5, agecat: 0-6 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* month: 5, agecat: 0-6 months, studyid: ki1000111-WASH-Kenya, country: KENYA
* month: 5, agecat: 0-6 months, studyid: ki1000304-EU, country: INDIA
* month: 5, agecat: 0-6 months, studyid: ki1000304-VITAMIN-A, country: INDIA
* month: 5, agecat: 0-6 months, studyid: ki1000304-ZnMort, country: INDIA
* month: 5, agecat: 0-6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* month: 5, agecat: 0-6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* month: 5, agecat: 0-6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* month: 5, agecat: 0-6 months, studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO
* month: 5, agecat: 0-6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* month: 5, agecat: 0-6 months, studyid: ki1119695-PROBIT, country: BELARUS
* month: 5, agecat: 0-6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* month: 5, agecat: 0-6 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* month: 5, agecat: 0-6 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* month: 5, agecat: 0-6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* month: 5, agecat: 0-6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* month: 5, agecat: 0-6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* month: 5, agecat: 6-24 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* month: 5, agecat: 6-24 months, studyid: ki1000111-WASH-Kenya, country: KENYA
* month: 5, agecat: 6-24 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* month: 5, agecat: 6-24 months, studyid: ki1000304-EU, country: INDIA
* month: 5, agecat: 6-24 months, studyid: ki1000304-VITAMIN-A, country: INDIA
* month: 5, agecat: 6-24 months, studyid: ki1000304-Vitamin-B12, country: INDIA
* month: 5, agecat: 6-24 months, studyid: ki1000304-ZnMort, country: INDIA
* month: 5, agecat: 6-24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* month: 5, agecat: 6-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* month: 5, agecat: 6-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* month: 5, agecat: 6-24 months, studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO
* month: 5, agecat: 6-24 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* month: 5, agecat: 6-24 months, studyid: ki1112895-iLiNS-Zinc, country: BURKINA FASO
* month: 5, agecat: 6-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* month: 5, agecat: 6-24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* month: 5, agecat: 6-24 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* month: 5, agecat: 6-24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* month: 5, agecat: 6-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* month: 5, agecat: 6-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* month: 5, agecat: 6-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* month: 6, agecat: 0-24 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* month: 6, agecat: 0-24 months, studyid: ki1000111-WASH-Kenya, country: KENYA
* month: 6, agecat: 0-24 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* month: 6, agecat: 0-24 months, studyid: ki1000304-EU, country: INDIA
* month: 6, agecat: 0-24 months, studyid: ki1000304-VITAMIN-A, country: INDIA
* month: 6, agecat: 0-24 months, studyid: ki1000304-Vitamin-B12, country: INDIA
* month: 6, agecat: 0-24 months, studyid: ki1000304-ZnMort, country: INDIA
* month: 6, agecat: 0-24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* month: 6, agecat: 0-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* month: 6, agecat: 0-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* month: 6, agecat: 0-24 months, studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO
* month: 6, agecat: 0-24 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* month: 6, agecat: 0-24 months, studyid: ki1112895-iLiNS-Zinc, country: BURKINA FASO
* month: 6, agecat: 0-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* month: 6, agecat: 0-24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* month: 6, agecat: 0-24 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* month: 6, agecat: 0-24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* month: 6, agecat: 0-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* month: 6, agecat: 0-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* month: 6, agecat: 0-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* month: 6, agecat: 0-6 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* month: 6, agecat: 0-6 months, studyid: ki1000111-WASH-Kenya, country: KENYA
* month: 6, agecat: 0-6 months, studyid: ki1000304-VITAMIN-A, country: INDIA
* month: 6, agecat: 0-6 months, studyid: ki1000304-ZnMort, country: INDIA
* month: 6, agecat: 0-6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* month: 6, agecat: 0-6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* month: 6, agecat: 0-6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* month: 6, agecat: 0-6 months, studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO
* month: 6, agecat: 0-6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* month: 6, agecat: 0-6 months, studyid: ki1119695-PROBIT, country: BELARUS
* month: 6, agecat: 0-6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* month: 6, agecat: 0-6 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* month: 6, agecat: 0-6 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* month: 6, agecat: 0-6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* month: 6, agecat: 0-6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* month: 6, agecat: 0-6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* month: 6, agecat: 6-24 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* month: 6, agecat: 6-24 months, studyid: ki1000111-WASH-Kenya, country: KENYA
* month: 6, agecat: 6-24 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* month: 6, agecat: 6-24 months, studyid: ki1000304-EU, country: INDIA
* month: 6, agecat: 6-24 months, studyid: ki1000304-VITAMIN-A, country: INDIA
* month: 6, agecat: 6-24 months, studyid: ki1000304-Vitamin-B12, country: INDIA
* month: 6, agecat: 6-24 months, studyid: ki1000304-ZnMort, country: INDIA
* month: 6, agecat: 6-24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* month: 6, agecat: 6-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* month: 6, agecat: 6-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* month: 6, agecat: 6-24 months, studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO
* month: 6, agecat: 6-24 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* month: 6, agecat: 6-24 months, studyid: ki1112895-iLiNS-Zinc, country: BURKINA FASO
* month: 6, agecat: 6-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* month: 6, agecat: 6-24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* month: 6, agecat: 6-24 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* month: 6, agecat: 6-24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* month: 6, agecat: 6-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* month: 6, agecat: 6-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* month: 6, agecat: 6-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* month: 7, agecat: 0-24 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* month: 7, agecat: 0-24 months, studyid: ki1000111-WASH-Kenya, country: KENYA
* month: 7, agecat: 0-24 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* month: 7, agecat: 0-24 months, studyid: ki1000304-EU, country: INDIA
* month: 7, agecat: 0-24 months, studyid: ki1000304-VITAMIN-A, country: INDIA
* month: 7, agecat: 0-24 months, studyid: ki1000304-Vitamin-B12, country: INDIA
* month: 7, agecat: 0-24 months, studyid: ki1000304-ZnMort, country: INDIA
* month: 7, agecat: 0-24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* month: 7, agecat: 0-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* month: 7, agecat: 0-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* month: 7, agecat: 0-24 months, studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO
* month: 7, agecat: 0-24 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* month: 7, agecat: 0-24 months, studyid: ki1112895-iLiNS-Zinc, country: BURKINA FASO
* month: 7, agecat: 0-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* month: 7, agecat: 0-24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* month: 7, agecat: 0-24 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* month: 7, agecat: 0-24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* month: 7, agecat: 0-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* month: 7, agecat: 0-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* month: 7, agecat: 0-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* month: 7, agecat: 0-6 months, studyid: ki1000111-WASH-Kenya, country: KENYA
* month: 7, agecat: 0-6 months, studyid: ki1000304-EU, country: INDIA
* month: 7, agecat: 0-6 months, studyid: ki1000304-VITAMIN-A, country: INDIA
* month: 7, agecat: 0-6 months, studyid: ki1000304-Vitamin-B12, country: INDIA
* month: 7, agecat: 0-6 months, studyid: ki1000304-ZnMort, country: INDIA
* month: 7, agecat: 0-6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* month: 7, agecat: 0-6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* month: 7, agecat: 0-6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* month: 7, agecat: 0-6 months, studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO
* month: 7, agecat: 0-6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* month: 7, agecat: 0-6 months, studyid: ki1119695-PROBIT, country: BELARUS
* month: 7, agecat: 0-6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* month: 7, agecat: 0-6 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* month: 7, agecat: 0-6 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* month: 7, agecat: 0-6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* month: 7, agecat: 0-6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* month: 7, agecat: 0-6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* month: 7, agecat: 6-24 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* month: 7, agecat: 6-24 months, studyid: ki1000111-WASH-Kenya, country: KENYA
* month: 7, agecat: 6-24 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* month: 7, agecat: 6-24 months, studyid: ki1000304-EU, country: INDIA
* month: 7, agecat: 6-24 months, studyid: ki1000304-VITAMIN-A, country: INDIA
* month: 7, agecat: 6-24 months, studyid: ki1000304-Vitamin-B12, country: INDIA
* month: 7, agecat: 6-24 months, studyid: ki1000304-ZnMort, country: INDIA
* month: 7, agecat: 6-24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* month: 7, agecat: 6-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* month: 7, agecat: 6-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* month: 7, agecat: 6-24 months, studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO
* month: 7, agecat: 6-24 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* month: 7, agecat: 6-24 months, studyid: ki1112895-iLiNS-Zinc, country: BURKINA FASO
* month: 7, agecat: 6-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* month: 7, agecat: 6-24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* month: 7, agecat: 6-24 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* month: 7, agecat: 6-24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* month: 7, agecat: 6-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* month: 7, agecat: 6-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* month: 7, agecat: 6-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* month: 8, agecat: 0-24 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* month: 8, agecat: 0-24 months, studyid: ki1000111-WASH-Kenya, country: KENYA
* month: 8, agecat: 0-24 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* month: 8, agecat: 0-24 months, studyid: ki1000304-EU, country: INDIA
* month: 8, agecat: 0-24 months, studyid: ki1000304-VITAMIN-A, country: INDIA
* month: 8, agecat: 0-24 months, studyid: ki1000304-Vitamin-B12, country: INDIA
* month: 8, agecat: 0-24 months, studyid: ki1000304-ZnMort, country: INDIA
* month: 8, agecat: 0-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* month: 8, agecat: 0-24 months, studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO
* month: 8, agecat: 0-24 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* month: 8, agecat: 0-24 months, studyid: ki1112895-iLiNS-Zinc, country: BURKINA FASO
* month: 8, agecat: 0-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* month: 8, agecat: 0-24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* month: 8, agecat: 0-24 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* month: 8, agecat: 0-24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* month: 8, agecat: 0-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* month: 8, agecat: 0-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* month: 8, agecat: 0-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* month: 8, agecat: 0-6 months, studyid: ki1000304-EU, country: INDIA
* month: 8, agecat: 0-6 months, studyid: ki1000304-VITAMIN-A, country: INDIA
* month: 8, agecat: 0-6 months, studyid: ki1000304-ZnMort, country: INDIA
* month: 8, agecat: 0-6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* month: 8, agecat: 0-6 months, studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO
* month: 8, agecat: 0-6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* month: 8, agecat: 0-6 months, studyid: ki1119695-PROBIT, country: BELARUS
* month: 8, agecat: 0-6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* month: 8, agecat: 0-6 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* month: 8, agecat: 0-6 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* month: 8, agecat: 0-6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* month: 8, agecat: 0-6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* month: 8, agecat: 0-6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* month: 8, agecat: 6-24 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* month: 8, agecat: 6-24 months, studyid: ki1000111-WASH-Kenya, country: KENYA
* month: 8, agecat: 6-24 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* month: 8, agecat: 6-24 months, studyid: ki1000304-EU, country: INDIA
* month: 8, agecat: 6-24 months, studyid: ki1000304-VITAMIN-A, country: INDIA
* month: 8, agecat: 6-24 months, studyid: ki1000304-Vitamin-B12, country: INDIA
* month: 8, agecat: 6-24 months, studyid: ki1000304-ZnMort, country: INDIA
* month: 8, agecat: 6-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* month: 8, agecat: 6-24 months, studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO
* month: 8, agecat: 6-24 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* month: 8, agecat: 6-24 months, studyid: ki1112895-iLiNS-Zinc, country: BURKINA FASO
* month: 8, agecat: 6-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* month: 8, agecat: 6-24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* month: 8, agecat: 6-24 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* month: 8, agecat: 6-24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* month: 8, agecat: 6-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* month: 8, agecat: 6-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* month: 8, agecat: 6-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* month: 9, agecat: 0-24 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* month: 9, agecat: 0-24 months, studyid: ki1000111-WASH-Kenya, country: KENYA
* month: 9, agecat: 0-24 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* month: 9, agecat: 0-24 months, studyid: ki1000304-EU, country: INDIA
* month: 9, agecat: 0-24 months, studyid: ki1000304-VITAMIN-A, country: INDIA
* month: 9, agecat: 0-24 months, studyid: ki1000304-Vitamin-B12, country: INDIA
* month: 9, agecat: 0-24 months, studyid: ki1000304-ZnMort, country: INDIA
* month: 9, agecat: 0-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* month: 9, agecat: 0-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* month: 9, agecat: 0-24 months, studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO
* month: 9, agecat: 0-24 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* month: 9, agecat: 0-24 months, studyid: ki1112895-iLiNS-Zinc, country: BURKINA FASO
* month: 9, agecat: 0-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* month: 9, agecat: 0-24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* month: 9, agecat: 0-24 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* month: 9, agecat: 0-24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* month: 9, agecat: 0-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* month: 9, agecat: 0-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* month: 9, agecat: 0-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* month: 9, agecat: 0-6 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* month: 9, agecat: 0-6 months, studyid: ki1000111-WASH-Kenya, country: KENYA
* month: 9, agecat: 0-6 months, studyid: ki1000304-VITAMIN-A, country: INDIA
* month: 9, agecat: 0-6 months, studyid: ki1000304-ZnMort, country: INDIA
* month: 9, agecat: 0-6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* month: 9, agecat: 0-6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* month: 9, agecat: 0-6 months, studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO
* month: 9, agecat: 0-6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* month: 9, agecat: 0-6 months, studyid: ki1119695-PROBIT, country: BELARUS
* month: 9, agecat: 0-6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* month: 9, agecat: 0-6 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* month: 9, agecat: 0-6 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* month: 9, agecat: 0-6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* month: 9, agecat: 0-6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* month: 9, agecat: 0-6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* month: 9, agecat: 6-24 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* month: 9, agecat: 6-24 months, studyid: ki1000111-WASH-Kenya, country: KENYA
* month: 9, agecat: 6-24 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* month: 9, agecat: 6-24 months, studyid: ki1000304-EU, country: INDIA
* month: 9, agecat: 6-24 months, studyid: ki1000304-VITAMIN-A, country: INDIA
* month: 9, agecat: 6-24 months, studyid: ki1000304-Vitamin-B12, country: INDIA
* month: 9, agecat: 6-24 months, studyid: ki1000304-ZnMort, country: INDIA
* month: 9, agecat: 6-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* month: 9, agecat: 6-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* month: 9, agecat: 6-24 months, studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO
* month: 9, agecat: 6-24 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* month: 9, agecat: 6-24 months, studyid: ki1112895-iLiNS-Zinc, country: BURKINA FASO
* month: 9, agecat: 6-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* month: 9, agecat: 6-24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* month: 9, agecat: 6-24 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* month: 9, agecat: 6-24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* month: 9, agecat: 6-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* month: 9, agecat: 6-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* month: 9, agecat: 6-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* month: 12, agecat: 0-6 months, studyid: ki1000107-Serrinha-VitA, country: BRAZIL
* month: 11, agecat: 0-6 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* month: 12, agecat: 0-6 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* month: 1, agecat: 0-6 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* month: 2, agecat: 0-6 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* month: 3, agecat: 0-6 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* month: 4, agecat: 0-6 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* month: 5, agecat: 0-6 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* month: 6, agecat: 0-6 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* month: 9, agecat: 0-6 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* month: 10, agecat: 0-6 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* month: 9, agecat: 0-6 months, studyid: ki1000111-WASH-Kenya, country: KENYA
* month: 3, agecat: 0-6 months, studyid: ki1000111-WASH-Kenya, country: KENYA
* month: 1, agecat: 0-6 months, studyid: ki1000111-WASH-Kenya, country: KENYA
* month: 10, agecat: 0-6 months, studyid: ki1000111-WASH-Kenya, country: KENYA
* month: 11, agecat: 0-6 months, studyid: ki1000111-WASH-Kenya, country: KENYA
* month: 12, agecat: 0-6 months, studyid: ki1000111-WASH-Kenya, country: KENYA
* month: 4, agecat: 0-6 months, studyid: ki1000111-WASH-Kenya, country: KENYA
* month: 5, agecat: 0-6 months, studyid: ki1000111-WASH-Kenya, country: KENYA
* month: 7, agecat: 0-6 months, studyid: ki1000111-WASH-Kenya, country: KENYA
* month: 6, agecat: 0-6 months, studyid: ki1000111-WASH-Kenya, country: KENYA
* month: 2, agecat: 0-6 months, studyid: ki1000111-WASH-Kenya, country: KENYA
* month: 12, agecat: 0-6 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* month: 2, agecat: 0-6 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* month: 10, agecat: 0-6 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* month: 3, agecat: 0-6 months, studyid: ki1000304-EU, country: INDIA
* month: 5, agecat: 0-6 months, studyid: ki1000304-EU, country: INDIA
* month: 7, agecat: 0-6 months, studyid: ki1000304-EU, country: INDIA
* month: 8, agecat: 0-6 months, studyid: ki1000304-EU, country: INDIA
* month: 1, agecat: 0-6 months, studyid: ki1000304-VITAMIN-A, country: INDIA
* month: 4, agecat: 0-6 months, studyid: ki1000304-VITAMIN-A, country: INDIA
* month: 5, agecat: 0-6 months, studyid: ki1000304-VITAMIN-A, country: INDIA
* month: 9, agecat: 0-6 months, studyid: ki1000304-VITAMIN-A, country: INDIA
* month: 2, agecat: 0-6 months, studyid: ki1000304-VITAMIN-A, country: INDIA
* month: 10, agecat: 0-6 months, studyid: ki1000304-VITAMIN-A, country: INDIA
* month: 11, agecat: 0-6 months, studyid: ki1000304-VITAMIN-A, country: INDIA
* month: 12, agecat: 0-6 months, studyid: ki1000304-VITAMIN-A, country: INDIA
* month: 3, agecat: 0-6 months, studyid: ki1000304-VITAMIN-A, country: INDIA
* month: 7, agecat: 0-6 months, studyid: ki1000304-Vitamin-B12, country: INDIA
* month: 10, agecat: 0-6 months, studyid: ki1000304-ZnMort, country: INDIA
* month: 12, agecat: 0-6 months, studyid: ki1000304-ZnMort, country: INDIA
* month: 3, agecat: 0-6 months, studyid: ki1000304-ZnMort, country: INDIA
* month: 4, agecat: 0-6 months, studyid: ki1000304-ZnMort, country: INDIA
* month: 6, agecat: 0-6 months, studyid: ki1000304-ZnMort, country: INDIA
* month: 5, agecat: 0-6 months, studyid: ki1000304-ZnMort, country: INDIA
* month: 8, agecat: 0-6 months, studyid: ki1000304-ZnMort, country: INDIA
* month: 1, agecat: 0-6 months, studyid: ki1000304-ZnMort, country: INDIA
* month: 9, agecat: 0-6 months, studyid: ki1000304-ZnMort, country: INDIA
* month: 7, agecat: 0-6 months, studyid: ki1000304-ZnMort, country: INDIA
* month: 11, agecat: 0-6 months, studyid: ki1000304-ZnMort, country: INDIA
* month: 2, agecat: 0-6 months, studyid: ki1000304-ZnMort, country: INDIA
* month: 7, agecat: 0-6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* month: 9, agecat: 0-6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* month: 10, agecat: 0-6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* month: 4, agecat: 0-6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* month: 6, agecat: 0-6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* month: 2, agecat: 0-6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* month: 3, agecat: 0-6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* month: 5, agecat: 0-6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* month: 7, agecat: 0-6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* month: 11, agecat: 0-6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* month: 8, agecat: 0-6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* month: 7, agecat: 0-6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* month: 9, agecat: 0-6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* month: 11, agecat: 0-6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* month: 12, agecat: 0-6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* month: 1, agecat: 0-6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* month: 2, agecat: 0-6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* month: 3, agecat: 0-6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* month: 5, agecat: 0-6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* month: 6, agecat: 0-6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* month: 7, agecat: 0-6 months, studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO
* month: 5, agecat: 0-6 months, studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO
* month: 2, agecat: 0-6 months, studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO
* month: 4, agecat: 0-6 months, studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO
* month: 8, agecat: 0-6 months, studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO
* month: 1, agecat: 0-6 months, studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO
* month: 12, agecat: 0-6 months, studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO
* month: 9, agecat: 0-6 months, studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO
* month: 6, agecat: 0-6 months, studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO
* month: 4, agecat: 0-6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* month: 5, agecat: 0-6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* month: 6, agecat: 0-6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* month: 10, agecat: 0-6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* month: 1, agecat: 0-6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* month: 2, agecat: 0-6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* month: 3, agecat: 0-6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* month: 7, agecat: 0-6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* month: 9, agecat: 0-6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* month: 8, agecat: 0-6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* month: 12, agecat: 0-6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* month: 11, agecat: 0-6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* month: 12, agecat: 0-6 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* month: 9, agecat: 0-6 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* month: 1, agecat: 0-6 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* month: 10, agecat: 0-6 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* month: 2, agecat: 0-6 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* month: 11, agecat: 0-6 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* month: 2, agecat: 0-6 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* month: 1, agecat: 0-6 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* month: 3, agecat: 0-6 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* month: 4, agecat: 0-6 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* month: 5, agecat: 0-6 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* month: 6, agecat: 0-6 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* month: 10, agecat: 0-6 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* month: 9, agecat: 0-6 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* month: 12, agecat: 0-6 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* month: 7, agecat: 0-6 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* month: 8, agecat: 0-6 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* month: 1, agecat: 0-6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* month: 5, agecat: 0-6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* month: 6, agecat: 0-6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* month: 8, agecat: 0-6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* month: 9, agecat: 0-6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* month: 10, agecat: 0-6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* month: 11, agecat: 0-6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* month: 12, agecat: 0-6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* month: 12, agecat: 0-6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* month: 11, agecat: 0-6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* month: 1, agecat: 0-6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* month: 6, agecat: 6-24 months, studyid: ki1000111-WASH-Kenya, country: KENYA
* month: 12, agecat: 6-24 months, studyid: ki1000111-WASH-Kenya, country: KENYA
* month: 3, agecat: 6-24 months, studyid: ki1000111-WASH-Kenya, country: KENYA
* month: 11, agecat: 6-24 months, studyid: ki1000111-WASH-Kenya, country: KENYA
* month: 6, agecat: 6-24 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* month: 9, agecat: 6-24 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* month: 5, agecat: 6-24 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* month: 1, agecat: 6-24 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* month: 2, agecat: 6-24 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* month: 3, agecat: 6-24 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* month: 2, agecat: 6-24 months, studyid: ki1000304-EU, country: INDIA
* month: 1, agecat: 6-24 months, studyid: ki1000304-EU, country: INDIA
* month: 9, agecat: 6-24 months, studyid: ki1000304-EU, country: INDIA
* month: 8, agecat: 6-24 months, studyid: ki1000304-EU, country: INDIA
* month: 10, agecat: 6-24 months, studyid: ki1000304-EU, country: INDIA
* month: 11, agecat: 6-24 months, studyid: ki1000304-EU, country: INDIA
* month: 3, agecat: 6-24 months, studyid: ki1000304-EU, country: INDIA
* month: 12, agecat: 6-24 months, studyid: ki1000304-EU, country: INDIA
* month: 4, agecat: 6-24 months, studyid: ki1000304-EU, country: INDIA
* month: 5, agecat: 6-24 months, studyid: ki1000304-EU, country: INDIA
* month: 6, agecat: 6-24 months, studyid: ki1000304-EU, country: INDIA
* month: 7, agecat: 6-24 months, studyid: ki1000304-EU, country: INDIA
* month: 6, agecat: 6-24 months, studyid: ki1000304-VITAMIN-A, country: INDIA
* month: 10, agecat: 6-24 months, studyid: ki1000304-VITAMIN-A, country: INDIA
* month: 12, agecat: 6-24 months, studyid: ki1000304-VITAMIN-A, country: INDIA
* month: 1, agecat: 6-24 months, studyid: ki1000304-Vitamin-B12, country: INDIA
* month: 6, agecat: 6-24 months, studyid: ki1000304-Vitamin-B12, country: INDIA
* month: 7, agecat: 6-24 months, studyid: ki1000304-Vitamin-B12, country: INDIA
* month: 5, agecat: 6-24 months, studyid: ki1000304-Vitamin-B12, country: INDIA
* month: 8, agecat: 6-24 months, studyid: ki1000304-Vitamin-B12, country: INDIA
* month: 10, agecat: 6-24 months, studyid: ki1000304-Vitamin-B12, country: INDIA
* month: 11, agecat: 6-24 months, studyid: ki1000304-Vitamin-B12, country: INDIA
* month: 12, agecat: 6-24 months, studyid: ki1000304-Vitamin-B12, country: INDIA
* month: 2, agecat: 6-24 months, studyid: ki1000304-Vitamin-B12, country: INDIA
* month: 7, agecat: 6-24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* month: 9, agecat: 6-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* month: 12, agecat: 6-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* month: 4, agecat: 6-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* month: 1, agecat: 6-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* month: 10, agecat: 6-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* month: 2, agecat: 6-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* month: 3, agecat: 6-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* month: 5, agecat: 6-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* month: 6, agecat: 6-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* month: 7, agecat: 6-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* month: 11, agecat: 6-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* month: 8, agecat: 6-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* month: 7, agecat: 6-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* month: 9, agecat: 6-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* month: 12, agecat: 6-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* month: 2, agecat: 6-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* month: 3, agecat: 6-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* month: 5, agecat: 6-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* month: 6, agecat: 6-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* month: 3, agecat: 6-24 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* month: 5, agecat: 6-24 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* month: 6, agecat: 6-24 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* month: 10, agecat: 6-24 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* month: 1, agecat: 6-24 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* month: 2, agecat: 6-24 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* month: 4, agecat: 6-24 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* month: 7, agecat: 6-24 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* month: 9, agecat: 6-24 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* month: 8, agecat: 6-24 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* month: 12, agecat: 6-24 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* month: 11, agecat: 6-24 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* month: 1, agecat: 6-24 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* month: 8, agecat: 6-24 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* month: 9, agecat: 6-24 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* month: 12, agecat: 6-24 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* month: 5, agecat: 6-24 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* month: 10, agecat: 6-24 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* month: 11, agecat: 6-24 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* month: 6, agecat: 6-24 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* month: 7, agecat: 6-24 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* month: 7, agecat: 6-24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* month: 3, agecat: 6-24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* month: 4, agecat: 6-24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* month: 5, agecat: 6-24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* month: 6, agecat: 6-24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* month: 7, agecat: 6-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* month: 8, agecat: 6-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* month: 9, agecat: 6-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* month: 10, agecat: 6-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* month: 11, agecat: 6-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* month: 12, agecat: 6-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* month: 12, agecat: 6-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* month: 1, agecat: 6-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* month: 6, agecat: 0-24 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* month: 9, agecat: 0-24 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* month: 5, agecat: 0-24 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* month: 3, agecat: 0-24 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* month: 5, agecat: 0-24 months, studyid: ki1000304-Vitamin-B12, country: INDIA
* month: 7, agecat: 0-24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* month: 9, agecat: 0-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* month: 12, agecat: 0-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* month: 10, agecat: 0-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* month: 4, agecat: 0-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* month: 6, agecat: 0-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* month: 1, agecat: 0-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* month: 2, agecat: 0-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* month: 3, agecat: 0-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* month: 5, agecat: 0-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* month: 7, agecat: 0-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* month: 11, agecat: 0-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* month: 2, agecat: 0-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* month: 3, agecat: 0-24 months, studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO
* month: 3, agecat: 0-24 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* month: 4, agecat: 0-24 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* month: 5, agecat: 0-24 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* month: 6, agecat: 0-24 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* month: 10, agecat: 0-24 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* month: 1, agecat: 0-24 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* month: 2, agecat: 0-24 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* month: 7, agecat: 0-24 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* month: 9, agecat: 0-24 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* month: 8, agecat: 0-24 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* month: 12, agecat: 0-24 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* month: 11, agecat: 0-24 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* month: 1, agecat: 0-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

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
##   Other   15
##   Zinc    19
##          ever_stunted
## tr.x        0   1
##   Control   0   0
##   LNS       0   0
##   MMN       0   0
##   Other     0   0
##   Zinc    100  45
##          ever_stunted
## tr.x       0
##   Control  0
##   LNS      0
##   MMN      0
##   Other   16
##   Zinc    25
##          ever_stunted
## tr.x        0   1
##   Control   0   0
##   LNS       0   0
##   MMN       0   0
##   Other     0   0
##   Zinc    102   7
##          ever_stunted
## tr.x       0
##   Control  0
##   LNS      0
##   MMN      0
##   Other   21
##   Zinc    26
##          ever_stunted
## tr.x       0
##   Control  0
##   LNS      0
##   MMN      0
##   Other   36
##   Zinc    20
##          ever_stunted
## tr.x       0
##   Control  0
##   LNS      0
##   MMN      0
##   Other   28
##   Zinc    27
##          ever_stunted
## tr.x       0
##   Control  0
##   LNS      0
##   MMN      0
##   Other   58
##   Zinc    53
##          ever_stunted
## tr.x       0
##   Control  0
##   LNS      0
##   MMN      0
##   Other    0
##   Zinc    16
##          ever_stunted
## tr.x        0   1
##   Control   0   0
##   LNS       0   0
##   MMN       0   0
##   Other     0   0
##   Zinc    287 139
##          ever_stunted
## tr.x       0
##   Control  0
##   LNS      0
##   MMN      0
##   Other   50
##   Zinc    70
##          ever_stunted
## tr.x        0   1
##   Control   0   0
##   LNS       0   0
##   MMN       0   0
##   Other     0   0
##   Zinc    291  33
##          ever_stunted
## tr.x        0   1
##   Control   0   0
##   LNS       0   0
##   MMN       0   0
##   Other     0   0
##   Zinc    397 327
##          ever_stunted
## tr.x       0
##   Control  0
##   LNS      0
##   MMN      0
##   Other   56
##   Zinc    60
##          ever_stunted
## tr.x        0   1
##   Control   0   0
##   LNS       0   0
##   MMN       0   0
##   Other     0   0
##   Zinc    407  73
##          ever_stunted
## tr.x        0   1
##   Control   0   0
##   LNS       0   0
##   MMN       0   0
##   Other     0   0
##   Zinc    143  67
##          ever_stunted
## tr.x       0
##   Control  0
##   LNS      0
##   MMN      0
##   Other   47
##   Zinc    39
##          ever_stunted
## tr.x        0   1
##   Control   0   0
##   LNS       0   0
##   MMN       0   0
##   Other     0   0
##   Zinc    147  22
##          ever_stunted
## tr.x        0   1
##   Control   0   0
##   LNS       0   0
##   MMN       0   0
##   Other     0   0
##   Zinc    163  46
##          ever_stunted
## tr.x       0
##   Control 30
##   LNS     27
##   MMN      0
##   Other   27
##   Zinc     0
##          ever_stunted
## tr.x       0
##   Control  0
##   LNS      0
##   MMN      0
##   Other   38
##   Zinc    37
##          ever_stunted
## tr.x        0   1
##   Control   0   0
##   LNS       0   0
##   MMN       0   0
##   Other     0   0
##   Zinc    166   8
##          ever_stunted
## tr.x        0   1
##   Control   0   0
##   LNS       0   0
##   MMN       0   0
##   Other     0   0
##   Zinc    325 136
##          ever_stunted
## tr.x       0
##   Control 21
##   LNS     14
##   MMN      0
##   Other   34
##   Zinc     0
##          ever_stunted
## tr.x       0
##   Control  0
##   LNS      0
##   MMN      0
##   Other   37
##   Zinc    38
##          ever_stunted
## tr.x        0   1
##   Control   0   0
##   LNS       0   0
##   MMN       0   0
##   Other     0   0
##   Zinc    328  11
##          ever_stunted
## tr.x        0   1
##   Control   0   0
##   LNS       0   0
##   MMN       0   0
##   Other     0   0
##   Zinc    399 162
##          ever_stunted
## tr.x       0
##   Control 38
##   LNS     18
##   MMN      0
##   Other   35
##   Zinc     0
##          ever_stunted
## tr.x      0
##   Control 7
##   LNS     0
##   MMN     0
##   Other   9
##   Zinc    0
##          ever_stunted
## tr.x       0
##   Control  0
##   LNS      0
##   MMN      0
##   Other   34
##   Zinc    36
##          ever_stunted
## tr.x        0   1
##   Control   0   0
##   LNS       0   0
##   MMN       0   0
##   Other     0   0
##   Zinc    403  13
```




# Results Detail

## Results Plots
![](/tmp/aa705cb4-1868-4534-87e9-b348bc2805ef/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->


```
## Warning: Removed 391 rows containing missing values (geom_errorbar).
```

![](/tmp/aa705cb4-1868-4534-87e9-b348bc2805ef/REPORT_files/figure-html/plot_rr-1.png)<!-- -->

![](/tmp/aa705cb4-1868-4534-87e9-b348bc2805ef/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/aa705cb4-1868-4534-87e9-b348bc2805ef/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


month   agecat        studyid                     country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------  ------------  --------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
1       0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                0.3203883   0.2301708   0.4106059
1       0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                  NA                0.3859649   0.2964987   0.4754311
1       0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                NA                0.3794643   0.3158454   0.4430831
1       0-24 months   ki1000111-WASH-Kenya        KENYA                          Control              NA                0.2237197   0.1812940   0.2661454
1       0-24 months   ki1000111-WASH-Kenya        KENYA                          LNS                  NA                0.1854839   0.1370854   0.2338823
1       0-24 months   ki1000111-WASH-Kenya        KENYA                          Other                NA                0.2626728   0.2212493   0.3040964
1       0-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Control              NA                0.4227642   0.3783001   0.4672284
1       0-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Other                NA                0.3277311   0.2861749   0.3692873
1       0-24 months   ki1000304-EU                INDIA                          Control              NA                0.4880952   0.3809059   0.5952846
1       0-24 months   ki1000304-EU                INDIA                          Zinc                 NA                0.3979592   0.3007821   0.4951362
1       0-24 months   ki1000304-VITAMIN-A         INDIA                          Control              NA                0.4734043   0.4370908   0.5097177
1       0-24 months   ki1000304-VITAMIN-A         INDIA                          Other                NA                0.4945055   0.4587277   0.5302833
1       0-24 months   ki1000304-Vitamin-B12       INDIA                          Control              NA                0.5454545   0.4837541   0.6071550
1       0-24 months   ki1000304-Vitamin-B12       INDIA                          Other                NA                0.4285714   0.3686598   0.4884831
1       0-24 months   ki1000304-ZnMort            INDIA                          Other                NA                0.5111111   0.3641933   0.6580289
1       0-24 months   ki1000304-ZnMort            INDIA                          Zinc                 NA                0.3500000   0.2013111   0.4986889
1       0-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control              NA                0.6346154   0.5874171   0.6818137
1       0-24 months   ki1000304b-SAS-CompFeed     INDIA                          Other                NA                0.5957447   0.5453423   0.6461470
1       0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              NA                0.3000000   0.1575207   0.4424793
1       0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                NA                0.2911392   0.1906339   0.3916446
1       0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                 NA                0.2352941   0.0922450   0.3783433
1       0-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Control              NA                0.2620690   0.2207301   0.3034078
1       0-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc                 NA                0.3762201   0.3479282   0.4045119
1       0-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Control              NA                0.4000000   0.3504910   0.4495090
1       0-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   LNS                  NA                0.3016760   0.2448431   0.3585088
1       0-24 months   ki1119695-PROBIT            BELARUS                        Control              NA                0.1712598   0.1510737   0.1914460
1       0-24 months   ki1119695-PROBIT            BELARUS                        Other                NA                0.1666667   0.1435281   0.1898052
1       0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                0.3366337   0.3229068   0.3503605
1       0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Other                NA                0.3383028   0.3149877   0.3616178
1       0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                0.4838710   0.4536577   0.5140842
1       0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS                  NA                0.5066667   0.4401777   0.5731556
1       0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control              NA                0.3823529   0.2181831   0.5465228
1       0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         LNS                  NA                0.4615385   0.2689523   0.6541246
1       0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Other                NA                0.5250000   0.3694654   0.6805346
1       0-24 months   ki1148112-LCNI-5            MALAWI                         Control              NA                0.5185185   0.4268276   0.6102095
1       0-24 months   ki1148112-LCNI-5            MALAWI                         LNS                  NA                0.5517241   0.4571428   0.6463055
1       0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                0.4390244   0.4187700   0.4592788
1       0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Other                NA                0.4178935   0.3986347   0.4371524
1       0-6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Control              NA                0.4117647   0.3321260   0.4914035
1       0-6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Other                NA                0.2500000   0.1911304   0.3088696
1       0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Control              NA                0.2666667   0.2163094   0.3170239
1       0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Other                NA                0.2727273   0.2392015   0.3062531
1       0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Control              NA                0.4375000   0.3752711   0.4997289
1       0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Other                NA                0.5744681   0.4681689   0.6807673
1       0-6 months    ki1119695-PROBIT            BELARUS                        Control              NA                0.0833333   0.0681150   0.0985517
1       0-6 months    ki1119695-PROBIT            BELARUS                        Other                NA                0.0934394   0.0709155   0.1159633
1       0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                0.1681034   0.1556922   0.1805147
1       0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Other                NA                0.1766467   0.1551693   0.1981241
1       0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                0.2884250   0.2665368   0.3103133
1       0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Other                NA                0.2411348   0.2202174   0.2620522
1       6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                0.1860465   0.1036845   0.2684086
1       6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                  NA                0.2111111   0.1266789   0.2955433
1       6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                NA                0.1931818   0.1347727   0.2515909
1       6-24 months   ki1000111-WASH-Kenya        KENYA                          Control              NA                0.0616883   0.0348040   0.0885726
1       6-24 months   ki1000111-WASH-Kenya        KENYA                          LNS                  NA                0.0610329   0.0288654   0.0932003
1       6-24 months   ki1000111-WASH-Kenya        KENYA                          Other                NA                0.0811594   0.0523271   0.1099917
1       6-24 months   ki1000304-VITAMIN-A         INDIA                          Control              NA                0.1250000   0.0933146   0.1566854
1       6-24 months   ki1000304-VITAMIN-A         INDIA                          Other                NA                0.1238095   0.0932559   0.1543631
1       6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control              NA                0.3030303   0.2545144   0.3515462
1       6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Other                NA                0.2000000   0.1359699   0.2640301
1       6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              NA                0.1612903   0.0312840   0.2912966
1       6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                NA                0.2187500   0.1170515   0.3204485
1       6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                 NA                0.1851852   0.0380603   0.3323100
1       6-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Control              NA                0.0714286   0.0444361   0.0984210
1       6-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc                 NA                0.1331719   0.1099918   0.1563520
1       6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Control              NA                0.2745098   0.2247618   0.3242578
1       6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   LNS                  NA                0.0860927   0.0513875   0.1207979
1       6-24 months   ki1119695-PROBIT            BELARUS                        Control              NA                0.0449898   0.0313755   0.0586041
1       6-24 months   ki1119695-PROBIT            BELARUS                        Other                NA                0.0482625   0.0367664   0.0597587
1       6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                0.1440329   0.1323021   0.1557637
1       6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Other                NA                0.1562500   0.1360772   0.1764228
1       6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control              NA                0.3125000   0.1509158   0.4740842
1       6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         LNS                  NA                0.2500000   0.0590595   0.4409405
1       6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Other                NA                0.3000000   0.1350085   0.4649915
1       6-24 months   ki1148112-LCNI-5            MALAWI                         Control              NA                0.4400000   0.3306784   0.5493216
1       6-24 months   ki1148112-LCNI-5            MALAWI                         LNS                  NA                0.3000000   0.2097307   0.3902693
1       6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                0.2161100   0.1969298   0.2352903
1       6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Other                NA                0.2532833   0.2314937   0.2750729
2       0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                0.3846154   0.2764658   0.4927649
2       0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                  NA                0.3472222   0.2370669   0.4573776
2       0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                NA                0.4068966   0.3268010   0.4869922
2       0-24 months   ki1000111-WASH-Kenya        KENYA                          Control              NA                0.2000000   0.1406834   0.2593166
2       0-24 months   ki1000111-WASH-Kenya        KENYA                          LNS                  NA                0.2231405   0.1488893   0.2973917
2       0-24 months   ki1000111-WASH-Kenya        KENYA                          Other                NA                0.2188679   0.1690408   0.2686951
2       0-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Control              NA                0.1914894   0.1393997   0.2435790
2       0-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Other                NA                0.3090909   0.2429116   0.3752702
2       0-24 months   ki1000304-EU                INDIA                          Control              NA                0.5609756   0.4532294   0.6687218
2       0-24 months   ki1000304-EU                INDIA                          Zinc                 NA                0.4500000   0.3406459   0.5593541
2       0-24 months   ki1000304-VITAMIN-A         INDIA                          Control              NA                0.4718310   0.4311353   0.5125266
2       0-24 months   ki1000304-VITAMIN-A         INDIA                          Other                NA                0.3655172   0.3258463   0.4051881
2       0-24 months   ki1000304-Vitamin-B12       INDIA                          Control              NA                0.4509804   0.3823613   0.5195995
2       0-24 months   ki1000304-Vitamin-B12       INDIA                          Other                NA                0.3921569   0.3248285   0.4594852
2       0-24 months   ki1000304-ZnMort            INDIA                          Other                NA                0.4038462   0.2698620   0.5378303
2       0-24 months   ki1000304-ZnMort            INDIA                          Zinc                 NA                0.5000000   0.3684339   0.6315661
2       0-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control              NA                0.5384615   0.4376909   0.6392321
2       0-24 months   ki1000304b-SAS-CompFeed     INDIA                          Other                NA                0.4468085   0.3419570   0.5516600
2       0-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Control              NA                0.3293886   0.2884658   0.3703113
2       0-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc                 NA                0.3864230   0.3582596   0.4145864
2       0-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Control              NA                0.4042553   0.3533257   0.4551850
2       0-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   LNS                  NA                0.3975155   0.3510798   0.4439512
2       0-24 months   ki1119695-PROBIT            BELARUS                        Control              NA                0.1820041   0.1520991   0.2119091
2       0-24 months   ki1119695-PROBIT            BELARUS                        Other                NA                0.1494737   0.1232235   0.1757239
2       0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                0.3785047   0.3629235   0.3940859
2       0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Other                NA                0.3166421   0.2900236   0.3432606
2       0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                0.5882353   0.5607313   0.6157393
2       0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS                  NA                0.4561404   0.3937170   0.5185637
2       0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control              NA                0.4324324   0.2701243   0.5947406
2       0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         LNS                  NA                0.4615385   0.2699778   0.6530991
2       0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Other                NA                0.5714286   0.3850539   0.7578032
2       0-24 months   ki1148112-LCNI-5            MALAWI                         Control              NA                0.5087719   0.4441638   0.5733801
2       0-24 months   ki1148112-LCNI-5            MALAWI                         LNS                  NA                0.5172414   0.4520977   0.5823851
2       0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                0.4275668   0.4047157   0.4504179
2       0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Other                NA                0.4426020   0.4217412   0.4634629
2       0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                0.4400000   0.3382914   0.5417086
2       0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     LNS                  NA                0.4606742   0.3462082   0.5751401
2       0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     MMN                  NA                0.4788732   0.3580308   0.5997157
2       0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Other                NA                0.4285714   0.3224124   0.5347305
2       0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Control              NA                0.2857143   0.1775491   0.3938795
2       0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Other                NA                0.2051282   0.1405514   0.2697050
2       0-6 months    ki1119695-PROBIT            BELARUS                        Control              NA                0.0808989   0.0608320   0.1009658
2       0-6 months    ki1119695-PROBIT            BELARUS                        Other                NA                0.0651685   0.0513904   0.0789467
2       0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                0.2237762   0.2080590   0.2394934
2       0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Other                NA                0.1565762   0.1314943   0.1816581
2       0-6 months    ki1148112-LCNI-5            MALAWI                         Control              NA                0.5000000   0.4057448   0.5942552
2       0-6 months    ki1148112-LCNI-5            MALAWI                         LNS                  NA                0.2222222   0.1311631   0.3132814
2       0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                0.2845953   0.2564239   0.3127667
2       0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Other                NA                0.2269327   0.2039757   0.2498897
2       0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                0.2238806   0.1138270   0.3339342
2       0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     LNS                  NA                0.1846154   0.0859338   0.2832970
2       0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     MMN                  NA                0.3333333   0.2015428   0.4651238
2       0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     Other                NA                0.2608696   0.1481882   0.3735509
2       6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                0.2131148   0.1101236   0.3161060
2       6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                  NA                0.2068966   0.1024173   0.3113758
2       6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                NA                0.2293578   0.1502585   0.3084571
2       6-24 months   ki1000111-WASH-Kenya        KENYA                          Control              NA                0.0547945   0.0178391   0.0917499
2       6-24 months   ki1000111-WASH-Kenya        KENYA                          LNS                  NA                0.0792079   0.0264816   0.1319342
2       6-24 months   ki1000111-WASH-Kenya        KENYA                          Other                NA                0.0284360   0.0059842   0.0508878
2       6-24 months   ki1000304-VITAMIN-A         INDIA                          Control              NA                0.0759494   0.0496530   0.1022458
2       6-24 months   ki1000304-VITAMIN-A         INDIA                          Other                NA                0.0515464   0.0272263   0.0758665
2       6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control              NA                0.2307692   0.1389183   0.3226202
2       6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Other                NA                0.1428571   0.1117164   0.1739979
2       6-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Control              NA                0.1131105   0.0816229   0.1445982
2       6-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc                 NA                0.1248470   0.1021720   0.1475221
2       6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Control              NA                0.1351351   0.1064352   0.1638350
2       6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   LNS                  NA                0.1626016   0.1155564   0.2096469
2       6-24 months   ki1119695-PROBIT            BELARUS                        Control              NA                0.0718816   0.0486692   0.0950940
2       6-24 months   ki1119695-PROBIT            BELARUS                        Other                NA                0.0646552   0.0414908   0.0878196
2       6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                0.1626506   0.1494598   0.1758414
2       6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Other                NA                0.1256932   0.1043026   0.1470837
2       6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                0.2272727   0.2007947   0.2537508
2       6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS                  NA                0.2258065   0.1630886   0.2885243
2       6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control              NA                0.2903226   0.1273160   0.4533292
2       6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         LNS                  NA                0.3000000   0.0973518   0.5026482
2       6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Other                NA                0.4800000   0.2802129   0.6797871
2       6-24 months   ki1148112-LCNI-5            MALAWI                         Control              NA                0.2272727   0.1635488   0.2909967
2       6-24 months   ki1148112-LCNI-5            MALAWI                         LNS                  NA                0.2619048   0.1965854   0.3272241
2       6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                0.2131519   0.1901598   0.2361441
2       6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Other                NA                0.3100000   0.2856587   0.3343413
2       6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                0.2352941   0.1468104   0.3237779
2       6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     LNS                  NA                0.2638889   0.1540530   0.3737248
2       6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     MMN                  NA                0.2909091   0.1556349   0.4261833
2       6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Other                NA                0.2222222   0.1153329   0.3291116
3       0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                0.5581395   0.4530397   0.6632394
3       0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                  NA                0.3763441   0.2777477   0.4749405
3       0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                NA                0.4631579   0.3921595   0.5341563
3       0-24 months   ki1000111-WASH-Kenya        KENYA                          Control              NA                0.2252252   0.1702274   0.2802231
3       0-24 months   ki1000111-WASH-Kenya        KENYA                          LNS                  NA                0.1788618   0.1110757   0.2466479
3       0-24 months   ki1000111-WASH-Kenya        KENYA                          Other                NA                0.2391304   0.1839564   0.2943045
3       0-24 months   ki1000304-EU                INDIA                          Control              NA                0.4672897   0.3725058   0.5620737
3       0-24 months   ki1000304-EU                INDIA                          Zinc                 NA                0.4642857   0.3573537   0.5712177
3       0-24 months   ki1000304-VITAMIN-A         INDIA                          Control              NA                0.4900662   0.4489043   0.5312281
3       0-24 months   ki1000304-VITAMIN-A         INDIA                          Other                NA                0.4718310   0.4319701   0.5116919
3       0-24 months   ki1000304-ZnMort            INDIA                          Other                NA                0.4736842   0.3818416   0.5655268
3       0-24 months   ki1000304-ZnMort            INDIA                          Zinc                 NA                0.5037594   0.4186141   0.5889047
3       0-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control              NA                0.4000000   0.3420145   0.4579855
3       0-24 months   ki1000304b-SAS-CompFeed     INDIA                          Other                NA                0.5777778   0.4915142   0.6640414
3       0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              NA                0.3333333   0.1788781   0.4877886
3       0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                NA                0.2168675   0.1279400   0.3057949
3       0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                 NA                0.2765957   0.1483259   0.4048656
3       0-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Control              NA                0.3508772   0.3108700   0.3908844
3       0-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   LNS                  NA                0.3057325   0.2273099   0.3841551
3       0-24 months   ki1119695-PROBIT            BELARUS                        Control              NA                0.1542373   0.1319849   0.1764897
3       0-24 months   ki1119695-PROBIT            BELARUS                        Other                NA                0.1260946   0.1023093   0.1498798
3       0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                0.3522267   0.3374614   0.3669920
3       0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Other                NA                0.3360000   0.3105578   0.3614422
3       0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                0.3947368   0.3686634   0.4208103
3       0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS                  NA                0.4285714   0.3697000   0.4874428
3       0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control              NA                0.3181818   0.1224496   0.5139141
3       0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         LNS                  NA                0.5116279   0.3613760   0.6618798
3       0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Other                NA                0.5000000   0.2988286   0.7011714
3       0-24 months   ki1148112-LCNI-5            MALAWI                         Control              NA                0.6326531   0.5648158   0.7004903
3       0-24 months   ki1148112-LCNI-5            MALAWI                         LNS                  NA                0.5510204   0.4810291   0.6210118
3       0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                0.3651786   0.3475069   0.3828502
3       0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Other                NA                0.3151986   0.2996295   0.3307678
3       0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                0.4666667   0.3630484   0.5702849
3       0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     LNS                  NA                0.4265734   0.3342094   0.5189375
3       0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     MMN                  NA                0.5409836   0.3931480   0.6888192
3       0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Other                NA                0.4729730   0.3970961   0.5488498
3       0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Control              NA                0.1470588   0.0998259   0.1942917
3       0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Other                NA                0.3500000   0.2818680   0.4181320
3       0-6 months    ki1119695-PROBIT            BELARUS                        Control              NA                0.0681818   0.0551466   0.0812171
3       0-6 months    ki1119695-PROBIT            BELARUS                        Other                NA                0.0595668   0.0414811   0.0776525
3       0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                0.1720430   0.1588984   0.1851877
3       0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Other                NA                0.1615120   0.1388404   0.1841836
3       0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                0.2500000   0.2174207   0.2825793
3       0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         LNS                  NA                0.2061856   0.1391507   0.2732204
3       0-6 months    ki1148112-LCNI-5            MALAWI                         Control              NA                0.4333333   0.3408141   0.5258526
3       0-6 months    ki1148112-LCNI-5            MALAWI                         LNS                  NA                0.2500000   0.1718955   0.3281045
3       0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                0.2309942   0.2146986   0.2472897
3       0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Other                NA                0.1799629   0.1662428   0.1936830
3       0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                0.2330097   0.1407964   0.3252231
3       0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     LNS                  NA                0.3203125   0.2316091   0.4090159
3       0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     MMN                  NA                0.2857143   0.1216106   0.4498179
3       0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     Other                NA                0.2790698   0.2058045   0.3523351
3       6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                0.2833333   0.1690979   0.3975688
3       6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                  NA                0.1159420   0.0402578   0.1916262
3       6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                NA                0.2352941   0.1638688   0.3067195
3       6-24 months   ki1000304-VITAMIN-A         INDIA                          Control              NA                0.0909091   0.0593530   0.1224652
3       6-24 months   ki1000304-VITAMIN-A         INDIA                          Other                NA                0.0750000   0.0474335   0.1025665
3       6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control              NA                0.2500000   0.1642694   0.3357306
3       6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Other                NA                0.3333333   0.2299983   0.4366684
3       6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Control              NA                0.2244898   0.1900185   0.2589611
3       6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   LNS                  NA                0.1268657   0.0474201   0.2063113
3       6-24 months   ki1119695-PROBIT            BELARUS                        Control              NA                0.0506108   0.0310968   0.0701248
3       6-24 months   ki1119695-PROBIT            BELARUS                        Other                NA                0.0532860   0.0423765   0.0641954
3       6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                0.1640212   0.1513027   0.1767396
3       6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Other                NA                0.1174497   0.0978127   0.1370866
3       6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                0.1851852   0.1603822   0.2099882
3       6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS                  NA                0.2105263   0.1527517   0.2683010
3       6-24 months   ki1148112-LCNI-5            MALAWI                         Control              NA                0.2500000   0.1844385   0.3155615
3       6-24 months   ki1148112-LCNI-5            MALAWI                         LNS                  NA                0.3902439   0.3008707   0.4796171
3       6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                0.1996528   0.1814460   0.2178595
3       6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Other                NA                0.1900685   0.1712609   0.2088761
3       6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                0.2765957   0.1718224   0.3813691
3       6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     LNS                  NA                0.2123894   0.1264311   0.2983477
3       6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     MMN                  NA                0.3111111   0.1589979   0.4632243
3       6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Other                NA                0.2764228   0.2024090   0.3504365
4       0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                0.3846154   0.2963609   0.4728699
4       0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                  NA                0.3944954   0.3026389   0.4863519
4       0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                NA                0.5117371   0.4445317   0.5789424
4       0-24 months   ki1000111-WASH-Kenya        KENYA                          Control              NA                0.2529644   0.1993672   0.3065617
4       0-24 months   ki1000111-WASH-Kenya        KENYA                          LNS                  NA                0.2100000   0.1535179   0.2664821
4       0-24 months   ki1000111-WASH-Kenya        KENYA                          Other                NA                0.2793017   0.2353634   0.3232401
4       0-24 months   ki1000304-EU                INDIA                          Control              NA                0.4767442   0.3708669   0.5826215
4       0-24 months   ki1000304-EU                INDIA                          Zinc                 NA                0.4814815   0.3723420   0.5906209
4       0-24 months   ki1000304-VITAMIN-A         INDIA                          Control              NA                0.4823529   0.4451784   0.5195275
4       0-24 months   ki1000304-VITAMIN-A         INDIA                          Other                NA                0.4022989   0.3653915   0.4392062
4       0-24 months   ki1000304-ZnMort            INDIA                          Other                NA                0.5537190   0.4649784   0.6424596
4       0-24 months   ki1000304-ZnMort            INDIA                          Zinc                 NA                0.4620690   0.3807674   0.5433705
4       0-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control              NA                0.5161290   0.4002695   0.6319886
4       0-24 months   ki1000304b-SAS-CompFeed     INDIA                          Other                NA                0.5714286   0.4177392   0.7251180
4       0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              NA                0.3617021   0.2239256   0.4994786
4       0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                NA                0.2727273   0.1729563   0.3724983
4       0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                 NA                0.4000000   0.2564391   0.5435609
4       0-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Control              NA                0.3142857   0.2560162   0.3725552
4       0-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   LNS                  NA                0.3648649   0.2890330   0.4406967
4       0-24 months   ki1119695-PROBIT            BELARUS                        Control              NA                0.1243043   0.1004911   0.1481175
4       0-24 months   ki1119695-PROBIT            BELARUS                        Other                NA                0.1220736   0.1029326   0.1412145
4       0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                0.3392857   0.3234401   0.3551314
4       0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Other                NA                0.3246554   0.2978991   0.3514118
4       0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                0.5757576   0.5493225   0.6021927
4       0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS                  NA                0.5168539   0.4547770   0.5789309
4       0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control              NA                0.4000000   0.2065142   0.5934858
4       0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         LNS                  NA                0.4500000   0.2303222   0.6696778
4       0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Other                NA                0.2727273   0.0852213   0.4602333
4       0-24 months   ki1148112-LCNI-5            MALAWI                         Control              NA                0.5818182   0.5169327   0.6467037
4       0-24 months   ki1148112-LCNI-5            MALAWI                         LNS                  NA                0.7142857   0.6543223   0.7742491
4       0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                0.3887324   0.3675951   0.4098697
4       0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Other                NA                0.3221024   0.3022153   0.3419895
4       0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                0.5156250   0.4475462   0.5837038
4       0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     LNS                  NA                0.5247525   0.4605698   0.5889352
4       0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     MMN                  NA                0.5789474   0.4909154   0.6669793
4       0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Other                NA                0.4977778   0.4155936   0.5799619
4       0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Control              NA                0.1851852   0.1014246   0.2689458
4       0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Other                NA                0.2368421   0.1428856   0.3307986
4       0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              NA                0.1063830   0.0179686   0.1947974
4       0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                NA                0.0675676   0.0102059   0.1249293
4       0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                 NA                0.1333333   0.0337127   0.2329540
4       0-6 months    ki1119695-PROBIT            BELARUS                        Control              NA                0.0589354   0.0416791   0.0761916
4       0-6 months    ki1119695-PROBIT            BELARUS                        Other                NA                0.0643478   0.0519079   0.0767878
4       0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                0.1797753   0.1648440   0.1947066
4       0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Other                NA                0.1878788   0.1625504   0.2132072
4       0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                0.3500000   0.3218467   0.3781533
4       0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         LNS                  NA                0.3023256   0.2334789   0.3711722
4       0-6 months    ki1148112-LCNI-5            MALAWI                         Control              NA                0.3928571   0.2884161   0.4972982
4       0-6 months    ki1148112-LCNI-5            MALAWI                         LNS                  NA                0.4285714   0.3369216   0.5202213
4       0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                0.2118959   0.1924680   0.2313238
4       0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Other                NA                0.1748252   0.1559468   0.1937035
4       0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                0.1991342   0.1480617   0.2502067
4       0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     LNS                  NA                0.2820513   0.2188400   0.3452626
4       0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     MMN                  NA                0.2977099   0.2085344   0.3868854
4       0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     Other                NA                0.2361809   0.1635767   0.3087851
4       6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                0.2127660   0.1299034   0.2956285
4       6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                  NA                0.1750000   0.0916088   0.2583912
4       6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                NA                0.2933333   0.2203604   0.3663063
4       6-24 months   ki1000111-WASH-Kenya        KENYA                          Control              NA                0.0404040   0.0129575   0.0678506
4       6-24 months   ki1000111-WASH-Kenya        KENYA                          LNS                  NA                0.0548780   0.0199974   0.0897587
4       6-24 months   ki1000111-WASH-Kenya        KENYA                          Other                NA                0.1009174   0.0682457   0.1335892
4       6-24 months   ki1000304-VITAMIN-A         INDIA                          Control              NA                0.0679612   0.0450491   0.0908732
4       6-24 months   ki1000304-VITAMIN-A         INDIA                          Other                NA                0.1034483   0.0740260   0.1328705
4       6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control              NA                0.3181818   0.1974757   0.4388880
4       6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Other                NA                0.2777778   0.1872218   0.3683338
4       6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              NA                0.3000000   0.1353524   0.4646476
4       6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                NA                0.1904762   0.0931183   0.2878341
4       6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                 NA                0.3548387   0.1857264   0.5239510
4       6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Control              NA                0.2500000   0.1879991   0.3120009
4       6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   LNS                  NA                0.1652174   0.1240466   0.2063882
4       6-24 months   ki1119695-PROBIT            BELARUS                        Control              NA                0.0419048   0.0318754   0.0519341
4       6-24 months   ki1119695-PROBIT            BELARUS                        Other                NA                0.0330435   0.0229719   0.0431151
4       6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                0.1387283   0.1256528   0.1518038
4       6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Other                NA                0.1159136   0.0951426   0.1366845
4       6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                0.3636364   0.3297489   0.3975238
4       6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS                  NA                0.1834862   0.1227934   0.2441791
4       6-24 months   ki1148112-LCNI-5            MALAWI                         Control              NA                0.3902439   0.3021567   0.4783311
4       6-24 months   ki1148112-LCNI-5            MALAWI                         LNS                  NA                0.3103448   0.2400842   0.3806054
4       6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                0.1684211   0.1499122   0.1869299
4       6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Other                NA                0.1575758   0.1395116   0.1756399
4       6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                0.3221154   0.2554305   0.3888003
4       6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     LNS                  NA                0.3116883   0.2486398   0.3747368
4       6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     MMN                  NA                0.3571429   0.2548458   0.4594399
4       6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Other                NA                0.2881356   0.2011111   0.3751601
5       0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                0.4921875   0.4054942   0.5788808
5       0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                  NA                0.3970588   0.3147457   0.4793719
5       0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                NA                0.4736842   0.4113549   0.5360136
5       0-24 months   ki1000111-WASH-Kenya        KENYA                          Control              NA                0.2452830   0.1979675   0.2925986
5       0-24 months   ki1000111-WASH-Kenya        KENYA                          LNS                  NA                0.2536585   0.1940638   0.3132533
5       0-24 months   ki1000111-WASH-Kenya        KENYA                          Other                NA                0.2953930   0.2488180   0.3419679
5       0-24 months   ki1000304-EU                INDIA                          Control              NA                0.5471698   0.4125286   0.6818110
5       0-24 months   ki1000304-EU                INDIA                          Zinc                 NA                0.4814815   0.3475872   0.6153758
5       0-24 months   ki1000304-VITAMIN-A         INDIA                          Control              NA                0.4076087   0.3722522   0.4429652
5       0-24 months   ki1000304-VITAMIN-A         INDIA                          Other                NA                0.4086022   0.3730406   0.4441637
5       0-24 months   ki1000304-ZnMort            INDIA                          Other                NA                0.5620438   0.4788145   0.6452731
5       0-24 months   ki1000304-ZnMort            INDIA                          Zinc                 NA                0.5539568   0.4711711   0.6367425
5       0-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control              NA                0.7142857   0.6731566   0.7554148
5       0-24 months   ki1000304b-SAS-CompFeed     INDIA                          Other                NA                0.5744681   0.5257008   0.6232353
5       0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              NA                0.2325581   0.1059293   0.3591870
5       0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                NA                0.1752577   0.0993842   0.2511313
5       0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                 NA                0.2432432   0.1046072   0.3818793
5       0-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Control              NA                0.4358974   0.3862575   0.4855373
5       0-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   LNS                  NA                0.3388889   0.2637580   0.4140198
5       0-24 months   ki1119695-PROBIT            BELARUS                        Control              NA                0.1170569   0.0945208   0.1395929
5       0-24 months   ki1119695-PROBIT            BELARUS                        Other                NA                0.0992908   0.0823801   0.1162015
5       0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                0.3444976   0.3287952   0.3602001
5       0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Other                NA                0.3559322   0.3280526   0.3838118
5       0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                0.3421053   0.3169101   0.3673005
5       0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS                  NA                0.5315789   0.4723210   0.5908369
5       0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control              NA                0.3461538   0.1620561   0.5302516
5       0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         LNS                  NA                0.4347826   0.2308237   0.6387416
5       0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Other                NA                0.4615385   0.2686272   0.6544497
5       0-24 months   ki1148112-LCNI-5            MALAWI                         Control              NA                0.5961538   0.5322375   0.6600702
5       0-24 months   ki1148112-LCNI-5            MALAWI                         LNS                  NA                0.6315789   0.5657910   0.6973669
5       0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                0.3707533   0.3492299   0.3922768
5       0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Other                NA                0.3900929   0.3685466   0.4116391
5       0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                0.5397727   0.4609879   0.6185576
5       0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     LNS                  NA                0.5353535   0.4567905   0.6139166
5       0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     MMN                  NA                0.5612245   0.4506797   0.6717692
5       0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Other                NA                0.4444444   0.3528110   0.5360779
5       0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Control              NA                0.3225806   0.2664031   0.3787582
5       0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Other                NA                0.2619048   0.1875413   0.3362683
5       0-6 months    ki1119695-PROBIT            BELARUS                        Control              NA                0.0531732   0.0340546   0.0722919
5       0-6 months    ki1119695-PROBIT            BELARUS                        Other                NA                0.0509091   0.0383930   0.0634252
5       0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                0.1893491   0.1749961   0.2037021
5       0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Other                NA                0.2106262   0.1842475   0.2370049
5       0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                0.1851852   0.1623836   0.2079868
5       0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         LNS                  NA                0.2517007   0.1922593   0.3111421
5       0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                0.1933333   0.1751977   0.2114690
5       0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Other                NA                0.1864111   0.1673782   0.2054441
5       0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                0.2739726   0.2022772   0.3456680
5       0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     LNS                  NA                0.2662722   0.1935722   0.3389721
5       0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     MMN                  NA                0.3200000   0.2019713   0.4380287
5       0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     Other                NA                0.1526718   0.0745410   0.2308025
5       6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                0.2555556   0.1653225   0.3457886
5       6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                  NA                0.1826923   0.1083281   0.2570566
5       6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                NA                0.2707182   0.2059003   0.3355361
5       6-24 months   ki1000111-WASH-Kenya        KENYA                          Control              NA                0.0719697   0.0407731   0.1031663
5       6-24 months   ki1000111-WASH-Kenya        KENYA                          LNS                  NA                0.0714286   0.0324575   0.1103997
5       6-24 months   ki1000111-WASH-Kenya        KENYA                          Other                NA                0.0609319   0.0328438   0.0890200
5       6-24 months   ki1000304-VITAMIN-A         INDIA                          Control              NA                0.0517241   0.0319562   0.0714921
5       6-24 months   ki1000304-VITAMIN-A         INDIA                          Other                NA                0.0743802   0.0504605   0.0982999
5       6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control              NA                0.3529412   0.1879167   0.5179656
5       6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Other                NA                0.3428571   0.3252322   0.3604821
5       6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Control              NA                0.1964286   0.1361479   0.2567092
5       6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   LNS                  NA                0.1172414   0.0856224   0.1488604
5       6-24 months   ki1119695-PROBIT            BELARUS                        Control              NA                0.0443686   0.0308591   0.0578781
5       6-24 months   ki1119695-PROBIT            BELARUS                        Other                NA                0.0357143   0.0254940   0.0459346
5       6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                0.1125000   0.1004202   0.1245798
5       6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Other                NA                0.1615542   0.1369568   0.1861516
5       6-24 months   ki1148112-LCNI-5            MALAWI                         Control              NA                0.3783784   0.3037709   0.4529859
5       6-24 months   ki1148112-LCNI-5            MALAWI                         LNS                  NA                0.4146341   0.3348542   0.4944141
5       6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                0.1289641   0.1108838   0.1470443
5       6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Other                NA                0.1931330   0.1727343   0.2135317
5       6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                0.3571429   0.2737145   0.4405712
5       6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     LNS                  NA                0.3333333   0.2499713   0.4166954
5       6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     MMN                  NA                0.2835821   0.1669012   0.4002630
5       6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Other                NA                0.2968750   0.2052845   0.3884655
6       0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                0.4368932   0.3409879   0.5327985
6       0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                  NA                0.3962264   0.3030010   0.4894518
6       0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                NA                0.4527363   0.3838392   0.5216335
6       0-24 months   ki1000111-WASH-Kenya        KENYA                          Control              NA                0.2521739   0.1726785   0.3316694
6       0-24 months   ki1000111-WASH-Kenya        KENYA                          LNS                  NA                0.2166667   0.1122585   0.3210748
6       0-24 months   ki1000111-WASH-Kenya        KENYA                          Other                NA                0.2589928   0.1860490   0.3319366
6       0-24 months   ki1000304-EU                INDIA                          Control              NA                0.5063291   0.3957263   0.6169319
6       0-24 months   ki1000304-EU                INDIA                          Zinc                 NA                0.5064935   0.3944640   0.6185230
6       0-24 months   ki1000304-VITAMIN-A         INDIA                          Control              NA                0.4093960   0.3694497   0.4493423
6       0-24 months   ki1000304-VITAMIN-A         INDIA                          Other                NA                0.4315068   0.3916781   0.4713356
6       0-24 months   ki1000304-Vitamin-B12       INDIA                          Control              NA                0.3750000   0.3095556   0.4404444
6       0-24 months   ki1000304-Vitamin-B12       INDIA                          Other                NA                0.4339623   0.3687830   0.4991415
6       0-24 months   ki1000304-ZnMort            INDIA                          Other                NA                0.5299145   0.4392811   0.6205480
6       0-24 months   ki1000304-ZnMort            INDIA                          Zinc                 NA                0.6140351   0.5244763   0.7035939
6       0-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control              NA                0.6346154   0.5702837   0.6989471
6       0-24 months   ki1000304b-SAS-CompFeed     INDIA                          Other                NA                0.4137931   0.3443276   0.4832586
6       0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              NA                0.2307692   0.0981178   0.3634206
6       0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                NA                0.2162162   0.1221241   0.3103083
6       0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                 NA                0.2000000   0.0827587   0.3172413
6       0-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Control              NA                0.3978495   0.3722750   0.4234240
6       0-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   LNS                  NA                0.2967033   0.2381045   0.3553020
6       0-24 months   ki1119695-PROBIT            BELARUS                        Control              NA                0.1288744   0.0956622   0.1620866
6       0-24 months   ki1119695-PROBIT            BELARUS                        Other                NA                0.0886957   0.0649314   0.1124599
6       0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                0.3556485   0.3405627   0.3707344
6       0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Other                NA                0.3734440   0.3469309   0.3999571
6       0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                0.6666667   0.6323829   0.7009504
6       0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS                  NA                0.4466019   0.3665296   0.5266743
6       0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control              NA                0.4000000   0.2236167   0.5763833
6       0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         LNS                  NA                0.4545455   0.2451973   0.6638936
6       0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Other                NA                0.3666667   0.1931650   0.5401684
6       0-24 months   ki1148112-LCNI-5            MALAWI                         Control              NA                0.6250000   0.5523589   0.6976411
6       0-24 months   ki1148112-LCNI-5            MALAWI                         LNS                  NA                0.5348837   0.4640482   0.6057192
6       0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                0.4283537   0.4054148   0.4512925
6       0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Other                NA                0.3765432   0.3545930   0.3984934
6       0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                0.4400000   0.3397232   0.5402768
6       0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     LNS                  NA                0.4645669   0.3712483   0.5578856
6       0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     MMN                  NA                0.5405405   0.4201524   0.6609286
6       0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Other                NA                0.5555556   0.4637589   0.6473522
6       0-6 months    ki1000304-VITAMIN-A         INDIA                          Control              NA                0.3125000   0.1803374   0.4446626
6       0-6 months    ki1000304-VITAMIN-A         INDIA                          Other                NA                0.4166667   0.2949274   0.5384059
6       0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Control              NA                0.3404255   0.2921420   0.3887091
6       0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Other                NA                0.2400000   0.2205415   0.2594585
6       0-6 months    ki1119695-PROBIT            BELARUS                        Control              NA                0.0599002   0.0346574   0.0851430
6       0-6 months    ki1119695-PROBIT            BELARUS                        Other                NA                0.0359066   0.0279679   0.0438454
6       0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                0.2642487   0.2491373   0.2793601
6       0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Other                NA                0.2607973   0.2342216   0.2873731
6       0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                0.3750000   0.3383285   0.4116715
6       0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         LNS                  NA                0.2613636   0.1833102   0.3394171
6       0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                0.1898527   0.1732252   0.2064802
6       0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Other                NA                0.1627907   0.1455954   0.1799860
6       0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                0.2277228   0.1316634   0.3237822
6       0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     LNS                  NA                0.2000000   0.1174472   0.2825528
6       0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     MMN                  NA                0.2063492   0.0945448   0.3181536
6       0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     Other                NA                0.2818182   0.1880874   0.3755489
6       6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                0.2162162   0.1222682   0.3101642
6       6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                  NA                0.1951220   0.1092063   0.2810376
6       6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                NA                0.2483221   0.1788370   0.3178072
6       6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control              NA                0.3888889   0.2802758   0.4975020
6       6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Other                NA                0.2340426   0.1663157   0.3017694
6       6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Control              NA                0.1944444   0.1738499   0.2150389
6       6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   LNS                  NA                0.1158798   0.0850188   0.1467409
6       6-24 months   ki1119695-PROBIT            BELARUS                        Control              NA                0.0319865   0.0188337   0.0451393
6       6-24 months   ki1119695-PROBIT            BELARUS                        Other                NA                0.0248227   0.0125275   0.0371179
6       6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                0.0909091   0.0807508   0.1010674
6       6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Other                NA                0.1503497   0.1282614   0.1724379
6       6-24 months   ki1148112-LCNI-5            MALAWI                         Control              NA                0.3103448   0.2334451   0.3872446
6       6-24 months   ki1148112-LCNI-5            MALAWI                         LNS                  NA                0.3714286   0.2831944   0.4596627
6       6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                0.2008639   0.1785084   0.2232195
6       6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Other                NA                0.1752577   0.1561082   0.1944073
6       6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                0.3000000   0.1980779   0.4019221
6       6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     LNS                  NA                0.2692308   0.1776325   0.3608290
6       6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     MMN                  NA                0.3728814   0.2425242   0.5032385
6       6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Other                NA                0.3773585   0.2798516   0.4748654
7       0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                0.5636364   0.4322881   0.6949847
7       0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                  NA                0.4107143   0.2815861   0.5398424
7       0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                NA                0.4262295   0.3382882   0.5141708
7       0-24 months   ki1000111-WASH-Kenya        KENYA                          Control              NA                0.2051282   0.0778675   0.3323889
7       0-24 months   ki1000111-WASH-Kenya        KENYA                          LNS                  NA                0.1714286   0.0460458   0.2968113
7       0-24 months   ki1000111-WASH-Kenya        KENYA                          Other                NA                0.3913043   0.2496781   0.5329306
7       0-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Control              NA                0.6798246   0.6282085   0.7314406
7       0-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Other                NA                0.6750000   0.6532956   0.6967044
7       0-24 months   ki1000304-EU                INDIA                          Control              NA                0.4857143   0.3898817   0.5815469
7       0-24 months   ki1000304-EU                INDIA                          Zinc                 NA                0.5050505   0.4063214   0.6037797
7       0-24 months   ki1000304-VITAMIN-A         INDIA                          Control              NA                0.4251497   0.3871483   0.4631511
7       0-24 months   ki1000304-VITAMIN-A         INDIA                          Other                NA                0.4723926   0.4344791   0.5103061
7       0-24 months   ki1000304-Vitamin-B12       INDIA                          Control              NA                0.4285714   0.3717549   0.4853879
7       0-24 months   ki1000304-Vitamin-B12       INDIA                          Other                NA                0.4931507   0.4313629   0.5549384
7       0-24 months   ki1000304-ZnMort            INDIA                          Other                NA                0.4366197   0.3208663   0.5523731
7       0-24 months   ki1000304-ZnMort            INDIA                          Zinc                 NA                0.5000000   0.3886647   0.6113353
7       0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              NA                0.2608696   0.1336538   0.3880853
7       0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                NA                0.2666667   0.1818682   0.3514651
7       0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                 NA                0.2340426   0.1126902   0.3553950
7       0-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Control              NA                0.4130435   0.3791426   0.4469444
7       0-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   LNS                  NA                0.2978056   0.2190022   0.3766091
7       0-24 months   ki1119695-PROBIT            BELARUS                        Control              NA                0.1160594   0.1005112   0.1316075
7       0-24 months   ki1119695-PROBIT            BELARUS                        Other                NA                0.0961776   0.0825379   0.1098172
7       0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                0.2924901   0.2777251   0.3072551
7       0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Other                NA                0.3347458   0.3091234   0.3603681
7       0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                0.5000000   0.4686242   0.5313758
7       0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS                  NA                0.5120000   0.4372325   0.5867675
7       0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control              NA                0.4500000   0.2304159   0.6695841
7       0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         LNS                  NA                0.4230769   0.2318231   0.6143308
7       0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Other                NA                0.3200000   0.1358432   0.5041568
7       0-24 months   ki1148112-LCNI-5            MALAWI                         Control              NA                0.6052632   0.5226650   0.6878613
7       0-24 months   ki1148112-LCNI-5            MALAWI                         LNS                  NA                0.6764706   0.6016927   0.7512485
7       0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                0.3726885   0.3511120   0.3942650
7       0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Other                NA                0.4071527   0.3866800   0.4276254
7       0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                0.5106383   0.4348701   0.5864065
7       0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     LNS                  NA                0.5190311   0.4508592   0.5872031
7       0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     MMN                  NA                0.5736434   0.4812730   0.6660138
7       0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Other                NA                0.5075188   0.4384605   0.5765771
7       0-6 months    ki1000304-VITAMIN-A         INDIA                          Control              NA                0.3529412   0.2471271   0.4587553
7       0-6 months    ki1000304-VITAMIN-A         INDIA                          Other                NA                0.6500000   0.5354483   0.7645517
7       0-6 months    ki1119695-PROBIT            BELARUS                        Control              NA                0.0613079   0.0483534   0.0742624
7       0-6 months    ki1119695-PROBIT            BELARUS                        Other                NA                0.0531646   0.0411410   0.0651881
7       0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                0.1450000   0.1318911   0.1581089
7       0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Other                NA                0.2000000   0.1754166   0.2245834
7       0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                0.5000000   0.4624360   0.5375640
7       0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         LNS                  NA                0.3150685   0.2207733   0.4093637
7       0-6 months    ki1148112-LCNI-5            MALAWI                         Control              NA                0.3750000   0.2418057   0.5081943
7       0-6 months    ki1148112-LCNI-5            MALAWI                         LNS                  NA                0.3846154   0.2639651   0.5052657
7       0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                0.2017804   0.1834028   0.2201580
7       0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Other                NA                0.1997126   0.1825909   0.2168344
7       0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                0.2322275   0.1695596   0.2948953
7       0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     LNS                  NA                0.2671756   0.2048106   0.3295405
7       0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     MMN                  NA                0.2750000   0.1849065   0.3650935
7       0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     Other                NA                0.2851064   0.2197656   0.3504472
7       6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                0.3076923   0.1623942   0.4529904
7       6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                  NA                0.1463415   0.0378193   0.2548636
7       6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                NA                0.1325301   0.0593607   0.2056996
7       6-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Control              NA                0.4520548   0.3837264   0.5203832
7       6-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Other                NA                0.4444444   0.4151075   0.4737814
7       6-24 months   ki1000304-VITAMIN-A         INDIA                          Control              NA                0.0761905   0.0494824   0.1028986
7       6-24 months   ki1000304-VITAMIN-A         INDIA                          Other                NA                0.0631579   0.0398654   0.0864504
7       6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Control              NA                0.2666667   0.2288731   0.3044602
7       6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   LNS                  NA                0.1439114   0.0771843   0.2106386
7       6-24 months   ki1119695-PROBIT            BELARUS                        Control              NA                0.0263889   0.0184250   0.0343528
7       6-24 months   ki1119695-PROBIT            BELARUS                        Other                NA                0.0228717   0.0176992   0.0280442
7       6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                0.1150000   0.1033111   0.1266889
7       6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Other                NA                0.1220826   0.1020646   0.1421006
7       6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                0.1487603   0.1308074   0.1667133
7       6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Other                NA                0.1807466   0.1622749   0.1992182
7       6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                0.3403141   0.2675867   0.4130416
7       6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     LNS                  NA                0.3214286   0.2549421   0.3879150
7       6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     MMN                  NA                0.4019608   0.2948362   0.5090853
7       6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Other                NA                0.2564103   0.1829538   0.3298668
8       0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                0.4128440   0.3203104   0.5053777
8       0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                  NA                0.3428571   0.2519632   0.4337511
8       0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                NA                0.4133333   0.3489167   0.4777500
8       0-24 months   ki1000111-WASH-Kenya        KENYA                          Control              NA                0.4166667   0.2548333   0.5785001
8       0-24 months   ki1000111-WASH-Kenya        KENYA                          LNS                  NA                0.3333333   0.1307281   0.5359386
8       0-24 months   ki1000111-WASH-Kenya        KENYA                          Other                NA                0.2608696   0.1333550   0.3883842
8       0-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Control              NA                0.7777778   0.7512322   0.8043234
8       0-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Other                NA                0.6165414   0.5476356   0.6854471
8       0-24 months   ki1000304-EU                INDIA                          Control              NA                0.5638298   0.4633088   0.6643508
8       0-24 months   ki1000304-EU                INDIA                          Zinc                 NA                0.4673913   0.3651635   0.5696192
8       0-24 months   ki1000304-VITAMIN-A         INDIA                          Control              NA                0.4304348   0.3967174   0.4641521
8       0-24 months   ki1000304-VITAMIN-A         INDIA                          Other                NA                0.3913043   0.3597756   0.4228331
8       0-24 months   ki1000304-Vitamin-B12       INDIA                          Control              NA                0.5000000   0.3755422   0.6244578
8       0-24 months   ki1000304-Vitamin-B12       INDIA                          Other                NA                0.6250000   0.5044942   0.7455058
8       0-24 months   ki1000304-ZnMort            INDIA                          Other                NA                0.4400000   0.3272996   0.5527004
8       0-24 months   ki1000304-ZnMort            INDIA                          Zinc                 NA                0.4878049   0.3792700   0.5963398
8       0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              NA                0.1833333   0.0852047   0.2814620
8       0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                NA                0.2429907   0.1615424   0.3244389
8       0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                 NA                0.2363636   0.1238304   0.3488969
8       0-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Control              NA                0.2692308   0.2330956   0.3053660
8       0-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   LNS                  NA                0.3533569   0.2904684   0.4162454
8       0-24 months   ki1119695-PROBIT            BELARUS                        Control              NA                0.1243842   0.1106124   0.1381561
8       0-24 months   ki1119695-PROBIT            BELARUS                        Other                NA                0.1027919   0.0890164   0.1165673
8       0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                0.3241107   0.3097563   0.3384651
8       0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Other                NA                0.3075916   0.2829961   0.3321871
8       0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                0.4347826   0.3988003   0.4707649
8       0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS                  NA                0.5607477   0.4830489   0.6384464
8       0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control              NA                0.5000000   0.3258621   0.6741379
8       0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         LNS                  NA                0.3939394   0.2263625   0.5615163
8       0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Other                NA                0.4687500   0.2949525   0.6425475
8       0-24 months   ki1148112-LCNI-5            MALAWI                         Control              NA                0.6000000   0.4989562   0.7010438
8       0-24 months   ki1148112-LCNI-5            MALAWI                         LNS                  NA                0.3478261   0.2424806   0.4531716
8       0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                0.3932203   0.3742548   0.4121859
8       0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Other                NA                0.3735763   0.3551357   0.3920169
8       0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                0.5197368   0.4283487   0.6111249
8       0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     LNS                  NA                0.4309392   0.3530664   0.5088121
8       0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     MMN                  NA                0.4141414   0.3042233   0.5240595
8       0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Other                NA                0.4610390   0.3679932   0.5540847
8       0-6 months    ki1000304-VITAMIN-A         INDIA                          Control              NA                0.3846154   0.2728362   0.4963945
8       0-6 months    ki1000304-VITAMIN-A         INDIA                          Other                NA                0.3888889   0.2956930   0.4820848
8       0-6 months    ki1119695-PROBIT            BELARUS                        Control              NA                0.0641509   0.0549625   0.0733394
8       0-6 months    ki1119695-PROBIT            BELARUS                        Other                NA                0.0546875   0.0459025   0.0634725
8       0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                0.1951220   0.1814514   0.2087925
8       0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Other                NA                0.1642036   0.1421773   0.1862299
8       0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                0.2380952   0.2000305   0.2761600
8       0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         LNS                  NA                0.3000000   0.2200641   0.3799359
8       0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                0.2630332   0.2455117   0.2805547
8       0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Other                NA                0.2071856   0.1914259   0.2229454
8       0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                0.2419355   0.1557416   0.3281293
8       0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     LNS                  NA                0.1951220   0.1298410   0.2604029
8       0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     MMN                  NA                0.2168675   0.1147740   0.3189609
8       0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     Other                NA                0.2335766   0.1560318   0.3111215
8       6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                0.1750000   0.0916115   0.2583885
8       6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                  NA                0.1204819   0.0503446   0.1906193
8       6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                NA                0.1785714   0.1205696   0.2365732
8       6-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Control              NA                0.5294118   0.4896717   0.5691519
8       6-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Other                NA                0.3647059   0.2790109   0.4504009
8       6-24 months   ki1000304-VITAMIN-A         INDIA                          Control              NA                0.1006711   0.0756322   0.1257101
8       6-24 months   ki1000304-VITAMIN-A         INDIA                          Other                NA                0.0719424   0.0511743   0.0927106
8       6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Control              NA                0.1093750   0.0858307   0.1329193
8       6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   LNS                  NA                0.1666667   0.1259829   0.2073505
8       6-24 months   ki1119695-PROBIT            BELARUS                        Control              NA                0.0304183   0.0207740   0.0400625
8       6-24 months   ki1119695-PROBIT            BELARUS                        Other                NA                0.0323834   0.0255998   0.0391670
8       6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                0.1497585   0.1372508   0.1622661
8       6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Other                NA                0.1421405   0.1213368   0.1629441
8       6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control              NA                0.2500000   0.0755795   0.4244205
8       6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         LNS                  NA                0.2592593   0.0928334   0.4256852
8       6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Other                NA                0.2173913   0.0476717   0.3871109
8       6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                0.1520661   0.1348575   0.1692747
8       6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Other                NA                0.1477080   0.1323820   0.1630339
8       6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                0.3629032   0.2649886   0.4608179
8       6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     LNS                  NA                0.2679739   0.1926754   0.3432723
8       6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     MMN                  NA                0.1818182   0.0774258   0.2862106
8       6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Other                NA                0.3007519   0.2102781   0.3912257
9       0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                0.3892216   0.3152185   0.4632246
9       0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                  NA                0.3121387   0.2430402   0.3812373
9       0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                NA                0.3911765   0.3392654   0.4430876
9       0-24 months   ki1000111-WASH-Kenya        KENYA                          Control              NA                0.2115385   0.1001135   0.3229635
9       0-24 months   ki1000111-WASH-Kenya        KENYA                          LNS                  NA                0.2800000   0.1033252   0.4566748
9       0-24 months   ki1000111-WASH-Kenya        KENYA                          Other                NA                0.3272727   0.2027948   0.4517507
9       0-24 months   ki1000304-EU                INDIA                          Control              NA                0.4805195   0.3685811   0.5924579
9       0-24 months   ki1000304-EU                INDIA                          Zinc                 NA                0.3372093   0.2369850   0.4374336
9       0-24 months   ki1000304-VITAMIN-A         INDIA                          Control              NA                0.4625850   0.4219389   0.5032312
9       0-24 months   ki1000304-VITAMIN-A         INDIA                          Other                NA                0.4758621   0.4354271   0.5162971
9       0-24 months   ki1000304-Vitamin-B12       INDIA                          Control              NA                0.4615385   0.3285749   0.5945020
9       0-24 months   ki1000304-Vitamin-B12       INDIA                          Other                NA                0.5714286   0.4344552   0.7084019
9       0-24 months   ki1000304-ZnMort            INDIA                          Other                NA                0.5697674   0.4647811   0.6747537
9       0-24 months   ki1000304-ZnMort            INDIA                          Zinc                 NA                0.3787879   0.2613718   0.4962039
9       0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              NA                0.2000000   0.0828470   0.3171530
9       0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                NA                0.2545455   0.1729443   0.3361467
9       0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                 NA                0.1923077   0.0849287   0.2996867
9       0-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Control              NA                0.3793103   0.3383829   0.4202378
9       0-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   LNS                  NA                0.3671498   0.2957110   0.4385885
9       0-24 months   ki1119695-PROBIT            BELARUS                        Control              NA                0.1329640   0.1155688   0.1503591
9       0-24 months   ki1119695-PROBIT            BELARUS                        Other                NA                0.1219512   0.1013706   0.1425319
9       0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                0.2727273   0.2594533   0.2860013
9       0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Other                NA                0.2977941   0.2743163   0.3212719
9       0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                0.4347826   0.3998784   0.4696868
9       0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS                  NA                0.4864865   0.4091752   0.5637977
9       0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control              NA                0.5116279   0.3614847   0.6617712
9       0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         LNS                  NA                0.4482759   0.2663803   0.6301714
9       0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Other                NA                0.4333333   0.2551358   0.6115309
9       0-24 months   ki1148112-LCNI-5            MALAWI                         Control              NA                0.5384615   0.4054980   0.6714251
9       0-24 months   ki1148112-LCNI-5            MALAWI                         LNS                  NA                0.4285714   0.2915981   0.5655448
9       0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                0.4060345   0.3883269   0.4237421
9       0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Other                NA                0.3577163   0.3413181   0.3741145
9       0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                0.5438596   0.4314565   0.6562628
9       0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     LNS                  NA                0.4193548   0.3374790   0.5012307
9       0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     MMN                  NA                0.4558824   0.3165227   0.5952420
9       0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Other                NA                0.4758621   0.3898899   0.5618343
9       0-6 months    ki1119695-PROBIT            BELARUS                        Control              NA                0.0688202   0.0574233   0.0802171
9       0-6 months    ki1119695-PROBIT            BELARUS                        Other                NA                0.0785973   0.0638621   0.0933326
9       0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                0.1435897   0.1315550   0.1556245
9       0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Other                NA                0.1492537   0.1277488   0.1707587
9       0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                0.2969886   0.2803996   0.3135775
9       0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Other                NA                0.2415669   0.2255859   0.2575480
9       0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                0.2500000   0.1181703   0.3818297
9       0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     LNS                  NA                0.2100840   0.1349368   0.2852312
9       0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     MMN                  NA                0.3255814   0.1618477   0.4893151
9       0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     Other                NA                0.2673267   0.1757966   0.3588568
9       6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                0.1782946   0.1121792   0.2444099
9       6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                  NA                0.1231884   0.0683015   0.1780753
9       6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                NA                0.1451613   0.1012767   0.1890459
9       6-24 months   ki1000304-VITAMIN-A         INDIA                          Control              NA                0.0795455   0.0510350   0.1080559
9       6-24 months   ki1000304-VITAMIN-A         INDIA                          Other                NA                0.0919540   0.0616812   0.1222269
9       6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Control              NA                0.1940299   0.1690776   0.2189821
9       6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   LNS                  NA                0.1676647   0.1212753   0.2140540
9       6-24 months   ki1119695-PROBIT            BELARUS                        Control              NA                0.0285307   0.0202696   0.0367917
9       6-24 months   ki1119695-PROBIT            BELARUS                        Other                NA                0.0308422   0.0233540   0.0383305
9       6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                0.1145374   0.1038570   0.1252179
9       6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Other                NA                0.1223242   0.1036719   0.1409764
9       6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control              NA                0.2666667   0.1074132   0.4259201
9       6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         LNS                  NA                0.2380952   0.0547666   0.4214239
9       6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Other                NA                0.3571429   0.1785297   0.5357561
9       6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                0.2073365   0.1883160   0.2263571
9       6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Other                NA                0.1776730   0.1617151   0.1936308
9       6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                0.3483146   0.2284616   0.4681676
9       6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     LNS                  NA                0.2578125   0.1791343   0.3364907
9       6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     MMN                  NA                0.1923077   0.0711992   0.3134161
9       6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Other                NA                0.2352941   0.1562274   0.3143609
10      0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                0.2195122   0.1298092   0.3092152
10      0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                  NA                0.1603774   0.0904315   0.2303232
10      0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                NA                0.2292683   0.1716516   0.2868849
10      0-24 months   ki1000111-WASH-Kenya        KENYA                          Control              NA                0.3349057   0.2713265   0.3984848
10      0-24 months   ki1000111-WASH-Kenya        KENYA                          LNS                  NA                0.2913907   0.2188582   0.3639232
10      0-24 months   ki1000111-WASH-Kenya        KENYA                          Other                NA                0.3287671   0.2748447   0.3826895
10      0-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Control              NA                0.5882353   0.5453764   0.6310942
10      0-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Other                NA                0.5609756   0.5089880   0.6129633
10      0-24 months   ki1000304-EU                INDIA                          Control              NA                0.4123711   0.3141373   0.5106049
10      0-24 months   ki1000304-EU                INDIA                          Zinc                 NA                0.4047619   0.2995035   0.5100203
10      0-24 months   ki1000304-VITAMIN-A         INDIA                          Control              NA                0.4536082   0.4036856   0.5035309
10      0-24 months   ki1000304-VITAMIN-A         INDIA                          Other                NA                0.3958333   0.3470480   0.4446186
10      0-24 months   ki1000304-Vitamin-B12       INDIA                          Control              NA                0.6078431   0.5297419   0.6859444
10      0-24 months   ki1000304-Vitamin-B12       INDIA                          Other                NA                0.4054054   0.3385089   0.4723019
10      0-24 months   ki1000304-ZnMort            INDIA                          Other                NA                0.5714286   0.4412538   0.7016033
10      0-24 months   ki1000304-ZnMort            INDIA                          Zinc                 NA                0.5500000   0.4235729   0.6764271
10      0-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control              NA                0.6461538   0.5958156   0.6964921
10      0-24 months   ki1000304b-SAS-CompFeed     INDIA                          Other                NA                0.6923077   0.6507332   0.7338822
10      0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              NA                0.2459016   0.1376027   0.3542005
10      0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                NA                0.2252252   0.1473447   0.3031058
10      0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                 NA                0.2413793   0.1310114   0.3517472
10      0-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Control              NA                0.3835616   0.3570142   0.4101091
10      0-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   LNS                  NA                0.2842809   0.2194825   0.3490794
10      0-24 months   ki1119695-PROBIT            BELARUS                        Control              NA                0.1463415   0.1256742   0.1670088
10      0-24 months   ki1119695-PROBIT            BELARUS                        Other                NA                0.1151515   0.1039699   0.1263331
10      0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                0.3148148   0.2994107   0.3302189
10      0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Other                NA                0.3277182   0.3006499   0.3547865
10      0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                0.6428571   0.6052747   0.6804396
10      0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS                  NA                0.5000000   0.4062529   0.5937471
10      0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control              NA                0.3333333   0.1717739   0.4948928
10      0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         LNS                  NA                0.5128205   0.3552444   0.6703967
10      0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Other                NA                0.4500000   0.2951350   0.6048650
10      0-24 months   ki1148112-LCNI-5            MALAWI                         Control              NA                0.4375000   0.3247582   0.5502418
10      0-24 months   ki1148112-LCNI-5            MALAWI                         LNS                  NA                0.5789474   0.4566720   0.7012228
10      0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                0.4426966   0.4265201   0.4588731
10      0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Other                NA                0.3843951   0.3687337   0.4000565
10      0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                0.4507042   0.3291587   0.5722497
10      0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     LNS                  NA                0.5268817   0.4134924   0.6402711
10      0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     MMN                  NA                0.4259259   0.2881788   0.5636730
10      0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Other                NA                0.4430380   0.3246939   0.5613821
10      0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Control              NA                0.2500000   0.2323830   0.2676170
10      0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Other                NA                0.2982456   0.2350340   0.3614572
10      0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              NA                0.0819672   0.0129764   0.1509580
10      0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                NA                0.1000000   0.0438135   0.1561865
10      0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                 NA                0.1071429   0.0259561   0.1883297
10      0-6 months    ki1119695-PROBIT            BELARUS                        Control              NA                0.0711610   0.0602235   0.0820986
10      0-6 months    ki1119695-PROBIT            BELARUS                        Other                NA                0.0657760   0.0574284   0.0741235
10      0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                0.1895425   0.1749353   0.2041496
10      0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Other                NA                0.1726908   0.1472761   0.1981054
10      0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                0.3520126   0.3359188   0.3681064
10      0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Other                NA                0.2929985   0.2790287   0.3069683
10      0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                0.2539683   0.1518449   0.3560916
10      0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     LNS                  NA                0.3209877   0.2103652   0.4316101
10      0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     MMN                  NA                0.2608696   0.1199047   0.4018345
10      0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     Other                NA                0.2878788   0.1756623   0.4000952
10      6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                0.0857143   0.0200375   0.1513911
10      6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                  NA                0.0531915   0.0077574   0.0986256
10      6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                NA                0.0809249   0.0402256   0.1216241
10      6-24 months   ki1000111-WASH-Kenya        KENYA                          Control              NA                0.1019108   0.0545399   0.1492817
10      6-24 months   ki1000111-WASH-Kenya        KENYA                          LNS                  NA                0.1025641   0.0475343   0.1575939
10      6-24 months   ki1000111-WASH-Kenya        KENYA                          Other                NA                0.1064815   0.0653046   0.1476584
10      6-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Control              NA                0.3333333   0.2817017   0.3849650
10      6-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Other                NA                0.3076923   0.2469375   0.3684471
10      6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control              NA                0.3414634   0.2553255   0.4276014
10      6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Other                NA                0.5250000   0.4970160   0.5529840
10      6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              NA                0.1923077   0.0849098   0.2997056
10      6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                NA                0.0927835   0.0348965   0.1506705
10      6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                 NA                0.1363636   0.0347003   0.2380270
10      6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Control              NA                0.1929825   0.1647659   0.2211990
10      6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   LNS                  NA                0.1294118   0.0974415   0.1613820
10      6-24 months   ki1119695-PROBIT            BELARUS                        Control              NA                0.0423940   0.0327772   0.0520108
10      6-24 months   ki1119695-PROBIT            BELARUS                        Other                NA                0.0330237   0.0264445   0.0396029
10      6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                0.1312500   0.1188385   0.1436615
10      6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Other                NA                0.1262136   0.1043145   0.1481127
10      6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control              NA                0.2142857   0.0614954   0.3670761
10      6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         LNS                  NA                0.4117647   0.2454592   0.5780702
10      6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Other                NA                0.2727273   0.1199700   0.4254846
10      6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                0.1943522   0.1766480   0.2120563
10      6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Other                NA                0.1729651   0.1555279   0.1904024
10      6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                0.2500000   0.1290253   0.3709747
10      6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     LNS                  NA                0.2352941   0.1250729   0.3455153
10      6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     MMN                  NA                0.1951220   0.0616262   0.3286177
10      6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Other                NA                0.2343750   0.1229991   0.3457509
11      0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                0.3095238   0.2105093   0.4085384
11      0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                  NA                0.1923077   0.1047103   0.2799051
11      0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                NA                0.3067485   0.2358462   0.3776507
11      0-24 months   ki1000111-WASH-Kenya        KENYA                          Control              NA                0.2105263   0.1575739   0.2634788
11      0-24 months   ki1000111-WASH-Kenya        KENYA                          LNS                  NA                0.2042254   0.1378759   0.2705748
11      0-24 months   ki1000111-WASH-Kenya        KENYA                          Other                NA                0.2720403   0.2282370   0.3158436
11      0-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Control              NA                0.5380711   0.5030397   0.5731024
11      0-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Other                NA                0.4153846   0.3809342   0.4498350
11      0-24 months   ki1000304-EU                INDIA                          Control              NA                0.5308642   0.4218480   0.6398804
11      0-24 months   ki1000304-EU                INDIA                          Zinc                 NA                0.4691358   0.3601196   0.5781520
11      0-24 months   ki1000304-VITAMIN-A         INDIA                          Control              NA                0.4563107   0.4090185   0.5036029
11      0-24 months   ki1000304-VITAMIN-A         INDIA                          Other                NA                0.4299065   0.3819975   0.4778156
11      0-24 months   ki1000304-Vitamin-B12       INDIA                          Control              NA                0.6410256   0.5642722   0.7177790
11      0-24 months   ki1000304-Vitamin-B12       INDIA                          Other                NA                0.5526316   0.4741011   0.6311621
11      0-24 months   ki1000304-ZnMort            INDIA                          Other                NA                0.5714286   0.4412336   0.7016235
11      0-24 months   ki1000304-ZnMort            INDIA                          Zinc                 NA                0.4464286   0.3156416   0.5772155
11      0-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control              NA                0.6279070   0.5215837   0.7342303
11      0-24 months   ki1000304b-SAS-CompFeed     INDIA                          Other                NA                0.5795455   0.4962274   0.6628635
11      0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              NA                0.1851852   0.0813331   0.2890373
11      0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                NA                0.1509434   0.0826306   0.2192562
11      0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                 NA                0.2941176   0.1687685   0.4194668
11      0-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Control              NA                0.3636364   0.3069310   0.4203418
11      0-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   LNS                  NA                0.3521127   0.2708523   0.4333730
11      0-24 months   ki1119695-PROBIT            BELARUS                        Control              NA                0.1379763   0.1184815   0.1574712
11      0-24 months   ki1119695-PROBIT            BELARUS                        Other                NA                0.1295117   0.1087940   0.1502293
11      0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                0.3083004   0.2936177   0.3229831
11      0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Other                NA                0.3035714   0.2787724   0.3283705
11      0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                0.5263158   0.4851006   0.5675310
11      0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS                  NA                0.4352941   0.3487326   0.5218556
11      0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control              NA                0.3658537   0.2178287   0.5138786
11      0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         LNS                  NA                0.4500000   0.2952125   0.6047875
11      0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Other                NA                0.4000000   0.2562931   0.5437069
11      0-24 months   ki1148112-LCNI-5            MALAWI                         Control              NA                0.4400000   0.3396956   0.5403044
11      0-24 months   ki1148112-LCNI-5            MALAWI                         LNS                  NA                0.5000000   0.4010069   0.5989931
11      0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                0.4565984   0.4405658   0.4726311
11      0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Other                NA                0.4154930   0.4006906   0.4302953
11      0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                0.3250000   0.1650700   0.4849300
11      0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     LNS                  NA                0.4561404   0.3109276   0.6013532
11      0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     MMN                  NA                0.5714286   0.3477232   0.7951339
11      0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Other                NA                0.4772727   0.3139414   0.6406041
11      0-6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Control              NA                0.3333333   0.2725428   0.3941239
11      0-6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Other                NA                0.2280702   0.1650357   0.2911046
11      0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Control              NA                0.2500000   0.1829719   0.3170281
11      0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Other                NA                0.3287671   0.2336838   0.4238504
11      0-6 months    ki1119695-PROBIT            BELARUS                        Control              NA                0.0850202   0.0698527   0.1001878
11      0-6 months    ki1119695-PROBIT            BELARUS                        Other                NA                0.0697928   0.0536819   0.0859037
11      0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                0.1343284   0.1218850   0.1467717
11      0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Other                NA                0.1408200   0.1196152   0.1620248
11      0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                0.6428571   0.5963143   0.6894000
11      0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         LNS                  NA                0.2580645   0.1686200   0.3475090
11      0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                0.3515107   0.3358652   0.3671561
11      0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Other                NA                0.3015407   0.2874875   0.3155940
11      6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                0.1594203   0.0728918   0.2459487
11      6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                  NA                0.1000000   0.0295965   0.1704035
11      6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                NA                0.1971831   0.1316258   0.2627404
11      6-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Control              NA                0.3125000   0.2655282   0.3594718
11      6-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Other                NA                0.1914894   0.1520328   0.2309459
11      6-24 months   ki1000304-VITAMIN-A         INDIA                          Control              NA                0.1230769   0.0832968   0.1628571
11      6-24 months   ki1000304-VITAMIN-A         INDIA                          Other                NA                0.0757576   0.0434712   0.1080439
11      6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control              NA                0.3750000   0.2053316   0.5446684
11      6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Other                NA                0.2363636   0.1817309   0.2909963
11      6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              NA                0.1521739   0.0480822   0.2562656
11      6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                NA                0.0689655   0.0155693   0.1223618
11      6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                 NA                0.2000000   0.0828007   0.3171993
11      6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Control              NA                0.2222222   0.1651456   0.2792988
11      6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   LNS                  NA                0.1315789   0.0903585   0.1727994
11      6-24 months   ki1119695-PROBIT            BELARUS                        Control              NA                0.0248619   0.0151492   0.0345746
11      6-24 months   ki1119695-PROBIT            BELARUS                        Other                NA                0.0325380   0.0249892   0.0400867
11      6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                0.1658537   0.1525486   0.1791587
11      6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Other                NA                0.1293103   0.1091212   0.1494995
11      6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control              NA                0.2121212   0.0719589   0.3522836
11      6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         LNS                  NA                0.3428571   0.1848346   0.5008797
11      6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Other                NA                0.2000000   0.0668342   0.3331658
11      6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                0.2182410   0.1989884   0.2374937
11      6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Other                NA                0.2318182   0.2124381   0.2511983
11      6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                0.2285714   0.0687055   0.3884374
11      6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     LNS                  NA                0.2765957   0.1343579   0.4188336
11      6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     MMN                  NA                0.3750000   0.1462937   0.6037063
11      6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Other                NA                0.2777778   0.1000237   0.4555318
12      0-24 months   ki1000107-Serrinha-VitA     BRAZIL                         Control              NA                0.2592593   0.2321283   0.2863902
12      0-24 months   ki1000107-Serrinha-VitA     BRAZIL                         Other                NA                0.3306773   0.3010755   0.3602791
12      0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                0.2500000   0.1437252   0.3562748
12      0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                  NA                0.2380952   0.1327354   0.3434550
12      0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                NA                0.3419355   0.2671254   0.4167455
12      0-24 months   ki1000111-WASH-Kenya        KENYA                          Control              NA                0.3093525   0.2549773   0.3637277
12      0-24 months   ki1000111-WASH-Kenya        KENYA                          LNS                  NA                0.1678322   0.1065346   0.2291297
12      0-24 months   ki1000111-WASH-Kenya        KENYA                          Other                NA                0.2441860   0.1917263   0.2966458
12      0-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Control              NA                0.3711340   0.3261911   0.4160770
12      0-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Other                NA                0.4234234   0.3742525   0.4725944
12      0-24 months   ki1000304-EU                INDIA                          Control              NA                0.3734940   0.2690895   0.4778984
12      0-24 months   ki1000304-EU                INDIA                          Zinc                 NA                0.4027778   0.2891229   0.5164327
12      0-24 months   ki1000304-VITAMIN-A         INDIA                          Control              NA                0.5573770   0.4947976   0.6199565
12      0-24 months   ki1000304-VITAMIN-A         INDIA                          Other                NA                0.5245902   0.4616708   0.5875096
12      0-24 months   ki1000304-Vitamin-B12       INDIA                          Control              NA                0.3617021   0.2947965   0.4286078
12      0-24 months   ki1000304-Vitamin-B12       INDIA                          Other                NA                0.4000000   0.3296414   0.4703586
12      0-24 months   ki1000304-ZnMort            INDIA                          Other                NA                0.5060241   0.3980702   0.6139780
12      0-24 months   ki1000304-ZnMort            INDIA                          Zinc                 NA                0.6111111   0.4806098   0.7416124
12      0-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control              NA                0.5921053   0.5192174   0.6649931
12      0-24 months   ki1000304b-SAS-CompFeed     INDIA                          Other                NA                0.5263158   0.4851167   0.5675149
12      0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              NA                0.1698113   0.0684699   0.2711527
12      0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                NA                0.2365591   0.1499688   0.3231494
12      0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                 NA                0.1372549   0.0425716   0.2319382
12      0-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Control              NA                0.2472325   0.1958483   0.2986166
12      0-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc                 NA                0.3210011   0.2908043   0.3511979
12      0-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Control              NA                0.3333333   0.2841702   0.3824965
12      0-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   LNS                  NA                0.3166667   0.2243910   0.4089424
12      0-24 months   ki1119695-PROBIT            BELARUS                        Control              NA                0.1435294   0.1189086   0.1681502
12      0-24 months   ki1119695-PROBIT            BELARUS                        Other                NA                0.1115660   0.0971992   0.1259328
12      0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                0.2652330   0.2521480   0.2783180
12      0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Other                NA                0.3050847   0.2816020   0.3285675
12      0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                0.5416667   0.5087853   0.5745480
12      0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS                  NA                0.5327869   0.4585531   0.6070207
12      0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control              NA                0.4680851   0.3249336   0.6112366
12      0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         LNS                  NA                0.4629630   0.3295065   0.5964194
12      0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Other                NA                0.4651163   0.3155142   0.6147183
12      0-24 months   ki1148112-LCNI-5            MALAWI                         Control              NA                0.6111111   0.4900901   0.7321321
12      0-24 months   ki1148112-LCNI-5            MALAWI                         LNS                  NA                0.6875000   0.5790142   0.7959858
12      0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                0.4312668   0.4139721   0.4485616
12      0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Other                NA                0.4309907   0.4135535   0.4484278
12      0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                0.5217391   0.3043039   0.7391744
12      0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     LNS                  NA                0.7142857   0.5201994   0.9083720
12      0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     MMN                  NA                0.4000000   0.1502732   0.6497268
12      0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Other                NA                0.4090909   0.2004115   0.6177703
12      0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Control              NA                0.3709677   0.3419448   0.3999907
12      0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Other                NA                0.2553191   0.2145973   0.2960410
12      0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Control              NA                0.3529412   0.2939799   0.4119025
12      0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Other                NA                0.3469388   0.2472329   0.4466447
12      0-6 months    ki1119695-PROBIT            BELARUS                        Control              NA                0.0673195   0.0559603   0.0786787
12      0-6 months    ki1119695-PROBIT            BELARUS                        Other                NA                0.0522307   0.0388965   0.0655648
12      0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                0.0752212   0.0661585   0.0842839
12      0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Other                NA                0.1424051   0.1223245   0.1624856
12      0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                0.3074074   0.2892523   0.3255625
12      0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Other                NA                0.2841855   0.2656090   0.3027620
12      6-24 months   ki1000107-Serrinha-VitA     BRAZIL                         Control              NA                0.0670103   0.0490711   0.0849495
12      6-24 months   ki1000107-Serrinha-VitA     BRAZIL                         Other                NA                0.0855615   0.0658586   0.1052644
12      6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                0.1724138   0.0750052   0.2698223
12      6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                  NA                0.1607143   0.0643299   0.2570986
12      6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                NA                0.2352941   0.1638607   0.3067276
12      6-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Control              NA                0.1568627   0.1041130   0.2096125
12      6-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Other                NA                0.1956522   0.1410047   0.2502996
12      6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control              NA                0.3518519   0.2731791   0.4305246
12      6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Other                NA                0.3095238   0.2499604   0.3690872
12      6-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Control              NA                0.0720721   0.0380352   0.1061089
12      6-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc                 NA                0.0791367   0.0590560   0.0992174
12      6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Control              NA                0.1764706   0.1321378   0.2208034
12      6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   LNS                  NA                0.1274510   0.0440840   0.2108180
12      6-24 months   ki1119695-PROBIT            BELARUS                        Control              NA                0.0507246   0.0293595   0.0720898
12      6-24 months   ki1119695-PROBIT            BELARUS                        Other                NA                0.0436590   0.0344795   0.0528386
12      6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                0.1434783   0.1318810   0.1550755
12      6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Other                NA                0.1569507   0.1364272   0.1774742
12      6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control              NA                0.2820513   0.1402242   0.4238783
12      6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         LNS                  NA                0.2727273   0.1405773   0.4048773
12      6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Other                NA                0.2777778   0.1308468   0.4247088
12      6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                0.2211538   0.2025858   0.2397219
12      6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Other                NA                0.2522523   0.2323916   0.2721129


### Parameter: E(Y)


month   agecat        studyid                     country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------  ------------  --------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
1       0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     NA                   NA                0.3673469   0.3223023   0.4123915
1       0-24 months   ki1000111-WASH-Kenya        KENYA                          NA                   NA                0.2307692   0.2053093   0.2562292
1       0-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       NA                   NA                0.3760331   0.3148779   0.4371883
1       0-24 months   ki1000304-EU                INDIA                          NA                   NA                0.4395604   0.3672531   0.5118678
1       0-24 months   ki1000304-VITAMIN-A         INDIA                          NA                   NA                0.4837838   0.4327948   0.5347728
1       0-24 months   ki1000304-Vitamin-B12       INDIA                          NA                   NA                0.4883721   0.4017765   0.5749677
1       0-24 months   ki1000304-ZnMort            INDIA                          NA                   NA                0.4352941   0.3292685   0.5413198
1       0-24 months   ki1000304b-SAS-CompFeed     INDIA                          NA                   NA                0.6161616   0.5457753   0.6865480
1       0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.2810458   0.2095854   0.3525062
1       0-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   NA                   NA                0.3444302   0.3208577   0.3680028
1       0-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   NA                   NA                0.3263598   0.2491685   0.4035511
1       0-24 months   ki1119695-PROBIT            BELARUS                        NA                   NA                0.1688931   0.1380474   0.1997389
1       0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       NA                   NA                0.3378723   0.3108165   0.3649282
1       0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         NA                   NA                0.5027624   0.4297200   0.5758049
1       0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         NA                   NA                0.4600000   0.3618238   0.5581762
1       0-24 months   ki1148112-LCNI-5            MALAWI                         NA                   NA                0.5357143   0.4039111   0.6675175
1       0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     NA                   NA                0.4283257   0.4003702   0.4562812
1       0-6 months    ki1000125-AgaKhanUniv       PAKISTAN                       NA                   NA                0.3448276   0.2443712   0.4452840
1       0-6 months    ki1000304b-SAS-CompFeed     INDIA                          NA                   NA                0.2692308   0.2085586   0.3299030
1       0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          NA                   NA                0.5396825   0.4156173   0.6637478
1       0-6 months    ki1119695-PROBIT            BELARUS                        NA                   NA                0.0885046   0.0612949   0.1157142
1       0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       NA                   NA                0.1744444   0.1496377   0.1992512
1       0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     NA                   NA                0.2639780   0.2336899   0.2942661
1       6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     NA                   NA                0.1960227   0.1544920   0.2375535
1       6-24 months   ki1000111-WASH-Kenya        KENYA                          NA                   NA                0.0692841   0.0523615   0.0862066
1       6-24 months   ki1000304-VITAMIN-A         INDIA                          NA                   NA                0.1244240   0.0804070   0.1684409
1       6-24 months   ki1000304b-SAS-CompFeed     INDIA                          NA                   NA                0.2539683   0.1701527   0.3377838
1       6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1967213   0.1258918   0.2675508
1       6-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   NA                   NA                0.1147959   0.0965690   0.1330229
1       6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   NA                   NA                0.1336634   0.0639762   0.2033506
1       6-24 months   ki1119695-PROBIT            BELARUS                        NA                   NA                0.0466733   0.0289344   0.0644122
1       6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       NA                   NA                0.1530055   0.1296672   0.1763437
1       6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         NA                   NA                0.2926829   0.1935971   0.3917687
1       6-24 months   ki1148112-LCNI-5            MALAWI                         NA                   NA                0.3777778   0.2345218   0.5210337
1       6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     NA                   NA                0.2351248   0.2060050   0.2642445
2       0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     NA                   NA                0.3864407   0.3307806   0.4421008
2       0-24 months   ki1000111-WASH-Kenya        KENYA                          NA                   NA                0.2139037   0.1799411   0.2478664
2       0-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       NA                   NA                0.2549020   0.1699094   0.3398945
2       0-24 months   ki1000304-EU                INDIA                          NA                   NA                0.5061728   0.4289453   0.5834004
2       0-24 months   ki1000304-VITAMIN-A         INDIA                          NA                   NA                0.4181185   0.3609532   0.4752837
2       0-24 months   ki1000304-Vitamin-B12       INDIA                          NA                   NA                0.4215686   0.3252639   0.5178733
2       0-24 months   ki1000304-ZnMort            INDIA                          NA                   NA                0.4537037   0.3593723   0.5480351
2       0-24 months   ki1000304b-SAS-CompFeed     INDIA                          NA                   NA                0.4883721   0.3440464   0.6326977
2       0-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   NA                   NA                0.3689614   0.3457143   0.3922084
2       0-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   NA                   NA                0.3990385   0.3301929   0.4678840
2       0-24 months   ki1119695-PROBIT            BELARUS                        NA                   NA                0.1659751   0.1246547   0.2072955
2       0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       NA                   NA                0.3314670   0.3005749   0.3623591
2       0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         NA                   NA                0.4780488   0.4095025   0.5465951
2       0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         NA                   NA                0.4835165   0.3796643   0.5873687
2       0-24 months   ki1148112-LCNI-5            MALAWI                         NA                   NA                0.5130435   0.4212910   0.6047960
2       0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     NA                   NA                0.4354515   0.4045247   0.4663783
2       0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     NA                   NA                0.4493151   0.3941485   0.5044816
2       0-6 months    ki1000304b-SAS-CompFeed     INDIA                          NA                   NA                0.2388060   0.1054005   0.3722114
2       0-6 months    ki1119695-PROBIT            BELARUS                        NA                   NA                0.0730337   0.0481552   0.0979122
2       0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       NA                   NA                0.1720257   0.1423427   0.2017087
2       0-6 months    ki1148112-LCNI-5            MALAWI                         NA                   NA                0.3404255   0.2034913   0.4773598
2       0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     NA                   NA                0.2551020   0.2185862   0.2916179
2       0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     NA                   NA                0.2439024   0.1872707   0.3005342
2       6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     NA                   NA                0.2192982   0.1654718   0.2731246
2       6-24 months   ki1000111-WASH-Kenya        KENYA                          NA                   NA                0.0480349   0.0284294   0.0676405
2       6-24 months   ki1000304-VITAMIN-A         INDIA                          NA                   NA                0.0625000   0.0266363   0.0983637
2       6-24 months   ki1000304b-SAS-CompFeed     INDIA                          NA                   NA                0.1803279   0.0886923   0.2719635
2       6-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   NA                   NA                0.1210614   0.1026436   0.1394791
2       6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   NA                   NA                0.1562500   0.1016338   0.2108662
2       6-24 months   ki1119695-PROBIT            BELARUS                        NA                   NA                0.0683031   0.0353848   0.1012214
2       6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       NA                   NA                0.1343706   0.1092133   0.1595279
2       6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         NA                   NA                0.2260274   0.1579493   0.2941055
2       6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         NA                   NA                0.3552632   0.2458994   0.4646269
2       6-24 months   ki1148112-LCNI-5            MALAWI                         NA                   NA                0.2441860   0.1528575   0.3355146
2       6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     NA                   NA                0.2646121   0.2308644   0.2983598
2       6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     NA                   NA                0.2491468   0.1951329   0.3031606
3       0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     NA                   NA                0.4634146   0.4124665   0.5143628
3       0-24 months   ki1000111-WASH-Kenya        KENYA                          NA                   NA                0.2208696   0.1869332   0.2548059
3       0-24 months   ki1000304-EU                INDIA                          NA                   NA                0.4659686   0.3950381   0.5368991
3       0-24 months   ki1000304-VITAMIN-A         INDIA                          NA                   NA                0.4812287   0.4239200   0.5385373
3       0-24 months   ki1000304-ZnMort            INDIA                          NA                   NA                0.4898785   0.4274100   0.5523471
3       0-24 months   ki1000304b-SAS-CompFeed     INDIA                          NA                   NA                0.4941176   0.3726914   0.6155439
3       0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.2590361   0.1921887   0.3258836
3       0-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   NA                   NA                0.3177570   0.2300038   0.4055102
3       0-24 months   ki1119695-PROBIT            BELARUS                        NA                   NA                0.1403962   0.1074440   0.1733485
3       0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       NA                   NA                0.3400201   0.3106005   0.3694396
3       0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         NA                   NA                0.4229075   0.3584996   0.4873154
3       0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         NA                   NA                0.4606742   0.3565313   0.5648170
3       0-24 months   ki1148112-LCNI-5            MALAWI                         NA                   NA                0.5918367   0.4940274   0.6896460
3       0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     NA                   NA                0.3397717   0.3161608   0.3633827
3       0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     NA                   NA                0.4661017   0.4166644   0.5155389
3       0-6 months    ki1000304b-SAS-CompFeed     INDIA                          NA                   NA                0.2567568   0.1488789   0.3646346
3       0-6 months    ki1119695-PROBIT            BELARUS                        NA                   NA                0.0639432   0.0416340   0.0862524
3       0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       NA                   NA                0.1640625   0.1378540   0.1902710
3       0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         NA                   NA                0.2136752   0.1390824   0.2882681
3       0-6 months    ki1148112-LCNI-5            MALAWI                         NA                   NA                0.3448276   0.2214349   0.4682203
3       0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     NA                   NA                0.2048479   0.1834926   0.2262032
3       0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     NA                   NA                0.2811736   0.2337752   0.3285720
3       6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     NA                   NA                0.2150943   0.1655300   0.2646587
3       6-24 months   ki1000304-VITAMIN-A         INDIA                          NA                   NA                0.0833333   0.0414149   0.1252518
3       6-24 months   ki1000304b-SAS-CompFeed     INDIA                          NA                   NA                0.2881356   0.1521887   0.4240824
3       6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   NA                   NA                0.1530055   0.0674011   0.2386098
3       6-24 months   ki1119695-PROBIT            BELARUS                        NA                   NA                0.0519366   0.0295767   0.0742965
3       6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       NA                   NA                0.1286624   0.1052250   0.1520998
3       6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         NA                   NA                0.2062500   0.1433590   0.2691410
3       6-24 months   ki1148112-LCNI-5            MALAWI                         NA                   NA                0.3333333   0.2212896   0.4453770
3       6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     NA                   NA                0.1948276   0.1686516   0.2210036
3       6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     NA                   NA                0.2613333   0.2133293   0.3093374
4       0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     NA                   NA                0.4487472   0.4021685   0.4953258
4       0-24 months   ki1000111-WASH-Kenya        KENYA                          NA                   NA                0.2552693   0.2260094   0.2845292
4       0-24 months   ki1000304-EU                INDIA                          NA                   NA                0.4790419   0.4030474   0.5550364
4       0-24 months   ki1000304-VITAMIN-A         INDIA                          NA                   NA                0.4418605   0.3893053   0.4944156
4       0-24 months   ki1000304-ZnMort            INDIA                          NA                   NA                0.5037594   0.4435613   0.5639575
4       0-24 months   ki1000304b-SAS-CompFeed     INDIA                          NA                   NA                0.5500000   0.3614805   0.7385195
4       0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.3313609   0.2601839   0.4025380
4       0-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   NA                   NA                0.3551913   0.2601369   0.4502456
4       0-24 months   ki1119695-PROBIT            BELARUS                        NA                   NA                0.1231310   0.0926452   0.1536169
4       0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       NA                   NA                0.3283922   0.2972930   0.3594915
4       0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         NA                   NA                0.5260664   0.4585331   0.5935996
4       0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         NA                   NA                0.3731343   0.2564544   0.4898142
4       0-24 months   ki1148112-LCNI-5            MALAWI                         NA                   NA                0.6486486   0.5594358   0.7378615
4       0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     NA                   NA                0.3546832   0.3255456   0.3838208
4       0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     NA                   NA                0.5245726   0.4873383   0.5618070
4       0-6 months    ki1000304b-SAS-CompFeed     INDIA                          NA                   NA                0.2153846   0.0878388   0.3429304
4       0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0963855   0.0513554   0.1414157
4       0-6 months    ki1119695-PROBIT            BELARUS                        NA                   NA                0.0617620   0.0405585   0.0829656
4       0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       NA                   NA                0.1857355   0.1563324   0.2151387
4       0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         NA                   NA                0.3087248   0.2342982   0.3831515
4       0-6 months    ki1148112-LCNI-5            MALAWI                         NA                   NA                0.4081633   0.2691215   0.5472051
4       0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     NA                   NA                0.1927928   0.1657096   0.2198760
4       0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     NA                   NA                0.2505995   0.2167336   0.2844654
4       6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     NA                   NA                0.2407407   0.1941160   0.2873655
4       6-24 months   ki1000111-WASH-Kenya        KENYA                          NA                   NA                0.0725689   0.0531838   0.0919541
4       6-24 months   ki1000304-VITAMIN-A         INDIA                          NA                   NA                0.0867580   0.0493928   0.1241232
4       6-24 months   ki1000304b-SAS-CompFeed     INDIA                          NA                   NA                0.2931034   0.1382724   0.4479345
4       6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.2580645   0.1807355   0.3353936
4       6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   NA                   NA                0.1836735   0.1030053   0.2643417
4       6-24 months   ki1119695-PROBIT            BELARUS                        NA                   NA                0.0372727   0.0231156   0.0514299
4       6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       NA                   NA                0.1217009   0.0971457   0.1462560
4       6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         NA                   NA                0.2137405   0.1432707   0.2842102
4       6-24 months   ki1148112-LCNI-5            MALAWI                         NA                   NA                0.3571429   0.2440847   0.4702010
4       6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     NA                   NA                0.1628866   0.1370251   0.1887481
4       6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     NA                   NA                0.3159341   0.2776781   0.3541900
5       0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     NA                   NA                0.4579256   0.4146852   0.5011661
5       0-24 months   ki1000111-WASH-Kenya        KENYA                          NA                   NA                0.2679372   0.2388568   0.2970176
5       0-24 months   ki1000304-EU                INDIA                          NA                   NA                0.5140187   0.4188718   0.6091655
5       0-24 months   ki1000304-VITAMIN-A         INDIA                          NA                   NA                0.4081081   0.3579613   0.4582550
5       0-24 months   ki1000304-ZnMort            INDIA                          NA                   NA                0.5579710   0.4992744   0.6166676
5       0-24 months   ki1000304b-SAS-CompFeed     INDIA                          NA                   NA                0.6341463   0.5387397   0.7295530
5       0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.2033898   0.1439224   0.2628573
5       0-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   NA                   NA                0.3682171   0.2745243   0.4619098
5       0-24 months   ki1119695-PROBIT            BELARUS                        NA                   NA                0.1084337   0.0794093   0.1374582
5       0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       NA                   NA                0.3531469   0.3211477   0.3851460
5       0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         NA                   NA                0.5000000   0.4349563   0.5650437
5       0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         NA                   NA                0.4133333   0.3011371   0.5255295
5       0-24 months   ki1148112-LCNI-5            MALAWI                         NA                   NA                0.6146789   0.5228939   0.7064639
5       0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     NA                   NA                0.3801965   0.3497221   0.4106709
5       0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     NA                   NA                0.5184000   0.4744656   0.5623344
5       0-6 months    ki1000304b-SAS-CompFeed     INDIA                          NA                   NA                0.2876712   0.1856881   0.3896544
5       0-6 months    ki1119695-PROBIT            BELARUS                        NA                   NA                0.0520741   0.0289729   0.0751753
5       0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       NA                   NA                0.2054598   0.1754214   0.2354982
5       0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         NA                   NA                0.2413793   0.1776136   0.3051451
5       0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     NA                   NA                0.1899489   0.1636609   0.2162369
5       0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     NA                   NA                0.2476008   0.2068501   0.2883514
5       6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     NA                   NA                0.2426667   0.1992196   0.2861138
5       6-24 months   ki1000111-WASH-Kenya        KENYA                          NA                   NA                0.0675105   0.0490550   0.0859661
5       6-24 months   ki1000304-VITAMIN-A         INDIA                          NA                   NA                0.0632911   0.0322265   0.0943557
5       6-24 months   ki1000304b-SAS-CompFeed     INDIA                          NA                   NA                0.3461538   0.1802622   0.5120455
5       6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   NA                   NA                0.1393035   0.0654457   0.2131613
5       6-24 months   ki1119695-PROBIT            BELARUS                        NA                   NA                0.0401396   0.0232259   0.0570533
5       6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       NA                   NA                0.1494607   0.1220089   0.1769125
5       6-24 months   ki1148112-LCNI-5            MALAWI                         NA                   NA                0.3974359   0.2881314   0.5067404
5       6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     NA                   NA                0.1608094   0.1334750   0.1881438
5       6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     NA                   NA                0.3237705   0.2779440   0.3695969
6       0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     NA                   NA                0.4341463   0.3861115   0.4821812
6       0-24 months   ki1000111-WASH-Kenya        KENYA                          NA                   NA                0.2484076   0.2005392   0.2962761
6       0-24 months   ki1000304-EU                INDIA                          NA                   NA                0.5064103   0.4277027   0.5851178
6       0-24 months   ki1000304-VITAMIN-A         INDIA                          NA                   NA                0.4203390   0.3639153   0.4767627
6       0-24 months   ki1000304-Vitamin-B12       INDIA                          NA                   NA                0.4036697   0.3111376   0.4962019
6       0-24 months   ki1000304-ZnMort            INDIA                          NA                   NA                0.5714286   0.5074732   0.6353839
6       0-24 months   ki1000304b-SAS-CompFeed     INDIA                          NA                   NA                0.5181818   0.3944325   0.6419312
6       0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.2151899   0.1509076   0.2794722
6       0-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   NA                   NA                0.3224044   0.2544782   0.3903305
6       0-24 months   ki1119695-PROBIT            BELARUS                        NA                   NA                0.1094276   0.0678472   0.1510080
6       0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       NA                   NA                0.3690229   0.3385144   0.3995313
6       0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         NA                   NA                0.4838710   0.3955550   0.5721870
6       0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         NA                   NA                0.4024390   0.2956451   0.5092330
6       0-24 months   ki1148112-LCNI-5            MALAWI                         NA                   NA                0.5824176   0.4805314   0.6843037
6       0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     NA                   NA                0.4026074   0.3707118   0.4345029
6       0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     NA                   NA                0.4967462   0.4463818   0.5471106
6       0-6 months    ki1000304-VITAMIN-A         INDIA                          NA                   NA                0.3571429   0.1764070   0.5378788
6       0-6 months    ki1000304b-SAS-CompFeed     INDIA                          NA                   NA                0.2886598   0.2283945   0.3489251
6       0-6 months    ki1119695-PROBIT            BELARUS                        NA                   NA                0.0483592   0.0209428   0.0757757
6       0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       NA                   NA                0.2616352   0.2310634   0.2922070
6       0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         NA                   NA                0.2788462   0.1922446   0.3654477
6       0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     NA                   NA                0.1764221   0.1524948   0.2003494
6       0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     NA                   NA                0.2317708   0.1841549   0.2793868
6       6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     NA                   NA                0.2262295   0.1791977   0.2732614
6       6-24 months   ki1000304b-SAS-CompFeed     INDIA                          NA                   NA                0.3012048   0.1624246   0.4399851
6       6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   NA                   NA                0.1344262   0.0954770   0.1733755
6       6-24 months   ki1119695-PROBIT            BELARUS                        NA                   NA                0.0284974   0.0105284   0.0464664
6       6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       NA                   NA                0.1357049   0.1113244   0.1600854
6       6-24 months   ki1148112-LCNI-5            MALAWI                         NA                   NA                0.3437500   0.2264673   0.4610327
6       6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     NA                   NA                0.1877637   0.1582566   0.2172708
6       6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     NA                   NA                0.3252033   0.2734492   0.3769573
7       0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     NA                   NA                0.4549356   0.3908585   0.5190127
7       0-24 months   ki1000111-WASH-Kenya        KENYA                          NA                   NA                0.2666667   0.1872138   0.3461196
7       0-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       NA                   NA                0.6791045   0.6231103   0.7350986
7       0-24 months   ki1000304-EU                INDIA                          NA                   NA                0.4950980   0.4263201   0.5638760
7       0-24 months   ki1000304-VITAMIN-A         INDIA                          NA                   NA                0.4484848   0.3947442   0.5022255
7       0-24 months   ki1000304-Vitamin-B12       INDIA                          NA                   NA                0.4632353   0.3791202   0.5473504
7       0-24 months   ki1000304-ZnMort            INDIA                          NA                   NA                0.4697987   0.3893917   0.5502056
7       0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.2575758   0.1965106   0.3186409
7       0-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   NA                   NA                0.3236010   0.2381578   0.4090442
7       0-24 months   ki1119695-PROBIT            BELARUS                        NA                   NA                0.1056701   0.0838344   0.1275058
7       0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       NA                   NA                0.3236212   0.2940257   0.3532167
7       0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         NA                   NA                0.5102041   0.4291171   0.5912911
7       0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         NA                   NA                0.3943662   0.2798798   0.5088526
7       0-24 months   ki1148112-LCNI-5            MALAWI                         NA                   NA                0.6388889   0.5271635   0.7506143
7       0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     NA                   NA                0.3902098   0.3604970   0.4199226
7       0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     NA                   NA                0.5212187   0.4836407   0.5587968
7       0-6 months    ki1000304-VITAMIN-A         INDIA                          NA                   NA                0.5135135   0.3502428   0.6767842
7       0-6 months    ki1119695-PROBIT            BELARUS                        NA                   NA                0.0570866   0.0391677   0.0750055
7       0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       NA                   NA                0.1852349   0.1573198   0.2131500
7       0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         NA                   NA                0.3373494   0.2350146   0.4396842
7       0-6 months    ki1148112-LCNI-5            MALAWI                         NA                   NA                0.3793103   0.1995873   0.5590334
7       0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     NA                   NA                0.2007299   0.1756125   0.2258474
7       0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     NA                   NA                0.2644928   0.2303357   0.2986498
7       6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     NA                   NA                0.1779141   0.1190224   0.2368058
7       6-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       NA                   NA                0.4508671   0.3765058   0.5252283
7       6-24 months   ki1000304-VITAMIN-A         INDIA                          NA                   NA                0.0700000   0.0345503   0.1054497
7       6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   NA                   NA                0.1705202   0.0921438   0.2488967
7       6-24 months   ki1119695-PROBIT            BELARUS                        NA                   NA                0.0245521   0.0150158   0.0340884
7       6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       NA                   NA                0.1202114   0.0970295   0.1433933
7       6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     NA                   NA                0.1651561   0.1393831   0.1909291
7       6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     NA                   NA                0.3202247   0.2817382   0.3587113
8       0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     NA                   NA                0.3963554   0.3505471   0.4421636
8       0-24 months   ki1000111-WASH-Kenya        KENYA                          NA                   NA                0.3300971   0.2388383   0.4213559
8       0-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       NA                   NA                0.6437500   0.5693136   0.7181864
8       0-24 months   ki1000304-EU                INDIA                          NA                   NA                0.5161290   0.4441168   0.5881412
8       0-24 months   ki1000304-VITAMIN-A         INDIA                          NA                   NA                0.4118993   0.3657010   0.4580976
8       0-24 months   ki1000304-Vitamin-B12       INDIA                          NA                   NA                0.5625000   0.3878705   0.7371295
8       0-24 months   ki1000304-ZnMort            INDIA                          NA                   NA                0.4649682   0.3866996   0.5432367
8       0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.2252252   0.1701510   0.2802994
8       0-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   NA                   NA                0.3351801   0.2624007   0.4079594
8       0-24 months   ki1119695-PROBIT            BELARUS                        NA                   NA                0.1137500   0.0930214   0.1344786
8       0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       NA                   NA                0.3117011   0.2832198   0.3401823
8       0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         NA                   NA                0.5384615   0.4524346   0.6244885
8       0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         NA                   NA                0.4536082   0.3540207   0.5531958
8       0-24 months   ki1148112-LCNI-5            MALAWI                         NA                   NA                0.4651163   0.3142702   0.6159623
8       0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     NA                   NA                0.3834373   0.3569761   0.4098985
8       0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     NA                   NA                0.4590444   0.4133218   0.5047670
8       0-6 months    ki1000304-VITAMIN-A         INDIA                          NA                   NA                0.3863636   0.2408286   0.5318987
8       0-6 months    ki1119695-PROBIT            BELARUS                        NA                   NA                0.0595010   0.0465128   0.0724891
8       0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       NA                   NA                0.1719902   0.1460500   0.1979303
8       0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         NA                   NA                0.2871287   0.1984556   0.3758018
8       0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     NA                   NA                0.2352591   0.2115456   0.2589726
8       0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     NA                   NA                0.2204724   0.1803825   0.2605624
8       6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     NA                   NA                0.1631420   0.1232762   0.2030077
8       6-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       NA                   NA                0.3921569   0.2969402   0.4873736
8       6-24 months   ki1000304-VITAMIN-A         INDIA                          NA                   NA                0.0868056   0.0542322   0.1193789
8       6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   NA                   NA                0.1541096   0.1065978   0.2016214
8       6-24 months   ki1119695-PROBIT            BELARUS                        NA                   NA                0.0313901   0.0196108   0.0431695
8       6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       NA                   NA                0.1440994   0.1198242   0.1683746
8       6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         NA                   NA                0.2432432   0.1448228   0.3416637
8       6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     NA                   NA                0.1499162   0.1268621   0.1729704
8       6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     NA                   NA                0.2874743   0.2418007   0.3331480
9       0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     NA                   NA                0.3705882   0.3342615   0.4069150
9       0-24 months   ki1000111-WASH-Kenya        KENYA                          NA                   NA                0.2727273   0.1964623   0.3489923
9       0-24 months   ki1000304-EU                INDIA                          NA                   NA                0.4049080   0.3293186   0.4804974
9       0-24 months   ki1000304-VITAMIN-A         INDIA                          NA                   NA                0.4691781   0.4118398   0.5265164
9       0-24 months   ki1000304-Vitamin-B12       INDIA                          NA                   NA                0.5185185   0.3264601   0.7105769
9       0-24 months   ki1000304-ZnMort            INDIA                          NA                   NA                0.4868421   0.4071199   0.5665643
9       0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.2270531   0.1698456   0.2842607
9       0-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   NA                   NA                0.3707483   0.2876093   0.4538873
9       0-24 months   ki1119695-PROBIT            BELARUS                        NA                   NA                0.1269741   0.0996285   0.1543197
9       0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       NA                   NA                0.2914757   0.2644975   0.3184539
9       0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         NA                   NA                0.4776119   0.3927220   0.5625019
9       0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         NA                   NA                0.4705882   0.3732452   0.5679312
9       0-24 months   ki1148112-LCNI-5            MALAWI                         NA                   NA                0.4814815   0.2894231   0.6735399
9       0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     NA                   NA                0.3822885   0.3581084   0.4064685
9       0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     NA                   NA                0.4709544   0.4212435   0.5206652
9       0-6 months    ki1119695-PROBIT            BELARUS                        NA                   NA                0.0740741   0.0555271   0.0926211
9       0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       NA                   NA                0.1478697   0.1232257   0.1725137
9       0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     NA                   NA                0.2699256   0.2467894   0.2930618
9       0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     NA                   NA                0.2507645   0.1987793   0.3027498
9       6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     NA                   NA                0.1475728   0.1169110   0.1782347
9       6-24 months   ki1000304-VITAMIN-A         INDIA                          NA                   NA                0.0857143   0.0441193   0.1273093
9       6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   NA                   NA                0.1752137   0.1235555   0.2268718
9       6-24 months   ki1119695-PROBIT            BELARUS                        NA                   NA                0.0297927   0.0186566   0.0409289
9       6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       NA                   NA                0.1203178   0.0988230   0.1418127
9       6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         NA                   NA                0.2911392   0.1903227   0.3919557
9       6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     NA                   NA                0.1923990   0.1674763   0.2173218
9       6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     NA                   NA                0.2628866   0.2147321   0.3110411
10      0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     NA                   NA                0.2086514   0.1684261   0.2488767
10      0-24 months   ki1000111-WASH-Kenya        KENYA                          NA                   NA                0.3221374   0.2863236   0.3579512
10      0-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       NA                   NA                0.5721154   0.5047141   0.6395167
10      0-24 months   ki1000304-EU                INDIA                          NA                   NA                0.4088398   0.3370205   0.4806591
10      0-24 months   ki1000304-VITAMIN-A         INDIA                          NA                   NA                0.4248705   0.3549493   0.4947916
10      0-24 months   ki1000304-Vitamin-B12       INDIA                          NA                   NA                0.5227273   0.4177708   0.6276838
10      0-24 months   ki1000304-ZnMort            INDIA                          NA                   NA                0.5603448   0.4696290   0.6510606
10      0-24 months   ki1000304b-SAS-CompFeed     INDIA                          NA                   NA                0.6692308   0.6029063   0.7355553
10      0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.2347826   0.1798847   0.2896805
10      0-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   NA                   NA                0.3037634   0.2338265   0.3737004
10      0-24 months   ki1119695-PROBIT            BELARUS                        NA                   NA                0.1292818   0.1045363   0.1540272
10      0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       NA                   NA                0.3245109   0.2933642   0.3556576
10      0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         NA                   NA                0.5212766   0.4197492   0.6228039
10      0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         NA                   NA                0.4375000   0.3452138   0.5297862
10      0-24 months   ki1148112-LCNI-5            MALAWI                         NA                   NA                0.5142857   0.3462888   0.6822826
10      0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     NA                   NA                0.4128843   0.3901996   0.4355690
10      0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     NA                   NA                0.4680135   0.4067759   0.5292510
10      0-6 months    ki1000304b-SAS-CompFeed     INDIA                          NA                   NA                0.2743363   0.2070966   0.3415760
10      0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0969163   0.0583457   0.1354869
10      0-6 months    ki1119695-PROBIT            BELARUS                        NA                   NA                0.0682074   0.0543734   0.0820415
10      0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       NA                   NA                0.1766513   0.1473328   0.2059698
10      0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     NA                   NA                0.3219682   0.3004541   0.3434824
10      0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     NA                   NA                0.2851563   0.2273028   0.3430097
10      6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     NA                   NA                0.0741840   0.0461622   0.1022058
10      6-24 months   ki1000111-WASH-Kenya        KENYA                          NA                   NA                0.1040816   0.0770162   0.1311471
10      6-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       NA                   NA                0.3181818   0.2384220   0.3979417
10      6-24 months   ki1000304b-SAS-CompFeed     INDIA                          NA                   NA                0.4320988   0.3021690   0.5620285
10      6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1295337   0.0820368   0.1770305
10      6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   NA                   NA                0.1410256   0.0970242   0.1850271
10      6-24 months   ki1119695-PROBIT            BELARUS                        NA                   NA                0.0372671   0.0253590   0.0491751
10      6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       NA                   NA                0.1274074   0.1022352   0.1525796
10      6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         NA                   NA                0.3052632   0.2121670   0.3983593
10      6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     NA                   NA                0.1829457   0.1580858   0.2078057
10      6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     NA                   NA                0.2314410   0.1723463   0.2905358
11      0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     NA                   NA                0.2800000   0.2311099   0.3288901
11      0-24 months   ki1000111-WASH-Kenya        KENYA                          NA                   NA                0.2411995   0.2109035   0.2714955
11      0-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       NA                   NA                0.4770408   0.4275333   0.5265484
11      0-24 months   ki1000304-EU                INDIA                          NA                   NA                0.5000000   0.4227666   0.5772334
11      0-24 months   ki1000304-VITAMIN-A         INDIA                          NA                   NA                0.4428571   0.3755145   0.5101998
11      0-24 months   ki1000304-Vitamin-B12       INDIA                          NA                   NA                0.5974026   0.4871445   0.7076607
11      0-24 months   ki1000304-ZnMort            INDIA                          NA                   NA                0.5089286   0.4159276   0.6019295
11      0-24 months   ki1000304b-SAS-CompFeed     INDIA                          NA                   NA                0.5954198   0.4555089   0.7353308
11      0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1943128   0.1407982   0.2478274
11      0-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   NA                   NA                0.3553299   0.2556215   0.4550384
11      0-24 months   ki1119695-PROBIT            BELARUS                        NA                   NA                0.1332942   0.1043307   0.1622576
11      0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       NA                   NA                0.3047910   0.2759710   0.3336110
11      0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         NA                   NA                0.4519231   0.3558100   0.5480362
11      0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         NA                   NA                0.4047619   0.3187144   0.4908094
11      0-24 months   ki1148112-LCNI-5            MALAWI                         NA                   NA                0.4693878   0.3282049   0.6105706
11      0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     NA                   NA                0.4360240   0.4141650   0.4578829
11      0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     NA                   NA                0.4444444   0.3603906   0.5284983
11      0-6 months    ki1000125-AgaKhanUniv       PAKISTAN                       NA                   NA                0.2727273   0.1845518   0.3609028
11      0-6 months    ki1000304b-SAS-CompFeed     INDIA                          NA                   NA                0.3047619   0.1877802   0.4217436
11      0-6 months    ki1119695-PROBIT            BELARUS                        NA                   NA                0.0765983   0.0540766   0.0991200
11      0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       NA                   NA                0.1391076   0.1145206   0.1636946
11      0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         NA                   NA                0.3289474   0.2226166   0.4352781
11      0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     NA                   NA                0.3264706   0.3053677   0.3475735
11      6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     NA                   NA                0.1637011   0.1203624   0.2070397
11      6-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       NA                   NA                0.2526316   0.1906834   0.3145797
11      6-24 months   ki1000304-VITAMIN-A         INDIA                          NA                   NA                0.0992366   0.0478420   0.1506313
11      6-24 months   ki1000304b-SAS-CompFeed     INDIA                          NA                   NA                0.2873563   0.0901626   0.4845500
11      6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1235955   0.0751096   0.1720814
11      6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   NA                   NA                0.1572327   0.0813664   0.2330990
11      6-24 months   ki1119695-PROBIT            BELARUS                        NA                   NA                0.0291616   0.0169429   0.0413803
11      6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       NA                   NA                0.1388535   0.1146484   0.1630586
11      6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         NA                   NA                0.2524272   0.1681242   0.3367301
11      6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     NA                   NA                0.2252747   0.1979529   0.2525966
11      6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     NA                   NA                0.2761194   0.1909245   0.3613143
12      0-24 months   ki1000107-Serrinha-VitA     BRAZIL                         NA                   NA                0.2955466   0.2552689   0.3358242
12      0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     NA                   NA                0.2978723   0.2444014   0.3513433
12      0-24 months   ki1000111-WASH-Kenya        KENYA                          NA                   NA                0.2547865   0.2219874   0.2875855
12      0-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       NA                   NA                0.3990385   0.3323280   0.4657489
12      0-24 months   ki1000304-EU                INDIA                          NA                   NA                0.3870968   0.3101672   0.4640264
12      0-24 months   ki1000304-VITAMIN-A         INDIA                          NA                   NA                0.5409836   0.4521941   0.6297731
12      0-24 months   ki1000304-Vitamin-B12       INDIA                          NA                   NA                0.3814433   0.2842766   0.4786099
12      0-24 months   ki1000304-ZnMort            INDIA                          NA                   NA                0.5474453   0.4637917   0.6310988
12      0-24 months   ki1000304b-SAS-CompFeed     INDIA                          NA                   NA                0.5639098   0.4729601   0.6548595
12      0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1928934   0.1376546   0.2481322
12      0-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   NA                   NA                0.3042017   0.2780512   0.3303522
12      0-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   NA                   NA                0.3209877   0.2173914   0.4245839
12      0-24 months   ki1119695-PROBIT            BELARUS                        NA                   NA                0.1264368   0.0964395   0.1564341
12      0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       NA                   NA                0.2950226   0.2681210   0.3219243
12      0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         NA                   NA                0.5342466   0.4530546   0.6154385
12      0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         NA                   NA                0.4652778   0.3835254   0.5470301
12      0-24 months   ki1148112-LCNI-5            MALAWI                         NA                   NA                0.6470588   0.4840113   0.8101063
12      0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     NA                   NA                0.4311247   0.4065656   0.4556837
12      0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     NA                   NA                0.5185185   0.4069409   0.6300961
12      0-6 months    ki1000304b-SAS-CompFeed     INDIA                          NA                   NA                0.3211009   0.2516269   0.3905749
12      0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          NA                   NA                0.3484848   0.2326483   0.4643214
12      0-6 months    ki1119695-PROBIT            BELARUS                        NA                   NA                0.0593318   0.0418586   0.0768050
12      0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       NA                   NA                0.1247086   0.1025888   0.1468285
12      0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     NA                   NA                0.2955784   0.2696122   0.3215447
12      6-24 months   ki1000107-Serrinha-VitA     BRAZIL                         NA                   NA                0.0761155   0.0494529   0.1027780
12      6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     NA                   NA                0.2040000   0.1539482   0.2540518
12      6-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       NA                   NA                0.1752577   0.0992058   0.2513097
12      6-24 months   ki1000304b-SAS-CompFeed     INDIA                          NA                   NA                0.3333333   0.2334129   0.4332538
12      6-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   NA                   NA                0.0774264   0.0601185   0.0947343
12      6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   NA                   NA                0.1397059   0.0451702   0.2342416
12      6-24 months   ki1119695-PROBIT            BELARUS                        NA                   NA                0.0469274   0.0235055   0.0703493
12      6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       NA                   NA                0.1535039   0.1299272   0.1770805
12      6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         NA                   NA                0.2773109   0.1965379   0.3580839
12      6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     NA                   NA                0.2372093   0.2099769   0.2644417


### Parameter: RR


month   agecat        studyid                     country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------  ------------  --------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
1       0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
1       0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                  Control           1.2046784   0.8365156   1.7348749
1       0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                Control           1.1843885   0.8534292   1.6436936
1       0-24 months   ki1000111-WASH-Kenya        KENYA                          Control              Control           1.0000000   1.0000000   1.0000000
1       0-24 months   ki1000111-WASH-Kenya        KENYA                          LNS                  Control           0.8290906   0.6005018   1.1446945
1       0-24 months   ki1000111-WASH-Kenya        KENYA                          Other                Control           1.1741158   0.9174789   1.5025391
1       0-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Control              Control           1.0000000   1.0000000   1.0000000
1       0-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Other                Control           0.7752101   0.6574654   0.9140415
1       0-24 months   ki1000304-EU                INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
1       0-24 months   ki1000304-EU                INDIA                          Zinc                 Control           0.8153310   0.5870915   1.1323017
1       0-24 months   ki1000304-VITAMIN-A         INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
1       0-24 months   ki1000304-VITAMIN-A         INDIA                          Other                Control           1.0445734   0.9400369   1.1607349
1       0-24 months   ki1000304-Vitamin-B12       INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
1       0-24 months   ki1000304-Vitamin-B12       INDIA                          Other                Control           0.7857143   0.6563971   0.9405084
1       0-24 months   ki1000304-ZnMort            INDIA                          Other                Other             1.0000000   1.0000000   1.0000000
1       0-24 months   ki1000304-ZnMort            INDIA                          Zinc                 Other             0.6847826   0.4100035   1.1437151
1       0-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
1       0-24 months   ki1000304b-SAS-CompFeed     INDIA                          Other                Control           0.9387492   0.8386503   1.0507956
1       0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              Control           1.0000000   1.0000000   1.0000000
1       0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                Control           0.9704641   0.5394961   1.7457043
1       0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                 Control           0.7843137   0.3626123   1.6964344
1       0-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Control              Control           1.0000000   1.0000000   1.0000000
1       0-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc                 Control           1.4355765   1.2054077   1.7096953
1       0-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Control              Control           1.0000000   1.0000000   1.0000000
1       0-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   LNS                  Control           0.7541899   0.6014719   0.9456842
1       0-24 months   ki1119695-PROBIT            BELARUS                        Control              Control           1.0000000   1.0000000   1.0000000
1       0-24 months   ki1119695-PROBIT            BELARUS                        Other                Control           0.9731801   0.8114223   1.1671843
1       0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control              Control           1.0000000   1.0000000   1.0000000
1       0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Other                Control           1.0049582   0.9276215   1.0887425
1       0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
1       0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS                  Control           1.0471111   0.9054791   1.2108967
1       0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
1       0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         LNS                  Control           1.2071006   0.6633166   2.1966763
1       0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Other                Control           1.3730769   0.8149724   2.3133793
1       0-24 months   ki1148112-LCNI-5            MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
1       0-24 months   ki1148112-LCNI-5            MALAWI                         LNS                  Control           1.0640394   0.8317569   1.3611909
1       0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
1       0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Other                Control           0.9518686   0.8917710   1.0160163
1       0-6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Control              Control           1.0000000   1.0000000   1.0000000
1       0-6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Other                Control           0.6071429   0.4476626   0.8234381
1       0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
1       0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Other                Control           1.0227273   0.8164881   1.2810610
1       0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
1       0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Other                Control           1.3130699   1.0397471   1.6582423
1       0-6 months    ki1119695-PROBIT            BELARUS                        Control              Control           1.0000000   1.0000000   1.0000000
1       0-6 months    ki1119695-PROBIT            BELARUS                        Other                Control           1.1212724   0.8282310   1.5179965
1       0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control              Control           1.0000000   1.0000000   1.0000000
1       0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Other                Control           1.0508214   0.9114918   1.2114488
1       0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
1       0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Other                Control           0.8360396   0.7450486   0.9381430
1       6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
1       6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                  Control           1.1347222   0.6248687   2.0605840
1       6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                Control           1.0383523   0.6074659   1.7748740
1       6-24 months   ki1000111-WASH-Kenya        KENYA                          Control              Control           1.0000000   1.0000000   1.0000000
1       6-24 months   ki1000111-WASH-Kenya        KENYA                          LNS                  Control           0.9893748   0.4992859   1.9605254
1       6-24 months   ki1000111-WASH-Kenya        KENYA                          Other                Control           1.3156369   0.7498080   2.3084582
1       6-24 months   ki1000304-VITAMIN-A         INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
1       6-24 months   ki1000304-VITAMIN-A         INDIA                          Other                Control           0.9904762   0.6953499   1.4108625
1       6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
1       6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Other                Control           0.6600000   0.4610238   0.9448536
1       6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              Control           1.0000000   1.0000000   1.0000000
1       6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                Control           1.3562500   0.5348438   3.4391613
1       6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                 Control           1.1481481   0.3702366   3.5605453
1       6-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Control              Control           1.0000000   1.0000000   1.0000000
1       6-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc                 Control           1.8644068   1.2298449   2.8263829
1       6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Control              Control           1.0000000   1.0000000   1.0000000
1       6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   LNS                  Control           0.3136235   0.2016191   0.4878491
1       6-24 months   ki1119695-PROBIT            BELARUS                        Control              Control           1.0000000   1.0000000   1.0000000
1       6-24 months   ki1119695-PROBIT            BELARUS                        Other                Control           1.0727448   0.7296254   1.5772223
1       6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control              Control           1.0000000   1.0000000   1.0000000
1       6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Other                Control           1.0848214   0.9312446   1.2637255
1       6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
1       6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         LNS                  Control           0.8000000   0.3180731   2.0121160
1       6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Other                Control           0.9600000   0.4512686   2.0422427
1       6-24 months   ki1148112-LCNI-5            MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
1       6-24 months   ki1148112-LCNI-5            MALAWI                         LNS                  Control           0.6818182   0.4615286   1.0072529
1       6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
1       6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Other                Control           1.1720109   1.0357493   1.3261989
2       0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
2       0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                  Control           0.9027778   0.5908432   1.3793977
2       0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                Control           1.0579310   0.7505665   1.4911644
2       0-24 months   ki1000111-WASH-Kenya        KENYA                          Control              Control           1.0000000   1.0000000   1.0000000
2       0-24 months   ki1000111-WASH-Kenya        KENYA                          LNS                  Control           1.1157025   0.7144376   1.7423384
2       0-24 months   ki1000111-WASH-Kenya        KENYA                          Other                Control           1.0943396   0.7529670   1.5904802
2       0-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Control              Control           1.0000000   1.0000000   1.0000000
2       0-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Other                Control           1.6141414   1.1418210   2.2818398
2       0-24 months   ki1000304-EU                INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
2       0-24 months   ki1000304-EU                INDIA                          Zinc                 Control           0.8021739   0.5885000   1.0934290
2       0-24 months   ki1000304-VITAMIN-A         INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
2       0-24 months   ki1000304-VITAMIN-A         INDIA                          Other                Control           0.7746783   0.6743953   0.8898735
2       0-24 months   ki1000304-Vitamin-B12       INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
2       0-24 months   ki1000304-Vitamin-B12       INDIA                          Other                Control           0.8695652   0.6913082   1.0937866
2       0-24 months   ki1000304-ZnMort            INDIA                          Other                Other             1.0000000   1.0000000   1.0000000
2       0-24 months   ki1000304-ZnMort            INDIA                          Zinc                 Other             1.2380952   0.8106846   1.8908461
2       0-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
2       0-24 months   ki1000304b-SAS-CompFeed     INDIA                          Other                Control           0.8297872   0.6161020   1.1175857
2       0-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Control              Control           1.0000000   1.0000000   1.0000000
2       0-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc                 Control           1.1731524   1.0157793   1.3549071
2       0-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Control              Control           1.0000000   1.0000000   1.0000000
2       0-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   LNS                  Control           0.9833279   0.8281624   1.1675653
2       0-24 months   ki1119695-PROBIT            BELARUS                        Control              Control           1.0000000   1.0000000   1.0000000
2       0-24 months   ki1119695-PROBIT            BELARUS                        Other                Control           0.8212655   0.6463216   1.0435627
2       0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control              Control           1.0000000   1.0000000   1.0000000
2       0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Other                Control           0.8365607   0.7618093   0.9186469
2       0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
2       0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS                  Control           0.7754386   0.6710278   0.8960955
2       0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
2       0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         LNS                  Control           1.0673077   0.6099047   1.8677439
2       0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Other                Control           1.3214286   0.8036955   2.1726803
2       0-24 months   ki1148112-LCNI-5            MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
2       0-24 months   ki1148112-LCNI-5            MALAWI                         LNS                  Control           1.0166468   0.8501502   1.2157509
2       0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
2       0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Other                Control           1.0351646   0.9639442   1.1116472
2       0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
2       0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     LNS                  Control           1.0469867   0.7457276   1.4699485
2       0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     MMN                  Control           1.0883483   0.7729331   1.5324766
2       0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Other                Control           0.9740260   0.6941063   1.3668318
2       0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
2       0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Other                Control           0.7179487   0.4391150   1.1738391
2       0-6 months    ki1119695-PROBIT            BELARUS                        Control              Control           1.0000000   1.0000000   1.0000000
2       0-6 months    ki1119695-PROBIT            BELARUS                        Other                Control           0.8055556   0.5820936   1.1148031
2       0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control              Control           1.0000000   1.0000000   1.0000000
2       0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Other                Control           0.6996999   0.5874202   0.8334408
2       0-6 months    ki1148112-LCNI-5            MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
2       0-6 months    ki1148112-LCNI-5            MALAWI                         LNS                  Control           0.4444444   0.2830934   0.6977587
2       0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
2       0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Other                Control           0.7973873   0.6921611   0.9186105
2       0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
2       0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     LNS                  Control           0.8246154   0.3989850   1.7043011
2       0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     MMN                  Control           1.4888889   0.7924155   2.7975098
2       0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     Other                Control           1.1652174   0.6054415   2.2425478
2       6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
2       6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                  Control           0.9708223   0.4825945   1.9529769
2       6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                Control           1.0762174   0.5943714   1.9486870
2       6-24 months   ki1000111-WASH-Kenya        KENYA                          Control              Control           1.0000000   1.0000000   1.0000000
2       6-24 months   ki1000111-WASH-Kenya        KENYA                          LNS                  Control           1.4455446   0.5603847   3.7288655
2       6-24 months   ki1000111-WASH-Kenya        KENYA                          Other                Control           0.5189573   0.1837227   1.4658871
2       6-24 months   ki1000304-VITAMIN-A         INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
2       6-24 months   ki1000304-VITAMIN-A         INDIA                          Other                Control           0.6786942   0.3780207   1.2185199
2       6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
2       6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Other                Control           0.6190476   0.3983341   0.9620566
2       6-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Control              Control           1.0000000   1.0000000   1.0000000
2       6-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc                 Control           1.1037610   0.7916274   1.5389669
2       6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Control              Control           1.0000000   1.0000000   1.0000000
2       6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   LNS                  Control           1.2032520   0.8376858   1.7283515
2       6-24 months   ki1119695-PROBIT            BELARUS                        Control              Control           1.0000000   1.0000000   1.0000000
2       6-24 months   ki1119695-PROBIT            BELARUS                        Other                Control           0.8994675   0.5552355   1.4571149
2       6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control              Control           1.0000000   1.0000000   1.0000000
2       6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Other                Control           0.7727802   0.6400062   0.9330991
2       6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
2       6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS                  Control           0.9935484   0.7351597   1.3427538
2       6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
2       6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         LNS                  Control           1.0333333   0.4293073   2.4872107
2       6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Other                Control           1.6533333   0.8219094   3.3258060
2       6-24 months   ki1148112-LCNI-5            MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
2       6-24 months   ki1148112-LCNI-5            MALAWI                         LNS                  Control           1.1523810   0.7918166   1.6771332
2       6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
2       6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Other                Control           1.4543617   1.2726594   1.6620063
2       6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
2       6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     LNS                  Control           1.1215278   0.6399434   1.9655247
2       6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     MMN                  Control           1.2363636   0.6799669   2.2480432
2       6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Other                Control           0.9444444   0.5129810   1.7388077
3       0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
3       0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                  Control           0.6742832   0.4883408   0.9310255
3       0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                Control           0.8298246   0.6509313   1.0578824
3       0-24 months   ki1000111-WASH-Kenya        KENYA                          Control              Control           1.0000000   1.0000000   1.0000000
3       0-24 months   ki1000111-WASH-Kenya        KENYA                          LNS                  Control           0.7941463   0.5059435   1.2465195
3       0-24 months   ki1000111-WASH-Kenya        KENYA                          Other                Control           1.0617391   0.7587791   1.4856629
3       0-24 months   ki1000304-EU                INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
3       0-24 months   ki1000304-EU                INDIA                          Zinc                 Control           0.9935714   0.7309939   1.3504684
3       0-24 months   ki1000304-VITAMIN-A         INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
3       0-24 months   ki1000304-VITAMIN-A         INDIA                          Other                Control           0.9627903   0.8546620   1.0845984
3       0-24 months   ki1000304-ZnMort            INDIA                          Other                Other             1.0000000   1.0000000   1.0000000
3       0-24 months   ki1000304-ZnMort            INDIA                          Zinc                 Other             1.0634921   0.8222918   1.3754429
3       0-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
3       0-24 months   ki1000304b-SAS-CompFeed     INDIA                          Other                Control           1.4444444   1.1727062   1.7791496
3       0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              Control           1.0000000   1.0000000   1.0000000
3       0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                Control           0.6506024   0.3504255   1.2079131
3       0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                 Control           0.8297872   0.4307824   1.5983634
3       0-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Control              Control           1.0000000   1.0000000   1.0000000
3       0-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   LNS                  Control           0.8713376   0.6586594   1.1526885
3       0-24 months   ki1119695-PROBIT            BELARUS                        Control              Control           1.0000000   1.0000000   1.0000000
3       0-24 months   ki1119695-PROBIT            BELARUS                        Other                Control           0.8175362   0.6447200   1.0366755
3       0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control              Control           1.0000000   1.0000000   1.0000000
3       0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Other                Control           0.9539310   0.8748402   1.0401722
3       0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
3       0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS                  Control           1.0857143   0.9322221   1.2644793
3       0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
3       0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         LNS                  Control           1.6079734   0.8132730   3.1792258
3       0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Other                Control           1.5714286   0.7534703   3.2773524
3       0-24 months   ki1148112-LCNI-5            MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
3       0-24 months   ki1148112-LCNI-5            MALAWI                         LNS                  Control           0.8709677   0.7375813   1.0284762
3       0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
3       0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Other                Control           0.8631356   0.8054705   0.9249290
3       0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
3       0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     LNS                  Control           0.9140859   0.6702996   1.2465368
3       0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     MMN                  Control           1.1592506   0.8152806   1.6483429
3       0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Other                Control           1.0135135   0.7706550   1.3329046
3       0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
3       0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Other                Control           2.3800000   1.6329641   3.4687842
3       0-6 months    ki1119695-PROBIT            BELARUS                        Control              Control           1.0000000   1.0000000   1.0000000
3       0-6 months    ki1119695-PROBIT            BELARUS                        Other                Control           0.8736462   0.6098947   1.2514581
3       0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control              Control           1.0000000   1.0000000   1.0000000
3       0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Other                Control           0.9387887   0.8001294   1.1014770
3       0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
3       0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         LNS                  Control           0.8247423   0.5810326   1.1706742
3       0-6 months    ki1148112-LCNI-5            MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
3       0-6 months    ki1148112-LCNI-5            MALAWI                         LNS                  Control           0.5769231   0.3951654   0.8422808
3       0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
3       0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Other                Control           0.7790799   0.7022291   0.8643410
3       0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
3       0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     LNS                  Control           1.3746745   0.8479777   2.2285136
3       0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     MMN                  Control           1.2261905   0.6105998   2.4624034
3       0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     Other                Control           1.1976744   0.7448747   1.9257253
3       6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
3       6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                  Control           0.4092072   0.1899898   0.8813657
3       6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                Control           0.8304498   0.5013402   1.3756067
3       6-24 months   ki1000304-VITAMIN-A         INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
3       6-24 months   ki1000304-VITAMIN-A         INDIA                          Other                Control           0.8250000   0.4976157   1.3677723
3       6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
3       6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Other                Control           1.3333333   0.8396005   2.1174092
3       6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Control              Control           1.0000000   1.0000000   1.0000000
3       6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   LNS                  Control           0.5651289   0.2978585   1.0722227
3       6-24 months   ki1119695-PROBIT            BELARUS                        Control              Control           1.0000000   1.0000000   1.0000000
3       6-24 months   ki1119695-PROBIT            BELARUS                        Other                Control           1.0528572   0.6810582   1.6276264
3       6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control              Control           1.0000000   1.0000000   1.0000000
3       6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Other                Control           0.7160641   0.5955403   0.8609791
3       6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
3       6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS                  Control           1.1368421   0.8376833   1.5428383
3       6-24 months   ki1148112-LCNI-5            MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
3       6-24 months   ki1148112-LCNI-5            MALAWI                         LNS                  Control           1.5609756   1.1020155   2.2110803
3       6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
3       6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Other                Control           0.9519952   0.8321203   1.0891392
3       6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
3       6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     LNS                  Control           0.7678693   0.4411061   1.3366925
3       6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     MMN                  Control           1.1247863   0.6059737   2.0877875
3       6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Other                Control           0.9993746   0.6284509   1.5892244
4       0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
4       0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                  Control           1.0256881   0.7396740   1.4222968
4       0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                Control           1.3305164   1.0214075   1.7331711
4       0-24 months   ki1000111-WASH-Kenya        KENYA                          Control              Control           1.0000000   1.0000000   1.0000000
4       0-24 months   ki1000111-WASH-Kenya        KENYA                          LNS                  Control           0.8301562   0.5894687   1.1691195
4       0-24 months   ki1000111-WASH-Kenya        KENYA                          Other                Control           1.1041147   0.8480212   1.4375457
4       0-24 months   ki1000304-EU                INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
4       0-24 months   ki1000304-EU                INDIA                          Zinc                 Control           1.0099368   0.7353204   1.3871126
4       0-24 months   ki1000304-VITAMIN-A         INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
4       0-24 months   ki1000304-VITAMIN-A         INDIA                          Other                Control           0.8340342   0.7398574   0.9401988
4       0-24 months   ki1000304-ZnMort            INDIA                          Other                Other             1.0000000   1.0000000   1.0000000
4       0-24 months   ki1000304-ZnMort            INDIA                          Zinc                 Other             0.8344828   0.6577430   1.0587136
4       0-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
4       0-24 months   ki1000304b-SAS-CompFeed     INDIA                          Other                Control           1.1071429   0.7783403   1.5748450
4       0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              Control           1.0000000   1.0000000   1.0000000
4       0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                Control           0.7540107   0.4446444   1.2786219
4       0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                 Control           1.1058824   0.6552652   1.8663829
4       0-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Control              Control           1.0000000   1.0000000   1.0000000
4       0-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   LNS                  Control           1.1609337   0.8762080   1.5381815
4       0-24 months   ki1119695-PROBIT            BELARUS                        Control              Control           1.0000000   1.0000000   1.0000000
4       0-24 months   ki1119695-PROBIT            BELARUS                        Other                Control           0.9820546   0.7663348   1.2584985
4       0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control              Control           1.0000000   1.0000000   1.0000000
4       0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Other                Control           0.9568792   0.8703970   1.0519542
4       0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
4       0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS                  Control           0.8976937   0.7893792   1.0208706
4       0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
4       0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         LNS                  Control           1.1250000   0.5658352   2.2367377
4       0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Other                Control           0.6818182   0.2941614   1.5803433
4       0-24 months   ki1148112-LCNI-5            MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
4       0-24 months   ki1148112-LCNI-5            MALAWI                         LNS                  Control           1.2276786   1.0677333   1.4115835
4       0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
4       0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Other                Control           0.8285968   0.7631387   0.8996696
4       0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
4       0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     LNS                  Control           1.0177018   0.8501139   1.2183273
4       0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     MMN                  Control           1.1228070   0.9181603   1.3730669
4       0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Other                Control           0.9653872   0.7814025   1.1926920
4       0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
4       0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Other                Control           1.2789474   0.6992989   2.3390660
4       0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              Control           1.0000000   1.0000000   1.0000000
4       0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                Control           0.6351351   0.1936005   2.0836549
4       0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                 Control           1.2533333   0.4099328   3.8319560
4       0-6 months    ki1119695-PROBIT            BELARUS                        Control              Control           1.0000000   1.0000000   1.0000000
4       0-6 months    ki1119695-PROBIT            BELARUS                        Other                Control           1.0918373   0.7682996   1.5516196
4       0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control              Control           1.0000000   1.0000000   1.0000000
4       0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Other                Control           1.0450758   0.8920315   1.2243776
4       0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
4       0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         LNS                  Control           0.8637874   0.6784523   1.0997511
4       0-6 months    ki1148112-LCNI-5            MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
4       0-6 months    ki1148112-LCNI-5            MALAWI                         LNS                  Control           1.0909091   0.7755564   1.5344888
4       0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
4       0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Other                Control           0.8250521   0.7160764   0.9506123
4       0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
4       0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     LNS                  Control           1.4163880   1.0075530   1.9911160
4       0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     MMN                  Control           1.4950216   1.0080081   2.2173328
4       0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     Other                Control           1.1860389   0.7946213   1.7702624
4       6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
4       6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                  Control           0.8225000   0.4444885   1.5219881
4       6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                Control           1.3786667   0.8684802   2.1885608
4       6-24 months   ki1000111-WASH-Kenya        KENYA                          Control              Control           1.0000000   1.0000000   1.0000000
4       6-24 months   ki1000111-WASH-Kenya        KENYA                          LNS                  Control           1.3582315   0.5357391   3.4434538
4       6-24 months   ki1000111-WASH-Kenya        KENYA                          Other                Control           2.4977061   1.1768816   5.3009035
4       6-24 months   ki1000304-VITAMIN-A         INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
4       6-24 months   ki1000304-VITAMIN-A         INDIA                          Other                Control           1.5221675   0.9792731   2.3660344
4       6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
4       6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Other                Control           0.8730159   0.5293612   1.4397668
4       6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              Control           1.0000000   1.0000000   1.0000000
4       6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                Control           0.6349206   0.2999228   1.3440931
4       6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                 Control           1.1827957   0.5717842   2.4467371
4       6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Control              Control           1.0000000   1.0000000   1.0000000
4       6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   LNS                  Control           0.6608696   0.4682274   0.9327701
4       6-24 months   ki1119695-PROBIT            BELARUS                        Control              Control           1.0000000   1.0000000   1.0000000
4       6-24 months   ki1119695-PROBIT            BELARUS                        Other                Control           0.7885375   0.5360170   1.1600219
4       6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control              Control           1.0000000   1.0000000   1.0000000
4       6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Other                Control           0.8355435   0.6823982   1.0230581
4       6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
4       6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS                  Control           0.5045872   0.3578407   0.7115128
4       6-24 months   ki1148112-LCNI-5            MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
4       6-24 months   ki1148112-LCNI-5            MALAWI                         LNS                  Control           0.7952586   0.5776516   1.0948403
4       6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
4       6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Other                Control           0.9356061   0.7982173   1.0966420
4       6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
4       6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     LNS                  Control           0.9676294   0.7244015   1.2925244
4       6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     MMN                  Control           1.1087420   0.7787330   1.5786012
4       6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Other                Control           0.8945105   0.6203153   1.2899071
5       0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
5       0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                  Control           0.8067227   0.6145858   1.0589269
5       0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                Control           0.9624060   0.7724556   1.1990661
5       0-24 months   ki1000111-WASH-Kenya        KENYA                          Control              Control           1.0000000   1.0000000   1.0000000
5       0-24 months   ki1000111-WASH-Kenya        KENYA                          LNS                  Control           1.0341463   0.7630657   1.4015290
5       0-24 months   ki1000111-WASH-Kenya        KENYA                          Other                Control           1.2042944   0.9387113   1.5450170
5       0-24 months   ki1000304-EU                INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
5       0-24 months   ki1000304-EU                INDIA                          Zinc                 Control           0.8799489   0.6070058   1.2756223
5       0-24 months   ki1000304-VITAMIN-A         INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
5       0-24 months   ki1000304-VITAMIN-A         INDIA                          Other                Control           1.0024373   0.8865283   1.1335008
5       0-24 months   ki1000304-ZnMort            INDIA                          Other                Other             1.0000000   1.0000000   1.0000000
5       0-24 months   ki1000304-ZnMort            INDIA                          Zinc                 Other             0.9856115   0.7986128   1.2163968
5       0-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
5       0-24 months   ki1000304b-SAS-CompFeed     INDIA                          Other                Control           0.8042553   0.7271410   0.8895477
5       0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              Control           1.0000000   1.0000000   1.0000000
5       0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                Control           0.7536082   0.3758676   1.5109720
5       0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                 Control           1.0459459   0.4755324   2.3005856
5       0-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Control              Control           1.0000000   1.0000000   1.0000000
5       0-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   LNS                  Control           0.7774510   0.6063922   0.9967643
5       0-24 months   ki1119695-PROBIT            BELARUS                        Control              Control           1.0000000   1.0000000   1.0000000
5       0-24 months   ki1119695-PROBIT            BELARUS                        Other                Control           0.8482270   0.6570643   1.0950055
5       0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control              Control           1.0000000   1.0000000   1.0000000
5       0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Other                Control           1.0331921   0.9436763   1.1311992
5       0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
5       0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS                  Control           1.5538462   1.3595132   1.7759576
5       0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
5       0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         LNS                  Control           1.2560386   0.6180414   2.5526335
5       0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Other                Control           1.3333333   0.6779068   2.6224516
5       0-24 months   ki1148112-LCNI-5            MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
5       0-24 months   ki1148112-LCNI-5            MALAWI                         LNS                  Control           1.0594228   0.9123252   1.2302373
5       0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
5       0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Other                Control           1.0521629   0.9711413   1.1399440
5       0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
5       0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     LNS                  Control           0.9918129   0.8063750   1.2198949
5       0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     MMN                  Control           1.0397422   0.8136812   1.3286086
5       0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Other                Control           0.8233918   0.6395876   1.0600175
5       0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
5       0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Other                Control           0.8119048   0.5841223   1.1285125
5       0-6 months    ki1119695-PROBIT            BELARUS                        Control              Control           1.0000000   1.0000000   1.0000000
5       0-6 months    ki1119695-PROBIT            BELARUS                        Other                Control           0.9574194   0.6214644   1.4749867
5       0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control              Control           1.0000000   1.0000000   1.0000000
5       0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Other                Control           1.1123695   0.9608852   1.2877356
5       0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
5       0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         LNS                  Control           1.3591837   1.0413877   1.7739601
5       0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
5       0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Other                Control           0.9641956   0.8393877   1.1075611
5       0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
5       0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     LNS                  Control           0.9718935   0.6658203   1.4186664
5       0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     MMN                  Control           1.1680000   0.7430892   1.8358819
5       0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     Other                Control           0.5572519   0.3136546   0.9900370
5       6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
5       6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                  Control           0.7148829   0.4170773   1.2253306
5       6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                Control           1.0593322   0.6914454   1.6229551
5       6-24 months   ki1000111-WASH-Kenya        KENYA                          Control              Control           1.0000000   1.0000000   1.0000000
5       6-24 months   ki1000111-WASH-Kenya        KENYA                          LNS                  Control           0.9924812   0.4944172   1.9922828
5       6-24 months   ki1000111-WASH-Kenya        KENYA                          Other                Control           0.8466327   0.4496638   1.5940507
5       6-24 months   ki1000304-VITAMIN-A         INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
5       6-24 months   ki1000304-VITAMIN-A         INDIA                          Other                Control           1.4380165   0.8726555   2.3696540
5       6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
5       6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Other                Control           0.9714286   0.6079103   1.5523235
5       6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Control              Control           1.0000000   1.0000000   1.0000000
5       6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   LNS                  Control           0.5968652   0.4001462   0.8902948
5       6-24 months   ki1119695-PROBIT            BELARUS                        Control              Control           1.0000000   1.0000000   1.0000000
5       6-24 months   ki1119695-PROBIT            BELARUS                        Other                Control           0.8049451   0.5284130   1.2261935
5       6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control              Control           1.0000000   1.0000000   1.0000000
5       6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Other                Control           1.4360373   1.1919353   1.7301299
5       6-24 months   ki1148112-LCNI-5            MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
5       6-24 months   ki1148112-LCNI-5            MALAWI                         LNS                  Control           1.0958188   0.8319370   1.4434013
5       6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
5       6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Other                Control           1.4975726   1.2565085   1.7848855
5       6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
5       6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     LNS                  Control           0.9333333   0.6628583   1.3141740
5       6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     MMN                  Control           0.7940299   0.4946853   1.2745142
5       6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Other                Control           0.8312500   0.5645037   1.2240426
6       0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
6       0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                  Control           0.9069182   0.6573832   1.2511739
6       0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                Control           1.0362631   0.7933539   1.3535464
6       0-24 months   ki1000111-WASH-Kenya        KENYA                          Control              Control           1.0000000   1.0000000   1.0000000
6       0-24 months   ki1000111-WASH-Kenya        KENYA                          LNS                  Control           0.8591954   0.4830688   1.5281814
6       0-24 months   ki1000111-WASH-Kenya        KENYA                          Other                Control           1.0270404   0.6729744   1.5673880
6       0-24 months   ki1000304-EU                INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
6       0-24 months   ki1000304-EU                INDIA                          Zinc                 Control           1.0003247   0.7330475   1.3650540
6       0-24 months   ki1000304-VITAMIN-A         INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
6       0-24 months   ki1000304-VITAMIN-A         INDIA                          Other                Control           1.0540085   0.9215362   1.2055240
6       0-24 months   ki1000304-Vitamin-B12       INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
6       0-24 months   ki1000304-Vitamin-B12       INDIA                          Other                Control           1.1572327   0.9192297   1.4568585
6       0-24 months   ki1000304-ZnMort            INDIA                          Other                Other             1.0000000   1.0000000   1.0000000
6       0-24 months   ki1000304-ZnMort            INDIA                          Zinc                 Other             1.1587436   0.9254798   1.4508007
6       0-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
6       0-24 months   ki1000304b-SAS-CompFeed     INDIA                          Other                Control           0.6520376   0.5359180   0.7933174
6       0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              Control           1.0000000   1.0000000   1.0000000
6       0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                Control           0.9369369   0.4556135   1.9267444
6       0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                 Control           0.8666667   0.3813217   1.9697569
6       0-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Control              Control           1.0000000   1.0000000   1.0000000
6       0-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   LNS                  Control           0.7457677   0.6062858   0.9173389
6       0-24 months   ki1119695-PROBIT            BELARUS                        Control              Control           1.0000000   1.0000000   1.0000000
6       0-24 months   ki1119695-PROBIT            BELARUS                        Other                Control           0.6882334   0.4738946   0.9995159
6       0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control              Control           1.0000000   1.0000000   1.0000000
6       0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Other                Control           1.0500366   0.9666897   1.1405695
6       0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
6       0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS                  Control           0.6699029   0.5559126   0.8072670
6       0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
6       0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         LNS                  Control           1.1363636   0.6006209   2.1499788
6       0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Other                Control           0.9166667   0.4800760   1.7503017
6       0-24 months   ki1148112-LCNI-5            MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
6       0-24 months   ki1148112-LCNI-5            MALAWI                         LNS                  Control           0.8558140   0.7175572   1.0207095
6       0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
6       0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Other                Control           0.8790475   0.8121594   0.9514443
6       0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
6       0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     LNS                  Control           1.0558339   0.7792168   1.4306484
6       0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     MMN                  Control           1.2285012   0.8932610   1.6895568
6       0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Other                Control           1.2626263   0.9528638   1.6730880
6       0-6 months    ki1000304-VITAMIN-A         INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
6       0-6 months    ki1000304-VITAMIN-A         INDIA                          Other                Control           1.3333333   0.7974402   2.2293555
6       0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
6       0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Other                Control           0.7050000   0.5987477   0.8301075
6       0-6 months    ki1119695-PROBIT            BELARUS                        Control              Control           1.0000000   1.0000000   1.0000000
6       0-6 months    ki1119695-PROBIT            BELARUS                        Other                Control           0.5994415   0.3730112   0.9633224
6       0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control              Control           1.0000000   1.0000000   1.0000000
6       0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Other                Control           0.9869390   0.8780966   1.1092726
6       0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
6       0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         LNS                  Control           0.6969697   0.5090261   0.9543062
6       0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
6       0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Other                Control           0.8574579   0.7474996   0.9835912
6       0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
6       0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     LNS                  Control           0.8782609   0.4867521   1.5846714
6       0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     MMN                  Control           0.9061422   0.4560140   1.8005888
6       0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     Other                Control           1.2375494   0.7232169   2.1176614
6       6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
6       6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                  Control           0.9024390   0.4861373   1.6752391
6       6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                Control           1.1484899   0.6849796   1.9256473
6       6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
6       6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Other                Control           0.6018237   0.4023717   0.9001423
6       6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Control              Control           1.0000000   1.0000000   1.0000000
6       6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   LNS                  Control           0.5959534   0.4469824   0.7945736
6       6-24 months   ki1119695-PROBIT            BELARUS                        Control              Control           1.0000000   1.0000000   1.0000000
6       6-24 months   ki1119695-PROBIT            BELARUS                        Other                Control           0.7760358   0.4059206   1.4836191
6       6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control              Control           1.0000000   1.0000000   1.0000000
6       6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Other                Control           1.6538460   1.3750971   1.9891007
6       6-24 months   ki1148112-LCNI-5            MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
6       6-24 months   ki1148112-LCNI-5            MALAWI                         LNS                  Control           1.1968254   0.8490882   1.6869755
6       6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
6       6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Other                Control           0.8725197   0.7465394   1.0197595
6       6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
6       6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     LNS                  Control           0.8974359   0.5548767   1.4514779
6       6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     MMN                  Control           1.2429379   0.7634118   2.0236713
6       6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Other                Control           1.2578616   0.8207779   1.9277028
7       0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
7       0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                  Control           0.7286866   0.4926978   1.0777077
7       0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                Control           0.7562136   0.5539503   1.0323292
7       0-24 months   ki1000111-WASH-Kenya        KENYA                          Control              Control           1.0000000   1.0000000   1.0000000
7       0-24 months   ki1000111-WASH-Kenya        KENYA                          LNS                  Control           0.8357143   0.3202833   2.1806266
7       0-24 months   ki1000111-WASH-Kenya        KENYA                          Other                Control           1.9076087   0.9301567   3.9122127
7       0-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Control              Control           1.0000000   1.0000000   1.0000000
7       0-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Other                Control           0.9929032   0.9143189   1.0782417
7       0-24 months   ki1000304-EU                INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
7       0-24 months   ki1000304-EU                INDIA                          Zinc                 Control           1.0398099   0.7876458   1.3727041
7       0-24 months   ki1000304-VITAMIN-A         INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
7       0-24 months   ki1000304-VITAMIN-A         INDIA                          Other                Control           1.1111207   0.9853491   1.2529461
7       0-24 months   ki1000304-Vitamin-B12       INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
7       0-24 months   ki1000304-Vitamin-B12       INDIA                          Other                Control           1.1506849   0.9588195   1.3809438
7       0-24 months   ki1000304-ZnMort            INDIA                          Other                Other             1.0000000   1.0000000   1.0000000
7       0-24 months   ki1000304-ZnMort            INDIA                          Zinc                 Other             1.1451613   0.8100393   1.6189269
7       0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              Control           1.0000000   1.0000000   1.0000000
7       0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                Control           1.0222222   0.5710945   1.8297118
7       0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                 Control           0.8971631   0.4402913   1.8281116
7       0-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Control              Control           1.0000000   1.0000000   1.0000000
7       0-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   LNS                  Control           0.7210031   0.5471982   0.9500133
7       0-24 months   ki1119695-PROBIT            BELARUS                        Control              Control           1.0000000   1.0000000   1.0000000
7       0-24 months   ki1119695-PROBIT            BELARUS                        Other                Control           0.8286927   0.6830658   1.0053667
7       0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control              Control           1.0000000   1.0000000   1.0000000
7       0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Other                Control           1.1444686   1.0441995   1.2543661
7       0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
7       0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS                  Control           1.0240000   0.8735188   1.2004046
7       0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
7       0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         LNS                  Control           0.9401709   0.4834186   1.8284803
7       0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Other                Control           0.7111111   0.3343908   1.5122398
7       0-24 months   ki1148112-LCNI-5            MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
7       0-24 months   ki1148112-LCNI-5            MALAWI                         LNS                  Control           1.1176471   0.9376349   1.3322190
7       0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
7       0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Other                Control           1.0924746   1.0117960   1.1795863
7       0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
7       0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     LNS                  Control           1.0164360   0.8336477   1.2393030
7       0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     MMN                  Control           1.1233850   0.9025727   1.3982186
7       0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Other                Control           0.9938910   0.8126158   1.2156044
7       0-6 months    ki1000304-VITAMIN-A         INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
7       0-6 months    ki1000304-VITAMIN-A         INDIA                          Other                Control           1.8416667   1.3007012   2.6076213
7       0-6 months    ki1119695-PROBIT            BELARUS                        Control              Control           1.0000000   1.0000000   1.0000000
7       0-6 months    ki1119695-PROBIT            BELARUS                        Other                Control           0.8671730   0.6365837   1.1812884
7       0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control              Control           1.0000000   1.0000000   1.0000000
7       0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Other                Control           1.3793103   1.1841199   1.6066760
7       0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
7       0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         LNS                  Control           0.6301370   0.4628333   0.8579171
7       0-6 months    ki1148112-LCNI-5            MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
7       0-6 months    ki1148112-LCNI-5            MALAWI                         LNS                  Control           1.0256410   0.6385483   1.6473921
7       0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
7       0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Other                Control           0.9897524   0.8733775   1.1216338
7       0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
7       0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     LNS                  Control           1.1504907   0.8052460   1.6437573
7       0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     MMN                  Control           1.1841837   0.7747749   1.8099334
7       0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     Other                Control           1.2277030   0.8616237   1.7493188
7       6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
7       6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                  Control           0.4756098   0.1974416   1.1456789
7       6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                Control           0.4307229   0.2082971   0.8906615
7       6-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Control              Control           1.0000000   1.0000000   1.0000000
7       6-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Other                Control           0.9831650   0.8336734   1.1594629
7       6-24 months   ki1000304-VITAMIN-A         INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
7       6-24 months   ki1000304-VITAMIN-A         INDIA                          Other                Control           0.8289474   0.4983697   1.3788033
7       6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Control              Control           1.0000000   1.0000000   1.0000000
7       6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   LNS                  Control           0.5396679   0.3323149   0.8764021
7       6-24 months   ki1119695-PROBIT            BELARUS                        Control              Control           1.0000000   1.0000000   1.0000000
7       6-24 months   ki1119695-PROBIT            BELARUS                        Other                Control           0.8667157   0.5943829   1.2638253
7       6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control              Control           1.0000000   1.0000000   1.0000000
7       6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Other                Control           1.0615877   0.8753308   1.2874771
7       6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
7       6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Other                Control           1.2150186   1.0372938   1.4231939
7       6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
7       6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     LNS                  Control           0.9445055   0.7014529   1.2717756
7       6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     MMN                  Control           1.1811463   0.8394234   1.6619820
7       6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Other                Control           0.7534517   0.5270567   1.0770937
8       0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
8       0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                  Control           0.8304762   0.5868916   1.1751585
8       0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                Control           1.0011852   0.7619995   1.3154493
8       0-24 months   ki1000111-WASH-Kenya        KENYA                          Control              Control           1.0000000   1.0000000   1.0000000
8       0-24 months   ki1000111-WASH-Kenya        KENYA                          LNS                  Control           0.8000000   0.3888902   1.6457085
8       0-24 months   ki1000111-WASH-Kenya        KENYA                          Other                Control           0.6260870   0.3353453   1.1688992
8       0-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Control              Control           1.0000000   1.0000000   1.0000000
8       0-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Other                Control           0.7926960   0.7052715   0.8909576
8       0-24 months   ki1000304-EU                INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
8       0-24 months   ki1000304-EU                INDIA                          Zinc                 Control           0.8289582   0.6251515   1.0992082
8       0-24 months   ki1000304-VITAMIN-A         INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
8       0-24 months   ki1000304-VITAMIN-A         INDIA                          Other                Control           0.9090909   0.8124626   1.0172114
8       0-24 months   ki1000304-Vitamin-B12       INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
8       0-24 months   ki1000304-Vitamin-B12       INDIA                          Other                Control           1.2500000   0.9123673   1.7125778
8       0-24 months   ki1000304-ZnMort            INDIA                          Other                Other             1.0000000   1.0000000   1.0000000
8       0-24 months   ki1000304-ZnMort            INDIA                          Zinc                 Other             1.1086474   0.7896706   1.5564707
8       0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              Control           1.0000000   1.0000000   1.0000000
8       0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                Control           1.3254036   0.7048128   2.4924271
8       0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                 Control           1.2892562   0.6298407   2.6390509
8       0-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Control              Control           1.0000000   1.0000000   1.0000000
8       0-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   LNS                  Control           1.3124685   1.0502559   1.6401465
8       0-24 months   ki1119695-PROBIT            BELARUS                        Control              Control           1.0000000   1.0000000   1.0000000
8       0-24 months   ki1119695-PROBIT            BELARUS                        Other                Control           0.8264060   0.6954837   0.9819739
8       0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control              Control           1.0000000   1.0000000   1.0000000
8       0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Other                Control           0.9490327   0.8661306   1.0398698
8       0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
8       0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS                  Control           1.2897196   1.0974930   1.5156148
8       0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
8       0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         LNS                  Control           0.7878788   0.4546696   1.3652836
8       0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Other                Control           0.9375000   0.5637029   1.5591658
8       0-24 months   ki1148112-LCNI-5            MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
8       0-24 months   ki1148112-LCNI-5            MALAWI                         LNS                  Control           0.5797101   0.4099308   0.8198063
8       0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
8       0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Other                Control           0.9500432   0.8866821   1.0179320
8       0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
8       0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     LNS                  Control           0.8291489   0.6443699   1.0669149
8       0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     MMN                  Control           0.7968290   0.5795859   1.0955004
8       0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Other                Control           0.8870623   0.6787361   1.1593306
8       0-6 months    ki1000304-VITAMIN-A         INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
8       0-6 months    ki1000304-VITAMIN-A         INDIA                          Other                Control           1.0111111   0.6937538   1.4736433
8       0-6 months    ki1119695-PROBIT            BELARUS                        Control              Control           1.0000000   1.0000000   1.0000000
8       0-6 months    ki1119695-PROBIT            BELARUS                        Other                Control           0.8524816   0.6876392   1.0568404
8       0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control              Control           1.0000000   1.0000000   1.0000000
8       0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Other                Control           0.8415435   0.7233572   0.9790398
8       0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
8       0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         LNS                  Control           1.2600000   0.9234641   1.7191789
8       0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
8       0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Other                Control           0.7876787   0.7119243   0.8714940
8       0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
8       0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     LNS                  Control           0.8065041   0.4947097   1.3148090
8       0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     MMN                  Control           0.8963855   0.4966892   1.6177259
8       0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     Other                Control           0.9654501   0.5932467   1.5711743
8       6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
8       6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                  Control           0.6884682   0.3244645   1.4608329
8       6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                Control           1.0204082   0.5732251   1.8164466
8       6-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Control              Control           1.0000000   1.0000000   1.0000000
8       6-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Other                Control           0.6888889   0.5382972   0.8816095
8       6-24 months   ki1000304-VITAMIN-A         INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
8       6-24 months   ki1000304-VITAMIN-A         INDIA                          Other                Control           0.7146283   0.4881955   1.0460841
8       6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Control              Control           1.0000000   1.0000000   1.0000000
8       6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   LNS                  Control           1.5238095   1.1005225   2.1099027
8       6-24 months   ki1119695-PROBIT            BELARUS                        Control              Control           1.0000000   1.0000000   1.0000000
8       6-24 months   ki1119695-PROBIT            BELARUS                        Other                Control           1.0646049   0.7287138   1.5553207
8       6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control              Control           1.0000000   1.0000000   1.0000000
8       6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Other                Control           0.9491315   0.8019407   1.1233383
8       6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
8       6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         LNS                  Control           1.0370370   0.4018405   2.6763002
8       6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Other                Control           0.8695652   0.3051993   2.4775410
8       6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
8       6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Other                Control           0.9713405   0.8331158   1.1324986
8       6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
8       6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     LNS                  Control           0.7384168   0.5001598   1.0901705
8       6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     MMN                  Control           0.5010101   0.2656837   0.9447743
8       6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Other                Control           0.8287385   0.5532460   1.2414143
9       0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
9       0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                  Control           0.8019564   0.5989876   1.0737018
9       0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                Control           1.0050226   0.7970380   1.2672801
9       0-24 months   ki1000111-WASH-Kenya        KENYA                          Control              Control           1.0000000   1.0000000   1.0000000
9       0-24 months   ki1000111-WASH-Kenya        KENYA                          LNS                  Control           1.3236364   0.5818402   3.0111586
9       0-24 months   ki1000111-WASH-Kenya        KENYA                          Other                Control           1.5471074   0.8078990   2.9626739
9       0-24 months   ki1000304-EU                INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
9       0-24 months   ki1000304-EU                INDIA                          Zinc                 Control           0.7017599   0.4810449   1.0237443
9       0-24 months   ki1000304-VITAMIN-A         INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
9       0-24 months   ki1000304-VITAMIN-A         INDIA                          Other                Control           1.0287018   0.9103415   1.1624511
9       0-24 months   ki1000304-Vitamin-B12       INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
9       0-24 months   ki1000304-Vitamin-B12       INDIA                          Other                Control           1.2380952   0.8511257   1.8010028
9       0-24 months   ki1000304-ZnMort            INDIA                          Other                Other             1.0000000   1.0000000   1.0000000
9       0-24 months   ki1000304-ZnMort            INDIA                          Zinc                 Other             0.6648114   0.4635407   0.9534743
9       0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              Control           1.0000000   1.0000000   1.0000000
9       0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                Control           1.2727273   0.6527327   2.4816205
9       0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                 Control           0.9615385   0.4280657   2.1598467
9       0-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Control              Control           1.0000000   1.0000000   1.0000000
9       0-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   LNS                  Control           0.9679403   0.7758704   1.2075578
9       0-24 months   ki1119695-PROBIT            BELARUS                        Control              Control           1.0000000   1.0000000   1.0000000
9       0-24 months   ki1119695-PROBIT            BELARUS                        Other                Control           0.9171748   0.7413607   1.1346834
9       0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control              Control           1.0000000   1.0000000   1.0000000
9       0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Other                Control           1.0919118   0.9952886   1.1979151
9       0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
9       0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS                  Control           1.1189189   0.9364296   1.3369713
9       0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
9       0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         LNS                  Control           0.8761755   0.5310203   1.4456765
9       0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Other                Control           0.8469697   0.5110493   1.4036957
9       0-24 months   ki1148112-LCNI-5            MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
9       0-24 months   ki1148112-LCNI-5            MALAWI                         LNS                  Control           0.7959184   0.5314517   1.1919918
9       0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
9       0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Other                Control           0.8809999   0.8269639   0.9385666
9       0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
9       0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     LNS                  Control           0.7710718   0.5802752   1.0246030
9       0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     MMN                  Control           0.8382353   0.5795744   1.2123351
9       0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Other                Control           0.8749722   0.6648705   1.1514668
9       0-6 months    ki1119695-PROBIT            BELARUS                        Control              Control           1.0000000   1.0000000   1.0000000
9       0-6 months    ki1119695-PROBIT            BELARUS                        Other                Control           1.1420675   0.8901916   1.4652105
9       0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control              Control           1.0000000   1.0000000   1.0000000
9       0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Other                Control           1.0394456   0.8798535   1.2279854
9       0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
9       0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Other                Control           0.8133879   0.7458887   0.8869955
9       0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
9       0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     LNS                  Control           0.8403361   0.4443621   1.5891654
9       0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     MMN                  Control           1.3023256   0.6284604   2.6987411
9       0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     Other                Control           1.0693069   0.5702163   2.0052344
9       6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
9       6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                  Control           0.6909263   0.3869735   1.2336221
9       6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                Control           0.8141655   0.5045795   1.3136987
9       6-24 months   ki1000304-VITAMIN-A         INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
9       6-24 months   ki1000304-VITAMIN-A         INDIA                          Other                Control           1.1559934   0.7105547   1.8806727
9       6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Control              Control           1.0000000   1.0000000   1.0000000
9       6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   LNS                  Control           0.8641179   0.6327296   1.1801246
9       6-24 months   ki1119695-PROBIT            BELARUS                        Control              Control           1.0000000   1.0000000   1.0000000
9       6-24 months   ki1119695-PROBIT            BELARUS                        Other                Control           1.0810202   0.7408322   1.5774214
9       6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control              Control           1.0000000   1.0000000   1.0000000
9       6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Other                Control           1.0679840   0.8931846   1.2769922
9       6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
9       6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         LNS                  Control           0.8928571   0.3369702   2.3657699
9       6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Other                Control           1.3392857   0.6145808   2.9185525
9       6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
9       6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Other                Control           0.8569303   0.7537162   0.9742786
9       6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
9       6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     LNS                  Control           0.7401714   0.4673139   1.1723461
9       6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     MMN                  Control           0.5521092   0.2693638   1.1316462
9       6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Other                Control           0.6755218   0.4175856   1.0927812
10      0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
10      0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                  Control           0.7306080   0.4019032   1.3281505
10      0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                Control           1.0444444   0.6464551   1.6874555
10      0-24 months   ki1000111-WASH-Kenya        KENYA                          Control              Control           1.0000000   1.0000000   1.0000000
10      0-24 months   ki1000111-WASH-Kenya        KENYA                          LNS                  Control           0.8700681   0.6362054   1.1898964
10      0-24 months   ki1000111-WASH-Kenya        KENYA                          Other                Control           0.9816708   0.7638538   1.2615995
10      0-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Control              Control           1.0000000   1.0000000   1.0000000
10      0-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Other                Control           0.9536585   0.8476096   1.0729758
10      0-24 months   ki1000304-EU                INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
10      0-24 months   ki1000304-EU                INDIA                          Zinc                 Control           0.9815476   0.6898433   1.3966009
10      0-24 months   ki1000304-VITAMIN-A         INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
10      0-24 months   ki1000304-VITAMIN-A         INDIA                          Other                Control           0.8726326   0.7397265   1.0294178
10      0-24 months   ki1000304-Vitamin-B12       INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
10      0-24 months   ki1000304-Vitamin-B12       INDIA                          Other                Control           0.6669573   0.5410920   0.8221006
10      0-24 months   ki1000304-ZnMort            INDIA                          Other                Other             1.0000000   1.0000000   1.0000000
10      0-24 months   ki1000304-ZnMort            INDIA                          Zinc                 Other             0.9625000   0.6963880   1.3303019
10      0-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
10      0-24 months   ki1000304b-SAS-CompFeed     INDIA                          Other                Control           1.0714286   0.9710898   1.1821349
10      0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              Control           1.0000000   1.0000000   1.0000000
10      0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                Control           0.9159159   0.5232092   1.6033777
10      0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                 Control           0.9816092   0.5202683   1.8520378
10      0-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Control              Control           1.0000000   1.0000000   1.0000000
10      0-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   LNS                  Control           0.7411610   0.5842334   0.9402400
10      0-24 months   ki1119695-PROBIT            BELARUS                        Control              Control           1.0000000   1.0000000   1.0000000
10      0-24 months   ki1119695-PROBIT            BELARUS                        Other                Control           0.7868687   0.6631921   0.9336093
10      0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control              Control           1.0000000   1.0000000   1.0000000
10      0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Other                Control           1.0409873   0.9456978   1.1458783
10      0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
10      0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS                  Control           0.7777778   0.6390890   0.9465634
10      0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
10      0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         LNS                  Control           1.5384615   0.8666761   2.7309672
10      0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Other                Control           1.3500000   0.7450331   2.4462001
10      0-24 months   ki1148112-LCNI-5            MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
10      0-24 months   ki1148112-LCNI-5            MALAWI                         LNS                  Control           1.3233083   0.9483304   1.8465555
10      0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
10      0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Other                Control           0.8683037   0.8220571   0.9171521
10      0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
10      0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     LNS                  Control           1.1690188   0.8278460   1.6507961
10      0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     MMN                  Control           0.9450232   0.6201963   1.4399775
10      0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Other                Control           0.9829905   0.6726211   1.4365746
10      0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
10      0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Other                Control           1.1929825   0.9543149   1.4913391
10      0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              Control           1.0000000   1.0000000   1.0000000
10      0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                Control           1.2200000   0.4434625   3.3563156
10      0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                 Control           1.3071429   0.4211858   4.0566957
10      0-6 months    ki1119695-PROBIT            BELARUS                        Control              Control           1.0000000   1.0000000   1.0000000
10      0-6 months    ki1119695-PROBIT            BELARUS                        Other                Control           0.9243252   0.7570635   1.1285408
10      0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control              Control           1.0000000   1.0000000   1.0000000
10      0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Other                Control           0.9110926   0.7716409   1.0757463
10      0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
10      0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Other                Control           0.8323522   0.7791514   0.8891855
10      0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
10      0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     LNS                  Control           1.2638889   0.7441132   2.1467368
10      0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     MMN                  Control           1.0271739   0.5236832   2.0147416
10      0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     Other                Control           1.1335227   0.6472686   1.9850704
10      6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
10      6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                  Control           0.6205674   0.1969913   1.9549278
10      6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                Control           0.9441233   0.3775558   2.3608932
10      6-24 months   ki1000111-WASH-Kenya        KENYA                          Control              Control           1.0000000   1.0000000   1.0000000
10      6-24 months   ki1000111-WASH-Kenya        KENYA                          LNS                  Control           1.0064103   0.4948514   2.0467995
10      6-24 months   ki1000111-WASH-Kenya        KENYA                          Other                Control           1.0448495   0.5707638   1.9127185
10      6-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Control              Control           1.0000000   1.0000000   1.0000000
10      6-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Other                Control           0.9230769   0.7182043   1.1863909
10      6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
10      6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Other                Control           1.5375000   1.1867952   1.9918401
10      6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              Control           1.0000000   1.0000000   1.0000000
10      6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                Control           0.4824743   0.2088450   1.1146134
10      6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                 Control           0.7090909   0.2793532   1.7999074
10      6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Control              Control           1.0000000   1.0000000   1.0000000
10      6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   LNS                  Control           0.6705882   0.5019876   0.8958162
10      6-24 months   ki1119695-PROBIT            BELARUS                        Control              Control           1.0000000   1.0000000   1.0000000
10      6-24 months   ki1119695-PROBIT            BELARUS                        Other                Control           0.7789717   0.5762141   1.0530752
10      6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control              Control           1.0000000   1.0000000   1.0000000
10      6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Other                Control           0.9616274   0.7892027   1.1717234
10      6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
10      6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         LNS                  Control           1.9215686   0.8467727   4.3605871
10      6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Other                Control           1.2727273   0.5139918   3.1514796
10      6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
10      6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Other                Control           0.8899573   0.7768643   1.0195139
10      6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
10      6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     LNS                  Control           0.9411765   0.4799329   1.8457020
10      6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     MMN                  Control           0.7804878   0.3375954   1.8044122
10      6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Other                Control           0.9375000   0.4757071   1.8475786
11      0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
11      0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                  Control           0.6213018   0.3560973   1.0840179
11      0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                Control           0.9910335   0.6678653   1.4705771
11      0-24 months   ki1000111-WASH-Kenya        KENYA                          Control              Control           1.0000000   1.0000000   1.0000000
11      0-24 months   ki1000111-WASH-Kenya        KENYA                          LNS                  Control           0.9700704   0.6432281   1.4629905
11      0-24 months   ki1000111-WASH-Kenya        KENYA                          Other                Control           1.2921914   0.9585734   1.7419205
11      0-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Control              Control           1.0000000   1.0000000   1.0000000
11      0-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Other                Control           0.7719884   0.6947359   0.8578312
11      0-24 months   ki1000304-EU                INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
11      0-24 months   ki1000304-EU                INDIA                          Zinc                 Control           0.8837209   0.6480892   1.2050235
11      0-24 months   ki1000304-VITAMIN-A         INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
11      0-24 months   ki1000304-VITAMIN-A         INDIA                          Other                Control           0.9421356   0.8091336   1.0969999
11      0-24 months   ki1000304-Vitamin-B12       INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
11      0-24 months   ki1000304-Vitamin-B12       INDIA                          Other                Control           0.8621053   0.7159108   1.0381538
11      0-24 months   ki1000304-ZnMort            INDIA                          Other                Other             1.0000000   1.0000000   1.0000000
11      0-24 months   ki1000304-ZnMort            INDIA                          Zinc                 Other             0.7812500   0.5390258   1.1323235
11      0-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
11      0-24 months   ki1000304b-SAS-CompFeed     INDIA                          Other                Control           0.9229798   0.7401882   1.1509123
11      0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              Control           1.0000000   1.0000000   1.0000000
11      0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                Control           0.8150943   0.3964957   1.6756266
11      0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                 Control           1.5882353   0.7852572   3.2123124
11      0-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Control              Control           1.0000000   1.0000000   1.0000000
11      0-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   LNS                  Control           0.9683099   0.7336813   1.2779718
11      0-24 months   ki1119695-PROBIT            BELARUS                        Control              Control           1.0000000   1.0000000   1.0000000
11      0-24 months   ki1119695-PROBIT            BELARUS                        Other                Control           0.9386513   0.7592881   1.1603846
11      0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control              Control           1.0000000   1.0000000   1.0000000
11      0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Other                Control           0.9846612   0.8958186   1.0823147
11      0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
11      0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS                  Control           0.8270588   0.6679110   1.0241278
11      0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
11      0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         LNS                  Control           1.2300000   0.7232208   2.0918923
11      0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Other                Control           1.0933333   0.6364458   1.8782084
11      0-24 months   ki1148112-LCNI-5            MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
11      0-24 months   ki1148112-LCNI-5            MALAWI                         LNS                  Control           1.1363636   0.8402093   1.5369056
11      0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
11      0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Other                Control           0.9099745   0.8655663   0.9566611
11      0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
11      0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     LNS                  Control           1.4035088   0.7809011   2.5225176
11      0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     MMN                  Control           1.7582418   0.9375669   3.2972729
11      0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Other                Control           1.4685315   0.8061256   2.6752466
11      0-6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Control              Control           1.0000000   1.0000000   1.0000000
11      0-6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Other                Control           0.6842105   0.4913402   0.9527900
11      0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
11      0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Other                Control           1.3150685   0.8779900   1.9697321
11      0-6 months    ki1119695-PROBIT            BELARUS                        Control              Control           1.0000000   1.0000000   1.0000000
11      0-6 months    ki1119695-PROBIT            BELARUS                        Other                Control           0.8208963   0.6127600   1.0997303
11      0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control              Control           1.0000000   1.0000000   1.0000000
11      0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Other                Control           1.0483264   0.8784489   1.2510554
11      0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
11      0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         LNS                  Control           0.4014337   0.2817341   0.5719896
11      0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
11      0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Other                Control           0.8578423   0.8043043   0.9149439
11      6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
11      6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                  Control           0.6272727   0.2578591   1.5259151
11      6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                Control           1.2368758   0.6544808   2.3375196
11      6-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Control              Control           1.0000000   1.0000000   1.0000000
11      6-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Other                Control           0.6127660   0.4748191   0.7907898
11      6-24 months   ki1000304-VITAMIN-A         INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
11      6-24 months   ki1000304-VITAMIN-A         INDIA                          Other                Control           0.6155303   0.3605406   1.0508596
11      6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
11      6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Other                Control           0.6303030   0.3808827   1.0430558
11      6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              Control           1.0000000   1.0000000   1.0000000
11      6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                Control           0.4532020   0.1612909   1.2734264
11      6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                 Control           1.3142857   0.5339658   3.2349391
11      6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Control              Control           1.0000000   1.0000000   1.0000000
11      6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   LNS                  Control           0.5921053   0.3968863   0.8833477
11      6-24 months   ki1119695-PROBIT            BELARUS                        Control              Control           1.0000000   1.0000000   1.0000000
11      6-24 months   ki1119695-PROBIT            BELARUS                        Other                Control           1.3087491   0.8357079   2.0495488
11      6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control              Control           1.0000000   1.0000000   1.0000000
11      6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Other                Control           0.7796653   0.6541468   0.9292685
11      6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
11      6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         LNS                  Control           1.6163265   0.7221853   3.6175085
11      6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Other                Control           0.9428571   0.3690249   2.4089961
11      6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
11      6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Other                Control           1.0622117   0.9406446   1.1994899
11      6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
11      6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     LNS                  Control           1.2101064   0.5079352   2.8829612
11      6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     MMN                  Control           1.6406250   0.6489552   4.1476672
11      6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Other                Control           1.2152778   0.4703261   3.1401619
12      0-24 months   ki1000107-Serrinha-VitA     BRAZIL                         Control              Control           1.0000000   1.0000000   1.0000000
12      0-24 months   ki1000107-Serrinha-VitA     BRAZIL                         Other                Control           1.2754696   1.1113792   1.4637871
12      0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
12      0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                  Control           0.9523810   0.5156089   1.7591424
12      0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                Control           1.3677419   0.8479490   2.2061680
12      0-24 months   ki1000111-WASH-Kenya        KENYA                          Control              Control           1.0000000   1.0000000   1.0000000
12      0-24 months   ki1000111-WASH-Kenya        KENYA                          LNS                  Control           0.5425272   0.3617351   0.8136778
12      0-24 months   ki1000111-WASH-Kenya        KENYA                          Other                Control           0.7893456   0.5980212   1.0418802
12      0-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Control              Control           1.0000000   1.0000000   1.0000000
12      0-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Other                Control           1.1408909   0.9646696   1.3493035
12      0-24 months   ki1000304-EU                INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
12      0-24 months   ki1000304-EU                INDIA                          Zinc                 Control           1.0784050   0.7249071   1.6042846
12      0-24 months   ki1000304-VITAMIN-A         INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
12      0-24 months   ki1000304-VITAMIN-A         INDIA                          Other                Control           0.9411765   0.7985842   1.1092295
12      0-24 months   ki1000304-Vitamin-B12       INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
12      0-24 months   ki1000304-Vitamin-B12       INDIA                          Other                Control           1.1058824   0.8567480   1.4274627
12      0-24 months   ki1000304-ZnMort            INDIA                          Other                Other             1.0000000   1.0000000   1.0000000
12      0-24 months   ki1000304-ZnMort            INDIA                          Zinc                 Other             1.2076720   0.8930088   1.6332108
12      0-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
12      0-24 months   ki1000304b-SAS-CompFeed     INDIA                          Other                Control           0.8888889   0.7688521   1.0276664
12      0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              Control           1.0000000   1.0000000   1.0000000
12      0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                Control           1.3930705   0.6917081   2.8055844
12      0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                 Control           0.8082789   0.3246510   2.0123599
12      0-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Control              Control           1.0000000   1.0000000   1.0000000
12      0-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc                 Control           1.2983775   1.0335301   1.6310935
12      0-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Control              Control           1.0000000   1.0000000   1.0000000
12      0-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   LNS                  Control           0.9500000   0.6837573   1.3199127
12      0-24 months   ki1119695-PROBIT            BELARUS                        Control              Control           1.0000000   1.0000000   1.0000000
12      0-24 months   ki1119695-PROBIT            BELARUS                        Other                Control           0.7773042   0.6276590   0.9626275
12      0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control              Control           1.0000000   1.0000000   1.0000000
12      0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Other                Control           1.1502519   1.0497549   1.2603699
12      0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
12      0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS                  Control           0.9836066   0.8449227   1.1450537
12      0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
12      0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         LNS                  Control           0.9890572   0.6496826   1.5057109
12      0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Other                Control           0.9936575   0.6375066   1.5487764
12      0-24 months   ki1148112-LCNI-5            MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
12      0-24 months   ki1148112-LCNI-5            MALAWI                         LNS                  Control           1.1250000   0.8733388   1.4491798
12      0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
12      0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Other                Control           0.9993597   0.9440209   1.0579423
12      0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
12      0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     LNS                  Control           1.3690476   0.8324225   2.2516105
12      0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     MMN                  Control           0.7666667   0.3618983   1.6241517
12      0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Other                Control           0.7840909   0.4058372   1.5148895
12      0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
12      0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Other                Control           0.6882516   0.5762124   0.8220758
12      0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
12      0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Other                Control           0.9829932   0.7049926   1.3706181
12      0-6 months    ki1119695-PROBIT            BELARUS                        Control              Control           1.0000000   1.0000000   1.0000000
12      0-6 months    ki1119695-PROBIT            BELARUS                        Other                Control           0.7758631   0.5711522   1.0539459
12      0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control              Control           1.0000000   1.0000000   1.0000000
12      0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Other                Control           1.8931497   1.5726640   2.2789456
12      0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
12      0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Other                Control           0.9244588   0.8465141   1.0095805
12      6-24 months   ki1000107-Serrinha-VitA     BRAZIL                         Control              Control           1.0000000   1.0000000   1.0000000
12      6-24 months   ki1000107-Serrinha-VitA     BRAZIL                         Other                Control           1.2768408   0.8969688   1.8175909
12      6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
12      6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                  Control           0.9321429   0.4089350   2.1247640
12      6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                Control           1.3647059   0.7186120   2.5916936
12      6-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Control              Control           1.0000000   1.0000000   1.0000000
12      6-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Other                Control           1.2472826   0.8055903   1.9311479
12      6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
12      6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Other                Control           0.8796992   0.6535858   1.1840385
12      6-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Control              Control           1.0000000   1.0000000   1.0000000
12      6-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc                 Control           1.0980216   0.6423616   1.8769046
12      6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Control              Control           1.0000000   1.0000000   1.0000000
12      6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   LNS                  Control           0.7222222   0.3582284   1.4560679
12      6-24 months   ki1119695-PROBIT            BELARUS                        Control              Control           1.0000000   1.0000000   1.0000000
12      6-24 months   ki1119695-PROBIT            BELARUS                        Other                Control           0.8607069   0.5376440   1.3778937
12      6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control              Control           1.0000000   1.0000000   1.0000000
12      6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Other                Control           1.0938986   0.9380228   1.2756771
12      6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
12      6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         LNS                  Control           0.9669421   0.4809810   1.9438961
12      6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Other                Control           0.9848485   0.4746921   2.0432750
12      6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
12      6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Other                Control           1.1406189   1.0166081   1.2797570


### Parameter: PAR


month   agecat        studyid                     country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------  ------------  --------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
1       0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                 0.0469586   -0.0328301    0.1267473
1       0-24 months   ki1000111-WASH-Kenya        KENYA                          Control              NA                 0.0070496   -0.0272989    0.0413980
1       0-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Control              NA                -0.0467312   -0.0887180   -0.0047443
1       0-24 months   ki1000304-EU                INDIA                          Control              NA                -0.0485348   -0.1267151    0.0296455
1       0-24 months   ki1000304-VITAMIN-A         INDIA                          Control              NA                 0.0103795   -0.0254144    0.0461735
1       0-24 months   ki1000304-Vitamin-B12       INDIA                          Control              NA                -0.0570825   -0.1178430    0.0036781
1       0-24 months   ki1000304-ZnMort            INDIA                          Other                NA                -0.0758170   -0.1756756    0.0240416
1       0-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control              NA                -0.0184538   -0.0702188    0.0333113
1       0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              NA                -0.0189542   -0.1405781    0.1026696
1       0-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Control              NA                 0.0823613    0.0461294    0.1185931
1       0-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Control              NA                -0.0736402   -0.1343908   -0.0128896
1       0-24 months   ki1119695-PROBIT            BELARUS                        Control              NA                -0.0023667   -0.0255607    0.0208273
1       0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                 0.0012387   -0.0220764    0.0245537
1       0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                 0.0188915   -0.0476093    0.0853923
1       0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control              NA                 0.0776471   -0.0574941    0.2127882
1       0-24 months   ki1148112-LCNI-5            MALAWI                         Control              NA                 0.0171958   -0.0774872    0.1118787
1       0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                -0.0106987   -0.0299894    0.0085920
1       0-6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Control              NA                -0.0669371   -0.1281675   -0.0057067
1       0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Control              NA                 0.0025641   -0.0311591    0.0362873
1       0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Control              NA                 0.1021825   -0.0051475    0.2095126
1       0-6 months    ki1119695-PROBIT            BELARUS                        Control              NA                 0.0051712   -0.0175190    0.0278615
1       0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                 0.0063410   -0.0151378    0.0278198
1       0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                -0.0244470   -0.0454362   -0.0034579
1       6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                 0.0099762   -0.0620907    0.0820431
1       6-24 months   ki1000111-WASH-Kenya        KENYA                          Control              NA                 0.0075958   -0.0146533    0.0298449
1       6-24 months   ki1000304-VITAMIN-A         INDIA                          Control              NA                -0.0005760   -0.0311297    0.0299777
1       6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control              NA                -0.0490620   -0.1168635    0.0187394
1       6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              NA                 0.0354310   -0.0800207    0.1508827
1       6-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Control              NA                 0.0433673    0.0183248    0.0684099
1       6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Control              NA                -0.1408464   -0.1887482   -0.0929447
1       6-24 months   ki1119695-PROBIT            BELARUS                        Control              NA                 0.0016835   -0.0097068    0.0130738
1       6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                 0.0089725   -0.0112033    0.0291484
1       6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control              NA                -0.0198171   -0.1445140    0.1048799
1       6-24 months   ki1148112-LCNI-5            MALAWI                         Control              NA                -0.0622222   -0.1548023    0.0303578
1       6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                 0.0190147   -0.0028451    0.0408746
2       0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                 0.0018253   -0.0909605    0.0946111
2       0-24 months   ki1000111-WASH-Kenya        KENYA                          Control              NA                 0.0139037   -0.0358637    0.0636712
2       0-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Control              NA                 0.0634126   -0.0037469    0.1305721
2       0-24 months   ki1000304-EU                INDIA                          Control              NA                -0.0548028   -0.1310967    0.0214912
2       0-24 months   ki1000304-VITAMIN-A         INDIA                          Control              NA                -0.0537125   -0.0938589   -0.0135662
2       0-24 months   ki1000304-Vitamin-B12       INDIA                          Control              NA                -0.0294118   -0.0969840    0.0381605
2       0-24 months   ki1000304-ZnMort            INDIA                          Other                NA                 0.0498575   -0.0479346    0.1476497
2       0-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control              NA                -0.0500894   -0.1569092    0.0567303
2       0-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Control              NA                 0.0395728    0.0050813    0.0740643
2       0-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Control              NA                -0.0052169   -0.0515057    0.0410720
2       0-24 months   ki1119695-PROBIT            BELARUS                        Control              NA                -0.0160290   -0.0431555    0.0110975
2       0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                -0.0470377   -0.0737125   -0.0203629
2       0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                -0.1101865   -0.1729729   -0.0474001
2       0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control              NA                 0.0510841   -0.0742422    0.1764103
2       0-24 months   ki1148112-LCNI-5            MALAWI                         Control              NA                 0.0042715   -0.0608768    0.0694199
2       0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                 0.0078847   -0.0129972    0.0287666
2       0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                 0.0093151   -0.0785501    0.0971802
2       0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Control              NA                -0.0469083   -0.1186287    0.0248121
2       0-6 months    ki1119695-PROBIT            BELARUS                        Control              NA                -0.0078652   -0.0222150    0.0064847
2       0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                -0.0517505   -0.0769308   -0.0265702
2       0-6 months    ki1148112-LCNI-5            MALAWI                         Control              NA                -0.1595745   -0.2589070   -0.0602419
2       0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                -0.0294933   -0.0526502   -0.0063364
2       0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                 0.0200218   -0.0734747    0.1135184
2       6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                 0.0061835   -0.0822964    0.0946634
2       6-24 months   ki1000111-WASH-Kenya        KENYA                          Control              NA                -0.0067596   -0.0364138    0.0228946
2       6-24 months   ki1000304-VITAMIN-A         INDIA                          Control              NA                -0.0134494   -0.0378359    0.0109372
2       6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control              NA                -0.0504414   -0.0909086   -0.0099741
2       6-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Control              NA                 0.0079508   -0.0183376    0.0342392
2       6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Control              NA                 0.0211149   -0.0254804    0.0677101
2       6-24 months   ki1119695-PROBIT            BELARUS                        Control              NA                -0.0035785   -0.0267753    0.0196183
2       6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                -0.0282800   -0.0497018   -0.0068583
2       6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                -0.0012453   -0.0639633    0.0614726
2       6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control              NA                 0.0649406   -0.0648867    0.1947679
2       6-24 months   ki1148112-LCNI-5            MALAWI                         Control              NA                 0.0169133   -0.0485096    0.0823363
2       6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                 0.0514602    0.0266153    0.0763051
2       6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                 0.0138526   -0.0648518    0.0925571
3       0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                -0.0947249   -0.1868818   -0.0025680
3       0-24 months   ki1000111-WASH-Kenya        KENYA                          Control              NA                -0.0043557   -0.0472602    0.0385488
3       0-24 months   ki1000304-EU                INDIA                          Control              NA                -0.0013211   -0.0641645    0.0615223
3       0-24 months   ki1000304-VITAMIN-A         INDIA                          Control              NA                -0.0088376   -0.0487121    0.0310370
3       0-24 months   ki1000304-ZnMort            INDIA                          Other                NA                 0.0161943   -0.0512681    0.0836567
3       0-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control              NA                 0.0941176   -0.0160439    0.2042792
3       0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              NA                -0.0742972   -0.2083779    0.0597835
3       0-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Control              NA                -0.0331202   -0.1112723    0.0450320
3       0-24 months   ki1119695-PROBIT            BELARUS                        Control              NA                -0.0138411   -0.0381447    0.0104626
3       0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                -0.0122067   -0.0376526    0.0132393
3       0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                 0.0281706   -0.0307238    0.0870651
3       0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control              NA                 0.1424923   -0.0313366    0.3163213
3       0-24 months   ki1148112-LCNI-5            MALAWI                         Control              NA                -0.0408163   -0.1112774    0.0296448
3       0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                -0.0254068   -0.0410833   -0.0097304
3       0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                -0.0005650   -0.0884380    0.0873081
3       0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Control              NA                 0.1096979    0.0145617    0.2048342
3       0-6 months    ki1119695-PROBIT            BELARUS                        Control              NA                -0.0042387   -0.0223114    0.0138341
3       0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                -0.0079805   -0.0306544    0.0146933
3       0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                -0.0363248   -0.1034268    0.0307772
3       0-6 months    ki1148112-LCNI-5            MALAWI                         Control              NA                -0.0885057   -0.1701510   -0.0068605
3       0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                -0.0261462   -0.0399728   -0.0123196
3       0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                 0.0481639   -0.0321370    0.1284648
3       6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                -0.0682390   -0.1662035    0.0297255
3       6-24 months   ki1000304-VITAMIN-A         INDIA                          Control              NA                -0.0075758   -0.0351686    0.0200171
3       6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control              NA                 0.0381356   -0.0700050    0.1462762
3       6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Control              NA                -0.0714843   -0.1511482    0.0081796
3       6-24 months   ki1119695-PROBIT            BELARUS                        Control              NA                 0.0013258   -0.0095166    0.0121682
3       6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                -0.0353587   -0.0550451   -0.0156724
3       6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                 0.0210648   -0.0367287    0.0788583
3       6-24 months   ki1148112-LCNI-5            MALAWI                         Control              NA                 0.0833333   -0.0075263    0.1741930
3       6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                -0.0048252   -0.0236444    0.0139940
3       6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                -0.0152624   -0.1034553    0.0729305
4       0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                 0.0641318   -0.0120702    0.1403338
4       0-24 months   ki1000111-WASH-Kenya        KENYA                          Control              NA                 0.0023049   -0.0427144    0.0473242
4       0-24 months   ki1000304-EU                INDIA                          Control              NA                 0.0022977   -0.0714555    0.0760509
4       0-24 months   ki1000304-VITAMIN-A         INDIA                          Control              NA                -0.0404925   -0.0776421   -0.0033429
4       0-24 months   ki1000304-ZnMort            INDIA                          Other                NA                -0.0499596   -0.1157952    0.0158760
4       0-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control              NA                 0.0338710   -0.1155684    0.1833103
4       0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              NA                -0.0303412   -0.1464889    0.0858066
4       0-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Control              NA                 0.0409055   -0.0364147    0.1182258
4       0-24 months   ki1119695-PROBIT            BELARUS                        Control              NA                -0.0011732   -0.0202798    0.0179333
4       0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                -0.0108935   -0.0376532    0.0158662
4       0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                -0.0496912   -0.1118356    0.0124531
4       0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control              NA                -0.0268657   -0.1788955    0.1251642
4       0-24 months   ki1148112-LCNI-5            MALAWI                         Control              NA                 0.0668305    0.0056030    0.1280579
4       0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                -0.0340492   -0.0541960   -0.0139024
4       0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                 0.0089476   -0.0500185    0.0679138
4       0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Control              NA                 0.0301994   -0.0645728    0.1249717
4       0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              NA                -0.0099974   -0.0836063    0.0636115
4       0-6 months    ki1119695-PROBIT            BELARUS                        Control              NA                 0.0028267   -0.0096880    0.0153414
4       0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                 0.0059602   -0.0193696    0.0312901
4       0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                -0.0412752   -0.1101716    0.0276213
4       0-6 months    ki1148112-LCNI-5            MALAWI                         Control              NA                 0.0153061   -0.0764800    0.1070922
4       0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                -0.0191031   -0.0380549   -0.0001513
4       0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                 0.0514653    0.0036120    0.0993186
4       6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                 0.0279748   -0.0431306    0.0990802
4       6-24 months   ki1000111-WASH-Kenya        KENYA                          Control              NA                 0.0321649    0.0057805    0.0585493
4       6-24 months   ki1000304-VITAMIN-A         INDIA                          Control              NA                 0.0187968   -0.0107192    0.0483129
4       6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control              NA                -0.0250784   -0.1221053    0.0719486
4       6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              NA                -0.0419355   -0.1832558    0.0993849
4       6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Control              NA                -0.0663265   -0.1127714   -0.0198817
4       6-24 months   ki1119695-PROBIT            BELARUS                        Control              NA                -0.0046320   -0.0146955    0.0054314
4       6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                -0.0170274   -0.0378117    0.0037569
4       6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                -0.1498959   -0.2116829   -0.0881089
4       6-24 months   ki1148112-LCNI-5            MALAWI                         Control              NA                -0.0331010   -0.1039727    0.0377706
4       6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                -0.0055345   -0.0236082    0.0125393
4       6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                -0.0061813   -0.0642317    0.0518691
5       0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                -0.0342619   -0.1092301    0.0407064
5       0-24 months   ki1000111-WASH-Kenya        KENYA                          Control              NA                 0.0226542   -0.0159228    0.0612312
5       0-24 months   ki1000304-EU                INDIA                          Control              NA                -0.0331511   -0.1291842    0.0628819
5       0-24 months   ki1000304-VITAMIN-A         INDIA                          Control              NA                 0.0004994   -0.0350622    0.0360610
5       0-24 months   ki1000304-ZnMort            INDIA                          Other                NA                -0.0040728   -0.0631954    0.0550499
5       0-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control              NA                -0.0801394   -0.1626348    0.0023561
5       0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              NA                -0.0291683   -0.1377054    0.0793687
5       0-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Control              NA                -0.0676804   -0.1460020    0.0106412
5       0-24 months   ki1119695-PROBIT            BELARUS                        Control              NA                -0.0086231   -0.0262093    0.0089631
5       0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                 0.0086492   -0.0192322    0.0365307
5       0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                 0.1578947    0.0979290    0.2178604
5       0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control              NA                 0.0671795   -0.0844171    0.2187761
5       0-24 months   ki1148112-LCNI-5            MALAWI                         Control              NA                 0.0185251   -0.0473475    0.0843976
5       0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                 0.0094432   -0.0121182    0.0310046
5       0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                -0.0213727   -0.0895148    0.0467693
5       0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Control              NA                -0.0349094   -0.1168452    0.0470264
5       0-6 months    ki1119695-PROBIT            BELARUS                        Control              NA                -0.0010991   -0.0136734    0.0114752
5       0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                 0.0161107   -0.0102768    0.0424981
5       0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                 0.0561941   -0.0033555    0.1157437
5       0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                -0.0033844   -0.0224153    0.0156464
5       0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                -0.0263718   -0.0890081    0.0362644
5       6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                -0.0128889   -0.0911288    0.0653511
5       6-24 months   ki1000111-WASH-Kenya        KENYA                          Control              NA                -0.0044591   -0.0287717    0.0198534
5       6-24 months   ki1000304-VITAMIN-A         INDIA                          Control              NA                 0.0115670   -0.0123963    0.0355303
5       6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control              NA                -0.0067873   -0.0240580    0.0104834
5       6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Control              NA                -0.0571251   -0.0941003   -0.0201499
5       6-24 months   ki1119695-PROBIT            BELARUS                        Control              NA                -0.0042290   -0.0147952    0.0063373
5       6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                 0.0369607    0.0123095    0.0616119
5       6-24 months   ki1148112-LCNI-5            MALAWI                         Control              NA                 0.0190575   -0.0608248    0.0989398
5       6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                 0.0318453    0.0113288    0.0523618
5       6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                -0.0333724   -0.1046160    0.0378713
6       0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                -0.0027469   -0.0857157    0.0802220
6       0-24 months   ki1000111-WASH-Kenya        KENYA                          Control              NA                -0.0037663   -0.0668691    0.0593365
6       0-24 months   ki1000304-EU                INDIA                          Control              NA                 0.0000811   -0.0776237    0.0777860
6       0-24 months   ki1000304-VITAMIN-A         INDIA                          Control              NA                 0.0109430   -0.0289057    0.0507918
6       0-24 months   ki1000304-Vitamin-B12       INDIA                          Control              NA                 0.0286697   -0.0367461    0.0940855
6       0-24 months   ki1000304-ZnMort            INDIA                          Other                NA                 0.0415140   -0.0216018    0.1046298
6       0-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control              NA                -0.1164336   -0.2219238   -0.0109433
6       0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              NA                -0.0155794   -0.1297800    0.0986213
6       0-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Control              NA                -0.0754451   -0.1373236   -0.0135665
6       0-24 months   ki1119695-PROBIT            BELARUS                        Control              NA                -0.0194468   -0.0437469    0.0048533
6       0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                 0.0133743   -0.0131432    0.0398919
6       0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                -0.1827957   -0.2641858   -0.1014056
6       0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control              NA                 0.0024390   -0.1381022    0.1429802
6       0-24 months   ki1148112-LCNI-5            MALAWI                         Control              NA                -0.0425824   -0.1140251    0.0288603
6       0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                -0.0257463   -0.0478556   -0.0036370
6       0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                 0.0567462   -0.0275991    0.1410915
6       0-6 months    ki1000304-VITAMIN-A         INDIA                          Control              NA                 0.0446429   -0.0786394    0.1679251
6       0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Control              NA                -0.0517657   -0.0937193   -0.0098122
6       0-6 months    ki1119695-PROBIT            BELARUS                        Control              NA                -0.0115409   -0.0208070   -0.0022748
6       0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                -0.0026135   -0.0291895    0.0239625
6       0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                -0.0961538   -0.1746079   -0.0176998
6       0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                -0.0134306   -0.0306795    0.0038183
6       0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                 0.0040481   -0.0774453    0.0855414
6       6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                 0.0100133   -0.0721775    0.0922041
6       6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control              NA                -0.0876841   -0.1725280   -0.0028401
6       6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Control              NA                -0.0600182   -0.0941605   -0.0258759
6       6-24 months   ki1119695-PROBIT            BELARUS                        Control              NA                -0.0034891   -0.0157235    0.0087452
6       6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                 0.0447958    0.0226324    0.0669592
6       6-24 months   ki1148112-LCNI-5            MALAWI                         Control              NA                 0.0334052   -0.0551479    0.1219583
6       6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                -0.0131002   -0.0322969    0.0060965
6       6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                 0.0252033   -0.0609626    0.1113691
7       0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                -0.1087007   -0.2236501    0.0062486
7       0-24 months   ki1000111-WASH-Kenya        KENYA                          Control              NA                 0.0615385   -0.0479198    0.1709967
7       0-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Control              NA                -0.0007201   -0.0224255    0.0209853
7       0-24 months   ki1000304-EU                INDIA                          Control              NA                 0.0093838   -0.0574017    0.0761692
7       0-24 months   ki1000304-VITAMIN-A         INDIA                          Control              NA                 0.0233351   -0.0146642    0.0613345
7       0-24 months   ki1000304-Vitamin-B12       INDIA                          Control              NA                 0.0346639   -0.0273622    0.0966899
7       0-24 months   ki1000304-ZnMort            INDIA                          Other                NA                 0.0331789   -0.0510514    0.1174093
7       0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              NA                -0.0032938   -0.1146178    0.1080302
7       0-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Control              NA                -0.0894425   -0.1686398   -0.0102453
7       0-24 months   ki1119695-PROBIT            BELARUS                        Control              NA                -0.0103893   -0.0250253    0.0042467
7       0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                 0.0311311    0.0054817    0.0567805
7       0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                 0.0102041   -0.0645666    0.0849748
7       0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control              NA                -0.0556338   -0.2404572    0.1291896
7       0-24 months   ki1148112-LCNI-5            MALAWI                         Control              NA                 0.0336257   -0.0416080    0.1088595
7       0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                 0.0175213   -0.0029053    0.0379479
7       0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                 0.0105804   -0.0543288    0.0754896
7       0-6 months    ki1000304-VITAMIN-A         INDIA                          Control              NA                 0.1605723    0.0362313    0.2849134
7       0-6 months    ki1119695-PROBIT            BELARUS                        Control              NA                -0.0042213   -0.0165438    0.0081012
7       0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                 0.0402349    0.0155892    0.0648806
7       0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                -0.1626506   -0.2578418   -0.0674594
7       0-6 months    ki1148112-LCNI-5            MALAWI                         Control              NA                 0.0043103   -0.1163530    0.1249736
7       0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                -0.0010505   -0.0181746    0.0160736
7       0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                 0.0322653   -0.0232121    0.0877426
7       6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                -0.1297782   -0.2500999   -0.0094564
7       6-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Control              NA                -0.0011877   -0.0305276    0.0281521
7       6-24 months   ki1000304-VITAMIN-A         INDIA                          Control              NA                -0.0061905   -0.0295005    0.0171195
7       6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Control              NA                -0.0961464   -0.1658289   -0.0264639
7       6-24 months   ki1119695-PROBIT            BELARUS                        Control              NA                -0.0018368   -0.0070426    0.0033690
7       6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                 0.0052114   -0.0148079    0.0252306
7       6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                 0.0163958   -0.0020945    0.0348860
7       6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                -0.0200894   -0.0828448    0.0426659
8       0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                -0.0164887   -0.0965443    0.0635669
8       0-24 months   ki1000111-WASH-Kenya        KENYA                          Control              NA                -0.0865696   -0.2138905    0.0407513
8       0-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Control              NA                -0.1340278   -0.2035699   -0.0644856
8       0-24 months   ki1000304-EU                INDIA                          Control              NA                -0.0477008   -0.1189546    0.0235531
8       0-24 months   ki1000304-VITAMIN-A         INDIA                          Control              NA                -0.0185355   -0.0501175    0.0130466
8       0-24 months   ki1000304-Vitamin-B12       INDIA                          Control              NA                 0.0625000   -0.0599977    0.1849977
8       0-24 months   ki1000304-ZnMort            INDIA                          Other                NA                 0.0249682   -0.0568381    0.1067744
8       0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              NA                 0.0418919   -0.0444644    0.1282482
8       0-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Control              NA                 0.0659493    0.0027572    0.1291414
8       0-24 months   ki1119695-PROBIT            BELARUS                        Control              NA                -0.0106342   -0.0252400    0.0039716
8       0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                -0.0124096   -0.0370090    0.0121898
8       0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                 0.1036789    0.0255386    0.1818192
8       0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control              NA                -0.0463918   -0.1886384    0.0958549
8       0-24 months   ki1148112-LCNI-5            MALAWI                         Control              NA                -0.1348837   -0.2468867   -0.0228807
8       0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                -0.0097830   -0.0282288    0.0086627
8       0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                -0.0606925   -0.1389237    0.0175388
8       0-6 months    ki1000304-VITAMIN-A         INDIA                          Control              NA                 0.0017483   -0.0914497    0.0949462
8       0-6 months    ki1119695-PROBIT            BELARUS                        Control              NA                -0.0046500   -0.0136580    0.0043581
8       0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                -0.0231318   -0.0451774   -0.0010862
8       0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                 0.0490335   -0.0310540    0.1291209
8       0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                -0.0277741   -0.0436901   -0.0118581
8       0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                -0.0214630   -0.0949975    0.0520714
8       6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                -0.0118580   -0.0838416    0.0601256
8       6-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Control              NA                -0.1372549   -0.2237820   -0.0507278
8       6-24 months   ki1000304-VITAMIN-A         INDIA                          Control              NA                -0.0138656   -0.0347001    0.0069689
8       6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Control              NA                 0.0447346    0.0034518    0.0860173
8       6-24 months   ki1119695-PROBIT            BELARUS                        Control              NA                 0.0009719   -0.0058068    0.0077506
8       6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                -0.0056591   -0.0264640    0.0151459
8       6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control              NA                -0.0067568   -0.1494998    0.1359863
8       6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                -0.0021499   -0.0174820    0.0131823
8       6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                -0.0754289   -0.1579032    0.0070454
9       0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                -0.0186333   -0.0827128    0.0454462
9       0-24 months   ki1000111-WASH-Kenya        KENYA                          Control              NA                 0.0611888   -0.0307348    0.1531124
9       0-24 months   ki1000304-EU                INDIA                          Control              NA                -0.0756115   -0.1556465    0.0044235
9       0-24 months   ki1000304-VITAMIN-A         INDIA                          Control              NA                 0.0065930   -0.0338492    0.0470352
9       0-24 months   ki1000304-Vitamin-B12       INDIA                          Control              NA                 0.0569801   -0.0816098    0.1955699
9       0-24 months   ki1000304-ZnMort            INDIA                          Other                NA                -0.0829253   -0.1529635   -0.0128872
9       0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              NA                 0.0270531   -0.0779717    0.1320779
9       0-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Control              NA                -0.0085620   -0.0801828    0.0630587
9       0-24 months   ki1119695-PROBIT            BELARUS                        Control              NA                -0.0059899   -0.0268531    0.0148733
9       0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                 0.0187484   -0.0047383    0.0422352
9       0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                 0.0428293   -0.0345529    0.1202115
9       0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control              NA                -0.0410397   -0.1551090    0.0730297
9       0-24 months   ki1148112-LCNI-5            MALAWI                         Control              NA                -0.0569801   -0.1955699    0.0816098
9       0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                -0.0237460   -0.0403032   -0.0071888
9       0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                -0.0729053   -0.1686593    0.0228487
9       0-6 months    ki1119695-PROBIT            BELARUS                        Control              NA                 0.0052538   -0.0093792    0.0198869
9       0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                 0.0042799   -0.0172257    0.0257856
9       0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                -0.0270630   -0.0432879   -0.0108381
9       0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                 0.0007645   -0.1144631    0.1159922
9       6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                -0.0307218   -0.0865924    0.0251489
9       6-24 months   ki1000304-VITAMIN-A         INDIA                          Control              NA                 0.0061688   -0.0241181    0.0364557
9       6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Control              NA                -0.0188162   -0.0661737    0.0285414
9       6-24 months   ki1119695-PROBIT            BELARUS                        Control              NA                 0.0012621   -0.0062381    0.0087622
9       6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                 0.0057804   -0.0128732    0.0244340
9       6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control              NA                 0.0244726   -0.1030563    0.1520014
9       6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                -0.0149375   -0.0310075    0.0011326
9       6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                -0.0854280   -0.1860702    0.0152142
10      0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                -0.0108608   -0.0902763    0.0685547
10      0-24 months   ki1000111-WASH-Kenya        KENYA                          Control              NA                -0.0127683   -0.0648090    0.0392725
10      0-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Control              NA                -0.0161199   -0.0681396    0.0358998
10      0-24 months   ki1000304-EU                INDIA                          Control              NA                -0.0035314   -0.0703514    0.0632887
10      0-24 months   ki1000304-VITAMIN-A         INDIA                          Control              NA                -0.0287378   -0.0776939    0.0202183
10      0-24 months   ki1000304-Vitamin-B12       INDIA                          Control              NA                -0.0851159   -0.1552305   -0.0150012
10      0-24 months   ki1000304-ZnMort            INDIA                          Other                NA                -0.0110837   -0.1049650    0.0827975
10      0-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control              NA                 0.0230769   -0.0217415    0.0678953
10      0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              NA                -0.0111190   -0.1034291    0.0811910
10      0-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Control              NA                -0.0797982   -0.1461472   -0.0134492
10      0-24 months   ki1119695-PROBIT            BELARUS                        Control              NA                -0.0170597   -0.0298387   -0.0042807
10      0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                 0.0096961   -0.0173747    0.0367670
10      0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                -0.1215805   -0.2158958   -0.0272653
10      0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control              NA                 0.1041667   -0.0345308    0.2428641
10      0-24 months   ki1148112-LCNI-5            MALAWI                         Control              NA                 0.0767857   -0.0477625    0.2013339
10      0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                -0.0298123   -0.0457261   -0.0138985
10      0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                 0.0173092   -0.0896424    0.1242609
10      0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Control              NA                 0.0243363   -0.0408633    0.0895359
10      0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              NA                 0.0149491   -0.0457907    0.0756889
10      0-6 months    ki1119695-PROBIT            BELARUS                        Control              NA                -0.0029536   -0.0113285    0.0054213
10      0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                -0.0128912   -0.0383118    0.0125294
10      0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                -0.0300444   -0.0443034   -0.0157854
10      0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                 0.0311880   -0.0616878    0.1240638
10      6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                -0.0115303   -0.0690345    0.0459738
10      6-24 months   ki1000111-WASH-Kenya        KENYA                          Control              NA                 0.0021708   -0.0370535    0.0413951
10      6-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Control              NA                -0.0151515   -0.0759447    0.0456416
10      6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control              NA                 0.0906354    0.0185606    0.1627101
10      6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              NA                -0.0627740   -0.1498078    0.0242598
10      6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Control              NA                -0.0519568   -0.0871066   -0.0168070
10      6-24 months   ki1119695-PROBIT            BELARUS                        Control              NA                -0.0051269   -0.0120449    0.0017911
10      6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                -0.0038426   -0.0257423    0.0180571
10      6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control              NA                 0.0909774   -0.0441172    0.2260721
10      6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                -0.0114064   -0.0288895    0.0060767
10      6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                -0.0185590   -0.1232707    0.0861528
11      0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                -0.0295238   -0.1139410    0.0548934
11      0-24 months   ki1000111-WASH-Kenya        KENYA                          Control              NA                 0.0306732   -0.0146566    0.0760029
11      0-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Control              NA                -0.0610302   -0.0960131   -0.0260474
11      0-24 months   ki1000304-EU                INDIA                          Control              NA                -0.0308642   -0.1080976    0.0463692
11      0-24 months   ki1000304-VITAMIN-A         INDIA                          Control              NA                -0.0134535   -0.0613960    0.0344889
11      0-24 months   ki1000304-Vitamin-B12       INDIA                          Control              NA                -0.0436230   -0.1227796    0.0355335
11      0-24 months   ki1000304-ZnMort            INDIA                          Other                NA                -0.0625000   -0.1555009    0.0305009
11      0-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control              NA                -0.0324871   -0.1203212    0.0553470
11      0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              NA                 0.0091276   -0.0810315    0.0992867
11      0-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Control              NA                -0.0083064   -0.0897470    0.0731342
11      0-24 months   ki1119695-PROBIT            BELARUS                        Control              NA                -0.0046822   -0.0255408    0.0161765
11      0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                -0.0035094   -0.0283088    0.0212900
11      0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                -0.0743927   -0.1612203    0.0124349
11      0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control              NA                 0.0389082   -0.0837937    0.1616102
11      0-24 months   ki1148112-LCNI-5            MALAWI                         Control              NA                 0.0293878   -0.0699684    0.1287439
11      0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                -0.0205745   -0.0354942   -0.0056548
11      0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                 0.1194444   -0.0234636    0.2623525
11      0-6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Control              NA                -0.0606061   -0.1244765    0.0032644
11      0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Control              NA                 0.0547619   -0.0391530    0.1486768
11      0-6 months    ki1119695-PROBIT            BELARUS                        Control              NA                -0.0084219   -0.0246892    0.0078453
11      0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                 0.0047793   -0.0164265    0.0259850
11      0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                -0.3139098   -0.4095131   -0.2183064
11      0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                -0.0250401   -0.0392306   -0.0108496
11      6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                 0.0042808   -0.0711410    0.0797025
11      6-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Control              NA                -0.0598684   -0.1002568   -0.0194800
11      6-24 months   ki1000304-VITAMIN-A         INDIA                          Control              NA                -0.0238403   -0.0563818    0.0087012
11      6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control              NA                -0.0876437   -0.1664578   -0.0088296
11      6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              NA                -0.0285784   -0.1156749    0.0585181
11      6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Control              NA                -0.0649895   -0.1108722   -0.0191069
11      6-24 months   ki1119695-PROBIT            BELARUS                        Control              NA                 0.0042997   -0.0030491    0.0116485
11      6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                -0.0270002   -0.0472205   -0.0067798
11      6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control              NA                 0.0403060   -0.0787071    0.1593190
11      6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                 0.0070337   -0.0123606    0.0264279
11      6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                 0.0475480   -0.0925618    0.1876577
12      0-24 months   ki1000107-Serrinha-VitA     BRAZIL                         Control              NA                 0.0362873    0.0065182    0.0660564
12      0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                 0.0478723   -0.0471380    0.1428827
12      0-24 months   ki1000111-WASH-Kenya        KENYA                          Control              NA                -0.0545661   -0.0947080   -0.0144241
12      0-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Control              NA                 0.0279044   -0.0213948    0.0772036
12      0-24 months   ki1000304-EU                INDIA                          Control              NA                 0.0136028   -0.0581230    0.0853286
12      0-24 months   ki1000304-VITAMIN-A         INDIA                          Control              NA                -0.0163934   -0.0793806    0.0465937
12      0-24 months   ki1000304-Vitamin-B12       INDIA                          Control              NA                 0.0197412   -0.0507215    0.0902039
12      0-24 months   ki1000304-ZnMort            INDIA                          Other                NA                 0.0414212   -0.0258916    0.1087339
12      0-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control              NA                -0.0281955   -0.0794721    0.0230811
12      0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              NA                 0.0230821   -0.0652093    0.1113735
12      0-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Control              NA                 0.0569692    0.0109083    0.1030301
12      0-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Control              NA                -0.0123457   -0.1048842    0.0801928
12      0-24 months   ki1119695-PROBIT            BELARUS                        Control              NA                -0.0170926   -0.0327748   -0.0014105
12      0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                 0.0297896    0.0062847    0.0532946
12      0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                -0.0074201   -0.0816559    0.0668157
12      0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control              NA                -0.0028073   -0.1202758    0.1146612
12      0-24 months   ki1148112-LCNI-5            MALAWI                         Control              NA                 0.0359477   -0.0733153    0.1452107
12      0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                -0.0001422   -0.0175793    0.0172949
12      0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                -0.0032206   -0.1845576    0.1781164
12      0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Control              NA                -0.0498668   -0.1130533    0.0133197
12      0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Control              NA                -0.0044563   -0.1041643    0.0952516
12      0-6 months    ki1119695-PROBIT            BELARUS                        Control              NA                -0.0079877   -0.0212504    0.0052751
12      0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                 0.0494874    0.0293093    0.0696655
12      0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                -0.0118290   -0.0304230    0.0067651
12      6-24 months   ki1000107-Serrinha-VitA     BRAZIL                         Control              NA                 0.0091052   -0.0106198    0.0288302
12      6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                 0.0315862   -0.0555400    0.1187124
12      6-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Control              NA                 0.0183950   -0.0363896    0.0731796
12      6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control              NA                -0.0185185   -0.0784756    0.0414385
12      6-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Control              NA                 0.0053543   -0.0245979    0.0353066
12      6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Control              NA                -0.0367647   -0.1208864    0.0473570
12      6-24 months   ki1119695-PROBIT            BELARUS                        Control              NA                -0.0037973   -0.0130765    0.0054820
12      6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                 0.0100256   -0.0105015    0.0305527
12      6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control              NA                -0.0047404   -0.1207344    0.1112537
12      6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                 0.0160555   -0.0038603    0.0359712


### Parameter: PAF


month   agecat        studyid                     country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------  ------------  --------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
1       0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                 0.1278317   -0.1188182    0.3201062
1       0-24 months   ki1000111-WASH-Kenya        KENYA                          Control              NA                 0.0305481   -0.1303106    0.1685144
1       0-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Control              NA                -0.1242741   -0.2580430   -0.0047290
1       0-24 months   ki1000304-EU                INDIA                          Control              NA                -0.1104167   -0.3041195    0.0545152
1       0-24 months   ki1000304-VITAMIN-A         INDIA                          Control              NA                 0.0214549   -0.0537102    0.0912582
1       0-24 months   ki1000304-Vitamin-B12       INDIA                          Control              NA                -0.1168831   -0.2657400    0.0144675
1       0-24 months   ki1000304-ZnMort            INDIA                          Other                NA                -0.1741742   -0.4313655    0.0368044
1       0-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control              NA                -0.0299496   -0.1202735    0.0530918
1       0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              NA                -0.0674419   -0.6009950    0.2882975
1       0-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Control              NA                 0.2391232    0.1266044    0.3371463
1       0-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Control              NA                -0.2256410   -0.4782369   -0.0162078
1       0-24 months   ki1119695-PROBIT            BELARUS                        Control              NA                -0.0140131   -0.1633057    0.1161201
1       0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                 0.0036661   -0.0675143    0.0701003
1       0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                 0.0375753   -0.0985511    0.1568337
1       0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control              NA                 0.1687980   -0.1849111    0.4169210
1       0-24 months   ki1148112-LCNI-5            MALAWI                         Control              NA                 0.0320988   -0.1551236    0.1889761
1       0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                -0.0249780   -0.0722101    0.0201736
1       0-6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Control              NA                -0.1941176   -0.4317555    0.0040779
1       0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Control              NA                 0.0095238   -0.1226553    0.1261404
1       0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Control              NA                 0.1893382    0.0091706    0.3367451
1       0-6 months    ki1119695-PROBIT            BELARUS                        Control              NA                 0.0584291   -0.2171156    0.2715929
1       0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                 0.0363497   -0.0899471    0.1480118
1       0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                -0.0926102   -0.1833782   -0.0088042
1       6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                 0.0508932   -0.3979912    0.3556441
1       6-24 months   ki1000111-WASH-Kenya        KENYA                          Control              NA                 0.1096320   -0.2756551    0.3785506
1       6-24 months   ki1000304-VITAMIN-A         INDIA                          Control              NA                -0.0046296   -0.2842603    0.2141152
1       6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control              NA                -0.1931818   -0.5616200    0.0883295
1       6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              NA                 0.1801075   -0.6729674    0.5981848
1       6-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Control              NA                 0.3777778    0.1264229    0.5568102
1       6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Control              NA                -1.0537400   -2.0919505   -0.3641383
1       6-24 months   ki1119695-PROBIT            BELARUS                        Control              NA                 0.0360701   -0.2306777    0.2450007
1       6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                 0.0586420   -0.0741376    0.1750080
1       6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control              NA                -0.0677083   -0.5911829    0.2835512
1       6-24 months   ki1148112-LCNI-5            MALAWI                         Control              NA                -0.1647059   -0.4932078    0.0915265
1       6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                 0.0808709   -0.0089399    0.1626871
2       0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                 0.0047233   -0.2668186    0.2180604
2       0-24 months   ki1000111-WASH-Kenya        KENYA                          Control              NA                 0.0650000   -0.1990246    0.2708865
2       0-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Control              NA                 0.2487725    0.0139252    0.4276877
2       0-24 months   ki1000304-EU                INDIA                          Control              NA                -0.1082689   -0.2710412    0.0336584
2       0-24 months   ki1000304-VITAMIN-A         INDIA                          Control              NA                -0.1284624   -0.2429777   -0.0244974
2       0-24 months   ki1000304-Vitamin-B12       INDIA                          Control              NA                -0.0697674   -0.2561859    0.0889865
2       0-24 months   ki1000304-ZnMort            INDIA                          Other                NA                 0.1098901   -0.1347265    0.3017740
2       0-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control              NA                -0.1025641   -0.3723865    0.1142090
2       0-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Control              NA                 0.1072546    0.0086901    0.1960189
2       0-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Control              NA                -0.0130736   -0.1376931    0.0978955
2       0-24 months   ki1119695-PROBIT            BELARUS                        Control              NA                -0.0965746   -0.2932355    0.0701802
2       0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                -0.1419077   -0.2378637   -0.0533899
2       0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                -0.2304922   -0.4038163   -0.0785678
2       0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control              NA                 0.1056511   -0.1961673    0.3313143
2       0-24 months   ki1148112-LCNI-5            MALAWI                         Control              NA                 0.0083259   -0.1259506    0.1265891
2       0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                 0.0181069   -0.0301385    0.0640929
2       0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                 0.0207317   -0.1956004    0.1979206
2       0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Control              NA                -0.1964286   -0.6374566    0.1258142
2       0-6 months    ki1119695-PROBIT            BELARUS                        Control              NA                -0.1076923   -0.3512680    0.0919771
2       0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                -0.3008300   -0.5081669   -0.1219970
2       0-6 months    ki1148112-LCNI-5            MALAWI                         Control              NA                -0.4687500   -0.9922956   -0.0827844
2       0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                -0.1156136   -0.2225380   -0.0180409
2       0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                 0.0820896   -0.3948649    0.3959561
2       6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                 0.0281967   -0.4718871    0.3583736
2       6-24 months   ki1000111-WASH-Kenya        KENYA                          Control              NA                -0.1407223   -0.9557501    0.3346556
2       6-24 months   ki1000304-VITAMIN-A         INDIA                          Control              NA                -0.2151899   -0.8078432    0.1831778
2       6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control              NA                -0.2797203   -0.6056640   -0.0199419
2       6-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Control              NA                 0.0656760   -0.1785659    0.2593020
2       6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Control              NA                 0.1351351   -0.1671119    0.3591092
2       6-24 months   ki1119695-PROBIT            BELARUS                        Control              NA                -0.0523916   -0.4787646    0.2510450
2       6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                -0.2104629   -0.4209660   -0.0311439
2       6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                -0.0055096   -0.3270716    0.2381348
2       6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control              NA                 0.1827957   -0.2778460    0.4773839
2       6-24 months   ki1148112-LCNI-5            MALAWI                         Control              NA                 0.0692641   -0.2175563    0.2885180
2       6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                 0.1944740    0.1130155    0.2684516
2       6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                 0.0556003   -0.3173236    0.3229524
3       0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                -0.2044064   -0.4222445   -0.0199334
3       0-24 months   ki1000111-WASH-Kenya        KENYA                          Control              NA                -0.0197205   -0.2336963    0.1571427
3       0-24 months   ki1000304-EU                INDIA                          Control              NA                -0.0028352   -0.1471913    0.1233559
3       0-24 months   ki1000304-VITAMIN-A         INDIA                          Control              NA                -0.0183646   -0.1063566    0.0626292
3       0-24 months   ki1000304-ZnMort            INDIA                          Other                NA                 0.0330579   -0.1150075    0.1614612
3       0-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control              NA                 0.1904762   -0.0150631    0.3543960
3       0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              NA                -0.2868217   -0.9232279    0.1389943
3       0-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Control              NA                -0.1042312   -0.4125140    0.1367686
3       0-24 months   ki1119695-PROBIT            BELARUS                        Control              NA                -0.0985858   -0.3069744    0.0765765
3       0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                -0.0358998   -0.1164145    0.0388082
3       0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                 0.0666118   -0.0729332    0.1880077
3       0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control              NA                 0.3093126   -0.1947498    0.6007122
3       0-24 months   ki1148112-LCNI-5            MALAWI                         Control              NA                -0.0689655   -0.2043931    0.0512339
3       0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                -0.0747762   -0.1256815   -0.0261730
3       0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                -0.0012121   -0.2086479    0.1706223
3       0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Control              NA                 0.4272446    0.1540540    0.6122107
3       0-6 months    ki1119695-PROBIT            BELARUS                        Control              NA                -0.0662879   -0.4150102    0.1964935
3       0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                -0.0486431   -0.2041206    0.0867589
3       0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                -0.1700000   -0.6029115    0.1459915
3       0-6 months    ki1148112-LCNI-5            MALAWI                         Control              NA                -0.2566667   -0.6023844    0.0144618
3       0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                -0.1276373   -0.2070824   -0.0534211
3       0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                 0.1712959   -0.1707169    0.4133932
3       6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                -0.3172515   -0.8590467    0.0666445
3       6-24 months   ki1000304-VITAMIN-A         INDIA                          Control              NA                -0.0909091   -0.5213919    0.2177672
3       6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control              NA                 0.1323529   -0.2679992    0.4062998
3       6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Control              NA                -0.4672012   -1.4750421    0.1302454
3       6-24 months   ki1119695-PROBIT            BELARUS                        Control              NA                 0.0255273   -0.2009323    0.2092834
3       6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                -0.2748180   -0.4877843   -0.0923363
3       6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                 0.1021324   -0.1886424    0.3217757
3       6-24 months   ki1148112-LCNI-5            MALAWI                         Control              NA                 0.2500000    0.0073026    0.4333621
3       6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                -0.0247665   -0.1287192    0.0696125
3       6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                -0.0584021   -0.4545546    0.2298571
4       0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                 0.1429129   -0.0451998    0.2971696
4       0-24 months   ki1000111-WASH-Kenya        KENYA                          Control              NA                 0.0090293   -0.1839965    0.1705862
4       0-24 months   ki1000304-EU                INDIA                          Control              NA                 0.0047965   -0.1617127    0.1474398
4       0-24 months   ki1000304-VITAMIN-A         INDIA                          Control              NA                -0.0916409   -0.1877414   -0.0033159
4       0-24 months   ki1000304-ZnMort            INDIA                          Other                NA                -0.0991736   -0.2386924    0.0246308
4       0-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control              NA                 0.0615836   -0.2319325    0.2851675
4       0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              NA                -0.0915653   -0.5049633    0.2082764
4       0-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Control              NA                 0.1151648   -0.1020517    0.2895676
4       0-24 months   ki1119695-PROBIT            BELARUS                        Control              NA                -0.0095282   -0.1789932    0.1355783
4       0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                -0.0331721   -0.1209040    0.0476931
4       0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                -0.0944581   -0.2317910    0.0275635
4       0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control              NA                -0.0720000   -0.5679373    0.2670727
4       0-24 months   ki1148112-LCNI-5            MALAWI                         Control              NA                 0.1030303    0.0135515    0.1843927
4       0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                -0.0959989   -0.1603077   -0.0352543
4       0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                 0.0170570   -0.1019671    0.1232253
4       0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Control              NA                 0.1402116   -0.3396677    0.4481945
4       0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              NA                -0.1037234   -1.2023990    0.4468734
4       0-6 months    ki1119695-PROBIT            BELARUS                        Control              NA                 0.0457672   -0.1692606    0.2212512
4       0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                 0.0320899   -0.1093629    0.1555063
4       0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                -0.1336957   -0.4175163    0.0932973
4       0-6 months    ki1148112-LCNI-5            MALAWI                         Control              NA                 0.0375000   -0.2054774    0.2315026
4       0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                -0.0990863   -0.2130783    0.0041940
4       0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                 0.2053688   -0.0039612    0.3710527
4       6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                 0.1162029   -0.2339753    0.3670074
4       6-24 months   ki1000111-WASH-Kenya        KENYA                          Control              NA                 0.4432323   -0.0356118    0.7006694
4       6-24 months   ki1000304-VITAMIN-A         INDIA                          Control              NA                 0.2166582   -0.1093543    0.4468634
4       6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control              NA                -0.0855615   -0.5139195    0.2215942
4       6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              NA                -0.1625000   -0.8613169    0.2739516
4       6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Control              NA                -0.3611111   -0.7929768   -0.0332668
4       6-24 months   ki1119695-PROBIT            BELARUS                        Control              NA                -0.1242741   -0.4748488    0.1429682
4       6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                -0.1399122   -0.3528879    0.0395361
4       6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                -0.7012987   -1.2881926   -0.2649360
4       6-24 months   ki1148112-LCNI-5            MALAWI                         Control              NA                -0.0926829   -0.3339927    0.1049756
4       6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                -0.0339773   -0.1553837    0.0746718
4       6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                -0.0195652   -0.2211701    0.1487564
5       0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                -0.0748197   -0.2518033    0.0771414
5       0-24 months   ki1000111-WASH-Kenya        KENYA                          Control              NA                 0.0845504   -0.0712540    0.2176944
5       0-24 months   ki1000304-EU                INDIA                          Control              NA                -0.0644940   -0.2692881    0.1072575
5       0-24 months   ki1000304-VITAMIN-A         INDIA                          Control              NA                 0.0012237   -0.0897118    0.0845708
5       0-24 months   ki1000304-ZnMort            INDIA                          Other                NA                -0.0072993   -0.1190379    0.0932820
5       0-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control              NA                -0.1263736   -0.2839511    0.0118646
5       0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              NA                -0.1434109   -0.8223469    0.2825799
5       0-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Control              NA                -0.1838057   -0.4666022    0.0444608
5       0-24 months   ki1119695-PROBIT            BELARUS                        Control              NA                -0.0795243   -0.2711358    0.0832036
5       0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                 0.0244919   -0.0556562    0.0985550
5       0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                 0.3157895    0.2268824    0.3944724
5       0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control              NA                 0.1625310   -0.2984158    0.4598384
5       0-24 months   ki1148112-LCNI-5            MALAWI                         Control              NA                 0.0301378   -0.0796244    0.1287408
5       0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                 0.0248377   -0.0320812    0.0786175
5       0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                -0.0412283   -0.1816277    0.0824891
5       0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Control              NA                -0.1213518   -0.4938487    0.1582616
5       0-6 months    ki1119695-PROBIT            BELARUS                        Control              NA                -0.0211065   -0.3003504    0.1981711
5       0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                 0.0784127   -0.0480286    0.1895993
5       0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                 0.2328042    0.0165102    0.4015298
5       0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                -0.0178176   -0.1250909    0.0792275
5       0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                -0.1065095   -0.3934051    0.1213156
5       6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                -0.0531136   -0.4302712    0.2245889
5       6-24 months   ki1000111-WASH-Kenya        KENYA                          Control              NA                -0.0660511   -0.4939426    0.2392847
5       6-24 months   ki1000304-VITAMIN-A         INDIA                          Control              NA                 0.1827586   -0.2010400    0.4439124
5       6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control              NA                -0.0196078   -0.0726462    0.0308080
5       6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Control              NA                -0.4100765   -0.9131629   -0.0392820
5       6-24 months   ki1119695-PROBIT            BELARUS                        Control              NA                -0.1053569   -0.4397230    0.1513549
5       6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                 0.2472938    0.1104345    0.3630974
5       6-24 months   ki1148112-LCNI-5            MALAWI                         Control              NA                 0.0479512   -0.1642505    0.2214760
5       6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                 0.1980314    0.0861540    0.2962123
5       6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                -0.1030741   -0.3477765    0.0972000
6       0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                -0.0063270   -0.2167876    0.1677314
6       0-24 months   ki1000111-WASH-Kenya        KENYA                          Control              NA                -0.0151616   -0.3037930    0.2095730
6       0-24 months   ki1000304-EU                INDIA                          Control              NA                 0.0001602   -0.1656827    0.1424085
6       0-24 months   ki1000304-VITAMIN-A         INDIA                          Control              NA                 0.0260338   -0.0708544    0.1141558
6       0-24 months   ki1000304-Vitamin-B12       INDIA                          Control              NA                 0.0710227   -0.0929223    0.2103750
6       0-24 months   ki1000304-ZnMort            INDIA                          Other                NA                 0.0726496   -0.0451457    0.1771685
6       0-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control              NA                -0.2246964   -0.5032351    0.0022312
6       0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              NA                -0.0723982   -0.7587397    0.3461011
6       0-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Control              NA                -0.2340077   -0.4969109   -0.0172782
6       0-24 months   ki1119695-PROBIT            BELARUS                        Control              NA                -0.1777136   -0.4788951    0.0621313
6       0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                 0.0362426   -0.0355780    0.1030821
6       0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                -0.3777778   -0.6319837   -0.1631683
6       0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control              NA                 0.0060606   -0.4123785    0.3005306
6       0-24 months   ki1148112-LCNI-5            MALAWI                         Control              NA                -0.0731132   -0.2135182    0.0510468
6       0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                -0.0639489   -0.1241386   -0.0069819
6       0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                 0.1142358   -0.0740702    0.2695280
6       0-6 months    ki1000304-VITAMIN-A         INDIA                          Control              NA                 0.1250000   -0.2407097    0.3829137
6       0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Control              NA                -0.1793313   -0.3629152   -0.0204760
6       0-6 months    ki1119695-PROBIT            BELARUS                        Control              NA                -0.2386499   -0.5461982    0.0077252
6       0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                -0.0099890   -0.1179733    0.0875651
6       0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                -0.3448276   -0.7853809   -0.0129834
6       0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                -0.0761277   -0.1869054    0.0243108
6       0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                 0.0174658   -0.4055245    0.3131578
6       6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                 0.0442617   -0.3976716    0.3464589
6       6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control              NA                -0.2911111   -0.7329132    0.0380546
6       6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Control              NA                -0.4464770   -0.8683646   -0.1198540
6       6-24 months   ki1119695-PROBIT            BELARUS                        Control              NA                -0.1224365   -0.7294293    0.2715148
6       6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                 0.3300970    0.2079956    0.4333744
6       6-24 months   ki1148112-LCNI-5            MALAWI                         Control              NA                 0.0971787   -0.1694123    0.3029949
6       6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                -0.0697697   -0.1853024    0.0345019
6       6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                 0.0775000   -0.2303384    0.3083153
7       0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                -0.2389365   -0.5221427   -0.0084230
7       0-24 months   ki1000111-WASH-Kenya        KENYA                          Control              NA                 0.2307692   -0.3072638    0.5473630
7       0-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Control              NA                -0.0010603   -0.0335730    0.0304296
7       0-24 months   ki1000304-EU                INDIA                          Control              NA                 0.0189533   -0.1256812    0.1450043
7       0-24 months   ki1000304-VITAMIN-A         INDIA                          Control              NA                 0.0520311   -0.0319211    0.1291533
7       0-24 months   ki1000304-Vitamin-B12       INDIA                          Control              NA                 0.0748299   -0.0581127    0.1910695
7       0-24 months   ki1000304-ZnMort            INDIA                          Other                NA                 0.0706237   -0.1274478    0.2338978
7       0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              NA                -0.0127877   -0.5518466    0.3390204
7       0-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Control              NA                -0.2763975   -0.6312049    0.0012348
7       0-24 months   ki1119695-PROBIT            BELARUS                        Control              NA                -0.0983180   -0.2630262    0.0449110
7       0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                 0.0961961    0.0215024    0.1651881
7       0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                 0.0200000   -0.1346830    0.1535962
7       0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control              NA                -0.1410714   -0.7219337    0.2438478
7       0-24 months   ki1148112-LCNI-5            MALAWI                         Control              NA                 0.0526316   -0.0659951    0.1580572
7       0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                 0.0449023   -0.0064913    0.0936716
7       0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                 0.0202994   -0.1125445    0.1372810
7       0-6 months    ki1000304-VITAMIN-A         INDIA                          Control              NA                 0.3126935    0.1089214    0.4698669
7       0-6 months    ki1119695-PROBIT            BELARUS                        Control              NA                -0.0739453   -0.3335304    0.1351089
7       0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                 0.2172101    0.1045229    0.3157168
7       0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                -0.4821429   -0.9698909   -0.1151620
7       0-6 months    ki1148112-LCNI-5            MALAWI                         Control              NA                 0.0113636   -0.3589458    0.2807646
7       0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                -0.0052333   -0.0947544    0.0769673
7       0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                 0.1219892   -0.1140106    0.3079932
7       6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                -0.7294430   -1.5409233   -0.1771205
7       6-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Control              NA                -0.0026344   -0.0700511    0.0605349
7       6-24 months   ki1000304-VITAMIN-A         INDIA                          Control              NA                -0.0884354   -0.5207159    0.2209646
7       6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Control              NA                -0.5638418   -1.3665312   -0.0334118
7       6-24 months   ki1119695-PROBIT            BELARUS                        Control              NA                -0.0748123   -0.3304099    0.1316800
7       6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                 0.0433516   -0.1300620    0.1901541
7       6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                 0.0992743   -0.0080724    0.1951900
7       6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                -0.0627354   -0.2783595    0.1165189
8       0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                -0.0416008   -0.2645184    0.1420195
8       0-24 months   ki1000111-WASH-Kenya        KENYA                          Control              NA                -0.2622549   -0.7156364    0.0713140
8       0-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Control              NA                -0.2081985   -0.3463410   -0.0842302
8       0-24 months   ki1000304-EU                INDIA                          Control              NA                -0.0924202   -0.2404841    0.0379708
8       0-24 months   ki1000304-VITAMIN-A         INDIA                          Control              NA                -0.0450000   -0.1283677    0.0322082
8       0-24 months   ki1000304-Vitamin-B12       INDIA                          Control              NA                 0.1111111   -0.1070955    0.2863096
8       0-24 months   ki1000304-ZnMort            INDIA                          Other                NA                 0.0536986   -0.1398393    0.2143750
8       0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              NA                 0.1860000   -0.3014651    0.4908845
8       0-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Control              NA                 0.1967578    0.0283058    0.3360071
8       0-24 months   ki1119695-PROBIT            BELARUS                        Control              NA                -0.0934878   -0.2446745    0.0393347
8       0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                -0.0398125   -0.1252216    0.0391138
8       0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                 0.1925466    0.0656273    0.3022259
8       0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control              NA                -0.1022727   -0.4659041    0.1711564
8       0-24 months   ki1148112-LCNI-5            MALAWI                         Control              NA                -0.2900000   -0.6493003   -0.0089733
8       0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                -0.0255140   -0.0760710    0.0226677
8       0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                -0.1322148   -0.3164206    0.0262152
8       0-6 months    ki1000304-VITAMIN-A         INDIA                          Control              NA                 0.0045249   -0.2670441    0.2178878
8       0-6 months    ki1119695-PROBIT            BELARUS                        Control              NA                -0.0781497   -0.2551601    0.0738976
8       0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                -0.1344948   -0.2900908    0.0023350
8       0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                 0.1707718   -0.0974599    0.3734446
8       0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                -0.1180575   -0.1968937   -0.0444139
8       0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                -0.0973502   -0.4860669    0.1896882
8       6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                -0.0726852   -0.6181865    0.2889240
8       6-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Control              NA                -0.3500000   -0.6859132   -0.0810165
8       6-24 months   ki1000304-VITAMIN-A         INDIA                          Control              NA                -0.1597315   -0.4791500    0.0907093
8       6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Control              NA                 0.2902778    0.0655271    0.4609735
8       6-24 months   ki1119695-PROBIT            BELARUS                        Control              NA                 0.0309614   -0.2029033    0.2193589
8       6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                -0.0392720   -0.2007385    0.1004816
8       6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control              NA                -0.0277778   -0.8190884    0.4193096
8       6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                -0.0143405   -0.1235842    0.0842817
8       6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                -0.2623848   -0.5834383   -0.0064272
9       0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                -0.0502804   -0.2382610    0.1091629
9       0-24 months   ki1000111-WASH-Kenya        KENYA                          Control              NA                 0.2243590   -0.1940158    0.4961381
9       0-24 months   ki1000304-EU                INDIA                          Control              NA                -0.1867375   -0.4040385   -0.0030679
9       0-24 months   ki1000304-VITAMIN-A         INDIA                          Control              NA                 0.0140523   -0.0747142    0.0954872
9       0-24 months   ki1000304-Vitamin-B12       INDIA                          Control              NA                 0.1098901   -0.1650201    0.3199297
9       0-24 months   ki1000304-ZnMort            INDIA                          Other                NA                -0.1703331   -0.3271067   -0.0320795
9       0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              NA                 0.1191489   -0.4884322    0.4787142
9       0-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Control              NA                -0.0230940   -0.2411916    0.1566804
9       0-24 months   ki1119695-PROBIT            BELARUS                        Control              NA                -0.0471741   -0.2344257    0.1116731
9       0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                 0.0643225   -0.0142557    0.1368129
9       0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                 0.0896739   -0.0706077    0.2259597
9       0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control              NA                -0.0872093   -0.3595354    0.1305677
9       0-24 months   ki1148112-LCNI-5            MALAWI                         Control              NA                -0.1183432   -0.4935686    0.1626153
9       0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                -0.0621154   -0.1092056   -0.0170244
9       0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                -0.1548033   -0.3758641    0.0307395
9       0-6 months    ki1119695-PROBIT            BELARUS                        Control              NA                 0.0709270   -0.1323874    0.2377372
9       0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                 0.0289439   -0.1230919    0.1603983
9       0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                -0.1002608   -0.1686903   -0.0358381
9       0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                 0.0030488   -0.5808008    0.3712606
9       6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                -0.2081803   -0.6508409    0.1157841
9       6-24 months   ki1000304-VITAMIN-A         INDIA                          Control              NA                 0.0719697   -0.3225959    0.3488259
9       6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Control              NA                -0.1073899   -0.4498962    0.1542068
9       6-24 months   ki1119695-PROBIT            BELARUS                        Control              NA                 0.0423618   -0.2322043    0.2557478
9       6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                 0.0480426   -0.1116726    0.1848113
9       6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control              NA                 0.0840580   -0.4772311    0.4320795
9       6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                -0.0776380   -0.1718833    0.0090280
9       6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                -0.3249614   -0.7592362    0.0021108
10      0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                -0.0520523   -0.5105421    0.2672736
10      0-24 months   ki1000111-WASH-Kenya        KENYA                          Control              NA                -0.0396361   -0.2144111    0.1099858
10      0-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Control              NA                -0.0281760   -0.1260711    0.0612086
10      0-24 months   ki1000304-EU                INDIA                          Control              NA                -0.0086375   -0.1860659    0.1422487
10      0-24 months   ki1000304-VITAMIN-A         INDIA                          Control              NA                -0.0676389   -0.1983143    0.0487864
10      0-24 months   ki1000304-Vitamin-B12       INDIA                          Control              NA                -0.1628303   -0.3319064   -0.0152173
10      0-24 months   ki1000304-ZnMort            INDIA                          Other                NA                -0.0197802   -0.2019284    0.1347640
10      0-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control              NA                 0.0344828   -0.0325361    0.0971516
10      0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              NA                -0.0473588   -0.5244179    0.2804069
10      0-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Control              NA                -0.2626985   -0.5703794   -0.0153009
10      0-24 months   ki1119695-PROBIT            BELARUS                        Control              NA                -0.1319575   -0.2526889   -0.0228619
10      0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                 0.0298792   -0.0545336    0.1075349
10      0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                -0.2332362   -0.4785858   -0.0285987
10      0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control              NA                 0.2380952   -0.1561836    0.4979181
10      0-24 months   ki1148112-LCNI-5            MALAWI                         Control              NA                 0.1493056   -0.0870983    0.3343003
10      0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                -0.0722050   -0.1144362   -0.0315740
10      0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                 0.0369845   -0.2208008    0.2403357
10      0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Control              NA                 0.0887097   -0.1559942    0.2816140
10      0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              NA                 0.1542474   -0.7692971    0.5957166
10      0-6 months    ki1119695-PROBIT            BELARUS                        Control              NA                -0.0433033   -0.1798847    0.0774677
10      0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                -0.0729753   -0.2391775    0.0709354
10      0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                -0.0933148   -0.1430626   -0.0457321
10      0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                 0.1093716   -0.2803454    0.3804649
10      6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                -0.1554286   -1.2564287    0.4083504
10      6-24 months   ki1000111-WASH-Kenya        KENYA                          Control              NA                 0.0208567   -0.4387583    0.3336466
10      6-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Control              NA                -0.0476190   -0.2683623    0.1347065
10      6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control              NA                 0.2097561    0.0756916    0.3243754
10      6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              NA                -0.4846153   -1.3136108    0.0473407
10      6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Control              NA                -0.3684211   -0.7613971   -0.0631198
10      6-24 months   ki1119695-PROBIT            BELARUS                        Control              NA                -0.1375727   -0.3736512    0.0579328
10      6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                -0.0301599   -0.2233886    0.1325492
10      6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control              NA                 0.2980296   -0.3118827    0.6243852
10      6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                -0.0623487   -0.1690662    0.0346272
10      6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                -0.0801887   -0.6423674    0.2895575
11      0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                -0.1054422   -0.4519489    0.1583709
11      0-24 months   ki1000111-WASH-Kenya        KENYA                          Control              NA                 0.1271693   -0.0821570    0.2960047
11      0-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Control              NA                -0.1279351   -0.2143308   -0.0476861
11      0-24 months   ki1000304-EU                INDIA                          Control              NA                -0.0617284   -0.2283790    0.0823132
11      0-24 months   ki1000304-VITAMIN-A         INDIA                          Control              NA                -0.0303790   -0.1482391    0.0753835
11      0-24 months   ki1000304-Vitamin-B12       INDIA                          Control              NA                -0.0730212   -0.2254002    0.0604094
11      0-24 months   ki1000304-ZnMort            INDIA                          Other                NA                -0.1228070   -0.3234002    0.0473814
11      0-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control              NA                -0.0545617   -0.2228749    0.0905853
11      0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              NA                 0.0469738   -0.5506029    0.4142543
11      0-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Control              NA                -0.0233766   -0.2870731    0.1862935
11      0-24 months   ki1119695-PROBIT            BELARUS                        Control              NA                -0.0351265   -0.2107413    0.1150158
11      0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                -0.0115140   -0.0972590    0.0675305
11      0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                -0.1646137   -0.4119201    0.0393755
11      0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control              NA                 0.0961263   -0.2642694    0.3537866
11      0-24 months   ki1148112-LCNI-5            MALAWI                         Control              NA                 0.0626087   -0.1589308    0.2417991
11      0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                -0.0471866   -0.0836755   -0.0119263
11      0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                 0.2687500   -0.1350585    0.5288995
11      0-6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Control              NA                -0.2222222   -0.5501366    0.0363255
11      0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Control              NA                 0.1796875   -0.1189853    0.3986403
11      0-6 months    ki1119695-PROBIT            BELARUS                        Control              NA                -0.1099493   -0.3744936    0.1036790
11      0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                 0.0343565   -0.1246974    0.1709172
11      0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                -0.9542857   -1.6346706   -0.4496053
11      0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                -0.0766994   -0.1246753   -0.0307701
11      6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                 0.0261500   -0.5629405    0.3932054
11      6-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Control              NA                -0.2369792   -0.4571218   -0.0500958
11      6-24 months   ki1000304-VITAMIN-A         INDIA                          Control              NA                -0.2402367   -0.7372231    0.1145714
11      6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control              NA                -0.3050000   -0.8051696    0.0565845
11      6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              NA                -0.2312253   -1.1754923    0.3031850
11      6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Control              NA                -0.4133333   -0.9422918   -0.0284300
11      6-24 months   ki1119695-PROBIT            BELARUS                        Control              NA                 0.1474448   -0.1036353    0.3414034
11      6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                -0.1944507   -0.3828454   -0.0317223
11      6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control              NA                 0.1596737   -0.4704114    0.5197614
11      6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                 0.0312227   -0.0559240    0.1111771
11      6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                 0.1722008   -0.5277181    0.5514542
12      0-24 months   ki1000107-Serrinha-VitA     BRAZIL                         Control              NA                 0.1227803    0.0290264    0.2074816
12      0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                 0.1607143   -0.2267759    0.4258116
12      0-24 months   ki1000111-WASH-Kenya        KENYA                          Control              NA                -0.2141639   -0.3819274   -0.0667667
12      0-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Control              NA                 0.0699292   -0.0526810    0.1782585
12      0-24 months   ki1000304-EU                INDIA                          Control              NA                 0.0351406   -0.1691735    0.2037506
12      0-24 months   ki1000304-VITAMIN-A         INDIA                          Control              NA                -0.0303030   -0.1575822    0.0829814
12      0-24 months   ki1000304-Vitamin-B12       INDIA                          Control              NA                 0.0517539   -0.1409180    0.2118884
12      0-24 months   ki1000304-ZnMort            INDIA                          Other                NA                 0.0756627   -0.0566143    0.1913799
12      0-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control              NA                -0.0500000   -0.1505031    0.0417236
12      0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              NA                 0.1196624   -0.4794107    0.4761466
12      0-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Control              NA                 0.1872745    0.0211342    0.3252162
12      0-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Control              NA                -0.0384615   -0.3853245    0.2215525
12      0-24 months   ki1119695-PROBIT            BELARUS                        Control              NA                -0.1351872   -0.2896608    0.0007838
12      0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                 0.1009741    0.0262652    0.1699511
12      0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                -0.0138889   -0.1650337    0.1176472
12      0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control              NA                -0.0060337   -0.2930097    0.2172497
12      0-24 months   ki1148112-LCNI-5            MALAWI                         Control              NA                 0.0555556   -0.1185807    0.2025829
12      0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                -0.0003298   -0.0416181    0.0393219
12      0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                -0.0062112   -0.4243181    0.2891609
12      0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Control              NA                -0.1552995   -0.4070397    0.0514006
12      0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Control              NA                -0.0127877   -0.3482845    0.2392266
12      0-6 months    ki1119695-PROBIT            BELARUS                        Control              NA                -0.1346270   -0.4205145    0.0937238
12      0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                 0.3968241    0.2859690    0.4904687
12      0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                -0.0400197   -0.1075911    0.0234293
12      6-24 months   ki1000107-Serrinha-VitA     BRAZIL                         Control              NA                 0.1196232   -0.1430630    0.3219417
12      6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                 0.1548343   -0.3993044    0.4895285
12      6-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Control              NA                 0.1049596   -0.2259236    0.3465357
12      6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control              NA                -0.0555556   -0.2644397    0.1188211
12      6-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Control              NA                 0.0691537   -0.4100796    0.3855135
12      6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Control              NA                -0.2631579   -1.3127627    0.3101031
12      6-24 months   ki1119695-PROBIT            BELARUS                        Control              NA                -0.0809179   -0.3217694    0.1160460
12      6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                 0.0653119   -0.0685316    0.1823903
12      6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control              NA                -0.0170940   -0.5344851    0.3258454
12      6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                 0.0676848   -0.0141641    0.1429280
