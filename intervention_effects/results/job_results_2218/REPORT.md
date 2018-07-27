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

* nhh
* agecat
* studyid
* country

## Data Summary

nhh         agecat      studyid                     country      tr          stunted   n_cell     n
----------  ----------  --------------------------  -----------  ---------  --------  -------  ----
3 or less   24 months   ki1000107-Serrinha-VitA     BRAZIL       Control           0        5    19
3 or less   24 months   ki1000107-Serrinha-VitA     BRAZIL       Control           1        4    19
3 or less   24 months   ki1000107-Serrinha-VitA     BRAZIL       VitA              0        7    19
3 or less   24 months   ki1000107-Serrinha-VitA     BRAZIL       VitA              1        3    19
8+          24 months   ki1000107-Serrinha-VitA     BRAZIL       Control           0        3    18
8+          24 months   ki1000107-Serrinha-VitA     BRAZIL       Control           1        6    18
8+          24 months   ki1000107-Serrinha-VitA     BRAZIL       VitA              0        5    18
8+          24 months   ki1000107-Serrinha-VitA     BRAZIL       VitA              1        4    18
4-5         24 months   ki1000107-Serrinha-VitA     BRAZIL       Control           0       16    45
4-5         24 months   ki1000107-Serrinha-VitA     BRAZIL       Control           1        9    45
4-5         24 months   ki1000107-Serrinha-VitA     BRAZIL       VitA              0       13    45
4-5         24 months   ki1000107-Serrinha-VitA     BRAZIL       VitA              1        7    45
6-7         6 months    ki1000107-Serrinha-VitA     BRAZIL       Control           0        2     8
6-7         6 months    ki1000107-Serrinha-VitA     BRAZIL       Control           1        2     8
6-7         6 months    ki1000107-Serrinha-VitA     BRAZIL       VitA              0        4     8
6-7         6 months    ki1000107-Serrinha-VitA     BRAZIL       VitA              1        0     8
6-7         24 months   ki1000107-Serrinha-VitA     BRAZIL       Control           0       12    30
6-7         24 months   ki1000107-Serrinha-VitA     BRAZIL       Control           1        6    30
6-7         24 months   ki1000107-Serrinha-VitA     BRAZIL       VitA              0        4    30
6-7         24 months   ki1000107-Serrinha-VitA     BRAZIL       VitA              1        8    30
4-5         6 months    ki1000107-Serrinha-VitA     BRAZIL       Control           0        3     8
4-5         6 months    ki1000107-Serrinha-VitA     BRAZIL       Control           1        1     8
4-5         6 months    ki1000107-Serrinha-VitA     BRAZIL       VitA              0        3     8
4-5         6 months    ki1000107-Serrinha-VitA     BRAZIL       VitA              1        1     8
8+          6 months    ki1000107-Serrinha-VitA     BRAZIL       Control           0        0     4
8+          6 months    ki1000107-Serrinha-VitA     BRAZIL       Control           1        1     4
8+          6 months    ki1000107-Serrinha-VitA     BRAZIL       VitA              0        2     4
8+          6 months    ki1000107-Serrinha-VitA     BRAZIL       VitA              1        1     4
3 or less   6 months    ki1000107-Serrinha-VitA     BRAZIL       Control           0        3     9
3 or less   6 months    ki1000107-Serrinha-VitA     BRAZIL       VitA              0        6     9
4-5         24 months   ki1000110-WASH-Bangladesh   BANGLADESH   Control           0       54   461
4-5         24 months   ki1000110-WASH-Bangladesh   BANGLADESH   Control           1       42   461
4-5         24 months   ki1000110-WASH-Bangladesh   BANGLADESH   LNS               0       67   461
4-5         24 months   ki1000110-WASH-Bangladesh   BANGLADESH   LNS               1       50   461
4-5         24 months   ki1000110-WASH-Bangladesh   BANGLADESH   Other             0      144   461
4-5         24 months   ki1000110-WASH-Bangladesh   BANGLADESH   Other             1      104   461
8+          24 months   ki1000110-WASH-Bangladesh   BANGLADESH   Control           0       14   122
8+          24 months   ki1000110-WASH-Bangladesh   BANGLADESH   Control           1       10   122
8+          24 months   ki1000110-WASH-Bangladesh   BANGLADESH   LNS               0       27   122
8+          24 months   ki1000110-WASH-Bangladesh   BANGLADESH   LNS               1        8   122
8+          24 months   ki1000110-WASH-Bangladesh   BANGLADESH   Other             0       42   122
8+          24 months   ki1000110-WASH-Bangladesh   BANGLADESH   Other             1       21   122
6-7         24 months   ki1000110-WASH-Bangladesh   BANGLADESH   Control           0       29   197
6-7         24 months   ki1000110-WASH-Bangladesh   BANGLADESH   Control           1       21   197
6-7         24 months   ki1000110-WASH-Bangladesh   BANGLADESH   LNS               0       30   197
6-7         24 months   ki1000110-WASH-Bangladesh   BANGLADESH   LNS               1       25   197
6-7         24 months   ki1000110-WASH-Bangladesh   BANGLADESH   Other             0       55   197
6-7         24 months   ki1000110-WASH-Bangladesh   BANGLADESH   Other             1       37   197
3 or less   24 months   ki1000110-WASH-Bangladesh   BANGLADESH   Control           0       59   407
3 or less   24 months   ki1000110-WASH-Bangladesh   BANGLADESH   Control           1       42   407
3 or less   24 months   ki1000110-WASH-Bangladesh   BANGLADESH   LNS               0       67   407
3 or less   24 months   ki1000110-WASH-Bangladesh   BANGLADESH   LNS               1       33   407
3 or less   24 months   ki1000110-WASH-Bangladesh   BANGLADESH   Other             0      116   407
3 or less   24 months   ki1000110-WASH-Bangladesh   BANGLADESH   Other             1       90   407
4-5         6 months    ki1000110-WASH-Bangladesh   BANGLADESH   Control           0       58   285
4-5         6 months    ki1000110-WASH-Bangladesh   BANGLADESH   Control           1        8   285
4-5         6 months    ki1000110-WASH-Bangladesh   BANGLADESH   LNS               0       68   285
4-5         6 months    ki1000110-WASH-Bangladesh   BANGLADESH   LNS               1       12   285
4-5         6 months    ki1000110-WASH-Bangladesh   BANGLADESH   Other             0      121   285
4-5         6 months    ki1000110-WASH-Bangladesh   BANGLADESH   Other             1       18   285
3 or less   6 months    ki1000110-WASH-Bangladesh   BANGLADESH   Control           0       36   209
3 or less   6 months    ki1000110-WASH-Bangladesh   BANGLADESH   Control           1       13   209
3 or less   6 months    ki1000110-WASH-Bangladesh   BANGLADESH   LNS               0       51   209
3 or less   6 months    ki1000110-WASH-Bangladesh   BANGLADESH   LNS               1       12   209
3 or less   6 months    ki1000110-WASH-Bangladesh   BANGLADESH   Other             0       86   209
3 or less   6 months    ki1000110-WASH-Bangladesh   BANGLADESH   Other             1       11   209
6-7         6 months    ki1000110-WASH-Bangladesh   BANGLADESH   Control           0       23   122
6-7         6 months    ki1000110-WASH-Bangladesh   BANGLADESH   Control           1        4   122
6-7         6 months    ki1000110-WASH-Bangladesh   BANGLADESH   LNS               0       26   122
6-7         6 months    ki1000110-WASH-Bangladesh   BANGLADESH   LNS               1        4   122
6-7         6 months    ki1000110-WASH-Bangladesh   BANGLADESH   Other             0       55   122
6-7         6 months    ki1000110-WASH-Bangladesh   BANGLADESH   Other             1       10   122
8+          6 months    ki1000110-WASH-Bangladesh   BANGLADESH   Control           0       15    66
8+          6 months    ki1000110-WASH-Bangladesh   BANGLADESH   Control           1        4    66
8+          6 months    ki1000110-WASH-Bangladesh   BANGLADESH   LNS               0       14    66
8+          6 months    ki1000110-WASH-Bangladesh   BANGLADESH   LNS               1        1    66
8+          6 months    ki1000110-WASH-Bangladesh   BANGLADESH   Other             0       29    66
8+          6 months    ki1000110-WASH-Bangladesh   BANGLADESH   Other             1        3    66
8+          24 months   ki1000111-WASH-Kenya        KENYA        Control           0      210   983
8+          24 months   ki1000111-WASH-Kenya        KENYA        Control           1      104   983
8+          24 months   ki1000111-WASH-Kenya        KENYA        LNS               0      154   983
8+          24 months   ki1000111-WASH-Kenya        KENYA        LNS               1       70   983
8+          24 months   ki1000111-WASH-Kenya        KENYA        Other             0      299   983
8+          24 months   ki1000111-WASH-Kenya        KENYA        Other             1      146   983
8+          6 months    ki1000111-WASH-Kenya        KENYA        Control           0       12    36
8+          6 months    ki1000111-WASH-Kenya        KENYA        Control           1        1    36
8+          6 months    ki1000111-WASH-Kenya        KENYA        LNS               0        9    36
8+          6 months    ki1000111-WASH-Kenya        KENYA        LNS               1        2    36
8+          6 months    ki1000111-WASH-Kenya        KENYA        Other             0       10    36
8+          6 months    ki1000111-WASH-Kenya        KENYA        Other             1        2    36
4-5         24 months   ki1000111-WASH-Kenya        KENYA        Control           0      128   517
4-5         24 months   ki1000111-WASH-Kenya        KENYA        Control           1       52   517
4-5         24 months   ki1000111-WASH-Kenya        KENYA        LNS               0       85   517
4-5         24 months   ki1000111-WASH-Kenya        KENYA        LNS               1       25   517
4-5         24 months   ki1000111-WASH-Kenya        KENYA        Other             0      156   517
4-5         24 months   ki1000111-WASH-Kenya        KENYA        Other             1       71   517
3 or less   24 months   ki1000111-WASH-Kenya        KENYA        Control           0       72   262
3 or less   24 months   ki1000111-WASH-Kenya        KENYA        Control           1       27   262
3 or less   24 months   ki1000111-WASH-Kenya        KENYA        LNS               0       26   262
3 or less   24 months   ki1000111-WASH-Kenya        KENYA        LNS               1       14   262
3 or less   24 months   ki1000111-WASH-Kenya        KENYA        Other             0       85   262
3 or less   24 months   ki1000111-WASH-Kenya        KENYA        Other             1       38   262
6-7         24 months   ki1000111-WASH-Kenya        KENYA        Control           0      117   502
6-7         24 months   ki1000111-WASH-Kenya        KENYA        Control           1       50   502
6-7         24 months   ki1000111-WASH-Kenya        KENYA        LNS               0       89   502
6-7         24 months   ki1000111-WASH-Kenya        KENYA        LNS               1       37   502
6-7         24 months   ki1000111-WASH-Kenya        KENYA        Other             0      144   502
6-7         24 months   ki1000111-WASH-Kenya        KENYA        Other             1       65   502
4-5         6 months    ki1000111-WASH-Kenya        KENYA        Control           0        2    11
4-5         6 months    ki1000111-WASH-Kenya        KENYA        Control           1        0    11
4-5         6 months    ki1000111-WASH-Kenya        KENYA        Other             0        7    11
4-5         6 months    ki1000111-WASH-Kenya        KENYA        Other             1        2    11
6-7         6 months    ki1000111-WASH-Kenya        KENYA        Control           0        3    14
6-7         6 months    ki1000111-WASH-Kenya        KENYA        Control           1        0    14
6-7         6 months    ki1000111-WASH-Kenya        KENYA        LNS               0        1    14
6-7         6 months    ki1000111-WASH-Kenya        KENYA        LNS               1        1    14
6-7         6 months    ki1000111-WASH-Kenya        KENYA        Other             0        7    14
6-7         6 months    ki1000111-WASH-Kenya        KENYA        Other             1        2    14
3 or less   6 months    ki1000111-WASH-Kenya        KENYA        Control           0        6    13
3 or less   6 months    ki1000111-WASH-Kenya        KENYA        Control           1        1    13
3 or less   6 months    ki1000111-WASH-Kenya        KENYA        LNS               0        2    13
3 or less   6 months    ki1000111-WASH-Kenya        KENYA        LNS               1        0    13
3 or less   6 months    ki1000111-WASH-Kenya        KENYA        Other             0        4    13
3 or less   6 months    ki1000111-WASH-Kenya        KENYA        Other             1        0    13
6-7         6 months    ki1000304-Vitamin-B12       INDIA        Control           0        4    25
6-7         6 months    ki1000304-Vitamin-B12       INDIA        Control           1        2    25
6-7         6 months    ki1000304-Vitamin-B12       INDIA        Other             0       14    25
6-7         6 months    ki1000304-Vitamin-B12       INDIA        Other             1        5    25
3 or less   24 months   ki1000304-Vitamin-B12       INDIA        Control           0        4    21
3 or less   24 months   ki1000304-Vitamin-B12       INDIA        Control           1        2    21
3 or less   24 months   ki1000304-Vitamin-B12       INDIA        Other             0       10    21
3 or less   24 months   ki1000304-Vitamin-B12       INDIA        Other             1        5    21
8+          6 months    ki1000304-Vitamin-B12       INDIA        Control           0        4    27
8+          6 months    ki1000304-Vitamin-B12       INDIA        Control           1        2    27
8+          6 months    ki1000304-Vitamin-B12       INDIA        Other             0       14    27
8+          6 months    ki1000304-Vitamin-B12       INDIA        Other             1        7    27
4-5         6 months    ki1000304-Vitamin-B12       INDIA        Control           0        2    23
4-5         6 months    ki1000304-Vitamin-B12       INDIA        Control           1        1    23
4-5         6 months    ki1000304-Vitamin-B12       INDIA        Other             0       16    23
4-5         6 months    ki1000304-Vitamin-B12       INDIA        Other             1        4    23
4-5         24 months   ki1000304-Vitamin-B12       INDIA        Control           0        8    54
4-5         24 months   ki1000304-Vitamin-B12       INDIA        Control           1        4    54
4-5         24 months   ki1000304-Vitamin-B12       INDIA        Other             0       19    54
4-5         24 months   ki1000304-Vitamin-B12       INDIA        Other             1       23    54
6-7         24 months   ki1000304-Vitamin-B12       INDIA        Control           0        7    34
6-7         24 months   ki1000304-Vitamin-B12       INDIA        Control           1        3    34
6-7         24 months   ki1000304-Vitamin-B12       INDIA        Other             0       13    34
6-7         24 months   ki1000304-Vitamin-B12       INDIA        Other             1       11    34
8+          24 months   ki1000304-Vitamin-B12       INDIA        Control           0        5    24
8+          24 months   ki1000304-Vitamin-B12       INDIA        Control           1        5    24
8+          24 months   ki1000304-Vitamin-B12       INDIA        Other             0        8    24
8+          24 months   ki1000304-Vitamin-B12       INDIA        Other             1        6    24
3 or less   6 months    ki1000304-Vitamin-B12       INDIA        Control           0        1     6
3 or less   6 months    ki1000304-Vitamin-B12       INDIA        Control           1        1     6
3 or less   6 months    ki1000304-Vitamin-B12       INDIA        Other             0        3     6
3 or less   6 months    ki1000304-Vitamin-B12       INDIA        Other             1        1     6
4-5         6 months    ki1000304-ZnMort            INDIA        Control           0       22    56
4-5         6 months    ki1000304-ZnMort            INDIA        Control           1       15    56
4-5         6 months    ki1000304-ZnMort            INDIA        Zinc              0       12    56
4-5         6 months    ki1000304-ZnMort            INDIA        Zinc              1        7    56
3 or less   6 months    ki1000304-ZnMort            INDIA        Control           0       10    21
3 or less   6 months    ki1000304-ZnMort            INDIA        Control           1        3    21
3 or less   6 months    ki1000304-ZnMort            INDIA        Zinc              0        4    21
3 or less   6 months    ki1000304-ZnMort            INDIA        Zinc              1        4    21
4-5         24 months   ki1000304-ZnMort            INDIA        Control           0       13    65
4-5         24 months   ki1000304-ZnMort            INDIA        Control           1       19    65
4-5         24 months   ki1000304-ZnMort            INDIA        Zinc              0       16    65
4-5         24 months   ki1000304-ZnMort            INDIA        Zinc              1       17    65
6-7         24 months   ki1000304-ZnMort            INDIA        Control           0        4    34
6-7         24 months   ki1000304-ZnMort            INDIA        Control           1       13    34
6-7         24 months   ki1000304-ZnMort            INDIA        Zinc              0        8    34
6-7         24 months   ki1000304-ZnMort            INDIA        Zinc              1        9    34
8+          24 months   ki1000304-ZnMort            INDIA        Control           0        6    27
8+          24 months   ki1000304-ZnMort            INDIA        Control           1       13    27
8+          24 months   ki1000304-ZnMort            INDIA        Zinc              0        1    27
8+          24 months   ki1000304-ZnMort            INDIA        Zinc              1        7    27
8+          6 months    ki1000304-ZnMort            INDIA        Control           0        8    33
8+          6 months    ki1000304-ZnMort            INDIA        Control           1        4    33
8+          6 months    ki1000304-ZnMort            INDIA        Zinc              0       16    33
8+          6 months    ki1000304-ZnMort            INDIA        Zinc              1        5    33
6-7         6 months    ki1000304-ZnMort            INDIA        Control           0       15    35
6-7         6 months    ki1000304-ZnMort            INDIA        Control           1        9    35
6-7         6 months    ki1000304-ZnMort            INDIA        Zinc              0        6    35
6-7         6 months    ki1000304-ZnMort            INDIA        Zinc              1        5    35
3 or less   24 months   ki1000304-ZnMort            INDIA        Control           0        4    14
3 or less   24 months   ki1000304-ZnMort            INDIA        Control           1        3    14
3 or less   24 months   ki1000304-ZnMort            INDIA        Zinc              0        5    14
3 or less   24 months   ki1000304-ZnMort            INDIA        Zinc              1        2    14
4-5         6 months    ki1000304b-SAS-FoodSuppl    INDIA        Control           0       16   152
4-5         6 months    ki1000304b-SAS-FoodSuppl    INDIA        Control           1       17   152
4-5         6 months    ki1000304b-SAS-FoodSuppl    INDIA        Other             0       70   152
4-5         6 months    ki1000304b-SAS-FoodSuppl    INDIA        Other             1       49   152
8+          6 months    ki1000304b-SAS-FoodSuppl    INDIA        Control           0        8    62
8+          6 months    ki1000304b-SAS-FoodSuppl    INDIA        Control           1        9    62
8+          6 months    ki1000304b-SAS-FoodSuppl    INDIA        Other             0       24    62
8+          6 months    ki1000304b-SAS-FoodSuppl    INDIA        Other             1       21    62
6-7         6 months    ki1000304b-SAS-FoodSuppl    INDIA        Control           0       16   111
6-7         6 months    ki1000304b-SAS-FoodSuppl    INDIA        Control           1       17   111
6-7         6 months    ki1000304b-SAS-FoodSuppl    INDIA        Other             0       49   111
6-7         6 months    ki1000304b-SAS-FoodSuppl    INDIA        Other             1       29   111
3 or less   6 months    ki1000304b-SAS-FoodSuppl    INDIA        Control           0        3    30
3 or less   6 months    ki1000304b-SAS-FoodSuppl    INDIA        Control           1        4    30
3 or less   6 months    ki1000304b-SAS-FoodSuppl    INDIA        Other             0       18    30
3 or less   6 months    ki1000304b-SAS-FoodSuppl    INDIA        Other             1        5    30
4-5         6 months    ki1017093b-PROVIDE          BANGLADESH   Control           0        3    21
4-5         6 months    ki1017093b-PROVIDE          BANGLADESH   Control           1        1    21
4-5         6 months    ki1017093b-PROVIDE          BANGLADESH   Other             0       14    21
4-5         6 months    ki1017093b-PROVIDE          BANGLADESH   Other             1        3    21
3 or less   6 months    ki1017093b-PROVIDE          BANGLADESH   Control           0        1     5
3 or less   6 months    ki1017093b-PROVIDE          BANGLADESH   Control           1        0     5
3 or less   6 months    ki1017093b-PROVIDE          BANGLADESH   Other             0        1     5
3 or less   6 months    ki1017093b-PROVIDE          BANGLADESH   Other             1        3     5
6-7         6 months    ki1017093b-PROVIDE          BANGLADESH   Control           0        4    13
6-7         6 months    ki1017093b-PROVIDE          BANGLADESH   Control           1        1    13
6-7         6 months    ki1017093b-PROVIDE          BANGLADESH   Other             0        8    13
6-7         6 months    ki1017093b-PROVIDE          BANGLADESH   Other             1        0    13
8+          6 months    ki1017093b-PROVIDE          BANGLADESH   Other             0        5     7
8+          6 months    ki1017093b-PROVIDE          BANGLADESH   Other             1        2     7
4-5         24 months   ki1017093b-PROVIDE          BANGLADESH   Other             0        2     2
4-5         6 months    ki1148112-iLiNS-DYAD-M      MALAWI       Control           0       13    79
4-5         6 months    ki1148112-iLiNS-DYAD-M      MALAWI       Control           1        7    79
4-5         6 months    ki1148112-iLiNS-DYAD-M      MALAWI       Maternal          0       46    79
4-5         6 months    ki1148112-iLiNS-DYAD-M      MALAWI       Maternal          1       13    79
3 or less   6 months    ki1148112-iLiNS-DYAD-M      MALAWI       Control           0       26    89
3 or less   6 months    ki1148112-iLiNS-DYAD-M      MALAWI       Control           1        4    89
3 or less   6 months    ki1148112-iLiNS-DYAD-M      MALAWI       Maternal          0       46    89
3 or less   6 months    ki1148112-iLiNS-DYAD-M      MALAWI       Maternal          1       13    89
8+          6 months    ki1148112-iLiNS-DYAD-M      MALAWI       Control           0       10    27
8+          6 months    ki1148112-iLiNS-DYAD-M      MALAWI       Control           1        2    27
8+          6 months    ki1148112-iLiNS-DYAD-M      MALAWI       Maternal          0       14    27
8+          6 months    ki1148112-iLiNS-DYAD-M      MALAWI       Maternal          1        1    27
3 or less   24 months   ki1148112-iLiNS-DYAD-M      MALAWI       Maternal          0        2     3
3 or less   24 months   ki1148112-iLiNS-DYAD-M      MALAWI       Maternal          1        1     3
6-7         6 months    ki1148112-iLiNS-DYAD-M      MALAWI       Control           0       11    48
6-7         6 months    ki1148112-iLiNS-DYAD-M      MALAWI       Control           1        5    48
6-7         6 months    ki1148112-iLiNS-DYAD-M      MALAWI       Maternal          0       25    48
6-7         6 months    ki1148112-iLiNS-DYAD-M      MALAWI       Maternal          1        7    48
8+          24 months   ki1148112-iLiNS-DYAD-M      MALAWI       Maternal          1        2     2
4-5         24 months   ki1148112-iLiNS-DYAD-M      MALAWI       Maternal          0        1     2
4-5         24 months   ki1148112-iLiNS-DYAD-M      MALAWI       Maternal          1        1     2
6-7         6 months    ki1148112-LCNI-5            MALAWI       Control           0       30   182
6-7         6 months    ki1148112-LCNI-5            MALAWI       Control           1       15   182
6-7         6 months    ki1148112-LCNI-5            MALAWI       LNS               0       63   182
6-7         6 months    ki1148112-LCNI-5            MALAWI       LNS               1       30   182
6-7         6 months    ki1148112-LCNI-5            MALAWI       Other             0       24   182
6-7         6 months    ki1148112-LCNI-5            MALAWI       Other             1       20   182
6-7         24 months   ki1148112-LCNI-5            MALAWI       Control           0       18    84
6-7         24 months   ki1148112-LCNI-5            MALAWI       Control           1       12    84
6-7         24 months   ki1148112-LCNI-5            MALAWI       LNS               0       26    84
6-7         24 months   ki1148112-LCNI-5            MALAWI       LNS               1       13    84
6-7         24 months   ki1148112-LCNI-5            MALAWI       Other             0       10    84
6-7         24 months   ki1148112-LCNI-5            MALAWI       Other             1        5    84
8+          6 months    ki1148112-LCNI-5            MALAWI       Control           0       11    70
8+          6 months    ki1148112-LCNI-5            MALAWI       Control           1        5    70
8+          6 months    ki1148112-LCNI-5            MALAWI       LNS               0       29    70
8+          6 months    ki1148112-LCNI-5            MALAWI       LNS               1       12    70
8+          6 months    ki1148112-LCNI-5            MALAWI       Other             0        5    70
8+          6 months    ki1148112-LCNI-5            MALAWI       Other             1        8    70
3 or less   6 months    ki1148112-LCNI-5            MALAWI       Control           0       42   224
3 or less   6 months    ki1148112-LCNI-5            MALAWI       Control           1       18   224
3 or less   6 months    ki1148112-LCNI-5            MALAWI       LNS               0       63   224
3 or less   6 months    ki1148112-LCNI-5            MALAWI       LNS               1       41   224
3 or less   6 months    ki1148112-LCNI-5            MALAWI       Other             0       41   224
3 or less   6 months    ki1148112-LCNI-5            MALAWI       Other             1       19   224
3 or less   24 months   ki1148112-LCNI-5            MALAWI       Control           0       19   102
3 or less   24 months   ki1148112-LCNI-5            MALAWI       Control           1       11   102
3 or less   24 months   ki1148112-LCNI-5            MALAWI       LNS               0       25   102
3 or less   24 months   ki1148112-LCNI-5            MALAWI       LNS               1       16   102
3 or less   24 months   ki1148112-LCNI-5            MALAWI       Other             0       21   102
3 or less   24 months   ki1148112-LCNI-5            MALAWI       Other             1       10   102
4-5         6 months    ki1148112-LCNI-5            MALAWI       Control           0       50   340
4-5         6 months    ki1148112-LCNI-5            MALAWI       Control           1       29   340
4-5         6 months    ki1148112-LCNI-5            MALAWI       LNS               0      109   340
4-5         6 months    ki1148112-LCNI-5            MALAWI       LNS               1       64   340
4-5         6 months    ki1148112-LCNI-5            MALAWI       Other             0       53   340
4-5         6 months    ki1148112-LCNI-5            MALAWI       Other             1       35   340
4-5         24 months   ki1148112-LCNI-5            MALAWI       Control           0       28   165
4-5         24 months   ki1148112-LCNI-5            MALAWI       Control           1       15   165
4-5         24 months   ki1148112-LCNI-5            MALAWI       LNS               0       49   165
4-5         24 months   ki1148112-LCNI-5            MALAWI       LNS               1       31   165
4-5         24 months   ki1148112-LCNI-5            MALAWI       Other             0       27   165
4-5         24 months   ki1148112-LCNI-5            MALAWI       Other             1       15   165
8+          24 months   ki1148112-LCNI-5            MALAWI       Control           0        4    31
8+          24 months   ki1148112-LCNI-5            MALAWI       Control           1        2    31
8+          24 months   ki1148112-LCNI-5            MALAWI       LNS               0        9    31
8+          24 months   ki1148112-LCNI-5            MALAWI       LNS               1       10    31
8+          24 months   ki1148112-LCNI-5            MALAWI       Other             0        4    31
8+          24 months   ki1148112-LCNI-5            MALAWI       Other             1        2    31
3 or less   6 months    iLiNS_DYADM_LNS             MALAWI       Control           0       26    61
3 or less   6 months    iLiNS_DYADM_LNS             MALAWI       Control           1        4    61
3 or less   6 months    iLiNS_DYADM_LNS             MALAWI       LNS               0       26    61
3 or less   6 months    iLiNS_DYADM_LNS             MALAWI       LNS               1        5    61
4-5         6 months    iLiNS_DYADM_LNS             MALAWI       Control           0       13    53
4-5         6 months    iLiNS_DYADM_LNS             MALAWI       Control           1        7    53
4-5         6 months    iLiNS_DYADM_LNS             MALAWI       LNS               0       25    53
4-5         6 months    iLiNS_DYADM_LNS             MALAWI       LNS               1        8    53
6-7         6 months    iLiNS_DYADM_LNS             MALAWI       Control           0       11    29
6-7         6 months    iLiNS_DYADM_LNS             MALAWI       Control           1        5    29
6-7         6 months    iLiNS_DYADM_LNS             MALAWI       LNS               0       11    29
6-7         6 months    iLiNS_DYADM_LNS             MALAWI       LNS               1        2    29
8+          6 months    iLiNS_DYADM_LNS             MALAWI       Control           0       10    20
8+          6 months    iLiNS_DYADM_LNS             MALAWI       Control           1        2    20
8+          6 months    iLiNS_DYADM_LNS             MALAWI       LNS               0        7    20
8+          6 months    iLiNS_DYADM_LNS             MALAWI       LNS               1        1    20
8+          24 months   iLiNS_DYADM_LNS             MALAWI       LNS               1        2     2
3 or less   24 months   iLiNS_DYADM_LNS             MALAWI       LNS               0        1     1
4-5         24 months   iLiNS_DYADM_LNS             MALAWI       LNS               0        1     1


The following strata were considered:

* nhh: 3 or less, agecat: 24 months, studyid: iLiNS_DYADM_LNS, country: MALAWI
* nhh: 3 or less, agecat: 24 months, studyid: ki1000107-Serrinha-VitA, country: BRAZIL
* nhh: 3 or less, agecat: 24 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* nhh: 3 or less, agecat: 24 months, studyid: ki1000111-WASH-Kenya, country: KENYA
* nhh: 3 or less, agecat: 24 months, studyid: ki1000304-Vitamin-B12, country: INDIA
* nhh: 3 or less, agecat: 24 months, studyid: ki1000304-ZnMort, country: INDIA
* nhh: 3 or less, agecat: 24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* nhh: 3 or less, agecat: 24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* nhh: 3 or less, agecat: 6 months, studyid: iLiNS_DYADM_LNS, country: MALAWI
* nhh: 3 or less, agecat: 6 months, studyid: ki1000107-Serrinha-VitA, country: BRAZIL
* nhh: 3 or less, agecat: 6 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* nhh: 3 or less, agecat: 6 months, studyid: ki1000111-WASH-Kenya, country: KENYA
* nhh: 3 or less, agecat: 6 months, studyid: ki1000304-Vitamin-B12, country: INDIA
* nhh: 3 or less, agecat: 6 months, studyid: ki1000304-ZnMort, country: INDIA
* nhh: 3 or less, agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* nhh: 3 or less, agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* nhh: 3 or less, agecat: 6 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* nhh: 3 or less, agecat: 6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* nhh: 4-5, agecat: 24 months, studyid: iLiNS_DYADM_LNS, country: MALAWI
* nhh: 4-5, agecat: 24 months, studyid: ki1000107-Serrinha-VitA, country: BRAZIL
* nhh: 4-5, agecat: 24 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* nhh: 4-5, agecat: 24 months, studyid: ki1000111-WASH-Kenya, country: KENYA
* nhh: 4-5, agecat: 24 months, studyid: ki1000304-Vitamin-B12, country: INDIA
* nhh: 4-5, agecat: 24 months, studyid: ki1000304-ZnMort, country: INDIA
* nhh: 4-5, agecat: 24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* nhh: 4-5, agecat: 24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* nhh: 4-5, agecat: 24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* nhh: 4-5, agecat: 6 months, studyid: iLiNS_DYADM_LNS, country: MALAWI
* nhh: 4-5, agecat: 6 months, studyid: ki1000107-Serrinha-VitA, country: BRAZIL
* nhh: 4-5, agecat: 6 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* nhh: 4-5, agecat: 6 months, studyid: ki1000111-WASH-Kenya, country: KENYA
* nhh: 4-5, agecat: 6 months, studyid: ki1000304-Vitamin-B12, country: INDIA
* nhh: 4-5, agecat: 6 months, studyid: ki1000304-ZnMort, country: INDIA
* nhh: 4-5, agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* nhh: 4-5, agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* nhh: 4-5, agecat: 6 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* nhh: 4-5, agecat: 6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* nhh: 6-7, agecat: 24 months, studyid: ki1000107-Serrinha-VitA, country: BRAZIL
* nhh: 6-7, agecat: 24 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* nhh: 6-7, agecat: 24 months, studyid: ki1000111-WASH-Kenya, country: KENYA
* nhh: 6-7, agecat: 24 months, studyid: ki1000304-Vitamin-B12, country: INDIA
* nhh: 6-7, agecat: 24 months, studyid: ki1000304-ZnMort, country: INDIA
* nhh: 6-7, agecat: 24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* nhh: 6-7, agecat: 6 months, studyid: iLiNS_DYADM_LNS, country: MALAWI
* nhh: 6-7, agecat: 6 months, studyid: ki1000107-Serrinha-VitA, country: BRAZIL
* nhh: 6-7, agecat: 6 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* nhh: 6-7, agecat: 6 months, studyid: ki1000111-WASH-Kenya, country: KENYA
* nhh: 6-7, agecat: 6 months, studyid: ki1000304-Vitamin-B12, country: INDIA
* nhh: 6-7, agecat: 6 months, studyid: ki1000304-ZnMort, country: INDIA
* nhh: 6-7, agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* nhh: 6-7, agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* nhh: 6-7, agecat: 6 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* nhh: 6-7, agecat: 6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* nhh: 8+, agecat: 24 months, studyid: iLiNS_DYADM_LNS, country: MALAWI
* nhh: 8+, agecat: 24 months, studyid: ki1000107-Serrinha-VitA, country: BRAZIL
* nhh: 8+, agecat: 24 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* nhh: 8+, agecat: 24 months, studyid: ki1000111-WASH-Kenya, country: KENYA
* nhh: 8+, agecat: 24 months, studyid: ki1000304-Vitamin-B12, country: INDIA
* nhh: 8+, agecat: 24 months, studyid: ki1000304-ZnMort, country: INDIA
* nhh: 8+, agecat: 24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* nhh: 8+, agecat: 24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* nhh: 8+, agecat: 6 months, studyid: iLiNS_DYADM_LNS, country: MALAWI
* nhh: 8+, agecat: 6 months, studyid: ki1000107-Serrinha-VitA, country: BRAZIL
* nhh: 8+, agecat: 6 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* nhh: 8+, agecat: 6 months, studyid: ki1000111-WASH-Kenya, country: KENYA
* nhh: 8+, agecat: 6 months, studyid: ki1000304-Vitamin-B12, country: INDIA
* nhh: 8+, agecat: 6 months, studyid: ki1000304-ZnMort, country: INDIA
* nhh: 8+, agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* nhh: 8+, agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* nhh: 8+, agecat: 6 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* nhh: 8+, agecat: 6 months, studyid: ki1148112-LCNI-5, country: MALAWI

### Dropped Strata

Some strata were dropped due to rare outcomes:

* nhh: 3 or less, agecat: 24 months, studyid: ki1000107-Serrinha-VitA, country: BRAZIL
* nhh: 8+, agecat: 24 months, studyid: ki1000107-Serrinha-VitA, country: BRAZIL
* nhh: 6-7, agecat: 6 months, studyid: ki1000107-Serrinha-VitA, country: BRAZIL
* nhh: 6-7, agecat: 24 months, studyid: ki1000107-Serrinha-VitA, country: BRAZIL
* nhh: 4-5, agecat: 6 months, studyid: ki1000107-Serrinha-VitA, country: BRAZIL
* nhh: 8+, agecat: 6 months, studyid: ki1000107-Serrinha-VitA, country: BRAZIL
* nhh: 3 or less, agecat: 6 months, studyid: ki1000107-Serrinha-VitA, country: BRAZIL
* nhh: 6-7, agecat: 6 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* nhh: 8+, agecat: 6 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* nhh: 8+, agecat: 6 months, studyid: ki1000111-WASH-Kenya, country: KENYA
* nhh: 4-5, agecat: 6 months, studyid: ki1000111-WASH-Kenya, country: KENYA
* nhh: 6-7, agecat: 6 months, studyid: ki1000111-WASH-Kenya, country: KENYA
* nhh: 3 or less, agecat: 6 months, studyid: ki1000111-WASH-Kenya, country: KENYA
* nhh: 6-7, agecat: 6 months, studyid: ki1000304-Vitamin-B12, country: INDIA
* nhh: 3 or less, agecat: 24 months, studyid: ki1000304-Vitamin-B12, country: INDIA
* nhh: 8+, agecat: 6 months, studyid: ki1000304-Vitamin-B12, country: INDIA
* nhh: 4-5, agecat: 6 months, studyid: ki1000304-Vitamin-B12, country: INDIA
* nhh: 4-5, agecat: 24 months, studyid: ki1000304-Vitamin-B12, country: INDIA
* nhh: 6-7, agecat: 24 months, studyid: ki1000304-Vitamin-B12, country: INDIA
* nhh: 3 or less, agecat: 6 months, studyid: ki1000304-Vitamin-B12, country: INDIA
* nhh: 3 or less, agecat: 6 months, studyid: ki1000304-ZnMort, country: INDIA
* nhh: 6-7, agecat: 24 months, studyid: ki1000304-ZnMort, country: INDIA
* nhh: 8+, agecat: 24 months, studyid: ki1000304-ZnMort, country: INDIA
* nhh: 8+, agecat: 6 months, studyid: ki1000304-ZnMort, country: INDIA
* nhh: 3 or less, agecat: 24 months, studyid: ki1000304-ZnMort, country: INDIA
* nhh: 3 or less, agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* nhh: 4-5, agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* nhh: 3 or less, agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* nhh: 6-7, agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* nhh: 8+, agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* nhh: 4-5, agecat: 24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* nhh: 3 or less, agecat: 6 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* nhh: 8+, agecat: 6 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* nhh: 3 or less, agecat: 24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* nhh: 8+, agecat: 24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* nhh: 4-5, agecat: 24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* nhh: 8+, agecat: 24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* nhh: 3 or less, agecat: 6 months, studyid: iLiNS_DYADM_LNS, country: MALAWI
* nhh: 6-7, agecat: 6 months, studyid: iLiNS_DYADM_LNS, country: MALAWI
* nhh: 8+, agecat: 6 months, studyid: iLiNS_DYADM_LNS, country: MALAWI
* nhh: 8+, agecat: 24 months, studyid: iLiNS_DYADM_LNS, country: MALAWI
* nhh: 3 or less, agecat: 24 months, studyid: iLiNS_DYADM_LNS, country: MALAWI
* nhh: 4-5, agecat: 24 months, studyid: iLiNS_DYADM_LNS, country: MALAWI

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/02605502-0b71-4967-815a-9db90a293836/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/02605502-0b71-4967-815a-9db90a293836/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/02605502-0b71-4967-815a-9db90a293836/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/02605502-0b71-4967-815a-9db90a293836/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


nhh         agecat      studyid                     country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ----------  --------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
3 or less   6 months    ki1000110-WASH-Bangladesh   BANGLADESH   Control              NA                0.2653061   0.1413927   0.3892196
3 or less   6 months    ki1000110-WASH-Bangladesh   BANGLADESH   LNS                  NA                0.1904762   0.0932788   0.2876735
3 or less   6 months    ki1000110-WASH-Bangladesh   BANGLADESH   Other                NA                0.1134021   0.0501496   0.1766545
3 or less   6 months    ki1148112-LCNI-5            MALAWI       Control              NA                0.3000000   0.1837873   0.4162127
3 or less   6 months    ki1148112-LCNI-5            MALAWI       LNS                  NA                0.3942308   0.3000999   0.4883616
3 or less   6 months    ki1148112-LCNI-5            MALAWI       Other                NA                0.3166667   0.1986994   0.4346339
3 or less   24 months   ki1000110-WASH-Bangladesh   BANGLADESH   Control              NA                0.4158416   0.3196026   0.5120805
3 or less   24 months   ki1000110-WASH-Bangladesh   BANGLADESH   LNS                  NA                0.3300000   0.2377266   0.4222734
3 or less   24 months   ki1000110-WASH-Bangladesh   BANGLADESH   Other                NA                0.4368932   0.3690773   0.5047091
3 or less   24 months   ki1000111-WASH-Kenya        KENYA        Control              NA                0.2727273   0.1848303   0.3606242
3 or less   24 months   ki1000111-WASH-Kenya        KENYA        LNS                  NA                0.3500000   0.2019054   0.4980946
3 or less   24 months   ki1000111-WASH-Kenya        KENYA        Other                NA                0.3089431   0.2271301   0.3907560
3 or less   24 months   ki1148112-LCNI-5            MALAWI       Control              NA                0.3666667   0.1933746   0.5399588
3 or less   24 months   ki1148112-LCNI-5            MALAWI       LNS                  NA                0.3902439   0.2401919   0.5402959
3 or less   24 months   ki1148112-LCNI-5            MALAWI       Other                NA                0.3225806   0.1572115   0.4879498
4-5         6 months    iLiNS_DYADM_LNS             MALAWI       Control              NA                0.3500000   0.2703631   0.4296369
4-5         6 months    iLiNS_DYADM_LNS             MALAWI       LNS                  NA                0.2424242   0.1505134   0.3343350
4-5         6 months    ki1000110-WASH-Bangladesh   BANGLADESH   Control              NA                0.1212121   0.0423344   0.2000899
4-5         6 months    ki1000110-WASH-Bangladesh   BANGLADESH   LNS                  NA                0.1500000   0.0716171   0.2283829
4-5         6 months    ki1000110-WASH-Bangladesh   BANGLADESH   Other                NA                0.1294964   0.0735827   0.1854101
4-5         6 months    ki1000304-ZnMort            INDIA        Control              NA                0.4054054   0.2457752   0.5650356
4-5         6 months    ki1000304-ZnMort            INDIA        Zinc                 NA                0.3684211   0.1495592   0.5872829
4-5         6 months    ki1000304b-SAS-FoodSuppl    INDIA        Control              NA                0.5151515   0.4780095   0.5522935
4-5         6 months    ki1000304b-SAS-FoodSuppl    INDIA        Other                NA                0.4117647   0.3423084   0.4812210
4-5         6 months    ki1148112-iLiNS-DYAD-M      MALAWI       Control              NA                0.3500000   0.2967410   0.4032590
4-5         6 months    ki1148112-iLiNS-DYAD-M      MALAWI       Maternal             NA                0.2203390   0.1408491   0.2998289
4-5         6 months    ki1148112-LCNI-5            MALAWI       Control              NA                0.3670886   0.2606422   0.4735350
4-5         6 months    ki1148112-LCNI-5            MALAWI       LNS                  NA                0.3699422   0.2978942   0.4419902
4-5         6 months    ki1148112-LCNI-5            MALAWI       Other                NA                0.3977273   0.2953189   0.5001357
4-5         24 months   ki1000107-Serrinha-VitA     BRAZIL       Control              NA                0.3600000   0.2542874   0.4657126
4-5         24 months   ki1000107-Serrinha-VitA     BRAZIL       VitA                 NA                0.3500000   0.2560447   0.4439553
4-5         24 months   ki1000110-WASH-Bangladesh   BANGLADESH   Control              NA                0.4375000   0.3381577   0.5368423
4-5         24 months   ki1000110-WASH-Bangladesh   BANGLADESH   LNS                  NA                0.4273504   0.3376151   0.5170857
4-5         24 months   ki1000110-WASH-Bangladesh   BANGLADESH   Other                NA                0.4193548   0.3578740   0.4808357
4-5         24 months   ki1000111-WASH-Kenya        KENYA        Control              NA                0.2888889   0.2226113   0.3551664
4-5         24 months   ki1000111-WASH-Kenya        KENYA        LNS                  NA                0.2272727   0.1488830   0.3056624
4-5         24 months   ki1000111-WASH-Kenya        KENYA        Other                NA                0.3127753   0.2524053   0.3731453
4-5         24 months   ki1000304-ZnMort            INDIA        Control              NA                0.5937500   0.4222602   0.7652398
4-5         24 months   ki1000304-ZnMort            INDIA        Zinc                 NA                0.5151515   0.3433099   0.6869931
4-5         24 months   ki1148112-LCNI-5            MALAWI       Control              NA                0.3488372   0.2059511   0.4917233
4-5         24 months   ki1148112-LCNI-5            MALAWI       LNS                  NA                0.3875000   0.2804191   0.4945809
4-5         24 months   ki1148112-LCNI-5            MALAWI       Other                NA                0.3571429   0.2117906   0.5024951
6-7         6 months    ki1000304-ZnMort            INDIA        Control              NA                0.3750000   0.1784864   0.5715136
6-7         6 months    ki1000304-ZnMort            INDIA        Zinc                 NA                0.4545455   0.1559974   0.7530935
6-7         6 months    ki1000304b-SAS-FoodSuppl    INDIA        Control              NA                0.5151515   0.4642281   0.5660750
6-7         6 months    ki1000304b-SAS-FoodSuppl    INDIA        Other                NA                0.3717949   0.2960872   0.4475026
6-7         6 months    ki1148112-iLiNS-DYAD-M      MALAWI       Control              NA                0.3125000   0.2359932   0.3890068
6-7         6 months    ki1148112-iLiNS-DYAD-M      MALAWI       Maternal             NA                0.2187500   0.1222511   0.3152489
6-7         6 months    ki1148112-LCNI-5            MALAWI       Control              NA                0.3333333   0.1952212   0.4714455
6-7         6 months    ki1148112-LCNI-5            MALAWI       LNS                  NA                0.3225806   0.2273118   0.4178495
6-7         6 months    ki1148112-LCNI-5            MALAWI       Other                NA                0.4545455   0.3070135   0.6020774
6-7         24 months   ki1000110-WASH-Bangladesh   BANGLADESH   Control              NA                0.4200000   0.2828465   0.5571535
6-7         24 months   ki1000110-WASH-Bangladesh   BANGLADESH   LNS                  NA                0.4545455   0.3226166   0.5864743
6-7         24 months   ki1000110-WASH-Bangladesh   BANGLADESH   Other                NA                0.4021739   0.3017231   0.5026248
6-7         24 months   ki1000111-WASH-Kenya        KENYA        Control              NA                0.2994012   0.2298693   0.3689331
6-7         24 months   ki1000111-WASH-Kenya        KENYA        LNS                  NA                0.2936508   0.2140493   0.3732523
6-7         24 months   ki1000111-WASH-Kenya        KENYA        Other                NA                0.3110048   0.2481845   0.3738250
6-7         24 months   ki1148112-LCNI-5            MALAWI       Control              NA                0.4000000   0.2236426   0.5763574
6-7         24 months   ki1148112-LCNI-5            MALAWI       LNS                  NA                0.3333333   0.1844966   0.4821701
6-7         24 months   ki1148112-LCNI-5            MALAWI       Other                NA                0.3333333   0.0933413   0.5733254
8+          6 months    ki1000304b-SAS-FoodSuppl    INDIA        Control              NA                0.5294118   0.4638231   0.5950005
8+          6 months    ki1000304b-SAS-FoodSuppl    INDIA        Other                NA                0.4666667   0.3600080   0.5733254
8+          6 months    ki1148112-LCNI-5            MALAWI       Control              NA                0.3125000   0.0837432   0.5412568
8+          6 months    ki1148112-LCNI-5            MALAWI       LNS                  NA                0.2926829   0.1524059   0.4329599
8+          6 months    ki1148112-LCNI-5            MALAWI       Other                NA                0.6153846   0.3490133   0.8817560
8+          24 months   ki1000110-WASH-Bangladesh   BANGLADESH   Control              NA                0.4166667   0.2186132   0.6147201
8+          24 months   ki1000110-WASH-Bangladesh   BANGLADESH   LNS                  NA                0.2285714   0.0888831   0.3682598
8+          24 months   ki1000110-WASH-Bangladesh   BANGLADESH   Other                NA                0.3333333   0.2164483   0.4502183
8+          24 months   ki1000111-WASH-Kenya        KENYA        Control              NA                0.3312102   0.2791266   0.3832938
8+          24 months   ki1000111-WASH-Kenya        KENYA        LNS                  NA                0.3125000   0.2517696   0.3732304
8+          24 months   ki1000111-WASH-Kenya        KENYA        Other                NA                0.3280899   0.2844442   0.3717356
8+          24 months   ki1000304-Vitamin-B12       INDIA        Control              NA                0.5000000   0.3680989   0.6319011
8+          24 months   ki1000304-Vitamin-B12       INDIA        Other                NA                0.4285714   0.2741046   0.5830382


### Parameter: E(Y)


nhh         agecat      studyid                     country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ----------  --------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
3 or less   6 months    ki1000110-WASH-Bangladesh   BANGLADESH   NA                   NA                0.1722488   0.1209338   0.2235638
3 or less   6 months    ki1148112-LCNI-5            MALAWI       NA                   NA                0.3482143   0.2856867   0.4107418
3 or less   24 months   ki1000110-WASH-Bangladesh   BANGLADESH   NA                   NA                0.4054054   0.3576480   0.4531628
3 or less   24 months   ki1000111-WASH-Kenya        KENYA        NA                   NA                0.3015267   0.2458510   0.3572024
3 or less   24 months   ki1148112-LCNI-5            MALAWI       NA                   NA                0.3627451   0.2689792   0.4565110
4-5         6 months    iLiNS_DYADM_LNS             MALAWI       NA                   NA                0.2830189   0.1605832   0.4054545
4-5         6 months    ki1000110-WASH-Bangladesh   BANGLADESH   NA                   NA                0.1333333   0.0937981   0.1728686
4-5         6 months    ki1000304-ZnMort            INDIA        NA                   NA                0.3928571   0.2637859   0.5219284
4-5         6 months    ki1000304b-SAS-FoodSuppl    INDIA        NA                   NA                0.4342105   0.3551541   0.5132670
4-5         6 months    ki1148112-iLiNS-DYAD-M      MALAWI       NA                   NA                0.2531646   0.1566674   0.3496618
4-5         6 months    ki1148112-LCNI-5            MALAWI       NA                   NA                0.3764706   0.3248952   0.4280459
4-5         24 months   ki1000107-Serrinha-VitA     BRAZIL       NA                   NA                0.3555556   0.2141169   0.4969942
4-5         24 months   ki1000110-WASH-Bangladesh   BANGLADESH   NA                   NA                0.4251627   0.3799855   0.4703399
4-5         24 months   ki1000111-WASH-Kenya        KENYA        NA                   NA                0.2862669   0.2472658   0.3252680
4-5         24 months   ki1000304-ZnMort            INDIA        NA                   NA                0.5538462   0.4320608   0.6756315
4-5         24 months   ki1148112-LCNI-5            MALAWI       NA                   NA                0.3696970   0.2958175   0.4435764
6-7         6 months    ki1000304-ZnMort            INDIA        NA                   NA                0.4000000   0.2353301   0.5646699
6-7         6 months    ki1000304b-SAS-FoodSuppl    INDIA        NA                   NA                0.4144144   0.3223558   0.5064730
6-7         6 months    ki1148112-iLiNS-DYAD-M      MALAWI       NA                   NA                0.2500000   0.1262059   0.3737941
6-7         6 months    ki1148112-LCNI-5            MALAWI       NA                   NA                0.3571429   0.2873378   0.4269479
6-7         24 months   ki1000110-WASH-Bangladesh   BANGLADESH   NA                   NA                0.4213198   0.3521932   0.4904464
6-7         24 months   ki1000111-WASH-Kenya        KENYA        NA                   NA                0.3027888   0.2625559   0.3430217
6-7         24 months   ki1148112-LCNI-5            MALAWI       NA                   NA                0.3571429   0.2540598   0.4602259
8+          6 months    ki1000304b-SAS-FoodSuppl    INDIA        NA                   NA                0.4838710   0.3584624   0.6092795
8+          6 months    ki1148112-LCNI-5            MALAWI       NA                   NA                0.3571429   0.2440847   0.4702010
8+          24 months   ki1000110-WASH-Bangladesh   BANGLADESH   NA                   NA                0.3196721   0.2365787   0.4027656
8+          24 months   ki1000111-WASH-Kenya        KENYA        NA                   NA                0.3255341   0.2962271   0.3548410
8+          24 months   ki1000304-Vitamin-B12       INDIA        NA                   NA                0.4583333   0.2547037   0.6619630


### Parameter: RR


nhh         agecat      studyid                     country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ----------  --------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
3 or less   6 months    ki1000110-WASH-Bangladesh   BANGLADESH   Control              Control           1.0000000   1.0000000   1.0000000
3 or less   6 months    ki1000110-WASH-Bangladesh   BANGLADESH   LNS                  Control           0.7179487   0.3594718   1.4339106
3 or less   6 months    ki1000110-WASH-Bangladesh   BANGLADESH   Other                Control           0.4274385   0.2065026   0.8847527
3 or less   6 months    ki1148112-LCNI-5            MALAWI       Control              Control           1.0000000   1.0000000   1.0000000
3 or less   6 months    ki1148112-LCNI-5            MALAWI       LNS                  Control           1.3141026   0.8336871   2.0713593
3 or less   6 months    ki1148112-LCNI-5            MALAWI       Other                Control           1.0555556   0.6167025   1.8067019
3 or less   24 months   ki1000110-WASH-Bangladesh   BANGLADESH   Control              Control           1.0000000   1.0000000   1.0000000
3 or less   24 months   ki1000110-WASH-Bangladesh   BANGLADESH   LNS                  Control           0.7935714   0.5520150   1.1408306
3 or less   24 months   ki1000110-WASH-Bangladesh   BANGLADESH   Other                Control           1.0506241   0.7951044   1.3882593
3 or less   24 months   ki1000111-WASH-Kenya        KENYA        Control              Control           1.0000000   1.0000000   1.0000000
3 or less   24 months   ki1000111-WASH-Kenya        KENYA        LNS                  Control           1.2833333   0.7539501   2.1844209
3 or less   24 months   ki1000111-WASH-Kenya        KENYA        Other                Control           1.1327913   0.7464362   1.7191238
3 or less   24 months   ki1148112-LCNI-5            MALAWI       Control              Control           1.0000000   1.0000000   1.0000000
3 or less   24 months   ki1148112-LCNI-5            MALAWI       LNS                  Control           1.0643016   0.5787108   1.9573468
3 or less   24 months   ki1148112-LCNI-5            MALAWI       Other                Control           0.8797654   0.4380780   1.7667793
4-5         6 months    iLiNS_DYADM_LNS             MALAWI       Control              Control           1.0000000   1.0000000   1.0000000
4-5         6 months    iLiNS_DYADM_LNS             MALAWI       LNS                  Control           0.6926407   0.4451197   1.0778026
4-5         6 months    ki1000110-WASH-Bangladesh   BANGLADESH   Control              Control           1.0000000   1.0000000   1.0000000
4-5         6 months    ki1000110-WASH-Bangladesh   BANGLADESH   LNS                  Control           1.2375000   0.5371446   2.8510130
4-5         6 months    ki1000110-WASH-Bangladesh   BANGLADESH   Other                Control           1.0683453   0.4892667   2.3328009
4-5         6 months    ki1000304-ZnMort            INDIA        Control              Control           1.0000000   1.0000000   1.0000000
4-5         6 months    ki1000304-ZnMort            INDIA        Zinc                 Control           0.9087719   0.4455874   1.8534329
4-5         6 months    ki1000304b-SAS-FoodSuppl    INDIA        Control              Control           1.0000000   1.0000000   1.0000000
4-5         6 months    ki1000304b-SAS-FoodSuppl    INDIA        Other                Control           0.7993080   0.6653439   0.9602451
4-5         6 months    ki1148112-iLiNS-DYAD-M      MALAWI       Control              Control           1.0000000   1.0000000   1.0000000
4-5         6 months    ki1148112-iLiNS-DYAD-M      MALAWI       Maternal             Control           0.6295400   0.4255781   0.9312523
4-5         6 months    ki1148112-LCNI-5            MALAWI       Control              Control           1.0000000   1.0000000   1.0000000
4-5         6 months    ki1148112-LCNI-5            MALAWI       LNS                  Control           1.0077736   0.7106590   1.4291067
4-5         6 months    ki1148112-LCNI-5            MALAWI       Other                Control           1.0834639   0.7351875   1.5967275
4-5         24 months   ki1000107-Serrinha-VitA     BRAZIL       Control              Control           1.0000000   1.0000000   1.0000000
4-5         24 months   ki1000107-Serrinha-VitA     BRAZIL       VitA                 Control           0.9722222   0.6530983   1.4472800
4-5         24 months   ki1000110-WASH-Bangladesh   BANGLADESH   Control              Control           1.0000000   1.0000000   1.0000000
4-5         24 months   ki1000110-WASH-Bangladesh   BANGLADESH   LNS                  Control           0.9768010   0.7169504   1.3308314
4-5         24 months   ki1000110-WASH-Bangladesh   BANGLADESH   Other                Control           0.9585253   0.7315102   1.2559919
4-5         24 months   ki1000111-WASH-Kenya        KENYA        Control              Control           1.0000000   1.0000000   1.0000000
4-5         24 months   ki1000111-WASH-Kenya        KENYA        LNS                  Control           0.7867133   0.5198897   1.1904790
4-5         24 months   ki1000111-WASH-Kenya        KENYA        Other                Control           1.0826838   0.8022204   1.4611998
4-5         24 months   ki1000304-ZnMort            INDIA        Control              Control           1.0000000   1.0000000   1.0000000
4-5         24 months   ki1000304-ZnMort            INDIA        Zinc                 Control           0.8676236   0.5580892   1.3488359
4-5         24 months   ki1148112-LCNI-5            MALAWI       Control              Control           1.0000000   1.0000000   1.0000000
4-5         24 months   ki1148112-LCNI-5            MALAWI       LNS                  Control           1.1108333   0.6777375   1.8206911
4-5         24 months   ki1148112-LCNI-5            MALAWI       Other                Control           1.0238095   0.5747092   1.8238544
6-7         6 months    ki1000304-ZnMort            INDIA        Control              Control           1.0000000   1.0000000   1.0000000
6-7         6 months    ki1000304-ZnMort            INDIA        Zinc                 Control           1.2121212   0.5231585   2.8083992
6-7         6 months    ki1000304b-SAS-FoodSuppl    INDIA        Control              Control           1.0000000   1.0000000   1.0000000
6-7         6 months    ki1000304b-SAS-FoodSuppl    INDIA        Other                Control           0.7217195   0.5755253   0.9050496
6-7         6 months    ki1148112-iLiNS-DYAD-M      MALAWI       Control              Control           1.0000000   1.0000000   1.0000000
6-7         6 months    ki1148112-iLiNS-DYAD-M      MALAWI       Maternal             Control           0.7000000   0.4226567   1.1593333
6-7         6 months    ki1148112-LCNI-5            MALAWI       Control              Control           1.0000000   1.0000000   1.0000000
6-7         6 months    ki1148112-LCNI-5            MALAWI       LNS                  Control           0.9677419   0.5818115   1.6096698
6-7         6 months    ki1148112-LCNI-5            MALAWI       Other                Control           1.3636364   0.8055963   2.3082333
6-7         24 months   ki1000110-WASH-Bangladesh   BANGLADESH   Control              Control           1.0000000   1.0000000   1.0000000
6-7         24 months   ki1000110-WASH-Bangladesh   BANGLADESH   LNS                  Control           1.0822511   0.6991745   1.6752148
6-7         24 months   ki1000110-WASH-Bangladesh   BANGLADESH   Other                Control           0.9575569   0.6347685   1.4444877
6-7         24 months   ki1000111-WASH-Kenya        KENYA        Control              Control           1.0000000   1.0000000   1.0000000
6-7         24 months   ki1000111-WASH-Kenya        KENYA        LNS                  Control           0.9807937   0.6863644   1.4015239
6-7         24 months   ki1000111-WASH-Kenya        KENYA        Other                Control           1.0387560   0.7635585   1.4131387
6-7         24 months   ki1148112-LCNI-5            MALAWI       Control              Control           1.0000000   1.0000000   1.0000000
6-7         24 months   ki1148112-LCNI-5            MALAWI       LNS                  Control           0.8333333   0.4449367   1.5607714
6-7         24 months   ki1148112-LCNI-5            MALAWI       Other                Control           0.8333333   0.3582342   1.9385208
8+          6 months    ki1000304b-SAS-FoodSuppl    INDIA        Control              Control           1.0000000   1.0000000   1.0000000
8+          6 months    ki1000304b-SAS-FoodSuppl    INDIA        Other                Control           0.8814815   0.6796863   1.1431886
8+          6 months    ki1148112-LCNI-5            MALAWI       Control              Control           1.0000000   1.0000000   1.0000000
8+          6 months    ki1148112-LCNI-5            MALAWI       LNS                  Control           0.9365854   0.3904403   2.2466740
8+          6 months    ki1148112-LCNI-5            MALAWI       Other                Control           1.9692308   0.8413234   4.6092498
8+          24 months   ki1000110-WASH-Bangladesh   BANGLADESH   Control              Control           1.0000000   1.0000000   1.0000000
8+          24 months   ki1000110-WASH-Bangladesh   BANGLADESH   LNS                  Control           0.5485714   0.2529248   1.1898027
8+          24 months   ki1000110-WASH-Bangladesh   BANGLADESH   Other                Control           0.8000000   0.4431630   1.4441640
8+          24 months   ki1000111-WASH-Kenya        KENYA        Control              Control           1.0000000   1.0000000   1.0000000
8+          24 months   ki1000111-WASH-Kenya        KENYA        LNS                  Control           0.9435096   0.7348129   1.2114791
8+          24 months   ki1000111-WASH-Kenya        KENYA        Other                Control           0.9905791   0.8061872   1.2171453
8+          24 months   ki1000304-Vitamin-B12       INDIA        Control              Control           1.0000000   1.0000000   1.0000000
8+          24 months   ki1000304-Vitamin-B12       INDIA        Other                Control           0.8571429   0.5483725   1.3397716


### Parameter: PAR


nhh         agecat      studyid                     country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ----------  --------------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
3 or less   6 months    ki1000110-WASH-Bangladesh   BANGLADESH   Control              NA                -0.0930573   -0.1969228    0.0108081
3 or less   6 months    ki1148112-LCNI-5            MALAWI       Control              NA                 0.0482143   -0.0526820    0.1491106
3 or less   24 months   ki1000110-WASH-Bangladesh   BANGLADESH   Control              NA                -0.0104362   -0.0937781    0.0729057
3 or less   24 months   ki1000111-WASH-Kenya        KENYA        Control              NA                 0.0287994   -0.0418194    0.0994183
3 or less   24 months   ki1148112-LCNI-5            MALAWI       Control              NA                -0.0039216   -0.1493774    0.1415342
4-5         6 months    iLiNS_DYADM_LNS             MALAWI       Control              NA                -0.0669811   -0.1599782    0.0260160
4-5         6 months    ki1000110-WASH-Bangladesh   BANGLADESH   Control              NA                 0.0121212   -0.0579010    0.0821434
4-5         6 months    ki1000304-ZnMort            INDIA        Control              NA                -0.0125483   -0.1045744    0.0794779
4-5         6 months    ki1000304b-SAS-FoodSuppl    INDIA        Control              NA                -0.0809410   -0.1507292   -0.0111528
4-5         6 months    ki1148112-iLiNS-DYAD-M      MALAWI       Control              NA                -0.0968354   -0.1773040   -0.0163669
4-5         6 months    ki1148112-LCNI-5            MALAWI       Control              NA                 0.0093820   -0.0840276    0.1027916
4-5         24 months   ki1000107-Serrinha-VitA     BRAZIL       Control              NA                -0.0044444   -0.0984112    0.0895223
4-5         24 months   ki1000110-WASH-Bangladesh   BANGLADESH   Control              NA                -0.0123373   -0.1006528    0.0759781
4-5         24 months   ki1000111-WASH-Kenya        KENYA        Control              NA                -0.0026220   -0.0560546    0.0508106
4-5         24 months   ki1000304-ZnMort            INDIA        Control              NA                -0.0399038   -0.1635328    0.0837251
4-5         24 months   ki1148112-LCNI-5            MALAWI       Control              NA                 0.0208598   -0.1025636    0.1442831
6-7         6 months    ki1000304-ZnMort            INDIA        Control              NA                 0.0250000   -0.0880155    0.1380155
6-7         6 months    ki1000304b-SAS-FoodSuppl    INDIA        Control              NA                -0.1007371   -0.1774286   -0.0240456
6-7         6 months    ki1148112-iLiNS-DYAD-M      MALAWI       Control              NA                -0.0625000   -0.1598226    0.0348226
6-7         6 months    ki1148112-LCNI-5            MALAWI       Control              NA                 0.0238095   -0.0966689    0.1442879
6-7         24 months   ki1000110-WASH-Bangladesh   BANGLADESH   Control              NA                 0.0013198   -0.1171741    0.1198137
6-7         24 months   ki1000111-WASH-Kenya        KENYA        Control              NA                 0.0033876   -0.0535041    0.0602794
6-7         24 months   ki1148112-LCNI-5            MALAWI       Control              NA                -0.0428571   -0.1825439    0.0968296
8+          6 months    ki1000304b-SAS-FoodSuppl    INDIA        Control              NA                -0.0455408   -0.1524306    0.0613490
8+          6 months    ki1148112-LCNI-5            MALAWI       Control              NA                 0.0446429   -0.1583095    0.2475952
8+          24 months   ki1000110-WASH-Bangladesh   BANGLADESH   Control              NA                -0.0969945   -0.2721997    0.0782106
8+          24 months   ki1000111-WASH-Kenya        KENYA        Control              NA                -0.0056761   -0.0485545    0.0372023
8+          24 months   ki1000304-Vitamin-B12       INDIA        Control              NA                -0.0416667   -0.1968024    0.1134691


### Parameter: PAF


nhh         agecat      studyid                     country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ----------  --------------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
3 or less   6 months    ki1000110-WASH-Bangladesh   BANGLADESH   Control              NA                -0.5402494   -1.2668673   -0.0465404
3 or less   6 months    ki1148112-LCNI-5            MALAWI       Control              NA                 0.1384615   -0.2058527    0.3844617
3 or less   24 months   ki1000110-WASH-Bangladesh   BANGLADESH   Control              NA                -0.0257426   -0.2533787    0.1605507
3 or less   24 months   ki1000111-WASH-Kenya        KENYA        Control              NA                 0.0955121   -0.1716213    0.3017382
3 or less   24 months   ki1148112-LCNI-5            MALAWI       Control              NA                -0.0108108   -0.5029832    0.3201930
4-5         6 months    iLiNS_DYADM_LNS             MALAWI       Control              NA                -0.2366667   -0.7252857    0.1135703
4-5         6 months    ki1000110-WASH-Bangladesh   BANGLADESH   Control              NA                 0.0909091   -0.6190253    0.4895409
4-5         6 months    ki1000304-ZnMort            INDIA        Control              NA                -0.0319410   -0.2950064    0.1776857
4-5         6 months    ki1000304b-SAS-FoodSuppl    INDIA        Control              NA                -0.1864096   -0.3940551   -0.0096930
4-5         6 months    ki1148112-iLiNS-DYAD-M      MALAWI       Control              NA                -0.3825000   -0.9098591   -0.0007577
4-5         6 months    ki1148112-LCNI-5            MALAWI       Control              NA                 0.0249209   -0.2576290    0.2439906
4-5         24 months   ki1000107-Serrinha-VitA     BRAZIL       Control              NA                -0.0125000   -0.3188096    0.2226655
4-5         24 months   ki1000110-WASH-Bangladesh   BANGLADESH   Control              NA                -0.0290179   -0.2592047    0.1590900
4-5         24 months   ki1000111-WASH-Kenya        KENYA        Control              NA                -0.0091592   -0.2141882    0.1612484
4-5         24 months   ki1000304-ZnMort            INDIA        Control              NA                -0.0720486   -0.3213555    0.1302203
4-5         24 months   ki1148112-LCNI-5            MALAWI       Control              NA                 0.0564239   -0.3441433    0.3376184
6-7         6 months    ki1000304-ZnMort            INDIA        Control              NA                 0.0625000   -0.2676291    0.3066535
6-7         6 months    ki1000304b-SAS-FoodSuppl    INDIA        Control              NA                -0.2430830   -0.4981156   -0.0314660
6-7         6 months    ki1148112-iLiNS-DYAD-M      MALAWI       Control              NA                -0.2500000   -0.8537598    0.1571184
6-7         6 months    ki1148112-LCNI-5            MALAWI       Control              NA                 0.0666667   -0.3397088    0.3497758
6-7         24 months   ki1000110-WASH-Bangladesh   BANGLADESH   Control              NA                 0.0031325   -0.3217955    0.2481857
6-7         24 months   ki1000111-WASH-Kenya        KENYA        Control              NA                 0.0111882   -0.1957413    0.1823074
6-7         24 months   ki1148112-LCNI-5            MALAWI       Control              NA                -0.1200000   -0.5886428    0.2103952
8+          6 months    ki1000304b-SAS-FoodSuppl    INDIA        Control              NA                -0.0941176   -0.3650093    0.1230145
8+          6 months    ki1148112-LCNI-5            MALAWI       Control              NA                 0.1250000   -0.6750993    0.5429376
8+          24 months   ki1000110-WASH-Bangladesh   BANGLADESH   Control              NA                -0.3034188   -0.9866723    0.1448511
8+          24 months   ki1000111-WASH-Kenya        KENYA        Control              NA                -0.0174363   -0.1580595    0.1061110
8+          24 months   ki1000304-Vitamin-B12       INDIA        Control              NA                -0.0909091   -0.5316383    0.2230002
