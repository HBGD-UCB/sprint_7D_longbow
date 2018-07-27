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

* mage
* agecat
* studyid
* country

## Data Summary

mage      agecat      studyid                     country                        tr          stunted   n_cell      n
--------  ----------  --------------------------  -----------------------------  ---------  --------  -------  -----
[25-30)   24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control           0       36    339
[25-30)   24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control           1       33    339
[25-30)   24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS               0       56    339
[25-30)   24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS               1       33    339
[25-30)   24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other             0      103    339
[25-30)   24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other             1       78    339
<20       24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control           0       43    279
<20       24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control           1       27    279
<20       24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS               0       40    279
<20       24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS               1       28    279
<20       24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other             0       80    279
<20       24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other             1       61    279
[20-25)   24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control           0       50    372
[20-25)   24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control           1       40    372
[20-25)   24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS               0       57    372
[20-25)   24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS               1       36    372
[20-25)   24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other             0      116    372
[20-25)   24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other             1       73    372
>=30      24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control           0       26    192
>=30      24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control           1       14    192
>=30      24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS               0       38    192
>=30      24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS               1       18    192
>=30      24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other             0       56    192
>=30      24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other             1       40    192
<20       6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Control           0       27    176
<20       6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Control           1        8    176
<20       6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     LNS               0       41    176
<20       6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     LNS               1       11    176
<20       6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Other             0       73    176
<20       6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Other             1       16    176
[20-25)   6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Control           0       50    237
[20-25)   6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Control           1       12    237
[20-25)   6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     LNS               0       63    237
[20-25)   6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     LNS               1        8    237
[20-25)   6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Other             0       94    237
[20-25)   6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Other             1       10    237
[25-30)   6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Control           0       38    181
[25-30)   6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Control           1        3    181
[25-30)   6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     LNS               0       37    181
[25-30)   6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     LNS               1        6    181
[25-30)   6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Other             0       87    181
[25-30)   6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Other             1       10    181
>=30      6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Control           0       17     87
>=30      6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Control           1        6     87
>=30      6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     LNS               0       18     87
>=30      6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     LNS               1        3     87
>=30      6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Other             0       37     87
>=30      6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Other             1        6     87
[25-30)   24 months   ki1000111-WASH-Kenya        KENYA                          Control           0      146    632
[25-30)   24 months   ki1000111-WASH-Kenya        KENYA                          Control           1       67    632
[25-30)   24 months   ki1000111-WASH-Kenya        KENYA                          LNS               0      105    632
[25-30)   24 months   ki1000111-WASH-Kenya        KENYA                          LNS               1       41    632
[25-30)   24 months   ki1000111-WASH-Kenya        KENYA                          Other             0      198    632
[25-30)   24 months   ki1000111-WASH-Kenya        KENYA                          Other             1       75    632
[20-25)   6 months    ki1000111-WASH-Kenya        KENYA                          Control           0       10     27
[20-25)   6 months    ki1000111-WASH-Kenya        KENYA                          Control           1        0     27
[20-25)   6 months    ki1000111-WASH-Kenya        KENYA                          LNS               0        4     27
[20-25)   6 months    ki1000111-WASH-Kenya        KENYA                          LNS               1        2     27
[20-25)   6 months    ki1000111-WASH-Kenya        KENYA                          Other             0       10     27
[20-25)   6 months    ki1000111-WASH-Kenya        KENYA                          Other             1        1     27
[20-25)   24 months   ki1000111-WASH-Kenya        KENYA                          Control           0      158    660
[20-25)   24 months   ki1000111-WASH-Kenya        KENYA                          Control           1       73    660
[20-25)   24 months   ki1000111-WASH-Kenya        KENYA                          LNS               0      104    660
[20-25)   24 months   ki1000111-WASH-Kenya        KENYA                          LNS               1       33    660
[20-25)   24 months   ki1000111-WASH-Kenya        KENYA                          Other             0      193    660
[20-25)   24 months   ki1000111-WASH-Kenya        KENYA                          Other             1       99    660
>=30      24 months   ki1000111-WASH-Kenya        KENYA                          Control           0      155    646
>=30      24 months   ki1000111-WASH-Kenya        KENYA                          Control           1       49    646
>=30      24 months   ki1000111-WASH-Kenya        KENYA                          LNS               0      101    646
>=30      24 months   ki1000111-WASH-Kenya        KENYA                          LNS               1       48    646
>=30      24 months   ki1000111-WASH-Kenya        KENYA                          Other             0      202    646
>=30      24 months   ki1000111-WASH-Kenya        KENYA                          Other             1       91    646
<20       24 months   ki1000111-WASH-Kenya        KENYA                          Control           0       63    307
<20       24 months   ki1000111-WASH-Kenya        KENYA                          Control           1       41    307
<20       24 months   ki1000111-WASH-Kenya        KENYA                          LNS               0       40    307
<20       24 months   ki1000111-WASH-Kenya        KENYA                          LNS               1       19    307
<20       24 months   ki1000111-WASH-Kenya        KENYA                          Other             0       90    307
<20       24 months   ki1000111-WASH-Kenya        KENYA                          Other             1       54    307
>=30      6 months    ki1000111-WASH-Kenya        KENYA                          Control           0        4     13
>=30      6 months    ki1000111-WASH-Kenya        KENYA                          Control           1        0     13
>=30      6 months    ki1000111-WASH-Kenya        KENYA                          LNS               0        2     13
>=30      6 months    ki1000111-WASH-Kenya        KENYA                          LNS               1        1     13
>=30      6 months    ki1000111-WASH-Kenya        KENYA                          Other             0        4     13
>=30      6 months    ki1000111-WASH-Kenya        KENYA                          Other             1        2     13
[25-30)   6 months    ki1000111-WASH-Kenya        KENYA                          Control           0        3     17
[25-30)   6 months    ki1000111-WASH-Kenya        KENYA                          Control           1        1     17
[25-30)   6 months    ki1000111-WASH-Kenya        KENYA                          LNS               0        4     17
[25-30)   6 months    ki1000111-WASH-Kenya        KENYA                          LNS               1        0     17
[25-30)   6 months    ki1000111-WASH-Kenya        KENYA                          Other             0        8     17
[25-30)   6 months    ki1000111-WASH-Kenya        KENYA                          Other             1        1     17
<20       6 months    ki1000111-WASH-Kenya        KENYA                          Control           0        6     17
<20       6 months    ki1000111-WASH-Kenya        KENYA                          Control           1        1     17
<20       6 months    ki1000111-WASH-Kenya        KENYA                          LNS               0        2     17
<20       6 months    ki1000111-WASH-Kenya        KENYA                          LNS               1        0     17
<20       6 months    ki1000111-WASH-Kenya        KENYA                          Other             0        6     17
<20       6 months    ki1000111-WASH-Kenya        KENYA                          Other             1        2     17
[25-30)   6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Control           0       25     58
[25-30)   6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Control           1        6     58
[25-30)   6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Maternal          0       23     58
[25-30)   6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Maternal          1        4     58
>=30      6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Control           0       28     73
>=30      6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Control           1       11     73
>=30      6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Maternal          0       25     73
>=30      6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Maternal          1        9     73
[20-25)   6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Control           0       18     47
[20-25)   6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Control           1        4     47
[20-25)   6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Maternal          0       18     47
[20-25)   6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Maternal          1        7     47
<20       6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Control           0        0      3
<20       6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Control           1        1      3
<20       6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Maternal          0        2      3
<20       6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Maternal          1        0      3
>=30      Birth       ki1000125-AgaKhanUniv       PAKISTAN                       Control           0        1      2
>=30      Birth       ki1000125-AgaKhanUniv       PAKISTAN                       Maternal          0        1      2
[20-25)   Birth       ki1000125-AgaKhanUniv       PAKISTAN                       Control           0        1      1
[25-30)   Birth       ki1000125-AgaKhanUniv       PAKISTAN                       Maternal          0        1      1
[25-30)   24 months   ki1000304-EU                INDIA                          Control           0       22     92
[25-30)   24 months   ki1000304-EU                INDIA                          Control           1       30     92
[25-30)   24 months   ki1000304-EU                INDIA                          Zinc              0       18     92
[25-30)   24 months   ki1000304-EU                INDIA                          Zinc              1       22     92
[20-25)   6 months    ki1000304-EU                INDIA                          Control           0       62    187
[20-25)   6 months    ki1000304-EU                INDIA                          Control           1       40    187
[20-25)   6 months    ki1000304-EU                INDIA                          Zinc              0       62    187
[20-25)   6 months    ki1000304-EU                INDIA                          Zinc              1       23    187
>=30      24 months   ki1000304-EU                INDIA                          Control           0        3     35
>=30      24 months   ki1000304-EU                INDIA                          Control           1       11     35
>=30      24 months   ki1000304-EU                INDIA                          Zinc              0        8     35
>=30      24 months   ki1000304-EU                INDIA                          Zinc              1       13     35
[20-25)   24 months   ki1000304-EU                INDIA                          Control           0       19    115
[20-25)   24 months   ki1000304-EU                INDIA                          Control           1       35    115
[20-25)   24 months   ki1000304-EU                INDIA                          Zinc              0       26    115
[20-25)   24 months   ki1000304-EU                INDIA                          Zinc              1       35    115
[25-30)   6 months    ki1000304-EU                INDIA                          Control           0       33    104
[25-30)   6 months    ki1000304-EU                INDIA                          Control           1       23    104
[25-30)   6 months    ki1000304-EU                INDIA                          Zinc              0       36    104
[25-30)   6 months    ki1000304-EU                INDIA                          Zinc              1       12    104
>=30      6 months    ki1000304-EU                INDIA                          Control           0       26     47
>=30      6 months    ki1000304-EU                INDIA                          Control           1        5     47
>=30      6 months    ki1000304-EU                INDIA                          Zinc              0       11     47
>=30      6 months    ki1000304-EU                INDIA                          Zinc              1        5     47
<20       6 months    ki1000304-EU                INDIA                          Control           0        8     24
<20       6 months    ki1000304-EU                INDIA                          Control           1        1     24
<20       6 months    ki1000304-EU                INDIA                          Zinc              0        8     24
<20       6 months    ki1000304-EU                INDIA                          Zinc              1        7     24
<20       24 months   ki1000304-EU                INDIA                          Control           0        2      9
<20       24 months   ki1000304-EU                INDIA                          Control           1        3      9
<20       24 months   ki1000304-EU                INDIA                          Zinc              0        3      9
<20       24 months   ki1000304-EU                INDIA                          Zinc              1        1      9
[20-25)   6 months    ki1000304-VITAMIN-A         INDIA                          Control           0      390   1162
[20-25)   6 months    ki1000304-VITAMIN-A         INDIA                          Control           1      200   1162
[20-25)   6 months    ki1000304-VITAMIN-A         INDIA                          VitA              0      386   1162
[20-25)   6 months    ki1000304-VITAMIN-A         INDIA                          VitA              1      186   1162
[25-30)   6 months    ki1000304-VITAMIN-A         INDIA                          Control           0      263    863
[25-30)   6 months    ki1000304-VITAMIN-A         INDIA                          Control           1      157    863
[25-30)   6 months    ki1000304-VITAMIN-A         INDIA                          VitA              0      307    863
[25-30)   6 months    ki1000304-VITAMIN-A         INDIA                          VitA              1      136    863
>=30      6 months    ki1000304-VITAMIN-A         INDIA                          Control           0      111    336
>=30      6 months    ki1000304-VITAMIN-A         INDIA                          Control           1       58    336
>=30      6 months    ki1000304-VITAMIN-A         INDIA                          VitA              0      102    336
>=30      6 months    ki1000304-VITAMIN-A         INDIA                          VitA              1       65    336
<20       6 months    ki1000304-VITAMIN-A         INDIA                          Control           0       49    144
<20       6 months    ki1000304-VITAMIN-A         INDIA                          Control           1       36    144
<20       6 months    ki1000304-VITAMIN-A         INDIA                          VitA              0       35    144
<20       6 months    ki1000304-VITAMIN-A         INDIA                          VitA              1       24    144
[25-30)   6 months    ki1000304-Vitamin-B12       INDIA                          Control           0        4     24
[25-30)   6 months    ki1000304-Vitamin-B12       INDIA                          Control           1        1     24
[25-30)   6 months    ki1000304-Vitamin-B12       INDIA                          Other             0       17     24
[25-30)   6 months    ki1000304-Vitamin-B12       INDIA                          Other             1        2     24
[25-30)   24 months   ki1000304-Vitamin-B12       INDIA                          Control           0        7     50
[25-30)   24 months   ki1000304-Vitamin-B12       INDIA                          Control           1        5     50
[25-30)   24 months   ki1000304-Vitamin-B12       INDIA                          Other             0       20     50
[25-30)   24 months   ki1000304-Vitamin-B12       INDIA                          Other             1       18     50
[20-25)   6 months    ki1000304-Vitamin-B12       INDIA                          Control           0        6     44
[20-25)   6 months    ki1000304-Vitamin-B12       INDIA                          Control           1        5     44
[20-25)   6 months    ki1000304-Vitamin-B12       INDIA                          Other             0       20     44
[20-25)   6 months    ki1000304-Vitamin-B12       INDIA                          Other             1       13     44
>=30      24 months   ki1000304-Vitamin-B12       INDIA                          Control           0        5     34
>=30      24 months   ki1000304-Vitamin-B12       INDIA                          Control           1        4     34
>=30      24 months   ki1000304-Vitamin-B12       INDIA                          Other             0       15     34
>=30      24 months   ki1000304-Vitamin-B12       INDIA                          Other             1       10     34
[20-25)   24 months   ki1000304-Vitamin-B12       INDIA                          Control           0       12     48
[20-25)   24 months   ki1000304-Vitamin-B12       INDIA                          Control           1        5     48
[20-25)   24 months   ki1000304-Vitamin-B12       INDIA                          Other             0       14     48
[20-25)   24 months   ki1000304-Vitamin-B12       INDIA                          Other             1       17     48
>=30      6 months    ki1000304-Vitamin-B12       INDIA                          Control           0        1     11
>=30      6 months    ki1000304-Vitamin-B12       INDIA                          Control           1        0     11
>=30      6 months    ki1000304-Vitamin-B12       INDIA                          Other             0        8     11
>=30      6 months    ki1000304-Vitamin-B12       INDIA                          Other             1        2     11
<20       6 months    ki1000304-Vitamin-B12       INDIA                          Other             0        2      2
[25-30)   6 months    ki1000304b-SAS-CompFeed     INDIA                          Control           0       57    176
[25-30)   6 months    ki1000304b-SAS-CompFeed     INDIA                          Control           1       27    176
[25-30)   6 months    ki1000304b-SAS-CompFeed     INDIA                          Other             0       65    176
[25-30)   6 months    ki1000304b-SAS-CompFeed     INDIA                          Other             1       27    176
<20       6 months    ki1000304b-SAS-CompFeed     INDIA                          Control           0       29     76
<20       6 months    ki1000304b-SAS-CompFeed     INDIA                          Control           1       12     76
<20       6 months    ki1000304b-SAS-CompFeed     INDIA                          Other             0       25     76
<20       6 months    ki1000304b-SAS-CompFeed     INDIA                          Other             1       10     76
>=30      6 months    ki1000304b-SAS-CompFeed     INDIA                          Control           0       24     73
>=30      6 months    ki1000304b-SAS-CompFeed     INDIA                          Control           1       11     73
>=30      6 months    ki1000304b-SAS-CompFeed     INDIA                          Other             0       26     73
>=30      6 months    ki1000304b-SAS-CompFeed     INDIA                          Other             1       12     73
[25-30)   Birth       ki1000304b-SAS-CompFeed     INDIA                          Control           0       18     40
[25-30)   Birth       ki1000304b-SAS-CompFeed     INDIA                          Control           1        5     40
[25-30)   Birth       ki1000304b-SAS-CompFeed     INDIA                          Other             0       11     40
[25-30)   Birth       ki1000304b-SAS-CompFeed     INDIA                          Other             1        6     40
[20-25)   6 months    ki1000304b-SAS-CompFeed     INDIA                          Control           0      103    292
[20-25)   6 months    ki1000304b-SAS-CompFeed     INDIA                          Control           1       32    292
[20-25)   6 months    ki1000304b-SAS-CompFeed     INDIA                          Other             0      115    292
[20-25)   6 months    ki1000304b-SAS-CompFeed     INDIA                          Other             1       42    292
<20       Birth       ki1000304b-SAS-CompFeed     INDIA                          Control           0        7     23
<20       Birth       ki1000304b-SAS-CompFeed     INDIA                          Control           1        6     23
<20       Birth       ki1000304b-SAS-CompFeed     INDIA                          Other             0        9     23
<20       Birth       ki1000304b-SAS-CompFeed     INDIA                          Other             1        1     23
[20-25)   Birth       ki1000304b-SAS-CompFeed     INDIA                          Control           0       20     62
[20-25)   Birth       ki1000304b-SAS-CompFeed     INDIA                          Control           1        6     62
[20-25)   Birth       ki1000304b-SAS-CompFeed     INDIA                          Other             0       24     62
[20-25)   Birth       ki1000304b-SAS-CompFeed     INDIA                          Other             1       12     62
>=30      Birth       ki1000304b-SAS-CompFeed     INDIA                          Control           0        8     19
>=30      Birth       ki1000304b-SAS-CompFeed     INDIA                          Control           1        0     19
>=30      Birth       ki1000304b-SAS-CompFeed     INDIA                          Other             0        9     19
>=30      Birth       ki1000304b-SAS-CompFeed     INDIA                          Other             1        2     19
[25-30)   6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Control           0       12    120
[25-30)   6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Control           1       21    120
[25-30)   6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Other             0       52    120
[25-30)   6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Other             1       35    120
>=30      6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Control           0       10     79
>=30      6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Control           1        8     79
>=30      6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Other             0       37     79
>=30      6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Other             1       24     79
[20-25)   6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Control           0       16    121
[20-25)   6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Control           1       16    121
[20-25)   6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Other             0       58    121
[20-25)   6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Other             1       31    121
<20       6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Control           0        5     35
<20       6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Control           1        2     35
<20       6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Other             0       14     35
<20       6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Other             1       14     35
>=30      6 months    ki1017093b-PROVIDE          BANGLADESH                     Control           0        1      9
>=30      6 months    ki1017093b-PROVIDE          BANGLADESH                     Control           1        1      9
>=30      6 months    ki1017093b-PROVIDE          BANGLADESH                     Other             0        6      9
>=30      6 months    ki1017093b-PROVIDE          BANGLADESH                     Other             1        1      9
[20-25)   6 months    ki1017093b-PROVIDE          BANGLADESH                     Control           0        3     19
[20-25)   6 months    ki1017093b-PROVIDE          BANGLADESH                     Control           1        1     19
[20-25)   6 months    ki1017093b-PROVIDE          BANGLADESH                     Other             0       12     19
[20-25)   6 months    ki1017093b-PROVIDE          BANGLADESH                     Other             1        3     19
[25-30)   6 months    ki1017093b-PROVIDE          BANGLADESH                     Control           0        2     14
[25-30)   6 months    ki1017093b-PROVIDE          BANGLADESH                     Control           1        0     14
[25-30)   6 months    ki1017093b-PROVIDE          BANGLADESH                     Other             0        9     14
[25-30)   6 months    ki1017093b-PROVIDE          BANGLADESH                     Other             1        3     14
<20       6 months    ki1017093b-PROVIDE          BANGLADESH                     Control           0        2      4
<20       6 months    ki1017093b-PROVIDE          BANGLADESH                     Control           1        0      4
<20       6 months    ki1017093b-PROVIDE          BANGLADESH                     Other             0        1      4
<20       6 months    ki1017093b-PROVIDE          BANGLADESH                     Other             1        1      4
[20-25)   24 months   ki1017093b-PROVIDE          BANGLADESH                     Other             0        2      2
>=30      6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control           0      118    484
>=30      6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control           1       16    484
>=30      6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other             0      114    484
>=30      6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other             1       11    484
>=30      6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc              0      204    484
>=30      6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc              1       21    484
<20       6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control           0       26    124
<20       6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control           1        3    124
<20       6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other             0       26    124
<20       6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other             1        4    124
<20       6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc              0       57    124
<20       6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc              1        8    124
[25-30)   6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control           0      117    576
[25-30)   6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control           1       18    576
[25-30)   6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other             0      117    576
[25-30)   6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other             1       15    576
[25-30)   6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc              0      271    576
[25-30)   6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc              1       38    576
[20-25)   6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control           0      116    512
[20-25)   6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control           1       10    512
[20-25)   6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other             0      119    512
[20-25)   6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other             1       15    512
[20-25)   6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc              0      227    512
[20-25)   6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc              1       25    512
[25-30)   24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other             0        2      3
[25-30)   24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other             1        0      3
[25-30)   24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc              0        0      3
[25-30)   24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc              1        1      3
<20       24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control           0        1      1
[25-30)   6 months    ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc              0      225    260
[25-30)   6 months    ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc              1       35    260
[25-30)   24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc              0      292    475
[25-30)   24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc              1      183    475
[20-25)   6 months    ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc              0       69     77
[20-25)   6 months    ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc              1        8     77
>=30      24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc              0      298    428
>=30      24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc              1      130    428
>=30      6 months    ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc              0      181    200
>=30      6 months    ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc              1       19    200
[20-25)   24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc              0       77    128
[20-25)   24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc              1       51    128
[20-25)   6 months    ki1112895-Guatemala BSC     GUATEMALA                      Control           0       30     82
[20-25)   6 months    ki1112895-Guatemala BSC     GUATEMALA                      Control           1       13     82
[20-25)   6 months    ki1112895-Guatemala BSC     GUATEMALA                      Other             0       26     82
[20-25)   6 months    ki1112895-Guatemala BSC     GUATEMALA                      Other             1       13     82
[25-30)   6 months    ki1112895-Guatemala BSC     GUATEMALA                      Control           0       17     53
[25-30)   6 months    ki1112895-Guatemala BSC     GUATEMALA                      Control           1        5     53
[25-30)   6 months    ki1112895-Guatemala BSC     GUATEMALA                      Other             0       25     53
[25-30)   6 months    ki1112895-Guatemala BSC     GUATEMALA                      Other             1        6     53
<20       6 months    ki1112895-Guatemala BSC     GUATEMALA                      Control           0       10     32
<20       6 months    ki1112895-Guatemala BSC     GUATEMALA                      Control           1        8     32
<20       6 months    ki1112895-Guatemala BSC     GUATEMALA                      Other             0        9     32
<20       6 months    ki1112895-Guatemala BSC     GUATEMALA                      Other             1        5     32
>=30      6 months    ki1112895-Guatemala BSC     GUATEMALA                      Control           0       11     44
>=30      6 months    ki1112895-Guatemala BSC     GUATEMALA                      Control           1        8     44
>=30      6 months    ki1112895-Guatemala BSC     GUATEMALA                      Other             0       18     44
>=30      6 months    ki1112895-Guatemala BSC     GUATEMALA                      Other             1        7     44
[20-25)   Birth       ki1119695-PROBIT            BELARUS                        Control           0     2956   6050
[20-25)   Birth       ki1119695-PROBIT            BELARUS                        Control           1        9   6050
[20-25)   Birth       ki1119695-PROBIT            BELARUS                        Maternal          0     3077   6050
[20-25)   Birth       ki1119695-PROBIT            BELARUS                        Maternal          1        8   6050
[20-25)   6 months    ki1119695-PROBIT            BELARUS                        Control           0     2892   6340
[20-25)   6 months    ki1119695-PROBIT            BELARUS                        Control           1      232   6340
[20-25)   6 months    ki1119695-PROBIT            BELARUS                        Maternal          0     3030   6340
[20-25)   6 months    ki1119695-PROBIT            BELARUS                        Maternal          1      186   6340
[25-30)   Birth       ki1119695-PROBIT            BELARUS                        Control           0     1905   3887
[25-30)   Birth       ki1119695-PROBIT            BELARUS                        Control           1        5   3887
[25-30)   Birth       ki1119695-PROBIT            BELARUS                        Maternal          0     1976   3887
[25-30)   Birth       ki1119695-PROBIT            BELARUS                        Maternal          1        1   3887
[25-30)   6 months    ki1119695-PROBIT            BELARUS                        Control           0     1888   4069
[25-30)   6 months    ki1119695-PROBIT            BELARUS                        Control           1      119   4069
[25-30)   6 months    ki1119695-PROBIT            BELARUS                        Maternal          0     1970   4069
[25-30)   6 months    ki1119695-PROBIT            BELARUS                        Maternal          1       92   4069
>=30      Birth       ki1119695-PROBIT            BELARUS                        Control           0     1248   2541
>=30      Birth       ki1119695-PROBIT            BELARUS                        Control           1        3   2541
>=30      Birth       ki1119695-PROBIT            BELARUS                        Maternal          0     1289   2541
>=30      Birth       ki1119695-PROBIT            BELARUS                        Maternal          1        1   2541
>=30      6 months    ki1119695-PROBIT            BELARUS                        Control           0     1183   2605
>=30      6 months    ki1119695-PROBIT            BELARUS                        Control           1       95   2605
>=30      6 months    ki1119695-PROBIT            BELARUS                        Maternal          0     1257   2605
>=30      6 months    ki1119695-PROBIT            BELARUS                        Maternal          1       70   2605
<20       Birth       ki1119695-PROBIT            BELARUS                        Control           0      649   1406
<20       Birth       ki1119695-PROBIT            BELARUS                        Control           1        4   1406
<20       Birth       ki1119695-PROBIT            BELARUS                        Maternal          0      751   1406
<20       Birth       ki1119695-PROBIT            BELARUS                        Maternal          1        2   1406
<20       6 months    ki1119695-PROBIT            BELARUS                        Control           0      633   1486
<20       6 months    ki1119695-PROBIT            BELARUS                        Control           1       70   1486
<20       6 months    ki1119695-PROBIT            BELARUS                        Maternal          0      723   1486
<20       6 months    ki1119695-PROBIT            BELARUS                        Maternal          1       60   1486
[25-30)   24 months   ki1119695-PROBIT            BELARUS                        Control           0      107    250
[25-30)   24 months   ki1119695-PROBIT            BELARUS                        Control           1       15    250
[25-30)   24 months   ki1119695-PROBIT            BELARUS                        Maternal          0      112    250
[25-30)   24 months   ki1119695-PROBIT            BELARUS                        Maternal          1       16    250
>=30      24 months   ki1119695-PROBIT            BELARUS                        Control           0       59    147
>=30      24 months   ki1119695-PROBIT            BELARUS                        Control           1        7    147
>=30      24 months   ki1119695-PROBIT            BELARUS                        Maternal          0       76    147
>=30      24 months   ki1119695-PROBIT            BELARUS                        Maternal          1        5    147
[20-25)   24 months   ki1119695-PROBIT            BELARUS                        Control           0      141    368
[20-25)   24 months   ki1119695-PROBIT            BELARUS                        Control           1       21    368
[20-25)   24 months   ki1119695-PROBIT            BELARUS                        Maternal          0      180    368
[20-25)   24 months   ki1119695-PROBIT            BELARUS                        Maternal          1       26    368
<20       24 months   ki1119695-PROBIT            BELARUS                        Control           0       20     76
<20       24 months   ki1119695-PROBIT            BELARUS                        Control           1        4     76
<20       24 months   ki1119695-PROBIT            BELARUS                        Maternal          0       46     76
<20       24 months   ki1119695-PROBIT            BELARUS                        Maternal          1        6     76
>=30      Birth       ki1126311-ZVITAMBO          ZIMBABWE                       Control           0      510   2324
>=30      Birth       ki1126311-ZVITAMBO          ZIMBABWE                       Control           1       49   2324
>=30      Birth       ki1126311-ZVITAMBO          ZIMBABWE                       VitA              0     1593   2324
>=30      Birth       ki1126311-ZVITAMBO          ZIMBABWE                       VitA              1      172   2324
>=30      6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control           0      302   1452
>=30      6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control           1       48   1452
>=30      6 months    ki1126311-ZVITAMBO          ZIMBABWE                       VitA              0      908   1452
>=30      6 months    ki1126311-ZVITAMBO          ZIMBABWE                       VitA              1      194   1452
<20       6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control           0      231   1177
<20       6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control           1       56   1177
<20       6 months    ki1126311-ZVITAMBO          ZIMBABWE                       VitA              0      721   1177
<20       6 months    ki1126311-ZVITAMBO          ZIMBABWE                       VitA              1      169   1177
<20       Birth       ki1126311-ZVITAMBO          ZIMBABWE                       Control           0      479   2200
<20       Birth       ki1126311-ZVITAMBO          ZIMBABWE                       Control           1       63   2200
<20       Birth       ki1126311-ZVITAMBO          ZIMBABWE                       VitA              0     1468   2200
<20       Birth       ki1126311-ZVITAMBO          ZIMBABWE                       VitA              1      190   2200
[20-25)   Birth       ki1126311-ZVITAMBO          ZIMBABWE                       Control           0     1303   5824
[20-25)   Birth       ki1126311-ZVITAMBO          ZIMBABWE                       Control           1      163   5824
[20-25)   Birth       ki1126311-ZVITAMBO          ZIMBABWE                       VitA              0     3921   5824
[20-25)   Birth       ki1126311-ZVITAMBO          ZIMBABWE                       VitA              1      437   5824
[20-25)   6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control           0      666   3151
[20-25)   6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control           1      120   3151
[20-25)   6 months    ki1126311-ZVITAMBO          ZIMBABWE                       VitA              0     1992   3151
[20-25)   6 months    ki1126311-ZVITAMBO          ZIMBABWE                       VitA              1      373   3151
[25-30)   Birth       ki1126311-ZVITAMBO          ZIMBABWE                       Control           0      788   3442
[25-30)   Birth       ki1126311-ZVITAMBO          ZIMBABWE                       Control           1       84   3442
[25-30)   Birth       ki1126311-ZVITAMBO          ZIMBABWE                       VitA              0     2302   3442
[25-30)   Birth       ki1126311-ZVITAMBO          ZIMBABWE                       VitA              1      268   3442
[25-30)   6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control           0      401   1982
[25-30)   6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control           1       89   1982
[25-30)   6 months    ki1126311-ZVITAMBO          ZIMBABWE                       VitA              0     1255   1982
[25-30)   6 months    ki1126311-ZVITAMBO          ZIMBABWE                       VitA              1      237   1982
[20-25)   24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control           0        3     16
[20-25)   24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control           1        2     16
[20-25)   24 months   ki1126311-ZVITAMBO          ZIMBABWE                       VitA              0        2     16
[20-25)   24 months   ki1126311-ZVITAMBO          ZIMBABWE                       VitA              1        9     16
[25-30)   24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control           0        2      8
[25-30)   24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control           1        1      8
[25-30)   24 months   ki1126311-ZVITAMBO          ZIMBABWE                       VitA              0        2      8
[25-30)   24 months   ki1126311-ZVITAMBO          ZIMBABWE                       VitA              1        3      8
>=30      24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control           0        1      6
>=30      24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control           1        1      6
>=30      24 months   ki1126311-ZVITAMBO          ZIMBABWE                       VitA              0        2      6
>=30      24 months   ki1126311-ZVITAMBO          ZIMBABWE                       VitA              1        2      6
<20       24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control           0        0      7
<20       24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control           1        1      7
<20       24 months   ki1126311-ZVITAMBO          ZIMBABWE                       VitA              0        2      7
<20       24 months   ki1126311-ZVITAMBO          ZIMBABWE                       VitA              1        4      7
[25-30)   24 months   ki1135781-COHORTS           GUATEMALA                      Control           0        6     70
[25-30)   24 months   ki1135781-COHORTS           GUATEMALA                      Control           1       32     70
[25-30)   24 months   ki1135781-COHORTS           GUATEMALA                      Other             0        7     70
[25-30)   24 months   ki1135781-COHORTS           GUATEMALA                      Other             1       25     70
>=30      6 months    ki1135781-COHORTS           GUATEMALA                      Control           0       84    361
>=30      6 months    ki1135781-COHORTS           GUATEMALA                      Control           1       96    361
>=30      6 months    ki1135781-COHORTS           GUATEMALA                      Other             0      118    361
>=30      6 months    ki1135781-COHORTS           GUATEMALA                      Other             1       63    361
>=30      Birth       ki1135781-COHORTS           GUATEMALA                      Control           0      146    326
>=30      Birth       ki1135781-COHORTS           GUATEMALA                      Control           1       10    326
>=30      Birth       ki1135781-COHORTS           GUATEMALA                      Other             0      158    326
>=30      Birth       ki1135781-COHORTS           GUATEMALA                      Other             1       12    326
[25-30)   6 months    ki1135781-COHORTS           GUATEMALA                      Control           0       49    202
[25-30)   6 months    ki1135781-COHORTS           GUATEMALA                      Control           1       46    202
[25-30)   6 months    ki1135781-COHORTS           GUATEMALA                      Other             0       70    202
[25-30)   6 months    ki1135781-COHORTS           GUATEMALA                      Other             1       37    202
[20-25)   24 months   ki1135781-COHORTS           GUATEMALA                      Control           0        6     88
[20-25)   24 months   ki1135781-COHORTS           GUATEMALA                      Control           1       34     88
[20-25)   24 months   ki1135781-COHORTS           GUATEMALA                      Other             0       11     88
[20-25)   24 months   ki1135781-COHORTS           GUATEMALA                      Other             1       37     88
[25-30)   Birth       ki1135781-COHORTS           GUATEMALA                      Control           0       84    184
[25-30)   Birth       ki1135781-COHORTS           GUATEMALA                      Control           1        1    184
[25-30)   Birth       ki1135781-COHORTS           GUATEMALA                      Other             0       95    184
[25-30)   Birth       ki1135781-COHORTS           GUATEMALA                      Other             1        4    184
[20-25)   Birth       ki1135781-COHORTS           GUATEMALA                      Control           0       95    221
[20-25)   Birth       ki1135781-COHORTS           GUATEMALA                      Control           1        5    221
[20-25)   Birth       ki1135781-COHORTS           GUATEMALA                      Other             0      112    221
[20-25)   Birth       ki1135781-COHORTS           GUATEMALA                      Other             1        9    221
[20-25)   6 months    ki1135781-COHORTS           GUATEMALA                      Control           0       72    253
[20-25)   6 months    ki1135781-COHORTS           GUATEMALA                      Control           1       39    253
[20-25)   6 months    ki1135781-COHORTS           GUATEMALA                      Other             0       82    253
[20-25)   6 months    ki1135781-COHORTS           GUATEMALA                      Other             1       60    253
<20       Birth       ki1135781-COHORTS           GUATEMALA                      Control           0       63    121
<20       Birth       ki1135781-COHORTS           GUATEMALA                      Control           1        3    121
<20       Birth       ki1135781-COHORTS           GUATEMALA                      Other             0       49    121
<20       Birth       ki1135781-COHORTS           GUATEMALA                      Other             1        6    121
<20       6 months    ki1135781-COHORTS           GUATEMALA                      Control           0       37    116
<20       6 months    ki1135781-COHORTS           GUATEMALA                      Control           1       29    116
<20       6 months    ki1135781-COHORTS           GUATEMALA                      Other             0       31    116
<20       6 months    ki1135781-COHORTS           GUATEMALA                      Other             1       19    116
<20       24 months   ki1135781-COHORTS           GUATEMALA                      Control           0        5     57
<20       24 months   ki1135781-COHORTS           GUATEMALA                      Control           1       23     57
<20       24 months   ki1135781-COHORTS           GUATEMALA                      Other             0        3     57
<20       24 months   ki1135781-COHORTS           GUATEMALA                      Other             1       26     57
>=30      24 months   ki1135781-COHORTS           GUATEMALA                      Control           0       15    114
>=30      24 months   ki1135781-COHORTS           GUATEMALA                      Control           1       46    114
>=30      24 months   ki1135781-COHORTS           GUATEMALA                      Other             0       19    114
>=30      24 months   ki1135781-COHORTS           GUATEMALA                      Other             1       34    114
[25-30)   6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control           0       45    447
[25-30)   6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control           1       16    447
[25-30)   6 months    ki1148112-iLiNS-DOSE        MALAWI                         LNS               0      287    447
[25-30)   6 months    ki1148112-iLiNS-DOSE        MALAWI                         LNS               1       99    447
[25-30)   24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control           0       13    182
[25-30)   24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control           1       10    182
[25-30)   24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS               0       94    182
[25-30)   24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS               1       65    182
>=30      6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control           0       53    469
>=30      6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control           1       29    469
>=30      6 months    ki1148112-iLiNS-DOSE        MALAWI                         LNS               0      257    469
>=30      6 months    ki1148112-iLiNS-DOSE        MALAWI                         LNS               1      130    469
>=30      24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control           0       19    211
>=30      24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control           1       21    211
>=30      24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS               0       86    211
>=30      24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS               1       85    211
[20-25)   6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control           0       74    631
[20-25)   6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control           1       38    631
[20-25)   6 months    ki1148112-iLiNS-DOSE        MALAWI                         LNS               0      384    631
[20-25)   6 months    ki1148112-iLiNS-DOSE        MALAWI                         LNS               1      135    631
<20       6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control           0       31    301
<20       6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control           1       18    301
<20       6 months    ki1148112-iLiNS-DOSE        MALAWI                         LNS               0      158    301
<20       6 months    ki1148112-iLiNS-DOSE        MALAWI                         LNS               1       94    301
<20       24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control           0        6    128
<20       24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control           1       11    128
<20       24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS               0       44    128
<20       24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS               1       67    128
[20-25)   24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control           0       24    246
[20-25)   24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control           1       22    246
[20-25)   24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS               0       95    246
[20-25)   24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS               1      105    246
[25-30)   6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Control           0       62    282
[25-30)   6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Control           1       22    282
[25-30)   6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Maternal          0      151    282
[25-30)   6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Maternal          1       47    282
<20       6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Control           0       67    226
<20       6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Control           1       15    226
<20       6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Maternal          0      108    226
<20       6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Maternal          1       36    226
>=30      6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Control           0       53    220
>=30      6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Control           1       25    220
>=30      6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Maternal          0      111    220
>=30      6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Maternal          1       31    220
<20       Birth       ki1148112-iLiNS-DYAD-M      MALAWI                         Maternal          1        1      1
[20-25)   6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Control           0       87    301
[20-25)   6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Control           1       20    301
[20-25)   6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Maternal          0      157    301
[20-25)   6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Maternal          1       37    301
[20-25)   24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control           0        0     16
[20-25)   24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control           1        2     16
[20-25)   24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Maternal          0       10     16
[20-25)   24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Maternal          1        4     16
<20       24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control           0        3     17
<20       24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control           1        2     17
<20       24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Maternal          0        8     17
<20       24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Maternal          1        4     17
[25-30)   24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control           0        2     22
[25-30)   24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control           1        1     22
[25-30)   24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Maternal          0       10     22
[25-30)   24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Maternal          1        9     22
>=30      24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control           0        0     10
>=30      24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control           1        2     10
>=30      24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Maternal          0        5     10
>=30      24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Maternal          1        3     10
>=30      6 months    ki1148112-LCNI-5            MALAWI                         Control           0       29    198
>=30      6 months    ki1148112-LCNI-5            MALAWI                         Control           1       15    198
>=30      6 months    ki1148112-LCNI-5            MALAWI                         LNS               0       64    198
>=30      6 months    ki1148112-LCNI-5            MALAWI                         LNS               1       43    198
>=30      6 months    ki1148112-LCNI-5            MALAWI                         Other             0       24    198
>=30      6 months    ki1148112-LCNI-5            MALAWI                         Other             1       23    198
>=30      24 months   ki1148112-LCNI-5            MALAWI                         Control           0       18    102
>=30      24 months   ki1148112-LCNI-5            MALAWI                         Control           1       13    102
>=30      24 months   ki1148112-LCNI-5            MALAWI                         LNS               0       26    102
>=30      24 months   ki1148112-LCNI-5            MALAWI                         LNS               1       25    102
>=30      24 months   ki1148112-LCNI-5            MALAWI                         Other             0       13    102
>=30      24 months   ki1148112-LCNI-5            MALAWI                         Other             1        7    102
<20       6 months    ki1148112-LCNI-5            MALAWI                         Control           0       21    107
<20       6 months    ki1148112-LCNI-5            MALAWI                         Control           1       11    107
<20       6 months    ki1148112-LCNI-5            MALAWI                         LNS               0       30    107
<20       6 months    ki1148112-LCNI-5            MALAWI                         LNS               1       14    107
<20       6 months    ki1148112-LCNI-5            MALAWI                         Other             0       23    107
<20       6 months    ki1148112-LCNI-5            MALAWI                         Other             1        8    107
<20       24 months   ki1148112-LCNI-5            MALAWI                         Control           0        8     50
<20       24 months   ki1148112-LCNI-5            MALAWI                         Control           1        7     50
<20       24 months   ki1148112-LCNI-5            MALAWI                         LNS               0       14     50
<20       24 months   ki1148112-LCNI-5            MALAWI                         LNS               1        5     50
<20       24 months   ki1148112-LCNI-5            MALAWI                         Other             0       14     50
<20       24 months   ki1148112-LCNI-5            MALAWI                         Other             1        2     50
[20-25)   6 months    ki1148112-LCNI-5            MALAWI                         Control           0       30    193
[20-25)   6 months    ki1148112-LCNI-5            MALAWI                         Control           1       19    193
[20-25)   6 months    ki1148112-LCNI-5            MALAWI                         LNS               0       59    193
[20-25)   6 months    ki1148112-LCNI-5            MALAWI                         LNS               1       32    193
[20-25)   6 months    ki1148112-LCNI-5            MALAWI                         Other             0       36    193
[20-25)   6 months    ki1148112-LCNI-5            MALAWI                         Other             1       17    193
[25-30)   6 months    ki1148112-LCNI-5            MALAWI                         Control           0       29    171
[25-30)   6 months    ki1148112-LCNI-5            MALAWI                         Control           1       15    171
[25-30)   6 months    ki1148112-LCNI-5            MALAWI                         LNS               0       50    171
[25-30)   6 months    ki1148112-LCNI-5            MALAWI                         LNS               1       34    171
[25-30)   6 months    ki1148112-LCNI-5            MALAWI                         Other             0       24    171
[25-30)   6 months    ki1148112-LCNI-5            MALAWI                         Other             1       19    171
[20-25)   24 months   ki1148112-LCNI-5            MALAWI                         Control           0       13     79
[20-25)   24 months   ki1148112-LCNI-5            MALAWI                         Control           1       10     79
[20-25)   24 months   ki1148112-LCNI-5            MALAWI                         LNS               0       22     79
[20-25)   24 months   ki1148112-LCNI-5            MALAWI                         LNS               1       10     79
[20-25)   24 months   ki1148112-LCNI-5            MALAWI                         Other             0       17     79
[20-25)   24 months   ki1148112-LCNI-5            MALAWI                         Other             1        7     79
[25-30)   24 months   ki1148112-LCNI-5            MALAWI                         Control           0       18     81
[25-30)   24 months   ki1148112-LCNI-5            MALAWI                         Control           1        6     81
[25-30)   24 months   ki1148112-LCNI-5            MALAWI                         LNS               0       21     81
[25-30)   24 months   ki1148112-LCNI-5            MALAWI                         LNS               1       18     81
[25-30)   24 months   ki1148112-LCNI-5            MALAWI                         Other             0        7     81
[25-30)   24 months   ki1148112-LCNI-5            MALAWI                         Other             1       11     81
[20-25)   Birth       kiGH5241-JiVitA-3           BANGLADESH                     Control           0     2131   6181
[20-25)   Birth       kiGH5241-JiVitA-3           BANGLADESH                     Control           1      962   6181
[20-25)   Birth       kiGH5241-JiVitA-3           BANGLADESH                     Maternal          0     2237   6181
[20-25)   Birth       kiGH5241-JiVitA-3           BANGLADESH                     Maternal          1      851   6181
[20-25)   6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control           0     1911   5069
[20-25)   6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control           1      601   5069
[20-25)   6 months    kiGH5241-JiVitA-3           BANGLADESH                     Maternal          0     2000   5069
[20-25)   6 months    kiGH5241-JiVitA-3           BANGLADESH                     Maternal          1      557   5069
[25-30)   Birth       kiGH5241-JiVitA-3           BANGLADESH                     Control           0     1136   3377
[25-30)   Birth       kiGH5241-JiVitA-3           BANGLADESH                     Control           1      488   3377
[25-30)   Birth       kiGH5241-JiVitA-3           BANGLADESH                     Maternal          0     1282   3377
[25-30)   Birth       kiGH5241-JiVitA-3           BANGLADESH                     Maternal          1      471   3377
[25-30)   6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control           0      950   2591
[25-30)   6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control           1      287   2591
[25-30)   6 months    kiGH5241-JiVitA-3           BANGLADESH                     Maternal          0     1055   2591
[25-30)   6 months    kiGH5241-JiVitA-3           BANGLADESH                     Maternal          1      299   2591
<20       Birth       kiGH5241-JiVitA-3           BANGLADESH                     Control           0     2528   8187
<20       Birth       kiGH5241-JiVitA-3           BANGLADESH                     Control           1     1582   8187
<20       Birth       kiGH5241-JiVitA-3           BANGLADESH                     Maternal          0     2651   8187
<20       Birth       kiGH5241-JiVitA-3           BANGLADESH                     Maternal          1     1426   8187
<20       6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control           0     2834   7879
<20       6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control           1     1141   7879
<20       6 months    kiGH5241-JiVitA-3           BANGLADESH                     Maternal          0     2875   7879
<20       6 months    kiGH5241-JiVitA-3           BANGLADESH                     Maternal          1     1029   7879
>=30      Birth       kiGH5241-JiVitA-3           BANGLADESH                     Control           0      623   1858
>=30      Birth       kiGH5241-JiVitA-3           BANGLADESH                     Control           1      293   1858
>=30      Birth       kiGH5241-JiVitA-3           BANGLADESH                     Maternal          0      681   1858
>=30      Birth       kiGH5241-JiVitA-3           BANGLADESH                     Maternal          1      261   1858
>=30      6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control           0      427   1219
>=30      6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control           1      145   1219
>=30      6 months    kiGH5241-JiVitA-3           BANGLADESH                     Maternal          0      493   1219
>=30      6 months    kiGH5241-JiVitA-3           BANGLADESH                     Maternal          1      154   1219
<20       24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control           0       13     56
<20       24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control           1       12     56
<20       24 months   kiGH5241-JiVitA-3           BANGLADESH                     Maternal          0        6     56
<20       24 months   kiGH5241-JiVitA-3           BANGLADESH                     Maternal          1       25     56
[25-30)   24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control           0        4     16
[25-30)   24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control           1        1     16
[25-30)   24 months   kiGH5241-JiVitA-3           BANGLADESH                     Maternal          0        8     16
[25-30)   24 months   kiGH5241-JiVitA-3           BANGLADESH                     Maternal          1        3     16
[20-25)   24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control           0        7     21
[20-25)   24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control           1        5     21
[20-25)   24 months   kiGH5241-JiVitA-3           BANGLADESH                     Maternal          0        8     21
[20-25)   24 months   kiGH5241-JiVitA-3           BANGLADESH                     Maternal          1        1     21
>=30      24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control           0        0      5
>=30      24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control           1        3      5
>=30      24 months   kiGH5241-JiVitA-3           BANGLADESH                     Maternal          0        1      5
>=30      24 months   kiGH5241-JiVitA-3           BANGLADESH                     Maternal          1        1      5
[25-30)   6 months    iLiNS_DYADM_LNS             MALAWI                         Control           0       62    172
[25-30)   6 months    iLiNS_DYADM_LNS             MALAWI                         Control           1       22    172
[25-30)   6 months    iLiNS_DYADM_LNS             MALAWI                         LNS               0       71    172
[25-30)   6 months    iLiNS_DYADM_LNS             MALAWI                         LNS               1       17    172
<20       6 months    iLiNS_DYADM_LNS             MALAWI                         Control           0       67    150
<20       6 months    iLiNS_DYADM_LNS             MALAWI                         Control           1       15    150
<20       6 months    iLiNS_DYADM_LNS             MALAWI                         LNS               0       48    150
<20       6 months    iLiNS_DYADM_LNS             MALAWI                         LNS               1       20    150
>=30      6 months    iLiNS_DYADM_LNS             MALAWI                         Control           0       53    147
>=30      6 months    iLiNS_DYADM_LNS             MALAWI                         Control           1       25    147
>=30      6 months    iLiNS_DYADM_LNS             MALAWI                         LNS               0       53    147
>=30      6 months    iLiNS_DYADM_LNS             MALAWI                         LNS               1       16    147
<20       Birth       iLiNS_DYADM_LNS             MALAWI                         LNS               1        1      1
[20-25)   6 months    iLiNS_DYADM_LNS             MALAWI                         Control           0       87    214
[20-25)   6 months    iLiNS_DYADM_LNS             MALAWI                         Control           1       20    214
[20-25)   6 months    iLiNS_DYADM_LNS             MALAWI                         LNS               0       87    214
[20-25)   6 months    iLiNS_DYADM_LNS             MALAWI                         LNS               1       20    214
[20-25)   24 months   iLiNS_DYADM_LNS             MALAWI                         Control           0        0     10
[20-25)   24 months   iLiNS_DYADM_LNS             MALAWI                         Control           1        2     10
[20-25)   24 months   iLiNS_DYADM_LNS             MALAWI                         LNS               0        6     10
[20-25)   24 months   iLiNS_DYADM_LNS             MALAWI                         LNS               1        2     10
<20       24 months   iLiNS_DYADM_LNS             MALAWI                         Control           0        3     12
<20       24 months   iLiNS_DYADM_LNS             MALAWI                         Control           1        2     12
<20       24 months   iLiNS_DYADM_LNS             MALAWI                         LNS               0        4     12
<20       24 months   iLiNS_DYADM_LNS             MALAWI                         LNS               1        3     12
[25-30)   24 months   iLiNS_DYADM_LNS             MALAWI                         Control           0        2      9
[25-30)   24 months   iLiNS_DYADM_LNS             MALAWI                         Control           1        1      9
[25-30)   24 months   iLiNS_DYADM_LNS             MALAWI                         LNS               0        4      9
[25-30)   24 months   iLiNS_DYADM_LNS             MALAWI                         LNS               1        2      9
>=30      24 months   iLiNS_DYADM_LNS             MALAWI                         Control           0        0      4
>=30      24 months   iLiNS_DYADM_LNS             MALAWI                         Control           1        2      4
>=30      24 months   iLiNS_DYADM_LNS             MALAWI                         LNS               0        1      4
>=30      24 months   iLiNS_DYADM_LNS             MALAWI                         LNS               1        1      4


The following strata were considered:

* mage: [20-25), agecat: 24 months, studyid: iLiNS_DYADM_LNS, country: MALAWI
* mage: [20-25), agecat: 24 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* mage: [20-25), agecat: 24 months, studyid: ki1000111-WASH-Kenya, country: KENYA
* mage: [20-25), agecat: 24 months, studyid: ki1000304-EU, country: INDIA
* mage: [20-25), agecat: 24 months, studyid: ki1000304-Vitamin-B12, country: INDIA
* mage: [20-25), agecat: 24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* mage: [20-25), agecat: 24 months, studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO
* mage: [20-25), agecat: 24 months, studyid: ki1119695-PROBIT, country: BELARUS
* mage: [20-25), agecat: 24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* mage: [20-25), agecat: 24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* mage: [20-25), agecat: 24 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* mage: [20-25), agecat: 24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* mage: [20-25), agecat: 24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* mage: [20-25), agecat: 24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* mage: [20-25), agecat: 6 months, studyid: iLiNS_DYADM_LNS, country: MALAWI
* mage: [20-25), agecat: 6 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* mage: [20-25), agecat: 6 months, studyid: ki1000111-WASH-Kenya, country: KENYA
* mage: [20-25), agecat: 6 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* mage: [20-25), agecat: 6 months, studyid: ki1000304-EU, country: INDIA
* mage: [20-25), agecat: 6 months, studyid: ki1000304-VITAMIN-A, country: INDIA
* mage: [20-25), agecat: 6 months, studyid: ki1000304-Vitamin-B12, country: INDIA
* mage: [20-25), agecat: 6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* mage: [20-25), agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* mage: [20-25), agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* mage: [20-25), agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* mage: [20-25), agecat: 6 months, studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO
* mage: [20-25), agecat: 6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* mage: [20-25), agecat: 6 months, studyid: ki1119695-PROBIT, country: BELARUS
* mage: [20-25), agecat: 6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* mage: [20-25), agecat: 6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* mage: [20-25), agecat: 6 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* mage: [20-25), agecat: 6 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* mage: [20-25), agecat: 6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* mage: [20-25), agecat: 6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* mage: [20-25), agecat: Birth, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* mage: [20-25), agecat: Birth, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* mage: [20-25), agecat: Birth, studyid: ki1119695-PROBIT, country: BELARUS
* mage: [20-25), agecat: Birth, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* mage: [20-25), agecat: Birth, studyid: ki1135781-COHORTS, country: GUATEMALA
* mage: [20-25), agecat: Birth, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* mage: [25-30), agecat: 24 months, studyid: iLiNS_DYADM_LNS, country: MALAWI
* mage: [25-30), agecat: 24 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* mage: [25-30), agecat: 24 months, studyid: ki1000111-WASH-Kenya, country: KENYA
* mage: [25-30), agecat: 24 months, studyid: ki1000304-EU, country: INDIA
* mage: [25-30), agecat: 24 months, studyid: ki1000304-Vitamin-B12, country: INDIA
* mage: [25-30), agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* mage: [25-30), agecat: 24 months, studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO
* mage: [25-30), agecat: 24 months, studyid: ki1119695-PROBIT, country: BELARUS
* mage: [25-30), agecat: 24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* mage: [25-30), agecat: 24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* mage: [25-30), agecat: 24 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* mage: [25-30), agecat: 24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* mage: [25-30), agecat: 24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* mage: [25-30), agecat: 24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* mage: [25-30), agecat: 6 months, studyid: iLiNS_DYADM_LNS, country: MALAWI
* mage: [25-30), agecat: 6 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* mage: [25-30), agecat: 6 months, studyid: ki1000111-WASH-Kenya, country: KENYA
* mage: [25-30), agecat: 6 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* mage: [25-30), agecat: 6 months, studyid: ki1000304-EU, country: INDIA
* mage: [25-30), agecat: 6 months, studyid: ki1000304-VITAMIN-A, country: INDIA
* mage: [25-30), agecat: 6 months, studyid: ki1000304-Vitamin-B12, country: INDIA
* mage: [25-30), agecat: 6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* mage: [25-30), agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* mage: [25-30), agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* mage: [25-30), agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* mage: [25-30), agecat: 6 months, studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO
* mage: [25-30), agecat: 6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* mage: [25-30), agecat: 6 months, studyid: ki1119695-PROBIT, country: BELARUS
* mage: [25-30), agecat: 6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* mage: [25-30), agecat: 6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* mage: [25-30), agecat: 6 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* mage: [25-30), agecat: 6 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* mage: [25-30), agecat: 6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* mage: [25-30), agecat: 6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* mage: [25-30), agecat: Birth, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* mage: [25-30), agecat: Birth, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* mage: [25-30), agecat: Birth, studyid: ki1119695-PROBIT, country: BELARUS
* mage: [25-30), agecat: Birth, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* mage: [25-30), agecat: Birth, studyid: ki1135781-COHORTS, country: GUATEMALA
* mage: [25-30), agecat: Birth, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* mage: <20, agecat: 24 months, studyid: iLiNS_DYADM_LNS, country: MALAWI
* mage: <20, agecat: 24 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* mage: <20, agecat: 24 months, studyid: ki1000111-WASH-Kenya, country: KENYA
* mage: <20, agecat: 24 months, studyid: ki1000304-EU, country: INDIA
* mage: <20, agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* mage: <20, agecat: 24 months, studyid: ki1119695-PROBIT, country: BELARUS
* mage: <20, agecat: 24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* mage: <20, agecat: 24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* mage: <20, agecat: 24 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* mage: <20, agecat: 24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* mage: <20, agecat: 24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* mage: <20, agecat: 24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* mage: <20, agecat: 6 months, studyid: iLiNS_DYADM_LNS, country: MALAWI
* mage: <20, agecat: 6 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* mage: <20, agecat: 6 months, studyid: ki1000111-WASH-Kenya, country: KENYA
* mage: <20, agecat: 6 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* mage: <20, agecat: 6 months, studyid: ki1000304-EU, country: INDIA
* mage: <20, agecat: 6 months, studyid: ki1000304-VITAMIN-A, country: INDIA
* mage: <20, agecat: 6 months, studyid: ki1000304-Vitamin-B12, country: INDIA
* mage: <20, agecat: 6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* mage: <20, agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* mage: <20, agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* mage: <20, agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* mage: <20, agecat: 6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* mage: <20, agecat: 6 months, studyid: ki1119695-PROBIT, country: BELARUS
* mage: <20, agecat: 6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* mage: <20, agecat: 6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* mage: <20, agecat: 6 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* mage: <20, agecat: 6 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* mage: <20, agecat: 6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* mage: <20, agecat: 6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* mage: <20, agecat: Birth, studyid: iLiNS_DYADM_LNS, country: MALAWI
* mage: <20, agecat: Birth, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* mage: <20, agecat: Birth, studyid: ki1119695-PROBIT, country: BELARUS
* mage: <20, agecat: Birth, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* mage: <20, agecat: Birth, studyid: ki1135781-COHORTS, country: GUATEMALA
* mage: <20, agecat: Birth, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* mage: <20, agecat: Birth, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* mage: >=30, agecat: 24 months, studyid: iLiNS_DYADM_LNS, country: MALAWI
* mage: >=30, agecat: 24 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* mage: >=30, agecat: 24 months, studyid: ki1000111-WASH-Kenya, country: KENYA
* mage: >=30, agecat: 24 months, studyid: ki1000304-EU, country: INDIA
* mage: >=30, agecat: 24 months, studyid: ki1000304-Vitamin-B12, country: INDIA
* mage: >=30, agecat: 24 months, studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO
* mage: >=30, agecat: 24 months, studyid: ki1119695-PROBIT, country: BELARUS
* mage: >=30, agecat: 24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* mage: >=30, agecat: 24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* mage: >=30, agecat: 24 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* mage: >=30, agecat: 24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* mage: >=30, agecat: 24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* mage: >=30, agecat: 24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* mage: >=30, agecat: 6 months, studyid: iLiNS_DYADM_LNS, country: MALAWI
* mage: >=30, agecat: 6 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* mage: >=30, agecat: 6 months, studyid: ki1000111-WASH-Kenya, country: KENYA
* mage: >=30, agecat: 6 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* mage: >=30, agecat: 6 months, studyid: ki1000304-EU, country: INDIA
* mage: >=30, agecat: 6 months, studyid: ki1000304-VITAMIN-A, country: INDIA
* mage: >=30, agecat: 6 months, studyid: ki1000304-Vitamin-B12, country: INDIA
* mage: >=30, agecat: 6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* mage: >=30, agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* mage: >=30, agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* mage: >=30, agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* mage: >=30, agecat: 6 months, studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO
* mage: >=30, agecat: 6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* mage: >=30, agecat: 6 months, studyid: ki1119695-PROBIT, country: BELARUS
* mage: >=30, agecat: 6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* mage: >=30, agecat: 6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* mage: >=30, agecat: 6 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* mage: >=30, agecat: 6 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* mage: >=30, agecat: 6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* mage: >=30, agecat: 6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* mage: >=30, agecat: Birth, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* mage: >=30, agecat: Birth, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* mage: >=30, agecat: Birth, studyid: ki1119695-PROBIT, country: BELARUS
* mage: >=30, agecat: Birth, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* mage: >=30, agecat: Birth, studyid: ki1135781-COHORTS, country: GUATEMALA
* mage: >=30, agecat: Birth, studyid: kiGH5241-JiVitA-3, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* mage: [25-30), agecat: 6 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* mage: >=30, agecat: 6 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* mage: [20-25), agecat: 6 months, studyid: ki1000111-WASH-Kenya, country: KENYA
* mage: >=30, agecat: 6 months, studyid: ki1000111-WASH-Kenya, country: KENYA
* mage: [25-30), agecat: 6 months, studyid: ki1000111-WASH-Kenya, country: KENYA
* mage: <20, agecat: 6 months, studyid: ki1000111-WASH-Kenya, country: KENYA
* mage: [25-30), agecat: 6 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* mage: [20-25), agecat: 6 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* mage: <20, agecat: 6 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* mage: >=30, agecat: Birth, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* mage: [20-25), agecat: Birth, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* mage: [25-30), agecat: Birth, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* mage: >=30, agecat: 24 months, studyid: ki1000304-EU, country: INDIA
* mage: <20, agecat: 6 months, studyid: ki1000304-EU, country: INDIA
* mage: <20, agecat: 24 months, studyid: ki1000304-EU, country: INDIA
* mage: [25-30), agecat: 6 months, studyid: ki1000304-Vitamin-B12, country: INDIA
* mage: >=30, agecat: 24 months, studyid: ki1000304-Vitamin-B12, country: INDIA
* mage: >=30, agecat: 6 months, studyid: ki1000304-Vitamin-B12, country: INDIA
* mage: <20, agecat: 6 months, studyid: ki1000304-Vitamin-B12, country: INDIA
* mage: <20, agecat: Birth, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* mage: >=30, agecat: Birth, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* mage: <20, agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* mage: >=30, agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* mage: [20-25), agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* mage: [25-30), agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* mage: <20, agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* mage: [20-25), agecat: 24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* mage: <20, agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* mage: [25-30), agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* mage: <20, agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* mage: [25-30), agecat: Birth, studyid: ki1119695-PROBIT, country: BELARUS
* mage: >=30, agecat: Birth, studyid: ki1119695-PROBIT, country: BELARUS
* mage: <20, agecat: Birth, studyid: ki1119695-PROBIT, country: BELARUS
* mage: <20, agecat: 24 months, studyid: ki1119695-PROBIT, country: BELARUS
* mage: [20-25), agecat: 24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* mage: [25-30), agecat: 24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* mage: >=30, agecat: 24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* mage: <20, agecat: 24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* mage: [25-30), agecat: Birth, studyid: ki1135781-COHORTS, country: GUATEMALA
* mage: <20, agecat: Birth, studyid: ki1135781-COHORTS, country: GUATEMALA
* mage: <20, agecat: 24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* mage: <20, agecat: Birth, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* mage: [20-25), agecat: 24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* mage: <20, agecat: 24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* mage: [25-30), agecat: 24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* mage: >=30, agecat: 24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* mage: <20, agecat: 24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* mage: [25-30), agecat: 24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* mage: [20-25), agecat: 24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* mage: >=30, agecat: 24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* mage: <20, agecat: Birth, studyid: iLiNS_DYADM_LNS, country: MALAWI
* mage: [20-25), agecat: 24 months, studyid: iLiNS_DYADM_LNS, country: MALAWI
* mage: <20, agecat: 24 months, studyid: iLiNS_DYADM_LNS, country: MALAWI
* mage: [25-30), agecat: 24 months, studyid: iLiNS_DYADM_LNS, country: MALAWI
* mage: >=30, agecat: 24 months, studyid: iLiNS_DYADM_LNS, country: MALAWI

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
##   Zinc     298 130
##           stunted
## tr           0   1
##   Control    0   0
##   LNS        0   0
##   Maternal   0   0
##   Other      0   0
##   VitA       0   0
##   Zinc     181  19
##           stunted
## tr          0  1
##   Control   0  0
##   LNS       0  0
##   Maternal  0  0
##   Other     0  0
##   VitA      0  0
##   Zinc     77 51
##           stunted
## tr          0  1
##   Control   0  0
##   LNS       0  0
##   Maternal  0  0
##   Other     0  0
##   VitA      0  0
##   Zinc     69  8
##           stunted
## tr           0   1
##   Control    0   0
##   LNS        0   0
##   Maternal   0   0
##   Other      0   0
##   VitA       0   0
##   Zinc     292 183
##           stunted
## tr           0   1
##   Control    0   0
##   LNS        0   0
##   Maternal   0   0
##   Other      0   0
##   VitA       0   0
##   Zinc     225  35
```




# Results Detail

## Results Plots
![](/tmp/85aecb0a-96f6-4cd1-bc44-0841037317d1/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/85aecb0a-96f6-4cd1-bc44-0841037317d1/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/85aecb0a-96f6-4cd1-bc44-0841037317d1/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/85aecb0a-96f6-4cd1-bc44-0841037317d1/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


mage      agecat      studyid                     country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
--------  ----------  --------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
<20       Birth       ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                0.1162362   0.1095871   0.1228853
<20       Birth       ki1126311-ZVITAMBO          ZIMBABWE                       VitA                 NA                0.1145959   0.1030382   0.1261536
<20       Birth       kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                0.3849148   0.3770205   0.3928092
<20       Birth       kiGH5241-JiVitA-3           BANGLADESH                     Maternal             NA                0.3497670   0.3415579   0.3579761
<20       6 months    iLiNS_DYADM_LNS             MALAWI                         Control              NA                0.1829268   0.1370297   0.2288239
<20       6 months    iLiNS_DYADM_LNS             MALAWI                         LNS                  NA                0.2941176   0.2448581   0.3433772
<20       6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                0.2285714   0.0890599   0.3680830
<20       6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                  NA                0.2115385   0.1002196   0.3228573
<20       6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Other                NA                0.1797753   0.0997694   0.2597811
<20       6 months    ki1000304-VITAMIN-A         INDIA                          Control              NA                0.4235294   0.3613082   0.4857507
<20       6 months    ki1000304-VITAMIN-A         INDIA                          VitA                 NA                0.4067797   0.3552435   0.4583159
<20       6 months    ki1000304b-SAS-CompFeed     INDIA                          Control              NA                0.2926829   0.2433861   0.3419798
<20       6 months    ki1000304b-SAS-CompFeed     INDIA                          Other                NA                0.2857143   0.1862978   0.3851308
<20       6 months    ki1112895-Guatemala BSC     GUATEMALA                      Control              NA                0.4444444   0.3132544   0.5756345
<20       6 months    ki1112895-Guatemala BSC     GUATEMALA                      Other                NA                0.3571429   0.2455762   0.4687095
<20       6 months    ki1119695-PROBIT            BELARUS                        Control              NA                0.0995733   0.0769904   0.1221561
<20       6 months    ki1119695-PROBIT            BELARUS                        Maternal             NA                0.0766284   0.0648677   0.0883891
<20       6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                0.1951220   0.1839375   0.2063064
<20       6 months    ki1126311-ZVITAMBO          ZIMBABWE                       VitA                 NA                0.1898876   0.1703949   0.2093803
<20       6 months    ki1135781-COHORTS           GUATEMALA                      Control              NA                0.4393939   0.3709716   0.5078163
<20       6 months    ki1135781-COHORTS           GUATEMALA                      Other                NA                0.3800000   0.3217571   0.4382429
<20       6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                0.3673469   0.3453368   0.3893571
<20       6 months    ki1148112-iLiNS-DOSE        MALAWI                         LNS                  NA                0.3730159   0.3229437   0.4230880
<20       6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Control              NA                0.1829268   0.1524985   0.2133552
<20       6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Maternal             NA                0.2500000   0.2048368   0.2951632
<20       6 months    ki1148112-LCNI-5            MALAWI                         Control              NA                0.3437500   0.1784138   0.5090862
<20       6 months    ki1148112-LCNI-5            MALAWI                         LNS                  NA                0.3181818   0.1799103   0.4564533
<20       6 months    ki1148112-LCNI-5            MALAWI                         Other                NA                0.2580645   0.1033064   0.4128226
<20       6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                0.2870440   0.2787509   0.2953372
<20       6 months    kiGH5241-JiVitA-3           BANGLADESH                     Maternal             NA                0.2635758   0.2555408   0.2716108
<20       24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                0.3857143   0.2714799   0.4999487
<20       24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                  NA                0.4117647   0.2945793   0.5289501
<20       24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                NA                0.4326241   0.3507005   0.5145477
<20       24 months   ki1000111-WASH-Kenya        KENYA                          Control              NA                0.3942308   0.3001570   0.4883046
<20       24 months   ki1000111-WASH-Kenya        KENYA                          LNS                  NA                0.3220339   0.2026116   0.4414562
<20       24 months   ki1000111-WASH-Kenya        KENYA                          Other                NA                0.3750000   0.2957989   0.4542011
<20       24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                0.6470588   0.6167696   0.6773481
<20       24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS                  NA                0.6036036   0.5243820   0.6828252
<20       24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                0.4800000   0.3901616   0.5698384
<20       24 months   kiGH5241-JiVitA-3           BANGLADESH                     Maternal             NA                0.8064516   0.7323699   0.8805333
[20-25)   Birth       ki1000304b-SAS-CompFeed     INDIA                          Control              NA                0.2307692   0.1508472   0.3106912
[20-25)   Birth       ki1000304b-SAS-CompFeed     INDIA                          Other                NA                0.3333333   0.2473753   0.4192914
[20-25)   Birth       ki1119695-PROBIT            BELARUS                        Control              NA                0.0030354   0.0016412   0.0044296
[20-25)   Birth       ki1119695-PROBIT            BELARUS                        Maternal             NA                0.0025932   0.0013707   0.0038157
[20-25)   Birth       ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                0.1111869   0.1071359   0.1152379
[20-25)   Birth       ki1126311-ZVITAMBO          ZIMBABWE                       VitA                 NA                0.1002754   0.0936018   0.1069489
[20-25)   Birth       ki1135781-COHORTS           GUATEMALA                      Control              NA                0.0500000   0.0306274   0.0693726
[20-25)   Birth       ki1135781-COHORTS           GUATEMALA                      Other                NA                0.0743802   0.0487248   0.1000355
[20-25)   Birth       kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                0.3110249   0.3013690   0.3206808
[20-25)   Birth       kiGH5241-JiVitA-3           BANGLADESH                     Maternal             NA                0.2755829   0.2663909   0.2847749
[20-25)   6 months    iLiNS_DYADM_LNS             MALAWI                         Control              NA                0.1869159   0.1498961   0.2239357
[20-25)   6 months    iLiNS_DYADM_LNS             MALAWI                         LNS                  NA                0.1869159   0.1498961   0.2239357
[20-25)   6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                0.1935484   0.0949989   0.2920979
[20-25)   6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                  NA                0.1126761   0.0389716   0.1863806
[20-25)   6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Other                NA                0.0961538   0.0393758   0.1529319
[20-25)   6 months    ki1000304-EU                INDIA                          Control              NA                0.3921569   0.2971537   0.4871600
[20-25)   6 months    ki1000304-EU                INDIA                          Zinc                 NA                0.2705882   0.1758896   0.3652869
[20-25)   6 months    ki1000304-VITAMIN-A         INDIA                          Control              NA                0.3389831   0.3195809   0.3583852
[20-25)   6 months    ki1000304-VITAMIN-A         INDIA                          VitA                 NA                0.3251748   0.3062696   0.3440800
[20-25)   6 months    ki1000304-Vitamin-B12       INDIA                          Control              NA                0.4545455   0.3801319   0.5289590
[20-25)   6 months    ki1000304-Vitamin-B12       INDIA                          Other                NA                0.3939394   0.2674607   0.5204180
[20-25)   6 months    ki1000304b-SAS-CompFeed     INDIA                          Control              NA                0.2370370   0.1986108   0.2754632
[20-25)   6 months    ki1000304b-SAS-CompFeed     INDIA                          Other                NA                0.2675159   0.2361010   0.2989308
[20-25)   6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Control              NA                0.5000000   0.4539945   0.5460055
[20-25)   6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Other                NA                0.3483146   0.2752067   0.4214226
[20-25)   6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              NA                0.0793651   0.0321212   0.1266090
[20-25)   6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                NA                0.1119403   0.0585042   0.1653764
[20-25)   6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                 NA                0.0992063   0.0622614   0.1361513
[20-25)   6 months    ki1112895-Guatemala BSC     GUATEMALA                      Control              NA                0.3023256   0.2298992   0.3747520
[20-25)   6 months    ki1112895-Guatemala BSC     GUATEMALA                      Other                NA                0.3333333   0.2625347   0.4041319
[20-25)   6 months    ki1119695-PROBIT            BELARUS                        Control              NA                0.0742638   0.0608089   0.0877186
[20-25)   6 months    ki1119695-PROBIT            BELARUS                        Maternal             NA                0.0578358   0.0489075   0.0667642
[20-25)   6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                0.1526718   0.1463986   0.1589449
[20-25)   6 months    ki1126311-ZVITAMBO          ZIMBABWE                       VitA                 NA                0.1577167   0.1466898   0.1687436
[20-25)   6 months    ki1135781-COHORTS           GUATEMALA                      Control              NA                0.3513514   0.3123100   0.3903927
[20-25)   6 months    ki1135781-COHORTS           GUATEMALA                      Other                NA                0.4225352   0.3768447   0.4682257
[20-25)   6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                0.3392857   0.3237095   0.3548619
[20-25)   6 months    ki1148112-iLiNS-DOSE        MALAWI                         LNS                  NA                0.2601156   0.2290477   0.2911835
[20-25)   6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Control              NA                0.1869159   0.1606140   0.2132178
[20-25)   6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Maternal             NA                0.1907216   0.1550310   0.2264123
[20-25)   6 months    ki1148112-LCNI-5            MALAWI                         Control              NA                0.3877551   0.2509761   0.5245341
[20-25)   6 months    ki1148112-LCNI-5            MALAWI                         LNS                  NA                0.3516484   0.2532891   0.4500076
[20-25)   6 months    ki1148112-LCNI-5            MALAWI                         Other                NA                0.3207547   0.1947641   0.4467453
[20-25)   6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                0.2392516   0.2292526   0.2492505
[20-25)   6 months    kiGH5241-JiVitA-3           BANGLADESH                     Maternal             NA                0.2178334   0.2089842   0.2266825
[20-25)   24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                0.4444444   0.3416466   0.5472422
[20-25)   24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                  NA                0.3870968   0.2879687   0.4862249
[20-25)   24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                NA                0.3862434   0.3167361   0.4557507
[20-25)   24 months   ki1000111-WASH-Kenya        KENYA                          Control              NA                0.3160173   0.2560176   0.3760171
[20-25)   24 months   ki1000111-WASH-Kenya        KENYA                          LNS                  NA                0.2408759   0.1692170   0.3125348
[20-25)   24 months   ki1000111-WASH-Kenya        KENYA                          Other                NA                0.3390411   0.2847036   0.3933786
[20-25)   24 months   ki1000304-EU                INDIA                          Control              NA                0.6481481   0.5202204   0.7760759
[20-25)   24 months   ki1000304-EU                INDIA                          Zinc                 NA                0.5737705   0.4491267   0.6984142
[20-25)   24 months   ki1000304-Vitamin-B12       INDIA                          Control              NA                0.2941176   0.2165948   0.3716405
[20-25)   24 months   ki1000304-Vitamin-B12       INDIA                          Other                NA                0.5483871   0.4340503   0.6627239
[20-25)   24 months   ki1119695-PROBIT            BELARUS                        Control              NA                0.1296296   0.0930377   0.1662215
[20-25)   24 months   ki1119695-PROBIT            BELARUS                        Maternal             NA                0.1262136   0.0981480   0.1542792
[20-25)   24 months   ki1135781-COHORTS           GUATEMALA                      Control              NA                0.8500000   0.7994138   0.9005862
[20-25)   24 months   ki1135781-COHORTS           GUATEMALA                      Other                NA                0.7708333   0.7056069   0.8360598
[20-25)   24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                0.4782609   0.4512128   0.5053089
[20-25)   24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS                  NA                0.5250000   0.4686182   0.5813818
[20-25)   24 months   ki1148112-LCNI-5            MALAWI                         Control              NA                0.4347826   0.2308934   0.6386718
[20-25)   24 months   ki1148112-LCNI-5            MALAWI                         LNS                  NA                0.3125000   0.1508779   0.4741221
[20-25)   24 months   ki1148112-LCNI-5            MALAWI                         Other                NA                0.2916667   0.1086583   0.4746750
[25-30)   Birth       ki1000304b-SAS-CompFeed     INDIA                          Control              NA                0.2173913   0.1364873   0.2982953
[25-30)   Birth       ki1000304b-SAS-CompFeed     INDIA                          Other                NA                0.3529412   0.2358605   0.4700219
[25-30)   Birth       ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                0.0963303   0.0913684   0.1012921
[25-30)   Birth       ki1126311-ZVITAMBO          ZIMBABWE                       VitA                 NA                0.1042802   0.0954564   0.1131039
[25-30)   Birth       kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                0.3004926   0.2872096   0.3137757
[25-30)   Birth       kiGH5241-JiVitA-3           BANGLADESH                     Maternal             NA                0.2686823   0.2555570   0.2818075
[25-30)   6 months    iLiNS_DYADM_LNS             MALAWI                         Control              NA                0.2619048   0.2158522   0.3079573
[25-30)   6 months    iLiNS_DYADM_LNS             MALAWI                         LNS                  NA                0.1931818   0.1508567   0.2355069
[25-30)   6 months    ki1000304-EU                INDIA                          Control              NA                0.4107143   0.2812396   0.5401890
[25-30)   6 months    ki1000304-EU                INDIA                          Zinc                 NA                0.2500000   0.1269090   0.3730910
[25-30)   6 months    ki1000304-VITAMIN-A         INDIA                          Control              NA                0.3738095   0.3512779   0.3963411
[25-30)   6 months    ki1000304-VITAMIN-A         INDIA                          VitA                 NA                0.3069977   0.2849367   0.3290588
[25-30)   6 months    ki1000304b-SAS-CompFeed     INDIA                          Control              NA                0.3214286   0.2722656   0.3705916
[25-30)   6 months    ki1000304b-SAS-CompFeed     INDIA                          Other                NA                0.2934783   0.2430728   0.3438838
[25-30)   6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Control              NA                0.6363636   0.5910397   0.6816875
[25-30)   6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Other                NA                0.4022989   0.3272818   0.4773159
[25-30)   6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              NA                0.1333333   0.0759410   0.1907257
[25-30)   6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                NA                0.1136364   0.0594484   0.1678244
[25-30)   6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                 NA                0.1229773   0.0863282   0.1596265
[25-30)   6 months    ki1112895-Guatemala BSC     GUATEMALA                      Control              NA                0.2272727   0.1538878   0.3006576
[25-30)   6 months    ki1112895-Guatemala BSC     GUATEMALA                      Other                NA                0.1935484   0.1114238   0.2756730
[25-30)   6 months    ki1119695-PROBIT            BELARUS                        Control              NA                0.0592925   0.0511954   0.0673895
[25-30)   6 months    ki1119695-PROBIT            BELARUS                        Maternal             NA                0.0446169   0.0384687   0.0507650
[25-30)   6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                0.1816327   0.1731911   0.1900742
[25-30)   6 months    ki1126311-ZVITAMBO          ZIMBABWE                       VitA                 NA                0.1588472   0.1448814   0.1728130
[25-30)   6 months    ki1135781-COHORTS           GUATEMALA                      Control              NA                0.4842105   0.4368311   0.5315899
[25-30)   6 months    ki1135781-COHORTS           GUATEMALA                      Other                NA                0.3457944   0.2979388   0.3936499
[25-30)   6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                0.2622951   0.2472141   0.2773760
[25-30)   6 months    ki1148112-iLiNS-DOSE        MALAWI                         LNS                  NA                0.2564767   0.2188157   0.2941377
[25-30)   6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Control              NA                0.2619048   0.2338480   0.2899615
[25-30)   6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Maternal             NA                0.2373737   0.1956892   0.2790583
[25-30)   6 months    ki1148112-LCNI-5            MALAWI                         Control              NA                0.3409091   0.2004379   0.4813803
[25-30)   6 months    ki1148112-LCNI-5            MALAWI                         LNS                  NA                0.4047619   0.2994864   0.5100374
[25-30)   6 months    ki1148112-LCNI-5            MALAWI                         Other                NA                0.4418605   0.2929924   0.5907285
[25-30)   6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                0.2320129   0.2183795   0.2456464
[25-30)   6 months    kiGH5241-JiVitA-3           BANGLADESH                     Maternal             NA                0.2208272   0.2073072   0.2343471
[25-30)   24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                0.4782609   0.3602222   0.5962995
[25-30)   24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                  NA                0.3707865   0.2702889   0.4712841
[25-30)   24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                NA                0.4309392   0.3586893   0.5031892
[25-30)   24 months   ki1000111-WASH-Kenya        KENYA                          Control              NA                0.3145540   0.2521465   0.3769614
[25-30)   24 months   ki1000111-WASH-Kenya        KENYA                          LNS                  NA                0.2808219   0.2078679   0.3537759
[25-30)   24 months   ki1000111-WASH-Kenya        KENYA                          Other                NA                0.2747253   0.2217332   0.3277174
[25-30)   24 months   ki1000304-EU                INDIA                          Control              NA                0.5769231   0.4419061   0.7119400
[25-30)   24 months   ki1000304-EU                INDIA                          Zinc                 NA                0.5500000   0.3949831   0.7050169
[25-30)   24 months   ki1000304-Vitamin-B12       INDIA                          Control              NA                0.4166667   0.3490415   0.4842919
[25-30)   24 months   ki1000304-Vitamin-B12       INDIA                          Other                NA                0.4736842   0.3518064   0.5955620
[25-30)   24 months   ki1119695-PROBIT            BELARUS                        Control              NA                0.1229508   0.0495655   0.1963362
[25-30)   24 months   ki1119695-PROBIT            BELARUS                        Maternal             NA                0.1250000   0.0517224   0.1982776
[25-30)   24 months   ki1135781-COHORTS           GUATEMALA                      Control              NA                0.8421053   0.7787134   0.9054971
[25-30)   24 months   ki1135781-COHORTS           GUATEMALA                      Other                NA                0.7812500   0.7152994   0.8472006
[25-30)   24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                0.4347826   0.4091094   0.4604559
[25-30)   24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS                  NA                0.4088050   0.3418636   0.4757465
[25-30)   24 months   ki1148112-LCNI-5            MALAWI                         Control              NA                0.2500000   0.0756826   0.4243174
[25-30)   24 months   ki1148112-LCNI-5            MALAWI                         LNS                  NA                0.4615385   0.3041059   0.6189710
[25-30)   24 months   ki1148112-LCNI-5            MALAWI                         Other                NA                0.6111111   0.3844995   0.8377228
>=30      Birth       ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                0.0876565   0.0820165   0.0932966
>=30      Birth       ki1126311-ZVITAMBO          ZIMBABWE                       VitA                 NA                0.0974504   0.0869404   0.1079605
>=30      Birth       ki1135781-COHORTS           GUATEMALA                      Control              NA                0.0641026   0.0456816   0.0825235
>=30      Birth       ki1135781-COHORTS           GUATEMALA                      Other                NA                0.0705882   0.0504791   0.0906973
>=30      Birth       kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                0.3198690   0.3012215   0.3385165
>=30      Birth       kiGH5241-JiVitA-3           BANGLADESH                     Maternal             NA                0.2770701   0.2596328   0.2945073
>=30      6 months    iLiNS_DYADM_LNS             MALAWI                         Control              NA                0.3205128   0.2653719   0.3756537
>=30      6 months    iLiNS_DYADM_LNS             MALAWI                         LNS                  NA                0.2318841   0.1849826   0.2787855
>=30      6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Control              NA                0.2820513   0.2060775   0.3580250
>=30      6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Maternal             NA                0.2647059   0.1951599   0.3342519
>=30      6 months    ki1000304-EU                INDIA                          Control              NA                0.1612903   0.0304182   0.2921625
>=30      6 months    ki1000304-EU                INDIA                          Zinc                 NA                0.3125000   0.0829277   0.5420723
>=30      6 months    ki1000304-VITAMIN-A         INDIA                          Control              NA                0.3431953   0.3071384   0.3792521
>=30      6 months    ki1000304-VITAMIN-A         INDIA                          VitA                 NA                0.3892216   0.3524125   0.4260306
>=30      6 months    ki1000304b-SAS-CompFeed     INDIA                          Control              NA                0.3142857   0.2401221   0.3884493
>=30      6 months    ki1000304b-SAS-CompFeed     INDIA                          Other                NA                0.3157895   0.2569868   0.3745921
>=30      6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Control              NA                0.4444444   0.3918069   0.4970820
>=30      6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Other                NA                0.3934426   0.2981786   0.4887066
>=30      6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              NA                0.1194030   0.0644437   0.1743623
>=30      6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                NA                0.0880000   0.0382857   0.1377143
>=30      6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                 NA                0.0933333   0.0552839   0.1313828
>=30      6 months    ki1112895-Guatemala BSC     GUATEMALA                      Control              NA                0.4210526   0.3240794   0.5180259
>=30      6 months    ki1112895-Guatemala BSC     GUATEMALA                      Other                NA                0.2800000   0.1788414   0.3811586
>=30      6 months    ki1119695-PROBIT            BELARUS                        Control              NA                0.0743349   0.0606702   0.0879996
>=30      6 months    ki1119695-PROBIT            BELARUS                        Maternal             NA                0.0527506   0.0397716   0.0657295
>=30      6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                0.1371429   0.1284528   0.1458329
>=30      6 months    ki1126311-ZVITAMBO          ZIMBABWE                       VitA                 NA                0.1760436   0.1589716   0.1931155
>=30      6 months    ki1135781-COHORTS           GUATEMALA                      Control              NA                0.5333333   0.4969433   0.5697233
>=30      6 months    ki1135781-COHORTS           GUATEMALA                      Other                NA                0.3480663   0.3132233   0.3829093
>=30      6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                0.3536585   0.3355464   0.3717706
>=30      6 months    ki1148112-iLiNS-DOSE        MALAWI                         LNS                  NA                0.3359173   0.2970467   0.3747879
>=30      6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Control              NA                0.3205128   0.2837105   0.3573152
>=30      6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Maternal             NA                0.2183099   0.1743544   0.2622653
>=30      6 months    ki1148112-LCNI-5            MALAWI                         Control              NA                0.3409091   0.2004942   0.4813240
>=30      6 months    ki1148112-LCNI-5            MALAWI                         LNS                  NA                0.4018692   0.3087378   0.4950006
>=30      6 months    ki1148112-LCNI-5            MALAWI                         Other                NA                0.4893617   0.3460867   0.6326367
>=30      6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                0.2534965   0.2321979   0.2747951
>=30      6 months    kiGH5241-JiVitA-3           BANGLADESH                     Maternal             NA                0.2380216   0.2185701   0.2574732
>=30      24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                0.3500000   0.2018019   0.4981981
>=30      24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                  NA                0.3214286   0.1987897   0.4440674
>=30      24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                NA                0.4166667   0.3177888   0.5155446
>=30      24 months   ki1000111-WASH-Kenya        KENYA                          Control              NA                0.2401961   0.1815278   0.2988643
>=30      24 months   ki1000111-WASH-Kenya        KENYA                          LNS                  NA                0.3221477   0.2470569   0.3972384
>=30      24 months   ki1000111-WASH-Kenya        KENYA                          Other                NA                0.3105802   0.2575554   0.3636051
>=30      24 months   ki1119695-PROBIT            BELARUS                        Control              NA                0.1060606   0.0673237   0.1447975
>=30      24 months   ki1119695-PROBIT            BELARUS                        Maternal             NA                0.0617284   0.0252695   0.0981873
>=30      24 months   ki1135781-COHORTS           GUATEMALA                      Control              NA                0.7540984   0.6960198   0.8121770
>=30      24 months   ki1135781-COHORTS           GUATEMALA                      Other                NA                0.6415094   0.5812209   0.7017980
>=30      24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                0.5250000   0.4955928   0.5544072
>=30      24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS                  NA                0.4970760   0.4361984   0.5579537
>=30      24 months   ki1148112-LCNI-5            MALAWI                         Control              NA                0.4193548   0.2447916   0.5939181
>=30      24 months   ki1148112-LCNI-5            MALAWI                         LNS                  NA                0.4901961   0.3523200   0.6280722
>=30      24 months   ki1148112-LCNI-5            MALAWI                         Other                NA                0.3500000   0.1399304   0.5600696


### Parameter: E(Y)


mage      agecat      studyid                     country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
--------  ----------  --------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
<20       Birth       ki1126311-ZVITAMBO          ZIMBABWE                       NA                   NA                0.1150000   0.1016661   0.1283339
<20       Birth       kiGH5241-JiVitA-3           BANGLADESH                     NA                   NA                0.3674118   0.3559148   0.3789087
<20       6 months    iLiNS_DYADM_LNS             MALAWI                         NA                   NA                0.2333333   0.1654213   0.3012454
<20       6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     NA                   NA                0.1988636   0.1397265   0.2580007
<20       6 months    ki1000304-VITAMIN-A         INDIA                          NA                   NA                0.4166667   0.3358627   0.4974707
<20       6 months    ki1000304b-SAS-CompFeed     INDIA                          NA                   NA                0.2894737   0.1783724   0.4005750
<20       6 months    ki1112895-Guatemala BSC     GUATEMALA                      NA                   NA                0.4062500   0.2333616   0.5791384
<20       6 months    ki1119695-PROBIT            BELARUS                        NA                   NA                0.0874832   0.0616429   0.1133234
<20       6 months    ki1126311-ZVITAMBO          ZIMBABWE                       NA                   NA                0.1911640   0.1686901   0.2136378
<20       6 months    ki1135781-COHORTS           GUATEMALA                      NA                   NA                0.4137931   0.3237778   0.5038084
<20       6 months    ki1148112-iLiNS-DOSE        MALAWI                         NA                   NA                0.3720930   0.3173964   0.4267897
<20       6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         NA                   NA                0.2256637   0.1710436   0.2802838
<20       6 months    ki1148112-LCNI-5            MALAWI                         NA                   NA                0.3084112   0.2204919   0.3963305
<20       6 months    kiGH5241-JiVitA-3           BANGLADESH                     NA                   NA                0.2754157   0.2638449   0.2869864
<20       24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     NA                   NA                0.4157706   0.3578352   0.4737060
<20       24 months   ki1000111-WASH-Kenya        KENYA                          NA                   NA                0.3713355   0.3172003   0.4254707
<20       24 months   ki1148112-iLiNS-DOSE        MALAWI                         NA                   NA                0.6093750   0.5245217   0.6942283
<20       24 months   kiGH5241-JiVitA-3           BANGLADESH                     NA                   NA                0.6607143   0.5359893   0.7854393
[20-25)   Birth       ki1000304b-SAS-CompFeed     INDIA                          NA                   NA                0.2903226   0.1688456   0.4117996
[20-25)   Birth       ki1119695-PROBIT            BELARUS                        NA                   NA                0.0028099   0.0009590   0.0046608
[20-25)   Birth       ki1126311-ZVITAMBO          ZIMBABWE                       NA                   NA                0.1030220   0.0952141   0.1108298
[20-25)   Birth       ki1135781-COHORTS           GUATEMALA                      NA                   NA                0.0633484   0.0311604   0.0955364
[20-25)   Birth       kiGH5241-JiVitA-3           BANGLADESH                     NA                   NA                0.2933182   0.2798980   0.3067385
[20-25)   6 months    iLiNS_DYADM_LNS             MALAWI                         NA                   NA                0.1869159   0.1345620   0.2392698
[20-25)   6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     NA                   NA                0.1265823   0.0841604   0.1690041
[20-25)   6 months    ki1000304-EU                INDIA                          NA                   NA                0.3368984   0.2689732   0.4048236
[20-25)   6 months    ki1000304-VITAMIN-A         INDIA                          NA                   NA                0.3321859   0.3050933   0.3592785
[20-25)   6 months    ki1000304-Vitamin-B12       INDIA                          NA                   NA                0.4090909   0.2621360   0.5560458
[20-25)   6 months    ki1000304b-SAS-CompFeed     INDIA                          NA                   NA                0.2534247   0.2018909   0.3049585
[20-25)   6 months    ki1000304b-SAS-FoodSuppl    INDIA                          NA                   NA                0.3884298   0.3012257   0.4756338
[20-25)   6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0976563   0.0719183   0.1233942
[20-25)   6 months    ki1112895-Guatemala BSC     GUATEMALA                      NA                   NA                0.3170732   0.2157352   0.4184112
[20-25)   6 months    ki1119695-PROBIT            BELARUS                        NA                   NA                0.0659306   0.0490289   0.0828323
[20-25)   6 months    ki1126311-ZVITAMBO          ZIMBABWE                       NA                   NA                0.1564583   0.1437717   0.1691449
[20-25)   6 months    ki1135781-COHORTS           GUATEMALA                      NA                   NA                0.3913043   0.3310477   0.4515610
[20-25)   6 months    ki1148112-iLiNS-DOSE        MALAWI                         NA                   NA                0.2741680   0.2393339   0.3090021
[20-25)   6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         NA                   NA                0.1893688   0.1450331   0.2337044
[20-25)   6 months    ki1148112-LCNI-5            MALAWI                         NA                   NA                0.3523316   0.2847623   0.4199009
[20-25)   6 months    kiGH5241-JiVitA-3           BANGLADESH                     NA                   NA                0.2284474   0.2150664   0.2418285
[20-25)   24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     NA                   NA                0.4005376   0.3506763   0.4503990
[20-25)   24 months   ki1000111-WASH-Kenya        KENYA                          NA                   NA                0.3106061   0.2752760   0.3459361
[20-25)   24 months   ki1000304-EU                INDIA                          NA                   NA                0.6086957   0.5191070   0.6982843
[20-25)   24 months   ki1000304-Vitamin-B12       INDIA                          NA                   NA                0.4583333   0.3158855   0.6007812
[20-25)   24 months   ki1119695-PROBIT            BELARUS                        NA                   NA                0.1277174   0.0814524   0.1739824
[20-25)   24 months   ki1135781-COHORTS           GUATEMALA                      NA                   NA                0.8068182   0.7238600   0.8897764
[20-25)   24 months   ki1148112-iLiNS-DOSE        MALAWI                         NA                   NA                0.5162602   0.4536845   0.5788358
[20-25)   24 months   ki1148112-LCNI-5            MALAWI                         NA                   NA                0.3417722   0.2365136   0.4470307
[25-30)   Birth       ki1000304b-SAS-CompFeed     INDIA                          NA                   NA                0.2750000   0.1186801   0.4313199
[25-30)   Birth       ki1126311-ZVITAMBO          ZIMBABWE                       NA                   NA                0.1022661   0.0921423   0.1123900
[25-30)   Birth       kiGH5241-JiVitA-3           BANGLADESH                     NA                   NA                0.2839799   0.2652915   0.3026682
[25-30)   6 months    iLiNS_DYADM_LNS             MALAWI                         NA                   NA                0.2267442   0.1639847   0.2895037
[25-30)   6 months    ki1000304-EU                INDIA                          NA                   NA                0.3365385   0.2452839   0.4277930
[25-30)   6 months    ki1000304-VITAMIN-A         INDIA                          NA                   NA                0.3395133   0.3079011   0.3711255
[25-30)   6 months    ki1000304b-SAS-CompFeed     INDIA                          NA                   NA                0.3068182   0.2367799   0.3768565
[25-30)   6 months    ki1000304b-SAS-FoodSuppl    INDIA                          NA                   NA                0.4666667   0.3770317   0.5563016
[25-30)   6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1232639   0.0963940   0.1501338
[25-30)   6 months    ki1112895-Guatemala BSC     GUATEMALA                      NA                   NA                0.2075472   0.0973193   0.3177751
[25-30)   6 months    ki1119695-PROBIT            BELARUS                        NA                   NA                0.0518555   0.0408193   0.0628917
[25-30)   6 months    ki1126311-ZVITAMBO          ZIMBABWE                       NA                   NA                0.1644803   0.1481558   0.1808049
[25-30)   6 months    ki1135781-COHORTS           GUATEMALA                      NA                   NA                0.4108911   0.3428751   0.4789071
[25-30)   6 months    ki1148112-iLiNS-DOSE        MALAWI                         NA                   NA                0.2572707   0.2167020   0.2978394
[25-30)   6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         NA                   NA                0.2446809   0.1944165   0.2949452
[25-30)   6 months    ki1148112-LCNI-5            MALAWI                         NA                   NA                0.3976608   0.3240908   0.4712308
[25-30)   6 months    kiGH5241-JiVitA-3           BANGLADESH                     NA                   NA                0.2261675   0.2069616   0.2453734
[25-30)   24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     NA                   NA                0.4247788   0.3720814   0.4774761
[25-30)   24 months   ki1000111-WASH-Kenya        KENYA                          NA                   NA                0.2895570   0.2541682   0.3249457
[25-30)   24 months   ki1000304-EU                INDIA                          NA                   NA                0.5652174   0.4633650   0.6670698
[25-30)   24 months   ki1000304-Vitamin-B12       INDIA                          NA                   NA                0.4600000   0.3204513   0.5995487
[25-30)   24 months   ki1119695-PROBIT            BELARUS                        NA                   NA                0.1240000   0.0224898   0.2255102
[25-30)   24 months   ki1135781-COHORTS           GUATEMALA                      NA                   NA                0.8142857   0.7225297   0.9060417
[25-30)   24 months   ki1148112-iLiNS-DOSE        MALAWI                         NA                   NA                0.4120879   0.3403812   0.4837946
[25-30)   24 months   ki1148112-LCNI-5            MALAWI                         NA                   NA                0.4320988   0.3235485   0.5406491
>=30      Birth       ki1126311-ZVITAMBO          ZIMBABWE                       NA                   NA                0.0950947   0.0831657   0.1070236
>=30      Birth       ki1135781-COHORTS           GUATEMALA                      NA                   NA                0.0674847   0.0402114   0.0947579
>=30      Birth       kiGH5241-JiVitA-3           BANGLADESH                     NA                   NA                0.2981701   0.2725942   0.3237460
>=30      6 months    iLiNS_DYADM_LNS             MALAWI                         NA                   NA                0.2789116   0.2061672   0.3516559
>=30      6 months    ki1000125-AgaKhanUniv       PAKISTAN                       NA                   NA                0.2739726   0.1709549   0.3769903
>=30      6 months    ki1000304-EU                INDIA                          NA                   NA                0.2127660   0.0944966   0.3310353
>=30      6 months    ki1000304-VITAMIN-A         INDIA                          NA                   NA                0.3660714   0.3144858   0.4176571
>=30      6 months    ki1000304b-SAS-CompFeed     INDIA                          NA                   NA                0.3150685   0.2200956   0.4100414
>=30      6 months    ki1000304b-SAS-FoodSuppl    INDIA                          NA                   NA                0.4050633   0.2961207   0.5140059
>=30      6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0991736   0.0725177   0.1258294
>=30      6 months    ki1112895-Guatemala BSC     GUATEMALA                      NA                   NA                0.3409091   0.1992300   0.4825882
>=30      6 months    ki1119695-PROBIT            BELARUS                        NA                   NA                0.0633397   0.0436461   0.0830334
>=30      6 months    ki1126311-ZVITAMBO          ZIMBABWE                       NA                   NA                0.1666667   0.1474911   0.1858422
>=30      6 months    ki1135781-COHORTS           GUATEMALA                      NA                   NA                0.4404432   0.3891613   0.4917251
>=30      6 months    ki1148112-iLiNS-DOSE        MALAWI                         NA                   NA                0.3390192   0.2961316   0.3819068
>=30      6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         NA                   NA                0.2545455   0.1968530   0.3122379
>=30      6 months    ki1148112-LCNI-5            MALAWI                         NA                   NA                0.4090909   0.3404338   0.4777480
>=30      6 months    kiGH5241-JiVitA-3           BANGLADESH                     NA                   NA                0.2452830   0.2164240   0.2741420
>=30      24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     NA                   NA                0.3750000   0.3063426   0.4436574
>=30      24 months   ki1000111-WASH-Kenya        KENYA                          NA                   NA                0.2910217   0.2559669   0.3260765
>=30      24 months   ki1119695-PROBIT            BELARUS                        NA                   NA                0.0816327   0.0279529   0.1353124
>=30      24 months   ki1135781-COHORTS           GUATEMALA                      NA                   NA                0.7017544   0.6174037   0.7861050
>=30      24 months   ki1148112-iLiNS-DOSE        MALAWI                         NA                   NA                0.5023697   0.4347452   0.5699941
>=30      24 months   ki1148112-LCNI-5            MALAWI                         NA                   NA                0.4411765   0.3443418   0.5380111


### Parameter: RR


mage      agecat      studyid                     country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
--------  ----------  --------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
<20       Birth       ki1126311-ZVITAMBO          ZIMBABWE                       Control              Control           1.0000000   1.0000000   1.0000000
<20       Birth       ki1126311-ZVITAMBO          ZIMBABWE                       VitA                 Control           0.9858885   0.8779540   1.1070924
<20       Birth       kiGH5241-JiVitA-3           BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
<20       Birth       kiGH5241-JiVitA-3           BANGLADESH                     Maternal             Control           0.9086867   0.8807920   0.9374647
<20       6 months    iLiNS_DYADM_LNS             MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
<20       6 months    iLiNS_DYADM_LNS             MALAWI                         LNS                  Control           1.6078431   1.1891349   2.1739835
<20       6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
<20       6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                  Control           0.9254808   0.4134013   2.0718719
<20       6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Other                Control           0.7865169   0.3695313   1.6740363
<20       6 months    ki1000304-VITAMIN-A         INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
<20       6 months    ki1000304-VITAMIN-A         INDIA                          VitA                 Control           0.9604520   0.7910878   1.1660754
<20       6 months    ki1000304b-SAS-CompFeed     INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
<20       6 months    ki1000304b-SAS-CompFeed     INDIA                          Other                Control           0.9761905   0.6642578   1.4346054
<20       6 months    ki1112895-Guatemala BSC     GUATEMALA                      Control              Control           1.0000000   1.0000000   1.0000000
<20       6 months    ki1112895-Guatemala BSC     GUATEMALA                      Other                Control           0.8035714   0.5228428   1.2350309
<20       6 months    ki1119695-PROBIT            BELARUS                        Control              Control           1.0000000   1.0000000   1.0000000
<20       6 months    ki1119695-PROBIT            BELARUS                        Maternal             Control           0.7695676   0.5848711   1.0125894
<20       6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control              Control           1.0000000   1.0000000   1.0000000
<20       6 months    ki1126311-ZVITAMBO          ZIMBABWE                       VitA                 Control           0.9731742   0.8652253   1.0945912
<20       6 months    ki1135781-COHORTS           GUATEMALA                      Control              Control           1.0000000   1.0000000   1.0000000
<20       6 months    ki1135781-COHORTS           GUATEMALA                      Other                Control           0.8648276   0.6950849   1.0760222
<20       6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
<20       6 months    ki1148112-iLiNS-DOSE        MALAWI                         LNS                  Control           1.0154321   0.8766155   1.1762310
<20       6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
<20       6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Maternal             Control           1.3666667   1.0690859   1.7470793
<20       6 months    ki1148112-LCNI-5            MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
<20       6 months    ki1148112-LCNI-5            MALAWI                         LNS                  Control           0.9256198   0.4840769   1.7699091
<20       6 months    ki1148112-LCNI-5            MALAWI                         Other                Control           0.7507331   0.3480366   1.6193707
<20       6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
<20       6 months    kiGH5241-JiVitA-3           BANGLADESH                     Maternal             Control           0.9182418   0.8804725   0.9576313
<20       24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
<20       24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                  Control           1.0675381   0.7079491   1.6097733
<20       24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                Control           1.1216181   0.7891846   1.5940848
<20       24 months   ki1000111-WASH-Kenya        KENYA                          Control              Control           1.0000000   1.0000000   1.0000000
<20       24 months   ki1000111-WASH-Kenya        KENYA                          LNS                  Control           0.8168665   0.5255766   1.2695976
<20       24 months   ki1000111-WASH-Kenya        KENYA                          Other                Control           0.9512195   0.6916480   1.3082068
<20       24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
<20       24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS                  Control           0.9328419   0.8115047   1.0723217
<20       24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
<20       24 months   kiGH5241-JiVitA-3           BANGLADESH                     Maternal             Control           1.6801075   1.3639248   2.0695871
[20-25)   Birth       ki1000304b-SAS-CompFeed     INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
[20-25)   Birth       ki1000304b-SAS-CompFeed     INDIA                          Other                Control           1.4444444   0.9380252   2.2242684
[20-25)   Birth       ki1119695-PROBIT            BELARUS                        Control              Control           1.0000000   1.0000000   1.0000000
[20-25)   Birth       ki1119695-PROBIT            BELARUS                        Maternal             Control           0.8543130   0.4413807   1.6535628
[20-25)   Birth       ki1126311-ZVITAMBO          ZIMBABWE                       Control              Control           1.0000000   1.0000000   1.0000000
[20-25)   Birth       ki1126311-ZVITAMBO          ZIMBABWE                       VitA                 Control           0.9018630   0.8359675   0.9729528
[20-25)   Birth       ki1135781-COHORTS           GUATEMALA                      Control              Control           1.0000000   1.0000000   1.0000000
[20-25)   Birth       ki1135781-COHORTS           GUATEMALA                      Other                Control           1.4876033   0.8855268   2.4990362
[20-25)   Birth       kiGH5241-JiVitA-3           BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
[20-25)   Birth       kiGH5241-JiVitA-3           BANGLADESH                     Maternal             Control           0.8860477   0.8465767   0.9273591
[20-25)   6 months    iLiNS_DYADM_LNS             MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
[20-25)   6 months    iLiNS_DYADM_LNS             MALAWI                         LNS                  Control           1.0000000   0.7557131   1.3232534
[20-25)   6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
[20-25)   6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                  Control           0.5821596   0.2541199   1.3336613
[20-25)   6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Other                Control           0.4967949   0.2278015   1.0834222
[20-25)   6 months    ki1000304-EU                INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
[20-25)   6 months    ki1000304-EU                INDIA                          Zinc                 Control           0.6900000   0.4508121   1.0560941
[20-25)   6 months    ki1000304-VITAMIN-A         INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
[20-25)   6 months    ki1000304-VITAMIN-A         INDIA                          VitA                 Control           0.9592657   0.8841116   1.0408084
[20-25)   6 months    ki1000304-Vitamin-B12       INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
[20-25)   6 months    ki1000304-Vitamin-B12       INDIA                          Other                Control           0.8666667   0.6044169   1.2427038
[20-25)   6 months    ki1000304b-SAS-CompFeed     INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
[20-25)   6 months    ki1000304b-SAS-CompFeed     INDIA                          Other                Control           1.1285828   0.9239425   1.3785481
[20-25)   6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
[20-25)   6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Other                Control           0.6966292   0.5539535   0.8760524
[20-25)   6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              Control           1.0000000   1.0000000   1.0000000
[20-25)   6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                Control           1.4104478   0.6576191   3.0250991
[20-25)   6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                 Control           1.2500000   0.6193893   2.5226462
[20-25)   6 months    ki1112895-Guatemala BSC     GUATEMALA                      Control              Control           1.0000000   1.0000000   1.0000000
[20-25)   6 months    ki1112895-Guatemala BSC     GUATEMALA                      Other                Control           1.1025641   0.8004971   1.5186159
[20-25)   6 months    ki1119695-PROBIT            BELARUS                        Control              Control           1.0000000   1.0000000   1.0000000
[20-25)   6 months    ki1119695-PROBIT            BELARUS                        Maternal             Control           0.7787892   0.6144728   0.9870455
[20-25)   6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control              Control           1.0000000   1.0000000   1.0000000
[20-25)   6 months    ki1126311-ZVITAMBO          ZIMBABWE                       VitA                 Control           1.0330444   0.9525759   1.1203105
[20-25)   6 months    ki1135781-COHORTS           GUATEMALA                      Control              Control           1.0000000   1.0000000   1.0000000
[20-25)   6 months    ki1135781-COHORTS           GUATEMALA                      Other                Control           1.2026002   1.0298748   1.4042943
[20-25)   6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
[20-25)   6 months    ki1148112-iLiNS-DOSE        MALAWI                         LNS                  Control           0.7666565   0.6745737   0.8713092
[20-25)   6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
[20-25)   6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Maternal             Control           1.0203608   0.8073641   1.2895499
[20-25)   6 months    ki1148112-LCNI-5            MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
[20-25)   6 months    ki1148112-LCNI-5            MALAWI                         LNS                  Control           0.9068826   0.5781468   1.4225385
[20-25)   6 months    ki1148112-LCNI-5            MALAWI                         Other                Control           0.8272095   0.4879054   1.4024759
[20-25)   6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
[20-25)   6 months    kiGH5241-JiVitA-3           BANGLADESH                     Maternal             Control           0.9104784   0.8589246   0.9651265
[20-25)   24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
[20-25)   24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                  Control           0.8709677   0.6167925   1.2298865
[20-25)   24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                Control           0.8690476   0.6482923   1.1649742
[20-25)   24 months   ki1000111-WASH-Kenya        KENYA                          Control              Control           1.0000000   1.0000000   1.0000000
[20-25)   24 months   ki1000111-WASH-Kenya        KENYA                          LNS                  Control           0.7622238   0.5355660   1.0848058
[20-25)   24 months   ki1000111-WASH-Kenya        KENYA                          Other                Control           1.0728561   0.8368270   1.3754578
[20-25)   24 months   ki1000304-EU                INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
[20-25)   24 months   ki1000304-EU                INDIA                          Zinc                 Control           0.8852459   0.6600762   1.1872270
[20-25)   24 months   ki1000304-Vitamin-B12       INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
[20-25)   24 months   ki1000304-Vitamin-B12       INDIA                          Other                Control           1.8645161   1.3323311   2.6092766
[20-25)   24 months   ki1119695-PROBIT            BELARUS                        Control              Control           1.0000000   1.0000000   1.0000000
[20-25)   24 months   ki1119695-PROBIT            BELARUS                        Maternal             Control           0.9736477   0.6801823   1.3937290
[20-25)   24 months   ki1135781-COHORTS           GUATEMALA                      Control              Control           1.0000000   1.0000000   1.0000000
[20-25)   24 months   ki1135781-COHORTS           GUATEMALA                      Other                Control           0.9068627   0.8177367   1.0057027
[20-25)   24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
[20-25)   24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS                  Control           1.0977273   0.9722589   1.2393872
[20-25)   24 months   ki1148112-LCNI-5            MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
[20-25)   24 months   ki1148112-LCNI-5            MALAWI                         LNS                  Control           0.7187500   0.3575861   1.4446913
[20-25)   24 months   ki1148112-LCNI-5            MALAWI                         Other                Control           0.6708333   0.3064905   1.4682915
[25-30)   Birth       ki1000304b-SAS-CompFeed     INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
[25-30)   Birth       ki1000304b-SAS-CompFeed     INDIA                          Other                Control           1.6235294   0.9869510   2.6706976
[25-30)   Birth       ki1126311-ZVITAMBO          ZIMBABWE                       Control              Control           1.0000000   1.0000000   1.0000000
[25-30)   Birth       ki1126311-ZVITAMBO          ZIMBABWE                       VitA                 Control           1.0825273   0.9804317   1.1952544
[25-30)   Birth       kiGH5241-JiVitA-3           BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
[25-30)   Birth       kiGH5241-JiVitA-3           BANGLADESH                     Maternal             Control           0.8941393   0.8371165   0.9550465
[25-30)   6 months    iLiNS_DYADM_LNS             MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
[25-30)   6 months    iLiNS_DYADM_LNS             MALAWI                         LNS                  Control           0.7376033   0.5569509   0.9768520
[25-30)   6 months    ki1000304-EU                INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
[25-30)   6 months    ki1000304-EU                INDIA                          Zinc                 Control           0.6086957   0.3392311   1.0922064
[25-30)   6 months    ki1000304-VITAMIN-A         INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
[25-30)   6 months    ki1000304-VITAMIN-A         INDIA                          VitA                 Control           0.8212678   0.7477409   0.9020249
[25-30)   6 months    ki1000304b-SAS-CompFeed     INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
[25-30)   6 months    ki1000304b-SAS-CompFeed     INDIA                          Other                Control           0.9130435   0.7261608   1.1480217
[25-30)   6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
[25-30)   6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Other                Control           0.6321839   0.5177903   0.7718501
[25-30)   6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              Control           1.0000000   1.0000000   1.0000000
[25-30)   6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                Control           0.8522727   0.4483221   1.6201941
[25-30)   6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                 Control           0.9223301   0.5464065   1.5568863
[25-30)   6 months    ki1112895-Guatemala BSC     GUATEMALA                      Control              Control           1.0000000   1.0000000   1.0000000
[25-30)   6 months    ki1112895-Guatemala BSC     GUATEMALA                      Other                Control           0.8516129   0.4996634   1.4514663
[25-30)   6 months    ki1119695-PROBIT            BELARUS                        Control              Control           1.0000000   1.0000000   1.0000000
[25-30)   6 months    ki1119695-PROBIT            BELARUS                        Maternal             Control           0.7524880   0.6208114   0.9120938
[25-30)   6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control              Control           1.0000000   1.0000000   1.0000000
[25-30)   6 months    ki1126311-ZVITAMBO          ZIMBABWE                       VitA                 Control           0.8745519   0.7917643   0.9659959
[25-30)   6 months    ki1135781-COHORTS           GUATEMALA                      Control              Control           1.0000000   1.0000000   1.0000000
[25-30)   6 months    ki1135781-COHORTS           GUATEMALA                      Other                Control           0.7141406   0.6028023   0.8460431
[25-30)   6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
[25-30)   6 months    ki1148112-iLiNS-DOSE        MALAWI                         LNS                  Control           0.9778174   0.8351638   1.1448375
[25-30)   6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
[25-30)   6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Maternal             Control           0.9063361   0.7378251   1.1133331
[25-30)   6 months    ki1148112-LCNI-5            MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
[25-30)   6 months    ki1148112-LCNI-5            MALAWI                         LNS                  Control           1.1873016   0.7293605   1.9327685
[25-30)   6 months    ki1148112-LCNI-5            MALAWI                         Other                Control           1.2961240   0.7611877   2.2069950
[25-30)   6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
[25-30)   6 months    kiGH5241-JiVitA-3           BANGLADESH                     Maternal             Control           0.9517882   0.8743500   1.0360848
[25-30)   24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
[25-30)   24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                  Control           0.7752809   0.5373511   1.1185619
[25-30)   24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                Control           0.9010547   0.6686085   1.2143125
[25-30)   24 months   ki1000111-WASH-Kenya        KENYA                          Control              Control           1.0000000   1.0000000   1.0000000
[25-30)   24 months   ki1000111-WASH-Kenya        KENYA                          LNS                  Control           0.8927622   0.6438321   1.2379382
[25-30)   24 months   ki1000111-WASH-Kenya        KENYA                          Other                Control           0.8733804   0.6622606   1.1518022
[25-30)   24 months   ki1000304-EU                INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
[25-30)   24 months   ki1000304-EU                INDIA                          Zinc                 Control           0.9533333   0.6609114   1.3751380
[25-30)   24 months   ki1000304-Vitamin-B12       INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
[25-30)   24 months   ki1000304-Vitamin-B12       INDIA                          Other                Control           1.1368421   0.8386555   1.5410498
[25-30)   24 months   ki1119695-PROBIT            BELARUS                        Control              Control           1.0000000   1.0000000   1.0000000
[25-30)   24 months   ki1119695-PROBIT            BELARUS                        Maternal             Control           1.0166667   0.4327131   2.3886756
[25-30)   24 months   ki1135781-COHORTS           GUATEMALA                      Control              Control           1.0000000   1.0000000   1.0000000
[25-30)   24 months   ki1135781-COHORTS           GUATEMALA                      Other                Control           0.9277344   0.8285189   1.0388310
[25-30)   24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
[25-30)   24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS                  Control           0.9402516   0.7900349   1.1190303
[25-30)   24 months   ki1148112-LCNI-5            MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
[25-30)   24 months   ki1148112-LCNI-5            MALAWI                         LNS                  Control           1.8461538   0.8494826   4.0121880
[25-30)   24 months   ki1148112-LCNI-5            MALAWI                         Other                Control           2.4444444   1.1096854   5.3846872
>=30      Birth       ki1126311-ZVITAMBO          ZIMBABWE                       Control              Control           1.0000000   1.0000000   1.0000000
>=30      Birth       ki1126311-ZVITAMBO          ZIMBABWE                       VitA                 Control           1.1117304   0.9805246   1.2604930
>=30      Birth       ki1135781-COHORTS           GUATEMALA                      Control              Control           1.0000000   1.0000000   1.0000000
>=30      Birth       ki1135781-COHORTS           GUATEMALA                      Other                Control           1.1011765   0.7347219   1.6504063
>=30      Birth       kiGH5241-JiVitA-3           BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
>=30      Birth       kiGH5241-JiVitA-3           BANGLADESH                     Maternal             Control           0.8661986   0.7949901   0.9437853
>=30      6 months    iLiNS_DYADM_LNS             MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
>=30      6 months    iLiNS_DYADM_LNS             MALAWI                         LNS                  Control           0.7234783   0.5547611   0.9435067
>=30      6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Control              Control           1.0000000   1.0000000   1.0000000
>=30      6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Maternal             Control           0.9385027   0.6442014   1.3672544
>=30      6 months    ki1000304-EU                INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
>=30      6 months    ki1000304-EU                INDIA                          Zinc                 Control           1.9375000   0.6484547   5.7890029
>=30      6 months    ki1000304-VITAMIN-A         INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
>=30      6 months    ki1000304-VITAMIN-A         INDIA                          VitA                 Control           1.1341111   0.9846120   1.3063095
>=30      6 months    ki1000304b-SAS-CompFeed     INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
>=30      6 months    ki1000304b-SAS-CompFeed     INDIA                          Other                Control           1.0047847   0.7448872   1.3553626
>=30      6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
>=30      6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Other                Control           0.8852459   0.6760876   1.1591107
>=30      6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              Control           1.0000000   1.0000000   1.0000000
>=30      6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                Control           0.7370000   0.3556268   1.5273569
>=30      6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                 Control           0.7816667   0.4226583   1.4456188
>=30      6 months    ki1112895-Guatemala BSC     GUATEMALA                      Control              Control           1.0000000   1.0000000   1.0000000
>=30      6 months    ki1112895-Guatemala BSC     GUATEMALA                      Other                Control           0.6650000   0.4332607   1.0206903
>=30      6 months    ki1119695-PROBIT            BELARUS                        Control              Control           1.0000000   1.0000000   1.0000000
>=30      6 months    ki1119695-PROBIT            BELARUS                        Maternal             Control           0.7096339   0.5223762   0.9640184
>=30      6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control              Control           1.0000000   1.0000000   1.0000000
>=30      6 months    ki1126311-ZVITAMBO          ZIMBABWE                       VitA                 Control           1.2836509   1.1432397   1.4413073
>=30      6 months    ki1135781-COHORTS           GUATEMALA                      Control              Control           1.0000000   1.0000000   1.0000000
>=30      6 months    ki1135781-COHORTS           GUATEMALA                      Other                Control           0.6526243   0.5781628   0.7366758
>=30      6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
>=30      6 months    ki1148112-iLiNS-DOSE        MALAWI                         LNS                  Control           0.9498352   0.8369355   1.0779646
>=30      6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
>=30      6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Maternal             Control           0.6811268   0.5402134   0.8587971
>=30      6 months    ki1148112-LCNI-5            MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
>=30      6 months    ki1148112-LCNI-5            MALAWI                         LNS                  Control           1.1788162   0.7348470   1.8910162
>=30      6 months    ki1148112-LCNI-5            MALAWI                         Other                Control           1.4354610   0.8660148   2.3793455
>=30      6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
>=30      6 months    kiGH5241-JiVitA-3           BANGLADESH                     Maternal             Control           0.9389543   0.8351046   1.0557183
>=30      24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
>=30      24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                  Control           0.9183673   0.5193773   1.6238651
>=30      24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                Control           1.1904762   0.7326883   1.9342926
>=30      24 months   ki1000111-WASH-Kenya        KENYA                          Control              Control           1.0000000   1.0000000   1.0000000
>=30      24 months   ki1000111-WASH-Kenya        KENYA                          LNS                  Control           1.3411861   0.9568849   1.8798292
>=30      24 months   ki1000111-WASH-Kenya        KENYA                          Other                Control           1.2930278   0.9598115   1.7419263
>=30      24 months   ki1119695-PROBIT            BELARUS                        Control              Control           1.0000000   1.0000000   1.0000000
>=30      24 months   ki1119695-PROBIT            BELARUS                        Maternal             Control           0.5820106   0.2906190   1.1655682
>=30      24 months   ki1135781-COHORTS           GUATEMALA                      Control              Control           1.0000000   1.0000000   1.0000000
>=30      24 months   ki1135781-COHORTS           GUATEMALA                      Other                Control           0.8506973   0.7533653   0.9606043
>=30      24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
>=30      24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS                  Control           0.9468115   0.8275148   1.0833062
>=30      24 months   ki1148112-LCNI-5            MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
>=30      24 months   ki1148112-LCNI-5            MALAWI                         LNS                  Control           1.1689291   0.7073037   1.9318367
>=30      24 months   ki1148112-LCNI-5            MALAWI                         Other                Control           0.8346154   0.4020390   1.7326252


### Parameter: PAR


mage      agecat      studyid                     country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
--------  ----------  --------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
<20       Birth       ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                -0.0012362   -0.0127939    0.0103216
<20       Birth       kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                -0.0175031   -0.0258881   -0.0091180
<20       6 months    iLiNS_DYADM_LNS             MALAWI                         Control              NA                 0.0504065    0.0003516    0.1004614
<20       6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                -0.0297078   -0.1530752    0.0936596
<20       6 months    ki1000304-VITAMIN-A         INDIA                          Control              NA                -0.0068627   -0.0584166    0.0446911
<20       6 months    ki1000304b-SAS-CompFeed     INDIA                          Control              NA                -0.0032092   -0.1023842    0.0959657
<20       6 months    ki1112895-Guatemala BSC     GUATEMALA                      Control              NA                -0.0381944   -0.1507979    0.0744090
<20       6 months    ki1119695-PROBIT            BELARUS                        Control              NA                -0.0120901   -0.0250186    0.0008385
<20       6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                -0.0039580   -0.0234511    0.0155352
<20       6 months    ki1135781-COHORTS           GUATEMALA                      Control              NA                -0.0256008   -0.0840913    0.0328896
<20       6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                 0.0047461   -0.0453266    0.0548188
<20       6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Control              NA                 0.0427369   -0.0026225    0.0880962
<20       6 months    ki1148112-LCNI-5            MALAWI                         Control              NA                -0.0353388   -0.1721428    0.1014652
<20       6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                -0.0116284   -0.0197216   -0.0035351
<20       24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                 0.0300563   -0.0692305    0.1293432
<20       24 months   ki1000111-WASH-Kenya        KENYA                          Control              NA                -0.0228953   -0.0989511    0.0531606
<20       24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                -0.0376838   -0.1169469    0.0415793
<20       24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                 0.1807143    0.0941962    0.2672324
[20-25)   Birth       ki1000304b-SAS-CompFeed     INDIA                          Control              NA                 0.0595533   -0.0321093    0.1512160
[20-25)   Birth       ki1119695-PROBIT            BELARUS                        Control              NA                -0.0002255   -0.0014444    0.0009934
[20-25)   Birth       ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                -0.0081649   -0.0148396   -0.0014902
[20-25)   Birth       ki1135781-COHORTS           GUATEMALA                      Control              NA                 0.0133484   -0.0123570    0.0390538
[20-25)   Birth       kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                -0.0177067   -0.0269989   -0.0084144
[20-25)   6 months    iLiNS_DYADM_LNS             MALAWI                         Control              NA                 0.0000000   -0.0370198    0.0370198
[20-25)   6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                -0.0669661   -0.1471548    0.0132226
[20-25)   6 months    ki1000304-EU                INDIA                          Control              NA                -0.0552585   -0.1168485    0.0063315
[20-25)   6 months    ki1000304-VITAMIN-A         INDIA                          Control              NA                -0.0067972   -0.0257065    0.0121122
[20-25)   6 months    ki1000304-Vitamin-B12       INDIA                          Control              NA                -0.0454545   -0.1721762    0.0812671
[20-25)   6 months    ki1000304b-SAS-CompFeed     INDIA                          Control              NA                 0.0163876   -0.0172114    0.0499867
[20-25)   6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Control              NA                -0.1115702   -0.1856516   -0.0374889
[20-25)   6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              NA                 0.0182912   -0.0240866    0.0606689
[20-25)   6 months    ki1112895-Guatemala BSC     GUATEMALA                      Control              NA                 0.0147476   -0.0561313    0.0856265
[20-25)   6 months    ki1119695-PROBIT            BELARUS                        Control              NA                -0.0083332   -0.0179147    0.0012483
[20-25)   6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                 0.0037865   -0.0072406    0.0148136
[20-25)   6 months    ki1135781-COHORTS           GUATEMALA                      Control              NA                 0.0399530   -0.0059452    0.0858512
[20-25)   6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                -0.0651177   -0.0962753   -0.0339602
[20-25)   6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Control              NA                 0.0024529   -0.0332383    0.0381441
[20-25)   6 months    ki1148112-LCNI-5            MALAWI                         Control              NA                -0.0354235   -0.1527881    0.0819411
[20-25)   6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                -0.0108042   -0.0197102   -0.0018981
[20-25)   24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                -0.0439068   -0.1330151    0.0452015
[20-25)   24 months   ki1000111-WASH-Kenya        KENYA                          Control              NA                -0.0054113   -0.0536627    0.0428402
[20-25)   24 months   ki1000304-EU                INDIA                          Control              NA                -0.0394525   -0.1344382    0.0555332
[20-25)   24 months   ki1000304-Vitamin-B12       INDIA                          Control              NA                 0.1642157    0.0447100    0.2837213
[20-25)   24 months   ki1119695-PROBIT            BELARUS                        Control              NA                -0.0019122   -0.0300587    0.0262342
[20-25)   24 months   ki1135781-COHORTS           GUATEMALA                      Control              NA                -0.0431818   -0.1089321    0.0225685
[20-25)   24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                 0.0379993   -0.0184287    0.0944273
[20-25)   24 months   ki1148112-LCNI-5            MALAWI                         Control              NA                -0.0930105   -0.2616651    0.0756442
[25-30)   Birth       ki1000304b-SAS-CompFeed     INDIA                          Control              NA                 0.0576087   -0.0750661    0.1902835
[25-30)   Birth       ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                 0.0059358   -0.0028887    0.0147604
[25-30)   Birth       kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                -0.0165127   -0.0297172   -0.0033083
[25-30)   6 months    iLiNS_DYADM_LNS             MALAWI                         Control              NA                -0.0351606   -0.0777977    0.0074766
[25-30)   6 months    ki1000304-EU                INDIA                          Control              NA                -0.0741758   -0.1580679    0.0097163
[25-30)   6 months    ki1000304-VITAMIN-A         INDIA                          Control              NA                -0.0342962   -0.0564696   -0.0121228
[25-30)   6 months    ki1000304b-SAS-CompFeed     INDIA                          Control              NA                -0.0146104   -0.0654119    0.0361911
[25-30)   6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Control              NA                -0.1696970   -0.2470285   -0.0923654
[25-30)   6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              NA                -0.0100694   -0.0597873    0.0396484
[25-30)   6 months    ki1112895-Guatemala BSC     GUATEMALA                      Control              NA                -0.0197256   -0.1019743    0.0625231
[25-30)   6 months    ki1119695-PROBIT            BELARUS                        Control              NA                -0.0074370   -0.0144043   -0.0004696
[25-30)   6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                -0.0171523   -0.0311248   -0.0031798
[25-30)   6 months    ki1135781-COHORTS           GUATEMALA                      Control              NA                -0.0733194   -0.1221187   -0.0245201
[25-30)   6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                -0.0050244   -0.0426858    0.0326371
[25-30)   6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Control              NA                -0.0172239   -0.0589291    0.0244813
[25-30)   6 months    ki1148112-LCNI-5            MALAWI                         Control              NA                 0.0567517   -0.0656825    0.1791859
[25-30)   6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                -0.0058454   -0.0193758    0.0076849
[25-30)   24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                -0.0534821   -0.1585451    0.0515809
[25-30)   24 months   ki1000111-WASH-Kenya        KENYA                          Control              NA                -0.0249970   -0.0752149    0.0252208
[25-30)   24 months   ki1000304-EU                INDIA                          Control              NA                -0.0117057   -0.1011268    0.0777154
[25-30)   24 months   ki1000304-Vitamin-B12       INDIA                          Control              NA                 0.0433333   -0.0787350    0.1654017
[25-30)   24 months   ki1119695-PROBIT            BELARUS                        Control              NA                 0.0010492   -0.0723336    0.0744320
[25-30)   24 months   ki1135781-COHORTS           GUATEMALA                      Control              NA                -0.0278195   -0.0941569    0.0385178
[25-30)   24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                -0.0226947   -0.0896480    0.0442586
[25-30)   24 months   ki1148112-LCNI-5            MALAWI                         Control              NA                 0.1820988    0.0266547    0.3375429
>=30      Birth       ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                 0.0074381   -0.0030733    0.0179496
>=30      Birth       ki1135781-COHORTS           GUATEMALA                      Control              NA                 0.0033821   -0.0167301    0.0234943
>=30      Birth       kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                -0.0216989   -0.0392160   -0.0041818
>=30      6 months    iLiNS_DYADM_LNS             MALAWI                         Control              NA                -0.0416013   -0.0890483    0.0058458
>=30      6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Control              NA                -0.0080787   -0.0776534    0.0614960
>=30      6 months    ki1000304-EU                INDIA                          Control              NA                 0.0514756   -0.0408358    0.1437871
>=30      6 months    ki1000304-VITAMIN-A         INDIA                          Control              NA                 0.0228762   -0.0140153    0.0597676
>=30      6 months    ki1000304b-SAS-CompFeed     INDIA                          Control              NA                 0.0007828   -0.0579879    0.0595534
>=30      6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Control              NA                -0.0393812   -0.1347634    0.0560011
>=30      6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              NA                -0.0202294   -0.0656005    0.0251417
>=30      6 months    ki1112895-Guatemala BSC     GUATEMALA                      Control              NA                -0.0801435   -0.1834351    0.0231481
>=30      6 months    ki1119695-PROBIT            BELARUS                        Control              NA                -0.0109952   -0.0247237    0.0027334
>=30      6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                 0.0295238    0.0124304    0.0466172
>=30      6 months    ki1135781-COHORTS           GUATEMALA                      Control              NA                -0.0928901   -0.1290232   -0.0567571
>=30      6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                -0.0146393   -0.0535148    0.0242361
>=30      6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Control              NA                -0.0659674   -0.1103972   -0.0215375
>=30      6 months    ki1148112-LCNI-5            MALAWI                         Control              NA                 0.0681818   -0.0569873    0.1933510
>=30      6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                -0.0082135   -0.0276888    0.0112618
>=30      24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                 0.0250000   -0.1073835    0.1573835
>=30      24 months   ki1000111-WASH-Kenya        KENYA                          Control              NA                 0.0508256    0.0008563    0.1007949
>=30      24 months   ki1119695-PROBIT            BELARUS                        Control              NA                -0.0244280   -0.0618644    0.0130085
>=30      24 months   ki1135781-COHORTS           GUATEMALA                      Control              NA                -0.0523440   -0.1135151    0.0088272
>=30      24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                -0.0226303   -0.0835260    0.0382653
>=30      24 months   ki1148112-LCNI-5            MALAWI                         Control              NA                 0.0218216   -0.1242157    0.1678589


### Parameter: PAF


mage      agecat      studyid                     country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
--------  ----------  --------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
<20       Birth       ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                -0.0107492   -0.1176138    0.0858971
<20       Birth       kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                -0.0476389   -0.0718418   -0.0239825
<20       6 months    iLiNS_DYADM_LNS             MALAWI                         Control              NA                 0.2160279    0.0218762    0.3716416
<20       6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                -0.1493878   -0.9706576    0.3296186
<20       6 months    ki1000304-VITAMIN-A         INDIA                          Control              NA                -0.0164706   -0.1503767    0.1018486
<20       6 months    ki1000304b-SAS-CompFeed     INDIA                          Control              NA                -0.0110865   -0.4242562    0.2822247
<20       6 months    ki1112895-Guatemala BSC     GUATEMALA                      Control              NA                -0.0940171   -0.4454490    0.1719712
<20       6 months    ki1119695-PROBIT            BELARUS                        Control              NA                -0.1381989   -0.3231595    0.0209066
<20       6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                -0.0207046   -0.1302861    0.0782530
<20       6 months    ki1135781-COHORTS           GUATEMALA                      Control              NA                -0.0618687   -0.2234933    0.0784051
<20       6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                 0.0127551   -0.1294553    0.1370597
<20       6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Control              NA                 0.1893831    0.0064808    0.3386139
<20       6 months    ki1148112-LCNI-5            MALAWI                         Control              NA                -0.1145833   -0.6593890    0.2513534
<20       6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                -0.0422211   -0.0733252   -0.0120184
<20       24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                 0.0722906   -0.2001504    0.2828860
<20       24 months   ki1000111-WASH-Kenya        KENYA                          Control              NA                -0.0616565   -0.2876256    0.1246566
<20       24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                -0.0618401   -0.2093806    0.0677009
<20       24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                 0.2735135    0.1638426    0.3687999
[20-25)   Birth       ki1000304b-SAS-CompFeed     INDIA                          Control              NA                 0.2051282   -0.0987815    0.4249802
[20-25)   Birth       ki1119695-PROBIT            BELARUS                        Control              NA                -0.0802500   -0.6694721    0.3010126
[20-25)   Birth       ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                -0.0792542   -0.1515670   -0.0114823
[20-25)   Birth       ki1135781-COHORTS           GUATEMALA                      Control              NA                 0.2107143   -0.1939692    0.4782345
[20-25)   Birth       kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                -0.0603667   -0.0945633   -0.0272386
[20-25)   6 months    iLiNS_DYADM_LNS             MALAWI                         Control              NA                 0.0000000   -0.2190306    0.1796761
[20-25)   6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                -0.5290322   -1.2928784   -0.0196527
[20-25)   6 months    ki1000304-EU                INDIA                          Control              NA                -0.1640212   -0.3626128    0.0056271
[20-25)   6 months    ki1000304-VITAMIN-A         INDIA                          Control              NA                -0.0204619   -0.0802489    0.0360161
[20-25)   6 months    ki1000304-Vitamin-B12       INDIA                          Control              NA                -0.1111111   -0.5153678    0.1853015
[20-25)   6 months    ki1000304b-SAS-CompFeed     INDIA                          Control              NA                 0.0646647   -0.0681627    0.1809748
[20-25)   6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Control              NA                -0.2872340   -0.5605500   -0.0617869
[20-25)   6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              NA                 0.1873016   -0.3822456    0.5221698
[20-25)   6 months    ki1112895-Guatemala BSC     GUATEMALA                      Control              NA                 0.0465116   -0.1926653    0.2377240
[20-25)   6 months    ki1119695-PROBIT            BELARUS                        Control              NA                -0.1263930   -0.3063823    0.0287979
[20-25)   6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                 0.0242014   -0.0470615    0.0906141
[20-25)   6 months    ki1135781-COHORTS           GUATEMALA                      Control              NA                 0.1021021   -0.0101955    0.2019162
[20-25)   6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                -0.2375103   -0.3871726   -0.1039952
[20-25)   6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Control              NA                 0.0129529   -0.1917775    0.1825136
[20-25)   6 months    ki1148112-LCNI-5            MALAWI                         Control              NA                -0.1005402   -0.4897055    0.1869610
[20-25)   6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                -0.0472939   -0.0889805   -0.0072030
[20-25)   24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                -0.1096197   -0.3562086    0.0921339
[20-25)   24 months   ki1000111-WASH-Kenya        KENYA                          Control              NA                -0.0174216   -0.1852535    0.1266453
[20-25)   24 months   ki1000304-EU                INDIA                          Control              NA                -0.0648148   -0.2336562    0.0809185
[20-25)   24 months   ki1000304-Vitamin-B12       INDIA                          Control              NA                 0.3582888    0.1532096    0.5137010
[20-25)   24 months   ki1119695-PROBIT            BELARUS                        Control              NA                -0.0149724   -0.2652907    0.1858243
[20-25)   24 months   ki1135781-COHORTS           GUATEMALA                      Control              NA                -0.0535211   -0.1430425    0.0289891
[20-25)   24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                 0.0736049   -0.0334742    0.1695895
[20-25)   24 months   ki1148112-LCNI-5            MALAWI                         Control              NA                -0.2721417   -0.8783613    0.1384274
[25-30)   Birth       ki1000304b-SAS-CompFeed     INDIA                          Control              NA                 0.2094862   -0.2873775    0.5145852
[25-30)   Birth       ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                 0.0580431   -0.0269012    0.1359610
[25-30)   Birth       kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                -0.0581476   -0.1085771   -0.0100122
[25-30)   6 months    iLiNS_DYADM_LNS             MALAWI                         Control              NA                -0.1550672   -0.3967746    0.0448136
[25-30)   6 months    ki1000304-EU                INDIA                          Control              NA                -0.2204082   -0.4990587    0.0064458
[25-30)   6 months    ki1000304-VITAMIN-A         INDIA                          Control              NA                -0.1010158   -0.1756553   -0.0311149
[25-30)   6 months    ki1000304b-SAS-CompFeed     INDIA                          Control              NA                -0.0476190   -0.2362972    0.1122639
[25-30)   6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Control              NA                -0.3636364   -0.6126473   -0.1530755
[25-30)   6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              NA                -0.0816901   -0.5701260    0.2548028
[25-30)   6 months    ki1112895-Guatemala BSC     GUATEMALA                      Control              NA                -0.0950413   -0.6294911    0.2641166
[25-30)   6 months    ki1119695-PROBIT            BELARUS                        Control              NA                -0.1434175   -0.3114289    0.0030695
[25-30)   6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                -0.1042820   -0.2023558   -0.0142078
[25-30)   6 months    ki1135781-COHORTS           GUATEMALA                      Control              NA                -0.1784401   -0.3287422   -0.0451396
[25-30)   6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                -0.0195296   -0.1802592    0.1193116
[25-30)   6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Control              NA                -0.0703934   -0.2695217    0.0975011
[25-30)   6 months    ki1148112-LCNI-5            MALAWI                         Control              NA                 0.1427139   -0.2279314    0.4014817
[25-30)   6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                -0.0258456   -0.0891097    0.0337437
[25-30)   24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                -0.1259058   -0.4029193    0.0964100
[25-30)   24 months   ki1000111-WASH-Kenya        KENYA                          Control              NA                -0.0863285   -0.2743264    0.0739345
[25-30)   24 months   ki1000304-EU                INDIA                          Control              NA                -0.0207101   -0.1919212    0.1259078
[25-30)   24 months   ki1000304-Vitamin-B12       INDIA                          Control              NA                 0.0942029   -0.1815960    0.3056270
[25-30)   24 months   ki1119695-PROBIT            BELARUS                        Control              NA                 0.0084611   -0.7923721    0.4514815
[25-30)   24 months   ki1135781-COHORTS           GUATEMALA                      Control              NA                -0.0341644   -0.1219870    0.0467840
[25-30)   24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                -0.0550725   -0.2412454    0.1031766
[25-30)   24 months   ki1148112-LCNI-5            MALAWI                         Control              NA                 0.4214286   -0.0739628    0.6883087
>=30      Birth       ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                 0.0782182   -0.0296350    0.1747739
>=30      Birth       ki1135781-COHORTS           GUATEMALA                      Control              NA                 0.0501166   -0.2801248    0.2951636
>=30      Birth       kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                -0.0727736   -0.1378566   -0.0114133
>=30      6 months    iLiNS_DYADM_LNS             MALAWI                         Control              NA                -0.1491557   -0.3648807    0.0324731
>=30      6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Control              NA                -0.0294872   -0.3272813    0.2014927
>=30      6 months    ki1000304-EU                INDIA                          Control              NA                 0.2419355   -0.3216476    0.5651929
>=30      6 months    ki1000304-VITAMIN-A         INDIA                          Control              NA                 0.0624910   -0.0371342    0.1525464
>=30      6 months    ki1000304b-SAS-CompFeed     INDIA                          Control              NA                 0.0024845   -0.2020662    0.1722276
>=30      6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Control              NA                -0.0972222   -0.3889359    0.1332238
>=30      6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              NA                -0.2039801   -0.7569956    0.1749734
>=30      6 months    ki1112895-Guatemala BSC     GUATEMALA                      Control              NA                -0.2350877   -0.6802294    0.0921230
>=30      6 months    ki1119695-PROBIT            BELARUS                        Control              NA                -0.1735904   -0.4625911    0.0583053
>=30      6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                 0.1771429    0.0877121    0.2578068
>=30      6 months    ki1135781-COHORTS           GUATEMALA                      Control              NA                -0.2109015   -0.3160772   -0.1141309
>=30      6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                -0.0431815   -0.1699567    0.0698565
>=30      6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Control              NA                -0.2591575   -0.5030661   -0.0548289
>=30      6 months    ki1148112-LCNI-5            MALAWI                         Control              NA                 0.1666667   -0.2033114    0.4228888
>=30      6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                -0.0334857   -0.1189450    0.0454466
>=30      24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                 0.0666667   -0.3624341    0.3606215
>=30      24 months   ki1000111-WASH-Kenya        KENYA                          Control              NA                 0.1746454   -0.0157114    0.3293270
>=30      24 months   ki1119695-PROBIT            BELARUS                        Control              NA                -0.2992424   -1.0802102    0.1885287
>=30      24 months   ki1135781-COHORTS           GUATEMALA                      Control              NA                -0.0745902   -0.1726866    0.0153004
>=30      24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                -0.0450472   -0.1797530    0.0742777
>=30      24 months   ki1148112-LCNI-5            MALAWI                         Control              NA                 0.0494624   -0.3466352    0.3290523
