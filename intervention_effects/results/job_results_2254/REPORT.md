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

**Outcome Variable:** ever_stunted

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

nhh         agecat        studyid                     country      tr          ever_stunted   n_cell      n
----------  ------------  --------------------------  -----------  ---------  -------------  -------  -----
6-7         0-6 months    ki1000107-Serrinha-VitA     BRAZIL       Control                0        0      2
6-7         0-6 months    ki1000107-Serrinha-VitA     BRAZIL       Control                1        1      2
6-7         0-6 months    ki1000107-Serrinha-VitA     BRAZIL       VitA                   0        1      2
6-7         0-6 months    ki1000107-Serrinha-VitA     BRAZIL       VitA                   1        0      2
3 or less   0-6 months    ki1000107-Serrinha-VitA     BRAZIL       Control                0        3      5
3 or less   0-6 months    ki1000107-Serrinha-VitA     BRAZIL       VitA                   0        2      5
4-5         0-6 months    ki1000107-Serrinha-VitA     BRAZIL       Control                0        1      2
4-5         0-6 months    ki1000107-Serrinha-VitA     BRAZIL       VitA                   0        1      2
3 or less   0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH   Control                0       10     87
3 or less   0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH   Control                1        5     87
3 or less   0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH   LNS                    0       25     87
3 or less   0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH   LNS                    1        4     87
3 or less   0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH   Other                  0       40     87
3 or less   0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH   Other                  1        3     87
4-5         0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH   Control                0       17     88
4-5         0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH   Control                1        1     88
4-5         0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH   LNS                    0       19     88
4-5         0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH   LNS                    1        3     88
4-5         0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH   Other                  0       44     88
4-5         0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH   Other                  1        4     88
8+          0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH   Control                0        4     21
8+          0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH   Control                1        0     21
8+          0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH   LNS                    0        7     21
8+          0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH   LNS                    1        0     21
8+          0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH   Other                  0        9     21
8+          0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH   Other                  1        1     21
6-7         0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH   Control                0        6     36
6-7         0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH   Control                1        0     36
6-7         0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH   LNS                    0       11     36
6-7         0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH   LNS                    1        0     36
6-7         0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH   Other                  0       17     36
6-7         0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH   Other                  1        2     36
8+          0-6 months    ki1000111-WASH-Kenya        KENYA        Control                0        9     39
8+          0-6 months    ki1000111-WASH-Kenya        KENYA        Control                1        2     39
8+          0-6 months    ki1000111-WASH-Kenya        KENYA        LNS                    0        9     39
8+          0-6 months    ki1000111-WASH-Kenya        KENYA        LNS                    1        0     39
8+          0-6 months    ki1000111-WASH-Kenya        KENYA        Other                  0       17     39
8+          0-6 months    ki1000111-WASH-Kenya        KENYA        Other                  1        2     39
6-7         0-6 months    ki1000111-WASH-Kenya        KENYA        Control                0        7     18
6-7         0-6 months    ki1000111-WASH-Kenya        KENYA        Control                1        0     18
6-7         0-6 months    ki1000111-WASH-Kenya        KENYA        LNS                    0        5     18
6-7         0-6 months    ki1000111-WASH-Kenya        KENYA        LNS                    1        0     18
6-7         0-6 months    ki1000111-WASH-Kenya        KENYA        Other                  0        4     18
6-7         0-6 months    ki1000111-WASH-Kenya        KENYA        Other                  1        2     18
3 or less   0-6 months    ki1000111-WASH-Kenya        KENYA        Control                0        4     15
3 or less   0-6 months    ki1000111-WASH-Kenya        KENYA        Control                1        0     15
3 or less   0-6 months    ki1000111-WASH-Kenya        KENYA        LNS                    0        6     15
3 or less   0-6 months    ki1000111-WASH-Kenya        KENYA        LNS                    1        0     15
3 or less   0-6 months    ki1000111-WASH-Kenya        KENYA        Other                  0        4     15
3 or less   0-6 months    ki1000111-WASH-Kenya        KENYA        Other                  1        1     15
4-5         0-6 months    ki1000111-WASH-Kenya        KENYA        Control                0        5     20
4-5         0-6 months    ki1000111-WASH-Kenya        KENYA        LNS                    0        3     20
4-5         0-6 months    ki1000111-WASH-Kenya        KENYA        Other                  0       12     20
8+          0-6 months    ki1000304-Vitamin-B12       INDIA        Other                  0        1      1
8+          0-6 months    ki1000304-ZnMort            INDIA        Control                0       12     50
8+          0-6 months    ki1000304-ZnMort            INDIA        Control                1        9     50
8+          0-6 months    ki1000304-ZnMort            INDIA        Zinc                   0       19     50
8+          0-6 months    ki1000304-ZnMort            INDIA        Zinc                   1       10     50
4-5         0-6 months    ki1000304-ZnMort            INDIA        Control                0       18     69
4-5         0-6 months    ki1000304-ZnMort            INDIA        Control                1       18     69
4-5         0-6 months    ki1000304-ZnMort            INDIA        Zinc                   0       19     69
4-5         0-6 months    ki1000304-ZnMort            INDIA        Zinc                   1       14     69
3 or less   0-6 months    ki1000304-ZnMort            INDIA        Control                0        9     23
3 or less   0-6 months    ki1000304-ZnMort            INDIA        Control                1        1     23
3 or less   0-6 months    ki1000304-ZnMort            INDIA        Zinc                   0        6     23
3 or less   0-6 months    ki1000304-ZnMort            INDIA        Zinc                   1        7     23
6-7         0-6 months    ki1000304-ZnMort            INDIA        Control                0       15     39
6-7         0-6 months    ki1000304-ZnMort            INDIA        Control                1        7     39
6-7         0-6 months    ki1000304-ZnMort            INDIA        Zinc                   0       11     39
6-7         0-6 months    ki1000304-ZnMort            INDIA        Zinc                   1        6     39
4-5         0-6 months    ki1000304b-SAS-FoodSuppl    INDIA        Control                0       23    182
4-5         0-6 months    ki1000304b-SAS-FoodSuppl    INDIA        Control                1       18    182
4-5         0-6 months    ki1000304b-SAS-FoodSuppl    INDIA        Other                  0       87    182
4-5         0-6 months    ki1000304b-SAS-FoodSuppl    INDIA        Other                  1       54    182
8+          0-6 months    ki1000304b-SAS-FoodSuppl    INDIA        Control                0       13     70
8+          0-6 months    ki1000304b-SAS-FoodSuppl    INDIA        Control                1        6     70
8+          0-6 months    ki1000304b-SAS-FoodSuppl    INDIA        Other                  0       29     70
8+          0-6 months    ki1000304b-SAS-FoodSuppl    INDIA        Other                  1       22     70
6-7         0-6 months    ki1000304b-SAS-FoodSuppl    INDIA        Control                0       22    126
6-7         0-6 months    ki1000304b-SAS-FoodSuppl    INDIA        Control                1       14    126
6-7         0-6 months    ki1000304b-SAS-FoodSuppl    INDIA        Other                  0       57    126
6-7         0-6 months    ki1000304b-SAS-FoodSuppl    INDIA        Other                  1       33    126
3 or less   0-6 months    ki1000304b-SAS-FoodSuppl    INDIA        Control                0        5     38
3 or less   0-6 months    ki1000304b-SAS-FoodSuppl    INDIA        Control                1        4     38
3 or less   0-6 months    ki1000304b-SAS-FoodSuppl    INDIA        Other                  0       21     38
3 or less   0-6 months    ki1000304b-SAS-FoodSuppl    INDIA        Other                  1        8     38
4-5         0-6 months    ki1017093b-PROVIDE          BANGLADESH   Control                0       69    299
4-5         0-6 months    ki1017093b-PROVIDE          BANGLADESH   Control                1       13    299
4-5         0-6 months    ki1017093b-PROVIDE          BANGLADESH   Other                  0      189    299
4-5         0-6 months    ki1017093b-PROVIDE          BANGLADESH   Other                  1       28    299
8+          0-6 months    ki1017093b-PROVIDE          BANGLADESH   Control                0       18     85
8+          0-6 months    ki1017093b-PROVIDE          BANGLADESH   Control                1        2     85
8+          0-6 months    ki1017093b-PROVIDE          BANGLADESH   Other                  0       53     85
8+          0-6 months    ki1017093b-PROVIDE          BANGLADESH   Other                  1       12     85
6-7         0-6 months    ki1017093b-PROVIDE          BANGLADESH   Control                0       32    137
6-7         0-6 months    ki1017093b-PROVIDE          BANGLADESH   Control                1        4    137
6-7         0-6 months    ki1017093b-PROVIDE          BANGLADESH   Other                  0       91    137
6-7         0-6 months    ki1017093b-PROVIDE          BANGLADESH   Other                  1       10    137
3 or less   0-6 months    ki1017093b-PROVIDE          BANGLADESH   Control                0       23    119
3 or less   0-6 months    ki1017093b-PROVIDE          BANGLADESH   Control                1        5    119
3 or less   0-6 months    ki1017093b-PROVIDE          BANGLADESH   Other                  0       76    119
3 or less   0-6 months    ki1017093b-PROVIDE          BANGLADESH   Other                  1       15    119
3 or less   0-6 months    ki1148112-iLiNS-DYAD-M      MALAWI       Control                0        1      6
3 or less   0-6 months    ki1148112-iLiNS-DYAD-M      MALAWI       Control                1        0      6
3 or less   0-6 months    ki1148112-iLiNS-DYAD-M      MALAWI       Maternal               0        3      6
3 or less   0-6 months    ki1148112-iLiNS-DYAD-M      MALAWI       Maternal               1        2      6
8+          0-6 months    ki1148112-iLiNS-DYAD-M      MALAWI       Maternal               0        1      1
6-7         0-6 months    ki1148112-iLiNS-DYAD-M      MALAWI       Control                0        0      3
6-7         0-6 months    ki1148112-iLiNS-DYAD-M      MALAWI       Control                1        1      3
6-7         0-6 months    ki1148112-iLiNS-DYAD-M      MALAWI       Maternal               0        1      3
6-7         0-6 months    ki1148112-iLiNS-DYAD-M      MALAWI       Maternal               1        1      3
4-5         0-6 months    ki1148112-iLiNS-DYAD-M      MALAWI       Control                0        1      8
4-5         0-6 months    ki1148112-iLiNS-DYAD-M      MALAWI       Control                1        0      8
4-5         0-6 months    ki1148112-iLiNS-DYAD-M      MALAWI       Maternal               0        6      8
4-5         0-6 months    ki1148112-iLiNS-DYAD-M      MALAWI       Maternal               1        1      8
8+          0-6 months    ki1148112-LCNI-5            MALAWI       Control                0        5     21
8+          0-6 months    ki1148112-LCNI-5            MALAWI       Control                1        2     21
8+          0-6 months    ki1148112-LCNI-5            MALAWI       LNS                    0       12     21
8+          0-6 months    ki1148112-LCNI-5            MALAWI       LNS                    1        0     21
8+          0-6 months    ki1148112-LCNI-5            MALAWI       Other                  0        0     21
8+          0-6 months    ki1148112-LCNI-5            MALAWI       Other                  1        2     21
6-7         0-6 months    ki1148112-LCNI-5            MALAWI       Control                0        8     67
6-7         0-6 months    ki1148112-LCNI-5            MALAWI       Control                1        5     67
6-7         0-6 months    ki1148112-LCNI-5            MALAWI       LNS                    0       27     67
6-7         0-6 months    ki1148112-LCNI-5            MALAWI       LNS                    1       11     67
6-7         0-6 months    ki1148112-LCNI-5            MALAWI       Other                  0        8     67
6-7         0-6 months    ki1148112-LCNI-5            MALAWI       Other                  1        8     67
3 or less   0-6 months    ki1148112-LCNI-5            MALAWI       Control                0       12     70
3 or less   0-6 months    ki1148112-LCNI-5            MALAWI       Control                1        7     70
3 or less   0-6 months    ki1148112-LCNI-5            MALAWI       LNS                    0       23     70
3 or less   0-6 months    ki1148112-LCNI-5            MALAWI       LNS                    1       13     70
3 or less   0-6 months    ki1148112-LCNI-5            MALAWI       Other                  0       13     70
3 or less   0-6 months    ki1148112-LCNI-5            MALAWI       Other                  1        2     70
4-5         0-6 months    ki1148112-LCNI-5            MALAWI       Control                0       18    111
4-5         0-6 months    ki1148112-LCNI-5            MALAWI       Control                1       10    111
4-5         0-6 months    ki1148112-LCNI-5            MALAWI       LNS                    0       31    111
4-5         0-6 months    ki1148112-LCNI-5            MALAWI       LNS                    1       20    111
4-5         0-6 months    ki1148112-LCNI-5            MALAWI       Other                  0       17    111
4-5         0-6 months    ki1148112-LCNI-5            MALAWI       Other                  1       15    111
3 or less   6-24 months   ki1000107-Serrinha-VitA     BRAZIL       Control                0       34     69
3 or less   6-24 months   ki1000107-Serrinha-VitA     BRAZIL       Control                1        1     69
3 or less   6-24 months   ki1000107-Serrinha-VitA     BRAZIL       VitA                   0       31     69
3 or less   6-24 months   ki1000107-Serrinha-VitA     BRAZIL       VitA                   1        3     69
4-5         6-24 months   ki1000107-Serrinha-VitA     BRAZIL       Control                0       54    127
4-5         6-24 months   ki1000107-Serrinha-VitA     BRAZIL       Control                1        6    127
4-5         6-24 months   ki1000107-Serrinha-VitA     BRAZIL       VitA                   0       63    127
4-5         6-24 months   ki1000107-Serrinha-VitA     BRAZIL       VitA                   1        4    127
8+          6-24 months   ki1000107-Serrinha-VitA     BRAZIL       Control                0       22     46
8+          6-24 months   ki1000107-Serrinha-VitA     BRAZIL       Control                1        1     46
8+          6-24 months   ki1000107-Serrinha-VitA     BRAZIL       VitA                   0       22     46
8+          6-24 months   ki1000107-Serrinha-VitA     BRAZIL       VitA                   1        1     46
6-7         6-24 months   ki1000107-Serrinha-VitA     BRAZIL       Control                0       39     82
6-7         6-24 months   ki1000107-Serrinha-VitA     BRAZIL       Control                1        4     82
6-7         6-24 months   ki1000107-Serrinha-VitA     BRAZIL       VitA                   0       33     82
6-7         6-24 months   ki1000107-Serrinha-VitA     BRAZIL       VitA                   1        6     82
3 or less   6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH   Control                0      259   1223
3 or less   6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH   Control                1       55   1223
3 or less   6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH   LNS                    0      270   1223
3 or less   6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH   LNS                    1       40   1223
3 or less   6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH   Other                  0      487   1223
3 or less   6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH   Other                  1      112   1223
4-5         6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH   Control                0      262   1460
4-5         6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH   Control                1       80   1460
4-5         6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH   LNS                    0      316   1460
4-5         6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH   LNS                    1       66   1460
4-5         6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH   Other                  0      577   1460
4-5         6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH   Other                  1      159   1460
8+          6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH   Control                0       88    405
8+          6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH   Control                1       17    405
8+          6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH   LNS                    0       90    405
8+          6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH   LNS                    1       11    405
8+          6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH   Other                  0      168    405
8+          6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH   Other                  1       31    405
6-7         6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH   Control                0      120    638
6-7         6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH   Control                1       29    638
6-7         6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH   LNS                    0      147    638
6-7         6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH   LNS                    1       25    638
6-7         6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH   Other                  0      247    638
6-7         6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH   Other                  1       70    638
8+          6-24 months   ki1000111-WASH-Kenya        KENYA        Control                0      710   2259
8+          6-24 months   ki1000111-WASH-Kenya        KENYA        Control                1       52   2259
8+          6-24 months   ki1000111-WASH-Kenya        KENYA        LNS                    0      497   2259
8+          6-24 months   ki1000111-WASH-Kenya        KENYA        LNS                    1       26   2259
8+          6-24 months   ki1000111-WASH-Kenya        KENYA        Other                  0      900   2259
8+          6-24 months   ki1000111-WASH-Kenya        KENYA        Other                  1       74   2259
4-5         6-24 months   ki1000111-WASH-Kenya        KENYA        Control                0      399   1218
4-5         6-24 months   ki1000111-WASH-Kenya        KENYA        Control                1       25   1218
4-5         6-24 months   ki1000111-WASH-Kenya        KENYA        LNS                    0      271   1218
4-5         6-24 months   ki1000111-WASH-Kenya        KENYA        LNS                    1       18   1218
4-5         6-24 months   ki1000111-WASH-Kenya        KENYA        Other                  0      458   1218
4-5         6-24 months   ki1000111-WASH-Kenya        KENYA        Other                  1       47   1218
3 or less   6-24 months   ki1000111-WASH-Kenya        KENYA        Control                0      230    707
3 or less   6-24 months   ki1000111-WASH-Kenya        KENYA        Control                1       10    707
3 or less   6-24 months   ki1000111-WASH-Kenya        KENYA        LNS                    0      146    707
3 or less   6-24 months   ki1000111-WASH-Kenya        KENYA        LNS                    1        9    707
3 or less   6-24 months   ki1000111-WASH-Kenya        KENYA        Other                  0      287    707
3 or less   6-24 months   ki1000111-WASH-Kenya        KENYA        Other                  1       25    707
6-7         6-24 months   ki1000111-WASH-Kenya        KENYA        Control                0      373   1148
6-7         6-24 months   ki1000111-WASH-Kenya        KENYA        Control                1       27   1148
6-7         6-24 months   ki1000111-WASH-Kenya        KENYA        LNS                    0      234   1148
6-7         6-24 months   ki1000111-WASH-Kenya        KENYA        LNS                    1       14   1148
6-7         6-24 months   ki1000111-WASH-Kenya        KENYA        Other                  0      472   1148
6-7         6-24 months   ki1000111-WASH-Kenya        KENYA        Other                  1       28   1148
8+          6-24 months   ki1000304-Vitamin-B12       INDIA        Control                0       22    108
8+          6-24 months   ki1000304-Vitamin-B12       INDIA        Control                1        2    108
8+          6-24 months   ki1000304-Vitamin-B12       INDIA        Other                  0       78    108
8+          6-24 months   ki1000304-Vitamin-B12       INDIA        Other                  1        6    108
6-7         6-24 months   ki1000304-Vitamin-B12       INDIA        Control                0       28    127
6-7         6-24 months   ki1000304-Vitamin-B12       INDIA        Control                1        1    127
6-7         6-24 months   ki1000304-Vitamin-B12       INDIA        Other                  0       86    127
6-7         6-24 months   ki1000304-Vitamin-B12       INDIA        Other                  1       12    127
4-5         6-24 months   ki1000304-Vitamin-B12       INDIA        Control                0       35    189
4-5         6-24 months   ki1000304-Vitamin-B12       INDIA        Control                1        5    189
4-5         6-24 months   ki1000304-Vitamin-B12       INDIA        Other                  0      131    189
4-5         6-24 months   ki1000304-Vitamin-B12       INDIA        Other                  1       18    189
3 or less   6-24 months   ki1000304-Vitamin-B12       INDIA        Control                0       19     80
3 or less   6-24 months   ki1000304-Vitamin-B12       INDIA        Control                1        2     80
3 or less   6-24 months   ki1000304-Vitamin-B12       INDIA        Other                  0       55     80
3 or less   6-24 months   ki1000304-Vitamin-B12       INDIA        Other                  1        4     80
4-5         6-24 months   ki1000304-ZnMort            INDIA        Control                0      174    372
4-5         6-24 months   ki1000304-ZnMort            INDIA        Zinc                   0      198    372
8+          6-24 months   ki1000304-ZnMort            INDIA        Control                0       84    171
8+          6-24 months   ki1000304-ZnMort            INDIA        Zinc                   0       87    171
6-7         6-24 months   ki1000304-ZnMort            INDIA        Control                0      127    226
6-7         6-24 months   ki1000304-ZnMort            INDIA        Zinc                   0       99    226
3 or less   6-24 months   ki1000304-ZnMort            INDIA        Control                0       51    117
3 or less   6-24 months   ki1000304-ZnMort            INDIA        Zinc                   0       66    117
4-5         6-24 months   ki1000304b-SAS-FoodSuppl    INDIA        Control                0        6     98
4-5         6-24 months   ki1000304b-SAS-FoodSuppl    INDIA        Control                1       11     98
4-5         6-24 months   ki1000304b-SAS-FoodSuppl    INDIA        Other                  0       38     98
4-5         6-24 months   ki1000304b-SAS-FoodSuppl    INDIA        Other                  1       43     98
6-7         6-24 months   ki1000304b-SAS-FoodSuppl    INDIA        Control                0        9     69
6-7         6-24 months   ki1000304b-SAS-FoodSuppl    INDIA        Control                1       10     69
6-7         6-24 months   ki1000304b-SAS-FoodSuppl    INDIA        Other                  0       19     69
6-7         6-24 months   ki1000304b-SAS-FoodSuppl    INDIA        Other                  1       31     69
8+          6-24 months   ki1000304b-SAS-FoodSuppl    INDIA        Control                0        1     34
8+          6-24 months   ki1000304b-SAS-FoodSuppl    INDIA        Control                1        7     34
8+          6-24 months   ki1000304b-SAS-FoodSuppl    INDIA        Other                  0       11     34
8+          6-24 months   ki1000304b-SAS-FoodSuppl    INDIA        Other                  1       15     34
3 or less   6-24 months   ki1000304b-SAS-FoodSuppl    INDIA        Control                0        3     25
3 or less   6-24 months   ki1000304b-SAS-FoodSuppl    INDIA        Control                1        1     25
3 or less   6-24 months   ki1000304b-SAS-FoodSuppl    INDIA        Other                  0       12     25
3 or less   6-24 months   ki1000304b-SAS-FoodSuppl    INDIA        Other                  1        9     25
4-5         6-24 months   ki1017093b-PROVIDE          BANGLADESH   Control                0       47    236
4-5         6-24 months   ki1017093b-PROVIDE          BANGLADESH   Control                1       16    236
4-5         6-24 months   ki1017093b-PROVIDE          BANGLADESH   Other                  0      131    236
4-5         6-24 months   ki1017093b-PROVIDE          BANGLADESH   Other                  1       42    236
8+          6-24 months   ki1017093b-PROVIDE          BANGLADESH   Control                0       14     65
8+          6-24 months   ki1017093b-PROVIDE          BANGLADESH   Control                1        3     65
8+          6-24 months   ki1017093b-PROVIDE          BANGLADESH   Other                  0       38     65
8+          6-24 months   ki1017093b-PROVIDE          BANGLADESH   Other                  1       10     65
6-7         6-24 months   ki1017093b-PROVIDE          BANGLADESH   Control                0       25    107
6-7         6-24 months   ki1017093b-PROVIDE          BANGLADESH   Control                1        3    107
6-7         6-24 months   ki1017093b-PROVIDE          BANGLADESH   Other                  0       53    107
6-7         6-24 months   ki1017093b-PROVIDE          BANGLADESH   Other                  1       26    107
3 or less   6-24 months   ki1017093b-PROVIDE          BANGLADESH   Control                0       15     89
3 or less   6-24 months   ki1017093b-PROVIDE          BANGLADESH   Control                1        3     89
3 or less   6-24 months   ki1017093b-PROVIDE          BANGLADESH   Other                  0       55     89
3 or less   6-24 months   ki1017093b-PROVIDE          BANGLADESH   Other                  1       16     89
4-5         6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI       Control                0       13     67
4-5         6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI       Control                1        2     67
4-5         6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI       Maternal               0       34     67
4-5         6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI       Maternal               1       18     67
3 or less   6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI       Control                0       20     79
3 or less   6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI       Control                1        8     79
3 or less   6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI       Maternal               0       34     79
3 or less   6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI       Maternal               1       17     79
8+          6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI       Control                0        6     27
8+          6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI       Control                1        4     27
8+          6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI       Maternal               0       10     27
8+          6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI       Maternal               1        7     27
6-7         6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI       Control                0        9     44
6-7         6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI       Control                1        5     44
6-7         6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI       Maternal               0       24     44
6-7         6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI       Maternal               1        6     44
8+          6-24 months   ki1148112-LCNI-5            MALAWI       Control                0       10     51
8+          6-24 months   ki1148112-LCNI-5            MALAWI       Control                1        2     51
8+          6-24 months   ki1148112-LCNI-5            MALAWI       LNS                    0       22     51
8+          6-24 months   ki1148112-LCNI-5            MALAWI       LNS                    1       10     51
8+          6-24 months   ki1148112-LCNI-5            MALAWI       Other                  0        7     51
8+          6-24 months   ki1148112-LCNI-5            MALAWI       Other                  1        0     51
6-7         6-24 months   ki1148112-LCNI-5            MALAWI       Control                0       21    132
6-7         6-24 months   ki1148112-LCNI-5            MALAWI       Control                1       11    132
6-7         6-24 months   ki1148112-LCNI-5            MALAWI       LNS                    0       47    132
6-7         6-24 months   ki1148112-LCNI-5            MALAWI       LNS                    1       24    132
6-7         6-24 months   ki1148112-LCNI-5            MALAWI       Other                  0       20    132
6-7         6-24 months   ki1148112-LCNI-5            MALAWI       Other                  1        9    132
3 or less   6-24 months   ki1148112-LCNI-5            MALAWI       Control                0       26    158
3 or less   6-24 months   ki1148112-LCNI-5            MALAWI       Control                1       14    158
3 or less   6-24 months   ki1148112-LCNI-5            MALAWI       LNS                    0       53    158
3 or less   6-24 months   ki1148112-LCNI-5            MALAWI       LNS                    1       20    158
3 or less   6-24 months   ki1148112-LCNI-5            MALAWI       Other                  0       31    158
3 or less   6-24 months   ki1148112-LCNI-5            MALAWI       Other                  1       14    158
4-5         6-24 months   ki1148112-LCNI-5            MALAWI       Control                0       41    238
4-5         6-24 months   ki1148112-LCNI-5            MALAWI       Control                1       16    238
4-5         6-24 months   ki1148112-LCNI-5            MALAWI       LNS                    0       82    238
4-5         6-24 months   ki1148112-LCNI-5            MALAWI       LNS                    1       37    238
4-5         6-24 months   ki1148112-LCNI-5            MALAWI       Other                  0       39    238
4-5         6-24 months   ki1148112-LCNI-5            MALAWI       Other                  1       23    238
3 or less   0-24 months   ki1000107-Serrinha-VitA     BRAZIL       Control                0       34     77
3 or less   0-24 months   ki1000107-Serrinha-VitA     BRAZIL       Control                1        4     77
3 or less   0-24 months   ki1000107-Serrinha-VitA     BRAZIL       VitA                   0       31     77
3 or less   0-24 months   ki1000107-Serrinha-VitA     BRAZIL       VitA                   1        8     77
4-5         0-24 months   ki1000107-Serrinha-VitA     BRAZIL       Control                0       54    153
4-5         0-24 months   ki1000107-Serrinha-VitA     BRAZIL       Control                1       17    153
4-5         0-24 months   ki1000107-Serrinha-VitA     BRAZIL       VitA                   0       60    153
4-5         0-24 months   ki1000107-Serrinha-VitA     BRAZIL       VitA                   1       22    153
8+          0-24 months   ki1000107-Serrinha-VitA     BRAZIL       Control                0       21     65
8+          0-24 months   ki1000107-Serrinha-VitA     BRAZIL       Control                1        9     65
8+          0-24 months   ki1000107-Serrinha-VitA     BRAZIL       VitA                   0       22     65
8+          0-24 months   ki1000107-Serrinha-VitA     BRAZIL       VitA                   1       13     65
6-7         0-24 months   ki1000107-Serrinha-VitA     BRAZIL       Control                0       39    114
6-7         0-24 months   ki1000107-Serrinha-VitA     BRAZIL       Control                1       21    114
6-7         0-24 months   ki1000107-Serrinha-VitA     BRAZIL       VitA                   0       33    114
6-7         0-24 months   ki1000107-Serrinha-VitA     BRAZIL       VitA                   1       21    114
3 or less   0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH   Control                0      251   1602
3 or less   0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH   Control                1      156   1602
3 or less   0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH   LNS                    0      264   1602
3 or less   0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH   LNS                    1      131   1602
3 or less   0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH   Other                  0      476   1602
3 or less   0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH   Other                  1      324   1602
4-5         0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH   Control                0      258   1916
4-5         0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH   Control                1      194   1916
4-5         0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH   LNS                    0      312   1916
4-5         0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH   LNS                    1      173   1916
4-5         0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH   Other                  0      565   1916
4-5         0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH   Other                  1      414   1916
8+          0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH   Control                0       86    479
8+          0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH   Control                1       36    479
8+          0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH   LNS                    0       87    479
8+          0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH   LNS                    1       32    479
8+          0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH   Other                  0      166    479
8+          0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH   Other                  1       72    479
6-7         0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH   Control                0      116    820
6-7         0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH   Control                1       79    820
6-7         0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH   LNS                    0      145    820
6-7         0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH   LNS                    1       67    820
6-7         0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH   Other                  0      246    820
6-7         0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH   Other                  1      167    820
8+          0-24 months   ki1000111-WASH-Kenya        KENYA        Control                0      714   2870
8+          0-24 months   ki1000111-WASH-Kenya        KENYA        Control                1      267   2870
8+          0-24 months   ki1000111-WASH-Kenya        KENYA        LNS                    0      501   2870
8+          0-24 months   ki1000111-WASH-Kenya        KENYA        LNS                    1      142   2870
8+          0-24 months   ki1000111-WASH-Kenya        KENYA        Other                  0      907   2870
8+          0-24 months   ki1000111-WASH-Kenya        KENYA        Other                  1      339   2870
4-5         0-24 months   ki1000111-WASH-Kenya        KENYA        Control                0      398   1522
4-5         0-24 months   ki1000111-WASH-Kenya        KENYA        Control                1      124   1522
4-5         0-24 months   ki1000111-WASH-Kenya        KENYA        LNS                    0      270   1522
4-5         0-24 months   ki1000111-WASH-Kenya        KENYA        LNS                    1       71   1522
4-5         0-24 months   ki1000111-WASH-Kenya        KENYA        Other                  0      464   1522
4-5         0-24 months   ki1000111-WASH-Kenya        KENYA        Other                  1      195   1522
3 or less   0-24 months   ki1000111-WASH-Kenya        KENYA        Control                0      232    858
3 or less   0-24 months   ki1000111-WASH-Kenya        KENYA        Control                1       61    858
3 or less   0-24 months   ki1000111-WASH-Kenya        KENYA        LNS                    0      150    858
3 or less   0-24 months   ki1000111-WASH-Kenya        KENYA        LNS                    1       30    858
3 or less   0-24 months   ki1000111-WASH-Kenya        KENYA        Other                  0      290    858
3 or less   0-24 months   ki1000111-WASH-Kenya        KENYA        Other                  1       95    858
6-7         0-24 months   ki1000111-WASH-Kenya        KENYA        Control                0      377   1454
6-7         0-24 months   ki1000111-WASH-Kenya        KENYA        Control                1      126   1454
6-7         0-24 months   ki1000111-WASH-Kenya        KENYA        LNS                    0      234   1454
6-7         0-24 months   ki1000111-WASH-Kenya        KENYA        LNS                    1       76   1454
6-7         0-24 months   ki1000111-WASH-Kenya        KENYA        Other                  0      472   1454
6-7         0-24 months   ki1000111-WASH-Kenya        KENYA        Other                  1      169   1454
6-7         0-24 months   ki1000304-Vitamin-B12       INDIA        Control                0       27    206
6-7         0-24 months   ki1000304-Vitamin-B12       INDIA        Control                1       24    206
6-7         0-24 months   ki1000304-Vitamin-B12       INDIA        Other                  0       79    206
6-7         0-24 months   ki1000304-Vitamin-B12       INDIA        Other                  1       76    206
8+          0-24 months   ki1000304-Vitamin-B12       INDIA        Control                0       21    187
8+          0-24 months   ki1000304-Vitamin-B12       INDIA        Control                1       27    187
8+          0-24 months   ki1000304-Vitamin-B12       INDIA        Other                  0       73    187
8+          0-24 months   ki1000304-Vitamin-B12       INDIA        Other                  1       66    187
3 or less   0-24 months   ki1000304-Vitamin-B12       INDIA        Control                0       19    117
3 or less   0-24 months   ki1000304-Vitamin-B12       INDIA        Control                1       18    117
3 or less   0-24 months   ki1000304-Vitamin-B12       INDIA        Other                  0       49    117
3 or less   0-24 months   ki1000304-Vitamin-B12       INDIA        Other                  1       31    117
4-5         0-24 months   ki1000304-Vitamin-B12       INDIA        Control                0       32    294
4-5         0-24 months   ki1000304-Vitamin-B12       INDIA        Control                1       30    294
4-5         0-24 months   ki1000304-Vitamin-B12       INDIA        Other                  0      124    294
4-5         0-24 months   ki1000304-Vitamin-B12       INDIA        Other                  1      108    294
4-5         0-24 months   ki1000304-ZnMort            INDIA        Control                0      192    856
4-5         0-24 months   ki1000304-ZnMort            INDIA        Control                1      234    856
4-5         0-24 months   ki1000304-ZnMort            INDIA        Zinc                   0      217    856
4-5         0-24 months   ki1000304-ZnMort            INDIA        Zinc                   1      213    856
8+          0-24 months   ki1000304-ZnMort            INDIA        Control                0       96    409
8+          0-24 months   ki1000304-ZnMort            INDIA        Control                1       94    409
8+          0-24 months   ki1000304-ZnMort            INDIA        Zinc                   0      106    409
8+          0-24 months   ki1000304-ZnMort            INDIA        Zinc                   1      113    409
6-7         0-24 months   ki1000304-ZnMort            INDIA        Control                0      142    541
6-7         0-24 months   ki1000304-ZnMort            INDIA        Control                1      146    541
6-7         0-24 months   ki1000304-ZnMort            INDIA        Zinc                   0      110    541
6-7         0-24 months   ki1000304-ZnMort            INDIA        Zinc                   1      143    541
3 or less   0-24 months   ki1000304-ZnMort            INDIA        Control                0       60    230
3 or less   0-24 months   ki1000304-ZnMort            INDIA        Control                1       49    230
3 or less   0-24 months   ki1000304-ZnMort            INDIA        Zinc                   0       72    230
3 or less   0-24 months   ki1000304-ZnMort            INDIA        Zinc                   1       49    230
4-5         0-24 months   ki1000304b-SAS-FoodSuppl    INDIA        Control                0        7    183
4-5         0-24 months   ki1000304b-SAS-FoodSuppl    INDIA        Control                1       34    183
4-5         0-24 months   ki1000304b-SAS-FoodSuppl    INDIA        Other                  0       41    183
4-5         0-24 months   ki1000304b-SAS-FoodSuppl    INDIA        Other                  1      101    183
8+          0-24 months   ki1000304b-SAS-FoodSuppl    INDIA        Control                0        2     70
8+          0-24 months   ki1000304b-SAS-FoodSuppl    INDIA        Control                1       17     70
8+          0-24 months   ki1000304b-SAS-FoodSuppl    INDIA        Other                  0       14     70
8+          0-24 months   ki1000304b-SAS-FoodSuppl    INDIA        Other                  1       37     70
6-7         0-24 months   ki1000304b-SAS-FoodSuppl    INDIA        Control                0        8    127
6-7         0-24 months   ki1000304b-SAS-FoodSuppl    INDIA        Control                1       29    127
6-7         0-24 months   ki1000304b-SAS-FoodSuppl    INDIA        Other                  0       20    127
6-7         0-24 months   ki1000304b-SAS-FoodSuppl    INDIA        Other                  1       70    127
3 or less   0-24 months   ki1000304b-SAS-FoodSuppl    INDIA        Control                0        3     38
3 or less   0-24 months   ki1000304b-SAS-FoodSuppl    INDIA        Control                1        6     38
3 or less   0-24 months   ki1000304b-SAS-FoodSuppl    INDIA        Other                  0       11     38
3 or less   0-24 months   ki1000304b-SAS-FoodSuppl    INDIA        Other                  1       18     38
4-5         0-24 months   ki1017093b-PROVIDE          BANGLADESH   Control                0       48    299
4-5         0-24 months   ki1017093b-PROVIDE          BANGLADESH   Control                1       34    299
4-5         0-24 months   ki1017093b-PROVIDE          BANGLADESH   Other                  0      128    299
4-5         0-24 months   ki1017093b-PROVIDE          BANGLADESH   Other                  1       89    299
8+          0-24 months   ki1017093b-PROVIDE          BANGLADESH   Control                0       14     85
8+          0-24 months   ki1017093b-PROVIDE          BANGLADESH   Control                1        6     85
8+          0-24 months   ki1017093b-PROVIDE          BANGLADESH   Other                  0       38     85
8+          0-24 months   ki1017093b-PROVIDE          BANGLADESH   Other                  1       27     85
6-7         0-24 months   ki1017093b-PROVIDE          BANGLADESH   Control                0       24    137
6-7         0-24 months   ki1017093b-PROVIDE          BANGLADESH   Control                1       12    137
6-7         0-24 months   ki1017093b-PROVIDE          BANGLADESH   Other                  0       56    137
6-7         0-24 months   ki1017093b-PROVIDE          BANGLADESH   Other                  1       45    137
3 or less   0-24 months   ki1017093b-PROVIDE          BANGLADESH   Control                0       15    120
3 or less   0-24 months   ki1017093b-PROVIDE          BANGLADESH   Control                1       13    120
3 or less   0-24 months   ki1017093b-PROVIDE          BANGLADESH   Other                  0       56    120
3 or less   0-24 months   ki1017093b-PROVIDE          BANGLADESH   Other                  1       36    120
4-5         0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI       Control                0       12     85
4-5         0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI       Control                1        9     85
4-5         0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI       Maternal               0       30     85
4-5         0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI       Maternal               1       34     85
3 or less   0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI       Control                0       20     98
3 or less   0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI       Control                1       13     98
3 or less   0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI       Maternal               0       33     98
3 or less   0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI       Maternal               1       32     98
8+          0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI       Control                0        6     30
8+          0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI       Control                1        6     30
8+          0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI       Maternal               0       10     30
8+          0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI       Maternal               1        8     30
6-7         0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI       Control                0        8     58
6-7         0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI       Control                1       11     58
6-7         0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI       Maternal               0       24     58
6-7         0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI       Maternal               1       15     58
6-7         0-24 months   ki1148112-LCNI-5            MALAWI       Control                0       19    182
6-7         0-24 months   ki1148112-LCNI-5            MALAWI       Control                1       26    182
6-7         0-24 months   ki1148112-LCNI-5            MALAWI       LNS                    0       37    182
6-7         0-24 months   ki1148112-LCNI-5            MALAWI       LNS                    1       56    182
6-7         0-24 months   ki1148112-LCNI-5            MALAWI       Other                  0       17    182
6-7         0-24 months   ki1148112-LCNI-5            MALAWI       Other                  1       27    182
8+          0-24 months   ki1148112-LCNI-5            MALAWI       Control                0        9     70
8+          0-24 months   ki1148112-LCNI-5            MALAWI       Control                1        7     70
8+          0-24 months   ki1148112-LCNI-5            MALAWI       LNS                    0       18     70
8+          0-24 months   ki1148112-LCNI-5            MALAWI       LNS                    1       23     70
8+          0-24 months   ki1148112-LCNI-5            MALAWI       Other                  0        5     70
8+          0-24 months   ki1148112-LCNI-5            MALAWI       Other                  1        8     70
3 or less   0-24 months   ki1148112-LCNI-5            MALAWI       Control                0       27    225
3 or less   0-24 months   ki1148112-LCNI-5            MALAWI       Control                1       33    225
3 or less   0-24 months   ki1148112-LCNI-5            MALAWI       LNS                    0       47    225
3 or less   0-24 months   ki1148112-LCNI-5            MALAWI       LNS                    1       57    225
3 or less   0-24 months   ki1148112-LCNI-5            MALAWI       Other                  0       29    225
3 or less   0-24 months   ki1148112-LCNI-5            MALAWI       Other                  1       32    225
4-5         0-24 months   ki1148112-LCNI-5            MALAWI       Control                0       37    340
4-5         0-24 months   ki1148112-LCNI-5            MALAWI       Control                1       42    340
4-5         0-24 months   ki1148112-LCNI-5            MALAWI       LNS                    0       73    340
4-5         0-24 months   ki1148112-LCNI-5            MALAWI       LNS                    1      100    340
4-5         0-24 months   ki1148112-LCNI-5            MALAWI       Other                  0       31    340
4-5         0-24 months   ki1148112-LCNI-5            MALAWI       Other                  1       57    340
3 or less   0-6 months    iLiNS_DYADM_LNS             MALAWI       Control                0        1      3
3 or less   0-6 months    iLiNS_DYADM_LNS             MALAWI       Control                1        0      3
3 or less   0-6 months    iLiNS_DYADM_LNS             MALAWI       LNS                    0        1      3
3 or less   0-6 months    iLiNS_DYADM_LNS             MALAWI       LNS                    1        1      3
6-7         0-6 months    iLiNS_DYADM_LNS             MALAWI       Control                1        1      2
6-7         0-6 months    iLiNS_DYADM_LNS             MALAWI       LNS                    1        1      2
4-5         0-6 months    iLiNS_DYADM_LNS             MALAWI       Control                0        1      5
4-5         0-6 months    iLiNS_DYADM_LNS             MALAWI       LNS                    0        4      5
3 or less   6-24 months   iLiNS_DYADM_LNS             MALAWI       Control                0       20     57
3 or less   6-24 months   iLiNS_DYADM_LNS             MALAWI       Control                1        8     57
3 or less   6-24 months   iLiNS_DYADM_LNS             MALAWI       LNS                    0       16     57
3 or less   6-24 months   iLiNS_DYADM_LNS             MALAWI       LNS                    1       13     57
4-5         6-24 months   iLiNS_DYADM_LNS             MALAWI       Control                0       13     41
4-5         6-24 months   iLiNS_DYADM_LNS             MALAWI       Control                1        2     41
4-5         6-24 months   iLiNS_DYADM_LNS             MALAWI       LNS                    0       16     41
4-5         6-24 months   iLiNS_DYADM_LNS             MALAWI       LNS                    1       10     41
6-7         6-24 months   iLiNS_DYADM_LNS             MALAWI       Control                0        9     26
6-7         6-24 months   iLiNS_DYADM_LNS             MALAWI       Control                1        5     26
6-7         6-24 months   iLiNS_DYADM_LNS             MALAWI       LNS                    0       11     26
6-7         6-24 months   iLiNS_DYADM_LNS             MALAWI       LNS                    1        1     26
8+          6-24 months   iLiNS_DYADM_LNS             MALAWI       Control                0        6     19
8+          6-24 months   iLiNS_DYADM_LNS             MALAWI       Control                1        4     19
8+          6-24 months   iLiNS_DYADM_LNS             MALAWI       LNS                    0        4     19
8+          6-24 months   iLiNS_DYADM_LNS             MALAWI       LNS                    1        5     19
3 or less   0-24 months   iLiNS_DYADM_LNS             MALAWI       Control                0       20     67
3 or less   0-24 months   iLiNS_DYADM_LNS             MALAWI       Control                1       13     67
3 or less   0-24 months   iLiNS_DYADM_LNS             MALAWI       LNS                    0       16     67
3 or less   0-24 months   iLiNS_DYADM_LNS             MALAWI       LNS                    1       18     67
4-5         0-24 months   iLiNS_DYADM_LNS             MALAWI       Control                0       12     56
4-5         0-24 months   iLiNS_DYADM_LNS             MALAWI       Control                1        9     56
4-5         0-24 months   iLiNS_DYADM_LNS             MALAWI       LNS                    0       15     56
4-5         0-24 months   iLiNS_DYADM_LNS             MALAWI       LNS                    1       20     56
6-7         0-24 months   iLiNS_DYADM_LNS             MALAWI       Control                0        8     35
6-7         0-24 months   iLiNS_DYADM_LNS             MALAWI       Control                1       11     35
6-7         0-24 months   iLiNS_DYADM_LNS             MALAWI       LNS                    0       11     35
6-7         0-24 months   iLiNS_DYADM_LNS             MALAWI       LNS                    1        5     35
8+          0-24 months   iLiNS_DYADM_LNS             MALAWI       Control                0        6     22
8+          0-24 months   iLiNS_DYADM_LNS             MALAWI       Control                1        6     22
8+          0-24 months   iLiNS_DYADM_LNS             MALAWI       LNS                    0        4     22
8+          0-24 months   iLiNS_DYADM_LNS             MALAWI       LNS                    1        6     22


The following strata were considered:

* nhh: 3 or less, agecat: 0-24 months, studyid: iLiNS_DYADM_LNS, country: MALAWI
* nhh: 3 or less, agecat: 0-24 months, studyid: ki1000107-Serrinha-VitA, country: BRAZIL
* nhh: 3 or less, agecat: 0-24 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* nhh: 3 or less, agecat: 0-24 months, studyid: ki1000111-WASH-Kenya, country: KENYA
* nhh: 3 or less, agecat: 0-24 months, studyid: ki1000304-Vitamin-B12, country: INDIA
* nhh: 3 or less, agecat: 0-24 months, studyid: ki1000304-ZnMort, country: INDIA
* nhh: 3 or less, agecat: 0-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* nhh: 3 or less, agecat: 0-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* nhh: 3 or less, agecat: 0-24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* nhh: 3 or less, agecat: 0-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* nhh: 3 or less, agecat: 0-6 months, studyid: iLiNS_DYADM_LNS, country: MALAWI
* nhh: 3 or less, agecat: 0-6 months, studyid: ki1000107-Serrinha-VitA, country: BRAZIL
* nhh: 3 or less, agecat: 0-6 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* nhh: 3 or less, agecat: 0-6 months, studyid: ki1000111-WASH-Kenya, country: KENYA
* nhh: 3 or less, agecat: 0-6 months, studyid: ki1000304-ZnMort, country: INDIA
* nhh: 3 or less, agecat: 0-6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* nhh: 3 or less, agecat: 0-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* nhh: 3 or less, agecat: 0-6 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* nhh: 3 or less, agecat: 0-6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* nhh: 3 or less, agecat: 6-24 months, studyid: iLiNS_DYADM_LNS, country: MALAWI
* nhh: 3 or less, agecat: 6-24 months, studyid: ki1000107-Serrinha-VitA, country: BRAZIL
* nhh: 3 or less, agecat: 6-24 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* nhh: 3 or less, agecat: 6-24 months, studyid: ki1000111-WASH-Kenya, country: KENYA
* nhh: 3 or less, agecat: 6-24 months, studyid: ki1000304-Vitamin-B12, country: INDIA
* nhh: 3 or less, agecat: 6-24 months, studyid: ki1000304-ZnMort, country: INDIA
* nhh: 3 or less, agecat: 6-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* nhh: 3 or less, agecat: 6-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* nhh: 3 or less, agecat: 6-24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* nhh: 3 or less, agecat: 6-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* nhh: 4-5, agecat: 0-24 months, studyid: iLiNS_DYADM_LNS, country: MALAWI
* nhh: 4-5, agecat: 0-24 months, studyid: ki1000107-Serrinha-VitA, country: BRAZIL
* nhh: 4-5, agecat: 0-24 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* nhh: 4-5, agecat: 0-24 months, studyid: ki1000111-WASH-Kenya, country: KENYA
* nhh: 4-5, agecat: 0-24 months, studyid: ki1000304-Vitamin-B12, country: INDIA
* nhh: 4-5, agecat: 0-24 months, studyid: ki1000304-ZnMort, country: INDIA
* nhh: 4-5, agecat: 0-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* nhh: 4-5, agecat: 0-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* nhh: 4-5, agecat: 0-24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* nhh: 4-5, agecat: 0-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* nhh: 4-5, agecat: 0-6 months, studyid: iLiNS_DYADM_LNS, country: MALAWI
* nhh: 4-5, agecat: 0-6 months, studyid: ki1000107-Serrinha-VitA, country: BRAZIL
* nhh: 4-5, agecat: 0-6 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* nhh: 4-5, agecat: 0-6 months, studyid: ki1000111-WASH-Kenya, country: KENYA
* nhh: 4-5, agecat: 0-6 months, studyid: ki1000304-ZnMort, country: INDIA
* nhh: 4-5, agecat: 0-6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* nhh: 4-5, agecat: 0-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* nhh: 4-5, agecat: 0-6 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* nhh: 4-5, agecat: 0-6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* nhh: 4-5, agecat: 6-24 months, studyid: iLiNS_DYADM_LNS, country: MALAWI
* nhh: 4-5, agecat: 6-24 months, studyid: ki1000107-Serrinha-VitA, country: BRAZIL
* nhh: 4-5, agecat: 6-24 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* nhh: 4-5, agecat: 6-24 months, studyid: ki1000111-WASH-Kenya, country: KENYA
* nhh: 4-5, agecat: 6-24 months, studyid: ki1000304-Vitamin-B12, country: INDIA
* nhh: 4-5, agecat: 6-24 months, studyid: ki1000304-ZnMort, country: INDIA
* nhh: 4-5, agecat: 6-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* nhh: 4-5, agecat: 6-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* nhh: 4-5, agecat: 6-24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* nhh: 4-5, agecat: 6-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* nhh: 6-7, agecat: 0-24 months, studyid: iLiNS_DYADM_LNS, country: MALAWI
* nhh: 6-7, agecat: 0-24 months, studyid: ki1000107-Serrinha-VitA, country: BRAZIL
* nhh: 6-7, agecat: 0-24 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* nhh: 6-7, agecat: 0-24 months, studyid: ki1000111-WASH-Kenya, country: KENYA
* nhh: 6-7, agecat: 0-24 months, studyid: ki1000304-Vitamin-B12, country: INDIA
* nhh: 6-7, agecat: 0-24 months, studyid: ki1000304-ZnMort, country: INDIA
* nhh: 6-7, agecat: 0-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* nhh: 6-7, agecat: 0-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* nhh: 6-7, agecat: 0-24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* nhh: 6-7, agecat: 0-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* nhh: 6-7, agecat: 0-6 months, studyid: iLiNS_DYADM_LNS, country: MALAWI
* nhh: 6-7, agecat: 0-6 months, studyid: ki1000107-Serrinha-VitA, country: BRAZIL
* nhh: 6-7, agecat: 0-6 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* nhh: 6-7, agecat: 0-6 months, studyid: ki1000111-WASH-Kenya, country: KENYA
* nhh: 6-7, agecat: 0-6 months, studyid: ki1000304-ZnMort, country: INDIA
* nhh: 6-7, agecat: 0-6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* nhh: 6-7, agecat: 0-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* nhh: 6-7, agecat: 0-6 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* nhh: 6-7, agecat: 0-6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* nhh: 6-7, agecat: 6-24 months, studyid: iLiNS_DYADM_LNS, country: MALAWI
* nhh: 6-7, agecat: 6-24 months, studyid: ki1000107-Serrinha-VitA, country: BRAZIL
* nhh: 6-7, agecat: 6-24 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* nhh: 6-7, agecat: 6-24 months, studyid: ki1000111-WASH-Kenya, country: KENYA
* nhh: 6-7, agecat: 6-24 months, studyid: ki1000304-Vitamin-B12, country: INDIA
* nhh: 6-7, agecat: 6-24 months, studyid: ki1000304-ZnMort, country: INDIA
* nhh: 6-7, agecat: 6-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* nhh: 6-7, agecat: 6-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* nhh: 6-7, agecat: 6-24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* nhh: 6-7, agecat: 6-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* nhh: 8+, agecat: 0-24 months, studyid: iLiNS_DYADM_LNS, country: MALAWI
* nhh: 8+, agecat: 0-24 months, studyid: ki1000107-Serrinha-VitA, country: BRAZIL
* nhh: 8+, agecat: 0-24 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* nhh: 8+, agecat: 0-24 months, studyid: ki1000111-WASH-Kenya, country: KENYA
* nhh: 8+, agecat: 0-24 months, studyid: ki1000304-Vitamin-B12, country: INDIA
* nhh: 8+, agecat: 0-24 months, studyid: ki1000304-ZnMort, country: INDIA
* nhh: 8+, agecat: 0-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* nhh: 8+, agecat: 0-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* nhh: 8+, agecat: 0-24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* nhh: 8+, agecat: 0-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* nhh: 8+, agecat: 0-6 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* nhh: 8+, agecat: 0-6 months, studyid: ki1000111-WASH-Kenya, country: KENYA
* nhh: 8+, agecat: 0-6 months, studyid: ki1000304-Vitamin-B12, country: INDIA
* nhh: 8+, agecat: 0-6 months, studyid: ki1000304-ZnMort, country: INDIA
* nhh: 8+, agecat: 0-6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* nhh: 8+, agecat: 0-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* nhh: 8+, agecat: 0-6 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* nhh: 8+, agecat: 0-6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* nhh: 8+, agecat: 6-24 months, studyid: iLiNS_DYADM_LNS, country: MALAWI
* nhh: 8+, agecat: 6-24 months, studyid: ki1000107-Serrinha-VitA, country: BRAZIL
* nhh: 8+, agecat: 6-24 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* nhh: 8+, agecat: 6-24 months, studyid: ki1000111-WASH-Kenya, country: KENYA
* nhh: 8+, agecat: 6-24 months, studyid: ki1000304-Vitamin-B12, country: INDIA
* nhh: 8+, agecat: 6-24 months, studyid: ki1000304-ZnMort, country: INDIA
* nhh: 8+, agecat: 6-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* nhh: 8+, agecat: 6-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* nhh: 8+, agecat: 6-24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* nhh: 8+, agecat: 6-24 months, studyid: ki1148112-LCNI-5, country: MALAWI

### Dropped Strata

Some strata were dropped due to rare outcomes:

* nhh: 6-7, agecat: 0-6 months, studyid: ki1000107-Serrinha-VitA, country: BRAZIL
* nhh: 3 or less, agecat: 0-6 months, studyid: ki1000107-Serrinha-VitA, country: BRAZIL
* nhh: 4-5, agecat: 0-6 months, studyid: ki1000107-Serrinha-VitA, country: BRAZIL
* nhh: 3 or less, agecat: 0-6 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* nhh: 4-5, agecat: 0-6 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* nhh: 8+, agecat: 0-6 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* nhh: 6-7, agecat: 0-6 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* nhh: 8+, agecat: 0-6 months, studyid: ki1000111-WASH-Kenya, country: KENYA
* nhh: 6-7, agecat: 0-6 months, studyid: ki1000111-WASH-Kenya, country: KENYA
* nhh: 3 or less, agecat: 0-6 months, studyid: ki1000111-WASH-Kenya, country: KENYA
* nhh: 4-5, agecat: 0-6 months, studyid: ki1000111-WASH-Kenya, country: KENYA
* nhh: 8+, agecat: 0-6 months, studyid: ki1000304-Vitamin-B12, country: INDIA
* nhh: 3 or less, agecat: 0-6 months, studyid: ki1000304-ZnMort, country: INDIA
* nhh: 3 or less, agecat: 0-6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* nhh: 8+, agecat: 0-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* nhh: 6-7, agecat: 0-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* nhh: 3 or less, agecat: 0-6 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* nhh: 8+, agecat: 0-6 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* nhh: 6-7, agecat: 0-6 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* nhh: 4-5, agecat: 0-6 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* nhh: 8+, agecat: 0-6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* nhh: 3 or less, agecat: 0-6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* nhh: 3 or less, agecat: 6-24 months, studyid: ki1000107-Serrinha-VitA, country: BRAZIL
* nhh: 4-5, agecat: 6-24 months, studyid: ki1000107-Serrinha-VitA, country: BRAZIL
* nhh: 8+, agecat: 6-24 months, studyid: ki1000107-Serrinha-VitA, country: BRAZIL
* nhh: 6-7, agecat: 6-24 months, studyid: ki1000107-Serrinha-VitA, country: BRAZIL
* nhh: 8+, agecat: 6-24 months, studyid: ki1000304-Vitamin-B12, country: INDIA
* nhh: 6-7, agecat: 6-24 months, studyid: ki1000304-Vitamin-B12, country: INDIA
* nhh: 3 or less, agecat: 6-24 months, studyid: ki1000304-Vitamin-B12, country: INDIA
* nhh: 8+, agecat: 6-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* nhh: 3 or less, agecat: 6-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* nhh: 8+, agecat: 6-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* nhh: 6-7, agecat: 6-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* nhh: 3 or less, agecat: 6-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* nhh: 4-5, agecat: 6-24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* nhh: 8+, agecat: 6-24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* nhh: 8+, agecat: 6-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* nhh: 3 or less, agecat: 0-24 months, studyid: ki1000107-Serrinha-VitA, country: BRAZIL
* nhh: 8+, agecat: 0-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* nhh: 3 or less, agecat: 0-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* nhh: 3 or less, agecat: 0-6 months, studyid: iLiNS_DYADM_LNS, country: MALAWI
* nhh: 6-7, agecat: 0-6 months, studyid: iLiNS_DYADM_LNS, country: MALAWI
* nhh: 4-5, agecat: 0-6 months, studyid: iLiNS_DYADM_LNS, country: MALAWI
* nhh: 4-5, agecat: 6-24 months, studyid: iLiNS_DYADM_LNS, country: MALAWI
* nhh: 6-7, agecat: 6-24 months, studyid: iLiNS_DYADM_LNS, country: MALAWI
* nhh: 8+, agecat: 6-24 months, studyid: iLiNS_DYADM_LNS, country: MALAWI
* nhh: 8+, agecat: 0-24 months, studyid: iLiNS_DYADM_LNS, country: MALAWI

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness



```
##           ever_stunted
## tr          0
##   Control  51
##   LNS       0
##   Maternal  0
##   Other     0
##   VitA      0
##   Zinc     66
##           ever_stunted
## tr           0
##   Control  174
##   LNS        0
##   Maternal   0
##   Other      0
##   VitA       0
##   Zinc     198
##           ever_stunted
## tr           0
##   Control  127
##   LNS        0
##   Maternal   0
##   Other      0
##   VitA       0
##   Zinc      99
##           ever_stunted
## tr          0
##   Control  84
##   LNS       0
##   Maternal  0
##   Other     0
##   VitA      0
##   Zinc     87
```




# Results Detail

## Results Plots
![](/tmp/ee20a5e0-89df-4166-be6c-a5a508b38c6a/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/ee20a5e0-89df-4166-be6c-a5a508b38c6a/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/ee20a5e0-89df-4166-be6c-a5a508b38c6a/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/ee20a5e0-89df-4166-be6c-a5a508b38c6a/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


nhh         agecat        studyid                     country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ------------  --------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
3 or less   0-24 months   iLiNS_DYADM_LNS             MALAWI       Control              NA                0.3939394   0.3112084   0.4766704
3 or less   0-24 months   iLiNS_DYADM_LNS             MALAWI       LNS                  NA                0.5294118   0.4436299   0.6151936
3 or less   0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH   Control              NA                0.3832924   0.3360435   0.4305412
3 or less   0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH   LNS                  NA                0.3316456   0.2852020   0.3780891
3 or less   0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH   Other                NA                0.4050000   0.3709729   0.4390271
3 or less   0-24 months   ki1000111-WASH-Kenya        KENYA        Control              NA                0.2081911   0.1616744   0.2547078
3 or less   0-24 months   ki1000111-WASH-Kenya        KENYA        LNS                  NA                0.1666667   0.1121915   0.2211419
3 or less   0-24 months   ki1000111-WASH-Kenya        KENYA        Other                NA                0.2467532   0.2036638   0.2898427
3 or less   0-24 months   ki1000304-Vitamin-B12       INDIA        Control              NA                0.4864865   0.4353373   0.5376356
3 or less   0-24 months   ki1000304-Vitamin-B12       INDIA        Other                NA                0.3875000   0.3141905   0.4608095
3 or less   0-24 months   ki1000304-ZnMort            INDIA        Control              NA                0.4495413   0.3559516   0.5431310
3 or less   0-24 months   ki1000304-ZnMort            INDIA        Zinc                 NA                0.4049587   0.3173029   0.4926144
3 or less   0-24 months   ki1017093b-PROVIDE          BANGLADESH   Control              NA                0.4642857   0.4210022   0.5075692
3 or less   0-24 months   ki1017093b-PROVIDE          BANGLADESH   Other                NA                0.3913043   0.3145266   0.4680821
3 or less   0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI       Control              NA                0.3939394   0.3375134   0.4503653
3 or less   0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI       Maternal             NA                0.4923077   0.4112817   0.5733337
3 or less   0-24 months   ki1148112-LCNI-5            MALAWI       Control              NA                0.5500000   0.4238384   0.6761616
3 or less   0-24 months   ki1148112-LCNI-5            MALAWI       LNS                  NA                0.5480769   0.4522138   0.6439401
3 or less   0-24 months   ki1148112-LCNI-5            MALAWI       Other                NA                0.5245902   0.3989887   0.6501916
3 or less   0-6 months    ki1017093b-PROVIDE          BANGLADESH   Control              NA                0.1785714   0.1450515   0.2120914
3 or less   0-6 months    ki1017093b-PROVIDE          BANGLADESH   Other                NA                0.1648352   0.1062935   0.2233769
3 or less   6-24 months   iLiNS_DYADM_LNS             MALAWI       Control              NA                0.2857143   0.2027870   0.3686416
3 or less   6-24 months   iLiNS_DYADM_LNS             MALAWI       LNS                  NA                0.4482759   0.3553687   0.5411831
3 or less   6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH   Control              NA                0.1751592   0.1330999   0.2172186
3 or less   6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH   LNS                  NA                0.1290323   0.0916991   0.1663654
3 or less   6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH   Other                NA                0.1869783   0.1557420   0.2182146
3 or less   6-24 months   ki1000111-WASH-Kenya        KENYA        Control              NA                0.0416667   0.0163677   0.0669656
3 or less   6-24 months   ki1000111-WASH-Kenya        KENYA        LNS                  NA                0.0580645   0.0212215   0.0949076
3 or less   6-24 months   ki1000111-WASH-Kenya        KENYA        Other                NA                0.0801282   0.0499819   0.1102745
3 or less   6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI       Control              NA                0.2857143   0.2260289   0.3453997
3 or less   6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI       Maternal             NA                0.3333333   0.2492778   0.4173888
3 or less   6-24 months   ki1148112-LCNI-5            MALAWI       Control              NA                0.3500000   0.2017183   0.4982817
3 or less   6-24 months   ki1148112-LCNI-5            MALAWI       LNS                  NA                0.2739726   0.1713376   0.3766076
3 or less   6-24 months   ki1148112-LCNI-5            MALAWI       Other                NA                0.3111111   0.1754195   0.4468027
4-5         0-24 months   iLiNS_DYADM_LNS             MALAWI       Control              NA                0.4285714   0.3484820   0.5086608
4-5         0-24 months   iLiNS_DYADM_LNS             MALAWI       LNS                  NA                0.5714286   0.4680336   0.6748235
4-5         0-24 months   ki1000107-Serrinha-VitA     BRAZIL       Control              NA                0.2394366   0.1932227   0.2856505
4-5         0-24 months   ki1000107-Serrinha-VitA     BRAZIL       VitA                 NA                0.2682927   0.2167270   0.3198583
4-5         0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH   Control              NA                0.4292035   0.3835616   0.4748455
4-5         0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH   LNS                  NA                0.3567010   0.3140579   0.3993442
4-5         0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH   Other                NA                0.4228805   0.3919268   0.4538341
4-5         0-24 months   ki1000111-WASH-Kenya        KENYA        Control              NA                0.2375479   0.2010273   0.2740685
4-5         0-24 months   ki1000111-WASH-Kenya        KENYA        LNS                  NA                0.2082111   0.1651019   0.2513204
4-5         0-24 months   ki1000111-WASH-Kenya        KENYA        Other                NA                0.2959029   0.2610420   0.3307638
4-5         0-24 months   ki1000304-Vitamin-B12       INDIA        Control              NA                0.4838710   0.4575937   0.5101482
4-5         0-24 months   ki1000304-Vitamin-B12       INDIA        Other                NA                0.4655172   0.4147809   0.5162536
4-5         0-24 months   ki1000304-ZnMort            INDIA        Control              NA                0.5492958   0.5020192   0.5965724
4-5         0-24 months   ki1000304-ZnMort            INDIA        Zinc                 NA                0.4953488   0.4480643   0.5426333
4-5         0-24 months   ki1000304b-SAS-FoodSuppl    INDIA        Control              NA                0.8292683   0.8033931   0.8551435
4-5         0-24 months   ki1000304b-SAS-FoodSuppl    INDIA        Other                NA                0.7112676   0.6532720   0.7692632
4-5         0-24 months   ki1017093b-PROVIDE          BANGLADESH   Control              NA                0.4146341   0.3853416   0.4439267
4-5         0-24 months   ki1017093b-PROVIDE          BANGLADESH   Other                NA                0.4101382   0.3625637   0.4577128
4-5         0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI       Control              NA                0.4285714   0.3759696   0.4811733
4-5         0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI       Maternal             NA                0.5312500   0.4386504   0.6238496
4-5         0-24 months   ki1148112-LCNI-5            MALAWI       Control              NA                0.5316456   0.4214479   0.6418433
4-5         0-24 months   ki1148112-LCNI-5            MALAWI       LNS                  NA                0.5780347   0.5043326   0.6517368
4-5         0-24 months   ki1148112-LCNI-5            MALAWI       Other                NA                0.6477273   0.5477775   0.7476771
4-5         0-6 months    ki1000304-ZnMort            INDIA        Control              NA                0.5000000   0.3354731   0.6645269
4-5         0-6 months    ki1000304-ZnMort            INDIA        Zinc                 NA                0.4242424   0.2543836   0.5941012
4-5         0-6 months    ki1000304b-SAS-FoodSuppl    INDIA        Control              NA                0.4390244   0.4047096   0.4733392
4-5         0-6 months    ki1000304b-SAS-FoodSuppl    INDIA        Other                NA                0.3829787   0.3206454   0.4453120
4-5         0-6 months    ki1017093b-PROVIDE          BANGLADESH   Control              NA                0.1585366   0.1368199   0.1802533
4-5         0-6 months    ki1017093b-PROVIDE          BANGLADESH   Other                NA                0.1290323   0.0966069   0.1614576
4-5         0-6 months    ki1148112-LCNI-5            MALAWI       Control              NA                0.3571429   0.1788588   0.5354269
4-5         0-6 months    ki1148112-LCNI-5            MALAWI       LNS                  NA                0.3921569   0.2575541   0.5267596
4-5         0-6 months    ki1148112-LCNI-5            MALAWI       Other                NA                0.4687500   0.2950666   0.6424334
4-5         6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH   Control              NA                0.2339181   0.1890381   0.2787982
4-5         6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH   LNS                  NA                0.1727749   0.1348506   0.2106991
4-5         6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH   Other                NA                0.2160326   0.1862909   0.2457744
4-5         6-24 months   ki1000111-WASH-Kenya        KENYA        Control              NA                0.0589623   0.0365320   0.0813925
4-5         6-24 months   ki1000111-WASH-Kenya        KENYA        LNS                  NA                0.0622837   0.0344097   0.0901578
4-5         6-24 months   ki1000111-WASH-Kenya        KENYA        Other                NA                0.0930693   0.0677197   0.1184189
4-5         6-24 months   ki1000304-Vitamin-B12       INDIA        Control              NA                0.1250000   0.1032516   0.1467484
4-5         6-24 months   ki1000304-Vitamin-B12       INDIA        Other                NA                0.1208054   0.0794419   0.1621688
4-5         6-24 months   ki1000304b-SAS-FoodSuppl    INDIA        Control              NA                0.6470588   0.6074496   0.6866681
4-5         6-24 months   ki1000304b-SAS-FoodSuppl    INDIA        Other                NA                0.5308642   0.4405756   0.6211528
4-5         6-24 months   ki1017093b-PROVIDE          BANGLADESH   Control              NA                0.2539683   0.2252144   0.2827222
4-5         6-24 months   ki1017093b-PROVIDE          BANGLADESH   Other                NA                0.2427746   0.1958397   0.2897094
4-5         6-24 months   ki1148112-LCNI-5            MALAWI       Control              NA                0.2807018   0.1638051   0.3975984
4-5         6-24 months   ki1148112-LCNI-5            MALAWI       LNS                  NA                0.3109244   0.2275851   0.3942636
4-5         6-24 months   ki1148112-LCNI-5            MALAWI       Other                NA                0.3709677   0.2504722   0.4914633
6-7         0-24 months   iLiNS_DYADM_LNS             MALAWI       Control              NA                0.5789474   0.4566720   0.7012228
6-7         0-24 months   iLiNS_DYADM_LNS             MALAWI       LNS                  NA                0.3125000   0.2071594   0.4178406
6-7         0-24 months   ki1000107-Serrinha-VitA     BRAZIL       Control              NA                0.3500000   0.2861997   0.4138003
6-7         0-24 months   ki1000107-Serrinha-VitA     BRAZIL       VitA                 NA                0.3888889   0.3270266   0.4507512
6-7         0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH   Control              NA                0.4051282   0.3361831   0.4740734
6-7         0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH   LNS                  NA                0.3160377   0.2534152   0.3786603
6-7         0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH   Other                NA                0.4043584   0.3569981   0.4517186
6-7         0-24 months   ki1000111-WASH-Kenya        KENYA        Control              NA                0.2504970   0.2126178   0.2883763
6-7         0-24 months   ki1000111-WASH-Kenya        KENYA        LNS                  NA                0.2451613   0.1972575   0.2930651
6-7         0-24 months   ki1000111-WASH-Kenya        KENYA        Other                NA                0.2636505   0.2295293   0.2977718
6-7         0-24 months   ki1000304-Vitamin-B12       INDIA        Control              NA                0.4705882   0.4365913   0.5045852
6-7         0-24 months   ki1000304-Vitamin-B12       INDIA        Other                NA                0.4903226   0.4309628   0.5496823
6-7         0-24 months   ki1000304-ZnMort            INDIA        Control              NA                0.5069444   0.4491506   0.5647383
6-7         0-24 months   ki1000304-ZnMort            INDIA        Zinc                 NA                0.5652174   0.5040763   0.6263585
6-7         0-24 months   ki1000304b-SAS-FoodSuppl    INDIA        Control              NA                0.7837838   0.7449863   0.8225813
6-7         0-24 months   ki1000304b-SAS-FoodSuppl    INDIA        Other                NA                0.7777778   0.7166690   0.8388866
6-7         0-24 months   ki1017093b-PROVIDE          BANGLADESH   Control              NA                0.3333333   0.2927205   0.3739462
6-7         0-24 months   ki1017093b-PROVIDE          BANGLADESH   Other                NA                0.4455446   0.3738216   0.5172675
6-7         0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI       Control              NA                0.5789474   0.5055871   0.6523077
6-7         0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI       Maternal             NA                0.3846154   0.2810498   0.4881810
6-7         0-24 months   ki1148112-LCNI-5            MALAWI       Control              NA                0.5777778   0.4330709   0.7224847
6-7         0-24 months   ki1148112-LCNI-5            MALAWI       LNS                  NA                0.6021505   0.5024001   0.7019010
6-7         0-24 months   ki1148112-LCNI-5            MALAWI       Other                NA                0.6136364   0.4693678   0.7579050
6-7         0-6 months    ki1000304-ZnMort            INDIA        Control              NA                0.3181818   0.1210080   0.5153556
6-7         0-6 months    ki1000304-ZnMort            INDIA        Zinc                 NA                0.3529412   0.1228038   0.5830786
6-7         0-6 months    ki1000304b-SAS-FoodSuppl    INDIA        Control              NA                0.3888889   0.3432083   0.4345695
6-7         0-6 months    ki1000304b-SAS-FoodSuppl    INDIA        Other                NA                0.3666667   0.2952695   0.4380638
6-7         0-6 months    ki1148112-LCNI-5            MALAWI       Control              NA                0.3846154   0.1181576   0.6510732
6-7         0-6 months    ki1148112-LCNI-5            MALAWI       LNS                  NA                0.2894737   0.1441902   0.4347572
6-7         0-6 months    ki1148112-LCNI-5            MALAWI       Other                NA                0.5000000   0.2531555   0.7468445
6-7         6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH   Control              NA                0.1946309   0.1310101   0.2582516
6-7         6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH   LNS                  NA                0.1453488   0.0926350   0.1980627
6-7         6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH   Other                NA                0.2208202   0.1751222   0.2665182
6-7         6-24 months   ki1000111-WASH-Kenya        KENYA        Control              NA                0.0675000   0.0429029   0.0920971
6-7         6-24 months   ki1000111-WASH-Kenya        KENYA        LNS                  NA                0.0564516   0.0277153   0.0851880
6-7         6-24 months   ki1000111-WASH-Kenya        KENYA        Other                NA                0.0560000   0.0358381   0.0761619
6-7         6-24 months   ki1000304b-SAS-FoodSuppl    INDIA        Control              NA                0.5263158   0.4640408   0.5885908
6-7         6-24 months   ki1000304b-SAS-FoodSuppl    INDIA        Other                NA                0.6200000   0.5217932   0.7182068
6-7         6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI       Control              NA                0.3571429   0.2763580   0.4379277
6-7         6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI       Maternal             NA                0.2000000   0.1012793   0.2987207
6-7         6-24 months   ki1148112-LCNI-5            MALAWI       Control              NA                0.3437500   0.1785613   0.5089387
6-7         6-24 months   ki1148112-LCNI-5            MALAWI       LNS                  NA                0.3380282   0.2275780   0.4484784
6-7         6-24 months   ki1148112-LCNI-5            MALAWI       Other                NA                0.3103448   0.1413246   0.4793650
8+          0-24 months   ki1000107-Serrinha-VitA     BRAZIL       Control              NA                0.3000000   0.2237268   0.3762732
8+          0-24 months   ki1000107-Serrinha-VitA     BRAZIL       VitA                 NA                0.3714286   0.2845625   0.4582947
8+          0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH   Control              NA                0.2950820   0.2140675   0.3760964
8+          0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH   LNS                  NA                0.2689076   0.1891602   0.3486549
8+          0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH   Other                NA                0.3025210   0.2441017   0.3609404
8+          0-24 months   ki1000111-WASH-Kenya        KENYA        Control              NA                0.2721713   0.2443149   0.3000277
8+          0-24 months   ki1000111-WASH-Kenya        KENYA        LNS                  NA                0.2208398   0.1887719   0.2529077
8+          0-24 months   ki1000111-WASH-Kenya        KENYA        Other                NA                0.2720706   0.2473562   0.2967850
8+          0-24 months   ki1000304-Vitamin-B12       INDIA        Control              NA                0.5625000   0.5263805   0.5986195
8+          0-24 months   ki1000304-Vitamin-B12       INDIA        Other                NA                0.4748201   0.4129478   0.5366925
8+          0-24 months   ki1000304-ZnMort            INDIA        Control              NA                0.4947368   0.4235583   0.5659153
8+          0-24 months   ki1000304-ZnMort            INDIA        Zinc                 NA                0.5159817   0.4497135   0.5822500
8+          0-24 months   ki1017093b-PROVIDE          BANGLADESH   Control              NA                0.3000000   0.2524639   0.3475361
8+          0-24 months   ki1017093b-PROVIDE          BANGLADESH   Other                NA                0.4153846   0.3232302   0.5075390
8+          0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI       Control              NA                0.5000000   0.3849070   0.6150930
8+          0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI       Maternal             NA                0.4444444   0.3043576   0.5845312
8+          0-24 months   ki1148112-LCNI-5            MALAWI       Control              NA                0.4375000   0.1926710   0.6823290
8+          0-24 months   ki1148112-LCNI-5            MALAWI       LNS                  NA                0.5609756   0.4079737   0.7139776
8+          0-24 months   ki1148112-LCNI-5            MALAWI       Other                NA                0.6153846   0.3490133   0.8817560
8+          0-6 months    ki1000304-ZnMort            INDIA        Control              NA                0.4285714   0.2147664   0.6423765
8+          0-6 months    ki1000304-ZnMort            INDIA        Zinc                 NA                0.3448276   0.1700785   0.5195766
8+          0-6 months    ki1000304b-SAS-FoodSuppl    INDIA        Control              NA                0.3157895   0.2586488   0.3729301
8+          0-6 months    ki1000304b-SAS-FoodSuppl    INDIA        Other                NA                0.4313725   0.3316256   0.5311195
8+          6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH   Control              NA                0.1619048   0.0913597   0.2324498
8+          6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH   LNS                  NA                0.1089109   0.0480805   0.1697413
8+          6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH   Other                NA                0.1557789   0.1053313   0.2062265
8+          6-24 months   ki1000111-WASH-Kenya        KENYA        Control              NA                0.0682415   0.0503337   0.0861493
8+          6-24 months   ki1000111-WASH-Kenya        KENYA        LNS                  NA                0.0497132   0.0310813   0.0683451
8+          6-24 months   ki1000111-WASH-Kenya        KENYA        Other                NA                0.0759754   0.0593319   0.0926188


### Parameter: E(Y)


nhh         agecat        studyid                     country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ------------  --------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
3 or less   0-24 months   iLiNS_DYADM_LNS             MALAWI       NA                   NA                0.4626866   0.3423955   0.5829776
3 or less   0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH   NA                   NA                0.3813983   0.3576054   0.4051912
3 or less   0-24 months   ki1000111-WASH-Kenya        KENYA        NA                   NA                0.2167832   0.1891958   0.2443707
3 or less   0-24 months   ki1000304-Vitamin-B12       INDIA        NA                   NA                0.4188034   0.3290222   0.5085847
3 or less   0-24 months   ki1000304-ZnMort            INDIA        NA                   NA                0.4260870   0.3620394   0.4901345
3 or less   0-24 months   ki1017093b-PROVIDE          BANGLADESH   NA                   NA                0.4083333   0.3200212   0.4966455
3 or less   0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI       NA                   NA                0.4591837   0.3600137   0.5583537
3 or less   0-24 months   ki1148112-LCNI-5            MALAWI       NA                   NA                0.5422222   0.4769783   0.6074661
3 or less   0-6 months    ki1017093b-PROVIDE          BANGLADESH   NA                   NA                0.1680672   0.1006000   0.2355344
3 or less   6-24 months   iLiNS_DYADM_LNS             MALAWI       NA                   NA                0.3684211   0.2420813   0.4947608
3 or less   6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH   NA                   NA                0.1692559   0.1482318   0.1902801
3 or less   6-24 months   ki1000111-WASH-Kenya        KENYA        NA                   NA                0.0622348   0.0444147   0.0800549
3 or less   6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI       NA                   NA                0.3164557   0.2132412   0.4196702
3 or less   6-24 months   ki1148112-LCNI-5            MALAWI       NA                   NA                0.3037975   0.2318595   0.3757354
4-5         0-24 months   iLiNS_DYADM_LNS             MALAWI       NA                   NA                0.5178571   0.3858007   0.6499136
4-5         0-24 months   ki1000107-Serrinha-VitA     BRAZIL       NA                   NA                0.2549020   0.1856201   0.3241838
4-5         0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH   NA                   NA                0.4076200   0.3856115   0.4296286
4-5         0-24 months   ki1000111-WASH-Kenya        KENYA        NA                   NA                0.2562418   0.2343024   0.2781812
4-5         0-24 months   ki1000304-Vitamin-B12       INDIA        NA                   NA                0.4693878   0.4122440   0.5265315
4-5         0-24 months   ki1000304-ZnMort            INDIA        NA                   NA                0.5221963   0.4887146   0.5556779
4-5         0-24 months   ki1000304b-SAS-FoodSuppl    INDIA        NA                   NA                0.7377049   0.6737979   0.8016120
4-5         0-24 months   ki1017093b-PROVIDE          BANGLADESH   NA                   NA                0.4113712   0.3555014   0.4672411
4-5         0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI       NA                   NA                0.5058824   0.3989650   0.6127998
4-5         0-24 months   ki1148112-LCNI-5            MALAWI       NA                   NA                0.5852941   0.5328490   0.6377393
4-5         0-6 months    ki1000304-ZnMort            INDIA        NA                   NA                0.4637681   0.3452403   0.5822960
4-5         0-6 months    ki1000304b-SAS-FoodSuppl    INDIA        NA                   NA                0.3956044   0.3243683   0.4668405
4-5         0-6 months    ki1017093b-PROVIDE          BANGLADESH   NA                   NA                0.1371237   0.0980693   0.1761782
4-5         0-6 months    ki1148112-LCNI-5            MALAWI       NA                   NA                0.4054054   0.3136552   0.4971556
4-5         6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH   NA                   NA                0.2089041   0.1880444   0.2297638
4-5         6-24 months   ki1000111-WASH-Kenya        KENYA        NA                   NA                0.0738916   0.0591945   0.0885887
4-5         6-24 months   ki1000304-Vitamin-B12       INDIA        NA                   NA                0.1216931   0.0749599   0.1684263
4-5         6-24 months   ki1000304b-SAS-FoodSuppl    INDIA        NA                   NA                0.5510204   0.4520377   0.6500031
4-5         6-24 months   ki1017093b-PROVIDE          BANGLADESH   NA                   NA                0.2457627   0.1907167   0.3008088
4-5         6-24 months   ki1148112-LCNI-5            MALAWI       NA                   NA                0.3193277   0.2599722   0.3786833
6-7         0-24 months   iLiNS_DYADM_LNS             MALAWI       NA                   NA                0.4571429   0.2896959   0.6245899
6-7         0-24 months   ki1000107-Serrinha-VitA     BRAZIL       NA                   NA                0.3684211   0.2794815   0.4573606
6-7         0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH   NA                   NA                0.3817073   0.3484361   0.4149785
6-7         0-24 months   ki1000111-WASH-Kenya        KENYA        NA                   NA                0.2551582   0.2327425   0.2775739
6-7         0-24 months   ki1000304-Vitamin-B12       INDIA        NA                   NA                0.4854369   0.4170210   0.5538528
6-7         0-24 months   ki1000304-ZnMort            INDIA        NA                   NA                0.5341959   0.4921230   0.5762689
6-7         0-24 months   ki1000304b-SAS-FoodSuppl    INDIA        NA                   NA                0.7795276   0.7071414   0.8519137
6-7         0-24 months   ki1017093b-PROVIDE          BANGLADESH   NA                   NA                0.4160584   0.3332183   0.4988985
6-7         0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI       NA                   NA                0.4482759   0.3191705   0.5773812
6-7         0-24 months   ki1148112-LCNI-5            MALAWI       NA                   NA                0.5989011   0.5274988   0.6703034
6-7         0-6 months    ki1000304-ZnMort            INDIA        NA                   NA                0.3333333   0.1834511   0.4832155
6-7         0-6 months    ki1000304b-SAS-FoodSuppl    INDIA        NA                   NA                0.3730159   0.2882375   0.4577942
6-7         0-6 months    ki1148112-LCNI-5            MALAWI       NA                   NA                0.3582090   0.2425335   0.4738844
6-7         6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH   NA                   NA                0.1943574   0.1636282   0.2250865
6-7         6-24 months   ki1000111-WASH-Kenya        KENYA        NA                   NA                0.0601045   0.0463496   0.0738595
6-7         6-24 months   ki1000304b-SAS-FoodSuppl    INDIA        NA                   NA                0.5942029   0.4774909   0.7109149
6-7         6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI       NA                   NA                0.2500000   0.1205761   0.3794239
6-7         6-24 months   ki1148112-LCNI-5            MALAWI       NA                   NA                0.3333333   0.2526087   0.4140580
8+          0-24 months   ki1000107-Serrinha-VitA     BRAZIL       NA                   NA                0.3384615   0.2225330   0.4543901
8+          0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH   NA                   NA                0.2922756   0.2515035   0.3330476
8+          0-24 months   ki1000111-WASH-Kenya        KENYA        NA                   NA                0.2606272   0.2445643   0.2766901
8+          0-24 months   ki1000304-Vitamin-B12       INDIA        NA                   NA                0.4973262   0.4254715   0.5691809
8+          0-24 months   ki1000304-ZnMort            INDIA        NA                   NA                0.5061125   0.4575998   0.5546252
8+          0-24 months   ki1017093b-PROVIDE          BANGLADESH   NA                   NA                0.3882353   0.2840160   0.4924546
8+          0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI       NA                   NA                0.4666667   0.2850934   0.6482399
8+          0-24 months   ki1148112-LCNI-5            MALAWI       NA                   NA                0.5428571   0.4253154   0.6603989
8+          0-6 months    ki1000304-ZnMort            INDIA        NA                   NA                0.3800000   0.2440943   0.5159057
8+          0-6 months    ki1000304b-SAS-FoodSuppl    INDIA        NA                   NA                0.4000000   0.2844076   0.5155924
8+          6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH   NA                   NA                0.1456790   0.1112784   0.1800796
8+          6-24 months   ki1000111-WASH-Kenya        KENYA        NA                   NA                0.0672864   0.0569535   0.0776194


### Parameter: RR


nhh         agecat        studyid                     country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ------------  --------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
3 or less   0-24 months   iLiNS_DYADM_LNS             MALAWI       Control              Control           1.0000000   1.0000000   1.0000000
3 or less   0-24 months   iLiNS_DYADM_LNS             MALAWI       LNS                  Control           1.3438914   1.0307819   1.7521108
3 or less   0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH   Control              Control           1.0000000   1.0000000   1.0000000
3 or less   0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH   LNS                  Control           0.8652548   0.7179917   1.0427222
3 or less   0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH   Other                Control           1.0566346   0.9101999   1.2266281
3 or less   0-24 months   ki1000111-WASH-Kenya        KENYA        Control              Control           1.0000000   1.0000000   1.0000000
3 or less   0-24 months   ki1000111-WASH-Kenya        KENYA        LNS                  Control           0.8005464   0.5388154   1.1894140
3 or less   0-24 months   ki1000111-WASH-Kenya        KENYA        Other                Control           1.1852246   0.8925745   1.5738265
3 or less   0-24 months   ki1000304-Vitamin-B12       INDIA        Control              Control           1.0000000   1.0000000   1.0000000
3 or less   0-24 months   ki1000304-Vitamin-B12       INDIA        Other                Control           0.7965278   0.6415092   0.9890061
3 or less   0-24 months   ki1000304-ZnMort            INDIA        Control              Control           1.0000000   1.0000000   1.0000000
3 or less   0-24 months   ki1000304-ZnMort            INDIA        Zinc                 Control           0.9008264   0.6671307   1.2163857
3 or less   0-24 months   ki1017093b-PROVIDE          BANGLADESH   Control              Control           1.0000000   1.0000000   1.0000000
3 or less   0-24 months   ki1017093b-PROVIDE          BANGLADESH   Other                Control           0.8428094   0.6782457   1.0473013
3 or less   0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI       Control              Control           1.0000000   1.0000000   1.0000000
3 or less   0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI       Maternal             Control           1.2497041   1.0047341   1.5544018
3 or less   0-24 months   ki1148112-LCNI-5            MALAWI       Control              Control           1.0000000   1.0000000   1.0000000
3 or less   0-24 months   ki1148112-LCNI-5            MALAWI       LNS                  Control           0.9965035   0.7467950   1.3297079
3 or less   0-24 months   ki1148112-LCNI-5            MALAWI       Other                Control           0.9538003   0.6846295   1.3287991
3 or less   0-6 months    ki1017093b-PROVIDE          BANGLADESH   Control              Control           1.0000000   1.0000000   1.0000000
3 or less   0-6 months    ki1017093b-PROVIDE          BANGLADESH   Other                Control           0.9230769   0.6177010   1.3794230
3 or less   6-24 months   iLiNS_DYADM_LNS             MALAWI       Control              Control           1.0000000   1.0000000   1.0000000
3 or less   6-24 months   iLiNS_DYADM_LNS             MALAWI       LNS                  Control           1.5689655   1.0983068   2.2413162
3 or less   6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH   Control              Control           1.0000000   1.0000000   1.0000000
3 or less   6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH   LNS                  Control           0.7366569   0.5057937   1.0728947
3 or less   6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH   Other                Control           1.0674761   0.7967453   1.4302000
3 or less   6-24 months   ki1000111-WASH-Kenya        KENYA        Control              Control           1.0000000   1.0000000   1.0000000
3 or less   6-24 months   ki1000111-WASH-Kenya        KENYA        LNS                  Control           1.3935483   0.5790480   3.3537405
3 or less   6-24 months   ki1000111-WASH-Kenya        KENYA        Other                Control           1.9230768   0.9414240   3.9283300
3 or less   6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI       Control              Control           1.0000000   1.0000000   1.0000000
3 or less   6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI       Maternal             Control           1.1666667   0.8408818   1.6186712
3 or less   6-24 months   ki1148112-LCNI-5            MALAWI       Control              Control           1.0000000   1.0000000   1.0000000
3 or less   6-24 months   ki1148112-LCNI-5            MALAWI       LNS                  Control           0.7827789   0.4446631   1.3779932
3 or less   6-24 months   ki1148112-LCNI-5            MALAWI       Other                Control           0.8888889   0.4839241   1.6327424
4-5         0-24 months   iLiNS_DYADM_LNS             MALAWI       Control              Control           1.0000000   1.0000000   1.0000000
4-5         0-24 months   iLiNS_DYADM_LNS             MALAWI       LNS                  Control           1.3333333   1.0279461   1.7294465
4-5         0-24 months   ki1000107-Serrinha-VitA     BRAZIL       Control              Control           1.0000000   1.0000000   1.0000000
4-5         0-24 months   ki1000107-Serrinha-VitA     BRAZIL       VitA                 Control           1.1205165   0.8533413   1.4713424
4-5         0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH   Control              Control           1.0000000   1.0000000   1.0000000
4-5         0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH   LNS                  Control           0.8310766   0.7081961   0.9752784
4-5         0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH   Other                Control           0.9852679   0.8659401   1.1210393
4-5         0-24 months   ki1000111-WASH-Kenya        KENYA        Control              Control           1.0000000   1.0000000   1.0000000
4-5         0-24 months   ki1000111-WASH-Kenya        KENYA        LNS                  Control           0.8765018   0.6772600   1.1343580
4-5         0-24 months   ki1000111-WASH-Kenya        KENYA        Other                Control           1.2456557   1.0263128   1.5118764
4-5         0-24 months   ki1000304-Vitamin-B12       INDIA        Control              Control           1.0000000   1.0000000   1.0000000
4-5         0-24 months   ki1000304-Vitamin-B12       INDIA        Other                Control           0.9620690   0.8517700   1.0866510
4-5         0-24 months   ki1000304-ZnMort            INDIA        Control              Control           1.0000000   1.0000000   1.0000000
4-5         0-24 months   ki1000304-ZnMort            INDIA        Zinc                 Control           0.9017889   0.7930225   1.0254731
4-5         0-24 months   ki1000304b-SAS-FoodSuppl    INDIA        Control              Control           1.0000000   1.0000000   1.0000000
4-5         0-24 months   ki1000304b-SAS-FoodSuppl    INDIA        Other                Control           0.8577051   0.7859991   0.9359527
4-5         0-24 months   ki1017093b-PROVIDE          BANGLADESH   Control              Control           1.0000000   1.0000000   1.0000000
4-5         0-24 months   ki1017093b-PROVIDE          BANGLADESH   Other                Control           0.9891570   0.8635368   1.1330513
4-5         0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI       Control              Control           1.0000000   1.0000000   1.0000000
4-5         0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI       Maternal             Control           1.2395833   1.0015940   1.5341215
4-5         0-24 months   ki1148112-LCNI-5            MALAWI       Control              Control           1.0000000   1.0000000   1.0000000
4-5         0-24 months   ki1148112-LCNI-5            MALAWI       LNS                  Control           1.0872557   0.8524021   1.3868161
4-5         0-24 months   ki1148112-LCNI-5            MALAWI       Other                Control           1.2183442   0.9409029   1.5775937
4-5         0-6 months    ki1000304-ZnMort            INDIA        Control              Control           1.0000000   1.0000000   1.0000000
4-5         0-6 months    ki1000304-ZnMort            INDIA        Zinc                 Control           0.8484848   0.5053259   1.4246778
4-5         0-6 months    ki1000304b-SAS-FoodSuppl    INDIA        Control              Control           1.0000000   1.0000000   1.0000000
4-5         0-6 months    ki1000304b-SAS-FoodSuppl    INDIA        Other                Control           0.8723404   0.7282364   1.0449599
4-5         0-6 months    ki1017093b-PROVIDE          BANGLADESH   Control              Control           1.0000000   1.0000000   1.0000000
4-5         0-6 months    ki1017093b-PROVIDE          BANGLADESH   Other                Control           0.8138958   0.6113234   1.0835939
4-5         0-6 months    ki1148112-LCNI-5            MALAWI       Control              Control           1.0000000   1.0000000   1.0000000
4-5         0-6 months    ki1148112-LCNI-5            MALAWI       LNS                  Control           1.0980392   0.5991248   2.0124191
4-5         0-6 months    ki1148112-LCNI-5            MALAWI       Other                Control           1.3125000   0.7048678   2.4439423
4-5         6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH   Control              Control           1.0000000   1.0000000   1.0000000
4-5         6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH   LNS                  Control           0.7386126   0.5518299   0.9886172
4-5         6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH   Other                Control           0.9235394   0.7292872   1.1695324
4-5         6-24 months   ki1000111-WASH-Kenya        KENYA        Control              Control           1.0000000   1.0000000   1.0000000
4-5         6-24 months   ki1000111-WASH-Kenya        KENYA        LNS                  Control           1.0563322   0.5870957   1.9006061
4-5         6-24 months   ki1000111-WASH-Kenya        KENYA        Other                Control           1.5784554   0.9886397   2.5201513
4-5         6-24 months   ki1000304-Vitamin-B12       INDIA        Control              Control           1.0000000   1.0000000   1.0000000
4-5         6-24 months   ki1000304-Vitamin-B12       INDIA        Other                Control           0.9664430   0.6582304   1.4189743
4-5         6-24 months   ki1000304b-SAS-FoodSuppl    INDIA        Control              Control           1.0000000   1.0000000   1.0000000
4-5         6-24 months   ki1000304b-SAS-FoodSuppl    INDIA        Other                Control           0.8204265   0.6847578   0.9829748
4-5         6-24 months   ki1017093b-PROVIDE          BANGLADESH   Control              Control           1.0000000   1.0000000   1.0000000
4-5         6-24 months   ki1017093b-PROVIDE          BANGLADESH   Other                Control           0.9559249   0.7640550   1.1959771
4-5         6-24 months   ki1148112-LCNI-5            MALAWI       Control              Control           1.0000000   1.0000000   1.0000000
4-5         6-24 months   ki1148112-LCNI-5            MALAWI       LNS                  Control           1.1076681   0.6750354   1.8175767
4-5         6-24 months   ki1148112-LCNI-5            MALAWI       Other                Control           1.3215726   0.7793337   2.2410863
6-7         0-24 months   iLiNS_DYADM_LNS             MALAWI       Control              Control           1.0000000   1.0000000   1.0000000
6-7         0-24 months   iLiNS_DYADM_LNS             MALAWI       LNS                  Control           0.5397727   0.3626212   0.8034682
6-7         0-24 months   ki1000107-Serrinha-VitA     BRAZIL       Control              Control           1.0000000   1.0000000   1.0000000
6-7         0-24 months   ki1000107-Serrinha-VitA     BRAZIL       VitA                 Control           1.1111111   0.8723403   1.4152365
6-7         0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH   Control              Control           1.0000000   1.0000000   1.0000000
6-7         0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH   LNS                  Control           0.7800931   0.6007717   1.0129394
6-7         0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH   Other                Control           0.9980997   0.8118069   1.2271429
6-7         0-24 months   ki1000111-WASH-Kenya        KENYA        Control              Control           1.0000000   1.0000000   1.0000000
6-7         0-24 months   ki1000111-WASH-Kenya        KENYA        LNS                  Control           0.9786994   0.7644441   1.2530053
6-7         0-24 months   ki1000111-WASH-Kenya        KENYA        Other                Control           1.0525097   0.8625527   1.2843003
6-7         0-24 months   ki1000304-Vitamin-B12       INDIA        Control              Control           1.0000000   1.0000000   1.0000000
6-7         0-24 months   ki1000304-Vitamin-B12       INDIA        Other                Control           1.0419355   0.9049282   1.1996859
6-7         0-24 months   ki1000304-ZnMort            INDIA        Control              Control           1.0000000   1.0000000   1.0000000
6-7         0-24 months   ki1000304-ZnMort            INDIA        Zinc                 Control           1.1149494   0.9528021   1.3046907
6-7         0-24 months   ki1000304b-SAS-FoodSuppl    INDIA        Control              Control           1.0000000   1.0000000   1.0000000
6-7         0-24 months   ki1000304b-SAS-FoodSuppl    INDIA        Other                Control           0.9923372   0.9043363   1.0889014
6-7         0-24 months   ki1017093b-PROVIDE          BANGLADESH   Control              Control           1.0000000   1.0000000   1.0000000
6-7         0-24 months   ki1017093b-PROVIDE          BANGLADESH   Other                Control           1.3366337   1.0922794   1.6356525
6-7         0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI       Control              Control           1.0000000   1.0000000   1.0000000
6-7         0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI       Maternal             Control           0.6643357   0.4933369   0.8946054
6-7         0-24 months   ki1148112-LCNI-5            MALAWI       Control              Control           1.0000000   1.0000000   1.0000000
6-7         0-24 months   ki1148112-LCNI-5            MALAWI       LNS                  Control           1.0421836   0.7718505   1.4071982
6-7         0-24 months   ki1148112-LCNI-5            MALAWI       Other                Control           1.0620629   0.7532937   1.4973943
6-7         0-6 months    ki1000304-ZnMort            INDIA        Control              Control           1.0000000   1.0000000   1.0000000
6-7         0-6 months    ki1000304-ZnMort            INDIA        Zinc                 Control           1.1092437   0.4511875   2.7270738
6-7         0-6 months    ki1000304b-SAS-FoodSuppl    INDIA        Control              Control           1.0000000   1.0000000   1.0000000
6-7         0-6 months    ki1000304b-SAS-FoodSuppl    INDIA        Other                Control           0.9428571   0.7510773   1.1836060
6-7         0-6 months    ki1148112-LCNI-5            MALAWI       Control              Control           1.0000000   1.0000000   1.0000000
6-7         0-6 months    ki1148112-LCNI-5            MALAWI       LNS                  Control           0.7526316   0.3199271   1.7705730
6-7         0-6 months    ki1148112-LCNI-5            MALAWI       Other                Control           1.3000000   0.5552516   3.0436652
6-7         6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH   Control              Control           1.0000000   1.0000000   1.0000000
6-7         6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH   LNS                  Control           0.7467923   0.4583096   1.2168603
6-7         6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH   Other                Control           1.1345589   0.7705605   1.6705033
6-7         6-24 months   ki1000111-WASH-Kenya        KENYA        Control              Control           1.0000000   1.0000000   1.0000000
6-7         6-24 months   ki1000111-WASH-Kenya        KENYA        LNS                  Control           0.8363202   0.4471889   1.5640627
6-7         6-24 months   ki1000111-WASH-Kenya        KENYA        Other                Control           0.8296296   0.4970629   1.3847048
6-7         6-24 months   ki1000304b-SAS-FoodSuppl    INDIA        Control              Control           1.0000000   1.0000000   1.0000000
6-7         6-24 months   ki1000304b-SAS-FoodSuppl    INDIA        Other                Control           1.1780000   0.9666737   1.4355247
6-7         6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI       Control              Control           1.0000000   1.0000000   1.0000000
6-7         6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI       Maternal             Control           0.5600000   0.3253733   0.9638161
6-7         6-24 months   ki1148112-LCNI-5            MALAWI       Control              Control           1.0000000   1.0000000   1.0000000
6-7         6-24 months   ki1148112-LCNI-5            MALAWI       LNS                  Control           0.9833547   0.5499664   1.7582645
6-7         6-24 months   ki1148112-LCNI-5            MALAWI       Other                Control           0.9028213   0.4366822   1.8665434
8+          0-24 months   ki1000107-Serrinha-VitA     BRAZIL       Control              Control           1.0000000   1.0000000   1.0000000
8+          0-24 months   ki1000107-Serrinha-VitA     BRAZIL       VitA                 Control           1.2380952   0.8764503   1.7489637
8+          0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH   Control              Control           1.0000000   1.0000000   1.0000000
8+          0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH   LNS                  Control           0.9112979   0.6083404   1.3651300
8+          0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH   Other                Control           1.0252101   0.7328875   1.4341297
8+          0-24 months   ki1000111-WASH-Kenya        KENYA        Control              Control           1.0000000   1.0000000   1.0000000
8+          0-24 months   ki1000111-WASH-Kenya        KENYA        LNS                  Control           0.8114002   0.6793304   0.9691459
8+          0-24 months   ki1000111-WASH-Kenya        KENYA        Other                Control           0.9996303   0.8717820   1.1462277
8+          0-24 months   ki1000304-Vitamin-B12       INDIA        Control              Control           1.0000000   1.0000000   1.0000000
8+          0-24 months   ki1000304-Vitamin-B12       INDIA        Other                Control           0.8441247   0.7299901   0.9761043
8+          0-24 months   ki1000304-ZnMort            INDIA        Control              Control           1.0000000   1.0000000   1.0000000
8+          0-24 months   ki1000304-ZnMort            INDIA        Zinc                 Control           1.0429418   0.8600101   1.2647846
8+          0-24 months   ki1017093b-PROVIDE          BANGLADESH   Control              Control           1.0000000   1.0000000   1.0000000
8+          0-24 months   ki1017093b-PROVIDE          BANGLADESH   Other                Control           1.3846154   1.0542122   1.8185711
8+          0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI       Control              Control           1.0000000   1.0000000   1.0000000
8+          0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI       Maternal             Control           0.8888889   0.6016481   1.3132651
8+          0-24 months   ki1148112-LCNI-5            MALAWI       Control              Control           1.0000000   1.0000000   1.0000000
8+          0-24 months   ki1148112-LCNI-5            MALAWI       LNS                  Control           1.2822300   0.6880215   2.3896254
8+          0-24 months   ki1148112-LCNI-5            MALAWI       Other                Control           1.4065934   0.6932901   2.8537911
8+          0-6 months    ki1000304-ZnMort            INDIA        Control              Control           1.0000000   1.0000000   1.0000000
8+          0-6 months    ki1000304-ZnMort            INDIA        Zinc                 Control           0.8045977   0.3951313   1.6383858
8+          0-6 months    ki1000304b-SAS-FoodSuppl    INDIA        Control              Control           1.0000000   1.0000000   1.0000000
8+          0-6 months    ki1000304b-SAS-FoodSuppl    INDIA        Other                Control           1.3660131   1.0184503   1.8321873
8+          6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH   Control              Control           1.0000000   1.0000000   1.0000000
8+          6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH   LNS                  Control           0.6726849   0.3312557   1.3660291
8+          6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH   Other                Control           0.9621638   0.5590836   1.6558508
8+          6-24 months   ki1000111-WASH-Kenya        KENYA        Control              Control           1.0000000   1.0000000   1.0000000
8+          6-24 months   ki1000111-WASH-Kenya        KENYA        LNS                  Control           0.7284895   0.4610232   1.1511285
8+          6-24 months   ki1000111-WASH-Kenya        KENYA        Other                Control           1.1133312   0.7909821   1.5670474


### Parameter: PAR


nhh         agecat        studyid                     country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ------------  --------------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
3 or less   0-24 months   iLiNS_DYADM_LNS             MALAWI       Control              NA                 0.0687472   -0.0185771    0.1560714
3 or less   0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH   Control              NA                -0.0018941   -0.0426889    0.0389006
3 or less   0-24 months   ki1000111-WASH-Kenya        KENYA        Control              NA                 0.0085921   -0.0294477    0.0466319
3 or less   0-24 months   ki1000304-Vitamin-B12       INDIA        Control              NA                -0.0676831   -0.1414695    0.0061034
3 or less   0-24 months   ki1000304-ZnMort            INDIA        Control              NA                -0.0234543   -0.0909753    0.0440666
3 or less   0-24 months   ki1017093b-PROVIDE          BANGLADESH   Control              NA                -0.0559524   -0.1329302    0.0210254
3 or less   0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI       Control              NA                 0.0652443   -0.0163082    0.1467967
3 or less   0-24 months   ki1148112-LCNI-5            MALAWI       Control              NA                -0.0077778   -0.1158731    0.1003175
3 or less   0-6 months    ki1017093b-PROVIDE          BANGLADESH   Control              NA                -0.0105042   -0.0690553    0.0480469
3 or less   6-24 months   iLiNS_DYADM_LNS             MALAWI       Control              NA                 0.0827068   -0.0126075    0.1780210
3 or less   6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH   Control              NA                -0.0059033   -0.0419954    0.0301888
3 or less   6-24 months   ki1000111-WASH-Kenya        KENYA        Control              NA                 0.0205681   -0.0023023    0.0434385
3 or less   6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI       Control              NA                 0.0307414   -0.0534659    0.1149488
3 or less   6-24 months   ki1148112-LCNI-5            MALAWI       Control              NA                -0.0462025   -0.1728107    0.0804057
4-5         0-24 months   iLiNS_DYADM_LNS             MALAWI       Control              NA                 0.0892857   -0.0157124    0.1942838
4-5         0-24 months   ki1000107-Serrinha-VitA     BRAZIL       Control              NA                 0.0154653   -0.0361510    0.0670817
4-5         0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH   Control              NA                -0.0215835   -0.0613916    0.0182246
4-5         0-24 months   ki1000111-WASH-Kenya        KENYA        Control              NA                 0.0186939   -0.0113097    0.0486975
4-5         0-24 months   ki1000304-Vitamin-B12       INDIA        Control              NA                -0.0144832   -0.0652268    0.0362604
4-5         0-24 months   ki1000304-ZnMort            INDIA        Control              NA                -0.0270995   -0.0607368    0.0065377
4-5         0-24 months   ki1000304b-SAS-FoodSuppl    INDIA        Control              NA                -0.0915634   -0.1499978   -0.0331289
4-5         0-24 months   ki1017093b-PROVIDE          BANGLADESH   Control              NA                -0.0032629   -0.0508380    0.0443122
4-5         0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI       Control              NA                 0.0773109   -0.0157717    0.1703935
4-5         0-24 months   ki1148112-LCNI-5            MALAWI       Control              NA                 0.0536485   -0.0425328    0.1498299
4-5         0-6 months    ki1000304-ZnMort            INDIA        Control              NA                -0.0362319   -0.1496864    0.0772227
4-5         0-6 months    ki1000304b-SAS-FoodSuppl    INDIA        Control              NA                -0.0434200   -0.1058465    0.0190066
4-5         0-6 months    ki1017093b-PROVIDE          BANGLADESH   Control              NA                -0.0214128   -0.0538726    0.0110469
4-5         0-6 months    ki1148112-LCNI-5            MALAWI       Control              NA                 0.0482625   -0.1071965    0.2037216
4-5         6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH   Control              NA                -0.0250140   -0.0638174    0.0137893
4-5         6-24 months   ki1000111-WASH-Kenya        KENYA        Control              NA                 0.0149294   -0.0042758    0.0341346
4-5         6-24 months   ki1000304-Vitamin-B12       INDIA        Control              NA                -0.0033069   -0.0446711    0.0380573
4-5         6-24 months   ki1000304b-SAS-FoodSuppl    INDIA        Control              NA                -0.0960384   -0.1867505   -0.0053263
4-5         6-24 months   ki1017093b-PROVIDE          BANGLADESH   Control              NA                -0.0082055   -0.0551447    0.0387336
4-5         6-24 months   ki1148112-LCNI-5            MALAWI       Control              NA                 0.0386260   -0.0645368    0.1417888
6-7         0-24 months   iLiNS_DYADM_LNS             MALAWI       Control              NA                -0.1218045   -0.2362039   -0.0074051
6-7         0-24 months   ki1000107-Serrinha-VitA     BRAZIL       Control              NA                 0.0184211   -0.0435448    0.0803869
6-7         0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH   Control              NA                -0.0234209   -0.0834178    0.0365760
6-7         0-24 months   ki1000111-WASH-Kenya        KENYA        Control              NA                 0.0046612   -0.0260725    0.0353948
6-7         0-24 months   ki1000304-Vitamin-B12       INDIA        Control              NA                 0.0148487   -0.0445225    0.0742199
6-7         0-24 months   ki1000304-ZnMort            INDIA        Control              NA                 0.0272515   -0.0121699    0.0666729
6-7         0-24 months   ki1000304b-SAS-FoodSuppl    INDIA        Control              NA                -0.0042562   -0.0653669    0.0568544
6-7         0-24 months   ki1017093b-PROVIDE          BANGLADESH   Control              NA                 0.0827251    0.0105234    0.1549267
6-7         0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI       Control              NA                -0.1306715   -0.2369093   -0.0244337
6-7         0-24 months   ki1148112-LCNI-5            MALAWI       Control              NA                 0.0211233   -0.1041100    0.1463566
6-7         0-6 months    ki1000304-ZnMort            INDIA        Control              NA                 0.0151515   -0.1170619    0.1473649
6-7         0-6 months    ki1000304b-SAS-FoodSuppl    INDIA        Control              NA                -0.0158730   -0.0872919    0.0555458
6-7         0-6 months    ki1148112-LCNI-5            MALAWI       Control              NA                -0.0264064   -0.2647936    0.2119807
6-7         6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH   Control              NA                -0.0002735   -0.0559629    0.0554159
6-7         6-24 months   ki1000111-WASH-Kenya        KENYA        Control              NA                -0.0073955   -0.0266984    0.0119074
6-7         6-24 months   ki1000304b-SAS-FoodSuppl    INDIA        Control              NA                 0.0678871   -0.0308221    0.1665964
6-7         6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI       Control              NA                -0.1071429   -0.2082584   -0.0060273
6-7         6-24 months   ki1148112-LCNI-5            MALAWI       Control              NA                -0.0104167   -0.1538516    0.1330182
8+          0-24 months   ki1000107-Serrinha-VitA     BRAZIL       Control              NA                 0.0384615   -0.0488416    0.1257646
8+          0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH   Control              NA                -0.0028064   -0.0726804    0.0670676
8+          0-24 months   ki1000111-WASH-Kenya        KENYA        Control              NA                -0.0115441   -0.0339833    0.0108951
8+          0-24 months   ki1000304-Vitamin-B12       INDIA        Control              NA                -0.0651738   -0.1272905   -0.0030571
8+          0-24 months   ki1000304-ZnMort            INDIA        Control              NA                 0.0113756   -0.0407081    0.0634593
8+          0-24 months   ki1017093b-PROVIDE          BANGLADESH   Control              NA                 0.0882353   -0.0045116    0.1809822
8+          0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI       Control              NA                -0.0333333   -0.1737699    0.1071032
8+          0-24 months   ki1148112-LCNI-5            MALAWI       Control              NA                 0.1053571   -0.1099464    0.3206607
8+          0-6 months    ki1000304-ZnMort            INDIA        Control              NA                -0.0485714   -0.2091466    0.1120037
8+          0-6 months    ki1000304b-SAS-FoodSuppl    INDIA        Control              NA                 0.0842105   -0.0162710    0.1846921
8+          6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH   Control              NA                -0.0162257   -0.0760551    0.0436036
8+          6-24 months   ki1000111-WASH-Kenya        KENYA        Control              NA                -0.0009551   -0.0154847    0.0135746


### Parameter: PAF


nhh         agecat        studyid                     country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ------------  --------------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
3 or less   0-24 months   iLiNS_DYADM_LNS             MALAWI       Control              NA                 0.1485826   -0.0309104    0.2968239
3 or less   0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH   Control              NA                -0.0049663   -0.1178270    0.0964995
3 or less   0-24 months   ki1000111-WASH-Kenya        KENYA        Control              NA                 0.0396345   -0.1528524    0.1999826
3 or less   0-24 months   ki1000304-Vitamin-B12       INDIA        Control              NA                -0.1616106   -0.3865365    0.0268275
3 or less   0-24 months   ki1000304-ZnMort            INDIA        Control              NA                -0.0550459   -0.2261754    0.0922002
3 or less   0-24 months   ki1017093b-PROVIDE          BANGLADESH   Control              NA                -0.1370262   -0.3735047    0.0587373
3 or less   0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI       Control              NA                 0.1420875   -0.0258404    0.2825260
3 or less   0-24 months   ki1148112-LCNI-5            MALAWI       Control              NA                -0.0143443   -0.2346525    0.1666528
3 or less   0-6 months    ki1017093b-PROVIDE          BANGLADESH   Control              NA                -0.0625000   -0.5056150    0.2502025
3 or less   6-24 months   iLiNS_DYADM_LNS             MALAWI       Control              NA                 0.2244898   -0.0126339    0.4060874
3 or less   6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH   Control              NA                -0.0348780   -0.2716461    0.1578062
3 or less   6-24 months   ki1000111-WASH-Kenya        KENYA        Control              NA                 0.3304924   -0.1397813    0.6067312
3 or less   6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI       Control              NA                 0.0971429   -0.1790122    0.3086153
3 or less   6-24 months   ki1148112-LCNI-5            MALAWI       Control              NA                -0.1520833   -0.6541992    0.1976202
4-5         0-24 months   iLiNS_DYADM_LNS             MALAWI       Control              NA                 0.1724138   -0.0161866    0.3260107
4-5         0-24 months   ki1000107-Serrinha-VitA     BRAZIL       Control              NA                 0.0606717   -0.1505535    0.2331190
4-5         0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH   Control              NA                -0.0529500   -0.1553027    0.0403348
4-5         0-24 months   ki1000111-WASH-Kenya        KENYA        Control              NA                 0.0729541   -0.0517845    0.1828991
4-5         0-24 months   ki1000304-Vitamin-B12       INDIA        Control              NA                -0.0308555   -0.1485589    0.0747857
4-5         0-24 months   ki1000304-ZnMort            INDIA        Control              NA                -0.0518953   -0.1184420    0.0106920
4-5         0-24 months   ki1000304b-SAS-FoodSuppl    INDIA        Control              NA                -0.1241192   -0.2168988   -0.0384135
4-5         0-24 months   ki1017093b-PROVIDE          BANGLADESH   Control              NA                -0.0079318   -0.1315086    0.1021487
4-5         0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI       Control              NA                 0.1528239   -0.0192911    0.2958760
4-5         0-24 months   ki1148112-LCNI-5            MALAWI       Control              NA                 0.0916608   -0.0888567    0.2422510
4-5         0-6 months    ki1000304-ZnMort            INDIA        Control              NA                -0.0781250   -0.3536237    0.1413023
4-5         0-6 months    ki1000304b-SAS-FoodSuppl    INDIA        Control              NA                -0.1097561   -0.2997523    0.0524667
4-5         0-6 months    ki1017093b-PROVIDE          BANGLADESH   Control              NA                -0.1561570   -0.4663624    0.0884252
4-5         0-6 months    ki1148112-LCNI-5            MALAWI       Control              NA                 0.1190476   -0.3617217    0.4300766
4-5         6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH   Control              NA                -0.1197392   -0.3215954    0.0512861
4-5         6-24 months   ki1000111-WASH-Kenya        KENYA        Control              NA                 0.2020440   -0.1014226    0.4218988
4-5         6-24 months   ki1000304-Vitamin-B12       INDIA        Control              NA                -0.0271739   -0.4430371    0.2688433
4-5         6-24 months   ki1000304b-SAS-FoodSuppl    INDIA        Control              NA                -0.1742919   -0.3849117    0.0042964
4-5         6-24 months   ki1017093b-PROVIDE          BANGLADESH   Control              NA                -0.0333881   -0.2509132    0.1463109
4-5         6-24 months   ki1148112-LCNI-5            MALAWI       Control              NA                 0.1209603   -0.2692629    0.3912130
6-7         0-24 months   iLiNS_DYADM_LNS             MALAWI       Control              NA                -0.2664474   -0.6367517    0.0200781
6-7         0-24 months   ki1000107-Serrinha-VitA     BRAZIL       Control              NA                 0.0500000   -0.1242841    0.1972669
6-7         0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH   Control              NA                -0.0613582   -0.2308065    0.0847616
6-7         0-24 months   ki1000111-WASH-Kenya        KENYA        Control              NA                 0.0182678   -0.1098785    0.1316183
6-7         0-24 months   ki1000304-Vitamin-B12       INDIA        Control              NA                 0.0305882   -0.0955525    0.1422053
6-7         0-24 months   ki1000304-ZnMort            INDIA        Control              NA                 0.0510140   -0.0258658    0.1221324
6-7         0-24 months   ki1000304b-SAS-FoodSuppl    INDIA        Control              NA                -0.0054600   -0.0874550    0.0703525
6-7         0-24 months   ki1017093b-PROVIDE          BANGLADESH   Control              NA                 0.1988304    0.0453998    0.3276005
6-7         0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI       Control              NA                -0.2914980   -0.6415745   -0.0160776
6-7         0-24 months   ki1148112-LCNI-5            MALAWI       Control              NA                 0.0352701   -0.1983256    0.2233298
6-7         0-6 months    ki1000304-ZnMort            INDIA        Control              NA                 0.0454545   -0.4462625    0.3699919
6-7         0-6 months    ki1000304b-SAS-FoodSuppl    INDIA        Control              NA                -0.0425532   -0.2626355    0.1391679
6-7         0-6 months    ki1148112-LCNI-5            MALAWI       Control              NA                -0.0737179   -0.9957355    0.4223332
6-7         6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH   Control              NA                -0.0014072   -0.3331365    0.2477766
6-7         6-24 months   ki1000111-WASH-Kenya        KENYA        Control              NA                -0.1230435   -0.4934192    0.1554771
6-7         6-24 months   ki1000304b-SAS-FoodSuppl    INDIA        Control              NA                 0.1142490   -0.0463942    0.2502302
6-7         6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI       Control              NA                -0.4285714   -1.1653729    0.0575220
6-7         6-24 months   ki1148112-LCNI-5            MALAWI       Control              NA                -0.0312500   -0.5652395    0.3205662
8+          0-24 months   ki1000107-Serrinha-VitA     BRAZIL       Control              NA                 0.1136364   -0.1490390    0.3162630
8+          0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH   Control              NA                -0.0096019   -0.2793480    0.2032692
8+          0-24 months   ki1000111-WASH-Kenya        KENYA        Control              NA                -0.0442934   -0.1340268    0.0383395
8+          0-24 months   ki1000304-Vitamin-B12       INDIA        Control              NA                -0.1310484   -0.2818822    0.0020374
8+          0-24 months   ki1000304-ZnMort            INDIA        Control              NA                 0.0224765   -0.0860701    0.1201745
8+          0-24 months   ki1017093b-PROVIDE          BANGLADESH   Control              NA                 0.2272727    0.0161055    0.3931185
8+          0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI       Control              NA                -0.0714286   -0.4482808    0.2073642
8+          0-24 months   ki1148112-LCNI-5            MALAWI       Control              NA                 0.1940789   -0.3216373    0.5085575
8+          0-6 months    ki1000304-ZnMort            INDIA        Control              NA                -0.1278195   -0.6418098    0.2252593
8+          0-6 months    ki1000304b-SAS-FoodSuppl    INDIA        Control              NA                 0.2105263   -0.0178444    0.3876582
8+          6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH   Control              NA                -0.1113801   -0.6074770    0.2316121
8+          6-24 months   ki1000111-WASH-Kenya        KENYA        Control              NA                -0.0141939   -0.2548302    0.1802960
